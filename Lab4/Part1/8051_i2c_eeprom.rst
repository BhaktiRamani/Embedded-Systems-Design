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
      00308F 74 B2            [12]  628 	mov	a,#___str_0
      003091 C0 E0            [24]  629 	push	acc
      003093 74 45            [12]  630 	mov	a,#(___str_0 >> 8)
      003095 C0 E0            [24]  631 	push	acc
      003097 74 80            [12]  632 	mov	a,#0x80
      003099 C0 E0            [24]  633 	push	acc
      00309B 12 3B 50         [24]  634 	lcall	_printf
      00309E 15 81            [12]  635 	dec	sp
      0030A0 15 81            [12]  636 	dec	sp
      0030A2 15 81            [12]  637 	dec	sp
                                    638 ;	8051_i2c_eeprom.c:47: printf("║           I2C Memory Management System v1.0            ║\n\r");
      0030A4 74 64            [12]  639 	mov	a,#___str_1
      0030A6 C0 E0            [24]  640 	push	acc
      0030A8 74 46            [12]  641 	mov	a,#(___str_1 >> 8)
      0030AA C0 E0            [24]  642 	push	acc
      0030AC 74 80            [12]  643 	mov	a,#0x80
      0030AE C0 E0            [24]  644 	push	acc
      0030B0 12 3B 50         [24]  645 	lcall	_printf
      0030B3 15 81            [12]  646 	dec	sp
      0030B5 15 81            [12]  647 	dec	sp
      0030B7 15 81            [12]  648 	dec	sp
                                    649 ;	8051_i2c_eeprom.c:48: printf("╚════════════════════════════════════════════════════════╝\n\r");
      0030B9 74 A5            [12]  650 	mov	a,#___str_2
      0030BB C0 E0            [24]  651 	push	acc
      0030BD 74 46            [12]  652 	mov	a,#(___str_2 >> 8)
      0030BF C0 E0            [24]  653 	push	acc
      0030C1 74 80            [12]  654 	mov	a,#0x80
      0030C3 C0 E0            [24]  655 	push	acc
      0030C5 12 3B 50         [24]  656 	lcall	_printf
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
      0030CF 74 56            [12]  671 	mov	a,#___str_3
      0030D1 C0 E0            [24]  672 	push	acc
      0030D3 74 47            [12]  673 	mov	a,#(___str_3 >> 8)
      0030D5 C0 E0            [24]  674 	push	acc
      0030D7 74 80            [12]  675 	mov	a,#0x80
      0030D9 C0 E0            [24]  676 	push	acc
      0030DB 12 3B 50         [24]  677 	lcall	_printf
      0030DE 15 81            [12]  678 	dec	sp
      0030E0 15 81            [12]  679 	dec	sp
      0030E2 15 81            [12]  680 	dec	sp
                                    681 ;	8051_i2c_eeprom.c:55: printf("│  Command   │               Description                  │\n\r");
      0030E4 74 0C            [12]  682 	mov	a,#___str_4
      0030E6 C0 E0            [24]  683 	push	acc
      0030E8 74 48            [12]  684 	mov	a,#(___str_4 >> 8)
      0030EA C0 E0            [24]  685 	push	acc
      0030EC 74 80            [12]  686 	mov	a,#0x80
      0030EE C0 E0            [24]  687 	push	acc
      0030F0 12 3B 50         [24]  688 	lcall	_printf
      0030F3 15 81            [12]  689 	dec	sp
      0030F5 15 81            [12]  690 	dec	sp
      0030F7 15 81            [12]  691 	dec	sp
                                    692 ;	8051_i2c_eeprom.c:56: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      0030F9 74 50            [12]  693 	mov	a,#___str_5
      0030FB C0 E0            [24]  694 	push	acc
      0030FD 74 48            [12]  695 	mov	a,#(___str_5 >> 8)
      0030FF C0 E0            [24]  696 	push	acc
      003101 74 80            [12]  697 	mov	a,#0x80
      003103 C0 E0            [24]  698 	push	acc
      003105 12 3B 50         [24]  699 	lcall	_printf
      003108 15 81            [12]  700 	dec	sp
      00310A 15 81            [12]  701 	dec	sp
      00310C 15 81            [12]  702 	dec	sp
                                    703 ;	8051_i2c_eeprom.c:57: printf("│     R      │ Read from address                          │\n\r");
      00310E 74 04            [12]  704 	mov	a,#___str_6
      003110 C0 E0            [24]  705 	push	acc
      003112 74 49            [12]  706 	mov	a,#(___str_6 >> 8)
      003114 C0 E0            [24]  707 	push	acc
      003116 74 80            [12]  708 	mov	a,#0x80
      003118 C0 E0            [24]  709 	push	acc
      00311A 12 3B 50         [24]  710 	lcall	_printf
      00311D 15 81            [12]  711 	dec	sp
      00311F 15 81            [12]  712 	dec	sp
      003121 15 81            [12]  713 	dec	sp
                                    714 ;	8051_i2c_eeprom.c:58: printf("│     W      │ Write data to address                      │\n\r");
      003123 74 48            [12]  715 	mov	a,#___str_7
      003125 C0 E0            [24]  716 	push	acc
      003127 74 49            [12]  717 	mov	a,#(___str_7 >> 8)
      003129 C0 E0            [24]  718 	push	acc
      00312B 74 80            [12]  719 	mov	a,#0x80
      00312D C0 E0            [24]  720 	push	acc
      00312F 12 3B 50         [24]  721 	lcall	_printf
      003132 15 81            [12]  722 	dec	sp
      003134 15 81            [12]  723 	dec	sp
      003136 15 81            [12]  724 	dec	sp
                                    725 ;	8051_i2c_eeprom.c:59: printf("│     H      │ Display hex dump                           │\n\r");
      003138 74 8C            [12]  726 	mov	a,#___str_8
      00313A C0 E0            [24]  727 	push	acc
      00313C 74 49            [12]  728 	mov	a,#(___str_8 >> 8)
      00313E C0 E0            [24]  729 	push	acc
      003140 74 80            [12]  730 	mov	a,#0x80
      003142 C0 E0            [24]  731 	push	acc
      003144 12 3B 50         [24]  732 	lcall	_printf
      003147 15 81            [12]  733 	dec	sp
      003149 15 81            [12]  734 	dec	sp
      00314B 15 81            [12]  735 	dec	sp
                                    736 ;	8051_i2c_eeprom.c:60: printf("│     X      │ Reset memory system                        │\n\r");
      00314D 74 D0            [12]  737 	mov	a,#___str_9
      00314F C0 E0            [24]  738 	push	acc
      003151 74 49            [12]  739 	mov	a,#(___str_9 >> 8)
      003153 C0 E0            [24]  740 	push	acc
      003155 74 80            [12]  741 	mov	a,#0x80
      003157 C0 E0            [24]  742 	push	acc
      003159 12 3B 50         [24]  743 	lcall	_printf
      00315C 15 81            [12]  744 	dec	sp
      00315E 15 81            [12]  745 	dec	sp
      003160 15 81            [12]  746 	dec	sp
                                    747 ;	8051_i2c_eeprom.c:61: printf("│     ?      │ Display this help menu                     │\n\r");
      003162 74 14            [12]  748 	mov	a,#___str_10
      003164 C0 E0            [24]  749 	push	acc
      003166 74 4A            [12]  750 	mov	a,#(___str_10 >> 8)
      003168 C0 E0            [24]  751 	push	acc
      00316A 74 80            [12]  752 	mov	a,#0x80
      00316C C0 E0            [24]  753 	push	acc
      00316E 12 3B 50         [24]  754 	lcall	_printf
      003171 15 81            [12]  755 	dec	sp
      003173 15 81            [12]  756 	dec	sp
      003175 15 81            [12]  757 	dec	sp
                                    758 ;	8051_i2c_eeprom.c:62: printf("│     Q      │ Quit program                               │\n\r");
      003177 74 58            [12]  759 	mov	a,#___str_11
      003179 C0 E0            [24]  760 	push	acc
      00317B 74 4A            [12]  761 	mov	a,#(___str_11 >> 8)
      00317D C0 E0            [24]  762 	push	acc
      00317F 74 80            [12]  763 	mov	a,#0x80
      003181 C0 E0            [24]  764 	push	acc
      003183 12 3B 50         [24]  765 	lcall	_printf
      003186 15 81            [12]  766 	dec	sp
      003188 15 81            [12]  767 	dec	sp
      00318A 15 81            [12]  768 	dec	sp
                                    769 ;	8051_i2c_eeprom.c:63: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      00318C 74 9C            [12]  770 	mov	a,#___str_12
      00318E C0 E0            [24]  771 	push	acc
      003190 74 4A            [12]  772 	mov	a,#(___str_12 >> 8)
      003192 C0 E0            [24]  773 	push	acc
      003194 74 80            [12]  774 	mov	a,#0x80
      003196 C0 E0            [24]  775 	push	acc
      003198 12 3B 50         [24]  776 	lcall	_printf
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
      0031AE 12 3A 11         [24]  804 	lcall	_i2c_start
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
      0031C0 74 50            [12]  816 	mov	a,#___str_13
      0031C2 C0 E0            [24]  817 	push	acc
      0031C4 74 4B            [12]  818 	mov	a,#(___str_13 >> 8)
      0031C6 C0 E0            [24]  819 	push	acc
      0031C8 74 80            [12]  820 	mov	a,#0x80
      0031CA C0 E0            [24]  821 	push	acc
      0031CC 12 3B 50         [24]  822 	lcall	_printf
      0031CF E5 81            [12]  823 	mov	a,sp
      0031D1 24 FB            [12]  824 	add	a,#0xfb
      0031D3 F5 81            [12]  825 	mov	sp,a
      0031D5 D0 06            [24]  826 	pop	ar6
                                    827 ;	8051_i2c_eeprom.c:79: switch(user_input)
      0031D7 BE 3F 03         [24]  828 	cjne	r6,#0x3f,00139$
      0031DA 02 32 BA         [24]  829 	ljmp	00107$
      0031DD                        830 00139$:
      0031DD BE 52 03         [24]  831 	cjne	r6,#0x52,00140$
      0031E0 02 32 73         [24]  832 	ljmp	00106$
      0031E3                        833 00140$:
      0031E3 BE 57 02         [24]  834 	cjne	r6,#0x57,00141$
      0031E6 80 03            [24]  835 	sjmp	00142$
      0031E8                        836 00141$:
      0031E8 02 32 C0         [24]  837 	ljmp	00108$
      0031EB                        838 00142$:
                                    839 ;	8051_i2c_eeprom.c:83: printf("\n┌─────────────── WRITE OPERATION ──────────────┐\n\r");
      0031EB 74 59            [12]  840 	mov	a,#___str_14
      0031ED C0 E0            [24]  841 	push	acc
      0031EF 74 4B            [12]  842 	mov	a,#(___str_14 >> 8)
      0031F1 C0 E0            [24]  843 	push	acc
      0031F3 74 80            [12]  844 	mov	a,#0x80
      0031F5 C0 E0            [24]  845 	push	acc
      0031F7 12 3B 50         [24]  846 	lcall	_printf
      0031FA 15 81            [12]  847 	dec	sp
      0031FC 15 81            [12]  848 	dec	sp
      0031FE 15 81            [12]  849 	dec	sp
                                    850 ;	8051_i2c_eeprom.c:85: addr = take_address();
      003200 12 32 D8         [24]  851 	lcall	_take_address
      003203 AE 82            [24]  852 	mov	r6,dpl
      003205 AF 83            [24]  853 	mov	r7,dph
                                    854 ;	8051_i2c_eeprom.c:86: if(!address_range_flag) 
      003207 90 04 51         [24]  855 	mov	dptr,#_address_range_flag
      00320A E0               [24]  856 	movx	a,@dptr
      00320B F5 F0            [12]  857 	mov	b,a
      00320D A3               [24]  858 	inc	dptr
      00320E E0               [24]  859 	movx	a,@dptr
      00320F 45 F0            [12]  860 	orl	a,b
      003211 70 0B            [24]  861 	jnz	00103$
                                    862 ;	8051_i2c_eeprom.c:88: address_range_flag = 1;
      003213 90 04 51         [24]  863 	mov	dptr,#_address_range_flag
      003216 74 01            [12]  864 	mov	a,#0x01
      003218 F0               [24]  865 	movx	@dptr,a
      003219 E4               [12]  866 	clr	a
      00321A A3               [24]  867 	inc	dptr
      00321B F0               [24]  868 	movx	@dptr,a
                                    869 ;	8051_i2c_eeprom.c:89: break;
      00321C 80 93            [24]  870 	sjmp	00111$
      00321E                        871 00103$:
                                    872 ;	8051_i2c_eeprom.c:92: data = take_data();
      00321E C0 07            [24]  873 	push	ar7
      003220 C0 06            [24]  874 	push	ar6
      003222 12 34 F1         [24]  875 	lcall	_take_data
      003225 AD 82            [24]  876 	mov	r5,dpl
      003227 D0 06            [24]  877 	pop	ar6
      003229 D0 07            [24]  878 	pop	ar7
                                    879 ;	8051_i2c_eeprom.c:93: if(!data_range_flag) 
      00322B 90 04 53         [24]  880 	mov	dptr,#_data_range_flag
      00322E E0               [24]  881 	movx	a,@dptr
      00322F F5 F0            [12]  882 	mov	b,a
      003231 A3               [24]  883 	inc	dptr
      003232 E0               [24]  884 	movx	a,@dptr
      003233 45 F0            [12]  885 	orl	a,b
      003235 70 0C            [24]  886 	jnz	00105$
                                    887 ;	8051_i2c_eeprom.c:95: data_range_flag = 1;
      003237 90 04 53         [24]  888 	mov	dptr,#_data_range_flag
      00323A 74 01            [12]  889 	mov	a,#0x01
      00323C F0               [24]  890 	movx	@dptr,a
      00323D E4               [12]  891 	clr	a
      00323E A3               [24]  892 	inc	dptr
      00323F F0               [24]  893 	movx	@dptr,a
                                    894 ;	8051_i2c_eeprom.c:96: break;
      003240 02 31 B1         [24]  895 	ljmp	00111$
      003243                        896 00105$:
                                    897 ;	8051_i2c_eeprom.c:98: printf("check point 1 \n\r");
      003243 C0 07            [24]  898 	push	ar7
      003245 C0 06            [24]  899 	push	ar6
      003247 C0 05            [24]  900 	push	ar5
      003249 74 CB            [12]  901 	mov	a,#___str_15
      00324B C0 E0            [24]  902 	push	acc
      00324D 74 4B            [12]  903 	mov	a,#(___str_15 >> 8)
      00324F C0 E0            [24]  904 	push	acc
      003251 74 80            [12]  905 	mov	a,#0x80
      003253 C0 E0            [24]  906 	push	acc
      003255 12 3B 50         [24]  907 	lcall	_printf
      003258 15 81            [12]  908 	dec	sp
      00325A 15 81            [12]  909 	dec	sp
      00325C 15 81            [12]  910 	dec	sp
      00325E D0 05            [24]  911 	pop	ar5
      003260 D0 06            [24]  912 	pop	ar6
      003262 D0 07            [24]  913 	pop	ar7
                                    914 ;	8051_i2c_eeprom.c:99: eeprom_write(addr, data);
      003264 90 04 0F         [24]  915 	mov	dptr,#_eeprom_write_PARM_2
      003267 ED               [12]  916 	mov	a,r5
      003268 F0               [24]  917 	movx	@dptr,a
      003269 8E 82            [24]  918 	mov	dpl,r6
      00326B 8F 83            [24]  919 	mov	dph,r7
      00326D 12 36 6A         [24]  920 	lcall	_eeprom_write
                                    921 ;	8051_i2c_eeprom.c:100: break;
      003270 02 31 B1         [24]  922 	ljmp	00111$
                                    923 ;	8051_i2c_eeprom.c:102: case 'R':
      003273                        924 00106$:
                                    925 ;	8051_i2c_eeprom.c:104: printf("\n┌─────────────── READ OPERATION ───────────────┐\n\r");
      003273 74 DC            [12]  926 	mov	a,#___str_16
      003275 C0 E0            [24]  927 	push	acc
      003277 74 4B            [12]  928 	mov	a,#(___str_16 >> 8)
      003279 C0 E0            [24]  929 	push	acc
      00327B 74 80            [12]  930 	mov	a,#0x80
      00327D C0 E0            [24]  931 	push	acc
      00327F 12 3B 50         [24]  932 	lcall	_printf
      003282 15 81            [12]  933 	dec	sp
      003284 15 81            [12]  934 	dec	sp
      003286 15 81            [12]  935 	dec	sp
                                    936 ;	8051_i2c_eeprom.c:106: addr = take_address(); 
      003288 12 32 D8         [24]  937 	lcall	_take_address
      00328B AE 82            [24]  938 	mov	r6,dpl
      00328D AF 83            [24]  939 	mov	r7,dph
                                    940 ;	8051_i2c_eeprom.c:112: printf("| Reading from Address 0x%03X           |\n\r", addr);
      00328F C0 07            [24]  941 	push	ar7
      003291 C0 06            [24]  942 	push	ar6
      003293 C0 06            [24]  943 	push	ar6
      003295 C0 07            [24]  944 	push	ar7
      003297 74 50            [12]  945 	mov	a,#___str_17
      003299 C0 E0            [24]  946 	push	acc
      00329B 74 4C            [12]  947 	mov	a,#(___str_17 >> 8)
      00329D C0 E0            [24]  948 	push	acc
      00329F 74 80            [12]  949 	mov	a,#0x80
      0032A1 C0 E0            [24]  950 	push	acc
      0032A3 12 3B 50         [24]  951 	lcall	_printf
      0032A6 E5 81            [12]  952 	mov	a,sp
      0032A8 24 FB            [12]  953 	add	a,#0xfb
      0032AA F5 81            [12]  954 	mov	sp,a
      0032AC D0 06            [24]  955 	pop	ar6
      0032AE D0 07            [24]  956 	pop	ar7
                                    957 ;	8051_i2c_eeprom.c:113: eeprom_read(addr);
      0032B0 8E 82            [24]  958 	mov	dpl,r6
      0032B2 8F 83            [24]  959 	mov	dph,r7
      0032B4 12 37 CE         [24]  960 	lcall	_eeprom_read
                                    961 ;	8051_i2c_eeprom.c:114: break;
      0032B7 02 31 B1         [24]  962 	ljmp	00111$
                                    963 ;	8051_i2c_eeprom.c:117: case '?':
      0032BA                        964 00107$:
                                    965 ;	8051_i2c_eeprom.c:118: command_menu();
      0032BA 12 30 CF         [24]  966 	lcall	_command_menu
                                    967 ;	8051_i2c_eeprom.c:119: break;
      0032BD 02 31 B1         [24]  968 	ljmp	00111$
                                    969 ;	8051_i2c_eeprom.c:121: default:
      0032C0                        970 00108$:
                                    971 ;	8051_i2c_eeprom.c:122: printf("INVALID INPUT\n\r");
      0032C0 74 7C            [12]  972 	mov	a,#___str_18
      0032C2 C0 E0            [24]  973 	push	acc
      0032C4 74 4C            [12]  974 	mov	a,#(___str_18 >> 8)
      0032C6 C0 E0            [24]  975 	push	acc
      0032C8 74 80            [12]  976 	mov	a,#0x80
      0032CA C0 E0            [24]  977 	push	acc
      0032CC 12 3B 50         [24]  978 	lcall	_printf
      0032CF 15 81            [12]  979 	dec	sp
      0032D1 15 81            [12]  980 	dec	sp
      0032D3 15 81            [12]  981 	dec	sp
                                    982 ;	8051_i2c_eeprom.c:124: }
                                    983 ;	8051_i2c_eeprom.c:127: }
      0032D5 02 31 B1         [24]  984 	ljmp	00111$
                                    985 ;------------------------------------------------------------
                                    986 ;Allocation info for local variables in function 'take_address'
                                    987 ;------------------------------------------------------------
                                    988 ;input                     Allocated with name '_take_address_input_65537_65'
                                    989 ;i                         Allocated with name '_take_address_i_65537_65'
                                    990 ;c                         Allocated with name '_take_address_c_65537_65'
                                    991 ;address                   Allocated with name '_take_address_address_65538_69'
                                    992 ;block                     Allocated with name '_take_address_block_65539_73'
                                    993 ;------------------------------------------------------------
                                    994 ;	8051_i2c_eeprom.c:129: unsigned int take_address() 
                                    995 ;	-----------------------------------------
                                    996 ;	 function take_address
                                    997 ;	-----------------------------------------
      0032D8                        998 _take_address:
                                    999 ;	8051_i2c_eeprom.c:131: printf("│ Enter address (hex, up to 3 characters): \n\r|");
      0032D8 74 8C            [12] 1000 	mov	a,#___str_19
      0032DA C0 E0            [24] 1001 	push	acc
      0032DC 74 4C            [12] 1002 	mov	a,#(___str_19 >> 8)
      0032DE C0 E0            [24] 1003 	push	acc
      0032E0 74 80            [12] 1004 	mov	a,#0x80
      0032E2 C0 E0            [24] 1005 	push	acc
      0032E4 12 3B 50         [24] 1006 	lcall	_printf
      0032E7 15 81            [12] 1007 	dec	sp
      0032E9 15 81            [12] 1008 	dec	sp
      0032EB 15 81            [12] 1009 	dec	sp
                                   1010 ;	8051_i2c_eeprom.c:132: char input[4] = {0};  // Array for 3 hex chars + null terminator
      0032ED 90 04 04         [24] 1011 	mov	dptr,#_take_address_input_65537_65
      0032F0 E4               [12] 1012 	clr	a
      0032F1 F0               [24] 1013 	movx	@dptr,a
      0032F2 90 04 05         [24] 1014 	mov	dptr,#(_take_address_input_65537_65 + 0x0001)
      0032F5 F0               [24] 1015 	movx	@dptr,a
      0032F6 90 04 06         [24] 1016 	mov	dptr,#(_take_address_input_65537_65 + 0x0002)
      0032F9 F0               [24] 1017 	movx	@dptr,a
      0032FA 90 04 07         [24] 1018 	mov	dptr,#(_take_address_input_65537_65 + 0x0003)
      0032FD F0               [24] 1019 	movx	@dptr,a
                                   1020 ;	8051_i2c_eeprom.c:136: printf("| $ ");
      0032FE 74 BD            [12] 1021 	mov	a,#___str_20
      003300 C0 E0            [24] 1022 	push	acc
      003302 74 4C            [12] 1023 	mov	a,#(___str_20 >> 8)
      003304 C0 E0            [24] 1024 	push	acc
      003306 74 80            [12] 1025 	mov	a,#0x80
      003308 C0 E0            [24] 1026 	push	acc
      00330A 12 3B 50         [24] 1027 	lcall	_printf
      00330D 15 81            [12] 1028 	dec	sp
      00330F 15 81            [12] 1029 	dec	sp
      003311 15 81            [12] 1030 	dec	sp
                                   1031 ;	8051_i2c_eeprom.c:138: while (i < 3) {
      003313 7E 00            [12] 1032 	mov	r6,#0x00
      003315 7F 00            [12] 1033 	mov	r7,#0x00
      003317                       1034 00111$:
      003317 C3               [12] 1035 	clr	c
      003318 EE               [12] 1036 	mov	a,r6
      003319 94 03            [12] 1037 	subb	a,#0x03
      00331B EF               [12] 1038 	mov	a,r7
      00331C 64 80            [12] 1039 	xrl	a,#0x80
      00331E 94 80            [12] 1040 	subb	a,#0x80
      003320 50 5B            [24] 1041 	jnc	00113$
                                   1042 ;	8051_i2c_eeprom.c:140: c = getchar();
      003322 C0 07            [24] 1043 	push	ar7
      003324 C0 06            [24] 1044 	push	ar6
      003326 12 30 81         [24] 1045 	lcall	_getchar
      003329 AC 82            [24] 1046 	mov	r4,dpl
      00332B AD 83            [24] 1047 	mov	r5,dph
      00332D D0 06            [24] 1048 	pop	ar6
      00332F D0 07            [24] 1049 	pop	ar7
                                   1050 ;	8051_i2c_eeprom.c:143: if (c == '\r' || c == '\n') {
      003331 BC 0D 02         [24] 1051 	cjne	r4,#0x0d,00200$
      003334 80 47            [24] 1052 	sjmp	00113$
      003336                       1053 00200$:
      003336 BC 0A 02         [24] 1054 	cjne	r4,#0x0a,00201$
      003339 80 42            [24] 1055 	sjmp	00113$
      00333B                       1056 00201$:
                                   1057 ;	8051_i2c_eeprom.c:148: if ((c >= '0' && c <= '9') || 
      00333B BC 30 00         [24] 1058 	cjne	r4,#0x30,00202$
      00333E                       1059 00202$:
      00333E 40 05            [24] 1060 	jc	00108$
      003340 EC               [12] 1061 	mov	a,r4
      003341 24 C6            [12] 1062 	add	a,#0xff - 0x39
      003343 50 14            [24] 1063 	jnc	00104$
      003345                       1064 00108$:
                                   1065 ;	8051_i2c_eeprom.c:149: (c >= 'a' && c <= 'f') || 
      003345 BC 61 00         [24] 1066 	cjne	r4,#0x61,00205$
      003348                       1067 00205$:
      003348 40 05            [24] 1068 	jc	00110$
      00334A EC               [12] 1069 	mov	a,r4
      00334B 24 99            [12] 1070 	add	a,#0xff - 0x66
      00334D 50 0A            [24] 1071 	jnc	00104$
      00334F                       1072 00110$:
                                   1073 ;	8051_i2c_eeprom.c:150: (c >= 'A' && c <= 'F')) {
      00334F BC 41 00         [24] 1074 	cjne	r4,#0x41,00208$
      003352                       1075 00208$:
      003352 40 C3            [24] 1076 	jc	00111$
      003354 EC               [12] 1077 	mov	a,r4
      003355 24 B9            [12] 1078 	add	a,#0xff - 0x46
      003357 40 BE            [24] 1079 	jc	00111$
      003359                       1080 00104$:
                                   1081 ;	8051_i2c_eeprom.c:152: input[i] = c;
      003359 EE               [12] 1082 	mov	a,r6
      00335A 24 04            [12] 1083 	add	a,#_take_address_input_65537_65
      00335C F5 82            [12] 1084 	mov	dpl,a
      00335E EF               [12] 1085 	mov	a,r7
      00335F 34 04            [12] 1086 	addc	a,#(_take_address_input_65537_65 >> 8)
      003361 F5 83            [12] 1087 	mov	dph,a
      003363 EC               [12] 1088 	mov	a,r4
      003364 F0               [24] 1089 	movx	@dptr,a
                                   1090 ;	8051_i2c_eeprom.c:153: putchar(c);  // Echo character back
      003365 7D 00            [12] 1091 	mov	r5,#0x00
      003367 8C 82            [24] 1092 	mov	dpl,r4
      003369 8D 83            [24] 1093 	mov	dph,r5
      00336B C0 07            [24] 1094 	push	ar7
      00336D C0 06            [24] 1095 	push	ar6
      00336F 12 30 62         [24] 1096 	lcall	_putchar
      003372 D0 06            [24] 1097 	pop	ar6
      003374 D0 07            [24] 1098 	pop	ar7
                                   1099 ;	8051_i2c_eeprom.c:154: i++;
      003376 0E               [12] 1100 	inc	r6
      003377 BE 00 9D         [24] 1101 	cjne	r6,#0x00,00111$
      00337A 0F               [12] 1102 	inc	r7
      00337B 80 9A            [24] 1103 	sjmp	00111$
      00337D                       1104 00113$:
                                   1105 ;	8051_i2c_eeprom.c:158: input[i] = '\0';  // Null-terminate the string
      00337D EE               [12] 1106 	mov	a,r6
      00337E 24 04            [12] 1107 	add	a,#_take_address_input_65537_65
      003380 F5 82            [12] 1108 	mov	dpl,a
      003382 EF               [12] 1109 	mov	a,r7
      003383 34 04            [12] 1110 	addc	a,#(_take_address_input_65537_65 >> 8)
      003385 F5 83            [12] 1111 	mov	dph,a
      003387 E4               [12] 1112 	clr	a
      003388 F0               [24] 1113 	movx	@dptr,a
                                   1114 ;	8051_i2c_eeprom.c:161: unsigned int address = 0;
      003389 90 04 08         [24] 1115 	mov	dptr,#_take_address_address_65538_69
      00338C F0               [24] 1116 	movx	@dptr,a
      00338D A3               [24] 1117 	inc	dptr
      00338E F0               [24] 1118 	movx	@dptr,a
                                   1119 ;	8051_i2c_eeprom.c:162: for(i = 0; input[i] != '\0'; i++) {
      00338F 7E 00            [12] 1120 	mov	r6,#0x00
      003391 7F 00            [12] 1121 	mov	r7,#0x00
      003393                       1122 00129$:
      003393 EE               [12] 1123 	mov	a,r6
      003394 24 04            [12] 1124 	add	a,#_take_address_input_65537_65
      003396 F5 82            [12] 1125 	mov	dpl,a
      003398 EF               [12] 1126 	mov	a,r7
      003399 34 04            [12] 1127 	addc	a,#(_take_address_input_65537_65 >> 8)
      00339B F5 83            [12] 1128 	mov	dph,a
      00339D E0               [24] 1129 	movx	a,@dptr
      00339E FD               [12] 1130 	mov	r5,a
      00339F 70 03            [24] 1131 	jnz	00212$
      0033A1 02 34 4C         [24] 1132 	ljmp	00125$
      0033A4                       1133 00212$:
                                   1134 ;	8051_i2c_eeprom.c:163: address = address * 16;
      0033A4 90 04 08         [24] 1135 	mov	dptr,#_take_address_address_65538_69
      0033A7 E0               [24] 1136 	movx	a,@dptr
      0033A8 FB               [12] 1137 	mov	r3,a
      0033A9 A3               [24] 1138 	inc	dptr
      0033AA E0               [24] 1139 	movx	a,@dptr
      0033AB C4               [12] 1140 	swap	a
      0033AC 54 F0            [12] 1141 	anl	a,#0xf0
      0033AE CB               [12] 1142 	xch	a,r3
      0033AF C4               [12] 1143 	swap	a
      0033B0 CB               [12] 1144 	xch	a,r3
      0033B1 6B               [12] 1145 	xrl	a,r3
      0033B2 CB               [12] 1146 	xch	a,r3
      0033B3 54 F0            [12] 1147 	anl	a,#0xf0
      0033B5 CB               [12] 1148 	xch	a,r3
      0033B6 6B               [12] 1149 	xrl	a,r3
      0033B7 FC               [12] 1150 	mov	r4,a
      0033B8 90 04 08         [24] 1151 	mov	dptr,#_take_address_address_65538_69
      0033BB EB               [12] 1152 	mov	a,r3
      0033BC F0               [24] 1153 	movx	@dptr,a
      0033BD EC               [12] 1154 	mov	a,r4
      0033BE A3               [24] 1155 	inc	dptr
      0033BF F0               [24] 1156 	movx	@dptr,a
                                   1157 ;	8051_i2c_eeprom.c:164: if(input[i] >= '0' && input[i] <= '9')
      0033C0 BD 30 00         [24] 1158 	cjne	r5,#0x30,00213$
      0033C3                       1159 00213$:
      0033C3 40 23            [24] 1160 	jc	00122$
      0033C5 ED               [12] 1161 	mov	a,r5
      0033C6 24 C6            [12] 1162 	add	a,#0xff - 0x39
      0033C8 40 1E            [24] 1163 	jc	00122$
                                   1164 ;	8051_i2c_eeprom.c:165: address += input[i] - '0';
      0033CA 7C 00            [12] 1165 	mov	r4,#0x00
      0033CC ED               [12] 1166 	mov	a,r5
      0033CD 24 D0            [12] 1167 	add	a,#0xd0
      0033CF FD               [12] 1168 	mov	r5,a
      0033D0 EC               [12] 1169 	mov	a,r4
      0033D1 34 FF            [12] 1170 	addc	a,#0xff
      0033D3 FC               [12] 1171 	mov	r4,a
      0033D4 90 04 08         [24] 1172 	mov	dptr,#_take_address_address_65538_69
      0033D7 E0               [24] 1173 	movx	a,@dptr
      0033D8 FA               [12] 1174 	mov	r2,a
      0033D9 A3               [24] 1175 	inc	dptr
      0033DA E0               [24] 1176 	movx	a,@dptr
      0033DB FB               [12] 1177 	mov	r3,a
      0033DC 90 04 08         [24] 1178 	mov	dptr,#_take_address_address_65538_69
      0033DF ED               [12] 1179 	mov	a,r5
      0033E0 2A               [12] 1180 	add	a,r2
      0033E1 F0               [24] 1181 	movx	@dptr,a
      0033E2 EC               [12] 1182 	mov	a,r4
      0033E3 3B               [12] 1183 	addc	a,r3
      0033E4 A3               [24] 1184 	inc	dptr
      0033E5 F0               [24] 1185 	movx	@dptr,a
      0033E6 80 5C            [24] 1186 	sjmp	00130$
      0033E8                       1187 00122$:
                                   1188 ;	8051_i2c_eeprom.c:166: else if(input[i] >= 'A' && input[i] <= 'F')
      0033E8 EE               [12] 1189 	mov	a,r6
      0033E9 24 04            [12] 1190 	add	a,#_take_address_input_65537_65
      0033EB F5 82            [12] 1191 	mov	dpl,a
      0033ED EF               [12] 1192 	mov	a,r7
      0033EE 34 04            [12] 1193 	addc	a,#(_take_address_input_65537_65 >> 8)
      0033F0 F5 83            [12] 1194 	mov	dph,a
      0033F2 E0               [24] 1195 	movx	a,@dptr
      0033F3 FD               [12] 1196 	mov	r5,a
      0033F4 BD 41 00         [24] 1197 	cjne	r5,#0x41,00216$
      0033F7                       1198 00216$:
      0033F7 40 25            [24] 1199 	jc	00118$
      0033F9 ED               [12] 1200 	mov	a,r5
      0033FA 24 B9            [12] 1201 	add	a,#0xff - 0x46
      0033FC 40 20            [24] 1202 	jc	00118$
                                   1203 ;	8051_i2c_eeprom.c:167: address += input[i] - 'A' + 10;
      0033FE 8D 03            [24] 1204 	mov	ar3,r5
      003400 7C 00            [12] 1205 	mov	r4,#0x00
      003402 74 C9            [12] 1206 	mov	a,#0xc9
      003404 2B               [12] 1207 	add	a,r3
      003405 FB               [12] 1208 	mov	r3,a
      003406 74 FF            [12] 1209 	mov	a,#0xff
      003408 3C               [12] 1210 	addc	a,r4
      003409 FC               [12] 1211 	mov	r4,a
      00340A 90 04 08         [24] 1212 	mov	dptr,#_take_address_address_65538_69
      00340D E0               [24] 1213 	movx	a,@dptr
      00340E F9               [12] 1214 	mov	r1,a
      00340F A3               [24] 1215 	inc	dptr
      003410 E0               [24] 1216 	movx	a,@dptr
      003411 FA               [12] 1217 	mov	r2,a
      003412 90 04 08         [24] 1218 	mov	dptr,#_take_address_address_65538_69
      003415 EB               [12] 1219 	mov	a,r3
      003416 29               [12] 1220 	add	a,r1
      003417 F0               [24] 1221 	movx	@dptr,a
      003418 EC               [12] 1222 	mov	a,r4
      003419 3A               [12] 1223 	addc	a,r2
      00341A A3               [24] 1224 	inc	dptr
      00341B F0               [24] 1225 	movx	@dptr,a
      00341C 80 26            [24] 1226 	sjmp	00130$
      00341E                       1227 00118$:
                                   1228 ;	8051_i2c_eeprom.c:168: else if(input[i] >= 'a' && input[i] <= 'f')
      00341E BD 61 00         [24] 1229 	cjne	r5,#0x61,00219$
      003421                       1230 00219$:
      003421 40 21            [24] 1231 	jc	00130$
      003423 ED               [12] 1232 	mov	a,r5
      003424 24 99            [12] 1233 	add	a,#0xff - 0x66
      003426 40 1C            [24] 1234 	jc	00130$
                                   1235 ;	8051_i2c_eeprom.c:169: address += input[i] - 'a' + 10;
      003428 7C 00            [12] 1236 	mov	r4,#0x00
      00342A 74 A9            [12] 1237 	mov	a,#0xa9
      00342C 2D               [12] 1238 	add	a,r5
      00342D FD               [12] 1239 	mov	r5,a
      00342E 74 FF            [12] 1240 	mov	a,#0xff
      003430 3C               [12] 1241 	addc	a,r4
      003431 FC               [12] 1242 	mov	r4,a
      003432 90 04 08         [24] 1243 	mov	dptr,#_take_address_address_65538_69
      003435 E0               [24] 1244 	movx	a,@dptr
      003436 FA               [12] 1245 	mov	r2,a
      003437 A3               [24] 1246 	inc	dptr
      003438 E0               [24] 1247 	movx	a,@dptr
      003439 FB               [12] 1248 	mov	r3,a
      00343A 90 04 08         [24] 1249 	mov	dptr,#_take_address_address_65538_69
      00343D ED               [12] 1250 	mov	a,r5
      00343E 2A               [12] 1251 	add	a,r2
      00343F F0               [24] 1252 	movx	@dptr,a
      003440 EC               [12] 1253 	mov	a,r4
      003441 3B               [12] 1254 	addc	a,r3
      003442 A3               [24] 1255 	inc	dptr
      003443 F0               [24] 1256 	movx	@dptr,a
      003444                       1257 00130$:
                                   1258 ;	8051_i2c_eeprom.c:162: for(i = 0; input[i] != '\0'; i++) {
      003444 0E               [12] 1259 	inc	r6
      003445 BE 00 01         [24] 1260 	cjne	r6,#0x00,00222$
      003448 0F               [12] 1261 	inc	r7
      003449                       1262 00222$:
      003449 02 33 93         [24] 1263 	ljmp	00129$
      00344C                       1264 00125$:
                                   1265 ;	8051_i2c_eeprom.c:172: printf("\n\r│ Entered address: 0x%03X\n\r", address);
      00344C 90 04 08         [24] 1266 	mov	dptr,#_take_address_address_65538_69
      00344F E0               [24] 1267 	movx	a,@dptr
      003450 FE               [12] 1268 	mov	r6,a
      003451 A3               [24] 1269 	inc	dptr
      003452 E0               [24] 1270 	movx	a,@dptr
      003453 FF               [12] 1271 	mov	r7,a
      003454 C0 07            [24] 1272 	push	ar7
      003456 C0 06            [24] 1273 	push	ar6
      003458 C0 06            [24] 1274 	push	ar6
      00345A C0 07            [24] 1275 	push	ar7
      00345C 74 C2            [12] 1276 	mov	a,#___str_21
      00345E C0 E0            [24] 1277 	push	acc
      003460 74 4C            [12] 1278 	mov	a,#(___str_21 >> 8)
      003462 C0 E0            [24] 1279 	push	acc
      003464 74 80            [12] 1280 	mov	a,#0x80
      003466 C0 E0            [24] 1281 	push	acc
      003468 12 3B 50         [24] 1282 	lcall	_printf
      00346B E5 81            [12] 1283 	mov	a,sp
      00346D 24 FB            [12] 1284 	add	a,#0xfb
      00346F F5 81            [12] 1285 	mov	sp,a
      003471 D0 06            [24] 1286 	pop	ar6
      003473 D0 07            [24] 1287 	pop	ar7
                                   1288 ;	8051_i2c_eeprom.c:173: if(address > 0x7ff) 
      003475 C3               [12] 1289 	clr	c
      003476 74 FF            [12] 1290 	mov	a,#0xff
      003478 9E               [12] 1291 	subb	a,r6
      003479 74 07            [12] 1292 	mov	a,#0x07
      00347B 9F               [12] 1293 	subb	a,r7
      00347C 50 5F            [24] 1294 	jnc	00127$
                                   1295 ;	8051_i2c_eeprom.c:175: printf("╔══════════════════════════════════════════╗\n\r");
      00347E 74 E2            [12] 1296 	mov	a,#___str_22
      003480 C0 E0            [24] 1297 	push	acc
      003482 74 4C            [12] 1298 	mov	a,#(___str_22 >> 8)
      003484 C0 E0            [24] 1299 	push	acc
      003486 74 80            [12] 1300 	mov	a,#0x80
      003488 C0 E0            [24] 1301 	push	acc
      00348A 12 3B 50         [24] 1302 	lcall	_printf
      00348D 15 81            [12] 1303 	dec	sp
      00348F 15 81            [12] 1304 	dec	sp
      003491 15 81            [12] 1305 	dec	sp
                                   1306 ;	8051_i2c_eeprom.c:176: printf("║       ! ADDRESS OUT OF RANGE !         ║\n\r");
      003493 74 69            [12] 1307 	mov	a,#___str_23
      003495 C0 E0            [24] 1308 	push	acc
      003497 74 4D            [12] 1309 	mov	a,#(___str_23 >> 8)
      003499 C0 E0            [24] 1310 	push	acc
      00349B 74 80            [12] 1311 	mov	a,#0x80
      00349D C0 E0            [24] 1312 	push	acc
      00349F 12 3B 50         [24] 1313 	lcall	_printf
      0034A2 15 81            [12] 1314 	dec	sp
      0034A4 15 81            [12] 1315 	dec	sp
      0034A6 15 81            [12] 1316 	dec	sp
                                   1317 ;	8051_i2c_eeprom.c:177: printf("║     Please Enter Valid Address         ║\n\r");
      0034A8 74 9A            [12] 1318 	mov	a,#___str_24
      0034AA C0 E0            [24] 1319 	push	acc
      0034AC 74 4D            [12] 1320 	mov	a,#(___str_24 >> 8)
      0034AE C0 E0            [24] 1321 	push	acc
      0034B0 74 80            [12] 1322 	mov	a,#0x80
      0034B2 C0 E0            [24] 1323 	push	acc
      0034B4 12 3B 50         [24] 1324 	lcall	_printf
      0034B7 15 81            [12] 1325 	dec	sp
      0034B9 15 81            [12] 1326 	dec	sp
      0034BB 15 81            [12] 1327 	dec	sp
                                   1328 ;	8051_i2c_eeprom.c:178: printf("╚══════════════════════════════════════════╝\n\r");
      0034BD 74 CB            [12] 1329 	mov	a,#___str_25
      0034BF C0 E0            [24] 1330 	push	acc
      0034C1 74 4D            [12] 1331 	mov	a,#(___str_25 >> 8)
      0034C3 C0 E0            [24] 1332 	push	acc
      0034C5 74 80            [12] 1333 	mov	a,#0x80
      0034C7 C0 E0            [24] 1334 	push	acc
      0034C9 12 3B 50         [24] 1335 	lcall	_printf
      0034CC 15 81            [12] 1336 	dec	sp
      0034CE 15 81            [12] 1337 	dec	sp
      0034D0 15 81            [12] 1338 	dec	sp
                                   1339 ;	8051_i2c_eeprom.c:179: address_range_flag = 0;
      0034D2 90 04 51         [24] 1340 	mov	dptr,#_address_range_flag
      0034D5 E4               [12] 1341 	clr	a
      0034D6 F0               [24] 1342 	movx	@dptr,a
      0034D7 A3               [24] 1343 	inc	dptr
      0034D8 F0               [24] 1344 	movx	@dptr,a
                                   1345 ;	8051_i2c_eeprom.c:180: return 0;
      0034D9 90 00 00         [24] 1346 	mov	dptr,#0x0000
      0034DC 22               [24] 1347 	ret
      0034DD                       1348 00127$:
                                   1349 ;	8051_i2c_eeprom.c:184: address = address%256;     //word address
      0034DD 90 04 08         [24] 1350 	mov	dptr,#_take_address_address_65538_69
      0034E0 EE               [12] 1351 	mov	a,r6
      0034E1 F0               [24] 1352 	movx	@dptr,a
      0034E2 E4               [12] 1353 	clr	a
      0034E3 A3               [24] 1354 	inc	dptr
      0034E4 F0               [24] 1355 	movx	@dptr,a
                                   1356 ;	8051_i2c_eeprom.c:187: return address;
      0034E5 90 04 08         [24] 1357 	mov	dptr,#_take_address_address_65538_69
      0034E8 E0               [24] 1358 	movx	a,@dptr
      0034E9 FE               [12] 1359 	mov	r6,a
      0034EA A3               [24] 1360 	inc	dptr
      0034EB E0               [24] 1361 	movx	a,@dptr
                                   1362 ;	8051_i2c_eeprom.c:188: }
      0034EC 8E 82            [24] 1363 	mov	dpl,r6
      0034EE F5 83            [12] 1364 	mov	dph,a
      0034F0 22               [24] 1365 	ret
                                   1366 ;------------------------------------------------------------
                                   1367 ;Allocation info for local variables in function 'take_data'
                                   1368 ;------------------------------------------------------------
                                   1369 ;input                     Allocated with name '_take_data_input_65537_75'
                                   1370 ;i                         Allocated with name '_take_data_i_65537_75'
                                   1371 ;c                         Allocated with name '_take_data_c_65537_75'
                                   1372 ;data                      Allocated with name '_take_data_data_65538_79'
                                   1373 ;------------------------------------------------------------
                                   1374 ;	8051_i2c_eeprom.c:190: unsigned char take_data()
                                   1375 ;	-----------------------------------------
                                   1376 ;	 function take_data
                                   1377 ;	-----------------------------------------
      0034F1                       1378 _take_data:
                                   1379 ;	8051_i2c_eeprom.c:192: printf("│ Enter data (hex, up to 2 characters): \n\r|");
      0034F1 74 52            [12] 1380 	mov	a,#___str_26
      0034F3 C0 E0            [24] 1381 	push	acc
      0034F5 74 4E            [12] 1382 	mov	a,#(___str_26 >> 8)
      0034F7 C0 E0            [24] 1383 	push	acc
      0034F9 74 80            [12] 1384 	mov	a,#0x80
      0034FB C0 E0            [24] 1385 	push	acc
      0034FD 12 3B 50         [24] 1386 	lcall	_printf
      003500 15 81            [12] 1387 	dec	sp
      003502 15 81            [12] 1388 	dec	sp
      003504 15 81            [12] 1389 	dec	sp
                                   1390 ;	8051_i2c_eeprom.c:193: char input[4] = {0};  // Array for 3 hex chars + null terminator
      003506 90 04 0A         [24] 1391 	mov	dptr,#_take_data_input_65537_75
      003509 E4               [12] 1392 	clr	a
      00350A F0               [24] 1393 	movx	@dptr,a
      00350B 90 04 0B         [24] 1394 	mov	dptr,#(_take_data_input_65537_75 + 0x0001)
      00350E F0               [24] 1395 	movx	@dptr,a
      00350F 90 04 0C         [24] 1396 	mov	dptr,#(_take_data_input_65537_75 + 0x0002)
      003512 F0               [24] 1397 	movx	@dptr,a
      003513 90 04 0D         [24] 1398 	mov	dptr,#(_take_data_input_65537_75 + 0x0003)
      003516 F0               [24] 1399 	movx	@dptr,a
                                   1400 ;	8051_i2c_eeprom.c:197: printf("| $ ");
      003517 74 BD            [12] 1401 	mov	a,#___str_20
      003519 C0 E0            [24] 1402 	push	acc
      00351B 74 4C            [12] 1403 	mov	a,#(___str_20 >> 8)
      00351D C0 E0            [24] 1404 	push	acc
      00351F 74 80            [12] 1405 	mov	a,#0x80
      003521 C0 E0            [24] 1406 	push	acc
      003523 12 3B 50         [24] 1407 	lcall	_printf
      003526 15 81            [12] 1408 	dec	sp
      003528 15 81            [12] 1409 	dec	sp
      00352A 15 81            [12] 1410 	dec	sp
                                   1411 ;	8051_i2c_eeprom.c:199: while (i < 3) {
      00352C 7E 00            [12] 1412 	mov	r6,#0x00
      00352E 7F 00            [12] 1413 	mov	r7,#0x00
      003530                       1414 00111$:
      003530 C3               [12] 1415 	clr	c
      003531 EE               [12] 1416 	mov	a,r6
      003532 94 03            [12] 1417 	subb	a,#0x03
      003534 EF               [12] 1418 	mov	a,r7
      003535 64 80            [12] 1419 	xrl	a,#0x80
      003537 94 80            [12] 1420 	subb	a,#0x80
      003539 50 5B            [24] 1421 	jnc	00113$
                                   1422 ;	8051_i2c_eeprom.c:201: c = getchar();
      00353B C0 07            [24] 1423 	push	ar7
      00353D C0 06            [24] 1424 	push	ar6
      00353F 12 30 81         [24] 1425 	lcall	_getchar
      003542 AC 82            [24] 1426 	mov	r4,dpl
      003544 AD 83            [24] 1427 	mov	r5,dph
      003546 D0 06            [24] 1428 	pop	ar6
      003548 D0 07            [24] 1429 	pop	ar7
                                   1430 ;	8051_i2c_eeprom.c:204: if (c == '\r' || c == '\n') {
      00354A BC 0D 02         [24] 1431 	cjne	r4,#0x0d,00200$
      00354D 80 47            [24] 1432 	sjmp	00113$
      00354F                       1433 00200$:
      00354F BC 0A 02         [24] 1434 	cjne	r4,#0x0a,00201$
      003552 80 42            [24] 1435 	sjmp	00113$
      003554                       1436 00201$:
                                   1437 ;	8051_i2c_eeprom.c:209: if ((c >= '0' && c <= '9') || 
      003554 BC 30 00         [24] 1438 	cjne	r4,#0x30,00202$
      003557                       1439 00202$:
      003557 40 05            [24] 1440 	jc	00108$
      003559 EC               [12] 1441 	mov	a,r4
      00355A 24 C6            [12] 1442 	add	a,#0xff - 0x39
      00355C 50 14            [24] 1443 	jnc	00104$
      00355E                       1444 00108$:
                                   1445 ;	8051_i2c_eeprom.c:210: (c >= 'a' && c <= 'f') || 
      00355E BC 61 00         [24] 1446 	cjne	r4,#0x61,00205$
      003561                       1447 00205$:
      003561 40 05            [24] 1448 	jc	00110$
      003563 EC               [12] 1449 	mov	a,r4
      003564 24 99            [12] 1450 	add	a,#0xff - 0x66
      003566 50 0A            [24] 1451 	jnc	00104$
      003568                       1452 00110$:
                                   1453 ;	8051_i2c_eeprom.c:211: (c >= 'A' && c <= 'F')) {
      003568 BC 41 00         [24] 1454 	cjne	r4,#0x41,00208$
      00356B                       1455 00208$:
      00356B 40 C3            [24] 1456 	jc	00111$
      00356D EC               [12] 1457 	mov	a,r4
      00356E 24 B9            [12] 1458 	add	a,#0xff - 0x46
      003570 40 BE            [24] 1459 	jc	00111$
      003572                       1460 00104$:
                                   1461 ;	8051_i2c_eeprom.c:213: input[i] = c;
      003572 EE               [12] 1462 	mov	a,r6
      003573 24 0A            [12] 1463 	add	a,#_take_data_input_65537_75
      003575 F5 82            [12] 1464 	mov	dpl,a
      003577 EF               [12] 1465 	mov	a,r7
      003578 34 04            [12] 1466 	addc	a,#(_take_data_input_65537_75 >> 8)
      00357A F5 83            [12] 1467 	mov	dph,a
      00357C EC               [12] 1468 	mov	a,r4
      00357D F0               [24] 1469 	movx	@dptr,a
                                   1470 ;	8051_i2c_eeprom.c:214: putchar(c);  // Echo character back
      00357E 7D 00            [12] 1471 	mov	r5,#0x00
      003580 8C 82            [24] 1472 	mov	dpl,r4
      003582 8D 83            [24] 1473 	mov	dph,r5
      003584 C0 07            [24] 1474 	push	ar7
      003586 C0 06            [24] 1475 	push	ar6
      003588 12 30 62         [24] 1476 	lcall	_putchar
      00358B D0 06            [24] 1477 	pop	ar6
      00358D D0 07            [24] 1478 	pop	ar7
                                   1479 ;	8051_i2c_eeprom.c:215: i++;
      00358F 0E               [12] 1480 	inc	r6
      003590 BE 00 9D         [24] 1481 	cjne	r6,#0x00,00111$
      003593 0F               [12] 1482 	inc	r7
      003594 80 9A            [24] 1483 	sjmp	00111$
      003596                       1484 00113$:
                                   1485 ;	8051_i2c_eeprom.c:219: input[i] = '\0';  // Null-terminate the string
      003596 EE               [12] 1486 	mov	a,r6
      003597 24 0A            [12] 1487 	add	a,#_take_data_input_65537_75
      003599 F5 82            [12] 1488 	mov	dpl,a
      00359B EF               [12] 1489 	mov	a,r7
      00359C 34 04            [12] 1490 	addc	a,#(_take_data_input_65537_75 >> 8)
      00359E F5 83            [12] 1491 	mov	dph,a
      0035A0 E4               [12] 1492 	clr	a
      0035A1 F0               [24] 1493 	movx	@dptr,a
                                   1494 ;	8051_i2c_eeprom.c:222: unsigned char data = 0;
      0035A2 90 04 0E         [24] 1495 	mov	dptr,#_take_data_data_65538_79
      0035A5 F0               [24] 1496 	movx	@dptr,a
                                   1497 ;	8051_i2c_eeprom.c:223: for (i = 0; input[i] != '\0'; i++) {
      0035A6 7E 00            [12] 1498 	mov	r6,#0x00
      0035A8 7F 00            [12] 1499 	mov	r7,#0x00
      0035AA                       1500 00129$:
      0035AA EE               [12] 1501 	mov	a,r6
      0035AB 24 0A            [12] 1502 	add	a,#_take_data_input_65537_75
      0035AD F5 82            [12] 1503 	mov	dpl,a
      0035AF EF               [12] 1504 	mov	a,r7
      0035B0 34 04            [12] 1505 	addc	a,#(_take_data_input_65537_75 >> 8)
      0035B2 F5 83            [12] 1506 	mov	dph,a
      0035B4 E0               [24] 1507 	movx	a,@dptr
      0035B5 FD               [12] 1508 	mov	r5,a
      0035B6 70 03            [24] 1509 	jnz	00212$
      0035B8 02 36 1D         [24] 1510 	ljmp	00125$
      0035BB                       1511 00212$:
                                   1512 ;	8051_i2c_eeprom.c:224: data = data * 16;
      0035BB 90 04 0E         [24] 1513 	mov	dptr,#_take_data_data_65538_79
      0035BE E0               [24] 1514 	movx	a,@dptr
      0035BF C4               [12] 1515 	swap	a
      0035C0 54 F0            [12] 1516 	anl	a,#0xf0
      0035C2 FC               [12] 1517 	mov	r4,a
      0035C3 F0               [24] 1518 	movx	@dptr,a
                                   1519 ;	8051_i2c_eeprom.c:225: if (input[i] >= '0' && input[i] <= '9')
      0035C4 BD 30 00         [24] 1520 	cjne	r5,#0x30,00213$
      0035C7                       1521 00213$:
      0035C7 40 12            [24] 1522 	jc	00122$
      0035C9 ED               [12] 1523 	mov	a,r5
      0035CA 24 C6            [12] 1524 	add	a,#0xff - 0x39
      0035CC 40 0D            [24] 1525 	jc	00122$
                                   1526 ;	8051_i2c_eeprom.c:226: data += input[i] - '0';
      0035CE ED               [12] 1527 	mov	a,r5
      0035CF 24 D0            [12] 1528 	add	a,#0xd0
      0035D1 FD               [12] 1529 	mov	r5,a
      0035D2 90 04 0E         [24] 1530 	mov	dptr,#_take_data_data_65538_79
      0035D5 E0               [24] 1531 	movx	a,@dptr
      0035D6 FC               [12] 1532 	mov	r4,a
      0035D7 2D               [12] 1533 	add	a,r5
      0035D8 F0               [24] 1534 	movx	@dptr,a
      0035D9 80 3A            [24] 1535 	sjmp	00130$
      0035DB                       1536 00122$:
                                   1537 ;	8051_i2c_eeprom.c:227: else if (input[i] >= 'A' && input[i] <= 'F')
      0035DB EE               [12] 1538 	mov	a,r6
      0035DC 24 0A            [12] 1539 	add	a,#_take_data_input_65537_75
      0035DE F5 82            [12] 1540 	mov	dpl,a
      0035E0 EF               [12] 1541 	mov	a,r7
      0035E1 34 04            [12] 1542 	addc	a,#(_take_data_input_65537_75 >> 8)
      0035E3 F5 83            [12] 1543 	mov	dph,a
      0035E5 E0               [24] 1544 	movx	a,@dptr
      0035E6 FD               [12] 1545 	mov	r5,a
      0035E7 BD 41 00         [24] 1546 	cjne	r5,#0x41,00216$
      0035EA                       1547 00216$:
      0035EA 40 14            [24] 1548 	jc	00118$
      0035EC ED               [12] 1549 	mov	a,r5
      0035ED 24 B9            [12] 1550 	add	a,#0xff - 0x46
      0035EF 40 0F            [24] 1551 	jc	00118$
                                   1552 ;	8051_i2c_eeprom.c:228: data += input[i] - 'A' + 10;
      0035F1 8D 04            [24] 1553 	mov	ar4,r5
      0035F3 74 C9            [12] 1554 	mov	a,#0xc9
      0035F5 2C               [12] 1555 	add	a,r4
      0035F6 FC               [12] 1556 	mov	r4,a
      0035F7 90 04 0E         [24] 1557 	mov	dptr,#_take_data_data_65538_79
      0035FA E0               [24] 1558 	movx	a,@dptr
      0035FB FB               [12] 1559 	mov	r3,a
      0035FC 2C               [12] 1560 	add	a,r4
      0035FD F0               [24] 1561 	movx	@dptr,a
      0035FE 80 15            [24] 1562 	sjmp	00130$
      003600                       1563 00118$:
                                   1564 ;	8051_i2c_eeprom.c:229: else if (input[i] >= 'a' && input[i] <= 'f')
      003600 BD 61 00         [24] 1565 	cjne	r5,#0x61,00219$
      003603                       1566 00219$:
      003603 40 10            [24] 1567 	jc	00130$
      003605 ED               [12] 1568 	mov	a,r5
      003606 24 99            [12] 1569 	add	a,#0xff - 0x66
      003608 40 0B            [24] 1570 	jc	00130$
                                   1571 ;	8051_i2c_eeprom.c:230: data += input[i] - 'a' + 10;
      00360A 74 A9            [12] 1572 	mov	a,#0xa9
      00360C 2D               [12] 1573 	add	a,r5
      00360D FD               [12] 1574 	mov	r5,a
      00360E 90 04 0E         [24] 1575 	mov	dptr,#_take_data_data_65538_79
      003611 E0               [24] 1576 	movx	a,@dptr
      003612 FC               [12] 1577 	mov	r4,a
      003613 2D               [12] 1578 	add	a,r5
      003614 F0               [24] 1579 	movx	@dptr,a
      003615                       1580 00130$:
                                   1581 ;	8051_i2c_eeprom.c:223: for (i = 0; input[i] != '\0'; i++) {
      003615 0E               [12] 1582 	inc	r6
      003616 BE 00 01         [24] 1583 	cjne	r6,#0x00,00222$
      003619 0F               [12] 1584 	inc	r7
      00361A                       1585 00222$:
      00361A 02 35 AA         [24] 1586 	ljmp	00129$
      00361D                       1587 00125$:
                                   1588 ;	8051_i2c_eeprom.c:233: printf("\n\r│ Entered data: 0x%03X\n\r", data);
      00361D 90 04 0E         [24] 1589 	mov	dptr,#_take_data_data_65538_79
      003620 E0               [24] 1590 	movx	a,@dptr
      003621 FF               [12] 1591 	mov	r7,a
      003622 FD               [12] 1592 	mov	r5,a
      003623 7E 00            [12] 1593 	mov	r6,#0x00
      003625 C0 07            [24] 1594 	push	ar7
      003627 C0 05            [24] 1595 	push	ar5
      003629 C0 06            [24] 1596 	push	ar6
      00362B 74 80            [12] 1597 	mov	a,#___str_27
      00362D C0 E0            [24] 1598 	push	acc
      00362F 74 4E            [12] 1599 	mov	a,#(___str_27 >> 8)
      003631 C0 E0            [24] 1600 	push	acc
      003633 74 80            [12] 1601 	mov	a,#0x80
      003635 C0 E0            [24] 1602 	push	acc
      003637 12 3B 50         [24] 1603 	lcall	_printf
      00363A E5 81            [12] 1604 	mov	a,sp
      00363C 24 FB            [12] 1605 	add	a,#0xfb
      00363E F5 81            [12] 1606 	mov	sp,a
      003640 D0 07            [24] 1607 	pop	ar7
                                   1608 ;	8051_i2c_eeprom.c:234: if(data > 0xFE) 
      003642 EF               [12] 1609 	mov	a,r7
      003643 24 01            [12] 1610 	add	a,#0xff - 0xfe
      003645 50 20            [24] 1611 	jnc	00127$
                                   1612 ;	8051_i2c_eeprom.c:236: printf("Data out of Range\n\r");
      003647 74 9D            [12] 1613 	mov	a,#___str_28
      003649 C0 E0            [24] 1614 	push	acc
      00364B 74 4E            [12] 1615 	mov	a,#(___str_28 >> 8)
      00364D C0 E0            [24] 1616 	push	acc
      00364F 74 80            [12] 1617 	mov	a,#0x80
      003651 C0 E0            [24] 1618 	push	acc
      003653 12 3B 50         [24] 1619 	lcall	_printf
      003656 15 81            [12] 1620 	dec	sp
      003658 15 81            [12] 1621 	dec	sp
      00365A 15 81            [12] 1622 	dec	sp
                                   1623 ;	8051_i2c_eeprom.c:237: data_range_flag = 0;
      00365C 90 04 53         [24] 1624 	mov	dptr,#_data_range_flag
      00365F E4               [12] 1625 	clr	a
      003660 F0               [24] 1626 	movx	@dptr,a
      003661 A3               [24] 1627 	inc	dptr
      003662 F0               [24] 1628 	movx	@dptr,a
                                   1629 ;	8051_i2c_eeprom.c:238: return 0;
      003663 75 82 00         [24] 1630 	mov	dpl,#0x00
      003666 22               [24] 1631 	ret
      003667                       1632 00127$:
                                   1633 ;	8051_i2c_eeprom.c:240: return data;
      003667 8F 82            [24] 1634 	mov	dpl,r7
                                   1635 ;	8051_i2c_eeprom.c:242: }
      003669 22               [24] 1636 	ret
                                   1637 ;------------------------------------------------------------
                                   1638 ;Allocation info for local variables in function 'eeprom_write'
                                   1639 ;------------------------------------------------------------
                                   1640 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                   1641 ;address                   Allocated with name '_eeprom_write_address_65536_83'
                                   1642 ;i                         Allocated with name '_eeprom_write_i_196608_89'
                                   1643 ;------------------------------------------------------------
                                   1644 ;	8051_i2c_eeprom.c:244: int eeprom_write(unsigned int address, unsigned char data) 
                                   1645 ;	-----------------------------------------
                                   1646 ;	 function eeprom_write
                                   1647 ;	-----------------------------------------
      00366A                       1648 _eeprom_write:
      00366A AF 83            [24] 1649 	mov	r7,dph
      00366C E5 82            [12] 1650 	mov	a,dpl
      00366E 90 04 10         [24] 1651 	mov	dptr,#_eeprom_write_address_65536_83
      003671 F0               [24] 1652 	movx	@dptr,a
      003672 EF               [12] 1653 	mov	a,r7
      003673 A3               [24] 1654 	inc	dptr
      003674 F0               [24] 1655 	movx	@dptr,a
                                   1656 ;	8051_i2c_eeprom.c:247: if(address_range_flag && data_range_flag)
      003675 90 04 51         [24] 1657 	mov	dptr,#_address_range_flag
      003678 E0               [24] 1658 	movx	a,@dptr
      003679 F5 F0            [12] 1659 	mov	b,a
      00367B A3               [24] 1660 	inc	dptr
      00367C E0               [24] 1661 	movx	a,@dptr
      00367D 45 F0            [12] 1662 	orl	a,b
      00367F 70 03            [24] 1663 	jnz	00145$
      003681 02 37 CA         [24] 1664 	ljmp	00109$
      003684                       1665 00145$:
      003684 90 04 53         [24] 1666 	mov	dptr,#_data_range_flag
      003687 E0               [24] 1667 	movx	a,@dptr
      003688 F5 F0            [12] 1668 	mov	b,a
      00368A A3               [24] 1669 	inc	dptr
      00368B E0               [24] 1670 	movx	a,@dptr
      00368C 45 F0            [12] 1671 	orl	a,b
      00368E 70 03            [24] 1672 	jnz	00146$
      003690 02 37 CA         [24] 1673 	ljmp	00109$
      003693                       1674 00146$:
                                   1675 ;	8051_i2c_eeprom.c:250: i2c_start();
      003693 12 3A 11         [24] 1676 	lcall	_i2c_start
                                   1677 ;	8051_i2c_eeprom.c:253: if(!i2c_write(EEPROM_ID | block | WRITE)) {
      003696 90 04 55         [24] 1678 	mov	dptr,#_block
      003699 E0               [24] 1679 	movx	a,@dptr
      00369A FE               [12] 1680 	mov	r6,a
      00369B A3               [24] 1681 	inc	dptr
      00369C E0               [24] 1682 	movx	a,@dptr
      00369D 43 06 A0         [24] 1683 	orl	ar6,#0xa0
      0036A0 8E 82            [24] 1684 	mov	dpl,r6
      0036A2 12 39 24         [24] 1685 	lcall	_i2c_write
      0036A5 E5 82            [12] 1686 	mov	a,dpl
      0036A7 85 83 F0         [24] 1687 	mov	b,dph
      0036AA 45 F0            [12] 1688 	orl	a,b
      0036AC 70 1C            [24] 1689 	jnz	00102$
                                   1690 ;	8051_i2c_eeprom.c:254: printf("Error: No ACK for device address (write)\n\r");
      0036AE 74 B1            [12] 1691 	mov	a,#___str_29
      0036B0 C0 E0            [24] 1692 	push	acc
      0036B2 74 4E            [12] 1693 	mov	a,#(___str_29 >> 8)
      0036B4 C0 E0            [24] 1694 	push	acc
      0036B6 74 80            [12] 1695 	mov	a,#0x80
      0036B8 C0 E0            [24] 1696 	push	acc
      0036BA 12 3B 50         [24] 1697 	lcall	_printf
      0036BD 15 81            [12] 1698 	dec	sp
      0036BF 15 81            [12] 1699 	dec	sp
      0036C1 15 81            [12] 1700 	dec	sp
                                   1701 ;	8051_i2c_eeprom.c:255: i2c_stop();
      0036C3 12 3A 26         [24] 1702 	lcall	_i2c_stop
                                   1703 ;	8051_i2c_eeprom.c:256: return 0;
      0036C6 90 00 00         [24] 1704 	mov	dptr,#0x0000
      0036C9 22               [24] 1705 	ret
      0036CA                       1706 00102$:
                                   1707 ;	8051_i2c_eeprom.c:260: if(!i2c_write((unsigned char)address)) {
      0036CA 90 04 10         [24] 1708 	mov	dptr,#_eeprom_write_address_65536_83
      0036CD E0               [24] 1709 	movx	a,@dptr
      0036CE FE               [12] 1710 	mov	r6,a
      0036CF A3               [24] 1711 	inc	dptr
      0036D0 E0               [24] 1712 	movx	a,@dptr
      0036D1 FF               [12] 1713 	mov	r7,a
      0036D2 8E 05            [24] 1714 	mov	ar5,r6
      0036D4 8D 82            [24] 1715 	mov	dpl,r5
      0036D6 C0 07            [24] 1716 	push	ar7
      0036D8 C0 06            [24] 1717 	push	ar6
      0036DA 12 39 24         [24] 1718 	lcall	_i2c_write
      0036DD E5 82            [12] 1719 	mov	a,dpl
      0036DF 85 83 F0         [24] 1720 	mov	b,dph
      0036E2 D0 06            [24] 1721 	pop	ar6
      0036E4 D0 07            [24] 1722 	pop	ar7
      0036E6 45 F0            [12] 1723 	orl	a,b
      0036E8 70 1C            [24] 1724 	jnz	00104$
                                   1725 ;	8051_i2c_eeprom.c:261: printf("Error: No ACK for memory address\n\r");
      0036EA 74 DC            [12] 1726 	mov	a,#___str_30
      0036EC C0 E0            [24] 1727 	push	acc
      0036EE 74 4E            [12] 1728 	mov	a,#(___str_30 >> 8)
      0036F0 C0 E0            [24] 1729 	push	acc
      0036F2 74 80            [12] 1730 	mov	a,#0x80
      0036F4 C0 E0            [24] 1731 	push	acc
      0036F6 12 3B 50         [24] 1732 	lcall	_printf
      0036F9 15 81            [12] 1733 	dec	sp
      0036FB 15 81            [12] 1734 	dec	sp
      0036FD 15 81            [12] 1735 	dec	sp
                                   1736 ;	8051_i2c_eeprom.c:262: i2c_stop();
      0036FF 12 3A 26         [24] 1737 	lcall	_i2c_stop
                                   1738 ;	8051_i2c_eeprom.c:263: return 0;
      003702 90 00 00         [24] 1739 	mov	dptr,#0x0000
      003705 22               [24] 1740 	ret
      003706                       1741 00104$:
                                   1742 ;	8051_i2c_eeprom.c:267: if(!i2c_write(data)) {
      003706 90 04 0F         [24] 1743 	mov	dptr,#_eeprom_write_PARM_2
      003709 E0               [24] 1744 	movx	a,@dptr
      00370A FD               [12] 1745 	mov	r5,a
      00370B F5 82            [12] 1746 	mov	dpl,a
      00370D C0 07            [24] 1747 	push	ar7
      00370F C0 06            [24] 1748 	push	ar6
      003711 C0 05            [24] 1749 	push	ar5
      003713 12 39 24         [24] 1750 	lcall	_i2c_write
      003716 E5 82            [12] 1751 	mov	a,dpl
      003718 85 83 F0         [24] 1752 	mov	b,dph
      00371B D0 05            [24] 1753 	pop	ar5
      00371D D0 06            [24] 1754 	pop	ar6
      00371F D0 07            [24] 1755 	pop	ar7
      003721 45 F0            [12] 1756 	orl	a,b
      003723 70 1C            [24] 1757 	jnz	00106$
                                   1758 ;	8051_i2c_eeprom.c:268: printf("Error: No ACK for data\n\r");
      003725 74 FF            [12] 1759 	mov	a,#___str_31
      003727 C0 E0            [24] 1760 	push	acc
      003729 74 4E            [12] 1761 	mov	a,#(___str_31 >> 8)
      00372B C0 E0            [24] 1762 	push	acc
      00372D 74 80            [12] 1763 	mov	a,#0x80
      00372F C0 E0            [24] 1764 	push	acc
      003731 12 3B 50         [24] 1765 	lcall	_printf
      003734 15 81            [12] 1766 	dec	sp
      003736 15 81            [12] 1767 	dec	sp
      003738 15 81            [12] 1768 	dec	sp
                                   1769 ;	8051_i2c_eeprom.c:269: i2c_stop();
      00373A 12 3A 26         [24] 1770 	lcall	_i2c_stop
                                   1771 ;	8051_i2c_eeprom.c:270: return 0;
      00373D 90 00 00         [24] 1772 	mov	dptr,#0x0000
      003740 22               [24] 1773 	ret
      003741                       1774 00106$:
                                   1775 ;	8051_i2c_eeprom.c:273: i2c_stop();
      003741 C0 07            [24] 1776 	push	ar7
      003743 C0 06            [24] 1777 	push	ar6
      003745 C0 05            [24] 1778 	push	ar5
      003747 12 3A 26         [24] 1779 	lcall	_i2c_stop
      00374A D0 05            [24] 1780 	pop	ar5
      00374C D0 06            [24] 1781 	pop	ar6
      00374E D0 07            [24] 1782 	pop	ar7
                                   1783 ;	8051_i2c_eeprom.c:275: for(int i = 0; i<10; i++)
      003750 7B 00            [12] 1784 	mov	r3,#0x00
      003752 7C 00            [12] 1785 	mov	r4,#0x00
      003754                       1786 00112$:
      003754 C3               [12] 1787 	clr	c
      003755 EB               [12] 1788 	mov	a,r3
      003756 94 0A            [12] 1789 	subb	a,#0x0a
      003758 EC               [12] 1790 	mov	a,r4
      003759 64 80            [12] 1791 	xrl	a,#0x80
      00375B 94 80            [12] 1792 	subb	a,#0x80
      00375D 50 1E            [24] 1793 	jnc	00107$
                                   1794 ;	8051_i2c_eeprom.c:277: i2c_delay();
      00375F C0 07            [24] 1795 	push	ar7
      003761 C0 06            [24] 1796 	push	ar6
      003763 C0 05            [24] 1797 	push	ar5
      003765 C0 04            [24] 1798 	push	ar4
      003767 C0 03            [24] 1799 	push	ar3
      003769 12 3A 33         [24] 1800 	lcall	_i2c_delay
      00376C D0 03            [24] 1801 	pop	ar3
      00376E D0 04            [24] 1802 	pop	ar4
      003770 D0 05            [24] 1803 	pop	ar5
      003772 D0 06            [24] 1804 	pop	ar6
      003774 D0 07            [24] 1805 	pop	ar7
                                   1806 ;	8051_i2c_eeprom.c:275: for(int i = 0; i<10; i++)
      003776 0B               [12] 1807 	inc	r3
      003777 BB 00 DA         [24] 1808 	cjne	r3,#0x00,00112$
      00377A 0C               [12] 1809 	inc	r4
      00377B 80 D7            [24] 1810 	sjmp	00112$
      00377D                       1811 00107$:
                                   1812 ;	8051_i2c_eeprom.c:280: printf("| Writing at Address 0x%03X Data 0x%02X          |\n\r", address, data);
      00377D 7C 00            [12] 1813 	mov	r4,#0x00
      00377F C0 05            [24] 1814 	push	ar5
      003781 C0 04            [24] 1815 	push	ar4
      003783 C0 06            [24] 1816 	push	ar6
      003785 C0 07            [24] 1817 	push	ar7
      003787 74 18            [12] 1818 	mov	a,#___str_32
      003789 C0 E0            [24] 1819 	push	acc
      00378B 74 4F            [12] 1820 	mov	a,#(___str_32 >> 8)
      00378D C0 E0            [24] 1821 	push	acc
      00378F 74 80            [12] 1822 	mov	a,#0x80
      003791 C0 E0            [24] 1823 	push	acc
      003793 12 3B 50         [24] 1824 	lcall	_printf
      003796 E5 81            [12] 1825 	mov	a,sp
      003798 24 F9            [12] 1826 	add	a,#0xf9
      00379A F5 81            [12] 1827 	mov	sp,a
                                   1828 ;	8051_i2c_eeprom.c:281: printf("│ Write successful!                             │\n\r");
      00379C 74 4D            [12] 1829 	mov	a,#___str_33
      00379E C0 E0            [24] 1830 	push	acc
      0037A0 74 4F            [12] 1831 	mov	a,#(___str_33 >> 8)
      0037A2 C0 E0            [24] 1832 	push	acc
      0037A4 74 80            [12] 1833 	mov	a,#0x80
      0037A6 C0 E0            [24] 1834 	push	acc
      0037A8 12 3B 50         [24] 1835 	lcall	_printf
      0037AB 15 81            [12] 1836 	dec	sp
      0037AD 15 81            [12] 1837 	dec	sp
      0037AF 15 81            [12] 1838 	dec	sp
                                   1839 ;	8051_i2c_eeprom.c:282: printf("└───────────────────────────────────────────────┘\n\r");
      0037B1 74 85            [12] 1840 	mov	a,#___str_34
      0037B3 C0 E0            [24] 1841 	push	acc
      0037B5 74 4F            [12] 1842 	mov	a,#(___str_34 >> 8)
      0037B7 C0 E0            [24] 1843 	push	acc
      0037B9 74 80            [12] 1844 	mov	a,#0x80
      0037BB C0 E0            [24] 1845 	push	acc
      0037BD 12 3B 50         [24] 1846 	lcall	_printf
      0037C0 15 81            [12] 1847 	dec	sp
      0037C2 15 81            [12] 1848 	dec	sp
      0037C4 15 81            [12] 1849 	dec	sp
                                   1850 ;	8051_i2c_eeprom.c:283: return 1;  // Success
      0037C6 90 00 01         [24] 1851 	mov	dptr,#0x0001
      0037C9 22               [24] 1852 	ret
      0037CA                       1853 00109$:
                                   1854 ;	8051_i2c_eeprom.c:286: return 0;
      0037CA 90 00 00         [24] 1855 	mov	dptr,#0x0000
                                   1856 ;	8051_i2c_eeprom.c:293: }
      0037CD 22               [24] 1857 	ret
                                   1858 ;------------------------------------------------------------
                                   1859 ;Allocation info for local variables in function 'eeprom_read'
                                   1860 ;------------------------------------------------------------
                                   1861 ;address                   Allocated with name '_eeprom_read_address_65536_91'
                                   1862 ;result                    Allocated with name '_eeprom_read_result_65537_93'
                                   1863 ;------------------------------------------------------------
                                   1864 ;	8051_i2c_eeprom.c:295: int eeprom_read(unsigned int address) 
                                   1865 ;	-----------------------------------------
                                   1866 ;	 function eeprom_read
                                   1867 ;	-----------------------------------------
      0037CE                       1868 _eeprom_read:
      0037CE AF 83            [24] 1869 	mov	r7,dph
      0037D0 E5 82            [12] 1870 	mov	a,dpl
      0037D2 90 04 12         [24] 1871 	mov	dptr,#_eeprom_read_address_65536_91
      0037D5 F0               [24] 1872 	movx	@dptr,a
      0037D6 EF               [12] 1873 	mov	a,r7
      0037D7 A3               [24] 1874 	inc	dptr
      0037D8 F0               [24] 1875 	movx	@dptr,a
                                   1876 ;	8051_i2c_eeprom.c:299: printf("checkpoint 2\n\r");
      0037D9 74 1B            [12] 1877 	mov	a,#___str_35
      0037DB C0 E0            [24] 1878 	push	acc
      0037DD 74 50            [12] 1879 	mov	a,#(___str_35 >> 8)
      0037DF C0 E0            [24] 1880 	push	acc
      0037E1 74 80            [12] 1881 	mov	a,#0x80
      0037E3 C0 E0            [24] 1882 	push	acc
      0037E5 12 3B 50         [24] 1883 	lcall	_printf
      0037E8 15 81            [12] 1884 	dec	sp
      0037EA 15 81            [12] 1885 	dec	sp
      0037EC 15 81            [12] 1886 	dec	sp
                                   1887 ;	8051_i2c_eeprom.c:303: i2c_start();
      0037EE 12 3A 11         [24] 1888 	lcall	_i2c_start
                                   1889 ;	8051_i2c_eeprom.c:306: if(!i2c_write(EEPROM_ID | WRITE)) {
      0037F1 75 82 A0         [24] 1890 	mov	dpl,#0xa0
      0037F4 12 39 24         [24] 1891 	lcall	_i2c_write
      0037F7 E5 82            [12] 1892 	mov	a,dpl
      0037F9 85 83 F0         [24] 1893 	mov	b,dph
      0037FC 45 F0            [12] 1894 	orl	a,b
      0037FE 70 1C            [24] 1895 	jnz	00102$
                                   1896 ;	8051_i2c_eeprom.c:307: printf("Error: No ACK for device address (write mode)\n\r");
      003800 74 2A            [12] 1897 	mov	a,#___str_36
      003802 C0 E0            [24] 1898 	push	acc
      003804 74 50            [12] 1899 	mov	a,#(___str_36 >> 8)
      003806 C0 E0            [24] 1900 	push	acc
      003808 74 80            [12] 1901 	mov	a,#0x80
      00380A C0 E0            [24] 1902 	push	acc
      00380C 12 3B 50         [24] 1903 	lcall	_printf
      00380F 15 81            [12] 1904 	dec	sp
      003811 15 81            [12] 1905 	dec	sp
      003813 15 81            [12] 1906 	dec	sp
                                   1907 ;	8051_i2c_eeprom.c:308: i2c_stop();
      003815 12 3A 26         [24] 1908 	lcall	_i2c_stop
                                   1909 ;	8051_i2c_eeprom.c:309: return -1;
      003818 90 FF FF         [24] 1910 	mov	dptr,#0xffff
      00381B 22               [24] 1911 	ret
      00381C                       1912 00102$:
                                   1913 ;	8051_i2c_eeprom.c:313: if(!i2c_write((unsigned char)address)) {
      00381C 90 04 12         [24] 1914 	mov	dptr,#_eeprom_read_address_65536_91
      00381F E0               [24] 1915 	movx	a,@dptr
      003820 FE               [12] 1916 	mov	r6,a
      003821 A3               [24] 1917 	inc	dptr
      003822 E0               [24] 1918 	movx	a,@dptr
      003823 FF               [12] 1919 	mov	r7,a
      003824 8E 05            [24] 1920 	mov	ar5,r6
      003826 8D 82            [24] 1921 	mov	dpl,r5
      003828 C0 07            [24] 1922 	push	ar7
      00382A C0 06            [24] 1923 	push	ar6
      00382C 12 39 24         [24] 1924 	lcall	_i2c_write
      00382F E5 82            [12] 1925 	mov	a,dpl
      003831 85 83 F0         [24] 1926 	mov	b,dph
      003834 D0 06            [24] 1927 	pop	ar6
      003836 D0 07            [24] 1928 	pop	ar7
      003838 45 F0            [12] 1929 	orl	a,b
      00383A 70 1C            [24] 1930 	jnz	00104$
                                   1931 ;	8051_i2c_eeprom.c:314: printf("Error: No ACK for memory address\n\r");
      00383C 74 DC            [12] 1932 	mov	a,#___str_30
      00383E C0 E0            [24] 1933 	push	acc
      003840 74 4E            [12] 1934 	mov	a,#(___str_30 >> 8)
      003842 C0 E0            [24] 1935 	push	acc
      003844 74 80            [12] 1936 	mov	a,#0x80
      003846 C0 E0            [24] 1937 	push	acc
      003848 12 3B 50         [24] 1938 	lcall	_printf
      00384B 15 81            [12] 1939 	dec	sp
      00384D 15 81            [12] 1940 	dec	sp
      00384F 15 81            [12] 1941 	dec	sp
                                   1942 ;	8051_i2c_eeprom.c:315: i2c_stop();
      003851 12 3A 26         [24] 1943 	lcall	_i2c_stop
                                   1944 ;	8051_i2c_eeprom.c:316: return -1;
      003854 90 FF FF         [24] 1945 	mov	dptr,#0xffff
      003857 22               [24] 1946 	ret
      003858                       1947 00104$:
                                   1948 ;	8051_i2c_eeprom.c:320: i2c_start();
      003858 C0 07            [24] 1949 	push	ar7
      00385A C0 06            [24] 1950 	push	ar6
      00385C 12 3A 11         [24] 1951 	lcall	_i2c_start
                                   1952 ;	8051_i2c_eeprom.c:323: if(!i2c_write(EEPROM_ID | READ)) {
      00385F 75 82 A1         [24] 1953 	mov	dpl,#0xa1
      003862 12 39 24         [24] 1954 	lcall	_i2c_write
      003865 E5 82            [12] 1955 	mov	a,dpl
      003867 85 83 F0         [24] 1956 	mov	b,dph
      00386A D0 06            [24] 1957 	pop	ar6
      00386C D0 07            [24] 1958 	pop	ar7
      00386E 45 F0            [12] 1959 	orl	a,b
      003870 70 1C            [24] 1960 	jnz	00106$
                                   1961 ;	8051_i2c_eeprom.c:324: printf("Error: No ACK for device address (read mode)\n\r");
      003872 74 5A            [12] 1962 	mov	a,#___str_37
      003874 C0 E0            [24] 1963 	push	acc
      003876 74 50            [12] 1964 	mov	a,#(___str_37 >> 8)
      003878 C0 E0            [24] 1965 	push	acc
      00387A 74 80            [12] 1966 	mov	a,#0x80
      00387C C0 E0            [24] 1967 	push	acc
      00387E 12 3B 50         [24] 1968 	lcall	_printf
      003881 15 81            [12] 1969 	dec	sp
      003883 15 81            [12] 1970 	dec	sp
      003885 15 81            [12] 1971 	dec	sp
                                   1972 ;	8051_i2c_eeprom.c:325: i2c_stop();
      003887 12 3A 26         [24] 1973 	lcall	_i2c_stop
                                   1974 ;	8051_i2c_eeprom.c:326: return -1;
      00388A 90 FF FF         [24] 1975 	mov	dptr,#0xffff
      00388D 22               [24] 1976 	ret
      00388E                       1977 00106$:
                                   1978 ;	8051_i2c_eeprom.c:330: result = i2c_read(0);  // 0 means send NACK
      00388E 90 00 00         [24] 1979 	mov	dptr,#0x0000
      003891 C0 07            [24] 1980 	push	ar7
      003893 C0 06            [24] 1981 	push	ar6
      003895 12 39 8C         [24] 1982 	lcall	_i2c_read
      003898 AC 82            [24] 1983 	mov	r4,dpl
      00389A D0 06            [24] 1984 	pop	ar6
      00389C D0 07            [24] 1985 	pop	ar7
                                   1986 ;	8051_i2c_eeprom.c:331: printf("│ Reading from Adress: 0x%03X Data: 0x%02X                    \n\r", address, result);
      00389E 7D 00            [12] 1987 	mov	r5,#0x00
      0038A0 C0 07            [24] 1988 	push	ar7
      0038A2 C0 06            [24] 1989 	push	ar6
      0038A4 C0 05            [24] 1990 	push	ar5
      0038A6 C0 04            [24] 1991 	push	ar4
      0038A8 C0 04            [24] 1992 	push	ar4
      0038AA C0 05            [24] 1993 	push	ar5
      0038AC C0 06            [24] 1994 	push	ar6
      0038AE C0 07            [24] 1995 	push	ar7
      0038B0 74 89            [12] 1996 	mov	a,#___str_38
      0038B2 C0 E0            [24] 1997 	push	acc
      0038B4 74 50            [12] 1998 	mov	a,#(___str_38 >> 8)
      0038B6 C0 E0            [24] 1999 	push	acc
      0038B8 74 80            [12] 2000 	mov	a,#0x80
      0038BA C0 E0            [24] 2001 	push	acc
      0038BC 12 3B 50         [24] 2002 	lcall	_printf
      0038BF E5 81            [12] 2003 	mov	a,sp
      0038C1 24 F9            [12] 2004 	add	a,#0xf9
      0038C3 F5 81            [12] 2005 	mov	sp,a
      0038C5 D0 04            [24] 2006 	pop	ar4
      0038C7 D0 05            [24] 2007 	pop	ar5
      0038C9 D0 06            [24] 2008 	pop	ar6
      0038CB D0 07            [24] 2009 	pop	ar7
                                   2010 ;	8051_i2c_eeprom.c:332: printf("| 0x%03X : 0x%02X \n\r", address, result);
      0038CD C0 05            [24] 2011 	push	ar5
      0038CF C0 04            [24] 2012 	push	ar4
      0038D1 C0 04            [24] 2013 	push	ar4
      0038D3 C0 05            [24] 2014 	push	ar5
      0038D5 C0 06            [24] 2015 	push	ar6
      0038D7 C0 07            [24] 2016 	push	ar7
      0038D9 74 CC            [12] 2017 	mov	a,#___str_39
      0038DB C0 E0            [24] 2018 	push	acc
      0038DD 74 50            [12] 2019 	mov	a,#(___str_39 >> 8)
      0038DF C0 E0            [24] 2020 	push	acc
      0038E1 74 80            [12] 2021 	mov	a,#0x80
      0038E3 C0 E0            [24] 2022 	push	acc
      0038E5 12 3B 50         [24] 2023 	lcall	_printf
      0038E8 E5 81            [12] 2024 	mov	a,sp
      0038EA 24 F9            [12] 2025 	add	a,#0xf9
      0038EC F5 81            [12] 2026 	mov	sp,a
                                   2027 ;	8051_i2c_eeprom.c:333: printf("│ Read successful!                 │\n\r");
      0038EE 74 E1            [12] 2028 	mov	a,#___str_40
      0038F0 C0 E0            [24] 2029 	push	acc
      0038F2 74 50            [12] 2030 	mov	a,#(___str_40 >> 8)
      0038F4 C0 E0            [24] 2031 	push	acc
      0038F6 74 80            [12] 2032 	mov	a,#0x80
      0038F8 C0 E0            [24] 2033 	push	acc
      0038FA 12 3B 50         [24] 2034 	lcall	_printf
      0038FD 15 81            [12] 2035 	dec	sp
      0038FF 15 81            [12] 2036 	dec	sp
      003901 15 81            [12] 2037 	dec	sp
                                   2038 ;	8051_i2c_eeprom.c:334: printf("└───────────────────────────────────────────────┘\n\r");
      003903 74 85            [12] 2039 	mov	a,#___str_34
      003905 C0 E0            [24] 2040 	push	acc
      003907 74 4F            [12] 2041 	mov	a,#(___str_34 >> 8)
      003909 C0 E0            [24] 2042 	push	acc
      00390B 74 80            [12] 2043 	mov	a,#0x80
      00390D C0 E0            [24] 2044 	push	acc
      00390F 12 3B 50         [24] 2045 	lcall	_printf
      003912 15 81            [12] 2046 	dec	sp
      003914 15 81            [12] 2047 	dec	sp
      003916 15 81            [12] 2048 	dec	sp
                                   2049 ;	8051_i2c_eeprom.c:335: i2c_stop();
      003918 12 3A 26         [24] 2050 	lcall	_i2c_stop
      00391B D0 04            [24] 2051 	pop	ar4
      00391D D0 05            [24] 2052 	pop	ar5
                                   2053 ;	8051_i2c_eeprom.c:336: return result;
      00391F 8C 82            [24] 2054 	mov	dpl,r4
      003921 8D 83            [24] 2055 	mov	dph,r5
                                   2056 ;	8051_i2c_eeprom.c:338: return 0;
                                   2057 ;	8051_i2c_eeprom.c:348: }
      003923 22               [24] 2058 	ret
                                   2059 ;------------------------------------------------------------
                                   2060 ;Allocation info for local variables in function 'i2c_write'
                                   2061 ;------------------------------------------------------------
                                   2062 ;data                      Allocated with name '_i2c_write_data_65536_97'
                                   2063 ;i                         Allocated with name '_i2c_write_i_65536_98'
                                   2064 ;------------------------------------------------------------
                                   2065 ;	8051_i2c_eeprom.c:351: int i2c_write(unsigned char data)
                                   2066 ;	-----------------------------------------
                                   2067 ;	 function i2c_write
                                   2068 ;	-----------------------------------------
      003924                       2069 _i2c_write:
      003924 E5 82            [12] 2070 	mov	a,dpl
      003926 90 04 14         [24] 2071 	mov	dptr,#_i2c_write_data_65536_97
      003929 F0               [24] 2072 	movx	@dptr,a
                                   2073 ;	8051_i2c_eeprom.c:355: for(i=0;i<=7;i++)
      00392A 7E 00            [12] 2074 	mov	r6,#0x00
      00392C 7F 00            [12] 2075 	mov	r7,#0x00
      00392E                       2076 00104$:
                                   2077 ;	8051_i2c_eeprom.c:357: SDA = (data & 0x80) ? 1 : 0;    //msb first
      00392E 90 04 14         [24] 2078 	mov	dptr,#_i2c_write_data_65536_97
      003931 E0               [24] 2079 	movx	a,@dptr
      003932 FD               [12] 2080 	mov	r5,a
      003933 23               [12] 2081 	rl	a
      003934 54 01            [12] 2082 	anl	a,#0x01
      003936 24 FF            [12] 2083 	add	a,#0xff
      003938 92 94            [24] 2084 	mov	_P1_4,c
                                   2085 ;	8051_i2c_eeprom.c:358: i2c_delay();        // Setup time for data
      00393A C0 07            [24] 2086 	push	ar7
      00393C C0 06            [24] 2087 	push	ar6
      00393E C0 05            [24] 2088 	push	ar5
      003940 12 3A 33         [24] 2089 	lcall	_i2c_delay
                                   2090 ;	8051_i2c_eeprom.c:359: SCL=1;
                                   2091 ;	assignBit
      003943 D2 93            [12] 2092 	setb	_P1_3
                                   2093 ;	8051_i2c_eeprom.c:360: i2c_delay();        // Hold time for clock
      003945 12 3A 33         [24] 2094 	lcall	_i2c_delay
      003948 D0 05            [24] 2095 	pop	ar5
      00394A D0 06            [24] 2096 	pop	ar6
      00394C D0 07            [24] 2097 	pop	ar7
                                   2098 ;	8051_i2c_eeprom.c:361: SCL=0;
                                   2099 ;	assignBit
      00394E C2 93            [12] 2100 	clr	_P1_3
                                   2101 ;	8051_i2c_eeprom.c:362: data = data << 1;
      003950 ED               [12] 2102 	mov	a,r5
      003951 2D               [12] 2103 	add	a,r5
      003952 90 04 14         [24] 2104 	mov	dptr,#_i2c_write_data_65536_97
      003955 F0               [24] 2105 	movx	@dptr,a
                                   2106 ;	8051_i2c_eeprom.c:355: for(i=0;i<=7;i++)
      003956 0E               [12] 2107 	inc	r6
      003957 BE 00 01         [24] 2108 	cjne	r6,#0x00,00121$
      00395A 0F               [12] 2109 	inc	r7
      00395B                       2110 00121$:
      00395B C3               [12] 2111 	clr	c
      00395C 74 07            [12] 2112 	mov	a,#0x07
      00395E 9E               [12] 2113 	subb	a,r6
      00395F E4               [12] 2114 	clr	a
      003960 9F               [12] 2115 	subb	a,r7
      003961 50 CB            [24] 2116 	jnc	00104$
                                   2117 ;	8051_i2c_eeprom.c:366: SDA = 1;            // Release SDA for slave
                                   2118 ;	assignBit
      003963 D2 94            [12] 2119 	setb	_P1_4
                                   2120 ;	8051_i2c_eeprom.c:367: SCL = 1;            // 9th clock pulse for ACK
                                   2121 ;	assignBit
      003965 D2 93            [12] 2122 	setb	_P1_3
                                   2123 ;	8051_i2c_eeprom.c:368: i2c_delay();
      003967 12 3A 33         [24] 2124 	lcall	_i2c_delay
                                   2125 ;	8051_i2c_eeprom.c:369: if(SDA == 1)        // If SDA is still high, no ACK received
      00396A 30 94 19         [24] 2126 	jnb	_P1_4,00103$
                                   2127 ;	8051_i2c_eeprom.c:372: printf("ACK DID NOT ARRIVE\n\r");
      00396D 74 0C            [12] 2128 	mov	a,#___str_41
      00396F C0 E0            [24] 2129 	push	acc
      003971 74 51            [12] 2130 	mov	a,#(___str_41 >> 8)
      003973 C0 E0            [24] 2131 	push	acc
      003975 74 80            [12] 2132 	mov	a,#0x80
      003977 C0 E0            [24] 2133 	push	acc
      003979 12 3B 50         [24] 2134 	lcall	_printf
      00397C 15 81            [12] 2135 	dec	sp
      00397E 15 81            [12] 2136 	dec	sp
      003980 15 81            [12] 2137 	dec	sp
                                   2138 ;	8051_i2c_eeprom.c:373: return 0;       // Error
      003982 90 00 00         [24] 2139 	mov	dptr,#0x0000
      003985 22               [24] 2140 	ret
      003986                       2141 00103$:
                                   2142 ;	8051_i2c_eeprom.c:375: SCL = 0;
                                   2143 ;	assignBit
      003986 C2 93            [12] 2144 	clr	_P1_3
                                   2145 ;	8051_i2c_eeprom.c:377: return 1;           // Success
      003988 90 00 01         [24] 2146 	mov	dptr,#0x0001
                                   2147 ;	8051_i2c_eeprom.c:379: }
      00398B 22               [24] 2148 	ret
                                   2149 ;------------------------------------------------------------
                                   2150 ;Allocation info for local variables in function 'i2c_read'
                                   2151 ;------------------------------------------------------------
                                   2152 ;ACK                       Allocated with name '_i2c_read_ACK_65536_102'
                                   2153 ;buff                      Allocated with name '_i2c_read_buff_65536_103'
                                   2154 ;i                         Allocated with name '_i2c_read_i_131072_104'
                                   2155 ;------------------------------------------------------------
                                   2156 ;	8051_i2c_eeprom.c:380: int i2c_read(int ACK)
                                   2157 ;	-----------------------------------------
                                   2158 ;	 function i2c_read
                                   2159 ;	-----------------------------------------
      00398C                       2160 _i2c_read:
      00398C AF 83            [24] 2161 	mov	r7,dph
      00398E E5 82            [12] 2162 	mov	a,dpl
      003990 90 04 15         [24] 2163 	mov	dptr,#_i2c_read_ACK_65536_102
      003993 F0               [24] 2164 	movx	@dptr,a
      003994 EF               [12] 2165 	mov	a,r7
      003995 A3               [24] 2166 	inc	dptr
      003996 F0               [24] 2167 	movx	@dptr,a
                                   2168 ;	8051_i2c_eeprom.c:382: unsigned char buff=0;
      003997 90 04 17         [24] 2169 	mov	dptr,#_i2c_read_buff_65536_103
      00399A E4               [12] 2170 	clr	a
      00399B F0               [24] 2171 	movx	@dptr,a
                                   2172 ;	8051_i2c_eeprom.c:383: SCL = 0;
                                   2173 ;	assignBit
      00399C C2 93            [12] 2174 	clr	_P1_3
                                   2175 ;	8051_i2c_eeprom.c:384: for(int i=0;i<8;i++)
      00399E 7E 00            [12] 2176 	mov	r6,#0x00
      0039A0 7F 00            [12] 2177 	mov	r7,#0x00
      0039A2                       2178 00103$:
      0039A2 C3               [12] 2179 	clr	c
      0039A3 EE               [12] 2180 	mov	a,r6
      0039A4 94 08            [12] 2181 	subb	a,#0x08
      0039A6 EF               [12] 2182 	mov	a,r7
      0039A7 64 80            [12] 2183 	xrl	a,#0x80
      0039A9 94 80            [12] 2184 	subb	a,#0x80
      0039AB 50 40            [24] 2185 	jnc	00101$
                                   2186 ;	8051_i2c_eeprom.c:386: SCL = 1;
                                   2187 ;	assignBit
      0039AD D2 93            [12] 2188 	setb	_P1_3
                                   2189 ;	8051_i2c_eeprom.c:387: i2c_delay();
      0039AF C0 07            [24] 2190 	push	ar7
      0039B1 C0 06            [24] 2191 	push	ar6
      0039B3 12 3A 33         [24] 2192 	lcall	_i2c_delay
      0039B6 D0 06            [24] 2193 	pop	ar6
      0039B8 D0 07            [24] 2194 	pop	ar7
                                   2195 ;	8051_i2c_eeprom.c:388: buff |= (SDA << (7 - i));
      0039BA A2 94            [12] 2196 	mov	c,_P1_4
      0039BC E4               [12] 2197 	clr	a
      0039BD 33               [12] 2198 	rlc	a
      0039BE FD               [12] 2199 	mov	r5,a
      0039BF 8E 04            [24] 2200 	mov	ar4,r6
      0039C1 74 07            [12] 2201 	mov	a,#0x07
      0039C3 C3               [12] 2202 	clr	c
      0039C4 9C               [12] 2203 	subb	a,r4
      0039C5 FC               [12] 2204 	mov	r4,a
      0039C6 8C F0            [24] 2205 	mov	b,r4
      0039C8 05 F0            [12] 2206 	inc	b
      0039CA ED               [12] 2207 	mov	a,r5
      0039CB 80 02            [24] 2208 	sjmp	00119$
      0039CD                       2209 00117$:
      0039CD 25 E0            [12] 2210 	add	a,acc
      0039CF                       2211 00119$:
      0039CF D5 F0 FB         [24] 2212 	djnz	b,00117$
      0039D2 FC               [12] 2213 	mov	r4,a
      0039D3 90 04 17         [24] 2214 	mov	dptr,#_i2c_read_buff_65536_103
      0039D6 E0               [24] 2215 	movx	a,@dptr
      0039D7 4C               [12] 2216 	orl	a,r4
      0039D8 F0               [24] 2217 	movx	@dptr,a
                                   2218 ;	8051_i2c_eeprom.c:389: i2c_delay();
      0039D9 C0 07            [24] 2219 	push	ar7
      0039DB C0 06            [24] 2220 	push	ar6
      0039DD 12 3A 33         [24] 2221 	lcall	_i2c_delay
      0039E0 D0 06            [24] 2222 	pop	ar6
      0039E2 D0 07            [24] 2223 	pop	ar7
                                   2224 ;	8051_i2c_eeprom.c:390: SCL=0;
                                   2225 ;	assignBit
      0039E4 C2 93            [12] 2226 	clr	_P1_3
                                   2227 ;	8051_i2c_eeprom.c:384: for(int i=0;i<8;i++)
      0039E6 0E               [12] 2228 	inc	r6
      0039E7 BE 00 B8         [24] 2229 	cjne	r6,#0x00,00103$
      0039EA 0F               [12] 2230 	inc	r7
      0039EB 80 B5            [24] 2231 	sjmp	00103$
      0039ED                       2232 00101$:
                                   2233 ;	8051_i2c_eeprom.c:394: SDA = !ACK;         // ACK = 0, NACK = 1
      0039ED 90 04 15         [24] 2234 	mov	dptr,#_i2c_read_ACK_65536_102
      0039F0 E0               [24] 2235 	movx	a,@dptr
      0039F1 FE               [12] 2236 	mov	r6,a
      0039F2 A3               [24] 2237 	inc	dptr
      0039F3 E0               [24] 2238 	movx	a,@dptr
      0039F4 4E               [12] 2239 	orl	a,r6
      0039F5 B4 01 00         [24] 2240 	cjne	a,#0x01,00121$
      0039F8                       2241 00121$:
      0039F8 E4               [12] 2242 	clr	a
      0039F9 33               [12] 2243 	rlc	a
      0039FA 24 FF            [12] 2244 	add	a,#0xff
      0039FC 92 94            [24] 2245 	mov	_P1_4,c
                                   2246 ;	8051_i2c_eeprom.c:395: SCL = 1;
                                   2247 ;	assignBit
      0039FE D2 93            [12] 2248 	setb	_P1_3
                                   2249 ;	8051_i2c_eeprom.c:396: i2c_delay();
      003A00 12 3A 33         [24] 2250 	lcall	_i2c_delay
                                   2251 ;	8051_i2c_eeprom.c:397: SCL = 0;
                                   2252 ;	assignBit
      003A03 C2 93            [12] 2253 	clr	_P1_3
                                   2254 ;	8051_i2c_eeprom.c:399: return buff;
      003A05 90 04 17         [24] 2255 	mov	dptr,#_i2c_read_buff_65536_103
      003A08 E0               [24] 2256 	movx	a,@dptr
      003A09 FF               [12] 2257 	mov	r7,a
      003A0A 7E 00            [12] 2258 	mov	r6,#0x00
      003A0C 8F 82            [24] 2259 	mov	dpl,r7
      003A0E 8E 83            [24] 2260 	mov	dph,r6
                                   2261 ;	8051_i2c_eeprom.c:400: }
      003A10 22               [24] 2262 	ret
                                   2263 ;------------------------------------------------------------
                                   2264 ;Allocation info for local variables in function 'i2c_start'
                                   2265 ;------------------------------------------------------------
                                   2266 ;	8051_i2c_eeprom.c:401: void i2c_start(void)
                                   2267 ;	-----------------------------------------
                                   2268 ;	 function i2c_start
                                   2269 ;	-----------------------------------------
      003A11                       2270 _i2c_start:
                                   2271 ;	8051_i2c_eeprom.c:403: i2c_delay();
      003A11 12 3A 33         [24] 2272 	lcall	_i2c_delay
                                   2273 ;	8051_i2c_eeprom.c:404: SDA = 1;
                                   2274 ;	assignBit
      003A14 D2 94            [12] 2275 	setb	_P1_4
                                   2276 ;	8051_i2c_eeprom.c:405: i2c_delay();
      003A16 12 3A 33         [24] 2277 	lcall	_i2c_delay
                                   2278 ;	8051_i2c_eeprom.c:406: SCL = 1;
                                   2279 ;	assignBit
      003A19 D2 93            [12] 2280 	setb	_P1_3
                                   2281 ;	8051_i2c_eeprom.c:407: i2c_delay();
      003A1B 12 3A 33         [24] 2282 	lcall	_i2c_delay
                                   2283 ;	8051_i2c_eeprom.c:408: SDA = 0;
                                   2284 ;	assignBit
      003A1E C2 94            [12] 2285 	clr	_P1_4
                                   2286 ;	8051_i2c_eeprom.c:409: i2c_delay();
      003A20 12 3A 33         [24] 2287 	lcall	_i2c_delay
                                   2288 ;	8051_i2c_eeprom.c:410: SCL = 0;
                                   2289 ;	assignBit
      003A23 C2 93            [12] 2290 	clr	_P1_3
                                   2291 ;	8051_i2c_eeprom.c:411: }
      003A25 22               [24] 2292 	ret
                                   2293 ;------------------------------------------------------------
                                   2294 ;Allocation info for local variables in function 'i2c_stop'
                                   2295 ;------------------------------------------------------------
                                   2296 ;	8051_i2c_eeprom.c:413: void i2c_stop(void)
                                   2297 ;	-----------------------------------------
                                   2298 ;	 function i2c_stop
                                   2299 ;	-----------------------------------------
      003A26                       2300 _i2c_stop:
                                   2301 ;	8051_i2c_eeprom.c:415: SDA = 0;
                                   2302 ;	assignBit
      003A26 C2 94            [12] 2303 	clr	_P1_4
                                   2304 ;	8051_i2c_eeprom.c:416: i2c_delay();
      003A28 12 3A 33         [24] 2305 	lcall	_i2c_delay
                                   2306 ;	8051_i2c_eeprom.c:417: SCL = 1;
                                   2307 ;	assignBit
      003A2B D2 93            [12] 2308 	setb	_P1_3
                                   2309 ;	8051_i2c_eeprom.c:418: i2c_delay();
      003A2D 12 3A 33         [24] 2310 	lcall	_i2c_delay
                                   2311 ;	8051_i2c_eeprom.c:419: SDA = 1; 
                                   2312 ;	assignBit
      003A30 D2 94            [12] 2313 	setb	_P1_4
                                   2314 ;	8051_i2c_eeprom.c:420: }
      003A32 22               [24] 2315 	ret
                                   2316 ;------------------------------------------------------------
                                   2317 ;Allocation info for local variables in function 'i2c_delay'
                                   2318 ;------------------------------------------------------------
                                   2319 ;i                         Allocated with name '_i2c_delay_i_131072_111'
                                   2320 ;------------------------------------------------------------
                                   2321 ;	8051_i2c_eeprom.c:422: void i2c_delay() 
                                   2322 ;	-----------------------------------------
                                   2323 ;	 function i2c_delay
                                   2324 ;	-----------------------------------------
      003A33                       2325 _i2c_delay:
                                   2326 ;	8051_i2c_eeprom.c:430: for(int i = 0; i<500; i++);
      003A33 7E 00            [12] 2327 	mov	r6,#0x00
      003A35 7F 00            [12] 2328 	mov	r7,#0x00
      003A37                       2329 00103$:
      003A37 C3               [12] 2330 	clr	c
      003A38 EE               [12] 2331 	mov	a,r6
      003A39 94 F4            [12] 2332 	subb	a,#0xf4
      003A3B EF               [12] 2333 	mov	a,r7
      003A3C 64 80            [12] 2334 	xrl	a,#0x80
      003A3E 94 81            [12] 2335 	subb	a,#0x81
      003A40 50 07            [24] 2336 	jnc	00105$
      003A42 0E               [12] 2337 	inc	r6
      003A43 BE 00 F1         [24] 2338 	cjne	r6,#0x00,00103$
      003A46 0F               [12] 2339 	inc	r7
      003A47 80 EE            [24] 2340 	sjmp	00103$
      003A49                       2341 00105$:
                                   2342 ;	8051_i2c_eeprom.c:431: }
      003A49 22               [24] 2343 	ret
                                   2344 ;------------------------------------------------------------
                                   2345 ;Allocation info for local variables in function 'test_function'
                                   2346 ;------------------------------------------------------------
                                   2347 ;test_data                 Allocated with name '_test_function_test_data_65537_113'
                                   2348 ;address                   Allocated with name '_test_function_address_65537_113'
                                   2349 ;i                         Allocated with name '_test_function_i_131073_114'
                                   2350 ;read_data                 Allocated with name '_test_function_read_data_65538_116'
                                   2351 ;------------------------------------------------------------
                                   2352 ;	8051_i2c_eeprom.c:433: void test_function()
                                   2353 ;	-----------------------------------------
                                   2354 ;	 function test_function
                                   2355 ;	-----------------------------------------
      003A4A                       2356 _test_function:
                                   2357 ;	8051_i2c_eeprom.c:435: i2c_start();
      003A4A 12 3A 11         [24] 2358 	lcall	_i2c_start
                                   2359 ;	8051_i2c_eeprom.c:436: i2c_delay();
      003A4D 12 3A 33         [24] 2360 	lcall	_i2c_delay
                                   2361 ;	8051_i2c_eeprom.c:442: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      003A50 74 02            [12] 2362 	mov	a,#0x02
      003A52 C0 E0            [24] 2363 	push	acc
      003A54 E4               [12] 2364 	clr	a
      003A55 C0 E0            [24] 2365 	push	acc
      003A57 74 26            [12] 2366 	mov	a,#0x26
      003A59 C0 E0            [24] 2367 	push	acc
      003A5B E4               [12] 2368 	clr	a
      003A5C C0 E0            [24] 2369 	push	acc
      003A5E 74 21            [12] 2370 	mov	a,#___str_42
      003A60 C0 E0            [24] 2371 	push	acc
      003A62 74 51            [12] 2372 	mov	a,#(___str_42 >> 8)
      003A64 C0 E0            [24] 2373 	push	acc
      003A66 74 80            [12] 2374 	mov	a,#0x80
      003A68 C0 E0            [24] 2375 	push	acc
      003A6A 12 3B 50         [24] 2376 	lcall	_printf
      003A6D E5 81            [12] 2377 	mov	a,sp
      003A6F 24 F9            [12] 2378 	add	a,#0xf9
      003A71 F5 81            [12] 2379 	mov	sp,a
                                   2380 ;	8051_i2c_eeprom.c:443: eeprom_write(address, test_data);
      003A73 90 04 0F         [24] 2381 	mov	dptr,#_eeprom_write_PARM_2
      003A76 74 26            [12] 2382 	mov	a,#0x26
      003A78 F0               [24] 2383 	movx	@dptr,a
      003A79 90 00 02         [24] 2384 	mov	dptr,#0x0002
      003A7C 12 36 6A         [24] 2385 	lcall	_eeprom_write
                                   2386 ;	8051_i2c_eeprom.c:444: i2c_stop();
      003A7F 12 3A 26         [24] 2387 	lcall	_i2c_stop
                                   2388 ;	8051_i2c_eeprom.c:446: for(int i = 0; i<100; i++)
      003A82 7E 00            [12] 2389 	mov	r6,#0x00
      003A84 7F 00            [12] 2390 	mov	r7,#0x00
      003A86                       2391 00106$:
      003A86 C3               [12] 2392 	clr	c
      003A87 EE               [12] 2393 	mov	a,r6
      003A88 94 64            [12] 2394 	subb	a,#0x64
      003A8A EF               [12] 2395 	mov	a,r7
      003A8B 64 80            [12] 2396 	xrl	a,#0x80
      003A8D 94 80            [12] 2397 	subb	a,#0x80
      003A8F 50 12            [24] 2398 	jnc	00101$
                                   2399 ;	8051_i2c_eeprom.c:448: i2c_delay();
      003A91 C0 07            [24] 2400 	push	ar7
      003A93 C0 06            [24] 2401 	push	ar6
      003A95 12 3A 33         [24] 2402 	lcall	_i2c_delay
      003A98 D0 06            [24] 2403 	pop	ar6
      003A9A D0 07            [24] 2404 	pop	ar7
                                   2405 ;	8051_i2c_eeprom.c:446: for(int i = 0; i<100; i++)
      003A9C 0E               [12] 2406 	inc	r6
      003A9D BE 00 E6         [24] 2407 	cjne	r6,#0x00,00106$
      003AA0 0F               [12] 2408 	inc	r7
      003AA1 80 E3            [24] 2409 	sjmp	00106$
      003AA3                       2410 00101$:
                                   2411 ;	8051_i2c_eeprom.c:452: unsigned char read_data = eeprom_read(address);
      003AA3 90 00 02         [24] 2412 	mov	dptr,#0x0002
      003AA6 12 37 CE         [24] 2413 	lcall	_eeprom_read
      003AA9 AE 82            [24] 2414 	mov	r6,dpl
                                   2415 ;	8051_i2c_eeprom.c:453: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      003AAB 8E 05            [24] 2416 	mov	ar5,r6
      003AAD 7F 00            [12] 2417 	mov	r7,#0x00
      003AAF C0 06            [24] 2418 	push	ar6
      003AB1 C0 05            [24] 2419 	push	ar5
      003AB3 C0 07            [24] 2420 	push	ar7
      003AB5 74 02            [12] 2421 	mov	a,#0x02
      003AB7 C0 E0            [24] 2422 	push	acc
      003AB9 E4               [12] 2423 	clr	a
      003ABA C0 E0            [24] 2424 	push	acc
      003ABC 74 49            [12] 2425 	mov	a,#___str_43
      003ABE C0 E0            [24] 2426 	push	acc
      003AC0 74 51            [12] 2427 	mov	a,#(___str_43 >> 8)
      003AC2 C0 E0            [24] 2428 	push	acc
      003AC4 74 80            [12] 2429 	mov	a,#0x80
      003AC6 C0 E0            [24] 2430 	push	acc
      003AC8 12 3B 50         [24] 2431 	lcall	_printf
      003ACB E5 81            [12] 2432 	mov	a,sp
      003ACD 24 F9            [12] 2433 	add	a,#0xf9
      003ACF F5 81            [12] 2434 	mov	sp,a
      003AD1 D0 06            [24] 2435 	pop	ar6
                                   2436 ;	8051_i2c_eeprom.c:456: if(read_data == test_data) {
      003AD3 BE 26 16         [24] 2437 	cjne	r6,#0x26,00103$
                                   2438 ;	8051_i2c_eeprom.c:457: printf("MATCH - Write/Read successful!\n\r");
      003AD6 74 71            [12] 2439 	mov	a,#___str_44
      003AD8 C0 E0            [24] 2440 	push	acc
      003ADA 74 51            [12] 2441 	mov	a,#(___str_44 >> 8)
      003ADC C0 E0            [24] 2442 	push	acc
      003ADE 74 80            [12] 2443 	mov	a,#0x80
      003AE0 C0 E0            [24] 2444 	push	acc
      003AE2 12 3B 50         [24] 2445 	lcall	_printf
      003AE5 15 81            [12] 2446 	dec	sp
      003AE7 15 81            [12] 2447 	dec	sp
      003AE9 15 81            [12] 2448 	dec	sp
      003AEB 22               [24] 2449 	ret
      003AEC                       2450 00103$:
                                   2451 ;	8051_i2c_eeprom.c:459: printf("ERROR - Data mismatch!\n\r");
      003AEC 74 92            [12] 2452 	mov	a,#___str_45
      003AEE C0 E0            [24] 2453 	push	acc
      003AF0 74 51            [12] 2454 	mov	a,#(___str_45 >> 8)
      003AF2 C0 E0            [24] 2455 	push	acc
      003AF4 74 80            [12] 2456 	mov	a,#0x80
      003AF6 C0 E0            [24] 2457 	push	acc
      003AF8 12 3B 50         [24] 2458 	lcall	_printf
      003AFB 15 81            [12] 2459 	dec	sp
      003AFD 15 81            [12] 2460 	dec	sp
      003AFF 15 81            [12] 2461 	dec	sp
                                   2462 ;	8051_i2c_eeprom.c:463: }
      003B01 22               [24] 2463 	ret
                                   2464 	.area CSEG    (CODE)
                                   2465 	.area CONST   (CODE)
                                   2466 	.area CONST   (CODE)
      0045B2                       2467 ___str_0:
      0045B2 0A                    2468 	.db 0x0a
      0045B3 E2                    2469 	.db 0xe2
      0045B4 95                    2470 	.db 0x95
      0045B5 94                    2471 	.db 0x94
      0045B6 E2                    2472 	.db 0xe2
      0045B7 95                    2473 	.db 0x95
      0045B8 90                    2474 	.db 0x90
      0045B9 E2                    2475 	.db 0xe2
      0045BA 95                    2476 	.db 0x95
      0045BB 90                    2477 	.db 0x90
      0045BC E2                    2478 	.db 0xe2
      0045BD 95                    2479 	.db 0x95
      0045BE 90                    2480 	.db 0x90
      0045BF E2                    2481 	.db 0xe2
      0045C0 95                    2482 	.db 0x95
      0045C1 90                    2483 	.db 0x90
      0045C2 E2                    2484 	.db 0xe2
      0045C3 95                    2485 	.db 0x95
      0045C4 90                    2486 	.db 0x90
      0045C5 E2                    2487 	.db 0xe2
      0045C6 95                    2488 	.db 0x95
      0045C7 90                    2489 	.db 0x90
      0045C8 E2                    2490 	.db 0xe2
      0045C9 95                    2491 	.db 0x95
      0045CA 90                    2492 	.db 0x90
      0045CB E2                    2493 	.db 0xe2
      0045CC 95                    2494 	.db 0x95
      0045CD 90                    2495 	.db 0x90
      0045CE E2                    2496 	.db 0xe2
      0045CF 95                    2497 	.db 0x95
      0045D0 90                    2498 	.db 0x90
      0045D1 E2                    2499 	.db 0xe2
      0045D2 95                    2500 	.db 0x95
      0045D3 90                    2501 	.db 0x90
      0045D4 E2                    2502 	.db 0xe2
      0045D5 95                    2503 	.db 0x95
      0045D6 90                    2504 	.db 0x90
      0045D7 E2                    2505 	.db 0xe2
      0045D8 95                    2506 	.db 0x95
      0045D9 90                    2507 	.db 0x90
      0045DA E2                    2508 	.db 0xe2
      0045DB 95                    2509 	.db 0x95
      0045DC 90                    2510 	.db 0x90
      0045DD E2                    2511 	.db 0xe2
      0045DE 95                    2512 	.db 0x95
      0045DF 90                    2513 	.db 0x90
      0045E0 E2                    2514 	.db 0xe2
      0045E1 95                    2515 	.db 0x95
      0045E2 90                    2516 	.db 0x90
      0045E3 E2                    2517 	.db 0xe2
      0045E4 95                    2518 	.db 0x95
      0045E5 90                    2519 	.db 0x90
      0045E6 E2                    2520 	.db 0xe2
      0045E7 95                    2521 	.db 0x95
      0045E8 90                    2522 	.db 0x90
      0045E9 E2                    2523 	.db 0xe2
      0045EA 95                    2524 	.db 0x95
      0045EB 90                    2525 	.db 0x90
      0045EC E2                    2526 	.db 0xe2
      0045ED 95                    2527 	.db 0x95
      0045EE 90                    2528 	.db 0x90
      0045EF E2                    2529 	.db 0xe2
      0045F0 95                    2530 	.db 0x95
      0045F1 90                    2531 	.db 0x90
      0045F2 E2                    2532 	.db 0xe2
      0045F3 95                    2533 	.db 0x95
      0045F4 90                    2534 	.db 0x90
      0045F5 E2                    2535 	.db 0xe2
      0045F6 95                    2536 	.db 0x95
      0045F7 90                    2537 	.db 0x90
      0045F8 E2                    2538 	.db 0xe2
      0045F9 95                    2539 	.db 0x95
      0045FA 90                    2540 	.db 0x90
      0045FB E2                    2541 	.db 0xe2
      0045FC 95                    2542 	.db 0x95
      0045FD 90                    2543 	.db 0x90
      0045FE E2                    2544 	.db 0xe2
      0045FF 95                    2545 	.db 0x95
      004600 90                    2546 	.db 0x90
      004601 E2                    2547 	.db 0xe2
      004602 95                    2548 	.db 0x95
      004603 90                    2549 	.db 0x90
      004604 E2                    2550 	.db 0xe2
      004605 95                    2551 	.db 0x95
      004606 90                    2552 	.db 0x90
      004607 E2                    2553 	.db 0xe2
      004608 95                    2554 	.db 0x95
      004609 90                    2555 	.db 0x90
      00460A E2                    2556 	.db 0xe2
      00460B 95                    2557 	.db 0x95
      00460C 90                    2558 	.db 0x90
      00460D E2                    2559 	.db 0xe2
      00460E 95                    2560 	.db 0x95
      00460F 90                    2561 	.db 0x90
      004610 E2                    2562 	.db 0xe2
      004611 95                    2563 	.db 0x95
      004612 90                    2564 	.db 0x90
      004613 E2                    2565 	.db 0xe2
      004614 95                    2566 	.db 0x95
      004615 90                    2567 	.db 0x90
      004616 E2                    2568 	.db 0xe2
      004617 95                    2569 	.db 0x95
      004618 90                    2570 	.db 0x90
      004619 E2                    2571 	.db 0xe2
      00461A 95                    2572 	.db 0x95
      00461B 90                    2573 	.db 0x90
      00461C E2                    2574 	.db 0xe2
      00461D 95                    2575 	.db 0x95
      00461E 90                    2576 	.db 0x90
      00461F E2                    2577 	.db 0xe2
      004620 95                    2578 	.db 0x95
      004621 90                    2579 	.db 0x90
      004622 E2                    2580 	.db 0xe2
      004623 95                    2581 	.db 0x95
      004624 90                    2582 	.db 0x90
      004625 E2                    2583 	.db 0xe2
      004626 95                    2584 	.db 0x95
      004627 90                    2585 	.db 0x90
      004628 E2                    2586 	.db 0xe2
      004629 95                    2587 	.db 0x95
      00462A 90                    2588 	.db 0x90
      00462B E2                    2589 	.db 0xe2
      00462C 95                    2590 	.db 0x95
      00462D 90                    2591 	.db 0x90
      00462E E2                    2592 	.db 0xe2
      00462F 95                    2593 	.db 0x95
      004630 90                    2594 	.db 0x90
      004631 E2                    2595 	.db 0xe2
      004632 95                    2596 	.db 0x95
      004633 90                    2597 	.db 0x90
      004634 E2                    2598 	.db 0xe2
      004635 95                    2599 	.db 0x95
      004636 90                    2600 	.db 0x90
      004637 E2                    2601 	.db 0xe2
      004638 95                    2602 	.db 0x95
      004639 90                    2603 	.db 0x90
      00463A E2                    2604 	.db 0xe2
      00463B 95                    2605 	.db 0x95
      00463C 90                    2606 	.db 0x90
      00463D E2                    2607 	.db 0xe2
      00463E 95                    2608 	.db 0x95
      00463F 90                    2609 	.db 0x90
      004640 E2                    2610 	.db 0xe2
      004641 95                    2611 	.db 0x95
      004642 90                    2612 	.db 0x90
      004643 E2                    2613 	.db 0xe2
      004644 95                    2614 	.db 0x95
      004645 90                    2615 	.db 0x90
      004646 E2                    2616 	.db 0xe2
      004647 95                    2617 	.db 0x95
      004648 90                    2618 	.db 0x90
      004649 E2                    2619 	.db 0xe2
      00464A 95                    2620 	.db 0x95
      00464B 90                    2621 	.db 0x90
      00464C E2                    2622 	.db 0xe2
      00464D 95                    2623 	.db 0x95
      00464E 90                    2624 	.db 0x90
      00464F E2                    2625 	.db 0xe2
      004650 95                    2626 	.db 0x95
      004651 90                    2627 	.db 0x90
      004652 E2                    2628 	.db 0xe2
      004653 95                    2629 	.db 0x95
      004654 90                    2630 	.db 0x90
      004655 E2                    2631 	.db 0xe2
      004656 95                    2632 	.db 0x95
      004657 90                    2633 	.db 0x90
      004658 E2                    2634 	.db 0xe2
      004659 95                    2635 	.db 0x95
      00465A 90                    2636 	.db 0x90
      00465B E2                    2637 	.db 0xe2
      00465C 95                    2638 	.db 0x95
      00465D 90                    2639 	.db 0x90
      00465E E2                    2640 	.db 0xe2
      00465F 95                    2641 	.db 0x95
      004660 97                    2642 	.db 0x97
      004661 0A                    2643 	.db 0x0a
      004662 0D                    2644 	.db 0x0d
      004663 00                    2645 	.db 0x00
                                   2646 	.area CSEG    (CODE)
                                   2647 	.area CONST   (CODE)
      004664                       2648 ___str_1:
      004664 E2                    2649 	.db 0xe2
      004665 95                    2650 	.db 0x95
      004666 91                    2651 	.db 0x91
      004667 20 20 20 20 20 20 20  2652 	.ascii "           I2C Memory Management System v1.0            "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
      00469F E2                    2653 	.db 0xe2
      0046A0 95                    2654 	.db 0x95
      0046A1 91                    2655 	.db 0x91
      0046A2 0A                    2656 	.db 0x0a
      0046A3 0D                    2657 	.db 0x0d
      0046A4 00                    2658 	.db 0x00
                                   2659 	.area CSEG    (CODE)
                                   2660 	.area CONST   (CODE)
      0046A5                       2661 ___str_2:
      0046A5 E2                    2662 	.db 0xe2
      0046A6 95                    2663 	.db 0x95
      0046A7 9A                    2664 	.db 0x9a
      0046A8 E2                    2665 	.db 0xe2
      0046A9 95                    2666 	.db 0x95
      0046AA 90                    2667 	.db 0x90
      0046AB E2                    2668 	.db 0xe2
      0046AC 95                    2669 	.db 0x95
      0046AD 90                    2670 	.db 0x90
      0046AE E2                    2671 	.db 0xe2
      0046AF 95                    2672 	.db 0x95
      0046B0 90                    2673 	.db 0x90
      0046B1 E2                    2674 	.db 0xe2
      0046B2 95                    2675 	.db 0x95
      0046B3 90                    2676 	.db 0x90
      0046B4 E2                    2677 	.db 0xe2
      0046B5 95                    2678 	.db 0x95
      0046B6 90                    2679 	.db 0x90
      0046B7 E2                    2680 	.db 0xe2
      0046B8 95                    2681 	.db 0x95
      0046B9 90                    2682 	.db 0x90
      0046BA E2                    2683 	.db 0xe2
      0046BB 95                    2684 	.db 0x95
      0046BC 90                    2685 	.db 0x90
      0046BD E2                    2686 	.db 0xe2
      0046BE 95                    2687 	.db 0x95
      0046BF 90                    2688 	.db 0x90
      0046C0 E2                    2689 	.db 0xe2
      0046C1 95                    2690 	.db 0x95
      0046C2 90                    2691 	.db 0x90
      0046C3 E2                    2692 	.db 0xe2
      0046C4 95                    2693 	.db 0x95
      0046C5 90                    2694 	.db 0x90
      0046C6 E2                    2695 	.db 0xe2
      0046C7 95                    2696 	.db 0x95
      0046C8 90                    2697 	.db 0x90
      0046C9 E2                    2698 	.db 0xe2
      0046CA 95                    2699 	.db 0x95
      0046CB 90                    2700 	.db 0x90
      0046CC E2                    2701 	.db 0xe2
      0046CD 95                    2702 	.db 0x95
      0046CE 90                    2703 	.db 0x90
      0046CF E2                    2704 	.db 0xe2
      0046D0 95                    2705 	.db 0x95
      0046D1 90                    2706 	.db 0x90
      0046D2 E2                    2707 	.db 0xe2
      0046D3 95                    2708 	.db 0x95
      0046D4 90                    2709 	.db 0x90
      0046D5 E2                    2710 	.db 0xe2
      0046D6 95                    2711 	.db 0x95
      0046D7 90                    2712 	.db 0x90
      0046D8 E2                    2713 	.db 0xe2
      0046D9 95                    2714 	.db 0x95
      0046DA 90                    2715 	.db 0x90
      0046DB E2                    2716 	.db 0xe2
      0046DC 95                    2717 	.db 0x95
      0046DD 90                    2718 	.db 0x90
      0046DE E2                    2719 	.db 0xe2
      0046DF 95                    2720 	.db 0x95
      0046E0 90                    2721 	.db 0x90
      0046E1 E2                    2722 	.db 0xe2
      0046E2 95                    2723 	.db 0x95
      0046E3 90                    2724 	.db 0x90
      0046E4 E2                    2725 	.db 0xe2
      0046E5 95                    2726 	.db 0x95
      0046E6 90                    2727 	.db 0x90
      0046E7 E2                    2728 	.db 0xe2
      0046E8 95                    2729 	.db 0x95
      0046E9 90                    2730 	.db 0x90
      0046EA E2                    2731 	.db 0xe2
      0046EB 95                    2732 	.db 0x95
      0046EC 90                    2733 	.db 0x90
      0046ED E2                    2734 	.db 0xe2
      0046EE 95                    2735 	.db 0x95
      0046EF 90                    2736 	.db 0x90
      0046F0 E2                    2737 	.db 0xe2
      0046F1 95                    2738 	.db 0x95
      0046F2 90                    2739 	.db 0x90
      0046F3 E2                    2740 	.db 0xe2
      0046F4 95                    2741 	.db 0x95
      0046F5 90                    2742 	.db 0x90
      0046F6 E2                    2743 	.db 0xe2
      0046F7 95                    2744 	.db 0x95
      0046F8 90                    2745 	.db 0x90
      0046F9 E2                    2746 	.db 0xe2
      0046FA 95                    2747 	.db 0x95
      0046FB 90                    2748 	.db 0x90
      0046FC E2                    2749 	.db 0xe2
      0046FD 95                    2750 	.db 0x95
      0046FE 90                    2751 	.db 0x90
      0046FF E2                    2752 	.db 0xe2
      004700 95                    2753 	.db 0x95
      004701 90                    2754 	.db 0x90
      004702 E2                    2755 	.db 0xe2
      004703 95                    2756 	.db 0x95
      004704 90                    2757 	.db 0x90
      004705 E2                    2758 	.db 0xe2
      004706 95                    2759 	.db 0x95
      004707 90                    2760 	.db 0x90
      004708 E2                    2761 	.db 0xe2
      004709 95                    2762 	.db 0x95
      00470A 90                    2763 	.db 0x90
      00470B E2                    2764 	.db 0xe2
      00470C 95                    2765 	.db 0x95
      00470D 90                    2766 	.db 0x90
      00470E E2                    2767 	.db 0xe2
      00470F 95                    2768 	.db 0x95
      004710 90                    2769 	.db 0x90
      004711 E2                    2770 	.db 0xe2
      004712 95                    2771 	.db 0x95
      004713 90                    2772 	.db 0x90
      004714 E2                    2773 	.db 0xe2
      004715 95                    2774 	.db 0x95
      004716 90                    2775 	.db 0x90
      004717 E2                    2776 	.db 0xe2
      004718 95                    2777 	.db 0x95
      004719 90                    2778 	.db 0x90
      00471A E2                    2779 	.db 0xe2
      00471B 95                    2780 	.db 0x95
      00471C 90                    2781 	.db 0x90
      00471D E2                    2782 	.db 0xe2
      00471E 95                    2783 	.db 0x95
      00471F 90                    2784 	.db 0x90
      004720 E2                    2785 	.db 0xe2
      004721 95                    2786 	.db 0x95
      004722 90                    2787 	.db 0x90
      004723 E2                    2788 	.db 0xe2
      004724 95                    2789 	.db 0x95
      004725 90                    2790 	.db 0x90
      004726 E2                    2791 	.db 0xe2
      004727 95                    2792 	.db 0x95
      004728 90                    2793 	.db 0x90
      004729 E2                    2794 	.db 0xe2
      00472A 95                    2795 	.db 0x95
      00472B 90                    2796 	.db 0x90
      00472C E2                    2797 	.db 0xe2
      00472D 95                    2798 	.db 0x95
      00472E 90                    2799 	.db 0x90
      00472F E2                    2800 	.db 0xe2
      004730 95                    2801 	.db 0x95
      004731 90                    2802 	.db 0x90
      004732 E2                    2803 	.db 0xe2
      004733 95                    2804 	.db 0x95
      004734 90                    2805 	.db 0x90
      004735 E2                    2806 	.db 0xe2
      004736 95                    2807 	.db 0x95
      004737 90                    2808 	.db 0x90
      004738 E2                    2809 	.db 0xe2
      004739 95                    2810 	.db 0x95
      00473A 90                    2811 	.db 0x90
      00473B E2                    2812 	.db 0xe2
      00473C 95                    2813 	.db 0x95
      00473D 90                    2814 	.db 0x90
      00473E E2                    2815 	.db 0xe2
      00473F 95                    2816 	.db 0x95
      004740 90                    2817 	.db 0x90
      004741 E2                    2818 	.db 0xe2
      004742 95                    2819 	.db 0x95
      004743 90                    2820 	.db 0x90
      004744 E2                    2821 	.db 0xe2
      004745 95                    2822 	.db 0x95
      004746 90                    2823 	.db 0x90
      004747 E2                    2824 	.db 0xe2
      004748 95                    2825 	.db 0x95
      004749 90                    2826 	.db 0x90
      00474A E2                    2827 	.db 0xe2
      00474B 95                    2828 	.db 0x95
      00474C 90                    2829 	.db 0x90
      00474D E2                    2830 	.db 0xe2
      00474E 95                    2831 	.db 0x95
      00474F 90                    2832 	.db 0x90
      004750 E2                    2833 	.db 0xe2
      004751 95                    2834 	.db 0x95
      004752 9D                    2835 	.db 0x9d
      004753 0A                    2836 	.db 0x0a
      004754 0D                    2837 	.db 0x0d
      004755 00                    2838 	.db 0x00
                                   2839 	.area CSEG    (CODE)
                                   2840 	.area CONST   (CODE)
      004756                       2841 ___str_3:
      004756 0A                    2842 	.db 0x0a
      004757 0D                    2843 	.db 0x0d
      004758 E2                    2844 	.db 0xe2
      004759 94                    2845 	.db 0x94
      00475A 8C                    2846 	.db 0x8c
      00475B E2                    2847 	.db 0xe2
      00475C 94                    2848 	.db 0x94
      00475D 80                    2849 	.db 0x80
      00475E E2                    2850 	.db 0xe2
      00475F 94                    2851 	.db 0x94
      004760 80                    2852 	.db 0x80
      004761 E2                    2853 	.db 0xe2
      004762 94                    2854 	.db 0x94
      004763 80                    2855 	.db 0x80
      004764 E2                    2856 	.db 0xe2
      004765 94                    2857 	.db 0x94
      004766 80                    2858 	.db 0x80
      004767 E2                    2859 	.db 0xe2
      004768 94                    2860 	.db 0x94
      004769 80                    2861 	.db 0x80
      00476A E2                    2862 	.db 0xe2
      00476B 94                    2863 	.db 0x94
      00476C 80                    2864 	.db 0x80
      00476D E2                    2865 	.db 0xe2
      00476E 94                    2866 	.db 0x94
      00476F 80                    2867 	.db 0x80
      004770 E2                    2868 	.db 0xe2
      004771 94                    2869 	.db 0x94
      004772 80                    2870 	.db 0x80
      004773 E2                    2871 	.db 0xe2
      004774 94                    2872 	.db 0x94
      004775 80                    2873 	.db 0x80
      004776 E2                    2874 	.db 0xe2
      004777 94                    2875 	.db 0x94
      004778 80                    2876 	.db 0x80
      004779 E2                    2877 	.db 0xe2
      00477A 94                    2878 	.db 0x94
      00477B 80                    2879 	.db 0x80
      00477C E2                    2880 	.db 0xe2
      00477D 94                    2881 	.db 0x94
      00477E 80                    2882 	.db 0x80
      00477F E2                    2883 	.db 0xe2
      004780 94                    2884 	.db 0x94
      004781 AC                    2885 	.db 0xac
      004782 E2                    2886 	.db 0xe2
      004783 94                    2887 	.db 0x94
      004784 80                    2888 	.db 0x80
      004785 E2                    2889 	.db 0xe2
      004786 94                    2890 	.db 0x94
      004787 80                    2891 	.db 0x80
      004788 E2                    2892 	.db 0xe2
      004789 94                    2893 	.db 0x94
      00478A 80                    2894 	.db 0x80
      00478B E2                    2895 	.db 0xe2
      00478C 94                    2896 	.db 0x94
      00478D 80                    2897 	.db 0x80
      00478E E2                    2898 	.db 0xe2
      00478F 94                    2899 	.db 0x94
      004790 80                    2900 	.db 0x80
      004791 E2                    2901 	.db 0xe2
      004792 94                    2902 	.db 0x94
      004793 80                    2903 	.db 0x80
      004794 E2                    2904 	.db 0xe2
      004795 94                    2905 	.db 0x94
      004796 80                    2906 	.db 0x80
      004797 E2                    2907 	.db 0xe2
      004798 94                    2908 	.db 0x94
      004799 80                    2909 	.db 0x80
      00479A E2                    2910 	.db 0xe2
      00479B 94                    2911 	.db 0x94
      00479C 80                    2912 	.db 0x80
      00479D E2                    2913 	.db 0xe2
      00479E 94                    2914 	.db 0x94
      00479F 80                    2915 	.db 0x80
      0047A0 E2                    2916 	.db 0xe2
      0047A1 94                    2917 	.db 0x94
      0047A2 80                    2918 	.db 0x80
      0047A3 E2                    2919 	.db 0xe2
      0047A4 94                    2920 	.db 0x94
      0047A5 80                    2921 	.db 0x80
      0047A6 E2                    2922 	.db 0xe2
      0047A7 94                    2923 	.db 0x94
      0047A8 80                    2924 	.db 0x80
      0047A9 E2                    2925 	.db 0xe2
      0047AA 94                    2926 	.db 0x94
      0047AB 80                    2927 	.db 0x80
      0047AC E2                    2928 	.db 0xe2
      0047AD 94                    2929 	.db 0x94
      0047AE 80                    2930 	.db 0x80
      0047AF E2                    2931 	.db 0xe2
      0047B0 94                    2932 	.db 0x94
      0047B1 80                    2933 	.db 0x80
      0047B2 E2                    2934 	.db 0xe2
      0047B3 94                    2935 	.db 0x94
      0047B4 80                    2936 	.db 0x80
      0047B5 E2                    2937 	.db 0xe2
      0047B6 94                    2938 	.db 0x94
      0047B7 80                    2939 	.db 0x80
      0047B8 E2                    2940 	.db 0xe2
      0047B9 94                    2941 	.db 0x94
      0047BA 80                    2942 	.db 0x80
      0047BB E2                    2943 	.db 0xe2
      0047BC 94                    2944 	.db 0x94
      0047BD 80                    2945 	.db 0x80
      0047BE E2                    2946 	.db 0xe2
      0047BF 94                    2947 	.db 0x94
      0047C0 80                    2948 	.db 0x80
      0047C1 E2                    2949 	.db 0xe2
      0047C2 94                    2950 	.db 0x94
      0047C3 80                    2951 	.db 0x80
      0047C4 E2                    2952 	.db 0xe2
      0047C5 94                    2953 	.db 0x94
      0047C6 80                    2954 	.db 0x80
      0047C7 E2                    2955 	.db 0xe2
      0047C8 94                    2956 	.db 0x94
      0047C9 80                    2957 	.db 0x80
      0047CA E2                    2958 	.db 0xe2
      0047CB 94                    2959 	.db 0x94
      0047CC 80                    2960 	.db 0x80
      0047CD E2                    2961 	.db 0xe2
      0047CE 94                    2962 	.db 0x94
      0047CF 80                    2963 	.db 0x80
      0047D0 E2                    2964 	.db 0xe2
      0047D1 94                    2965 	.db 0x94
      0047D2 80                    2966 	.db 0x80
      0047D3 E2                    2967 	.db 0xe2
      0047D4 94                    2968 	.db 0x94
      0047D5 80                    2969 	.db 0x80
      0047D6 E2                    2970 	.db 0xe2
      0047D7 94                    2971 	.db 0x94
      0047D8 80                    2972 	.db 0x80
      0047D9 E2                    2973 	.db 0xe2
      0047DA 94                    2974 	.db 0x94
      0047DB 80                    2975 	.db 0x80
      0047DC E2                    2976 	.db 0xe2
      0047DD 94                    2977 	.db 0x94
      0047DE 80                    2978 	.db 0x80
      0047DF E2                    2979 	.db 0xe2
      0047E0 94                    2980 	.db 0x94
      0047E1 80                    2981 	.db 0x80
      0047E2 E2                    2982 	.db 0xe2
      0047E3 94                    2983 	.db 0x94
      0047E4 80                    2984 	.db 0x80
      0047E5 E2                    2985 	.db 0xe2
      0047E6 94                    2986 	.db 0x94
      0047E7 80                    2987 	.db 0x80
      0047E8 E2                    2988 	.db 0xe2
      0047E9 94                    2989 	.db 0x94
      0047EA 80                    2990 	.db 0x80
      0047EB E2                    2991 	.db 0xe2
      0047EC 94                    2992 	.db 0x94
      0047ED 80                    2993 	.db 0x80
      0047EE E2                    2994 	.db 0xe2
      0047EF 94                    2995 	.db 0x94
      0047F0 80                    2996 	.db 0x80
      0047F1 E2                    2997 	.db 0xe2
      0047F2 94                    2998 	.db 0x94
      0047F3 80                    2999 	.db 0x80
      0047F4 E2                    3000 	.db 0xe2
      0047F5 94                    3001 	.db 0x94
      0047F6 80                    3002 	.db 0x80
      0047F7 E2                    3003 	.db 0xe2
      0047F8 94                    3004 	.db 0x94
      0047F9 80                    3005 	.db 0x80
      0047FA E2                    3006 	.db 0xe2
      0047FB 94                    3007 	.db 0x94
      0047FC 80                    3008 	.db 0x80
      0047FD E2                    3009 	.db 0xe2
      0047FE 94                    3010 	.db 0x94
      0047FF 80                    3011 	.db 0x80
      004800 E2                    3012 	.db 0xe2
      004801 94                    3013 	.db 0x94
      004802 80                    3014 	.db 0x80
      004803 E2                    3015 	.db 0xe2
      004804 94                    3016 	.db 0x94
      004805 80                    3017 	.db 0x80
      004806 E2                    3018 	.db 0xe2
      004807 94                    3019 	.db 0x94
      004808 90                    3020 	.db 0x90
      004809 0A                    3021 	.db 0x0a
      00480A 0D                    3022 	.db 0x0d
      00480B 00                    3023 	.db 0x00
                                   3024 	.area CSEG    (CODE)
                                   3025 	.area CONST   (CODE)
      00480C                       3026 ___str_4:
      00480C E2                    3027 	.db 0xe2
      00480D 94                    3028 	.db 0x94
      00480E 82                    3029 	.db 0x82
      00480F 20 20 43 6F 6D 6D 61  3030 	.ascii "  Command   "
             6E 64 20 20 20
      00481B E2                    3031 	.db 0xe2
      00481C 94                    3032 	.db 0x94
      00481D 82                    3033 	.db 0x82
      00481E 20 20 20 20 20 20 20  3034 	.ascii "               Description                  "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      00484A E2                    3035 	.db 0xe2
      00484B 94                    3036 	.db 0x94
      00484C 82                    3037 	.db 0x82
      00484D 0A                    3038 	.db 0x0a
      00484E 0D                    3039 	.db 0x0d
      00484F 00                    3040 	.db 0x00
                                   3041 	.area CSEG    (CODE)
                                   3042 	.area CONST   (CODE)
      004850                       3043 ___str_5:
      004850 E2                    3044 	.db 0xe2
      004851 94                    3045 	.db 0x94
      004852 9C                    3046 	.db 0x9c
      004853 E2                    3047 	.db 0xe2
      004854 94                    3048 	.db 0x94
      004855 80                    3049 	.db 0x80
      004856 E2                    3050 	.db 0xe2
      004857 94                    3051 	.db 0x94
      004858 80                    3052 	.db 0x80
      004859 E2                    3053 	.db 0xe2
      00485A 94                    3054 	.db 0x94
      00485B 80                    3055 	.db 0x80
      00485C E2                    3056 	.db 0xe2
      00485D 94                    3057 	.db 0x94
      00485E 80                    3058 	.db 0x80
      00485F E2                    3059 	.db 0xe2
      004860 94                    3060 	.db 0x94
      004861 80                    3061 	.db 0x80
      004862 E2                    3062 	.db 0xe2
      004863 94                    3063 	.db 0x94
      004864 80                    3064 	.db 0x80
      004865 E2                    3065 	.db 0xe2
      004866 94                    3066 	.db 0x94
      004867 80                    3067 	.db 0x80
      004868 E2                    3068 	.db 0xe2
      004869 94                    3069 	.db 0x94
      00486A 80                    3070 	.db 0x80
      00486B E2                    3071 	.db 0xe2
      00486C 94                    3072 	.db 0x94
      00486D 80                    3073 	.db 0x80
      00486E E2                    3074 	.db 0xe2
      00486F 94                    3075 	.db 0x94
      004870 80                    3076 	.db 0x80
      004871 E2                    3077 	.db 0xe2
      004872 94                    3078 	.db 0x94
      004873 80                    3079 	.db 0x80
      004874 E2                    3080 	.db 0xe2
      004875 94                    3081 	.db 0x94
      004876 80                    3082 	.db 0x80
      004877 E2                    3083 	.db 0xe2
      004878 94                    3084 	.db 0x94
      004879 BC                    3085 	.db 0xbc
      00487A E2                    3086 	.db 0xe2
      00487B 94                    3087 	.db 0x94
      00487C 80                    3088 	.db 0x80
      00487D E2                    3089 	.db 0xe2
      00487E 94                    3090 	.db 0x94
      00487F 80                    3091 	.db 0x80
      004880 E2                    3092 	.db 0xe2
      004881 94                    3093 	.db 0x94
      004882 80                    3094 	.db 0x80
      004883 E2                    3095 	.db 0xe2
      004884 94                    3096 	.db 0x94
      004885 80                    3097 	.db 0x80
      004886 E2                    3098 	.db 0xe2
      004887 94                    3099 	.db 0x94
      004888 80                    3100 	.db 0x80
      004889 E2                    3101 	.db 0xe2
      00488A 94                    3102 	.db 0x94
      00488B 80                    3103 	.db 0x80
      00488C E2                    3104 	.db 0xe2
      00488D 94                    3105 	.db 0x94
      00488E 80                    3106 	.db 0x80
      00488F E2                    3107 	.db 0xe2
      004890 94                    3108 	.db 0x94
      004891 80                    3109 	.db 0x80
      004892 E2                    3110 	.db 0xe2
      004893 94                    3111 	.db 0x94
      004894 80                    3112 	.db 0x80
      004895 E2                    3113 	.db 0xe2
      004896 94                    3114 	.db 0x94
      004897 80                    3115 	.db 0x80
      004898 E2                    3116 	.db 0xe2
      004899 94                    3117 	.db 0x94
      00489A 80                    3118 	.db 0x80
      00489B E2                    3119 	.db 0xe2
      00489C 94                    3120 	.db 0x94
      00489D 80                    3121 	.db 0x80
      00489E E2                    3122 	.db 0xe2
      00489F 94                    3123 	.db 0x94
      0048A0 80                    3124 	.db 0x80
      0048A1 E2                    3125 	.db 0xe2
      0048A2 94                    3126 	.db 0x94
      0048A3 80                    3127 	.db 0x80
      0048A4 E2                    3128 	.db 0xe2
      0048A5 94                    3129 	.db 0x94
      0048A6 80                    3130 	.db 0x80
      0048A7 E2                    3131 	.db 0xe2
      0048A8 94                    3132 	.db 0x94
      0048A9 80                    3133 	.db 0x80
      0048AA E2                    3134 	.db 0xe2
      0048AB 94                    3135 	.db 0x94
      0048AC 80                    3136 	.db 0x80
      0048AD E2                    3137 	.db 0xe2
      0048AE 94                    3138 	.db 0x94
      0048AF 80                    3139 	.db 0x80
      0048B0 E2                    3140 	.db 0xe2
      0048B1 94                    3141 	.db 0x94
      0048B2 80                    3142 	.db 0x80
      0048B3 E2                    3143 	.db 0xe2
      0048B4 94                    3144 	.db 0x94
      0048B5 80                    3145 	.db 0x80
      0048B6 E2                    3146 	.db 0xe2
      0048B7 94                    3147 	.db 0x94
      0048B8 80                    3148 	.db 0x80
      0048B9 E2                    3149 	.db 0xe2
      0048BA 94                    3150 	.db 0x94
      0048BB 80                    3151 	.db 0x80
      0048BC E2                    3152 	.db 0xe2
      0048BD 94                    3153 	.db 0x94
      0048BE 80                    3154 	.db 0x80
      0048BF E2                    3155 	.db 0xe2
      0048C0 94                    3156 	.db 0x94
      0048C1 80                    3157 	.db 0x80
      0048C2 E2                    3158 	.db 0xe2
      0048C3 94                    3159 	.db 0x94
      0048C4 80                    3160 	.db 0x80
      0048C5 E2                    3161 	.db 0xe2
      0048C6 94                    3162 	.db 0x94
      0048C7 80                    3163 	.db 0x80
      0048C8 E2                    3164 	.db 0xe2
      0048C9 94                    3165 	.db 0x94
      0048CA 80                    3166 	.db 0x80
      0048CB E2                    3167 	.db 0xe2
      0048CC 94                    3168 	.db 0x94
      0048CD 80                    3169 	.db 0x80
      0048CE E2                    3170 	.db 0xe2
      0048CF 94                    3171 	.db 0x94
      0048D0 80                    3172 	.db 0x80
      0048D1 E2                    3173 	.db 0xe2
      0048D2 94                    3174 	.db 0x94
      0048D3 80                    3175 	.db 0x80
      0048D4 E2                    3176 	.db 0xe2
      0048D5 94                    3177 	.db 0x94
      0048D6 80                    3178 	.db 0x80
      0048D7 E2                    3179 	.db 0xe2
      0048D8 94                    3180 	.db 0x94
      0048D9 80                    3181 	.db 0x80
      0048DA E2                    3182 	.db 0xe2
      0048DB 94                    3183 	.db 0x94
      0048DC 80                    3184 	.db 0x80
      0048DD E2                    3185 	.db 0xe2
      0048DE 94                    3186 	.db 0x94
      0048DF 80                    3187 	.db 0x80
      0048E0 E2                    3188 	.db 0xe2
      0048E1 94                    3189 	.db 0x94
      0048E2 80                    3190 	.db 0x80
      0048E3 E2                    3191 	.db 0xe2
      0048E4 94                    3192 	.db 0x94
      0048E5 80                    3193 	.db 0x80
      0048E6 E2                    3194 	.db 0xe2
      0048E7 94                    3195 	.db 0x94
      0048E8 80                    3196 	.db 0x80
      0048E9 E2                    3197 	.db 0xe2
      0048EA 94                    3198 	.db 0x94
      0048EB 80                    3199 	.db 0x80
      0048EC E2                    3200 	.db 0xe2
      0048ED 94                    3201 	.db 0x94
      0048EE 80                    3202 	.db 0x80
      0048EF E2                    3203 	.db 0xe2
      0048F0 94                    3204 	.db 0x94
      0048F1 80                    3205 	.db 0x80
      0048F2 E2                    3206 	.db 0xe2
      0048F3 94                    3207 	.db 0x94
      0048F4 80                    3208 	.db 0x80
      0048F5 E2                    3209 	.db 0xe2
      0048F6 94                    3210 	.db 0x94
      0048F7 80                    3211 	.db 0x80
      0048F8 E2                    3212 	.db 0xe2
      0048F9 94                    3213 	.db 0x94
      0048FA 80                    3214 	.db 0x80
      0048FB E2                    3215 	.db 0xe2
      0048FC 94                    3216 	.db 0x94
      0048FD 80                    3217 	.db 0x80
      0048FE E2                    3218 	.db 0xe2
      0048FF 94                    3219 	.db 0x94
      004900 A4                    3220 	.db 0xa4
      004901 0A                    3221 	.db 0x0a
      004902 0D                    3222 	.db 0x0d
      004903 00                    3223 	.db 0x00
                                   3224 	.area CSEG    (CODE)
                                   3225 	.area CONST   (CODE)
      004904                       3226 ___str_6:
      004904 E2                    3227 	.db 0xe2
      004905 94                    3228 	.db 0x94
      004906 82                    3229 	.db 0x82
      004907 20 20 20 20 20 52 20  3230 	.ascii "     R      "
             20 20 20 20 20
      004913 E2                    3231 	.db 0xe2
      004914 94                    3232 	.db 0x94
      004915 82                    3233 	.db 0x82
      004916 20 52 65 61 64 20 66  3234 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004942 E2                    3235 	.db 0xe2
      004943 94                    3236 	.db 0x94
      004944 82                    3237 	.db 0x82
      004945 0A                    3238 	.db 0x0a
      004946 0D                    3239 	.db 0x0d
      004947 00                    3240 	.db 0x00
                                   3241 	.area CSEG    (CODE)
                                   3242 	.area CONST   (CODE)
      004948                       3243 ___str_7:
      004948 E2                    3244 	.db 0xe2
      004949 94                    3245 	.db 0x94
      00494A 82                    3246 	.db 0x82
      00494B 20 20 20 20 20 57 20  3247 	.ascii "     W      "
             20 20 20 20 20
      004957 E2                    3248 	.db 0xe2
      004958 94                    3249 	.db 0x94
      004959 82                    3250 	.db 0x82
      00495A 20 57 72 69 74 65 20  3251 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004986 E2                    3252 	.db 0xe2
      004987 94                    3253 	.db 0x94
      004988 82                    3254 	.db 0x82
      004989 0A                    3255 	.db 0x0a
      00498A 0D                    3256 	.db 0x0d
      00498B 00                    3257 	.db 0x00
                                   3258 	.area CSEG    (CODE)
                                   3259 	.area CONST   (CODE)
      00498C                       3260 ___str_8:
      00498C E2                    3261 	.db 0xe2
      00498D 94                    3262 	.db 0x94
      00498E 82                    3263 	.db 0x82
      00498F 20 20 20 20 20 48 20  3264 	.ascii "     H      "
             20 20 20 20 20
      00499B E2                    3265 	.db 0xe2
      00499C 94                    3266 	.db 0x94
      00499D 82                    3267 	.db 0x82
      00499E 20 44 69 73 70 6C 61  3268 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0049CA E2                    3269 	.db 0xe2
      0049CB 94                    3270 	.db 0x94
      0049CC 82                    3271 	.db 0x82
      0049CD 0A                    3272 	.db 0x0a
      0049CE 0D                    3273 	.db 0x0d
      0049CF 00                    3274 	.db 0x00
                                   3275 	.area CSEG    (CODE)
                                   3276 	.area CONST   (CODE)
      0049D0                       3277 ___str_9:
      0049D0 E2                    3278 	.db 0xe2
      0049D1 94                    3279 	.db 0x94
      0049D2 82                    3280 	.db 0x82
      0049D3 20 20 20 20 20 58 20  3281 	.ascii "     X      "
             20 20 20 20 20
      0049DF E2                    3282 	.db 0xe2
      0049E0 94                    3283 	.db 0x94
      0049E1 82                    3284 	.db 0x82
      0049E2 20 52 65 73 65 74 20  3285 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004A0E E2                    3286 	.db 0xe2
      004A0F 94                    3287 	.db 0x94
      004A10 82                    3288 	.db 0x82
      004A11 0A                    3289 	.db 0x0a
      004A12 0D                    3290 	.db 0x0d
      004A13 00                    3291 	.db 0x00
                                   3292 	.area CSEG    (CODE)
                                   3293 	.area CONST   (CODE)
      004A14                       3294 ___str_10:
      004A14 E2                    3295 	.db 0xe2
      004A15 94                    3296 	.db 0x94
      004A16 82                    3297 	.db 0x82
      004A17 20 20 20 20 20 3F 20  3298 	.ascii "     ?      "
             20 20 20 20 20
      004A23 E2                    3299 	.db 0xe2
      004A24 94                    3300 	.db 0x94
      004A25 82                    3301 	.db 0x82
      004A26 20 44 69 73 70 6C 61  3302 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004A52 E2                    3303 	.db 0xe2
      004A53 94                    3304 	.db 0x94
      004A54 82                    3305 	.db 0x82
      004A55 0A                    3306 	.db 0x0a
      004A56 0D                    3307 	.db 0x0d
      004A57 00                    3308 	.db 0x00
                                   3309 	.area CSEG    (CODE)
                                   3310 	.area CONST   (CODE)
      004A58                       3311 ___str_11:
      004A58 E2                    3312 	.db 0xe2
      004A59 94                    3313 	.db 0x94
      004A5A 82                    3314 	.db 0x82
      004A5B 20 20 20 20 20 51 20  3315 	.ascii "     Q      "
             20 20 20 20 20
      004A67 E2                    3316 	.db 0xe2
      004A68 94                    3317 	.db 0x94
      004A69 82                    3318 	.db 0x82
      004A6A 20 51 75 69 74 20 70  3319 	.ascii " Quit program                               "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004A96 E2                    3320 	.db 0xe2
      004A97 94                    3321 	.db 0x94
      004A98 82                    3322 	.db 0x82
      004A99 0A                    3323 	.db 0x0a
      004A9A 0D                    3324 	.db 0x0d
      004A9B 00                    3325 	.db 0x00
                                   3326 	.area CSEG    (CODE)
                                   3327 	.area CONST   (CODE)
      004A9C                       3328 ___str_12:
      004A9C E2                    3329 	.db 0xe2
      004A9D 94                    3330 	.db 0x94
      004A9E 94                    3331 	.db 0x94
      004A9F E2                    3332 	.db 0xe2
      004AA0 94                    3333 	.db 0x94
      004AA1 80                    3334 	.db 0x80
      004AA2 E2                    3335 	.db 0xe2
      004AA3 94                    3336 	.db 0x94
      004AA4 80                    3337 	.db 0x80
      004AA5 E2                    3338 	.db 0xe2
      004AA6 94                    3339 	.db 0x94
      004AA7 80                    3340 	.db 0x80
      004AA8 E2                    3341 	.db 0xe2
      004AA9 94                    3342 	.db 0x94
      004AAA 80                    3343 	.db 0x80
      004AAB E2                    3344 	.db 0xe2
      004AAC 94                    3345 	.db 0x94
      004AAD 80                    3346 	.db 0x80
      004AAE E2                    3347 	.db 0xe2
      004AAF 94                    3348 	.db 0x94
      004AB0 80                    3349 	.db 0x80
      004AB1 E2                    3350 	.db 0xe2
      004AB2 94                    3351 	.db 0x94
      004AB3 80                    3352 	.db 0x80
      004AB4 E2                    3353 	.db 0xe2
      004AB5 94                    3354 	.db 0x94
      004AB6 80                    3355 	.db 0x80
      004AB7 E2                    3356 	.db 0xe2
      004AB8 94                    3357 	.db 0x94
      004AB9 80                    3358 	.db 0x80
      004ABA E2                    3359 	.db 0xe2
      004ABB 94                    3360 	.db 0x94
      004ABC 80                    3361 	.db 0x80
      004ABD E2                    3362 	.db 0xe2
      004ABE 94                    3363 	.db 0x94
      004ABF 80                    3364 	.db 0x80
      004AC0 E2                    3365 	.db 0xe2
      004AC1 94                    3366 	.db 0x94
      004AC2 80                    3367 	.db 0x80
      004AC3 E2                    3368 	.db 0xe2
      004AC4 94                    3369 	.db 0x94
      004AC5 B4                    3370 	.db 0xb4
      004AC6 E2                    3371 	.db 0xe2
      004AC7 94                    3372 	.db 0x94
      004AC8 80                    3373 	.db 0x80
      004AC9 E2                    3374 	.db 0xe2
      004ACA 94                    3375 	.db 0x94
      004ACB 80                    3376 	.db 0x80
      004ACC E2                    3377 	.db 0xe2
      004ACD 94                    3378 	.db 0x94
      004ACE 80                    3379 	.db 0x80
      004ACF E2                    3380 	.db 0xe2
      004AD0 94                    3381 	.db 0x94
      004AD1 80                    3382 	.db 0x80
      004AD2 E2                    3383 	.db 0xe2
      004AD3 94                    3384 	.db 0x94
      004AD4 80                    3385 	.db 0x80
      004AD5 E2                    3386 	.db 0xe2
      004AD6 94                    3387 	.db 0x94
      004AD7 80                    3388 	.db 0x80
      004AD8 E2                    3389 	.db 0xe2
      004AD9 94                    3390 	.db 0x94
      004ADA 80                    3391 	.db 0x80
      004ADB E2                    3392 	.db 0xe2
      004ADC 94                    3393 	.db 0x94
      004ADD 80                    3394 	.db 0x80
      004ADE E2                    3395 	.db 0xe2
      004ADF 94                    3396 	.db 0x94
      004AE0 80                    3397 	.db 0x80
      004AE1 E2                    3398 	.db 0xe2
      004AE2 94                    3399 	.db 0x94
      004AE3 80                    3400 	.db 0x80
      004AE4 E2                    3401 	.db 0xe2
      004AE5 94                    3402 	.db 0x94
      004AE6 80                    3403 	.db 0x80
      004AE7 E2                    3404 	.db 0xe2
      004AE8 94                    3405 	.db 0x94
      004AE9 80                    3406 	.db 0x80
      004AEA E2                    3407 	.db 0xe2
      004AEB 94                    3408 	.db 0x94
      004AEC 80                    3409 	.db 0x80
      004AED E2                    3410 	.db 0xe2
      004AEE 94                    3411 	.db 0x94
      004AEF 80                    3412 	.db 0x80
      004AF0 E2                    3413 	.db 0xe2
      004AF1 94                    3414 	.db 0x94
      004AF2 80                    3415 	.db 0x80
      004AF3 E2                    3416 	.db 0xe2
      004AF4 94                    3417 	.db 0x94
      004AF5 80                    3418 	.db 0x80
      004AF6 E2                    3419 	.db 0xe2
      004AF7 94                    3420 	.db 0x94
      004AF8 80                    3421 	.db 0x80
      004AF9 E2                    3422 	.db 0xe2
      004AFA 94                    3423 	.db 0x94
      004AFB 80                    3424 	.db 0x80
      004AFC E2                    3425 	.db 0xe2
      004AFD 94                    3426 	.db 0x94
      004AFE 80                    3427 	.db 0x80
      004AFF E2                    3428 	.db 0xe2
      004B00 94                    3429 	.db 0x94
      004B01 80                    3430 	.db 0x80
      004B02 E2                    3431 	.db 0xe2
      004B03 94                    3432 	.db 0x94
      004B04 80                    3433 	.db 0x80
      004B05 E2                    3434 	.db 0xe2
      004B06 94                    3435 	.db 0x94
      004B07 80                    3436 	.db 0x80
      004B08 E2                    3437 	.db 0xe2
      004B09 94                    3438 	.db 0x94
      004B0A 80                    3439 	.db 0x80
      004B0B E2                    3440 	.db 0xe2
      004B0C 94                    3441 	.db 0x94
      004B0D 80                    3442 	.db 0x80
      004B0E E2                    3443 	.db 0xe2
      004B0F 94                    3444 	.db 0x94
      004B10 80                    3445 	.db 0x80
      004B11 E2                    3446 	.db 0xe2
      004B12 94                    3447 	.db 0x94
      004B13 80                    3448 	.db 0x80
      004B14 E2                    3449 	.db 0xe2
      004B15 94                    3450 	.db 0x94
      004B16 80                    3451 	.db 0x80
      004B17 E2                    3452 	.db 0xe2
      004B18 94                    3453 	.db 0x94
      004B19 80                    3454 	.db 0x80
      004B1A E2                    3455 	.db 0xe2
      004B1B 94                    3456 	.db 0x94
      004B1C 80                    3457 	.db 0x80
      004B1D E2                    3458 	.db 0xe2
      004B1E 94                    3459 	.db 0x94
      004B1F 80                    3460 	.db 0x80
      004B20 E2                    3461 	.db 0xe2
      004B21 94                    3462 	.db 0x94
      004B22 80                    3463 	.db 0x80
      004B23 E2                    3464 	.db 0xe2
      004B24 94                    3465 	.db 0x94
      004B25 80                    3466 	.db 0x80
      004B26 E2                    3467 	.db 0xe2
      004B27 94                    3468 	.db 0x94
      004B28 80                    3469 	.db 0x80
      004B29 E2                    3470 	.db 0xe2
      004B2A 94                    3471 	.db 0x94
      004B2B 80                    3472 	.db 0x80
      004B2C E2                    3473 	.db 0xe2
      004B2D 94                    3474 	.db 0x94
      004B2E 80                    3475 	.db 0x80
      004B2F E2                    3476 	.db 0xe2
      004B30 94                    3477 	.db 0x94
      004B31 80                    3478 	.db 0x80
      004B32 E2                    3479 	.db 0xe2
      004B33 94                    3480 	.db 0x94
      004B34 80                    3481 	.db 0x80
      004B35 E2                    3482 	.db 0xe2
      004B36 94                    3483 	.db 0x94
      004B37 80                    3484 	.db 0x80
      004B38 E2                    3485 	.db 0xe2
      004B39 94                    3486 	.db 0x94
      004B3A 80                    3487 	.db 0x80
      004B3B E2                    3488 	.db 0xe2
      004B3C 94                    3489 	.db 0x94
      004B3D 80                    3490 	.db 0x80
      004B3E E2                    3491 	.db 0xe2
      004B3F 94                    3492 	.db 0x94
      004B40 80                    3493 	.db 0x80
      004B41 E2                    3494 	.db 0xe2
      004B42 94                    3495 	.db 0x94
      004B43 80                    3496 	.db 0x80
      004B44 E2                    3497 	.db 0xe2
      004B45 94                    3498 	.db 0x94
      004B46 80                    3499 	.db 0x80
      004B47 E2                    3500 	.db 0xe2
      004B48 94                    3501 	.db 0x94
      004B49 80                    3502 	.db 0x80
      004B4A E2                    3503 	.db 0xe2
      004B4B 94                    3504 	.db 0x94
      004B4C 98                    3505 	.db 0x98
      004B4D 0A                    3506 	.db 0x0a
      004B4E 0D                    3507 	.db 0x0d
      004B4F 00                    3508 	.db 0x00
                                   3509 	.area CSEG    (CODE)
                                   3510 	.area CONST   (CODE)
      004B50                       3511 ___str_13:
      004B50 7C 20 24 20 25 63     3512 	.ascii "| $ %c"
      004B56 0A                    3513 	.db 0x0a
      004B57 0D                    3514 	.db 0x0d
      004B58 00                    3515 	.db 0x00
                                   3516 	.area CSEG    (CODE)
                                   3517 	.area CONST   (CODE)
      004B59                       3518 ___str_14:
      004B59 0A                    3519 	.db 0x0a
      004B5A E2                    3520 	.db 0xe2
      004B5B 94                    3521 	.db 0x94
      004B5C 8C                    3522 	.db 0x8c
      004B5D E2                    3523 	.db 0xe2
      004B5E 94                    3524 	.db 0x94
      004B5F 80                    3525 	.db 0x80
      004B60 E2                    3526 	.db 0xe2
      004B61 94                    3527 	.db 0x94
      004B62 80                    3528 	.db 0x80
      004B63 E2                    3529 	.db 0xe2
      004B64 94                    3530 	.db 0x94
      004B65 80                    3531 	.db 0x80
      004B66 E2                    3532 	.db 0xe2
      004B67 94                    3533 	.db 0x94
      004B68 80                    3534 	.db 0x80
      004B69 E2                    3535 	.db 0xe2
      004B6A 94                    3536 	.db 0x94
      004B6B 80                    3537 	.db 0x80
      004B6C E2                    3538 	.db 0xe2
      004B6D 94                    3539 	.db 0x94
      004B6E 80                    3540 	.db 0x80
      004B6F E2                    3541 	.db 0xe2
      004B70 94                    3542 	.db 0x94
      004B71 80                    3543 	.db 0x80
      004B72 E2                    3544 	.db 0xe2
      004B73 94                    3545 	.db 0x94
      004B74 80                    3546 	.db 0x80
      004B75 E2                    3547 	.db 0xe2
      004B76 94                    3548 	.db 0x94
      004B77 80                    3549 	.db 0x80
      004B78 E2                    3550 	.db 0xe2
      004B79 94                    3551 	.db 0x94
      004B7A 80                    3552 	.db 0x80
      004B7B E2                    3553 	.db 0xe2
      004B7C 94                    3554 	.db 0x94
      004B7D 80                    3555 	.db 0x80
      004B7E E2                    3556 	.db 0xe2
      004B7F 94                    3557 	.db 0x94
      004B80 80                    3558 	.db 0x80
      004B81 E2                    3559 	.db 0xe2
      004B82 94                    3560 	.db 0x94
      004B83 80                    3561 	.db 0x80
      004B84 E2                    3562 	.db 0xe2
      004B85 94                    3563 	.db 0x94
      004B86 80                    3564 	.db 0x80
      004B87 E2                    3565 	.db 0xe2
      004B88 94                    3566 	.db 0x94
      004B89 80                    3567 	.db 0x80
      004B8A 20 57 52 49 54 45 20  3568 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      004B9B E2                    3569 	.db 0xe2
      004B9C 94                    3570 	.db 0x94
      004B9D 80                    3571 	.db 0x80
      004B9E E2                    3572 	.db 0xe2
      004B9F 94                    3573 	.db 0x94
      004BA0 80                    3574 	.db 0x80
      004BA1 E2                    3575 	.db 0xe2
      004BA2 94                    3576 	.db 0x94
      004BA3 80                    3577 	.db 0x80
      004BA4 E2                    3578 	.db 0xe2
      004BA5 94                    3579 	.db 0x94
      004BA6 80                    3580 	.db 0x80
      004BA7 E2                    3581 	.db 0xe2
      004BA8 94                    3582 	.db 0x94
      004BA9 80                    3583 	.db 0x80
      004BAA E2                    3584 	.db 0xe2
      004BAB 94                    3585 	.db 0x94
      004BAC 80                    3586 	.db 0x80
      004BAD E2                    3587 	.db 0xe2
      004BAE 94                    3588 	.db 0x94
      004BAF 80                    3589 	.db 0x80
      004BB0 E2                    3590 	.db 0xe2
      004BB1 94                    3591 	.db 0x94
      004BB2 80                    3592 	.db 0x80
      004BB3 E2                    3593 	.db 0xe2
      004BB4 94                    3594 	.db 0x94
      004BB5 80                    3595 	.db 0x80
      004BB6 E2                    3596 	.db 0xe2
      004BB7 94                    3597 	.db 0x94
      004BB8 80                    3598 	.db 0x80
      004BB9 E2                    3599 	.db 0xe2
      004BBA 94                    3600 	.db 0x94
      004BBB 80                    3601 	.db 0x80
      004BBC E2                    3602 	.db 0xe2
      004BBD 94                    3603 	.db 0x94
      004BBE 80                    3604 	.db 0x80
      004BBF E2                    3605 	.db 0xe2
      004BC0 94                    3606 	.db 0x94
      004BC1 80                    3607 	.db 0x80
      004BC2 E2                    3608 	.db 0xe2
      004BC3 94                    3609 	.db 0x94
      004BC4 80                    3610 	.db 0x80
      004BC5 E2                    3611 	.db 0xe2
      004BC6 94                    3612 	.db 0x94
      004BC7 90                    3613 	.db 0x90
      004BC8 0A                    3614 	.db 0x0a
      004BC9 0D                    3615 	.db 0x0d
      004BCA 00                    3616 	.db 0x00
                                   3617 	.area CSEG    (CODE)
                                   3618 	.area CONST   (CODE)
      004BCB                       3619 ___str_15:
      004BCB 63 68 65 63 6B 20 70  3620 	.ascii "check point 1 "
             6F 69 6E 74 20 31 20
      004BD9 0A                    3621 	.db 0x0a
      004BDA 0D                    3622 	.db 0x0d
      004BDB 00                    3623 	.db 0x00
                                   3624 	.area CSEG    (CODE)
                                   3625 	.area CONST   (CODE)
      004BDC                       3626 ___str_16:
      004BDC 0A                    3627 	.db 0x0a
      004BDD E2                    3628 	.db 0xe2
      004BDE 94                    3629 	.db 0x94
      004BDF 8C                    3630 	.db 0x8c
      004BE0 E2                    3631 	.db 0xe2
      004BE1 94                    3632 	.db 0x94
      004BE2 80                    3633 	.db 0x80
      004BE3 E2                    3634 	.db 0xe2
      004BE4 94                    3635 	.db 0x94
      004BE5 80                    3636 	.db 0x80
      004BE6 E2                    3637 	.db 0xe2
      004BE7 94                    3638 	.db 0x94
      004BE8 80                    3639 	.db 0x80
      004BE9 E2                    3640 	.db 0xe2
      004BEA 94                    3641 	.db 0x94
      004BEB 80                    3642 	.db 0x80
      004BEC E2                    3643 	.db 0xe2
      004BED 94                    3644 	.db 0x94
      004BEE 80                    3645 	.db 0x80
      004BEF E2                    3646 	.db 0xe2
      004BF0 94                    3647 	.db 0x94
      004BF1 80                    3648 	.db 0x80
      004BF2 E2                    3649 	.db 0xe2
      004BF3 94                    3650 	.db 0x94
      004BF4 80                    3651 	.db 0x80
      004BF5 E2                    3652 	.db 0xe2
      004BF6 94                    3653 	.db 0x94
      004BF7 80                    3654 	.db 0x80
      004BF8 E2                    3655 	.db 0xe2
      004BF9 94                    3656 	.db 0x94
      004BFA 80                    3657 	.db 0x80
      004BFB E2                    3658 	.db 0xe2
      004BFC 94                    3659 	.db 0x94
      004BFD 80                    3660 	.db 0x80
      004BFE E2                    3661 	.db 0xe2
      004BFF 94                    3662 	.db 0x94
      004C00 80                    3663 	.db 0x80
      004C01 E2                    3664 	.db 0xe2
      004C02 94                    3665 	.db 0x94
      004C03 80                    3666 	.db 0x80
      004C04 E2                    3667 	.db 0xe2
      004C05 94                    3668 	.db 0x94
      004C06 80                    3669 	.db 0x80
      004C07 E2                    3670 	.db 0xe2
      004C08 94                    3671 	.db 0x94
      004C09 80                    3672 	.db 0x80
      004C0A E2                    3673 	.db 0xe2
      004C0B 94                    3674 	.db 0x94
      004C0C 80                    3675 	.db 0x80
      004C0D 20 52 45 41 44 20 4F  3676 	.ascii " READ OPERATION "
             50 45 52 41 54 49 4F
             4E 20
      004C1D E2                    3677 	.db 0xe2
      004C1E 94                    3678 	.db 0x94
      004C1F 80                    3679 	.db 0x80
      004C20 E2                    3680 	.db 0xe2
      004C21 94                    3681 	.db 0x94
      004C22 80                    3682 	.db 0x80
      004C23 E2                    3683 	.db 0xe2
      004C24 94                    3684 	.db 0x94
      004C25 80                    3685 	.db 0x80
      004C26 E2                    3686 	.db 0xe2
      004C27 94                    3687 	.db 0x94
      004C28 80                    3688 	.db 0x80
      004C29 E2                    3689 	.db 0xe2
      004C2A 94                    3690 	.db 0x94
      004C2B 80                    3691 	.db 0x80
      004C2C E2                    3692 	.db 0xe2
      004C2D 94                    3693 	.db 0x94
      004C2E 80                    3694 	.db 0x80
      004C2F E2                    3695 	.db 0xe2
      004C30 94                    3696 	.db 0x94
      004C31 80                    3697 	.db 0x80
      004C32 E2                    3698 	.db 0xe2
      004C33 94                    3699 	.db 0x94
      004C34 80                    3700 	.db 0x80
      004C35 E2                    3701 	.db 0xe2
      004C36 94                    3702 	.db 0x94
      004C37 80                    3703 	.db 0x80
      004C38 E2                    3704 	.db 0xe2
      004C39 94                    3705 	.db 0x94
      004C3A 80                    3706 	.db 0x80
      004C3B E2                    3707 	.db 0xe2
      004C3C 94                    3708 	.db 0x94
      004C3D 80                    3709 	.db 0x80
      004C3E E2                    3710 	.db 0xe2
      004C3F 94                    3711 	.db 0x94
      004C40 80                    3712 	.db 0x80
      004C41 E2                    3713 	.db 0xe2
      004C42 94                    3714 	.db 0x94
      004C43 80                    3715 	.db 0x80
      004C44 E2                    3716 	.db 0xe2
      004C45 94                    3717 	.db 0x94
      004C46 80                    3718 	.db 0x80
      004C47 E2                    3719 	.db 0xe2
      004C48 94                    3720 	.db 0x94
      004C49 80                    3721 	.db 0x80
      004C4A E2                    3722 	.db 0xe2
      004C4B 94                    3723 	.db 0x94
      004C4C 90                    3724 	.db 0x90
      004C4D 0A                    3725 	.db 0x0a
      004C4E 0D                    3726 	.db 0x0d
      004C4F 00                    3727 	.db 0x00
                                   3728 	.area CSEG    (CODE)
                                   3729 	.area CONST   (CODE)
      004C50                       3730 ___str_17:
      004C50 7C 20 52 65 61 64 69  3731 	.ascii "| Reading from Address 0x%03X           |"
             6E 67 20 66 72 6F 6D
             20 41 64 64 72 65 73
             73 20 30 78 25 30 33
             58 20 20 20 20 20 20
             20 20 20 20 20 7C
      004C79 0A                    3732 	.db 0x0a
      004C7A 0D                    3733 	.db 0x0d
      004C7B 00                    3734 	.db 0x00
                                   3735 	.area CSEG    (CODE)
                                   3736 	.area CONST   (CODE)
      004C7C                       3737 ___str_18:
      004C7C 49 4E 56 41 4C 49 44  3738 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      004C89 0A                    3739 	.db 0x0a
      004C8A 0D                    3740 	.db 0x0d
      004C8B 00                    3741 	.db 0x00
                                   3742 	.area CSEG    (CODE)
                                   3743 	.area CONST   (CODE)
      004C8C                       3744 ___str_19:
      004C8C E2                    3745 	.db 0xe2
      004C8D 94                    3746 	.db 0x94
      004C8E 82                    3747 	.db 0x82
      004C8F 20 45 6E 74 65 72 20  3748 	.ascii " Enter address (hex, up to 3 characters): "
             61 64 64 72 65 73 73
             20 28 68 65 78 2C 20
             75 70 20 74 6F 20 33
             20 63 68 61 72 61 63
             74 65 72 73 29 3A 20
      004CB9 0A                    3749 	.db 0x0a
      004CBA 0D                    3750 	.db 0x0d
      004CBB 7C                    3751 	.ascii "|"
      004CBC 00                    3752 	.db 0x00
                                   3753 	.area CSEG    (CODE)
                                   3754 	.area CONST   (CODE)
      004CBD                       3755 ___str_20:
      004CBD 7C 20 24 20           3756 	.ascii "| $ "
      004CC1 00                    3757 	.db 0x00
                                   3758 	.area CSEG    (CODE)
                                   3759 	.area CONST   (CODE)
      004CC2                       3760 ___str_21:
      004CC2 0A                    3761 	.db 0x0a
      004CC3 0D                    3762 	.db 0x0d
      004CC4 E2                    3763 	.db 0xe2
      004CC5 94                    3764 	.db 0x94
      004CC6 82                    3765 	.db 0x82
      004CC7 20 45 6E 74 65 72 65  3766 	.ascii " Entered address: 0x%03X"
             64 20 61 64 64 72 65
             73 73 3A 20 30 78 25
             30 33 58
      004CDF 0A                    3767 	.db 0x0a
      004CE0 0D                    3768 	.db 0x0d
      004CE1 00                    3769 	.db 0x00
                                   3770 	.area CSEG    (CODE)
                                   3771 	.area CONST   (CODE)
      004CE2                       3772 ___str_22:
      004CE2 E2                    3773 	.db 0xe2
      004CE3 95                    3774 	.db 0x95
      004CE4 94                    3775 	.db 0x94
      004CE5 E2                    3776 	.db 0xe2
      004CE6 95                    3777 	.db 0x95
      004CE7 90                    3778 	.db 0x90
      004CE8 E2                    3779 	.db 0xe2
      004CE9 95                    3780 	.db 0x95
      004CEA 90                    3781 	.db 0x90
      004CEB E2                    3782 	.db 0xe2
      004CEC 95                    3783 	.db 0x95
      004CED 90                    3784 	.db 0x90
      004CEE E2                    3785 	.db 0xe2
      004CEF 95                    3786 	.db 0x95
      004CF0 90                    3787 	.db 0x90
      004CF1 E2                    3788 	.db 0xe2
      004CF2 95                    3789 	.db 0x95
      004CF3 90                    3790 	.db 0x90
      004CF4 E2                    3791 	.db 0xe2
      004CF5 95                    3792 	.db 0x95
      004CF6 90                    3793 	.db 0x90
      004CF7 E2                    3794 	.db 0xe2
      004CF8 95                    3795 	.db 0x95
      004CF9 90                    3796 	.db 0x90
      004CFA E2                    3797 	.db 0xe2
      004CFB 95                    3798 	.db 0x95
      004CFC 90                    3799 	.db 0x90
      004CFD E2                    3800 	.db 0xe2
      004CFE 95                    3801 	.db 0x95
      004CFF 90                    3802 	.db 0x90
      004D00 E2                    3803 	.db 0xe2
      004D01 95                    3804 	.db 0x95
      004D02 90                    3805 	.db 0x90
      004D03 E2                    3806 	.db 0xe2
      004D04 95                    3807 	.db 0x95
      004D05 90                    3808 	.db 0x90
      004D06 E2                    3809 	.db 0xe2
      004D07 95                    3810 	.db 0x95
      004D08 90                    3811 	.db 0x90
      004D09 E2                    3812 	.db 0xe2
      004D0A 95                    3813 	.db 0x95
      004D0B 90                    3814 	.db 0x90
      004D0C E2                    3815 	.db 0xe2
      004D0D 95                    3816 	.db 0x95
      004D0E 90                    3817 	.db 0x90
      004D0F E2                    3818 	.db 0xe2
      004D10 95                    3819 	.db 0x95
      004D11 90                    3820 	.db 0x90
      004D12 E2                    3821 	.db 0xe2
      004D13 95                    3822 	.db 0x95
      004D14 90                    3823 	.db 0x90
      004D15 E2                    3824 	.db 0xe2
      004D16 95                    3825 	.db 0x95
      004D17 90                    3826 	.db 0x90
      004D18 E2                    3827 	.db 0xe2
      004D19 95                    3828 	.db 0x95
      004D1A 90                    3829 	.db 0x90
      004D1B E2                    3830 	.db 0xe2
      004D1C 95                    3831 	.db 0x95
      004D1D 90                    3832 	.db 0x90
      004D1E E2                    3833 	.db 0xe2
      004D1F 95                    3834 	.db 0x95
      004D20 90                    3835 	.db 0x90
      004D21 E2                    3836 	.db 0xe2
      004D22 95                    3837 	.db 0x95
      004D23 90                    3838 	.db 0x90
      004D24 E2                    3839 	.db 0xe2
      004D25 95                    3840 	.db 0x95
      004D26 90                    3841 	.db 0x90
      004D27 E2                    3842 	.db 0xe2
      004D28 95                    3843 	.db 0x95
      004D29 90                    3844 	.db 0x90
      004D2A E2                    3845 	.db 0xe2
      004D2B 95                    3846 	.db 0x95
      004D2C 90                    3847 	.db 0x90
      004D2D E2                    3848 	.db 0xe2
      004D2E 95                    3849 	.db 0x95
      004D2F 90                    3850 	.db 0x90
      004D30 E2                    3851 	.db 0xe2
      004D31 95                    3852 	.db 0x95
      004D32 90                    3853 	.db 0x90
      004D33 E2                    3854 	.db 0xe2
      004D34 95                    3855 	.db 0x95
      004D35 90                    3856 	.db 0x90
      004D36 E2                    3857 	.db 0xe2
      004D37 95                    3858 	.db 0x95
      004D38 90                    3859 	.db 0x90
      004D39 E2                    3860 	.db 0xe2
      004D3A 95                    3861 	.db 0x95
      004D3B 90                    3862 	.db 0x90
      004D3C E2                    3863 	.db 0xe2
      004D3D 95                    3864 	.db 0x95
      004D3E 90                    3865 	.db 0x90
      004D3F E2                    3866 	.db 0xe2
      004D40 95                    3867 	.db 0x95
      004D41 90                    3868 	.db 0x90
      004D42 E2                    3869 	.db 0xe2
      004D43 95                    3870 	.db 0x95
      004D44 90                    3871 	.db 0x90
      004D45 E2                    3872 	.db 0xe2
      004D46 95                    3873 	.db 0x95
      004D47 90                    3874 	.db 0x90
      004D48 E2                    3875 	.db 0xe2
      004D49 95                    3876 	.db 0x95
      004D4A 90                    3877 	.db 0x90
      004D4B E2                    3878 	.db 0xe2
      004D4C 95                    3879 	.db 0x95
      004D4D 90                    3880 	.db 0x90
      004D4E E2                    3881 	.db 0xe2
      004D4F 95                    3882 	.db 0x95
      004D50 90                    3883 	.db 0x90
      004D51 E2                    3884 	.db 0xe2
      004D52 95                    3885 	.db 0x95
      004D53 90                    3886 	.db 0x90
      004D54 E2                    3887 	.db 0xe2
      004D55 95                    3888 	.db 0x95
      004D56 90                    3889 	.db 0x90
      004D57 E2                    3890 	.db 0xe2
      004D58 95                    3891 	.db 0x95
      004D59 90                    3892 	.db 0x90
      004D5A E2                    3893 	.db 0xe2
      004D5B 95                    3894 	.db 0x95
      004D5C 90                    3895 	.db 0x90
      004D5D E2                    3896 	.db 0xe2
      004D5E 95                    3897 	.db 0x95
      004D5F 90                    3898 	.db 0x90
      004D60 E2                    3899 	.db 0xe2
      004D61 95                    3900 	.db 0x95
      004D62 90                    3901 	.db 0x90
      004D63 E2                    3902 	.db 0xe2
      004D64 95                    3903 	.db 0x95
      004D65 97                    3904 	.db 0x97
      004D66 0A                    3905 	.db 0x0a
      004D67 0D                    3906 	.db 0x0d
      004D68 00                    3907 	.db 0x00
                                   3908 	.area CSEG    (CODE)
                                   3909 	.area CONST   (CODE)
      004D69                       3910 ___str_23:
      004D69 E2                    3911 	.db 0xe2
      004D6A 95                    3912 	.db 0x95
      004D6B 91                    3913 	.db 0x91
      004D6C 20 20 20 20 20 20 20  3914 	.ascii "       ! ADDRESS OUT OF RANGE !         "
             21 20 41 44 44 52 45
             53 53 20 4F 55 54 20
             4F 46 20 52 41 4E 47
             45 20 21 20 20 20 20
             20 20 20 20 20
      004D94 E2                    3915 	.db 0xe2
      004D95 95                    3916 	.db 0x95
      004D96 91                    3917 	.db 0x91
      004D97 0A                    3918 	.db 0x0a
      004D98 0D                    3919 	.db 0x0d
      004D99 00                    3920 	.db 0x00
                                   3921 	.area CSEG    (CODE)
                                   3922 	.area CONST   (CODE)
      004D9A                       3923 ___str_24:
      004D9A E2                    3924 	.db 0xe2
      004D9B 95                    3925 	.db 0x95
      004D9C 91                    3926 	.db 0x91
      004D9D 20 20 20 20 20 50 6C  3927 	.ascii "     Please Enter Valid Address         "
             65 61 73 65 20 45 6E
             74 65 72 20 56 61 6C
             69 64 20 41 64 64 72
             65 73 73 20 20 20 20
             20 20 20 20 20
      004DC5 E2                    3928 	.db 0xe2
      004DC6 95                    3929 	.db 0x95
      004DC7 91                    3930 	.db 0x91
      004DC8 0A                    3931 	.db 0x0a
      004DC9 0D                    3932 	.db 0x0d
      004DCA 00                    3933 	.db 0x00
                                   3934 	.area CSEG    (CODE)
                                   3935 	.area CONST   (CODE)
      004DCB                       3936 ___str_25:
      004DCB E2                    3937 	.db 0xe2
      004DCC 95                    3938 	.db 0x95
      004DCD 9A                    3939 	.db 0x9a
      004DCE E2                    3940 	.db 0xe2
      004DCF 95                    3941 	.db 0x95
      004DD0 90                    3942 	.db 0x90
      004DD1 E2                    3943 	.db 0xe2
      004DD2 95                    3944 	.db 0x95
      004DD3 90                    3945 	.db 0x90
      004DD4 E2                    3946 	.db 0xe2
      004DD5 95                    3947 	.db 0x95
      004DD6 90                    3948 	.db 0x90
      004DD7 E2                    3949 	.db 0xe2
      004DD8 95                    3950 	.db 0x95
      004DD9 90                    3951 	.db 0x90
      004DDA E2                    3952 	.db 0xe2
      004DDB 95                    3953 	.db 0x95
      004DDC 90                    3954 	.db 0x90
      004DDD E2                    3955 	.db 0xe2
      004DDE 95                    3956 	.db 0x95
      004DDF 90                    3957 	.db 0x90
      004DE0 E2                    3958 	.db 0xe2
      004DE1 95                    3959 	.db 0x95
      004DE2 90                    3960 	.db 0x90
      004DE3 E2                    3961 	.db 0xe2
      004DE4 95                    3962 	.db 0x95
      004DE5 90                    3963 	.db 0x90
      004DE6 E2                    3964 	.db 0xe2
      004DE7 95                    3965 	.db 0x95
      004DE8 90                    3966 	.db 0x90
      004DE9 E2                    3967 	.db 0xe2
      004DEA 95                    3968 	.db 0x95
      004DEB 90                    3969 	.db 0x90
      004DEC E2                    3970 	.db 0xe2
      004DED 95                    3971 	.db 0x95
      004DEE 90                    3972 	.db 0x90
      004DEF E2                    3973 	.db 0xe2
      004DF0 95                    3974 	.db 0x95
      004DF1 90                    3975 	.db 0x90
      004DF2 E2                    3976 	.db 0xe2
      004DF3 95                    3977 	.db 0x95
      004DF4 90                    3978 	.db 0x90
      004DF5 E2                    3979 	.db 0xe2
      004DF6 95                    3980 	.db 0x95
      004DF7 90                    3981 	.db 0x90
      004DF8 E2                    3982 	.db 0xe2
      004DF9 95                    3983 	.db 0x95
      004DFA 90                    3984 	.db 0x90
      004DFB E2                    3985 	.db 0xe2
      004DFC 95                    3986 	.db 0x95
      004DFD 90                    3987 	.db 0x90
      004DFE E2                    3988 	.db 0xe2
      004DFF 95                    3989 	.db 0x95
      004E00 90                    3990 	.db 0x90
      004E01 E2                    3991 	.db 0xe2
      004E02 95                    3992 	.db 0x95
      004E03 90                    3993 	.db 0x90
      004E04 E2                    3994 	.db 0xe2
      004E05 95                    3995 	.db 0x95
      004E06 90                    3996 	.db 0x90
      004E07 E2                    3997 	.db 0xe2
      004E08 95                    3998 	.db 0x95
      004E09 90                    3999 	.db 0x90
      004E0A E2                    4000 	.db 0xe2
      004E0B 95                    4001 	.db 0x95
      004E0C 90                    4002 	.db 0x90
      004E0D E2                    4003 	.db 0xe2
      004E0E 95                    4004 	.db 0x95
      004E0F 90                    4005 	.db 0x90
      004E10 E2                    4006 	.db 0xe2
      004E11 95                    4007 	.db 0x95
      004E12 90                    4008 	.db 0x90
      004E13 E2                    4009 	.db 0xe2
      004E14 95                    4010 	.db 0x95
      004E15 90                    4011 	.db 0x90
      004E16 E2                    4012 	.db 0xe2
      004E17 95                    4013 	.db 0x95
      004E18 90                    4014 	.db 0x90
      004E19 E2                    4015 	.db 0xe2
      004E1A 95                    4016 	.db 0x95
      004E1B 90                    4017 	.db 0x90
      004E1C E2                    4018 	.db 0xe2
      004E1D 95                    4019 	.db 0x95
      004E1E 90                    4020 	.db 0x90
      004E1F E2                    4021 	.db 0xe2
      004E20 95                    4022 	.db 0x95
      004E21 90                    4023 	.db 0x90
      004E22 E2                    4024 	.db 0xe2
      004E23 95                    4025 	.db 0x95
      004E24 90                    4026 	.db 0x90
      004E25 E2                    4027 	.db 0xe2
      004E26 95                    4028 	.db 0x95
      004E27 90                    4029 	.db 0x90
      004E28 E2                    4030 	.db 0xe2
      004E29 95                    4031 	.db 0x95
      004E2A 90                    4032 	.db 0x90
      004E2B E2                    4033 	.db 0xe2
      004E2C 95                    4034 	.db 0x95
      004E2D 90                    4035 	.db 0x90
      004E2E E2                    4036 	.db 0xe2
      004E2F 95                    4037 	.db 0x95
      004E30 90                    4038 	.db 0x90
      004E31 E2                    4039 	.db 0xe2
      004E32 95                    4040 	.db 0x95
      004E33 90                    4041 	.db 0x90
      004E34 E2                    4042 	.db 0xe2
      004E35 95                    4043 	.db 0x95
      004E36 90                    4044 	.db 0x90
      004E37 E2                    4045 	.db 0xe2
      004E38 95                    4046 	.db 0x95
      004E39 90                    4047 	.db 0x90
      004E3A E2                    4048 	.db 0xe2
      004E3B 95                    4049 	.db 0x95
      004E3C 90                    4050 	.db 0x90
      004E3D E2                    4051 	.db 0xe2
      004E3E 95                    4052 	.db 0x95
      004E3F 90                    4053 	.db 0x90
      004E40 E2                    4054 	.db 0xe2
      004E41 95                    4055 	.db 0x95
      004E42 90                    4056 	.db 0x90
      004E43 E2                    4057 	.db 0xe2
      004E44 95                    4058 	.db 0x95
      004E45 90                    4059 	.db 0x90
      004E46 E2                    4060 	.db 0xe2
      004E47 95                    4061 	.db 0x95
      004E48 90                    4062 	.db 0x90
      004E49 E2                    4063 	.db 0xe2
      004E4A 95                    4064 	.db 0x95
      004E4B 90                    4065 	.db 0x90
      004E4C E2                    4066 	.db 0xe2
      004E4D 95                    4067 	.db 0x95
      004E4E 9D                    4068 	.db 0x9d
      004E4F 0A                    4069 	.db 0x0a
      004E50 0D                    4070 	.db 0x0d
      004E51 00                    4071 	.db 0x00
                                   4072 	.area CSEG    (CODE)
                                   4073 	.area CONST   (CODE)
      004E52                       4074 ___str_26:
      004E52 E2                    4075 	.db 0xe2
      004E53 94                    4076 	.db 0x94
      004E54 82                    4077 	.db 0x82
      004E55 20 45 6E 74 65 72 20  4078 	.ascii " Enter data (hex, up to 2 characters): "
             64 61 74 61 20 28 68
             65 78 2C 20 75 70 20
             74 6F 20 32 20 63 68
             61 72 61 63 74 65 72
             73 29 3A 20
      004E7C 0A                    4079 	.db 0x0a
      004E7D 0D                    4080 	.db 0x0d
      004E7E 7C                    4081 	.ascii "|"
      004E7F 00                    4082 	.db 0x00
                                   4083 	.area CSEG    (CODE)
                                   4084 	.area CONST   (CODE)
      004E80                       4085 ___str_27:
      004E80 0A                    4086 	.db 0x0a
      004E81 0D                    4087 	.db 0x0d
      004E82 E2                    4088 	.db 0xe2
      004E83 94                    4089 	.db 0x94
      004E84 82                    4090 	.db 0x82
      004E85 20 45 6E 74 65 72 65  4091 	.ascii " Entered data: 0x%03X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 33 58
      004E9A 0A                    4092 	.db 0x0a
      004E9B 0D                    4093 	.db 0x0d
      004E9C 00                    4094 	.db 0x00
                                   4095 	.area CSEG    (CODE)
                                   4096 	.area CONST   (CODE)
      004E9D                       4097 ___str_28:
      004E9D 44 61 74 61 20 6F 75  4098 	.ascii "Data out of Range"
             74 20 6F 66 20 52 61
             6E 67 65
      004EAE 0A                    4099 	.db 0x0a
      004EAF 0D                    4100 	.db 0x0d
      004EB0 00                    4101 	.db 0x00
                                   4102 	.area CSEG    (CODE)
                                   4103 	.area CONST   (CODE)
      004EB1                       4104 ___str_29:
      004EB1 45 72 72 6F 72 3A 20  4105 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      004ED9 0A                    4106 	.db 0x0a
      004EDA 0D                    4107 	.db 0x0d
      004EDB 00                    4108 	.db 0x00
                                   4109 	.area CSEG    (CODE)
                                   4110 	.area CONST   (CODE)
      004EDC                       4111 ___str_30:
      004EDC 45 72 72 6F 72 3A 20  4112 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      004EFC 0A                    4113 	.db 0x0a
      004EFD 0D                    4114 	.db 0x0d
      004EFE 00                    4115 	.db 0x00
                                   4116 	.area CSEG    (CODE)
                                   4117 	.area CONST   (CODE)
      004EFF                       4118 ___str_31:
      004EFF 45 72 72 6F 72 3A 20  4119 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      004F15 0A                    4120 	.db 0x0a
      004F16 0D                    4121 	.db 0x0d
      004F17 00                    4122 	.db 0x00
                                   4123 	.area CSEG    (CODE)
                                   4124 	.area CONST   (CODE)
      004F18                       4125 ___str_32:
      004F18 7C 20 57 72 69 74 69  4126 	.ascii "| Writing at Address 0x%03X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 33 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      004F4A 0A                    4127 	.db 0x0a
      004F4B 0D                    4128 	.db 0x0d
      004F4C 00                    4129 	.db 0x00
                                   4130 	.area CSEG    (CODE)
                                   4131 	.area CONST   (CODE)
      004F4D                       4132 ___str_33:
      004F4D E2                    4133 	.db 0xe2
      004F4E 94                    4134 	.db 0x94
      004F4F 82                    4135 	.db 0x82
      004F50 20 57 72 69 74 65 20  4136 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      004F7F E2                    4137 	.db 0xe2
      004F80 94                    4138 	.db 0x94
      004F81 82                    4139 	.db 0x82
      004F82 0A                    4140 	.db 0x0a
      004F83 0D                    4141 	.db 0x0d
      004F84 00                    4142 	.db 0x00
                                   4143 	.area CSEG    (CODE)
                                   4144 	.area CONST   (CODE)
      004F85                       4145 ___str_34:
      004F85 E2                    4146 	.db 0xe2
      004F86 94                    4147 	.db 0x94
      004F87 94                    4148 	.db 0x94
      004F88 E2                    4149 	.db 0xe2
      004F89 94                    4150 	.db 0x94
      004F8A 80                    4151 	.db 0x80
      004F8B E2                    4152 	.db 0xe2
      004F8C 94                    4153 	.db 0x94
      004F8D 80                    4154 	.db 0x80
      004F8E E2                    4155 	.db 0xe2
      004F8F 94                    4156 	.db 0x94
      004F90 80                    4157 	.db 0x80
      004F91 E2                    4158 	.db 0xe2
      004F92 94                    4159 	.db 0x94
      004F93 80                    4160 	.db 0x80
      004F94 E2                    4161 	.db 0xe2
      004F95 94                    4162 	.db 0x94
      004F96 80                    4163 	.db 0x80
      004F97 E2                    4164 	.db 0xe2
      004F98 94                    4165 	.db 0x94
      004F99 80                    4166 	.db 0x80
      004F9A E2                    4167 	.db 0xe2
      004F9B 94                    4168 	.db 0x94
      004F9C 80                    4169 	.db 0x80
      004F9D E2                    4170 	.db 0xe2
      004F9E 94                    4171 	.db 0x94
      004F9F 80                    4172 	.db 0x80
      004FA0 E2                    4173 	.db 0xe2
      004FA1 94                    4174 	.db 0x94
      004FA2 80                    4175 	.db 0x80
      004FA3 E2                    4176 	.db 0xe2
      004FA4 94                    4177 	.db 0x94
      004FA5 80                    4178 	.db 0x80
      004FA6 E2                    4179 	.db 0xe2
      004FA7 94                    4180 	.db 0x94
      004FA8 80                    4181 	.db 0x80
      004FA9 E2                    4182 	.db 0xe2
      004FAA 94                    4183 	.db 0x94
      004FAB 80                    4184 	.db 0x80
      004FAC E2                    4185 	.db 0xe2
      004FAD 94                    4186 	.db 0x94
      004FAE 80                    4187 	.db 0x80
      004FAF E2                    4188 	.db 0xe2
      004FB0 94                    4189 	.db 0x94
      004FB1 80                    4190 	.db 0x80
      004FB2 E2                    4191 	.db 0xe2
      004FB3 94                    4192 	.db 0x94
      004FB4 80                    4193 	.db 0x80
      004FB5 E2                    4194 	.db 0xe2
      004FB6 94                    4195 	.db 0x94
      004FB7 80                    4196 	.db 0x80
      004FB8 E2                    4197 	.db 0xe2
      004FB9 94                    4198 	.db 0x94
      004FBA 80                    4199 	.db 0x80
      004FBB E2                    4200 	.db 0xe2
      004FBC 94                    4201 	.db 0x94
      004FBD 80                    4202 	.db 0x80
      004FBE E2                    4203 	.db 0xe2
      004FBF 94                    4204 	.db 0x94
      004FC0 80                    4205 	.db 0x80
      004FC1 E2                    4206 	.db 0xe2
      004FC2 94                    4207 	.db 0x94
      004FC3 80                    4208 	.db 0x80
      004FC4 E2                    4209 	.db 0xe2
      004FC5 94                    4210 	.db 0x94
      004FC6 80                    4211 	.db 0x80
      004FC7 E2                    4212 	.db 0xe2
      004FC8 94                    4213 	.db 0x94
      004FC9 80                    4214 	.db 0x80
      004FCA E2                    4215 	.db 0xe2
      004FCB 94                    4216 	.db 0x94
      004FCC 80                    4217 	.db 0x80
      004FCD E2                    4218 	.db 0xe2
      004FCE 94                    4219 	.db 0x94
      004FCF 80                    4220 	.db 0x80
      004FD0 E2                    4221 	.db 0xe2
      004FD1 94                    4222 	.db 0x94
      004FD2 80                    4223 	.db 0x80
      004FD3 E2                    4224 	.db 0xe2
      004FD4 94                    4225 	.db 0x94
      004FD5 80                    4226 	.db 0x80
      004FD6 E2                    4227 	.db 0xe2
      004FD7 94                    4228 	.db 0x94
      004FD8 80                    4229 	.db 0x80
      004FD9 E2                    4230 	.db 0xe2
      004FDA 94                    4231 	.db 0x94
      004FDB 80                    4232 	.db 0x80
      004FDC E2                    4233 	.db 0xe2
      004FDD 94                    4234 	.db 0x94
      004FDE 80                    4235 	.db 0x80
      004FDF E2                    4236 	.db 0xe2
      004FE0 94                    4237 	.db 0x94
      004FE1 80                    4238 	.db 0x80
      004FE2 E2                    4239 	.db 0xe2
      004FE3 94                    4240 	.db 0x94
      004FE4 80                    4241 	.db 0x80
      004FE5 E2                    4242 	.db 0xe2
      004FE6 94                    4243 	.db 0x94
      004FE7 80                    4244 	.db 0x80
      004FE8 E2                    4245 	.db 0xe2
      004FE9 94                    4246 	.db 0x94
      004FEA 80                    4247 	.db 0x80
      004FEB E2                    4248 	.db 0xe2
      004FEC 94                    4249 	.db 0x94
      004FED 80                    4250 	.db 0x80
      004FEE E2                    4251 	.db 0xe2
      004FEF 94                    4252 	.db 0x94
      004FF0 80                    4253 	.db 0x80
      004FF1 E2                    4254 	.db 0xe2
      004FF2 94                    4255 	.db 0x94
      004FF3 80                    4256 	.db 0x80
      004FF4 E2                    4257 	.db 0xe2
      004FF5 94                    4258 	.db 0x94
      004FF6 80                    4259 	.db 0x80
      004FF7 E2                    4260 	.db 0xe2
      004FF8 94                    4261 	.db 0x94
      004FF9 80                    4262 	.db 0x80
      004FFA E2                    4263 	.db 0xe2
      004FFB 94                    4264 	.db 0x94
      004FFC 80                    4265 	.db 0x80
      004FFD E2                    4266 	.db 0xe2
      004FFE 94                    4267 	.db 0x94
      004FFF 80                    4268 	.db 0x80
      005000 E2                    4269 	.db 0xe2
      005001 94                    4270 	.db 0x94
      005002 80                    4271 	.db 0x80
      005003 E2                    4272 	.db 0xe2
      005004 94                    4273 	.db 0x94
      005005 80                    4274 	.db 0x80
      005006 E2                    4275 	.db 0xe2
      005007 94                    4276 	.db 0x94
      005008 80                    4277 	.db 0x80
      005009 E2                    4278 	.db 0xe2
      00500A 94                    4279 	.db 0x94
      00500B 80                    4280 	.db 0x80
      00500C E2                    4281 	.db 0xe2
      00500D 94                    4282 	.db 0x94
      00500E 80                    4283 	.db 0x80
      00500F E2                    4284 	.db 0xe2
      005010 94                    4285 	.db 0x94
      005011 80                    4286 	.db 0x80
      005012 E2                    4287 	.db 0xe2
      005013 94                    4288 	.db 0x94
      005014 80                    4289 	.db 0x80
      005015 E2                    4290 	.db 0xe2
      005016 94                    4291 	.db 0x94
      005017 98                    4292 	.db 0x98
      005018 0A                    4293 	.db 0x0a
      005019 0D                    4294 	.db 0x0d
      00501A 00                    4295 	.db 0x00
                                   4296 	.area CSEG    (CODE)
                                   4297 	.area CONST   (CODE)
      00501B                       4298 ___str_35:
      00501B 63 68 65 63 6B 70 6F  4299 	.ascii "checkpoint 2"
             69 6E 74 20 32
      005027 0A                    4300 	.db 0x0a
      005028 0D                    4301 	.db 0x0d
      005029 00                    4302 	.db 0x00
                                   4303 	.area CSEG    (CODE)
                                   4304 	.area CONST   (CODE)
      00502A                       4305 ___str_36:
      00502A 45 72 72 6F 72 3A 20  4306 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      005057 0A                    4307 	.db 0x0a
      005058 0D                    4308 	.db 0x0d
      005059 00                    4309 	.db 0x00
                                   4310 	.area CSEG    (CODE)
                                   4311 	.area CONST   (CODE)
      00505A                       4312 ___str_37:
      00505A 45 72 72 6F 72 3A 20  4313 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      005086 0A                    4314 	.db 0x0a
      005087 0D                    4315 	.db 0x0d
      005088 00                    4316 	.db 0x00
                                   4317 	.area CSEG    (CODE)
                                   4318 	.area CONST   (CODE)
      005089                       4319 ___str_38:
      005089 E2                    4320 	.db 0xe2
      00508A 94                    4321 	.db 0x94
      00508B 82                    4322 	.db 0x82
      00508C 20 52 65 61 64 69 6E  4323 	.ascii " Reading from Adress: 0x%03X Data: 0x%02X                   "
             67 20 66 72 6F 6D 20
             41 64 72 65 73 73 3A
             20 30 78 25 30 33 58
             20 44 61 74 61 3A 20
             30 78 25 30 32 58 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      0050C8 20                    4324 	.ascii " "
      0050C9 0A                    4325 	.db 0x0a
      0050CA 0D                    4326 	.db 0x0d
      0050CB 00                    4327 	.db 0x00
                                   4328 	.area CSEG    (CODE)
                                   4329 	.area CONST   (CODE)
      0050CC                       4330 ___str_39:
      0050CC 7C 20 30 78 25 30 33  4331 	.ascii "| 0x%03X : 0x%02X "
             58 20 3A 20 30 78 25
             30 32 58 20
      0050DE 0A                    4332 	.db 0x0a
      0050DF 0D                    4333 	.db 0x0d
      0050E0 00                    4334 	.db 0x00
                                   4335 	.area CSEG    (CODE)
                                   4336 	.area CONST   (CODE)
      0050E1                       4337 ___str_40:
      0050E1 E2                    4338 	.db 0xe2
      0050E2 94                    4339 	.db 0x94
      0050E3 82                    4340 	.db 0x82
      0050E4 20 52 65 61 64 20 73  4341 	.ascii " Read successful!                 "
             75 63 63 65 73 73 66
             75 6C 21 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20
      005106 E2                    4342 	.db 0xe2
      005107 94                    4343 	.db 0x94
      005108 82                    4344 	.db 0x82
      005109 0A                    4345 	.db 0x0a
      00510A 0D                    4346 	.db 0x0d
      00510B 00                    4347 	.db 0x00
                                   4348 	.area CSEG    (CODE)
                                   4349 	.area CONST   (CODE)
      00510C                       4350 ___str_41:
      00510C 41 43 4B 20 44 49 44  4351 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      00511E 0A                    4352 	.db 0x0a
      00511F 0D                    4353 	.db 0x0d
      005120 00                    4354 	.db 0x00
                                   4355 	.area CSEG    (CODE)
                                   4356 	.area CONST   (CODE)
      005121                       4357 ___str_42:
      005121 57 72 69 74 69 6E 67  4358 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      005146 0A                    4359 	.db 0x0a
      005147 0D                    4360 	.db 0x0d
      005148 00                    4361 	.db 0x00
                                   4362 	.area CSEG    (CODE)
                                   4363 	.area CONST   (CODE)
      005149                       4364 ___str_43:
      005149 52 65 61 64 20 62 61  4365 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      00516E 0A                    4366 	.db 0x0a
      00516F 0D                    4367 	.db 0x0d
      005170 00                    4368 	.db 0x00
                                   4369 	.area CSEG    (CODE)
                                   4370 	.area CONST   (CODE)
      005171                       4371 ___str_44:
      005171 4D 41 54 43 48 20 2D  4372 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      00518F 0A                    4373 	.db 0x0a
      005190 0D                    4374 	.db 0x0d
      005191 00                    4375 	.db 0x00
                                   4376 	.area CSEG    (CODE)
                                   4377 	.area CONST   (CODE)
      005192                       4378 ___str_45:
      005192 45 52 52 4F 52 20 2D  4379 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      0051A8 0A                    4380 	.db 0x0a
      0051A9 0D                    4381 	.db 0x0d
      0051AA 00                    4382 	.db 0x00
                                   4383 	.area CSEG    (CODE)
                                   4384 	.area XINIT   (CODE)
      0051B6                       4385 __xinit__address_range_flag:
      0051B6 01 00                 4386 	.byte #0x01, #0x00	;  1
      0051B8                       4387 __xinit__data_range_flag:
      0051B8 01 00                 4388 	.byte #0x01, #0x00	;  1
      0051BA                       4389 __xinit__block:
      0051BA 00 00                 4390 	.byte #0x00, #0x00	; 0
                                   4391 	.area CABS    (ABS,CODE)
