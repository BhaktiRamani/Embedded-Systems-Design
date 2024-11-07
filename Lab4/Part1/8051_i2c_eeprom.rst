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
      000402                        473 _putchar_charToSend_65536_19:
      000402                        474 	.ds 2
      000404                        475 _take_address_input_65537_33:
      000404                        476 	.ds 3
      000407                        477 _take_data_input_65537_37:
      000407                        478 	.ds 3
      00040A                        479 _eeprom_write_PARM_2:
      00040A                        480 	.ds 1
      00040B                        481 _eeprom_write_address_65536_40:
      00040B                        482 	.ds 2
      00040D                        483 _eeprom_read_address_65536_47:
      00040D                        484 	.ds 2
      00040F                        485 _i2c_write_data_65536_52:
      00040F                        486 	.ds 1
      000410                        487 _i2c_read_ACK_65536_57:
      000410                        488 	.ds 2
      000412                        489 _i2c_read_buff_65536_58:
      000412                        490 	.ds 1
                                    491 ;--------------------------------------------------------
                                    492 ; absolute external ram data
                                    493 ;--------------------------------------------------------
                                    494 	.area XABS    (ABS,XDATA)
                                    495 ;--------------------------------------------------------
                                    496 ; external initialized ram data
                                    497 ;--------------------------------------------------------
                                    498 	.area XISEG   (XDATA)
                                    499 	.area HOME    (CODE)
                                    500 	.area GSINIT0 (CODE)
                                    501 	.area GSINIT1 (CODE)
                                    502 	.area GSINIT2 (CODE)
                                    503 	.area GSINIT3 (CODE)
                                    504 	.area GSINIT4 (CODE)
                                    505 	.area GSINIT5 (CODE)
                                    506 	.area GSINIT  (CODE)
                                    507 	.area GSFINAL (CODE)
                                    508 	.area CSEG    (CODE)
                                    509 ;--------------------------------------------------------
                                    510 ; interrupt vector 
                                    511 ;--------------------------------------------------------
                                    512 	.area HOME    (CODE)
      003000                        513 __interrupt_vect:
      003000 02 30 06         [24]  514 	ljmp	__sdcc_gsinit_startup
                                    515 ;--------------------------------------------------------
                                    516 ; global & static initialisations
                                    517 ;--------------------------------------------------------
                                    518 	.area HOME    (CODE)
                                    519 	.area GSINIT  (CODE)
                                    520 	.area GSFINAL (CODE)
                                    521 	.area GSINIT  (CODE)
                                    522 	.globl __sdcc_gsinit_startup
                                    523 	.globl __sdcc_program_startup
                                    524 	.globl __start__stack
                                    525 	.globl __mcs51_genXINIT
                                    526 	.globl __mcs51_genXRAMCLEAR
                                    527 	.globl __mcs51_genRAMCLEAR
                                    528 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  529 	ljmp	__sdcc_program_startup
                                    530 ;--------------------------------------------------------
                                    531 ; Home
                                    532 ;--------------------------------------------------------
                                    533 	.area HOME    (CODE)
                                    534 	.area HOME    (CODE)
      003003                        535 __sdcc_program_startup:
      003003 02 31 A2         [24]  536 	ljmp	_main
                                    537 ;	return from main will return to caller
                                    538 ;--------------------------------------------------------
                                    539 ; code
                                    540 ;--------------------------------------------------------
                                    541 	.area CSEG    (CODE)
                                    542 ;------------------------------------------------------------
                                    543 ;Allocation info for local variables in function 'putchar'
                                    544 ;------------------------------------------------------------
                                    545 ;charToSend                Allocated with name '_putchar_charToSend_65536_19'
                                    546 ;------------------------------------------------------------
                                    547 ;	8051_i2c_eeprom.c:25: int putchar(int charToSend) {
                                    548 ;	-----------------------------------------
                                    549 ;	 function putchar
                                    550 ;	-----------------------------------------
      003062                        551 _putchar:
                           000007   552 	ar7 = 0x07
                           000006   553 	ar6 = 0x06
                           000005   554 	ar5 = 0x05
                           000004   555 	ar4 = 0x04
                           000003   556 	ar3 = 0x03
                           000002   557 	ar2 = 0x02
                           000001   558 	ar1 = 0x01
                           000000   559 	ar0 = 0x00
      003062 AF 83            [24]  560 	mov	r7,dph
      003064 E5 82            [12]  561 	mov	a,dpl
      003066 90 04 02         [24]  562 	mov	dptr,#_putchar_charToSend_65536_19
      003069 F0               [24]  563 	movx	@dptr,a
      00306A EF               [12]  564 	mov	a,r7
      00306B A3               [24]  565 	inc	dptr
      00306C F0               [24]  566 	movx	@dptr,a
                                    567 ;	8051_i2c_eeprom.c:26: SBUF = charToSend;  // Send character to serial buffer
      00306D 90 04 02         [24]  568 	mov	dptr,#_putchar_charToSend_65536_19
      003070 E0               [24]  569 	movx	a,@dptr
      003071 FE               [12]  570 	mov	r6,a
      003072 A3               [24]  571 	inc	dptr
      003073 E0               [24]  572 	movx	a,@dptr
      003074 FF               [12]  573 	mov	r7,a
      003075 8E 99            [24]  574 	mov	_SBUF,r6
                                    575 ;	8051_i2c_eeprom.c:27: while (!TI);        // Wait for transmission to complete
      003077                        576 00101$:
                                    577 ;	8051_i2c_eeprom.c:28: TI = 0;            // Clear transmission interrupt flag
                                    578 ;	assignBit
      003077 10 99 02         [24]  579 	jbc	_TI,00114$
      00307A 80 FB            [24]  580 	sjmp	00101$
      00307C                        581 00114$:
                                    582 ;	8051_i2c_eeprom.c:29: return charToSend;
      00307C 8E 82            [24]  583 	mov	dpl,r6
      00307E 8F 83            [24]  584 	mov	dph,r7
                                    585 ;	8051_i2c_eeprom.c:30: }
      003080 22               [24]  586 	ret
                                    587 ;------------------------------------------------------------
                                    588 ;Allocation info for local variables in function 'getchar'
                                    589 ;------------------------------------------------------------
                                    590 ;	8051_i2c_eeprom.c:32: int getchar(void) {
                                    591 ;	-----------------------------------------
                                    592 ;	 function getchar
                                    593 ;	-----------------------------------------
      003081                        594 _getchar:
                                    595 ;	8051_i2c_eeprom.c:33: while (!RI);        // Wait for reception to complete
      003081                        596 00101$:
                                    597 ;	8051_i2c_eeprom.c:34: RI = 0;            // Clear reception interrupt flag
                                    598 ;	assignBit
      003081 10 98 02         [24]  599 	jbc	_RI,00114$
      003084 80 FB            [24]  600 	sjmp	00101$
      003086                        601 00114$:
                                    602 ;	8051_i2c_eeprom.c:35: return SBUF;       // Return received character
      003086 AE 99            [24]  603 	mov	r6,_SBUF
      003088 7F 00            [12]  604 	mov	r7,#0x00
      00308A 8E 82            [24]  605 	mov	dpl,r6
      00308C 8F 83            [24]  606 	mov	dph,r7
                                    607 ;	8051_i2c_eeprom.c:36: }
      00308E 22               [24]  608 	ret
                                    609 ;------------------------------------------------------------
                                    610 ;Allocation info for local variables in function 'ui'
                                    611 ;------------------------------------------------------------
                                    612 ;	8051_i2c_eeprom.c:38: void ui()
                                    613 ;	-----------------------------------------
                                    614 ;	 function ui
                                    615 ;	-----------------------------------------
      00308F                        616 _ui:
                                    617 ;	8051_i2c_eeprom.c:40: printf("\n╔════════════════════════════════════════════════════════╗\n\r");
      00308F 74 F8            [12]  618 	mov	a,#___str_0
      003091 C0 E0            [24]  619 	push	acc
      003093 74 41            [12]  620 	mov	a,#(___str_0 >> 8)
      003095 C0 E0            [24]  621 	push	acc
      003097 74 80            [12]  622 	mov	a,#0x80
      003099 C0 E0            [24]  623 	push	acc
      00309B 12 37 96         [24]  624 	lcall	_printf
      00309E 15 81            [12]  625 	dec	sp
      0030A0 15 81            [12]  626 	dec	sp
      0030A2 15 81            [12]  627 	dec	sp
                                    628 ;	8051_i2c_eeprom.c:41: printf("║           I2C Memory Management System v1.0             ║\n\r");
      0030A4 74 AA            [12]  629 	mov	a,#___str_1
      0030A6 C0 E0            [24]  630 	push	acc
      0030A8 74 42            [12]  631 	mov	a,#(___str_1 >> 8)
      0030AA C0 E0            [24]  632 	push	acc
      0030AC 74 80            [12]  633 	mov	a,#0x80
      0030AE C0 E0            [24]  634 	push	acc
      0030B0 12 37 96         [24]  635 	lcall	_printf
      0030B3 15 81            [12]  636 	dec	sp
      0030B5 15 81            [12]  637 	dec	sp
      0030B7 15 81            [12]  638 	dec	sp
                                    639 ;	8051_i2c_eeprom.c:42: printf("╚════════════════════════════════════════════════════════╝\n\r");
      0030B9 74 EC            [12]  640 	mov	a,#___str_2
      0030BB C0 E0            [24]  641 	push	acc
      0030BD 74 42            [12]  642 	mov	a,#(___str_2 >> 8)
      0030BF C0 E0            [24]  643 	push	acc
      0030C1 74 80            [12]  644 	mov	a,#0x80
      0030C3 C0 E0            [24]  645 	push	acc
      0030C5 12 37 96         [24]  646 	lcall	_printf
      0030C8 15 81            [12]  647 	dec	sp
      0030CA 15 81            [12]  648 	dec	sp
      0030CC 15 81            [12]  649 	dec	sp
                                    650 ;	8051_i2c_eeprom.c:44: }
      0030CE 22               [24]  651 	ret
                                    652 ;------------------------------------------------------------
                                    653 ;Allocation info for local variables in function 'command_menu'
                                    654 ;------------------------------------------------------------
                                    655 ;	8051_i2c_eeprom.c:46: void command_menu()
                                    656 ;	-----------------------------------------
                                    657 ;	 function command_menu
                                    658 ;	-----------------------------------------
      0030CF                        659 _command_menu:
                                    660 ;	8051_i2c_eeprom.c:48: printf("\n\r┌────────────┬────────────────────────────────────────────┐\n\r");
      0030CF 74 9D            [12]  661 	mov	a,#___str_3
      0030D1 C0 E0            [24]  662 	push	acc
      0030D3 74 43            [12]  663 	mov	a,#(___str_3 >> 8)
      0030D5 C0 E0            [24]  664 	push	acc
      0030D7 74 80            [12]  665 	mov	a,#0x80
      0030D9 C0 E0            [24]  666 	push	acc
      0030DB 12 37 96         [24]  667 	lcall	_printf
      0030DE 15 81            [12]  668 	dec	sp
      0030E0 15 81            [12]  669 	dec	sp
      0030E2 15 81            [12]  670 	dec	sp
                                    671 ;	8051_i2c_eeprom.c:49: printf("│  Command   │               Description                   │\n\r");
      0030E4 74 53            [12]  672 	mov	a,#___str_4
      0030E6 C0 E0            [24]  673 	push	acc
      0030E8 74 44            [12]  674 	mov	a,#(___str_4 >> 8)
      0030EA C0 E0            [24]  675 	push	acc
      0030EC 74 80            [12]  676 	mov	a,#0x80
      0030EE C0 E0            [24]  677 	push	acc
      0030F0 12 37 96         [24]  678 	lcall	_printf
      0030F3 15 81            [12]  679 	dec	sp
      0030F5 15 81            [12]  680 	dec	sp
      0030F7 15 81            [12]  681 	dec	sp
                                    682 ;	8051_i2c_eeprom.c:50: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      0030F9 74 98            [12]  683 	mov	a,#___str_5
      0030FB C0 E0            [24]  684 	push	acc
      0030FD 74 44            [12]  685 	mov	a,#(___str_5 >> 8)
      0030FF C0 E0            [24]  686 	push	acc
      003101 74 80            [12]  687 	mov	a,#0x80
      003103 C0 E0            [24]  688 	push	acc
      003105 12 37 96         [24]  689 	lcall	_printf
      003108 15 81            [12]  690 	dec	sp
      00310A 15 81            [12]  691 	dec	sp
      00310C 15 81            [12]  692 	dec	sp
                                    693 ;	8051_i2c_eeprom.c:51: printf("│     R      │ Read from address                          │\n\r");
      00310E 74 4C            [12]  694 	mov	a,#___str_6
      003110 C0 E0            [24]  695 	push	acc
      003112 74 45            [12]  696 	mov	a,#(___str_6 >> 8)
      003114 C0 E0            [24]  697 	push	acc
      003116 74 80            [12]  698 	mov	a,#0x80
      003118 C0 E0            [24]  699 	push	acc
      00311A 12 37 96         [24]  700 	lcall	_printf
      00311D 15 81            [12]  701 	dec	sp
      00311F 15 81            [12]  702 	dec	sp
      003121 15 81            [12]  703 	dec	sp
                                    704 ;	8051_i2c_eeprom.c:52: printf("│     W      │ Write data to address                      │\n\r");
      003123 74 90            [12]  705 	mov	a,#___str_7
      003125 C0 E0            [24]  706 	push	acc
      003127 74 45            [12]  707 	mov	a,#(___str_7 >> 8)
      003129 C0 E0            [24]  708 	push	acc
      00312B 74 80            [12]  709 	mov	a,#0x80
      00312D C0 E0            [24]  710 	push	acc
      00312F 12 37 96         [24]  711 	lcall	_printf
      003132 15 81            [12]  712 	dec	sp
      003134 15 81            [12]  713 	dec	sp
      003136 15 81            [12]  714 	dec	sp
                                    715 ;	8051_i2c_eeprom.c:53: printf("│     H      │ Display hex dump                           │\n\r");
      003138 74 D4            [12]  716 	mov	a,#___str_8
      00313A C0 E0            [24]  717 	push	acc
      00313C 74 45            [12]  718 	mov	a,#(___str_8 >> 8)
      00313E C0 E0            [24]  719 	push	acc
      003140 74 80            [12]  720 	mov	a,#0x80
      003142 C0 E0            [24]  721 	push	acc
      003144 12 37 96         [24]  722 	lcall	_printf
      003147 15 81            [12]  723 	dec	sp
      003149 15 81            [12]  724 	dec	sp
      00314B 15 81            [12]  725 	dec	sp
                                    726 ;	8051_i2c_eeprom.c:54: printf("│     X      │ Reset memory system                        │\n\r");
      00314D 74 18            [12]  727 	mov	a,#___str_9
      00314F C0 E0            [24]  728 	push	acc
      003151 74 46            [12]  729 	mov	a,#(___str_9 >> 8)
      003153 C0 E0            [24]  730 	push	acc
      003155 74 80            [12]  731 	mov	a,#0x80
      003157 C0 E0            [24]  732 	push	acc
      003159 12 37 96         [24]  733 	lcall	_printf
      00315C 15 81            [12]  734 	dec	sp
      00315E 15 81            [12]  735 	dec	sp
      003160 15 81            [12]  736 	dec	sp
                                    737 ;	8051_i2c_eeprom.c:55: printf("│     ?      │ Display this help menu                     │\n\r");
      003162 74 5C            [12]  738 	mov	a,#___str_10
      003164 C0 E0            [24]  739 	push	acc
      003166 74 46            [12]  740 	mov	a,#(___str_10 >> 8)
      003168 C0 E0            [24]  741 	push	acc
      00316A 74 80            [12]  742 	mov	a,#0x80
      00316C C0 E0            [24]  743 	push	acc
      00316E 12 37 96         [24]  744 	lcall	_printf
      003171 15 81            [12]  745 	dec	sp
      003173 15 81            [12]  746 	dec	sp
      003175 15 81            [12]  747 	dec	sp
                                    748 ;	8051_i2c_eeprom.c:56: printf("│     Q      │ Quit program                              │\n\r");
      003177 74 A0            [12]  749 	mov	a,#___str_11
      003179 C0 E0            [24]  750 	push	acc
      00317B 74 46            [12]  751 	mov	a,#(___str_11 >> 8)
      00317D C0 E0            [24]  752 	push	acc
      00317F 74 80            [12]  753 	mov	a,#0x80
      003181 C0 E0            [24]  754 	push	acc
      003183 12 37 96         [24]  755 	lcall	_printf
      003186 15 81            [12]  756 	dec	sp
      003188 15 81            [12]  757 	dec	sp
      00318A 15 81            [12]  758 	dec	sp
                                    759 ;	8051_i2c_eeprom.c:57: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      00318C 74 E3            [12]  760 	mov	a,#___str_12
      00318E C0 E0            [24]  761 	push	acc
      003190 74 46            [12]  762 	mov	a,#(___str_12 >> 8)
      003192 C0 E0            [24]  763 	push	acc
      003194 74 80            [12]  764 	mov	a,#0x80
      003196 C0 E0            [24]  765 	push	acc
      003198 12 37 96         [24]  766 	lcall	_printf
      00319B 15 81            [12]  767 	dec	sp
      00319D 15 81            [12]  768 	dec	sp
      00319F 15 81            [12]  769 	dec	sp
                                    770 ;	8051_i2c_eeprom.c:60: }
      0031A1 22               [24]  771 	ret
                                    772 ;------------------------------------------------------------
                                    773 ;Allocation info for local variables in function 'main'
                                    774 ;------------------------------------------------------------
                                    775 ;user_input                Allocated with name '_main_user_input_131072_26'
                                    776 ;address                   Allocated with name '_main_address_262145_29'
                                    777 ;data                      Allocated with name '_main_data_262146_30'
                                    778 ;address                   Allocated with name '_main_address_262144_31'
                                    779 ;------------------------------------------------------------
                                    780 ;	8051_i2c_eeprom.c:61: int main()
                                    781 ;	-----------------------------------------
                                    782 ;	 function main
                                    783 ;	-----------------------------------------
      0031A2                        784 _main:
                                    785 ;	8051_i2c_eeprom.c:64: P1 &= ~(1<<3);  // Set P1.3 as output
      0031A2 53 90 F7         [24]  786 	anl	_P1,#0xf7
                                    787 ;	8051_i2c_eeprom.c:65: P1 &= ~(1<<4);  // Set P1.4 as output
      0031A5 53 90 EF         [24]  788 	anl	_P1,#0xef
                                    789 ;	8051_i2c_eeprom.c:66: ui();
      0031A8 12 30 8F         [24]  790 	lcall	_ui
                                    791 ;	8051_i2c_eeprom.c:67: command_menu();
      0031AB 12 30 CF         [24]  792 	lcall	_command_menu
                                    793 ;	8051_i2c_eeprom.c:68: while(1)
      0031AE                        794 00107$:
                                    795 ;	8051_i2c_eeprom.c:70: char user_input = getchar();
      0031AE 12 30 81         [24]  796 	lcall	_getchar
      0031B1 AE 82            [24]  797 	mov	r6,dpl
                                    798 ;	8051_i2c_eeprom.c:71: printf("$ %c\n\r", user_input);
      0031B3 8E 05            [24]  799 	mov	ar5,r6
      0031B5 7F 00            [12]  800 	mov	r7,#0x00
      0031B7 C0 06            [24]  801 	push	ar6
      0031B9 C0 05            [24]  802 	push	ar5
      0031BB C0 07            [24]  803 	push	ar7
      0031BD 74 97            [12]  804 	mov	a,#___str_13
      0031BF C0 E0            [24]  805 	push	acc
      0031C1 74 47            [12]  806 	mov	a,#(___str_13 >> 8)
      0031C3 C0 E0            [24]  807 	push	acc
      0031C5 74 80            [12]  808 	mov	a,#0x80
      0031C7 C0 E0            [24]  809 	push	acc
      0031C9 12 37 96         [24]  810 	lcall	_printf
      0031CC E5 81            [12]  811 	mov	a,sp
      0031CE 24 FB            [12]  812 	add	a,#0xfb
      0031D0 F5 81            [12]  813 	mov	sp,a
      0031D2 D0 06            [24]  814 	pop	ar6
                                    815 ;	8051_i2c_eeprom.c:72: switch(user_input)
      0031D4 BE 3F 03         [24]  816 	cjne	r6,#0x3f,00127$
      0031D7 02 32 50         [24]  817 	ljmp	00103$
      0031DA                        818 00127$:
      0031DA BE 52 02         [24]  819 	cjne	r6,#0x52,00128$
      0031DD 80 68            [24]  820 	sjmp	00102$
      0031DF                        821 00128$:
      0031DF BE 57 74         [24]  822 	cjne	r6,#0x57,00104$
                                    823 ;	8051_i2c_eeprom.c:76: printf("\n┌─────────────── WRITE OPERATION ──────────────┐\n");
      0031E2 74 9E            [12]  824 	mov	a,#___str_14
      0031E4 C0 E0            [24]  825 	push	acc
      0031E6 74 47            [12]  826 	mov	a,#(___str_14 >> 8)
      0031E8 C0 E0            [24]  827 	push	acc
      0031EA 74 80            [12]  828 	mov	a,#0x80
      0031EC C0 E0            [24]  829 	push	acc
      0031EE 12 37 96         [24]  830 	lcall	_printf
      0031F1 15 81            [12]  831 	dec	sp
      0031F3 15 81            [12]  832 	dec	sp
      0031F5 15 81            [12]  833 	dec	sp
                                    834 ;	8051_i2c_eeprom.c:78: address = take_address(); 
      0031F7 12 32 6E         [24]  835 	lcall	_take_address
      0031FA AE 82            [24]  836 	mov	r6,dpl
      0031FC AF 83            [24]  837 	mov	r7,dph
                                    838 ;	8051_i2c_eeprom.c:80: data = (unsigned char)take_data();
      0031FE C0 07            [24]  839 	push	ar7
      003200 C0 06            [24]  840 	push	ar6
      003202 12 32 EE         [24]  841 	lcall	_take_data
      003205 AC 82            [24]  842 	mov	r4,dpl
      003207 D0 06            [24]  843 	pop	ar6
      003209 D0 07            [24]  844 	pop	ar7
                                    845 ;	8051_i2c_eeprom.c:81: printf("| Writing at Address %d Data %c          |\n\r", address, data);
      00320B 8C 03            [24]  846 	mov	ar3,r4
      00320D 7D 00            [12]  847 	mov	r5,#0x00
      00320F C0 07            [24]  848 	push	ar7
      003211 C0 06            [24]  849 	push	ar6
      003213 C0 04            [24]  850 	push	ar4
      003215 C0 03            [24]  851 	push	ar3
      003217 C0 05            [24]  852 	push	ar5
      003219 C0 06            [24]  853 	push	ar6
      00321B C0 07            [24]  854 	push	ar7
      00321D 74 0F            [12]  855 	mov	a,#___str_15
      00321F C0 E0            [24]  856 	push	acc
      003221 74 48            [12]  857 	mov	a,#(___str_15 >> 8)
      003223 C0 E0            [24]  858 	push	acc
      003225 74 80            [12]  859 	mov	a,#0x80
      003227 C0 E0            [24]  860 	push	acc
      003229 12 37 96         [24]  861 	lcall	_printf
      00322C E5 81            [12]  862 	mov	a,sp
      00322E 24 F9            [12]  863 	add	a,#0xf9
      003230 F5 81            [12]  864 	mov	sp,a
      003232 D0 04            [24]  865 	pop	ar4
      003234 D0 06            [24]  866 	pop	ar6
      003236 D0 07            [24]  867 	pop	ar7
                                    868 ;	8051_i2c_eeprom.c:82: eeprom_write(address, data);
      003238 90 04 0A         [24]  869 	mov	dptr,#_eeprom_write_PARM_2
      00323B EC               [12]  870 	mov	a,r4
      00323C F0               [24]  871 	movx	@dptr,a
      00323D 8E 82            [24]  872 	mov	dpl,r6
      00323F 8F 83            [24]  873 	mov	dph,r7
      003241 12 33 6E         [24]  874 	lcall	_eeprom_write
                                    875 ;	8051_i2c_eeprom.c:83: break;
      003244 02 31 AE         [24]  876 	ljmp	00107$
                                    877 ;	8051_i2c_eeprom.c:85: case 'R':
      003247                        878 00102$:
                                    879 ;	8051_i2c_eeprom.c:88: address = take_address(); 
      003247 12 32 6E         [24]  880 	lcall	_take_address
                                    881 ;	8051_i2c_eeprom.c:89: eeprom_read(address);
      00324A 12 34 A7         [24]  882 	lcall	_eeprom_read
                                    883 ;	8051_i2c_eeprom.c:90: break;
      00324D 02 31 AE         [24]  884 	ljmp	00107$
                                    885 ;	8051_i2c_eeprom.c:93: case '?':
      003250                        886 00103$:
                                    887 ;	8051_i2c_eeprom.c:94: command_menu();
      003250 12 30 CF         [24]  888 	lcall	_command_menu
                                    889 ;	8051_i2c_eeprom.c:95: break;
      003253 02 31 AE         [24]  890 	ljmp	00107$
                                    891 ;	8051_i2c_eeprom.c:97: default:
      003256                        892 00104$:
                                    893 ;	8051_i2c_eeprom.c:98: printf("INVALID INPUT\n\r");
      003256 74 3C            [12]  894 	mov	a,#___str_16
      003258 C0 E0            [24]  895 	push	acc
      00325A 74 48            [12]  896 	mov	a,#(___str_16 >> 8)
      00325C C0 E0            [24]  897 	push	acc
      00325E 74 80            [12]  898 	mov	a,#0x80
      003260 C0 E0            [24]  899 	push	acc
      003262 12 37 96         [24]  900 	lcall	_printf
      003265 15 81            [12]  901 	dec	sp
      003267 15 81            [12]  902 	dec	sp
      003269 15 81            [12]  903 	dec	sp
                                    904 ;	8051_i2c_eeprom.c:100: }
                                    905 ;	8051_i2c_eeprom.c:103: }
      00326B 02 31 AE         [24]  906 	ljmp	00107$
                                    907 ;------------------------------------------------------------
                                    908 ;Allocation info for local variables in function 'take_address'
                                    909 ;------------------------------------------------------------
                                    910 ;input                     Allocated with name '_take_address_input_65537_33'
                                    911 ;i                         Allocated with name '_take_address_i_65537_33'
                                    912 ;address                   Allocated with name '_take_address_address_65538_35'
                                    913 ;------------------------------------------------------------
                                    914 ;	8051_i2c_eeprom.c:105: int take_address()
                                    915 ;	-----------------------------------------
                                    916 ;	 function take_address
                                    917 ;	-----------------------------------------
      00326E                        918 _take_address:
                                    919 ;	8051_i2c_eeprom.c:107: printf("│ Enter address (hex): \n\r");
      00326E 74 4C            [12]  920 	mov	a,#___str_17
      003270 C0 E0            [24]  921 	push	acc
      003272 74 48            [12]  922 	mov	a,#(___str_17 >> 8)
      003274 C0 E0            [24]  923 	push	acc
      003276 74 80            [12]  924 	mov	a,#0x80
      003278 C0 E0            [24]  925 	push	acc
      00327A 12 37 96         [24]  926 	lcall	_printf
      00327D 15 81            [12]  927 	dec	sp
      00327F 15 81            [12]  928 	dec	sp
      003281 15 81            [12]  929 	dec	sp
                                    930 ;	8051_i2c_eeprom.c:110: while(i<3)
      003283 7E 00            [12]  931 	mov	r6,#0x00
      003285 7F 00            [12]  932 	mov	r7,#0x00
      003287                        933 00101$:
      003287 C3               [12]  934 	clr	c
      003288 EE               [12]  935 	mov	a,r6
      003289 94 03            [12]  936 	subb	a,#0x03
      00328B EF               [12]  937 	mov	a,r7
      00328C 64 80            [12]  938 	xrl	a,#0x80
      00328E 94 80            [12]  939 	subb	a,#0x80
      003290 50 33            [24]  940 	jnc	00103$
                                    941 ;	8051_i2c_eeprom.c:112: input[i] = getchar();
      003292 EE               [12]  942 	mov	a,r6
      003293 24 04            [12]  943 	add	a,#_take_address_input_65537_33
      003295 FC               [12]  944 	mov	r4,a
      003296 EF               [12]  945 	mov	a,r7
      003297 34 04            [12]  946 	addc	a,#(_take_address_input_65537_33 >> 8)
      003299 FD               [12]  947 	mov	r5,a
      00329A C0 07            [24]  948 	push	ar7
      00329C C0 06            [24]  949 	push	ar6
      00329E C0 05            [24]  950 	push	ar5
      0032A0 C0 04            [24]  951 	push	ar4
      0032A2 12 30 81         [24]  952 	lcall	_getchar
      0032A5 AA 82            [24]  953 	mov	r2,dpl
      0032A7 D0 04            [24]  954 	pop	ar4
      0032A9 D0 05            [24]  955 	pop	ar5
      0032AB 8C 82            [24]  956 	mov	dpl,r4
      0032AD 8D 83            [24]  957 	mov	dph,r5
      0032AF EA               [12]  958 	mov	a,r2
      0032B0 F0               [24]  959 	movx	@dptr,a
                                    960 ;	8051_i2c_eeprom.c:113: putchar(input[i]);
      0032B1 7D 00            [12]  961 	mov	r5,#0x00
      0032B3 8A 82            [24]  962 	mov	dpl,r2
      0032B5 8D 83            [24]  963 	mov	dph,r5
      0032B7 12 30 62         [24]  964 	lcall	_putchar
      0032BA D0 06            [24]  965 	pop	ar6
      0032BC D0 07            [24]  966 	pop	ar7
                                    967 ;	8051_i2c_eeprom.c:114: i++;
      0032BE 0E               [12]  968 	inc	r6
      0032BF BE 00 C5         [24]  969 	cjne	r6,#0x00,00101$
      0032C2 0F               [12]  970 	inc	r7
      0032C3 80 C2            [24]  971 	sjmp	00101$
      0032C5                        972 00103$:
                                    973 ;	8051_i2c_eeprom.c:116: unsigned int address = input[0] - '0' + input[1] - '0' + input[2] - '0';
      0032C5 90 04 04         [24]  974 	mov	dptr,#_take_address_input_65537_33
      0032C8 E0               [24]  975 	movx	a,@dptr
      0032C9 FF               [12]  976 	mov	r7,a
      0032CA 7E 00            [12]  977 	mov	r6,#0x00
      0032CC 90 04 05         [24]  978 	mov	dptr,#(_take_address_input_65537_33 + 0x0001)
      0032CF E0               [24]  979 	movx	a,@dptr
      0032D0 7C 00            [12]  980 	mov	r4,#0x00
      0032D2 2F               [12]  981 	add	a,r7
      0032D3 FF               [12]  982 	mov	r7,a
      0032D4 EC               [12]  983 	mov	a,r4
      0032D5 3E               [12]  984 	addc	a,r6
      0032D6 FE               [12]  985 	mov	r6,a
      0032D7 90 04 06         [24]  986 	mov	dptr,#(_take_address_input_65537_33 + 0x0002)
      0032DA E0               [24]  987 	movx	a,@dptr
      0032DB 7C 00            [12]  988 	mov	r4,#0x00
      0032DD 2F               [12]  989 	add	a,r7
      0032DE FF               [12]  990 	mov	r7,a
      0032DF EC               [12]  991 	mov	a,r4
      0032E0 3E               [12]  992 	addc	a,r6
      0032E1 FE               [12]  993 	mov	r6,a
      0032E2 EF               [12]  994 	mov	a,r7
      0032E3 24 70            [12]  995 	add	a,#0x70
      0032E5 FF               [12]  996 	mov	r7,a
      0032E6 EE               [12]  997 	mov	a,r6
      0032E7 34 FF            [12]  998 	addc	a,#0xff
                                    999 ;	8051_i2c_eeprom.c:117: return address;
                                   1000 ;	8051_i2c_eeprom.c:118: }
      0032E9 8F 82            [24] 1001 	mov	dpl,r7
      0032EB F5 83            [12] 1002 	mov	dph,a
      0032ED 22               [24] 1003 	ret
                                   1004 ;------------------------------------------------------------
                                   1005 ;Allocation info for local variables in function 'take_data'
                                   1006 ;------------------------------------------------------------
                                   1007 ;input                     Allocated with name '_take_data_input_65537_37'
                                   1008 ;i                         Allocated with name '_take_data_i_65537_37'
                                   1009 ;data                      Allocated with name '_take_data_data_65538_39'
                                   1010 ;------------------------------------------------------------
                                   1011 ;	8051_i2c_eeprom.c:119: int take_data()
                                   1012 ;	-----------------------------------------
                                   1013 ;	 function take_data
                                   1014 ;	-----------------------------------------
      0032EE                       1015 _take_data:
                                   1016 ;	8051_i2c_eeprom.c:121: printf("│ Enter data (hex): \n\r");
      0032EE 74 68            [12] 1017 	mov	a,#___str_18
      0032F0 C0 E0            [24] 1018 	push	acc
      0032F2 74 48            [12] 1019 	mov	a,#(___str_18 >> 8)
      0032F4 C0 E0            [24] 1020 	push	acc
      0032F6 74 80            [12] 1021 	mov	a,#0x80
      0032F8 C0 E0            [24] 1022 	push	acc
      0032FA 12 37 96         [24] 1023 	lcall	_printf
      0032FD 15 81            [12] 1024 	dec	sp
      0032FF 15 81            [12] 1025 	dec	sp
      003301 15 81            [12] 1026 	dec	sp
                                   1027 ;	8051_i2c_eeprom.c:124: while(i<3)
      003303 7E 00            [12] 1028 	mov	r6,#0x00
      003305 7F 00            [12] 1029 	mov	r7,#0x00
      003307                       1030 00101$:
      003307 C3               [12] 1031 	clr	c
      003308 EE               [12] 1032 	mov	a,r6
      003309 94 03            [12] 1033 	subb	a,#0x03
      00330B EF               [12] 1034 	mov	a,r7
      00330C 64 80            [12] 1035 	xrl	a,#0x80
      00330E 94 80            [12] 1036 	subb	a,#0x80
      003310 50 33            [24] 1037 	jnc	00103$
                                   1038 ;	8051_i2c_eeprom.c:126: input[i] = getchar();
      003312 EE               [12] 1039 	mov	a,r6
      003313 24 07            [12] 1040 	add	a,#_take_data_input_65537_37
      003315 FC               [12] 1041 	mov	r4,a
      003316 EF               [12] 1042 	mov	a,r7
      003317 34 04            [12] 1043 	addc	a,#(_take_data_input_65537_37 >> 8)
      003319 FD               [12] 1044 	mov	r5,a
      00331A C0 07            [24] 1045 	push	ar7
      00331C C0 06            [24] 1046 	push	ar6
      00331E C0 05            [24] 1047 	push	ar5
      003320 C0 04            [24] 1048 	push	ar4
      003322 12 30 81         [24] 1049 	lcall	_getchar
      003325 AA 82            [24] 1050 	mov	r2,dpl
      003327 D0 04            [24] 1051 	pop	ar4
      003329 D0 05            [24] 1052 	pop	ar5
      00332B 8C 82            [24] 1053 	mov	dpl,r4
      00332D 8D 83            [24] 1054 	mov	dph,r5
      00332F EA               [12] 1055 	mov	a,r2
      003330 F0               [24] 1056 	movx	@dptr,a
                                   1057 ;	8051_i2c_eeprom.c:127: putchar(input[i]);
      003331 7D 00            [12] 1058 	mov	r5,#0x00
      003333 8A 82            [24] 1059 	mov	dpl,r2
      003335 8D 83            [24] 1060 	mov	dph,r5
      003337 12 30 62         [24] 1061 	lcall	_putchar
      00333A D0 06            [24] 1062 	pop	ar6
      00333C D0 07            [24] 1063 	pop	ar7
                                   1064 ;	8051_i2c_eeprom.c:128: i++;
      00333E 0E               [12] 1065 	inc	r6
      00333F BE 00 C5         [24] 1066 	cjne	r6,#0x00,00101$
      003342 0F               [12] 1067 	inc	r7
      003343 80 C2            [24] 1068 	sjmp	00101$
      003345                       1069 00103$:
                                   1070 ;	8051_i2c_eeprom.c:130: unsigned int data = input[0] - '0' + input[1] - '0' + input[2] - '0';
      003345 90 04 07         [24] 1071 	mov	dptr,#_take_data_input_65537_37
      003348 E0               [24] 1072 	movx	a,@dptr
      003349 FF               [12] 1073 	mov	r7,a
      00334A 7E 00            [12] 1074 	mov	r6,#0x00
      00334C 90 04 08         [24] 1075 	mov	dptr,#(_take_data_input_65537_37 + 0x0001)
      00334F E0               [24] 1076 	movx	a,@dptr
      003350 7C 00            [12] 1077 	mov	r4,#0x00
      003352 2F               [12] 1078 	add	a,r7
      003353 FF               [12] 1079 	mov	r7,a
      003354 EC               [12] 1080 	mov	a,r4
      003355 3E               [12] 1081 	addc	a,r6
      003356 FE               [12] 1082 	mov	r6,a
      003357 90 04 09         [24] 1083 	mov	dptr,#(_take_data_input_65537_37 + 0x0002)
      00335A E0               [24] 1084 	movx	a,@dptr
      00335B 7C 00            [12] 1085 	mov	r4,#0x00
      00335D 2F               [12] 1086 	add	a,r7
      00335E FF               [12] 1087 	mov	r7,a
      00335F EC               [12] 1088 	mov	a,r4
      003360 3E               [12] 1089 	addc	a,r6
      003361 FE               [12] 1090 	mov	r6,a
      003362 EF               [12] 1091 	mov	a,r7
      003363 24 70            [12] 1092 	add	a,#0x70
      003365 FF               [12] 1093 	mov	r7,a
      003366 EE               [12] 1094 	mov	a,r6
      003367 34 FF            [12] 1095 	addc	a,#0xff
                                   1096 ;	8051_i2c_eeprom.c:131: return data; 
                                   1097 ;	8051_i2c_eeprom.c:133: }
      003369 8F 82            [24] 1098 	mov	dpl,r7
      00336B F5 83            [12] 1099 	mov	dph,a
      00336D 22               [24] 1100 	ret
                                   1101 ;------------------------------------------------------------
                                   1102 ;Allocation info for local variables in function 'eeprom_write'
                                   1103 ;------------------------------------------------------------
                                   1104 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                   1105 ;address                   Allocated with name '_eeprom_write_address_65536_40'
                                   1106 ;i                         Allocated with name '_eeprom_write_i_131072_45'
                                   1107 ;------------------------------------------------------------
                                   1108 ;	8051_i2c_eeprom.c:135: int eeprom_write(unsigned int address, unsigned char data) 
                                   1109 ;	-----------------------------------------
                                   1110 ;	 function eeprom_write
                                   1111 ;	-----------------------------------------
      00336E                       1112 _eeprom_write:
      00336E AF 83            [24] 1113 	mov	r7,dph
      003370 E5 82            [12] 1114 	mov	a,dpl
      003372 90 04 0B         [24] 1115 	mov	dptr,#_eeprom_write_address_65536_40
      003375 F0               [24] 1116 	movx	@dptr,a
      003376 EF               [12] 1117 	mov	a,r7
      003377 A3               [24] 1118 	inc	dptr
      003378 F0               [24] 1119 	movx	@dptr,a
                                   1120 ;	8051_i2c_eeprom.c:138: i2c_start();
      003379 12 36 57         [24] 1121 	lcall	_i2c_start
                                   1122 ;	8051_i2c_eeprom.c:141: if(!i2c_write(EEPROM_ID | WRITE)) {
      00337C 75 82 A0         [24] 1123 	mov	dpl,#0xa0
      00337F 12 35 55         [24] 1124 	lcall	_i2c_write
      003382 E5 82            [12] 1125 	mov	a,dpl
      003384 85 83 F0         [24] 1126 	mov	b,dph
      003387 45 F0            [12] 1127 	orl	a,b
      003389 70 1C            [24] 1128 	jnz	00102$
                                   1129 ;	8051_i2c_eeprom.c:142: printf("Error: No ACK for device address (write)\n\r");
      00338B 74 81            [12] 1130 	mov	a,#___str_19
      00338D C0 E0            [24] 1131 	push	acc
      00338F 74 48            [12] 1132 	mov	a,#(___str_19 >> 8)
      003391 C0 E0            [24] 1133 	push	acc
      003393 74 80            [12] 1134 	mov	a,#0x80
      003395 C0 E0            [24] 1135 	push	acc
      003397 12 37 96         [24] 1136 	lcall	_printf
      00339A 15 81            [12] 1137 	dec	sp
      00339C 15 81            [12] 1138 	dec	sp
      00339E 15 81            [12] 1139 	dec	sp
                                   1140 ;	8051_i2c_eeprom.c:143: i2c_stop();
      0033A0 12 36 6C         [24] 1141 	lcall	_i2c_stop
                                   1142 ;	8051_i2c_eeprom.c:144: return 0;
      0033A3 90 00 00         [24] 1143 	mov	dptr,#0x0000
      0033A6 22               [24] 1144 	ret
      0033A7                       1145 00102$:
                                   1146 ;	8051_i2c_eeprom.c:148: if(!i2c_write((unsigned char)address)) {
      0033A7 90 04 0B         [24] 1147 	mov	dptr,#_eeprom_write_address_65536_40
      0033AA E0               [24] 1148 	movx	a,@dptr
      0033AB FE               [12] 1149 	mov	r6,a
      0033AC A3               [24] 1150 	inc	dptr
      0033AD E0               [24] 1151 	movx	a,@dptr
      0033AE FF               [12] 1152 	mov	r7,a
      0033AF 8E 05            [24] 1153 	mov	ar5,r6
      0033B1 8D 82            [24] 1154 	mov	dpl,r5
      0033B3 C0 07            [24] 1155 	push	ar7
      0033B5 C0 06            [24] 1156 	push	ar6
      0033B7 12 35 55         [24] 1157 	lcall	_i2c_write
      0033BA E5 82            [12] 1158 	mov	a,dpl
      0033BC 85 83 F0         [24] 1159 	mov	b,dph
      0033BF D0 06            [24] 1160 	pop	ar6
      0033C1 D0 07            [24] 1161 	pop	ar7
      0033C3 45 F0            [12] 1162 	orl	a,b
      0033C5 70 1C            [24] 1163 	jnz	00104$
                                   1164 ;	8051_i2c_eeprom.c:149: printf("Error: No ACK for memory address\n\r");
      0033C7 74 AC            [12] 1165 	mov	a,#___str_20
      0033C9 C0 E0            [24] 1166 	push	acc
      0033CB 74 48            [12] 1167 	mov	a,#(___str_20 >> 8)
      0033CD C0 E0            [24] 1168 	push	acc
      0033CF 74 80            [12] 1169 	mov	a,#0x80
      0033D1 C0 E0            [24] 1170 	push	acc
      0033D3 12 37 96         [24] 1171 	lcall	_printf
      0033D6 15 81            [12] 1172 	dec	sp
      0033D8 15 81            [12] 1173 	dec	sp
      0033DA 15 81            [12] 1174 	dec	sp
                                   1175 ;	8051_i2c_eeprom.c:150: i2c_stop();
      0033DC 12 36 6C         [24] 1176 	lcall	_i2c_stop
                                   1177 ;	8051_i2c_eeprom.c:151: return 0;
      0033DF 90 00 00         [24] 1178 	mov	dptr,#0x0000
      0033E2 22               [24] 1179 	ret
      0033E3                       1180 00104$:
                                   1181 ;	8051_i2c_eeprom.c:155: if(!i2c_write(data)) {
      0033E3 90 04 0A         [24] 1182 	mov	dptr,#_eeprom_write_PARM_2
      0033E6 E0               [24] 1183 	movx	a,@dptr
      0033E7 FD               [12] 1184 	mov	r5,a
      0033E8 F5 82            [12] 1185 	mov	dpl,a
      0033EA C0 07            [24] 1186 	push	ar7
      0033EC C0 06            [24] 1187 	push	ar6
      0033EE C0 05            [24] 1188 	push	ar5
      0033F0 12 35 55         [24] 1189 	lcall	_i2c_write
      0033F3 E5 82            [12] 1190 	mov	a,dpl
      0033F5 85 83 F0         [24] 1191 	mov	b,dph
      0033F8 D0 05            [24] 1192 	pop	ar5
      0033FA D0 06            [24] 1193 	pop	ar6
      0033FC D0 07            [24] 1194 	pop	ar7
      0033FE 45 F0            [12] 1195 	orl	a,b
      003400 70 1C            [24] 1196 	jnz	00106$
                                   1197 ;	8051_i2c_eeprom.c:156: printf("Error: No ACK for data\n\r");
      003402 74 CF            [12] 1198 	mov	a,#___str_21
      003404 C0 E0            [24] 1199 	push	acc
      003406 74 48            [12] 1200 	mov	a,#(___str_21 >> 8)
      003408 C0 E0            [24] 1201 	push	acc
      00340A 74 80            [12] 1202 	mov	a,#0x80
      00340C C0 E0            [24] 1203 	push	acc
      00340E 12 37 96         [24] 1204 	lcall	_printf
      003411 15 81            [12] 1205 	dec	sp
      003413 15 81            [12] 1206 	dec	sp
      003415 15 81            [12] 1207 	dec	sp
                                   1208 ;	8051_i2c_eeprom.c:157: i2c_stop();
      003417 12 36 6C         [24] 1209 	lcall	_i2c_stop
                                   1210 ;	8051_i2c_eeprom.c:158: return 0;
      00341A 90 00 00         [24] 1211 	mov	dptr,#0x0000
      00341D 22               [24] 1212 	ret
      00341E                       1213 00106$:
                                   1214 ;	8051_i2c_eeprom.c:161: i2c_stop();
      00341E C0 07            [24] 1215 	push	ar7
      003420 C0 06            [24] 1216 	push	ar6
      003422 C0 05            [24] 1217 	push	ar5
      003424 12 36 6C         [24] 1218 	lcall	_i2c_stop
      003427 D0 05            [24] 1219 	pop	ar5
      003429 D0 06            [24] 1220 	pop	ar6
      00342B D0 07            [24] 1221 	pop	ar7
                                   1222 ;	8051_i2c_eeprom.c:163: for(int i = 0; i<100; i++)
      00342D 7B 00            [12] 1223 	mov	r3,#0x00
      00342F 7C 00            [12] 1224 	mov	r4,#0x00
      003431                       1225 00109$:
      003431 C3               [12] 1226 	clr	c
      003432 EB               [12] 1227 	mov	a,r3
      003433 94 64            [12] 1228 	subb	a,#0x64
      003435 EC               [12] 1229 	mov	a,r4
      003436 64 80            [12] 1230 	xrl	a,#0x80
      003438 94 80            [12] 1231 	subb	a,#0x80
      00343A 50 1E            [24] 1232 	jnc	00107$
                                   1233 ;	8051_i2c_eeprom.c:165: i2c_delay();
      00343C C0 07            [24] 1234 	push	ar7
      00343E C0 06            [24] 1235 	push	ar6
      003440 C0 05            [24] 1236 	push	ar5
      003442 C0 04            [24] 1237 	push	ar4
      003444 C0 03            [24] 1238 	push	ar3
      003446 12 36 79         [24] 1239 	lcall	_i2c_delay
      003449 D0 03            [24] 1240 	pop	ar3
      00344B D0 04            [24] 1241 	pop	ar4
      00344D D0 05            [24] 1242 	pop	ar5
      00344F D0 06            [24] 1243 	pop	ar6
      003451 D0 07            [24] 1244 	pop	ar7
                                   1245 ;	8051_i2c_eeprom.c:163: for(int i = 0; i<100; i++)
      003453 0B               [12] 1246 	inc	r3
      003454 BB 00 DA         [24] 1247 	cjne	r3,#0x00,00109$
      003457 0C               [12] 1248 	inc	r4
      003458 80 D7            [24] 1249 	sjmp	00109$
      00345A                       1250 00107$:
                                   1251 ;	8051_i2c_eeprom.c:167: printf("| Writing at Address 0x%02X Data 0x%02X          |\n\r", address, data);
      00345A 7C 00            [12] 1252 	mov	r4,#0x00
      00345C C0 05            [24] 1253 	push	ar5
      00345E C0 04            [24] 1254 	push	ar4
      003460 C0 06            [24] 1255 	push	ar6
      003462 C0 07            [24] 1256 	push	ar7
      003464 74 E8            [12] 1257 	mov	a,#___str_22
      003466 C0 E0            [24] 1258 	push	acc
      003468 74 48            [12] 1259 	mov	a,#(___str_22 >> 8)
      00346A C0 E0            [24] 1260 	push	acc
      00346C 74 80            [12] 1261 	mov	a,#0x80
      00346E C0 E0            [24] 1262 	push	acc
      003470 12 37 96         [24] 1263 	lcall	_printf
      003473 E5 81            [12] 1264 	mov	a,sp
      003475 24 F9            [12] 1265 	add	a,#0xf9
      003477 F5 81            [12] 1266 	mov	sp,a
                                   1267 ;	8051_i2c_eeprom.c:168: printf("│ Write successful!                             │\n");
      003479 74 1D            [12] 1268 	mov	a,#___str_23
      00347B C0 E0            [24] 1269 	push	acc
      00347D 74 49            [12] 1270 	mov	a,#(___str_23 >> 8)
      00347F C0 E0            [24] 1271 	push	acc
      003481 74 80            [12] 1272 	mov	a,#0x80
      003483 C0 E0            [24] 1273 	push	acc
      003485 12 37 96         [24] 1274 	lcall	_printf
      003488 15 81            [12] 1275 	dec	sp
      00348A 15 81            [12] 1276 	dec	sp
      00348C 15 81            [12] 1277 	dec	sp
                                   1278 ;	8051_i2c_eeprom.c:169: printf("└───────────────────────────────────────────────┘\n");
      00348E 74 54            [12] 1279 	mov	a,#___str_24
      003490 C0 E0            [24] 1280 	push	acc
      003492 74 49            [12] 1281 	mov	a,#(___str_24 >> 8)
      003494 C0 E0            [24] 1282 	push	acc
      003496 74 80            [12] 1283 	mov	a,#0x80
      003498 C0 E0            [24] 1284 	push	acc
      00349A 12 37 96         [24] 1285 	lcall	_printf
      00349D 15 81            [12] 1286 	dec	sp
      00349F 15 81            [12] 1287 	dec	sp
      0034A1 15 81            [12] 1288 	dec	sp
                                   1289 ;	8051_i2c_eeprom.c:170: return 1;  // Success
      0034A3 90 00 01         [24] 1290 	mov	dptr,#0x0001
                                   1291 ;	8051_i2c_eeprom.c:172: }
      0034A6 22               [24] 1292 	ret
                                   1293 ;------------------------------------------------------------
                                   1294 ;Allocation info for local variables in function 'eeprom_read'
                                   1295 ;------------------------------------------------------------
                                   1296 ;address                   Allocated with name '_eeprom_read_address_65536_47'
                                   1297 ;result                    Allocated with name '_eeprom_read_result_65536_48'
                                   1298 ;------------------------------------------------------------
                                   1299 ;	8051_i2c_eeprom.c:174: int eeprom_read(unsigned int address) 
                                   1300 ;	-----------------------------------------
                                   1301 ;	 function eeprom_read
                                   1302 ;	-----------------------------------------
      0034A7                       1303 _eeprom_read:
      0034A7 AF 83            [24] 1304 	mov	r7,dph
      0034A9 E5 82            [12] 1305 	mov	a,dpl
      0034AB 90 04 0D         [24] 1306 	mov	dptr,#_eeprom_read_address_65536_47
      0034AE F0               [24] 1307 	movx	@dptr,a
      0034AF EF               [12] 1308 	mov	a,r7
      0034B0 A3               [24] 1309 	inc	dptr
      0034B1 F0               [24] 1310 	movx	@dptr,a
                                   1311 ;	8051_i2c_eeprom.c:180: i2c_start();
      0034B2 12 36 57         [24] 1312 	lcall	_i2c_start
                                   1313 ;	8051_i2c_eeprom.c:183: if(!i2c_write(EEPROM_ID | WRITE)) {
      0034B5 75 82 A0         [24] 1314 	mov	dpl,#0xa0
      0034B8 12 35 55         [24] 1315 	lcall	_i2c_write
      0034BB E5 82            [12] 1316 	mov	a,dpl
      0034BD 85 83 F0         [24] 1317 	mov	b,dph
      0034C0 45 F0            [12] 1318 	orl	a,b
      0034C2 70 1C            [24] 1319 	jnz	00102$
                                   1320 ;	8051_i2c_eeprom.c:184: printf("Error: No ACK for device address (write mode)\n\r");
      0034C4 74 E9            [12] 1321 	mov	a,#___str_25
      0034C6 C0 E0            [24] 1322 	push	acc
      0034C8 74 49            [12] 1323 	mov	a,#(___str_25 >> 8)
      0034CA C0 E0            [24] 1324 	push	acc
      0034CC 74 80            [12] 1325 	mov	a,#0x80
      0034CE C0 E0            [24] 1326 	push	acc
      0034D0 12 37 96         [24] 1327 	lcall	_printf
      0034D3 15 81            [12] 1328 	dec	sp
      0034D5 15 81            [12] 1329 	dec	sp
      0034D7 15 81            [12] 1330 	dec	sp
                                   1331 ;	8051_i2c_eeprom.c:185: i2c_stop();
      0034D9 12 36 6C         [24] 1332 	lcall	_i2c_stop
                                   1333 ;	8051_i2c_eeprom.c:186: return -1;
      0034DC 90 FF FF         [24] 1334 	mov	dptr,#0xffff
      0034DF 22               [24] 1335 	ret
      0034E0                       1336 00102$:
                                   1337 ;	8051_i2c_eeprom.c:190: if(!i2c_write((unsigned char)address)) {
      0034E0 90 04 0D         [24] 1338 	mov	dptr,#_eeprom_read_address_65536_47
      0034E3 E0               [24] 1339 	movx	a,@dptr
      0034E4 FE               [12] 1340 	mov	r6,a
      0034E5 A3               [24] 1341 	inc	dptr
      0034E6 E0               [24] 1342 	movx	a,@dptr
      0034E7 8E 82            [24] 1343 	mov	dpl,r6
      0034E9 12 35 55         [24] 1344 	lcall	_i2c_write
      0034EC E5 82            [12] 1345 	mov	a,dpl
      0034EE 85 83 F0         [24] 1346 	mov	b,dph
      0034F1 45 F0            [12] 1347 	orl	a,b
      0034F3 70 1C            [24] 1348 	jnz	00104$
                                   1349 ;	8051_i2c_eeprom.c:191: printf("Error: No ACK for memory address\n\r");
      0034F5 74 AC            [12] 1350 	mov	a,#___str_20
      0034F7 C0 E0            [24] 1351 	push	acc
      0034F9 74 48            [12] 1352 	mov	a,#(___str_20 >> 8)
      0034FB C0 E0            [24] 1353 	push	acc
      0034FD 74 80            [12] 1354 	mov	a,#0x80
      0034FF C0 E0            [24] 1355 	push	acc
      003501 12 37 96         [24] 1356 	lcall	_printf
      003504 15 81            [12] 1357 	dec	sp
      003506 15 81            [12] 1358 	dec	sp
      003508 15 81            [12] 1359 	dec	sp
                                   1360 ;	8051_i2c_eeprom.c:192: i2c_stop();
      00350A 12 36 6C         [24] 1361 	lcall	_i2c_stop
                                   1362 ;	8051_i2c_eeprom.c:193: return -1;
      00350D 90 FF FF         [24] 1363 	mov	dptr,#0xffff
      003510 22               [24] 1364 	ret
      003511                       1365 00104$:
                                   1366 ;	8051_i2c_eeprom.c:197: i2c_start();
      003511 12 36 57         [24] 1367 	lcall	_i2c_start
                                   1368 ;	8051_i2c_eeprom.c:200: if(!i2c_write(EEPROM_ID | READ)) {
      003514 75 82 A1         [24] 1369 	mov	dpl,#0xa1
      003517 12 35 55         [24] 1370 	lcall	_i2c_write
      00351A E5 82            [12] 1371 	mov	a,dpl
      00351C 85 83 F0         [24] 1372 	mov	b,dph
      00351F 45 F0            [12] 1373 	orl	a,b
      003521 70 1C            [24] 1374 	jnz	00106$
                                   1375 ;	8051_i2c_eeprom.c:201: printf("Error: No ACK for device address (read mode)\n\r");
      003523 74 19            [12] 1376 	mov	a,#___str_26
      003525 C0 E0            [24] 1377 	push	acc
      003527 74 4A            [12] 1378 	mov	a,#(___str_26 >> 8)
      003529 C0 E0            [24] 1379 	push	acc
      00352B 74 80            [12] 1380 	mov	a,#0x80
      00352D C0 E0            [24] 1381 	push	acc
      00352F 12 37 96         [24] 1382 	lcall	_printf
      003532 15 81            [12] 1383 	dec	sp
      003534 15 81            [12] 1384 	dec	sp
      003536 15 81            [12] 1385 	dec	sp
                                   1386 ;	8051_i2c_eeprom.c:202: i2c_stop();
      003538 12 36 6C         [24] 1387 	lcall	_i2c_stop
                                   1388 ;	8051_i2c_eeprom.c:203: return -1;
      00353B 90 FF FF         [24] 1389 	mov	dptr,#0xffff
      00353E 22               [24] 1390 	ret
      00353F                       1391 00106$:
                                   1392 ;	8051_i2c_eeprom.c:207: result = i2c_read(0);  // 0 means send NACK
      00353F 90 00 00         [24] 1393 	mov	dptr,#0x0000
      003542 12 35 D2         [24] 1394 	lcall	_i2c_read
      003545 AE 82            [24] 1395 	mov	r6,dpl
                                   1396 ;	8051_i2c_eeprom.c:209: i2c_stop();
      003547 C0 06            [24] 1397 	push	ar6
      003549 12 36 6C         [24] 1398 	lcall	_i2c_stop
      00354C D0 06            [24] 1399 	pop	ar6
                                   1400 ;	8051_i2c_eeprom.c:210: return result;
      00354E 7F 00            [12] 1401 	mov	r7,#0x00
      003550 8E 82            [24] 1402 	mov	dpl,r6
      003552 8F 83            [24] 1403 	mov	dph,r7
                                   1404 ;	8051_i2c_eeprom.c:211: }
      003554 22               [24] 1405 	ret
                                   1406 ;------------------------------------------------------------
                                   1407 ;Allocation info for local variables in function 'i2c_write'
                                   1408 ;------------------------------------------------------------
                                   1409 ;data                      Allocated with name '_i2c_write_data_65536_52'
                                   1410 ;i                         Allocated with name '_i2c_write_i_65536_53'
                                   1411 ;------------------------------------------------------------
                                   1412 ;	8051_i2c_eeprom.c:214: int i2c_write(unsigned char data)
                                   1413 ;	-----------------------------------------
                                   1414 ;	 function i2c_write
                                   1415 ;	-----------------------------------------
      003555                       1416 _i2c_write:
      003555 E5 82            [12] 1417 	mov	a,dpl
      003557 90 04 0F         [24] 1418 	mov	dptr,#_i2c_write_data_65536_52
      00355A F0               [24] 1419 	movx	@dptr,a
                                   1420 ;	8051_i2c_eeprom.c:218: for(i=0;i<=7;i++)
      00355B 7E 00            [12] 1421 	mov	r6,#0x00
      00355D 7F 00            [12] 1422 	mov	r7,#0x00
      00355F                       1423 00104$:
                                   1424 ;	8051_i2c_eeprom.c:220: SDA = (data & 0x80) ? 1 : 0;    //msb first
      00355F 90 04 0F         [24] 1425 	mov	dptr,#_i2c_write_data_65536_52
      003562 E0               [24] 1426 	movx	a,@dptr
      003563 FD               [12] 1427 	mov	r5,a
      003564 23               [12] 1428 	rl	a
      003565 54 01            [12] 1429 	anl	a,#0x01
      003567 24 FF            [12] 1430 	add	a,#0xff
      003569 92 94            [24] 1431 	mov	_P1_4,c
                                   1432 ;	8051_i2c_eeprom.c:221: i2c_delay();        // Setup time for data
      00356B C0 07            [24] 1433 	push	ar7
      00356D C0 06            [24] 1434 	push	ar6
      00356F C0 05            [24] 1435 	push	ar5
      003571 12 36 79         [24] 1436 	lcall	_i2c_delay
                                   1437 ;	8051_i2c_eeprom.c:222: SCL=1;
                                   1438 ;	assignBit
      003574 D2 93            [12] 1439 	setb	_P1_3
                                   1440 ;	8051_i2c_eeprom.c:223: i2c_delay();        // Hold time for clock
      003576 12 36 79         [24] 1441 	lcall	_i2c_delay
      003579 D0 05            [24] 1442 	pop	ar5
      00357B D0 06            [24] 1443 	pop	ar6
      00357D D0 07            [24] 1444 	pop	ar7
                                   1445 ;	8051_i2c_eeprom.c:224: SCL=0;
                                   1446 ;	assignBit
      00357F C2 93            [12] 1447 	clr	_P1_3
                                   1448 ;	8051_i2c_eeprom.c:225: data = data << 1;
      003581 ED               [12] 1449 	mov	a,r5
      003582 2D               [12] 1450 	add	a,r5
      003583 90 04 0F         [24] 1451 	mov	dptr,#_i2c_write_data_65536_52
      003586 F0               [24] 1452 	movx	@dptr,a
                                   1453 ;	8051_i2c_eeprom.c:218: for(i=0;i<=7;i++)
      003587 0E               [12] 1454 	inc	r6
      003588 BE 00 01         [24] 1455 	cjne	r6,#0x00,00121$
      00358B 0F               [12] 1456 	inc	r7
      00358C                       1457 00121$:
      00358C C3               [12] 1458 	clr	c
      00358D 74 07            [12] 1459 	mov	a,#0x07
      00358F 9E               [12] 1460 	subb	a,r6
      003590 E4               [12] 1461 	clr	a
      003591 9F               [12] 1462 	subb	a,r7
      003592 50 CB            [24] 1463 	jnc	00104$
                                   1464 ;	8051_i2c_eeprom.c:229: SDA = 1;            // Release SDA for slave
                                   1465 ;	assignBit
      003594 D2 94            [12] 1466 	setb	_P1_4
                                   1467 ;	8051_i2c_eeprom.c:230: SCL = 1;            // 9th clock pulse for ACK
                                   1468 ;	assignBit
      003596 D2 93            [12] 1469 	setb	_P1_3
                                   1470 ;	8051_i2c_eeprom.c:231: i2c_delay();
      003598 12 36 79         [24] 1471 	lcall	_i2c_delay
                                   1472 ;	8051_i2c_eeprom.c:232: if(SDA == 1)        // If SDA is still high, no ACK received
      00359B 30 94 19         [24] 1473 	jnb	_P1_4,00103$
                                   1474 ;	8051_i2c_eeprom.c:235: printf("ACK DID NOT ARRIVE\n\r");
      00359E 74 48            [12] 1475 	mov	a,#___str_27
      0035A0 C0 E0            [24] 1476 	push	acc
      0035A2 74 4A            [12] 1477 	mov	a,#(___str_27 >> 8)
      0035A4 C0 E0            [24] 1478 	push	acc
      0035A6 74 80            [12] 1479 	mov	a,#0x80
      0035A8 C0 E0            [24] 1480 	push	acc
      0035AA 12 37 96         [24] 1481 	lcall	_printf
      0035AD 15 81            [12] 1482 	dec	sp
      0035AF 15 81            [12] 1483 	dec	sp
      0035B1 15 81            [12] 1484 	dec	sp
                                   1485 ;	8051_i2c_eeprom.c:236: return 0;       // Error
      0035B3 90 00 00         [24] 1486 	mov	dptr,#0x0000
      0035B6 22               [24] 1487 	ret
      0035B7                       1488 00103$:
                                   1489 ;	8051_i2c_eeprom.c:238: SCL = 0;
                                   1490 ;	assignBit
      0035B7 C2 93            [12] 1491 	clr	_P1_3
                                   1492 ;	8051_i2c_eeprom.c:239: printf("Transmission successfull\n\r");
      0035B9 74 5D            [12] 1493 	mov	a,#___str_28
      0035BB C0 E0            [24] 1494 	push	acc
      0035BD 74 4A            [12] 1495 	mov	a,#(___str_28 >> 8)
      0035BF C0 E0            [24] 1496 	push	acc
      0035C1 74 80            [12] 1497 	mov	a,#0x80
      0035C3 C0 E0            [24] 1498 	push	acc
      0035C5 12 37 96         [24] 1499 	lcall	_printf
      0035C8 15 81            [12] 1500 	dec	sp
      0035CA 15 81            [12] 1501 	dec	sp
      0035CC 15 81            [12] 1502 	dec	sp
                                   1503 ;	8051_i2c_eeprom.c:240: return 1;           // Success
      0035CE 90 00 01         [24] 1504 	mov	dptr,#0x0001
                                   1505 ;	8051_i2c_eeprom.c:242: }
      0035D1 22               [24] 1506 	ret
                                   1507 ;------------------------------------------------------------
                                   1508 ;Allocation info for local variables in function 'i2c_read'
                                   1509 ;------------------------------------------------------------
                                   1510 ;ACK                       Allocated with name '_i2c_read_ACK_65536_57'
                                   1511 ;buff                      Allocated with name '_i2c_read_buff_65536_58'
                                   1512 ;i                         Allocated with name '_i2c_read_i_131072_59'
                                   1513 ;------------------------------------------------------------
                                   1514 ;	8051_i2c_eeprom.c:243: int i2c_read(int ACK)
                                   1515 ;	-----------------------------------------
                                   1516 ;	 function i2c_read
                                   1517 ;	-----------------------------------------
      0035D2                       1518 _i2c_read:
      0035D2 AF 83            [24] 1519 	mov	r7,dph
      0035D4 E5 82            [12] 1520 	mov	a,dpl
      0035D6 90 04 10         [24] 1521 	mov	dptr,#_i2c_read_ACK_65536_57
      0035D9 F0               [24] 1522 	movx	@dptr,a
      0035DA EF               [12] 1523 	mov	a,r7
      0035DB A3               [24] 1524 	inc	dptr
      0035DC F0               [24] 1525 	movx	@dptr,a
                                   1526 ;	8051_i2c_eeprom.c:245: unsigned char buff=0;
      0035DD 90 04 12         [24] 1527 	mov	dptr,#_i2c_read_buff_65536_58
      0035E0 E4               [12] 1528 	clr	a
      0035E1 F0               [24] 1529 	movx	@dptr,a
                                   1530 ;	8051_i2c_eeprom.c:246: SCL = 0;
                                   1531 ;	assignBit
      0035E2 C2 93            [12] 1532 	clr	_P1_3
                                   1533 ;	8051_i2c_eeprom.c:247: for(int i=0;i<8;i++)
      0035E4 7E 00            [12] 1534 	mov	r6,#0x00
      0035E6 7F 00            [12] 1535 	mov	r7,#0x00
      0035E8                       1536 00103$:
      0035E8 C3               [12] 1537 	clr	c
      0035E9 EE               [12] 1538 	mov	a,r6
      0035EA 94 08            [12] 1539 	subb	a,#0x08
      0035EC EF               [12] 1540 	mov	a,r7
      0035ED 64 80            [12] 1541 	xrl	a,#0x80
      0035EF 94 80            [12] 1542 	subb	a,#0x80
      0035F1 50 40            [24] 1543 	jnc	00101$
                                   1544 ;	8051_i2c_eeprom.c:249: SCL = 1;
                                   1545 ;	assignBit
      0035F3 D2 93            [12] 1546 	setb	_P1_3
                                   1547 ;	8051_i2c_eeprom.c:250: i2c_delay();
      0035F5 C0 07            [24] 1548 	push	ar7
      0035F7 C0 06            [24] 1549 	push	ar6
      0035F9 12 36 79         [24] 1550 	lcall	_i2c_delay
      0035FC D0 06            [24] 1551 	pop	ar6
      0035FE D0 07            [24] 1552 	pop	ar7
                                   1553 ;	8051_i2c_eeprom.c:251: buff |= (SDA << (7 - i));
      003600 A2 94            [12] 1554 	mov	c,_P1_4
      003602 E4               [12] 1555 	clr	a
      003603 33               [12] 1556 	rlc	a
      003604 FD               [12] 1557 	mov	r5,a
      003605 8E 04            [24] 1558 	mov	ar4,r6
      003607 74 07            [12] 1559 	mov	a,#0x07
      003609 C3               [12] 1560 	clr	c
      00360A 9C               [12] 1561 	subb	a,r4
      00360B FC               [12] 1562 	mov	r4,a
      00360C 8C F0            [24] 1563 	mov	b,r4
      00360E 05 F0            [12] 1564 	inc	b
      003610 ED               [12] 1565 	mov	a,r5
      003611 80 02            [24] 1566 	sjmp	00119$
      003613                       1567 00117$:
      003613 25 E0            [12] 1568 	add	a,acc
      003615                       1569 00119$:
      003615 D5 F0 FB         [24] 1570 	djnz	b,00117$
      003618 FC               [12] 1571 	mov	r4,a
      003619 90 04 12         [24] 1572 	mov	dptr,#_i2c_read_buff_65536_58
      00361C E0               [24] 1573 	movx	a,@dptr
      00361D 4C               [12] 1574 	orl	a,r4
      00361E F0               [24] 1575 	movx	@dptr,a
                                   1576 ;	8051_i2c_eeprom.c:252: i2c_delay();
      00361F C0 07            [24] 1577 	push	ar7
      003621 C0 06            [24] 1578 	push	ar6
      003623 12 36 79         [24] 1579 	lcall	_i2c_delay
      003626 D0 06            [24] 1580 	pop	ar6
      003628 D0 07            [24] 1581 	pop	ar7
                                   1582 ;	8051_i2c_eeprom.c:253: SCL=0;
                                   1583 ;	assignBit
      00362A C2 93            [12] 1584 	clr	_P1_3
                                   1585 ;	8051_i2c_eeprom.c:247: for(int i=0;i<8;i++)
      00362C 0E               [12] 1586 	inc	r6
      00362D BE 00 B8         [24] 1587 	cjne	r6,#0x00,00103$
      003630 0F               [12] 1588 	inc	r7
      003631 80 B5            [24] 1589 	sjmp	00103$
      003633                       1590 00101$:
                                   1591 ;	8051_i2c_eeprom.c:257: SDA = !ACK;         // ACK = 0, NACK = 1
      003633 90 04 10         [24] 1592 	mov	dptr,#_i2c_read_ACK_65536_57
      003636 E0               [24] 1593 	movx	a,@dptr
      003637 FE               [12] 1594 	mov	r6,a
      003638 A3               [24] 1595 	inc	dptr
      003639 E0               [24] 1596 	movx	a,@dptr
      00363A 4E               [12] 1597 	orl	a,r6
      00363B B4 01 00         [24] 1598 	cjne	a,#0x01,00121$
      00363E                       1599 00121$:
      00363E E4               [12] 1600 	clr	a
      00363F 33               [12] 1601 	rlc	a
      003640 24 FF            [12] 1602 	add	a,#0xff
      003642 92 94            [24] 1603 	mov	_P1_4,c
                                   1604 ;	8051_i2c_eeprom.c:258: SCL = 1;
                                   1605 ;	assignBit
      003644 D2 93            [12] 1606 	setb	_P1_3
                                   1607 ;	8051_i2c_eeprom.c:259: i2c_delay();
      003646 12 36 79         [24] 1608 	lcall	_i2c_delay
                                   1609 ;	8051_i2c_eeprom.c:260: SCL = 0;
                                   1610 ;	assignBit
      003649 C2 93            [12] 1611 	clr	_P1_3
                                   1612 ;	8051_i2c_eeprom.c:262: return buff;
      00364B 90 04 12         [24] 1613 	mov	dptr,#_i2c_read_buff_65536_58
      00364E E0               [24] 1614 	movx	a,@dptr
      00364F FF               [12] 1615 	mov	r7,a
      003650 7E 00            [12] 1616 	mov	r6,#0x00
      003652 8F 82            [24] 1617 	mov	dpl,r7
      003654 8E 83            [24] 1618 	mov	dph,r6
                                   1619 ;	8051_i2c_eeprom.c:263: }
      003656 22               [24] 1620 	ret
                                   1621 ;------------------------------------------------------------
                                   1622 ;Allocation info for local variables in function 'i2c_start'
                                   1623 ;------------------------------------------------------------
                                   1624 ;	8051_i2c_eeprom.c:264: void i2c_start(void)
                                   1625 ;	-----------------------------------------
                                   1626 ;	 function i2c_start
                                   1627 ;	-----------------------------------------
      003657                       1628 _i2c_start:
                                   1629 ;	8051_i2c_eeprom.c:266: i2c_delay();
      003657 12 36 79         [24] 1630 	lcall	_i2c_delay
                                   1631 ;	8051_i2c_eeprom.c:267: SDA = 1;
                                   1632 ;	assignBit
      00365A D2 94            [12] 1633 	setb	_P1_4
                                   1634 ;	8051_i2c_eeprom.c:268: i2c_delay();
      00365C 12 36 79         [24] 1635 	lcall	_i2c_delay
                                   1636 ;	8051_i2c_eeprom.c:269: SCL = 1;
                                   1637 ;	assignBit
      00365F D2 93            [12] 1638 	setb	_P1_3
                                   1639 ;	8051_i2c_eeprom.c:270: i2c_delay();
      003661 12 36 79         [24] 1640 	lcall	_i2c_delay
                                   1641 ;	8051_i2c_eeprom.c:271: SDA = 0;
                                   1642 ;	assignBit
      003664 C2 94            [12] 1643 	clr	_P1_4
                                   1644 ;	8051_i2c_eeprom.c:272: i2c_delay();
      003666 12 36 79         [24] 1645 	lcall	_i2c_delay
                                   1646 ;	8051_i2c_eeprom.c:273: SCL = 0;
                                   1647 ;	assignBit
      003669 C2 93            [12] 1648 	clr	_P1_3
                                   1649 ;	8051_i2c_eeprom.c:274: }
      00366B 22               [24] 1650 	ret
                                   1651 ;------------------------------------------------------------
                                   1652 ;Allocation info for local variables in function 'i2c_stop'
                                   1653 ;------------------------------------------------------------
                                   1654 ;	8051_i2c_eeprom.c:276: void i2c_stop(void)
                                   1655 ;	-----------------------------------------
                                   1656 ;	 function i2c_stop
                                   1657 ;	-----------------------------------------
      00366C                       1658 _i2c_stop:
                                   1659 ;	8051_i2c_eeprom.c:278: SDA = 0;
                                   1660 ;	assignBit
      00366C C2 94            [12] 1661 	clr	_P1_4
                                   1662 ;	8051_i2c_eeprom.c:279: i2c_delay();
      00366E 12 36 79         [24] 1663 	lcall	_i2c_delay
                                   1664 ;	8051_i2c_eeprom.c:280: SCL = 1;
                                   1665 ;	assignBit
      003671 D2 93            [12] 1666 	setb	_P1_3
                                   1667 ;	8051_i2c_eeprom.c:281: i2c_delay();
      003673 12 36 79         [24] 1668 	lcall	_i2c_delay
                                   1669 ;	8051_i2c_eeprom.c:282: SDA = 1; 
                                   1670 ;	assignBit
      003676 D2 94            [12] 1671 	setb	_P1_4
                                   1672 ;	8051_i2c_eeprom.c:283: }
      003678 22               [24] 1673 	ret
                                   1674 ;------------------------------------------------------------
                                   1675 ;Allocation info for local variables in function 'i2c_delay'
                                   1676 ;------------------------------------------------------------
                                   1677 ;i                         Allocated with name '_i2c_delay_i_131072_66'
                                   1678 ;------------------------------------------------------------
                                   1679 ;	8051_i2c_eeprom.c:285: void i2c_delay() 
                                   1680 ;	-----------------------------------------
                                   1681 ;	 function i2c_delay
                                   1682 ;	-----------------------------------------
      003679                       1683 _i2c_delay:
                                   1684 ;	8051_i2c_eeprom.c:293: for(int i = 0; i<500; i++);
      003679 7E 00            [12] 1685 	mov	r6,#0x00
      00367B 7F 00            [12] 1686 	mov	r7,#0x00
      00367D                       1687 00103$:
      00367D C3               [12] 1688 	clr	c
      00367E EE               [12] 1689 	mov	a,r6
      00367F 94 F4            [12] 1690 	subb	a,#0xf4
      003681 EF               [12] 1691 	mov	a,r7
      003682 64 80            [12] 1692 	xrl	a,#0x80
      003684 94 81            [12] 1693 	subb	a,#0x81
      003686 50 07            [24] 1694 	jnc	00105$
      003688 0E               [12] 1695 	inc	r6
      003689 BE 00 F1         [24] 1696 	cjne	r6,#0x00,00103$
      00368C 0F               [12] 1697 	inc	r7
      00368D 80 EE            [24] 1698 	sjmp	00103$
      00368F                       1699 00105$:
                                   1700 ;	8051_i2c_eeprom.c:294: }
      00368F 22               [24] 1701 	ret
                                   1702 ;------------------------------------------------------------
                                   1703 ;Allocation info for local variables in function 'test_function'
                                   1704 ;------------------------------------------------------------
                                   1705 ;test_data                 Allocated with name '_test_function_test_data_65537_68'
                                   1706 ;address                   Allocated with name '_test_function_address_65537_68'
                                   1707 ;i                         Allocated with name '_test_function_i_131073_69'
                                   1708 ;read_data                 Allocated with name '_test_function_read_data_65538_71'
                                   1709 ;------------------------------------------------------------
                                   1710 ;	8051_i2c_eeprom.c:296: void test_function()
                                   1711 ;	-----------------------------------------
                                   1712 ;	 function test_function
                                   1713 ;	-----------------------------------------
      003690                       1714 _test_function:
                                   1715 ;	8051_i2c_eeprom.c:298: i2c_start();
      003690 12 36 57         [24] 1716 	lcall	_i2c_start
                                   1717 ;	8051_i2c_eeprom.c:299: i2c_delay();
      003693 12 36 79         [24] 1718 	lcall	_i2c_delay
                                   1719 ;	8051_i2c_eeprom.c:305: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      003696 74 02            [12] 1720 	mov	a,#0x02
      003698 C0 E0            [24] 1721 	push	acc
      00369A E4               [12] 1722 	clr	a
      00369B C0 E0            [24] 1723 	push	acc
      00369D 74 26            [12] 1724 	mov	a,#0x26
      00369F C0 E0            [24] 1725 	push	acc
      0036A1 E4               [12] 1726 	clr	a
      0036A2 C0 E0            [24] 1727 	push	acc
      0036A4 74 78            [12] 1728 	mov	a,#___str_29
      0036A6 C0 E0            [24] 1729 	push	acc
      0036A8 74 4A            [12] 1730 	mov	a,#(___str_29 >> 8)
      0036AA C0 E0            [24] 1731 	push	acc
      0036AC 74 80            [12] 1732 	mov	a,#0x80
      0036AE C0 E0            [24] 1733 	push	acc
      0036B0 12 37 96         [24] 1734 	lcall	_printf
      0036B3 E5 81            [12] 1735 	mov	a,sp
      0036B5 24 F9            [12] 1736 	add	a,#0xf9
      0036B7 F5 81            [12] 1737 	mov	sp,a
                                   1738 ;	8051_i2c_eeprom.c:306: eeprom_write(address, test_data);
      0036B9 90 04 0A         [24] 1739 	mov	dptr,#_eeprom_write_PARM_2
      0036BC 74 26            [12] 1740 	mov	a,#0x26
      0036BE F0               [24] 1741 	movx	@dptr,a
      0036BF 90 00 02         [24] 1742 	mov	dptr,#0x0002
      0036C2 12 33 6E         [24] 1743 	lcall	_eeprom_write
                                   1744 ;	8051_i2c_eeprom.c:307: i2c_stop();
      0036C5 12 36 6C         [24] 1745 	lcall	_i2c_stop
                                   1746 ;	8051_i2c_eeprom.c:309: for(int i = 0; i<100; i++)
      0036C8 7E 00            [12] 1747 	mov	r6,#0x00
      0036CA 7F 00            [12] 1748 	mov	r7,#0x00
      0036CC                       1749 00106$:
      0036CC C3               [12] 1750 	clr	c
      0036CD EE               [12] 1751 	mov	a,r6
      0036CE 94 64            [12] 1752 	subb	a,#0x64
      0036D0 EF               [12] 1753 	mov	a,r7
      0036D1 64 80            [12] 1754 	xrl	a,#0x80
      0036D3 94 80            [12] 1755 	subb	a,#0x80
      0036D5 50 12            [24] 1756 	jnc	00101$
                                   1757 ;	8051_i2c_eeprom.c:311: i2c_delay();
      0036D7 C0 07            [24] 1758 	push	ar7
      0036D9 C0 06            [24] 1759 	push	ar6
      0036DB 12 36 79         [24] 1760 	lcall	_i2c_delay
      0036DE D0 06            [24] 1761 	pop	ar6
      0036E0 D0 07            [24] 1762 	pop	ar7
                                   1763 ;	8051_i2c_eeprom.c:309: for(int i = 0; i<100; i++)
      0036E2 0E               [12] 1764 	inc	r6
      0036E3 BE 00 E6         [24] 1765 	cjne	r6,#0x00,00106$
      0036E6 0F               [12] 1766 	inc	r7
      0036E7 80 E3            [24] 1767 	sjmp	00106$
      0036E9                       1768 00101$:
                                   1769 ;	8051_i2c_eeprom.c:315: unsigned char read_data = eeprom_read(address);
      0036E9 90 00 02         [24] 1770 	mov	dptr,#0x0002
      0036EC 12 34 A7         [24] 1771 	lcall	_eeprom_read
      0036EF AE 82            [24] 1772 	mov	r6,dpl
                                   1773 ;	8051_i2c_eeprom.c:316: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      0036F1 8E 05            [24] 1774 	mov	ar5,r6
      0036F3 7F 00            [12] 1775 	mov	r7,#0x00
      0036F5 C0 06            [24] 1776 	push	ar6
      0036F7 C0 05            [24] 1777 	push	ar5
      0036F9 C0 07            [24] 1778 	push	ar7
      0036FB 74 02            [12] 1779 	mov	a,#0x02
      0036FD C0 E0            [24] 1780 	push	acc
      0036FF E4               [12] 1781 	clr	a
      003700 C0 E0            [24] 1782 	push	acc
      003702 74 A0            [12] 1783 	mov	a,#___str_30
      003704 C0 E0            [24] 1784 	push	acc
      003706 74 4A            [12] 1785 	mov	a,#(___str_30 >> 8)
      003708 C0 E0            [24] 1786 	push	acc
      00370A 74 80            [12] 1787 	mov	a,#0x80
      00370C C0 E0            [24] 1788 	push	acc
      00370E 12 37 96         [24] 1789 	lcall	_printf
      003711 E5 81            [12] 1790 	mov	a,sp
      003713 24 F9            [12] 1791 	add	a,#0xf9
      003715 F5 81            [12] 1792 	mov	sp,a
      003717 D0 06            [24] 1793 	pop	ar6
                                   1794 ;	8051_i2c_eeprom.c:319: if(read_data == test_data) {
      003719 BE 26 16         [24] 1795 	cjne	r6,#0x26,00103$
                                   1796 ;	8051_i2c_eeprom.c:320: printf("MATCH - Write/Read successful!\n\r");
      00371C 74 C8            [12] 1797 	mov	a,#___str_31
      00371E C0 E0            [24] 1798 	push	acc
      003720 74 4A            [12] 1799 	mov	a,#(___str_31 >> 8)
      003722 C0 E0            [24] 1800 	push	acc
      003724 74 80            [12] 1801 	mov	a,#0x80
      003726 C0 E0            [24] 1802 	push	acc
      003728 12 37 96         [24] 1803 	lcall	_printf
      00372B 15 81            [12] 1804 	dec	sp
      00372D 15 81            [12] 1805 	dec	sp
      00372F 15 81            [12] 1806 	dec	sp
      003731 22               [24] 1807 	ret
      003732                       1808 00103$:
                                   1809 ;	8051_i2c_eeprom.c:322: printf("ERROR - Data mismatch!\n\r");
      003732 74 E9            [12] 1810 	mov	a,#___str_32
      003734 C0 E0            [24] 1811 	push	acc
      003736 74 4A            [12] 1812 	mov	a,#(___str_32 >> 8)
      003738 C0 E0            [24] 1813 	push	acc
      00373A 74 80            [12] 1814 	mov	a,#0x80
      00373C C0 E0            [24] 1815 	push	acc
      00373E 12 37 96         [24] 1816 	lcall	_printf
      003741 15 81            [12] 1817 	dec	sp
      003743 15 81            [12] 1818 	dec	sp
      003745 15 81            [12] 1819 	dec	sp
                                   1820 ;	8051_i2c_eeprom.c:326: }
      003747 22               [24] 1821 	ret
                                   1822 	.area CSEG    (CODE)
                                   1823 	.area CONST   (CODE)
                                   1824 	.area CONST   (CODE)
      0041F8                       1825 ___str_0:
      0041F8 0A                    1826 	.db 0x0a
      0041F9 E2                    1827 	.db 0xe2
      0041FA 95                    1828 	.db 0x95
      0041FB 94                    1829 	.db 0x94
      0041FC E2                    1830 	.db 0xe2
      0041FD 95                    1831 	.db 0x95
      0041FE 90                    1832 	.db 0x90
      0041FF E2                    1833 	.db 0xe2
      004200 95                    1834 	.db 0x95
      004201 90                    1835 	.db 0x90
      004202 E2                    1836 	.db 0xe2
      004203 95                    1837 	.db 0x95
      004204 90                    1838 	.db 0x90
      004205 E2                    1839 	.db 0xe2
      004206 95                    1840 	.db 0x95
      004207 90                    1841 	.db 0x90
      004208 E2                    1842 	.db 0xe2
      004209 95                    1843 	.db 0x95
      00420A 90                    1844 	.db 0x90
      00420B E2                    1845 	.db 0xe2
      00420C 95                    1846 	.db 0x95
      00420D 90                    1847 	.db 0x90
      00420E E2                    1848 	.db 0xe2
      00420F 95                    1849 	.db 0x95
      004210 90                    1850 	.db 0x90
      004211 E2                    1851 	.db 0xe2
      004212 95                    1852 	.db 0x95
      004213 90                    1853 	.db 0x90
      004214 E2                    1854 	.db 0xe2
      004215 95                    1855 	.db 0x95
      004216 90                    1856 	.db 0x90
      004217 E2                    1857 	.db 0xe2
      004218 95                    1858 	.db 0x95
      004219 90                    1859 	.db 0x90
      00421A E2                    1860 	.db 0xe2
      00421B 95                    1861 	.db 0x95
      00421C 90                    1862 	.db 0x90
      00421D E2                    1863 	.db 0xe2
      00421E 95                    1864 	.db 0x95
      00421F 90                    1865 	.db 0x90
      004220 E2                    1866 	.db 0xe2
      004221 95                    1867 	.db 0x95
      004222 90                    1868 	.db 0x90
      004223 E2                    1869 	.db 0xe2
      004224 95                    1870 	.db 0x95
      004225 90                    1871 	.db 0x90
      004226 E2                    1872 	.db 0xe2
      004227 95                    1873 	.db 0x95
      004228 90                    1874 	.db 0x90
      004229 E2                    1875 	.db 0xe2
      00422A 95                    1876 	.db 0x95
      00422B 90                    1877 	.db 0x90
      00422C E2                    1878 	.db 0xe2
      00422D 95                    1879 	.db 0x95
      00422E 90                    1880 	.db 0x90
      00422F E2                    1881 	.db 0xe2
      004230 95                    1882 	.db 0x95
      004231 90                    1883 	.db 0x90
      004232 E2                    1884 	.db 0xe2
      004233 95                    1885 	.db 0x95
      004234 90                    1886 	.db 0x90
      004235 E2                    1887 	.db 0xe2
      004236 95                    1888 	.db 0x95
      004237 90                    1889 	.db 0x90
      004238 E2                    1890 	.db 0xe2
      004239 95                    1891 	.db 0x95
      00423A 90                    1892 	.db 0x90
      00423B E2                    1893 	.db 0xe2
      00423C 95                    1894 	.db 0x95
      00423D 90                    1895 	.db 0x90
      00423E E2                    1896 	.db 0xe2
      00423F 95                    1897 	.db 0x95
      004240 90                    1898 	.db 0x90
      004241 E2                    1899 	.db 0xe2
      004242 95                    1900 	.db 0x95
      004243 90                    1901 	.db 0x90
      004244 E2                    1902 	.db 0xe2
      004245 95                    1903 	.db 0x95
      004246 90                    1904 	.db 0x90
      004247 E2                    1905 	.db 0xe2
      004248 95                    1906 	.db 0x95
      004249 90                    1907 	.db 0x90
      00424A E2                    1908 	.db 0xe2
      00424B 95                    1909 	.db 0x95
      00424C 90                    1910 	.db 0x90
      00424D E2                    1911 	.db 0xe2
      00424E 95                    1912 	.db 0x95
      00424F 90                    1913 	.db 0x90
      004250 E2                    1914 	.db 0xe2
      004251 95                    1915 	.db 0x95
      004252 90                    1916 	.db 0x90
      004253 E2                    1917 	.db 0xe2
      004254 95                    1918 	.db 0x95
      004255 90                    1919 	.db 0x90
      004256 E2                    1920 	.db 0xe2
      004257 95                    1921 	.db 0x95
      004258 90                    1922 	.db 0x90
      004259 E2                    1923 	.db 0xe2
      00425A 95                    1924 	.db 0x95
      00425B 90                    1925 	.db 0x90
      00425C E2                    1926 	.db 0xe2
      00425D 95                    1927 	.db 0x95
      00425E 90                    1928 	.db 0x90
      00425F E2                    1929 	.db 0xe2
      004260 95                    1930 	.db 0x95
      004261 90                    1931 	.db 0x90
      004262 E2                    1932 	.db 0xe2
      004263 95                    1933 	.db 0x95
      004264 90                    1934 	.db 0x90
      004265 E2                    1935 	.db 0xe2
      004266 95                    1936 	.db 0x95
      004267 90                    1937 	.db 0x90
      004268 E2                    1938 	.db 0xe2
      004269 95                    1939 	.db 0x95
      00426A 90                    1940 	.db 0x90
      00426B E2                    1941 	.db 0xe2
      00426C 95                    1942 	.db 0x95
      00426D 90                    1943 	.db 0x90
      00426E E2                    1944 	.db 0xe2
      00426F 95                    1945 	.db 0x95
      004270 90                    1946 	.db 0x90
      004271 E2                    1947 	.db 0xe2
      004272 95                    1948 	.db 0x95
      004273 90                    1949 	.db 0x90
      004274 E2                    1950 	.db 0xe2
      004275 95                    1951 	.db 0x95
      004276 90                    1952 	.db 0x90
      004277 E2                    1953 	.db 0xe2
      004278 95                    1954 	.db 0x95
      004279 90                    1955 	.db 0x90
      00427A E2                    1956 	.db 0xe2
      00427B 95                    1957 	.db 0x95
      00427C 90                    1958 	.db 0x90
      00427D E2                    1959 	.db 0xe2
      00427E 95                    1960 	.db 0x95
      00427F 90                    1961 	.db 0x90
      004280 E2                    1962 	.db 0xe2
      004281 95                    1963 	.db 0x95
      004282 90                    1964 	.db 0x90
      004283 E2                    1965 	.db 0xe2
      004284 95                    1966 	.db 0x95
      004285 90                    1967 	.db 0x90
      004286 E2                    1968 	.db 0xe2
      004287 95                    1969 	.db 0x95
      004288 90                    1970 	.db 0x90
      004289 E2                    1971 	.db 0xe2
      00428A 95                    1972 	.db 0x95
      00428B 90                    1973 	.db 0x90
      00428C E2                    1974 	.db 0xe2
      00428D 95                    1975 	.db 0x95
      00428E 90                    1976 	.db 0x90
      00428F E2                    1977 	.db 0xe2
      004290 95                    1978 	.db 0x95
      004291 90                    1979 	.db 0x90
      004292 E2                    1980 	.db 0xe2
      004293 95                    1981 	.db 0x95
      004294 90                    1982 	.db 0x90
      004295 E2                    1983 	.db 0xe2
      004296 95                    1984 	.db 0x95
      004297 90                    1985 	.db 0x90
      004298 E2                    1986 	.db 0xe2
      004299 95                    1987 	.db 0x95
      00429A 90                    1988 	.db 0x90
      00429B E2                    1989 	.db 0xe2
      00429C 95                    1990 	.db 0x95
      00429D 90                    1991 	.db 0x90
      00429E E2                    1992 	.db 0xe2
      00429F 95                    1993 	.db 0x95
      0042A0 90                    1994 	.db 0x90
      0042A1 E2                    1995 	.db 0xe2
      0042A2 95                    1996 	.db 0x95
      0042A3 90                    1997 	.db 0x90
      0042A4 E2                    1998 	.db 0xe2
      0042A5 95                    1999 	.db 0x95
      0042A6 97                    2000 	.db 0x97
      0042A7 0A                    2001 	.db 0x0a
      0042A8 0D                    2002 	.db 0x0d
      0042A9 00                    2003 	.db 0x00
                                   2004 	.area CSEG    (CODE)
                                   2005 	.area CONST   (CODE)
      0042AA                       2006 ___str_1:
      0042AA E2                    2007 	.db 0xe2
      0042AB 95                    2008 	.db 0x95
      0042AC 91                    2009 	.db 0x91
      0042AD 20 20 20 20 20 20 20  2010 	.ascii "           I2C Memory Management System v1.0             "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
             20
      0042E6 E2                    2011 	.db 0xe2
      0042E7 95                    2012 	.db 0x95
      0042E8 91                    2013 	.db 0x91
      0042E9 0A                    2014 	.db 0x0a
      0042EA 0D                    2015 	.db 0x0d
      0042EB 00                    2016 	.db 0x00
                                   2017 	.area CSEG    (CODE)
                                   2018 	.area CONST   (CODE)
      0042EC                       2019 ___str_2:
      0042EC E2                    2020 	.db 0xe2
      0042ED 95                    2021 	.db 0x95
      0042EE 9A                    2022 	.db 0x9a
      0042EF E2                    2023 	.db 0xe2
      0042F0 95                    2024 	.db 0x95
      0042F1 90                    2025 	.db 0x90
      0042F2 E2                    2026 	.db 0xe2
      0042F3 95                    2027 	.db 0x95
      0042F4 90                    2028 	.db 0x90
      0042F5 E2                    2029 	.db 0xe2
      0042F6 95                    2030 	.db 0x95
      0042F7 90                    2031 	.db 0x90
      0042F8 E2                    2032 	.db 0xe2
      0042F9 95                    2033 	.db 0x95
      0042FA 90                    2034 	.db 0x90
      0042FB E2                    2035 	.db 0xe2
      0042FC 95                    2036 	.db 0x95
      0042FD 90                    2037 	.db 0x90
      0042FE E2                    2038 	.db 0xe2
      0042FF 95                    2039 	.db 0x95
      004300 90                    2040 	.db 0x90
      004301 E2                    2041 	.db 0xe2
      004302 95                    2042 	.db 0x95
      004303 90                    2043 	.db 0x90
      004304 E2                    2044 	.db 0xe2
      004305 95                    2045 	.db 0x95
      004306 90                    2046 	.db 0x90
      004307 E2                    2047 	.db 0xe2
      004308 95                    2048 	.db 0x95
      004309 90                    2049 	.db 0x90
      00430A E2                    2050 	.db 0xe2
      00430B 95                    2051 	.db 0x95
      00430C 90                    2052 	.db 0x90
      00430D E2                    2053 	.db 0xe2
      00430E 95                    2054 	.db 0x95
      00430F 90                    2055 	.db 0x90
      004310 E2                    2056 	.db 0xe2
      004311 95                    2057 	.db 0x95
      004312 90                    2058 	.db 0x90
      004313 E2                    2059 	.db 0xe2
      004314 95                    2060 	.db 0x95
      004315 90                    2061 	.db 0x90
      004316 E2                    2062 	.db 0xe2
      004317 95                    2063 	.db 0x95
      004318 90                    2064 	.db 0x90
      004319 E2                    2065 	.db 0xe2
      00431A 95                    2066 	.db 0x95
      00431B 90                    2067 	.db 0x90
      00431C E2                    2068 	.db 0xe2
      00431D 95                    2069 	.db 0x95
      00431E 90                    2070 	.db 0x90
      00431F E2                    2071 	.db 0xe2
      004320 95                    2072 	.db 0x95
      004321 90                    2073 	.db 0x90
      004322 E2                    2074 	.db 0xe2
      004323 95                    2075 	.db 0x95
      004324 90                    2076 	.db 0x90
      004325 E2                    2077 	.db 0xe2
      004326 95                    2078 	.db 0x95
      004327 90                    2079 	.db 0x90
      004328 E2                    2080 	.db 0xe2
      004329 95                    2081 	.db 0x95
      00432A 90                    2082 	.db 0x90
      00432B E2                    2083 	.db 0xe2
      00432C 95                    2084 	.db 0x95
      00432D 90                    2085 	.db 0x90
      00432E E2                    2086 	.db 0xe2
      00432F 95                    2087 	.db 0x95
      004330 90                    2088 	.db 0x90
      004331 E2                    2089 	.db 0xe2
      004332 95                    2090 	.db 0x95
      004333 90                    2091 	.db 0x90
      004334 E2                    2092 	.db 0xe2
      004335 95                    2093 	.db 0x95
      004336 90                    2094 	.db 0x90
      004337 E2                    2095 	.db 0xe2
      004338 95                    2096 	.db 0x95
      004339 90                    2097 	.db 0x90
      00433A E2                    2098 	.db 0xe2
      00433B 95                    2099 	.db 0x95
      00433C 90                    2100 	.db 0x90
      00433D E2                    2101 	.db 0xe2
      00433E 95                    2102 	.db 0x95
      00433F 90                    2103 	.db 0x90
      004340 E2                    2104 	.db 0xe2
      004341 95                    2105 	.db 0x95
      004342 90                    2106 	.db 0x90
      004343 E2                    2107 	.db 0xe2
      004344 95                    2108 	.db 0x95
      004345 90                    2109 	.db 0x90
      004346 E2                    2110 	.db 0xe2
      004347 95                    2111 	.db 0x95
      004348 90                    2112 	.db 0x90
      004349 E2                    2113 	.db 0xe2
      00434A 95                    2114 	.db 0x95
      00434B 90                    2115 	.db 0x90
      00434C E2                    2116 	.db 0xe2
      00434D 95                    2117 	.db 0x95
      00434E 90                    2118 	.db 0x90
      00434F E2                    2119 	.db 0xe2
      004350 95                    2120 	.db 0x95
      004351 90                    2121 	.db 0x90
      004352 E2                    2122 	.db 0xe2
      004353 95                    2123 	.db 0x95
      004354 90                    2124 	.db 0x90
      004355 E2                    2125 	.db 0xe2
      004356 95                    2126 	.db 0x95
      004357 90                    2127 	.db 0x90
      004358 E2                    2128 	.db 0xe2
      004359 95                    2129 	.db 0x95
      00435A 90                    2130 	.db 0x90
      00435B E2                    2131 	.db 0xe2
      00435C 95                    2132 	.db 0x95
      00435D 90                    2133 	.db 0x90
      00435E E2                    2134 	.db 0xe2
      00435F 95                    2135 	.db 0x95
      004360 90                    2136 	.db 0x90
      004361 E2                    2137 	.db 0xe2
      004362 95                    2138 	.db 0x95
      004363 90                    2139 	.db 0x90
      004364 E2                    2140 	.db 0xe2
      004365 95                    2141 	.db 0x95
      004366 90                    2142 	.db 0x90
      004367 E2                    2143 	.db 0xe2
      004368 95                    2144 	.db 0x95
      004369 90                    2145 	.db 0x90
      00436A E2                    2146 	.db 0xe2
      00436B 95                    2147 	.db 0x95
      00436C 90                    2148 	.db 0x90
      00436D E2                    2149 	.db 0xe2
      00436E 95                    2150 	.db 0x95
      00436F 90                    2151 	.db 0x90
      004370 E2                    2152 	.db 0xe2
      004371 95                    2153 	.db 0x95
      004372 90                    2154 	.db 0x90
      004373 E2                    2155 	.db 0xe2
      004374 95                    2156 	.db 0x95
      004375 90                    2157 	.db 0x90
      004376 E2                    2158 	.db 0xe2
      004377 95                    2159 	.db 0x95
      004378 90                    2160 	.db 0x90
      004379 E2                    2161 	.db 0xe2
      00437A 95                    2162 	.db 0x95
      00437B 90                    2163 	.db 0x90
      00437C E2                    2164 	.db 0xe2
      00437D 95                    2165 	.db 0x95
      00437E 90                    2166 	.db 0x90
      00437F E2                    2167 	.db 0xe2
      004380 95                    2168 	.db 0x95
      004381 90                    2169 	.db 0x90
      004382 E2                    2170 	.db 0xe2
      004383 95                    2171 	.db 0x95
      004384 90                    2172 	.db 0x90
      004385 E2                    2173 	.db 0xe2
      004386 95                    2174 	.db 0x95
      004387 90                    2175 	.db 0x90
      004388 E2                    2176 	.db 0xe2
      004389 95                    2177 	.db 0x95
      00438A 90                    2178 	.db 0x90
      00438B E2                    2179 	.db 0xe2
      00438C 95                    2180 	.db 0x95
      00438D 90                    2181 	.db 0x90
      00438E E2                    2182 	.db 0xe2
      00438F 95                    2183 	.db 0x95
      004390 90                    2184 	.db 0x90
      004391 E2                    2185 	.db 0xe2
      004392 95                    2186 	.db 0x95
      004393 90                    2187 	.db 0x90
      004394 E2                    2188 	.db 0xe2
      004395 95                    2189 	.db 0x95
      004396 90                    2190 	.db 0x90
      004397 E2                    2191 	.db 0xe2
      004398 95                    2192 	.db 0x95
      004399 9D                    2193 	.db 0x9d
      00439A 0A                    2194 	.db 0x0a
      00439B 0D                    2195 	.db 0x0d
      00439C 00                    2196 	.db 0x00
                                   2197 	.area CSEG    (CODE)
                                   2198 	.area CONST   (CODE)
      00439D                       2199 ___str_3:
      00439D 0A                    2200 	.db 0x0a
      00439E 0D                    2201 	.db 0x0d
      00439F E2                    2202 	.db 0xe2
      0043A0 94                    2203 	.db 0x94
      0043A1 8C                    2204 	.db 0x8c
      0043A2 E2                    2205 	.db 0xe2
      0043A3 94                    2206 	.db 0x94
      0043A4 80                    2207 	.db 0x80
      0043A5 E2                    2208 	.db 0xe2
      0043A6 94                    2209 	.db 0x94
      0043A7 80                    2210 	.db 0x80
      0043A8 E2                    2211 	.db 0xe2
      0043A9 94                    2212 	.db 0x94
      0043AA 80                    2213 	.db 0x80
      0043AB E2                    2214 	.db 0xe2
      0043AC 94                    2215 	.db 0x94
      0043AD 80                    2216 	.db 0x80
      0043AE E2                    2217 	.db 0xe2
      0043AF 94                    2218 	.db 0x94
      0043B0 80                    2219 	.db 0x80
      0043B1 E2                    2220 	.db 0xe2
      0043B2 94                    2221 	.db 0x94
      0043B3 80                    2222 	.db 0x80
      0043B4 E2                    2223 	.db 0xe2
      0043B5 94                    2224 	.db 0x94
      0043B6 80                    2225 	.db 0x80
      0043B7 E2                    2226 	.db 0xe2
      0043B8 94                    2227 	.db 0x94
      0043B9 80                    2228 	.db 0x80
      0043BA E2                    2229 	.db 0xe2
      0043BB 94                    2230 	.db 0x94
      0043BC 80                    2231 	.db 0x80
      0043BD E2                    2232 	.db 0xe2
      0043BE 94                    2233 	.db 0x94
      0043BF 80                    2234 	.db 0x80
      0043C0 E2                    2235 	.db 0xe2
      0043C1 94                    2236 	.db 0x94
      0043C2 80                    2237 	.db 0x80
      0043C3 E2                    2238 	.db 0xe2
      0043C4 94                    2239 	.db 0x94
      0043C5 80                    2240 	.db 0x80
      0043C6 E2                    2241 	.db 0xe2
      0043C7 94                    2242 	.db 0x94
      0043C8 AC                    2243 	.db 0xac
      0043C9 E2                    2244 	.db 0xe2
      0043CA 94                    2245 	.db 0x94
      0043CB 80                    2246 	.db 0x80
      0043CC E2                    2247 	.db 0xe2
      0043CD 94                    2248 	.db 0x94
      0043CE 80                    2249 	.db 0x80
      0043CF E2                    2250 	.db 0xe2
      0043D0 94                    2251 	.db 0x94
      0043D1 80                    2252 	.db 0x80
      0043D2 E2                    2253 	.db 0xe2
      0043D3 94                    2254 	.db 0x94
      0043D4 80                    2255 	.db 0x80
      0043D5 E2                    2256 	.db 0xe2
      0043D6 94                    2257 	.db 0x94
      0043D7 80                    2258 	.db 0x80
      0043D8 E2                    2259 	.db 0xe2
      0043D9 94                    2260 	.db 0x94
      0043DA 80                    2261 	.db 0x80
      0043DB E2                    2262 	.db 0xe2
      0043DC 94                    2263 	.db 0x94
      0043DD 80                    2264 	.db 0x80
      0043DE E2                    2265 	.db 0xe2
      0043DF 94                    2266 	.db 0x94
      0043E0 80                    2267 	.db 0x80
      0043E1 E2                    2268 	.db 0xe2
      0043E2 94                    2269 	.db 0x94
      0043E3 80                    2270 	.db 0x80
      0043E4 E2                    2271 	.db 0xe2
      0043E5 94                    2272 	.db 0x94
      0043E6 80                    2273 	.db 0x80
      0043E7 E2                    2274 	.db 0xe2
      0043E8 94                    2275 	.db 0x94
      0043E9 80                    2276 	.db 0x80
      0043EA E2                    2277 	.db 0xe2
      0043EB 94                    2278 	.db 0x94
      0043EC 80                    2279 	.db 0x80
      0043ED E2                    2280 	.db 0xe2
      0043EE 94                    2281 	.db 0x94
      0043EF 80                    2282 	.db 0x80
      0043F0 E2                    2283 	.db 0xe2
      0043F1 94                    2284 	.db 0x94
      0043F2 80                    2285 	.db 0x80
      0043F3 E2                    2286 	.db 0xe2
      0043F4 94                    2287 	.db 0x94
      0043F5 80                    2288 	.db 0x80
      0043F6 E2                    2289 	.db 0xe2
      0043F7 94                    2290 	.db 0x94
      0043F8 80                    2291 	.db 0x80
      0043F9 E2                    2292 	.db 0xe2
      0043FA 94                    2293 	.db 0x94
      0043FB 80                    2294 	.db 0x80
      0043FC E2                    2295 	.db 0xe2
      0043FD 94                    2296 	.db 0x94
      0043FE 80                    2297 	.db 0x80
      0043FF E2                    2298 	.db 0xe2
      004400 94                    2299 	.db 0x94
      004401 80                    2300 	.db 0x80
      004402 E2                    2301 	.db 0xe2
      004403 94                    2302 	.db 0x94
      004404 80                    2303 	.db 0x80
      004405 E2                    2304 	.db 0xe2
      004406 94                    2305 	.db 0x94
      004407 80                    2306 	.db 0x80
      004408 E2                    2307 	.db 0xe2
      004409 94                    2308 	.db 0x94
      00440A 80                    2309 	.db 0x80
      00440B E2                    2310 	.db 0xe2
      00440C 94                    2311 	.db 0x94
      00440D 80                    2312 	.db 0x80
      00440E E2                    2313 	.db 0xe2
      00440F 94                    2314 	.db 0x94
      004410 80                    2315 	.db 0x80
      004411 E2                    2316 	.db 0xe2
      004412 94                    2317 	.db 0x94
      004413 80                    2318 	.db 0x80
      004414 E2                    2319 	.db 0xe2
      004415 94                    2320 	.db 0x94
      004416 80                    2321 	.db 0x80
      004417 E2                    2322 	.db 0xe2
      004418 94                    2323 	.db 0x94
      004419 80                    2324 	.db 0x80
      00441A E2                    2325 	.db 0xe2
      00441B 94                    2326 	.db 0x94
      00441C 80                    2327 	.db 0x80
      00441D E2                    2328 	.db 0xe2
      00441E 94                    2329 	.db 0x94
      00441F 80                    2330 	.db 0x80
      004420 E2                    2331 	.db 0xe2
      004421 94                    2332 	.db 0x94
      004422 80                    2333 	.db 0x80
      004423 E2                    2334 	.db 0xe2
      004424 94                    2335 	.db 0x94
      004425 80                    2336 	.db 0x80
      004426 E2                    2337 	.db 0xe2
      004427 94                    2338 	.db 0x94
      004428 80                    2339 	.db 0x80
      004429 E2                    2340 	.db 0xe2
      00442A 94                    2341 	.db 0x94
      00442B 80                    2342 	.db 0x80
      00442C E2                    2343 	.db 0xe2
      00442D 94                    2344 	.db 0x94
      00442E 80                    2345 	.db 0x80
      00442F E2                    2346 	.db 0xe2
      004430 94                    2347 	.db 0x94
      004431 80                    2348 	.db 0x80
      004432 E2                    2349 	.db 0xe2
      004433 94                    2350 	.db 0x94
      004434 80                    2351 	.db 0x80
      004435 E2                    2352 	.db 0xe2
      004436 94                    2353 	.db 0x94
      004437 80                    2354 	.db 0x80
      004438 E2                    2355 	.db 0xe2
      004439 94                    2356 	.db 0x94
      00443A 80                    2357 	.db 0x80
      00443B E2                    2358 	.db 0xe2
      00443C 94                    2359 	.db 0x94
      00443D 80                    2360 	.db 0x80
      00443E E2                    2361 	.db 0xe2
      00443F 94                    2362 	.db 0x94
      004440 80                    2363 	.db 0x80
      004441 E2                    2364 	.db 0xe2
      004442 94                    2365 	.db 0x94
      004443 80                    2366 	.db 0x80
      004444 E2                    2367 	.db 0xe2
      004445 94                    2368 	.db 0x94
      004446 80                    2369 	.db 0x80
      004447 E2                    2370 	.db 0xe2
      004448 94                    2371 	.db 0x94
      004449 80                    2372 	.db 0x80
      00444A E2                    2373 	.db 0xe2
      00444B 94                    2374 	.db 0x94
      00444C 80                    2375 	.db 0x80
      00444D E2                    2376 	.db 0xe2
      00444E 94                    2377 	.db 0x94
      00444F 90                    2378 	.db 0x90
      004450 0A                    2379 	.db 0x0a
      004451 0D                    2380 	.db 0x0d
      004452 00                    2381 	.db 0x00
                                   2382 	.area CSEG    (CODE)
                                   2383 	.area CONST   (CODE)
      004453                       2384 ___str_4:
      004453 E2                    2385 	.db 0xe2
      004454 94                    2386 	.db 0x94
      004455 82                    2387 	.db 0x82
      004456 20 20 43 6F 6D 6D 61  2388 	.ascii "  Command   "
             6E 64 20 20 20
      004462 E2                    2389 	.db 0xe2
      004463 94                    2390 	.db 0x94
      004464 82                    2391 	.db 0x82
      004465 20 20 20 20 20 20 20  2392 	.ascii "               Description                   "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20
      004492 E2                    2393 	.db 0xe2
      004493 94                    2394 	.db 0x94
      004494 82                    2395 	.db 0x82
      004495 0A                    2396 	.db 0x0a
      004496 0D                    2397 	.db 0x0d
      004497 00                    2398 	.db 0x00
                                   2399 	.area CSEG    (CODE)
                                   2400 	.area CONST   (CODE)
      004498                       2401 ___str_5:
      004498 E2                    2402 	.db 0xe2
      004499 94                    2403 	.db 0x94
      00449A 9C                    2404 	.db 0x9c
      00449B E2                    2405 	.db 0xe2
      00449C 94                    2406 	.db 0x94
      00449D 80                    2407 	.db 0x80
      00449E E2                    2408 	.db 0xe2
      00449F 94                    2409 	.db 0x94
      0044A0 80                    2410 	.db 0x80
      0044A1 E2                    2411 	.db 0xe2
      0044A2 94                    2412 	.db 0x94
      0044A3 80                    2413 	.db 0x80
      0044A4 E2                    2414 	.db 0xe2
      0044A5 94                    2415 	.db 0x94
      0044A6 80                    2416 	.db 0x80
      0044A7 E2                    2417 	.db 0xe2
      0044A8 94                    2418 	.db 0x94
      0044A9 80                    2419 	.db 0x80
      0044AA E2                    2420 	.db 0xe2
      0044AB 94                    2421 	.db 0x94
      0044AC 80                    2422 	.db 0x80
      0044AD E2                    2423 	.db 0xe2
      0044AE 94                    2424 	.db 0x94
      0044AF 80                    2425 	.db 0x80
      0044B0 E2                    2426 	.db 0xe2
      0044B1 94                    2427 	.db 0x94
      0044B2 80                    2428 	.db 0x80
      0044B3 E2                    2429 	.db 0xe2
      0044B4 94                    2430 	.db 0x94
      0044B5 80                    2431 	.db 0x80
      0044B6 E2                    2432 	.db 0xe2
      0044B7 94                    2433 	.db 0x94
      0044B8 80                    2434 	.db 0x80
      0044B9 E2                    2435 	.db 0xe2
      0044BA 94                    2436 	.db 0x94
      0044BB 80                    2437 	.db 0x80
      0044BC E2                    2438 	.db 0xe2
      0044BD 94                    2439 	.db 0x94
      0044BE 80                    2440 	.db 0x80
      0044BF E2                    2441 	.db 0xe2
      0044C0 94                    2442 	.db 0x94
      0044C1 BC                    2443 	.db 0xbc
      0044C2 E2                    2444 	.db 0xe2
      0044C3 94                    2445 	.db 0x94
      0044C4 80                    2446 	.db 0x80
      0044C5 E2                    2447 	.db 0xe2
      0044C6 94                    2448 	.db 0x94
      0044C7 80                    2449 	.db 0x80
      0044C8 E2                    2450 	.db 0xe2
      0044C9 94                    2451 	.db 0x94
      0044CA 80                    2452 	.db 0x80
      0044CB E2                    2453 	.db 0xe2
      0044CC 94                    2454 	.db 0x94
      0044CD 80                    2455 	.db 0x80
      0044CE E2                    2456 	.db 0xe2
      0044CF 94                    2457 	.db 0x94
      0044D0 80                    2458 	.db 0x80
      0044D1 E2                    2459 	.db 0xe2
      0044D2 94                    2460 	.db 0x94
      0044D3 80                    2461 	.db 0x80
      0044D4 E2                    2462 	.db 0xe2
      0044D5 94                    2463 	.db 0x94
      0044D6 80                    2464 	.db 0x80
      0044D7 E2                    2465 	.db 0xe2
      0044D8 94                    2466 	.db 0x94
      0044D9 80                    2467 	.db 0x80
      0044DA E2                    2468 	.db 0xe2
      0044DB 94                    2469 	.db 0x94
      0044DC 80                    2470 	.db 0x80
      0044DD E2                    2471 	.db 0xe2
      0044DE 94                    2472 	.db 0x94
      0044DF 80                    2473 	.db 0x80
      0044E0 E2                    2474 	.db 0xe2
      0044E1 94                    2475 	.db 0x94
      0044E2 80                    2476 	.db 0x80
      0044E3 E2                    2477 	.db 0xe2
      0044E4 94                    2478 	.db 0x94
      0044E5 80                    2479 	.db 0x80
      0044E6 E2                    2480 	.db 0xe2
      0044E7 94                    2481 	.db 0x94
      0044E8 80                    2482 	.db 0x80
      0044E9 E2                    2483 	.db 0xe2
      0044EA 94                    2484 	.db 0x94
      0044EB 80                    2485 	.db 0x80
      0044EC E2                    2486 	.db 0xe2
      0044ED 94                    2487 	.db 0x94
      0044EE 80                    2488 	.db 0x80
      0044EF E2                    2489 	.db 0xe2
      0044F0 94                    2490 	.db 0x94
      0044F1 80                    2491 	.db 0x80
      0044F2 E2                    2492 	.db 0xe2
      0044F3 94                    2493 	.db 0x94
      0044F4 80                    2494 	.db 0x80
      0044F5 E2                    2495 	.db 0xe2
      0044F6 94                    2496 	.db 0x94
      0044F7 80                    2497 	.db 0x80
      0044F8 E2                    2498 	.db 0xe2
      0044F9 94                    2499 	.db 0x94
      0044FA 80                    2500 	.db 0x80
      0044FB E2                    2501 	.db 0xe2
      0044FC 94                    2502 	.db 0x94
      0044FD 80                    2503 	.db 0x80
      0044FE E2                    2504 	.db 0xe2
      0044FF 94                    2505 	.db 0x94
      004500 80                    2506 	.db 0x80
      004501 E2                    2507 	.db 0xe2
      004502 94                    2508 	.db 0x94
      004503 80                    2509 	.db 0x80
      004504 E2                    2510 	.db 0xe2
      004505 94                    2511 	.db 0x94
      004506 80                    2512 	.db 0x80
      004507 E2                    2513 	.db 0xe2
      004508 94                    2514 	.db 0x94
      004509 80                    2515 	.db 0x80
      00450A E2                    2516 	.db 0xe2
      00450B 94                    2517 	.db 0x94
      00450C 80                    2518 	.db 0x80
      00450D E2                    2519 	.db 0xe2
      00450E 94                    2520 	.db 0x94
      00450F 80                    2521 	.db 0x80
      004510 E2                    2522 	.db 0xe2
      004511 94                    2523 	.db 0x94
      004512 80                    2524 	.db 0x80
      004513 E2                    2525 	.db 0xe2
      004514 94                    2526 	.db 0x94
      004515 80                    2527 	.db 0x80
      004516 E2                    2528 	.db 0xe2
      004517 94                    2529 	.db 0x94
      004518 80                    2530 	.db 0x80
      004519 E2                    2531 	.db 0xe2
      00451A 94                    2532 	.db 0x94
      00451B 80                    2533 	.db 0x80
      00451C E2                    2534 	.db 0xe2
      00451D 94                    2535 	.db 0x94
      00451E 80                    2536 	.db 0x80
      00451F E2                    2537 	.db 0xe2
      004520 94                    2538 	.db 0x94
      004521 80                    2539 	.db 0x80
      004522 E2                    2540 	.db 0xe2
      004523 94                    2541 	.db 0x94
      004524 80                    2542 	.db 0x80
      004525 E2                    2543 	.db 0xe2
      004526 94                    2544 	.db 0x94
      004527 80                    2545 	.db 0x80
      004528 E2                    2546 	.db 0xe2
      004529 94                    2547 	.db 0x94
      00452A 80                    2548 	.db 0x80
      00452B E2                    2549 	.db 0xe2
      00452C 94                    2550 	.db 0x94
      00452D 80                    2551 	.db 0x80
      00452E E2                    2552 	.db 0xe2
      00452F 94                    2553 	.db 0x94
      004530 80                    2554 	.db 0x80
      004531 E2                    2555 	.db 0xe2
      004532 94                    2556 	.db 0x94
      004533 80                    2557 	.db 0x80
      004534 E2                    2558 	.db 0xe2
      004535 94                    2559 	.db 0x94
      004536 80                    2560 	.db 0x80
      004537 E2                    2561 	.db 0xe2
      004538 94                    2562 	.db 0x94
      004539 80                    2563 	.db 0x80
      00453A E2                    2564 	.db 0xe2
      00453B 94                    2565 	.db 0x94
      00453C 80                    2566 	.db 0x80
      00453D E2                    2567 	.db 0xe2
      00453E 94                    2568 	.db 0x94
      00453F 80                    2569 	.db 0x80
      004540 E2                    2570 	.db 0xe2
      004541 94                    2571 	.db 0x94
      004542 80                    2572 	.db 0x80
      004543 E2                    2573 	.db 0xe2
      004544 94                    2574 	.db 0x94
      004545 80                    2575 	.db 0x80
      004546 E2                    2576 	.db 0xe2
      004547 94                    2577 	.db 0x94
      004548 A4                    2578 	.db 0xa4
      004549 0A                    2579 	.db 0x0a
      00454A 0D                    2580 	.db 0x0d
      00454B 00                    2581 	.db 0x00
                                   2582 	.area CSEG    (CODE)
                                   2583 	.area CONST   (CODE)
      00454C                       2584 ___str_6:
      00454C E2                    2585 	.db 0xe2
      00454D 94                    2586 	.db 0x94
      00454E 82                    2587 	.db 0x82
      00454F 20 20 20 20 20 52 20  2588 	.ascii "     R      "
             20 20 20 20 20
      00455B E2                    2589 	.db 0xe2
      00455C 94                    2590 	.db 0x94
      00455D 82                    2591 	.db 0x82
      00455E 20 52 65 61 64 20 66  2592 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      00458A E2                    2593 	.db 0xe2
      00458B 94                    2594 	.db 0x94
      00458C 82                    2595 	.db 0x82
      00458D 0A                    2596 	.db 0x0a
      00458E 0D                    2597 	.db 0x0d
      00458F 00                    2598 	.db 0x00
                                   2599 	.area CSEG    (CODE)
                                   2600 	.area CONST   (CODE)
      004590                       2601 ___str_7:
      004590 E2                    2602 	.db 0xe2
      004591 94                    2603 	.db 0x94
      004592 82                    2604 	.db 0x82
      004593 20 20 20 20 20 57 20  2605 	.ascii "     W      "
             20 20 20 20 20
      00459F E2                    2606 	.db 0xe2
      0045A0 94                    2607 	.db 0x94
      0045A1 82                    2608 	.db 0x82
      0045A2 20 57 72 69 74 65 20  2609 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0045CE E2                    2610 	.db 0xe2
      0045CF 94                    2611 	.db 0x94
      0045D0 82                    2612 	.db 0x82
      0045D1 0A                    2613 	.db 0x0a
      0045D2 0D                    2614 	.db 0x0d
      0045D3 00                    2615 	.db 0x00
                                   2616 	.area CSEG    (CODE)
                                   2617 	.area CONST   (CODE)
      0045D4                       2618 ___str_8:
      0045D4 E2                    2619 	.db 0xe2
      0045D5 94                    2620 	.db 0x94
      0045D6 82                    2621 	.db 0x82
      0045D7 20 20 20 20 20 48 20  2622 	.ascii "     H      "
             20 20 20 20 20
      0045E3 E2                    2623 	.db 0xe2
      0045E4 94                    2624 	.db 0x94
      0045E5 82                    2625 	.db 0x82
      0045E6 20 44 69 73 70 6C 61  2626 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004612 E2                    2627 	.db 0xe2
      004613 94                    2628 	.db 0x94
      004614 82                    2629 	.db 0x82
      004615 0A                    2630 	.db 0x0a
      004616 0D                    2631 	.db 0x0d
      004617 00                    2632 	.db 0x00
                                   2633 	.area CSEG    (CODE)
                                   2634 	.area CONST   (CODE)
      004618                       2635 ___str_9:
      004618 E2                    2636 	.db 0xe2
      004619 94                    2637 	.db 0x94
      00461A 82                    2638 	.db 0x82
      00461B 20 20 20 20 20 58 20  2639 	.ascii "     X      "
             20 20 20 20 20
      004627 E2                    2640 	.db 0xe2
      004628 94                    2641 	.db 0x94
      004629 82                    2642 	.db 0x82
      00462A 20 52 65 73 65 74 20  2643 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004656 E2                    2644 	.db 0xe2
      004657 94                    2645 	.db 0x94
      004658 82                    2646 	.db 0x82
      004659 0A                    2647 	.db 0x0a
      00465A 0D                    2648 	.db 0x0d
      00465B 00                    2649 	.db 0x00
                                   2650 	.area CSEG    (CODE)
                                   2651 	.area CONST   (CODE)
      00465C                       2652 ___str_10:
      00465C E2                    2653 	.db 0xe2
      00465D 94                    2654 	.db 0x94
      00465E 82                    2655 	.db 0x82
      00465F 20 20 20 20 20 3F 20  2656 	.ascii "     ?      "
             20 20 20 20 20
      00466B E2                    2657 	.db 0xe2
      00466C 94                    2658 	.db 0x94
      00466D 82                    2659 	.db 0x82
      00466E 20 44 69 73 70 6C 61  2660 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      00469A E2                    2661 	.db 0xe2
      00469B 94                    2662 	.db 0x94
      00469C 82                    2663 	.db 0x82
      00469D 0A                    2664 	.db 0x0a
      00469E 0D                    2665 	.db 0x0d
      00469F 00                    2666 	.db 0x00
                                   2667 	.area CSEG    (CODE)
                                   2668 	.area CONST   (CODE)
      0046A0                       2669 ___str_11:
      0046A0 E2                    2670 	.db 0xe2
      0046A1 94                    2671 	.db 0x94
      0046A2 82                    2672 	.db 0x82
      0046A3 20 20 20 20 20 51 20  2673 	.ascii "     Q      "
             20 20 20 20 20
      0046AF E2                    2674 	.db 0xe2
      0046B0 94                    2675 	.db 0x94
      0046B1 82                    2676 	.db 0x82
      0046B2 20 51 75 69 74 20 70  2677 	.ascii " Quit program                              "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20
      0046DD E2                    2678 	.db 0xe2
      0046DE 94                    2679 	.db 0x94
      0046DF 82                    2680 	.db 0x82
      0046E0 0A                    2681 	.db 0x0a
      0046E1 0D                    2682 	.db 0x0d
      0046E2 00                    2683 	.db 0x00
                                   2684 	.area CSEG    (CODE)
                                   2685 	.area CONST   (CODE)
      0046E3                       2686 ___str_12:
      0046E3 E2                    2687 	.db 0xe2
      0046E4 94                    2688 	.db 0x94
      0046E5 94                    2689 	.db 0x94
      0046E6 E2                    2690 	.db 0xe2
      0046E7 94                    2691 	.db 0x94
      0046E8 80                    2692 	.db 0x80
      0046E9 E2                    2693 	.db 0xe2
      0046EA 94                    2694 	.db 0x94
      0046EB 80                    2695 	.db 0x80
      0046EC E2                    2696 	.db 0xe2
      0046ED 94                    2697 	.db 0x94
      0046EE 80                    2698 	.db 0x80
      0046EF E2                    2699 	.db 0xe2
      0046F0 94                    2700 	.db 0x94
      0046F1 80                    2701 	.db 0x80
      0046F2 E2                    2702 	.db 0xe2
      0046F3 94                    2703 	.db 0x94
      0046F4 80                    2704 	.db 0x80
      0046F5 E2                    2705 	.db 0xe2
      0046F6 94                    2706 	.db 0x94
      0046F7 80                    2707 	.db 0x80
      0046F8 E2                    2708 	.db 0xe2
      0046F9 94                    2709 	.db 0x94
      0046FA 80                    2710 	.db 0x80
      0046FB E2                    2711 	.db 0xe2
      0046FC 94                    2712 	.db 0x94
      0046FD 80                    2713 	.db 0x80
      0046FE E2                    2714 	.db 0xe2
      0046FF 94                    2715 	.db 0x94
      004700 80                    2716 	.db 0x80
      004701 E2                    2717 	.db 0xe2
      004702 94                    2718 	.db 0x94
      004703 80                    2719 	.db 0x80
      004704 E2                    2720 	.db 0xe2
      004705 94                    2721 	.db 0x94
      004706 80                    2722 	.db 0x80
      004707 E2                    2723 	.db 0xe2
      004708 94                    2724 	.db 0x94
      004709 80                    2725 	.db 0x80
      00470A E2                    2726 	.db 0xe2
      00470B 94                    2727 	.db 0x94
      00470C B4                    2728 	.db 0xb4
      00470D E2                    2729 	.db 0xe2
      00470E 94                    2730 	.db 0x94
      00470F 80                    2731 	.db 0x80
      004710 E2                    2732 	.db 0xe2
      004711 94                    2733 	.db 0x94
      004712 80                    2734 	.db 0x80
      004713 E2                    2735 	.db 0xe2
      004714 94                    2736 	.db 0x94
      004715 80                    2737 	.db 0x80
      004716 E2                    2738 	.db 0xe2
      004717 94                    2739 	.db 0x94
      004718 80                    2740 	.db 0x80
      004719 E2                    2741 	.db 0xe2
      00471A 94                    2742 	.db 0x94
      00471B 80                    2743 	.db 0x80
      00471C E2                    2744 	.db 0xe2
      00471D 94                    2745 	.db 0x94
      00471E 80                    2746 	.db 0x80
      00471F E2                    2747 	.db 0xe2
      004720 94                    2748 	.db 0x94
      004721 80                    2749 	.db 0x80
      004722 E2                    2750 	.db 0xe2
      004723 94                    2751 	.db 0x94
      004724 80                    2752 	.db 0x80
      004725 E2                    2753 	.db 0xe2
      004726 94                    2754 	.db 0x94
      004727 80                    2755 	.db 0x80
      004728 E2                    2756 	.db 0xe2
      004729 94                    2757 	.db 0x94
      00472A 80                    2758 	.db 0x80
      00472B E2                    2759 	.db 0xe2
      00472C 94                    2760 	.db 0x94
      00472D 80                    2761 	.db 0x80
      00472E E2                    2762 	.db 0xe2
      00472F 94                    2763 	.db 0x94
      004730 80                    2764 	.db 0x80
      004731 E2                    2765 	.db 0xe2
      004732 94                    2766 	.db 0x94
      004733 80                    2767 	.db 0x80
      004734 E2                    2768 	.db 0xe2
      004735 94                    2769 	.db 0x94
      004736 80                    2770 	.db 0x80
      004737 E2                    2771 	.db 0xe2
      004738 94                    2772 	.db 0x94
      004739 80                    2773 	.db 0x80
      00473A E2                    2774 	.db 0xe2
      00473B 94                    2775 	.db 0x94
      00473C 80                    2776 	.db 0x80
      00473D E2                    2777 	.db 0xe2
      00473E 94                    2778 	.db 0x94
      00473F 80                    2779 	.db 0x80
      004740 E2                    2780 	.db 0xe2
      004741 94                    2781 	.db 0x94
      004742 80                    2782 	.db 0x80
      004743 E2                    2783 	.db 0xe2
      004744 94                    2784 	.db 0x94
      004745 80                    2785 	.db 0x80
      004746 E2                    2786 	.db 0xe2
      004747 94                    2787 	.db 0x94
      004748 80                    2788 	.db 0x80
      004749 E2                    2789 	.db 0xe2
      00474A 94                    2790 	.db 0x94
      00474B 80                    2791 	.db 0x80
      00474C E2                    2792 	.db 0xe2
      00474D 94                    2793 	.db 0x94
      00474E 80                    2794 	.db 0x80
      00474F E2                    2795 	.db 0xe2
      004750 94                    2796 	.db 0x94
      004751 80                    2797 	.db 0x80
      004752 E2                    2798 	.db 0xe2
      004753 94                    2799 	.db 0x94
      004754 80                    2800 	.db 0x80
      004755 E2                    2801 	.db 0xe2
      004756 94                    2802 	.db 0x94
      004757 80                    2803 	.db 0x80
      004758 E2                    2804 	.db 0xe2
      004759 94                    2805 	.db 0x94
      00475A 80                    2806 	.db 0x80
      00475B E2                    2807 	.db 0xe2
      00475C 94                    2808 	.db 0x94
      00475D 80                    2809 	.db 0x80
      00475E E2                    2810 	.db 0xe2
      00475F 94                    2811 	.db 0x94
      004760 80                    2812 	.db 0x80
      004761 E2                    2813 	.db 0xe2
      004762 94                    2814 	.db 0x94
      004763 80                    2815 	.db 0x80
      004764 E2                    2816 	.db 0xe2
      004765 94                    2817 	.db 0x94
      004766 80                    2818 	.db 0x80
      004767 E2                    2819 	.db 0xe2
      004768 94                    2820 	.db 0x94
      004769 80                    2821 	.db 0x80
      00476A E2                    2822 	.db 0xe2
      00476B 94                    2823 	.db 0x94
      00476C 80                    2824 	.db 0x80
      00476D E2                    2825 	.db 0xe2
      00476E 94                    2826 	.db 0x94
      00476F 80                    2827 	.db 0x80
      004770 E2                    2828 	.db 0xe2
      004771 94                    2829 	.db 0x94
      004772 80                    2830 	.db 0x80
      004773 E2                    2831 	.db 0xe2
      004774 94                    2832 	.db 0x94
      004775 80                    2833 	.db 0x80
      004776 E2                    2834 	.db 0xe2
      004777 94                    2835 	.db 0x94
      004778 80                    2836 	.db 0x80
      004779 E2                    2837 	.db 0xe2
      00477A 94                    2838 	.db 0x94
      00477B 80                    2839 	.db 0x80
      00477C E2                    2840 	.db 0xe2
      00477D 94                    2841 	.db 0x94
      00477E 80                    2842 	.db 0x80
      00477F E2                    2843 	.db 0xe2
      004780 94                    2844 	.db 0x94
      004781 80                    2845 	.db 0x80
      004782 E2                    2846 	.db 0xe2
      004783 94                    2847 	.db 0x94
      004784 80                    2848 	.db 0x80
      004785 E2                    2849 	.db 0xe2
      004786 94                    2850 	.db 0x94
      004787 80                    2851 	.db 0x80
      004788 E2                    2852 	.db 0xe2
      004789 94                    2853 	.db 0x94
      00478A 80                    2854 	.db 0x80
      00478B E2                    2855 	.db 0xe2
      00478C 94                    2856 	.db 0x94
      00478D 80                    2857 	.db 0x80
      00478E E2                    2858 	.db 0xe2
      00478F 94                    2859 	.db 0x94
      004790 80                    2860 	.db 0x80
      004791 E2                    2861 	.db 0xe2
      004792 94                    2862 	.db 0x94
      004793 98                    2863 	.db 0x98
      004794 0A                    2864 	.db 0x0a
      004795 0D                    2865 	.db 0x0d
      004796 00                    2866 	.db 0x00
                                   2867 	.area CSEG    (CODE)
                                   2868 	.area CONST   (CODE)
      004797                       2869 ___str_13:
      004797 24 20 25 63           2870 	.ascii "$ %c"
      00479B 0A                    2871 	.db 0x0a
      00479C 0D                    2872 	.db 0x0d
      00479D 00                    2873 	.db 0x00
                                   2874 	.area CSEG    (CODE)
                                   2875 	.area CONST   (CODE)
      00479E                       2876 ___str_14:
      00479E 0A                    2877 	.db 0x0a
      00479F E2                    2878 	.db 0xe2
      0047A0 94                    2879 	.db 0x94
      0047A1 8C                    2880 	.db 0x8c
      0047A2 E2                    2881 	.db 0xe2
      0047A3 94                    2882 	.db 0x94
      0047A4 80                    2883 	.db 0x80
      0047A5 E2                    2884 	.db 0xe2
      0047A6 94                    2885 	.db 0x94
      0047A7 80                    2886 	.db 0x80
      0047A8 E2                    2887 	.db 0xe2
      0047A9 94                    2888 	.db 0x94
      0047AA 80                    2889 	.db 0x80
      0047AB E2                    2890 	.db 0xe2
      0047AC 94                    2891 	.db 0x94
      0047AD 80                    2892 	.db 0x80
      0047AE E2                    2893 	.db 0xe2
      0047AF 94                    2894 	.db 0x94
      0047B0 80                    2895 	.db 0x80
      0047B1 E2                    2896 	.db 0xe2
      0047B2 94                    2897 	.db 0x94
      0047B3 80                    2898 	.db 0x80
      0047B4 E2                    2899 	.db 0xe2
      0047B5 94                    2900 	.db 0x94
      0047B6 80                    2901 	.db 0x80
      0047B7 E2                    2902 	.db 0xe2
      0047B8 94                    2903 	.db 0x94
      0047B9 80                    2904 	.db 0x80
      0047BA E2                    2905 	.db 0xe2
      0047BB 94                    2906 	.db 0x94
      0047BC 80                    2907 	.db 0x80
      0047BD E2                    2908 	.db 0xe2
      0047BE 94                    2909 	.db 0x94
      0047BF 80                    2910 	.db 0x80
      0047C0 E2                    2911 	.db 0xe2
      0047C1 94                    2912 	.db 0x94
      0047C2 80                    2913 	.db 0x80
      0047C3 E2                    2914 	.db 0xe2
      0047C4 94                    2915 	.db 0x94
      0047C5 80                    2916 	.db 0x80
      0047C6 E2                    2917 	.db 0xe2
      0047C7 94                    2918 	.db 0x94
      0047C8 80                    2919 	.db 0x80
      0047C9 E2                    2920 	.db 0xe2
      0047CA 94                    2921 	.db 0x94
      0047CB 80                    2922 	.db 0x80
      0047CC E2                    2923 	.db 0xe2
      0047CD 94                    2924 	.db 0x94
      0047CE 80                    2925 	.db 0x80
      0047CF 20 57 52 49 54 45 20  2926 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      0047E0 E2                    2927 	.db 0xe2
      0047E1 94                    2928 	.db 0x94
      0047E2 80                    2929 	.db 0x80
      0047E3 E2                    2930 	.db 0xe2
      0047E4 94                    2931 	.db 0x94
      0047E5 80                    2932 	.db 0x80
      0047E6 E2                    2933 	.db 0xe2
      0047E7 94                    2934 	.db 0x94
      0047E8 80                    2935 	.db 0x80
      0047E9 E2                    2936 	.db 0xe2
      0047EA 94                    2937 	.db 0x94
      0047EB 80                    2938 	.db 0x80
      0047EC E2                    2939 	.db 0xe2
      0047ED 94                    2940 	.db 0x94
      0047EE 80                    2941 	.db 0x80
      0047EF E2                    2942 	.db 0xe2
      0047F0 94                    2943 	.db 0x94
      0047F1 80                    2944 	.db 0x80
      0047F2 E2                    2945 	.db 0xe2
      0047F3 94                    2946 	.db 0x94
      0047F4 80                    2947 	.db 0x80
      0047F5 E2                    2948 	.db 0xe2
      0047F6 94                    2949 	.db 0x94
      0047F7 80                    2950 	.db 0x80
      0047F8 E2                    2951 	.db 0xe2
      0047F9 94                    2952 	.db 0x94
      0047FA 80                    2953 	.db 0x80
      0047FB E2                    2954 	.db 0xe2
      0047FC 94                    2955 	.db 0x94
      0047FD 80                    2956 	.db 0x80
      0047FE E2                    2957 	.db 0xe2
      0047FF 94                    2958 	.db 0x94
      004800 80                    2959 	.db 0x80
      004801 E2                    2960 	.db 0xe2
      004802 94                    2961 	.db 0x94
      004803 80                    2962 	.db 0x80
      004804 E2                    2963 	.db 0xe2
      004805 94                    2964 	.db 0x94
      004806 80                    2965 	.db 0x80
      004807 E2                    2966 	.db 0xe2
      004808 94                    2967 	.db 0x94
      004809 80                    2968 	.db 0x80
      00480A E2                    2969 	.db 0xe2
      00480B 94                    2970 	.db 0x94
      00480C 90                    2971 	.db 0x90
      00480D 0A                    2972 	.db 0x0a
      00480E 00                    2973 	.db 0x00
                                   2974 	.area CSEG    (CODE)
                                   2975 	.area CONST   (CODE)
      00480F                       2976 ___str_15:
      00480F 7C 20 57 72 69 74 69  2977 	.ascii "| Writing at Address %d Data %c          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             25 64 20 44 61 74 61
             20 25 63 20 20 20 20
             20 20 20 20 20 20 7C
      004839 0A                    2978 	.db 0x0a
      00483A 0D                    2979 	.db 0x0d
      00483B 00                    2980 	.db 0x00
                                   2981 	.area CSEG    (CODE)
                                   2982 	.area CONST   (CODE)
      00483C                       2983 ___str_16:
      00483C 49 4E 56 41 4C 49 44  2984 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      004849 0A                    2985 	.db 0x0a
      00484A 0D                    2986 	.db 0x0d
      00484B 00                    2987 	.db 0x00
                                   2988 	.area CSEG    (CODE)
                                   2989 	.area CONST   (CODE)
      00484C                       2990 ___str_17:
      00484C E2                    2991 	.db 0xe2
      00484D 94                    2992 	.db 0x94
      00484E 82                    2993 	.db 0x82
      00484F 20 45 6E 74 65 72 20  2994 	.ascii " Enter address (hex): "
             61 64 64 72 65 73 73
             20 28 68 65 78 29 3A
             20
      004865 0A                    2995 	.db 0x0a
      004866 0D                    2996 	.db 0x0d
      004867 00                    2997 	.db 0x00
                                   2998 	.area CSEG    (CODE)
                                   2999 	.area CONST   (CODE)
      004868                       3000 ___str_18:
      004868 E2                    3001 	.db 0xe2
      004869 94                    3002 	.db 0x94
      00486A 82                    3003 	.db 0x82
      00486B 20 45 6E 74 65 72 20  3004 	.ascii " Enter data (hex): "
             64 61 74 61 20 28 68
             65 78 29 3A 20
      00487E 0A                    3005 	.db 0x0a
      00487F 0D                    3006 	.db 0x0d
      004880 00                    3007 	.db 0x00
                                   3008 	.area CSEG    (CODE)
                                   3009 	.area CONST   (CODE)
      004881                       3010 ___str_19:
      004881 45 72 72 6F 72 3A 20  3011 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      0048A9 0A                    3012 	.db 0x0a
      0048AA 0D                    3013 	.db 0x0d
      0048AB 00                    3014 	.db 0x00
                                   3015 	.area CSEG    (CODE)
                                   3016 	.area CONST   (CODE)
      0048AC                       3017 ___str_20:
      0048AC 45 72 72 6F 72 3A 20  3018 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      0048CC 0A                    3019 	.db 0x0a
      0048CD 0D                    3020 	.db 0x0d
      0048CE 00                    3021 	.db 0x00
                                   3022 	.area CSEG    (CODE)
                                   3023 	.area CONST   (CODE)
      0048CF                       3024 ___str_21:
      0048CF 45 72 72 6F 72 3A 20  3025 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      0048E5 0A                    3026 	.db 0x0a
      0048E6 0D                    3027 	.db 0x0d
      0048E7 00                    3028 	.db 0x00
                                   3029 	.area CSEG    (CODE)
                                   3030 	.area CONST   (CODE)
      0048E8                       3031 ___str_22:
      0048E8 7C 20 57 72 69 74 69  3032 	.ascii "| Writing at Address 0x%02X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 32 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      00491A 0A                    3033 	.db 0x0a
      00491B 0D                    3034 	.db 0x0d
      00491C 00                    3035 	.db 0x00
                                   3036 	.area CSEG    (CODE)
                                   3037 	.area CONST   (CODE)
      00491D                       3038 ___str_23:
      00491D E2                    3039 	.db 0xe2
      00491E 94                    3040 	.db 0x94
      00491F 82                    3041 	.db 0x82
      004920 20 57 72 69 74 65 20  3042 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      00494F E2                    3043 	.db 0xe2
      004950 94                    3044 	.db 0x94
      004951 82                    3045 	.db 0x82
      004952 0A                    3046 	.db 0x0a
      004953 00                    3047 	.db 0x00
                                   3048 	.area CSEG    (CODE)
                                   3049 	.area CONST   (CODE)
      004954                       3050 ___str_24:
      004954 E2                    3051 	.db 0xe2
      004955 94                    3052 	.db 0x94
      004956 94                    3053 	.db 0x94
      004957 E2                    3054 	.db 0xe2
      004958 94                    3055 	.db 0x94
      004959 80                    3056 	.db 0x80
      00495A E2                    3057 	.db 0xe2
      00495B 94                    3058 	.db 0x94
      00495C 80                    3059 	.db 0x80
      00495D E2                    3060 	.db 0xe2
      00495E 94                    3061 	.db 0x94
      00495F 80                    3062 	.db 0x80
      004960 E2                    3063 	.db 0xe2
      004961 94                    3064 	.db 0x94
      004962 80                    3065 	.db 0x80
      004963 E2                    3066 	.db 0xe2
      004964 94                    3067 	.db 0x94
      004965 80                    3068 	.db 0x80
      004966 E2                    3069 	.db 0xe2
      004967 94                    3070 	.db 0x94
      004968 80                    3071 	.db 0x80
      004969 E2                    3072 	.db 0xe2
      00496A 94                    3073 	.db 0x94
      00496B 80                    3074 	.db 0x80
      00496C E2                    3075 	.db 0xe2
      00496D 94                    3076 	.db 0x94
      00496E 80                    3077 	.db 0x80
      00496F E2                    3078 	.db 0xe2
      004970 94                    3079 	.db 0x94
      004971 80                    3080 	.db 0x80
      004972 E2                    3081 	.db 0xe2
      004973 94                    3082 	.db 0x94
      004974 80                    3083 	.db 0x80
      004975 E2                    3084 	.db 0xe2
      004976 94                    3085 	.db 0x94
      004977 80                    3086 	.db 0x80
      004978 E2                    3087 	.db 0xe2
      004979 94                    3088 	.db 0x94
      00497A 80                    3089 	.db 0x80
      00497B E2                    3090 	.db 0xe2
      00497C 94                    3091 	.db 0x94
      00497D 80                    3092 	.db 0x80
      00497E E2                    3093 	.db 0xe2
      00497F 94                    3094 	.db 0x94
      004980 80                    3095 	.db 0x80
      004981 E2                    3096 	.db 0xe2
      004982 94                    3097 	.db 0x94
      004983 80                    3098 	.db 0x80
      004984 E2                    3099 	.db 0xe2
      004985 94                    3100 	.db 0x94
      004986 80                    3101 	.db 0x80
      004987 E2                    3102 	.db 0xe2
      004988 94                    3103 	.db 0x94
      004989 80                    3104 	.db 0x80
      00498A E2                    3105 	.db 0xe2
      00498B 94                    3106 	.db 0x94
      00498C 80                    3107 	.db 0x80
      00498D E2                    3108 	.db 0xe2
      00498E 94                    3109 	.db 0x94
      00498F 80                    3110 	.db 0x80
      004990 E2                    3111 	.db 0xe2
      004991 94                    3112 	.db 0x94
      004992 80                    3113 	.db 0x80
      004993 E2                    3114 	.db 0xe2
      004994 94                    3115 	.db 0x94
      004995 80                    3116 	.db 0x80
      004996 E2                    3117 	.db 0xe2
      004997 94                    3118 	.db 0x94
      004998 80                    3119 	.db 0x80
      004999 E2                    3120 	.db 0xe2
      00499A 94                    3121 	.db 0x94
      00499B 80                    3122 	.db 0x80
      00499C E2                    3123 	.db 0xe2
      00499D 94                    3124 	.db 0x94
      00499E 80                    3125 	.db 0x80
      00499F E2                    3126 	.db 0xe2
      0049A0 94                    3127 	.db 0x94
      0049A1 80                    3128 	.db 0x80
      0049A2 E2                    3129 	.db 0xe2
      0049A3 94                    3130 	.db 0x94
      0049A4 80                    3131 	.db 0x80
      0049A5 E2                    3132 	.db 0xe2
      0049A6 94                    3133 	.db 0x94
      0049A7 80                    3134 	.db 0x80
      0049A8 E2                    3135 	.db 0xe2
      0049A9 94                    3136 	.db 0x94
      0049AA 80                    3137 	.db 0x80
      0049AB E2                    3138 	.db 0xe2
      0049AC 94                    3139 	.db 0x94
      0049AD 80                    3140 	.db 0x80
      0049AE E2                    3141 	.db 0xe2
      0049AF 94                    3142 	.db 0x94
      0049B0 80                    3143 	.db 0x80
      0049B1 E2                    3144 	.db 0xe2
      0049B2 94                    3145 	.db 0x94
      0049B3 80                    3146 	.db 0x80
      0049B4 E2                    3147 	.db 0xe2
      0049B5 94                    3148 	.db 0x94
      0049B6 80                    3149 	.db 0x80
      0049B7 E2                    3150 	.db 0xe2
      0049B8 94                    3151 	.db 0x94
      0049B9 80                    3152 	.db 0x80
      0049BA E2                    3153 	.db 0xe2
      0049BB 94                    3154 	.db 0x94
      0049BC 80                    3155 	.db 0x80
      0049BD E2                    3156 	.db 0xe2
      0049BE 94                    3157 	.db 0x94
      0049BF 80                    3158 	.db 0x80
      0049C0 E2                    3159 	.db 0xe2
      0049C1 94                    3160 	.db 0x94
      0049C2 80                    3161 	.db 0x80
      0049C3 E2                    3162 	.db 0xe2
      0049C4 94                    3163 	.db 0x94
      0049C5 80                    3164 	.db 0x80
      0049C6 E2                    3165 	.db 0xe2
      0049C7 94                    3166 	.db 0x94
      0049C8 80                    3167 	.db 0x80
      0049C9 E2                    3168 	.db 0xe2
      0049CA 94                    3169 	.db 0x94
      0049CB 80                    3170 	.db 0x80
      0049CC E2                    3171 	.db 0xe2
      0049CD 94                    3172 	.db 0x94
      0049CE 80                    3173 	.db 0x80
      0049CF E2                    3174 	.db 0xe2
      0049D0 94                    3175 	.db 0x94
      0049D1 80                    3176 	.db 0x80
      0049D2 E2                    3177 	.db 0xe2
      0049D3 94                    3178 	.db 0x94
      0049D4 80                    3179 	.db 0x80
      0049D5 E2                    3180 	.db 0xe2
      0049D6 94                    3181 	.db 0x94
      0049D7 80                    3182 	.db 0x80
      0049D8 E2                    3183 	.db 0xe2
      0049D9 94                    3184 	.db 0x94
      0049DA 80                    3185 	.db 0x80
      0049DB E2                    3186 	.db 0xe2
      0049DC 94                    3187 	.db 0x94
      0049DD 80                    3188 	.db 0x80
      0049DE E2                    3189 	.db 0xe2
      0049DF 94                    3190 	.db 0x94
      0049E0 80                    3191 	.db 0x80
      0049E1 E2                    3192 	.db 0xe2
      0049E2 94                    3193 	.db 0x94
      0049E3 80                    3194 	.db 0x80
      0049E4 E2                    3195 	.db 0xe2
      0049E5 94                    3196 	.db 0x94
      0049E6 98                    3197 	.db 0x98
      0049E7 0A                    3198 	.db 0x0a
      0049E8 00                    3199 	.db 0x00
                                   3200 	.area CSEG    (CODE)
                                   3201 	.area CONST   (CODE)
      0049E9                       3202 ___str_25:
      0049E9 45 72 72 6F 72 3A 20  3203 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      004A16 0A                    3204 	.db 0x0a
      004A17 0D                    3205 	.db 0x0d
      004A18 00                    3206 	.db 0x00
                                   3207 	.area CSEG    (CODE)
                                   3208 	.area CONST   (CODE)
      004A19                       3209 ___str_26:
      004A19 45 72 72 6F 72 3A 20  3210 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      004A45 0A                    3211 	.db 0x0a
      004A46 0D                    3212 	.db 0x0d
      004A47 00                    3213 	.db 0x00
                                   3214 	.area CSEG    (CODE)
                                   3215 	.area CONST   (CODE)
      004A48                       3216 ___str_27:
      004A48 41 43 4B 20 44 49 44  3217 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      004A5A 0A                    3218 	.db 0x0a
      004A5B 0D                    3219 	.db 0x0d
      004A5C 00                    3220 	.db 0x00
                                   3221 	.area CSEG    (CODE)
                                   3222 	.area CONST   (CODE)
      004A5D                       3223 ___str_28:
      004A5D 54 72 61 6E 73 6D 69  3224 	.ascii "Transmission successfull"
             73 73 69 6F 6E 20 73
             75 63 63 65 73 73 66
             75 6C 6C
      004A75 0A                    3225 	.db 0x0a
      004A76 0D                    3226 	.db 0x0d
      004A77 00                    3227 	.db 0x00
                                   3228 	.area CSEG    (CODE)
                                   3229 	.area CONST   (CODE)
      004A78                       3230 ___str_29:
      004A78 57 72 69 74 69 6E 67  3231 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      004A9D 0A                    3232 	.db 0x0a
      004A9E 0D                    3233 	.db 0x0d
      004A9F 00                    3234 	.db 0x00
                                   3235 	.area CSEG    (CODE)
                                   3236 	.area CONST   (CODE)
      004AA0                       3237 ___str_30:
      004AA0 52 65 61 64 20 62 61  3238 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      004AC5 0A                    3239 	.db 0x0a
      004AC6 0D                    3240 	.db 0x0d
      004AC7 00                    3241 	.db 0x00
                                   3242 	.area CSEG    (CODE)
                                   3243 	.area CONST   (CODE)
      004AC8                       3244 ___str_31:
      004AC8 4D 41 54 43 48 20 2D  3245 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      004AE6 0A                    3246 	.db 0x0a
      004AE7 0D                    3247 	.db 0x0d
      004AE8 00                    3248 	.db 0x00
                                   3249 	.area CSEG    (CODE)
                                   3250 	.area CONST   (CODE)
      004AE9                       3251 ___str_32:
      004AE9 45 52 52 4F 52 20 2D  3252 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      004AFF 0A                    3253 	.db 0x0a
      004B00 0D                    3254 	.db 0x0d
      004B01 00                    3255 	.db 0x00
                                   3256 	.area CSEG    (CODE)
                                   3257 	.area XINIT   (CODE)
                                   3258 	.area CABS    (ABS,CODE)
