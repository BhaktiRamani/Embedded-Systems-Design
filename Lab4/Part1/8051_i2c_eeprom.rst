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
      00308F 74 E6            [12]  618 	mov	a,#___str_0
      003091 C0 E0            [24]  619 	push	acc
      003093 74 41            [12]  620 	mov	a,#(___str_0 >> 8)
      003095 C0 E0            [24]  621 	push	acc
      003097 74 80            [12]  622 	mov	a,#0x80
      003099 C0 E0            [24]  623 	push	acc
      00309B 12 37 84         [24]  624 	lcall	_printf
      00309E 15 81            [12]  625 	dec	sp
      0030A0 15 81            [12]  626 	dec	sp
      0030A2 15 81            [12]  627 	dec	sp
                                    628 ;	8051_i2c_eeprom.c:41: printf("║           I2C Memory Management System v1.0             ║\n\r");
      0030A4 74 98            [12]  629 	mov	a,#___str_1
      0030A6 C0 E0            [24]  630 	push	acc
      0030A8 74 42            [12]  631 	mov	a,#(___str_1 >> 8)
      0030AA C0 E0            [24]  632 	push	acc
      0030AC 74 80            [12]  633 	mov	a,#0x80
      0030AE C0 E0            [24]  634 	push	acc
      0030B0 12 37 84         [24]  635 	lcall	_printf
      0030B3 15 81            [12]  636 	dec	sp
      0030B5 15 81            [12]  637 	dec	sp
      0030B7 15 81            [12]  638 	dec	sp
                                    639 ;	8051_i2c_eeprom.c:42: printf("╚════════════════════════════════════════════════════════╝\n\r");
      0030B9 74 DA            [12]  640 	mov	a,#___str_2
      0030BB C0 E0            [24]  641 	push	acc
      0030BD 74 42            [12]  642 	mov	a,#(___str_2 >> 8)
      0030BF C0 E0            [24]  643 	push	acc
      0030C1 74 80            [12]  644 	mov	a,#0x80
      0030C3 C0 E0            [24]  645 	push	acc
      0030C5 12 37 84         [24]  646 	lcall	_printf
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
      0030CF 74 8B            [12]  661 	mov	a,#___str_3
      0030D1 C0 E0            [24]  662 	push	acc
      0030D3 74 43            [12]  663 	mov	a,#(___str_3 >> 8)
      0030D5 C0 E0            [24]  664 	push	acc
      0030D7 74 80            [12]  665 	mov	a,#0x80
      0030D9 C0 E0            [24]  666 	push	acc
      0030DB 12 37 84         [24]  667 	lcall	_printf
      0030DE 15 81            [12]  668 	dec	sp
      0030E0 15 81            [12]  669 	dec	sp
      0030E2 15 81            [12]  670 	dec	sp
                                    671 ;	8051_i2c_eeprom.c:49: printf("│  Command   │               Description                   │\n\r");
      0030E4 74 41            [12]  672 	mov	a,#___str_4
      0030E6 C0 E0            [24]  673 	push	acc
      0030E8 74 44            [12]  674 	mov	a,#(___str_4 >> 8)
      0030EA C0 E0            [24]  675 	push	acc
      0030EC 74 80            [12]  676 	mov	a,#0x80
      0030EE C0 E0            [24]  677 	push	acc
      0030F0 12 37 84         [24]  678 	lcall	_printf
      0030F3 15 81            [12]  679 	dec	sp
      0030F5 15 81            [12]  680 	dec	sp
      0030F7 15 81            [12]  681 	dec	sp
                                    682 ;	8051_i2c_eeprom.c:50: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      0030F9 74 86            [12]  683 	mov	a,#___str_5
      0030FB C0 E0            [24]  684 	push	acc
      0030FD 74 44            [12]  685 	mov	a,#(___str_5 >> 8)
      0030FF C0 E0            [24]  686 	push	acc
      003101 74 80            [12]  687 	mov	a,#0x80
      003103 C0 E0            [24]  688 	push	acc
      003105 12 37 84         [24]  689 	lcall	_printf
      003108 15 81            [12]  690 	dec	sp
      00310A 15 81            [12]  691 	dec	sp
      00310C 15 81            [12]  692 	dec	sp
                                    693 ;	8051_i2c_eeprom.c:51: printf("│     R      │ Read from address                          │\n\r");
      00310E 74 3A            [12]  694 	mov	a,#___str_6
      003110 C0 E0            [24]  695 	push	acc
      003112 74 45            [12]  696 	mov	a,#(___str_6 >> 8)
      003114 C0 E0            [24]  697 	push	acc
      003116 74 80            [12]  698 	mov	a,#0x80
      003118 C0 E0            [24]  699 	push	acc
      00311A 12 37 84         [24]  700 	lcall	_printf
      00311D 15 81            [12]  701 	dec	sp
      00311F 15 81            [12]  702 	dec	sp
      003121 15 81            [12]  703 	dec	sp
                                    704 ;	8051_i2c_eeprom.c:52: printf("│     W      │ Write data to address                      │\n\r");
      003123 74 7E            [12]  705 	mov	a,#___str_7
      003125 C0 E0            [24]  706 	push	acc
      003127 74 45            [12]  707 	mov	a,#(___str_7 >> 8)
      003129 C0 E0            [24]  708 	push	acc
      00312B 74 80            [12]  709 	mov	a,#0x80
      00312D C0 E0            [24]  710 	push	acc
      00312F 12 37 84         [24]  711 	lcall	_printf
      003132 15 81            [12]  712 	dec	sp
      003134 15 81            [12]  713 	dec	sp
      003136 15 81            [12]  714 	dec	sp
                                    715 ;	8051_i2c_eeprom.c:53: printf("│     H      │ Display hex dump                           │\n\r");
      003138 74 C2            [12]  716 	mov	a,#___str_8
      00313A C0 E0            [24]  717 	push	acc
      00313C 74 45            [12]  718 	mov	a,#(___str_8 >> 8)
      00313E C0 E0            [24]  719 	push	acc
      003140 74 80            [12]  720 	mov	a,#0x80
      003142 C0 E0            [24]  721 	push	acc
      003144 12 37 84         [24]  722 	lcall	_printf
      003147 15 81            [12]  723 	dec	sp
      003149 15 81            [12]  724 	dec	sp
      00314B 15 81            [12]  725 	dec	sp
                                    726 ;	8051_i2c_eeprom.c:54: printf("│     X      │ Reset memory system                        │\n\r");
      00314D 74 06            [12]  727 	mov	a,#___str_9
      00314F C0 E0            [24]  728 	push	acc
      003151 74 46            [12]  729 	mov	a,#(___str_9 >> 8)
      003153 C0 E0            [24]  730 	push	acc
      003155 74 80            [12]  731 	mov	a,#0x80
      003157 C0 E0            [24]  732 	push	acc
      003159 12 37 84         [24]  733 	lcall	_printf
      00315C 15 81            [12]  734 	dec	sp
      00315E 15 81            [12]  735 	dec	sp
      003160 15 81            [12]  736 	dec	sp
                                    737 ;	8051_i2c_eeprom.c:55: printf("│     ?      │ Display this help menu                     │\n\r");
      003162 74 4A            [12]  738 	mov	a,#___str_10
      003164 C0 E0            [24]  739 	push	acc
      003166 74 46            [12]  740 	mov	a,#(___str_10 >> 8)
      003168 C0 E0            [24]  741 	push	acc
      00316A 74 80            [12]  742 	mov	a,#0x80
      00316C C0 E0            [24]  743 	push	acc
      00316E 12 37 84         [24]  744 	lcall	_printf
      003171 15 81            [12]  745 	dec	sp
      003173 15 81            [12]  746 	dec	sp
      003175 15 81            [12]  747 	dec	sp
                                    748 ;	8051_i2c_eeprom.c:56: printf("│     Q      │ Quit program                              │\n\r");
      003177 74 8E            [12]  749 	mov	a,#___str_11
      003179 C0 E0            [24]  750 	push	acc
      00317B 74 46            [12]  751 	mov	a,#(___str_11 >> 8)
      00317D C0 E0            [24]  752 	push	acc
      00317F 74 80            [12]  753 	mov	a,#0x80
      003181 C0 E0            [24]  754 	push	acc
      003183 12 37 84         [24]  755 	lcall	_printf
      003186 15 81            [12]  756 	dec	sp
      003188 15 81            [12]  757 	dec	sp
      00318A 15 81            [12]  758 	dec	sp
                                    759 ;	8051_i2c_eeprom.c:57: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      00318C 74 D1            [12]  760 	mov	a,#___str_12
      00318E C0 E0            [24]  761 	push	acc
      003190 74 46            [12]  762 	mov	a,#(___str_12 >> 8)
      003192 C0 E0            [24]  763 	push	acc
      003194 74 80            [12]  764 	mov	a,#0x80
      003196 C0 E0            [24]  765 	push	acc
      003198 12 37 84         [24]  766 	lcall	_printf
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
      0031BD 74 85            [12]  804 	mov	a,#___str_13
      0031BF C0 E0            [24]  805 	push	acc
      0031C1 74 47            [12]  806 	mov	a,#(___str_13 >> 8)
      0031C3 C0 E0            [24]  807 	push	acc
      0031C5 74 80            [12]  808 	mov	a,#0x80
      0031C7 C0 E0            [24]  809 	push	acc
      0031C9 12 37 84         [24]  810 	lcall	_printf
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
      0031E2 74 8C            [12]  824 	mov	a,#___str_14
      0031E4 C0 E0            [24]  825 	push	acc
      0031E6 74 47            [12]  826 	mov	a,#(___str_14 >> 8)
      0031E8 C0 E0            [24]  827 	push	acc
      0031EA 74 80            [12]  828 	mov	a,#0x80
      0031EC C0 E0            [24]  829 	push	acc
      0031EE 12 37 84         [24]  830 	lcall	_printf
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
      003202 12 32 E5         [24]  841 	lcall	_take_data
      003205 AC 82            [24]  842 	mov	r4,dpl
      003207 D0 06            [24]  843 	pop	ar6
      003209 D0 07            [24]  844 	pop	ar7
                                    845 ;	8051_i2c_eeprom.c:81: printf("| Writing at Address 0x%02X Data 0x%02X          |\n\r", address, data);
      00320B 8C 03            [24]  846 	mov	ar3,r4
      00320D 7D 00            [12]  847 	mov	r5,#0x00
      00320F C0 07            [24]  848 	push	ar7
      003211 C0 06            [24]  849 	push	ar6
      003213 C0 04            [24]  850 	push	ar4
      003215 C0 03            [24]  851 	push	ar3
      003217 C0 05            [24]  852 	push	ar5
      003219 C0 06            [24]  853 	push	ar6
      00321B C0 07            [24]  854 	push	ar7
      00321D 74 FD            [12]  855 	mov	a,#___str_15
      00321F C0 E0            [24]  856 	push	acc
      003221 74 47            [12]  857 	mov	a,#(___str_15 >> 8)
      003223 C0 E0            [24]  858 	push	acc
      003225 74 80            [12]  859 	mov	a,#0x80
      003227 C0 E0            [24]  860 	push	acc
      003229 12 37 84         [24]  861 	lcall	_printf
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
      003241 12 33 5C         [24]  874 	lcall	_eeprom_write
                                    875 ;	8051_i2c_eeprom.c:83: break;
      003244 02 31 AE         [24]  876 	ljmp	00107$
                                    877 ;	8051_i2c_eeprom.c:85: case 'R':
      003247                        878 00102$:
                                    879 ;	8051_i2c_eeprom.c:88: address = take_address(); 
      003247 12 32 6E         [24]  880 	lcall	_take_address
                                    881 ;	8051_i2c_eeprom.c:89: eeprom_read(address);
      00324A 12 34 95         [24]  882 	lcall	_eeprom_read
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
      003256 74 32            [12]  894 	mov	a,#___str_16
      003258 C0 E0            [24]  895 	push	acc
      00325A 74 48            [12]  896 	mov	a,#(___str_16 >> 8)
      00325C C0 E0            [24]  897 	push	acc
      00325E 74 80            [12]  898 	mov	a,#0x80
      003260 C0 E0            [24]  899 	push	acc
      003262 12 37 84         [24]  900 	lcall	_printf
      003265 15 81            [12]  901 	dec	sp
      003267 15 81            [12]  902 	dec	sp
      003269 15 81            [12]  903 	dec	sp
                                    904 ;	8051_i2c_eeprom.c:100: }
                                    905 ;	8051_i2c_eeprom.c:103: return 0;
                                    906 ;	8051_i2c_eeprom.c:104: }
      00326B 02 31 AE         [24]  907 	ljmp	00107$
                                    908 ;------------------------------------------------------------
                                    909 ;Allocation info for local variables in function 'take_address'
                                    910 ;------------------------------------------------------------
                                    911 ;input                     Allocated with name '_take_address_input_65537_33'
                                    912 ;i                         Allocated with name '_take_address_i_65537_33'
                                    913 ;address                   Allocated with name '_take_address_address_65538_35'
                                    914 ;------------------------------------------------------------
                                    915 ;	8051_i2c_eeprom.c:106: int take_address()
                                    916 ;	-----------------------------------------
                                    917 ;	 function take_address
                                    918 ;	-----------------------------------------
      00326E                        919 _take_address:
                                    920 ;	8051_i2c_eeprom.c:108: printf("│ Enter address (hex): ");
      00326E 74 42            [12]  921 	mov	a,#___str_17
      003270 C0 E0            [24]  922 	push	acc
      003272 74 48            [12]  923 	mov	a,#(___str_17 >> 8)
      003274 C0 E0            [24]  924 	push	acc
      003276 74 80            [12]  925 	mov	a,#0x80
      003278 C0 E0            [24]  926 	push	acc
      00327A 12 37 84         [24]  927 	lcall	_printf
      00327D 15 81            [12]  928 	dec	sp
      00327F 15 81            [12]  929 	dec	sp
      003281 15 81            [12]  930 	dec	sp
                                    931 ;	8051_i2c_eeprom.c:111: while(i<3)
      003283 7E 00            [12]  932 	mov	r6,#0x00
      003285 7F 00            [12]  933 	mov	r7,#0x00
      003287                        934 00101$:
      003287 C3               [12]  935 	clr	c
      003288 EE               [12]  936 	mov	a,r6
      003289 94 03            [12]  937 	subb	a,#0x03
      00328B EF               [12]  938 	mov	a,r7
      00328C 64 80            [12]  939 	xrl	a,#0x80
      00328E 94 80            [12]  940 	subb	a,#0x80
      003290 50 2A            [24]  941 	jnc	00103$
                                    942 ;	8051_i2c_eeprom.c:113: input[i] = getchar();
      003292 EE               [12]  943 	mov	a,r6
      003293 24 04            [12]  944 	add	a,#_take_address_input_65537_33
      003295 FC               [12]  945 	mov	r4,a
      003296 EF               [12]  946 	mov	a,r7
      003297 34 04            [12]  947 	addc	a,#(_take_address_input_65537_33 >> 8)
      003299 FD               [12]  948 	mov	r5,a
      00329A C0 07            [24]  949 	push	ar7
      00329C C0 06            [24]  950 	push	ar6
      00329E C0 05            [24]  951 	push	ar5
      0032A0 C0 04            [24]  952 	push	ar4
      0032A2 12 30 81         [24]  953 	lcall	_getchar
      0032A5 AA 82            [24]  954 	mov	r2,dpl
      0032A7 D0 04            [24]  955 	pop	ar4
      0032A9 D0 05            [24]  956 	pop	ar5
      0032AB D0 06            [24]  957 	pop	ar6
      0032AD D0 07            [24]  958 	pop	ar7
      0032AF 8C 82            [24]  959 	mov	dpl,r4
      0032B1 8D 83            [24]  960 	mov	dph,r5
      0032B3 EA               [12]  961 	mov	a,r2
      0032B4 F0               [24]  962 	movx	@dptr,a
                                    963 ;	8051_i2c_eeprom.c:114: i++;
      0032B5 0E               [12]  964 	inc	r6
      0032B6 BE 00 CE         [24]  965 	cjne	r6,#0x00,00101$
      0032B9 0F               [12]  966 	inc	r7
      0032BA 80 CB            [24]  967 	sjmp	00101$
      0032BC                        968 00103$:
                                    969 ;	8051_i2c_eeprom.c:116: unsigned int address = input[0] - '0' + input[1] - '0' + input[2] - '0';
      0032BC 90 04 04         [24]  970 	mov	dptr,#_take_address_input_65537_33
      0032BF E0               [24]  971 	movx	a,@dptr
      0032C0 FF               [12]  972 	mov	r7,a
      0032C1 7E 00            [12]  973 	mov	r6,#0x00
      0032C3 90 04 05         [24]  974 	mov	dptr,#(_take_address_input_65537_33 + 0x0001)
      0032C6 E0               [24]  975 	movx	a,@dptr
      0032C7 7C 00            [12]  976 	mov	r4,#0x00
      0032C9 2F               [12]  977 	add	a,r7
      0032CA FF               [12]  978 	mov	r7,a
      0032CB EC               [12]  979 	mov	a,r4
      0032CC 3E               [12]  980 	addc	a,r6
      0032CD FE               [12]  981 	mov	r6,a
      0032CE 90 04 06         [24]  982 	mov	dptr,#(_take_address_input_65537_33 + 0x0002)
      0032D1 E0               [24]  983 	movx	a,@dptr
      0032D2 7C 00            [12]  984 	mov	r4,#0x00
      0032D4 2F               [12]  985 	add	a,r7
      0032D5 FF               [12]  986 	mov	r7,a
      0032D6 EC               [12]  987 	mov	a,r4
      0032D7 3E               [12]  988 	addc	a,r6
      0032D8 FE               [12]  989 	mov	r6,a
      0032D9 EF               [12]  990 	mov	a,r7
      0032DA 24 70            [12]  991 	add	a,#0x70
      0032DC FF               [12]  992 	mov	r7,a
      0032DD EE               [12]  993 	mov	a,r6
      0032DE 34 FF            [12]  994 	addc	a,#0xff
                                    995 ;	8051_i2c_eeprom.c:117: return address;
                                    996 ;	8051_i2c_eeprom.c:118: }
      0032E0 8F 82            [24]  997 	mov	dpl,r7
      0032E2 F5 83            [12]  998 	mov	dph,a
      0032E4 22               [24]  999 	ret
                                   1000 ;------------------------------------------------------------
                                   1001 ;Allocation info for local variables in function 'take_data'
                                   1002 ;------------------------------------------------------------
                                   1003 ;input                     Allocated with name '_take_data_input_65537_37'
                                   1004 ;i                         Allocated with name '_take_data_i_65537_37'
                                   1005 ;data                      Allocated with name '_take_data_data_65538_39'
                                   1006 ;------------------------------------------------------------
                                   1007 ;	8051_i2c_eeprom.c:119: int take_data()
                                   1008 ;	-----------------------------------------
                                   1009 ;	 function take_data
                                   1010 ;	-----------------------------------------
      0032E5                       1011 _take_data:
                                   1012 ;	8051_i2c_eeprom.c:121: printf("│ Enter data (hex): ");
      0032E5 74 5C            [12] 1013 	mov	a,#___str_18
      0032E7 C0 E0            [24] 1014 	push	acc
      0032E9 74 48            [12] 1015 	mov	a,#(___str_18 >> 8)
      0032EB C0 E0            [24] 1016 	push	acc
      0032ED 74 80            [12] 1017 	mov	a,#0x80
      0032EF C0 E0            [24] 1018 	push	acc
      0032F1 12 37 84         [24] 1019 	lcall	_printf
      0032F4 15 81            [12] 1020 	dec	sp
      0032F6 15 81            [12] 1021 	dec	sp
      0032F8 15 81            [12] 1022 	dec	sp
                                   1023 ;	8051_i2c_eeprom.c:124: while(i<3)
      0032FA 7E 00            [12] 1024 	mov	r6,#0x00
      0032FC 7F 00            [12] 1025 	mov	r7,#0x00
      0032FE                       1026 00101$:
      0032FE C3               [12] 1027 	clr	c
      0032FF EE               [12] 1028 	mov	a,r6
      003300 94 03            [12] 1029 	subb	a,#0x03
      003302 EF               [12] 1030 	mov	a,r7
      003303 64 80            [12] 1031 	xrl	a,#0x80
      003305 94 80            [12] 1032 	subb	a,#0x80
      003307 50 2A            [24] 1033 	jnc	00103$
                                   1034 ;	8051_i2c_eeprom.c:126: input[i] = getchar();
      003309 EE               [12] 1035 	mov	a,r6
      00330A 24 07            [12] 1036 	add	a,#_take_data_input_65537_37
      00330C FC               [12] 1037 	mov	r4,a
      00330D EF               [12] 1038 	mov	a,r7
      00330E 34 04            [12] 1039 	addc	a,#(_take_data_input_65537_37 >> 8)
      003310 FD               [12] 1040 	mov	r5,a
      003311 C0 07            [24] 1041 	push	ar7
      003313 C0 06            [24] 1042 	push	ar6
      003315 C0 05            [24] 1043 	push	ar5
      003317 C0 04            [24] 1044 	push	ar4
      003319 12 30 81         [24] 1045 	lcall	_getchar
      00331C AA 82            [24] 1046 	mov	r2,dpl
      00331E D0 04            [24] 1047 	pop	ar4
      003320 D0 05            [24] 1048 	pop	ar5
      003322 D0 06            [24] 1049 	pop	ar6
      003324 D0 07            [24] 1050 	pop	ar7
      003326 8C 82            [24] 1051 	mov	dpl,r4
      003328 8D 83            [24] 1052 	mov	dph,r5
      00332A EA               [12] 1053 	mov	a,r2
      00332B F0               [24] 1054 	movx	@dptr,a
                                   1055 ;	8051_i2c_eeprom.c:127: i++;
      00332C 0E               [12] 1056 	inc	r6
      00332D BE 00 CE         [24] 1057 	cjne	r6,#0x00,00101$
      003330 0F               [12] 1058 	inc	r7
      003331 80 CB            [24] 1059 	sjmp	00101$
      003333                       1060 00103$:
                                   1061 ;	8051_i2c_eeprom.c:129: unsigned int data = input[0] - '0' + input[1] - '0' + input[2] - '0';
      003333 90 04 07         [24] 1062 	mov	dptr,#_take_data_input_65537_37
      003336 E0               [24] 1063 	movx	a,@dptr
      003337 FF               [12] 1064 	mov	r7,a
      003338 7E 00            [12] 1065 	mov	r6,#0x00
      00333A 90 04 08         [24] 1066 	mov	dptr,#(_take_data_input_65537_37 + 0x0001)
      00333D E0               [24] 1067 	movx	a,@dptr
      00333E 7C 00            [12] 1068 	mov	r4,#0x00
      003340 2F               [12] 1069 	add	a,r7
      003341 FF               [12] 1070 	mov	r7,a
      003342 EC               [12] 1071 	mov	a,r4
      003343 3E               [12] 1072 	addc	a,r6
      003344 FE               [12] 1073 	mov	r6,a
      003345 90 04 09         [24] 1074 	mov	dptr,#(_take_data_input_65537_37 + 0x0002)
      003348 E0               [24] 1075 	movx	a,@dptr
      003349 7C 00            [12] 1076 	mov	r4,#0x00
      00334B 2F               [12] 1077 	add	a,r7
      00334C FF               [12] 1078 	mov	r7,a
      00334D EC               [12] 1079 	mov	a,r4
      00334E 3E               [12] 1080 	addc	a,r6
      00334F FE               [12] 1081 	mov	r6,a
      003350 EF               [12] 1082 	mov	a,r7
      003351 24 70            [12] 1083 	add	a,#0x70
      003353 FF               [12] 1084 	mov	r7,a
      003354 EE               [12] 1085 	mov	a,r6
      003355 34 FF            [12] 1086 	addc	a,#0xff
                                   1087 ;	8051_i2c_eeprom.c:130: return data; 
                                   1088 ;	8051_i2c_eeprom.c:132: }
      003357 8F 82            [24] 1089 	mov	dpl,r7
      003359 F5 83            [12] 1090 	mov	dph,a
      00335B 22               [24] 1091 	ret
                                   1092 ;------------------------------------------------------------
                                   1093 ;Allocation info for local variables in function 'eeprom_write'
                                   1094 ;------------------------------------------------------------
                                   1095 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                   1096 ;address                   Allocated with name '_eeprom_write_address_65536_40'
                                   1097 ;i                         Allocated with name '_eeprom_write_i_131072_45'
                                   1098 ;------------------------------------------------------------
                                   1099 ;	8051_i2c_eeprom.c:134: int eeprom_write(unsigned int address, unsigned char data) 
                                   1100 ;	-----------------------------------------
                                   1101 ;	 function eeprom_write
                                   1102 ;	-----------------------------------------
      00335C                       1103 _eeprom_write:
      00335C AF 83            [24] 1104 	mov	r7,dph
      00335E E5 82            [12] 1105 	mov	a,dpl
      003360 90 04 0B         [24] 1106 	mov	dptr,#_eeprom_write_address_65536_40
      003363 F0               [24] 1107 	movx	@dptr,a
      003364 EF               [12] 1108 	mov	a,r7
      003365 A3               [24] 1109 	inc	dptr
      003366 F0               [24] 1110 	movx	@dptr,a
                                   1111 ;	8051_i2c_eeprom.c:137: i2c_start();
      003367 12 36 45         [24] 1112 	lcall	_i2c_start
                                   1113 ;	8051_i2c_eeprom.c:140: if(!i2c_write(EEPROM_ID | WRITE)) {
      00336A 75 82 A0         [24] 1114 	mov	dpl,#0xa0
      00336D 12 35 43         [24] 1115 	lcall	_i2c_write
      003370 E5 82            [12] 1116 	mov	a,dpl
      003372 85 83 F0         [24] 1117 	mov	b,dph
      003375 45 F0            [12] 1118 	orl	a,b
      003377 70 1C            [24] 1119 	jnz	00102$
                                   1120 ;	8051_i2c_eeprom.c:141: printf("Error: No ACK for device address (write)\n\r");
      003379 74 73            [12] 1121 	mov	a,#___str_19
      00337B C0 E0            [24] 1122 	push	acc
      00337D 74 48            [12] 1123 	mov	a,#(___str_19 >> 8)
      00337F C0 E0            [24] 1124 	push	acc
      003381 74 80            [12] 1125 	mov	a,#0x80
      003383 C0 E0            [24] 1126 	push	acc
      003385 12 37 84         [24] 1127 	lcall	_printf
      003388 15 81            [12] 1128 	dec	sp
      00338A 15 81            [12] 1129 	dec	sp
      00338C 15 81            [12] 1130 	dec	sp
                                   1131 ;	8051_i2c_eeprom.c:142: i2c_stop();
      00338E 12 36 5A         [24] 1132 	lcall	_i2c_stop
                                   1133 ;	8051_i2c_eeprom.c:143: return 0;
      003391 90 00 00         [24] 1134 	mov	dptr,#0x0000
      003394 22               [24] 1135 	ret
      003395                       1136 00102$:
                                   1137 ;	8051_i2c_eeprom.c:147: if(!i2c_write((unsigned char)address)) {
      003395 90 04 0B         [24] 1138 	mov	dptr,#_eeprom_write_address_65536_40
      003398 E0               [24] 1139 	movx	a,@dptr
      003399 FE               [12] 1140 	mov	r6,a
      00339A A3               [24] 1141 	inc	dptr
      00339B E0               [24] 1142 	movx	a,@dptr
      00339C FF               [12] 1143 	mov	r7,a
      00339D 8E 05            [24] 1144 	mov	ar5,r6
      00339F 8D 82            [24] 1145 	mov	dpl,r5
      0033A1 C0 07            [24] 1146 	push	ar7
      0033A3 C0 06            [24] 1147 	push	ar6
      0033A5 12 35 43         [24] 1148 	lcall	_i2c_write
      0033A8 E5 82            [12] 1149 	mov	a,dpl
      0033AA 85 83 F0         [24] 1150 	mov	b,dph
      0033AD D0 06            [24] 1151 	pop	ar6
      0033AF D0 07            [24] 1152 	pop	ar7
      0033B1 45 F0            [12] 1153 	orl	a,b
      0033B3 70 1C            [24] 1154 	jnz	00104$
                                   1155 ;	8051_i2c_eeprom.c:148: printf("Error: No ACK for memory address\n\r");
      0033B5 74 9E            [12] 1156 	mov	a,#___str_20
      0033B7 C0 E0            [24] 1157 	push	acc
      0033B9 74 48            [12] 1158 	mov	a,#(___str_20 >> 8)
      0033BB C0 E0            [24] 1159 	push	acc
      0033BD 74 80            [12] 1160 	mov	a,#0x80
      0033BF C0 E0            [24] 1161 	push	acc
      0033C1 12 37 84         [24] 1162 	lcall	_printf
      0033C4 15 81            [12] 1163 	dec	sp
      0033C6 15 81            [12] 1164 	dec	sp
      0033C8 15 81            [12] 1165 	dec	sp
                                   1166 ;	8051_i2c_eeprom.c:149: i2c_stop();
      0033CA 12 36 5A         [24] 1167 	lcall	_i2c_stop
                                   1168 ;	8051_i2c_eeprom.c:150: return 0;
      0033CD 90 00 00         [24] 1169 	mov	dptr,#0x0000
      0033D0 22               [24] 1170 	ret
      0033D1                       1171 00104$:
                                   1172 ;	8051_i2c_eeprom.c:154: if(!i2c_write(data)) {
      0033D1 90 04 0A         [24] 1173 	mov	dptr,#_eeprom_write_PARM_2
      0033D4 E0               [24] 1174 	movx	a,@dptr
      0033D5 FD               [12] 1175 	mov	r5,a
      0033D6 F5 82            [12] 1176 	mov	dpl,a
      0033D8 C0 07            [24] 1177 	push	ar7
      0033DA C0 06            [24] 1178 	push	ar6
      0033DC C0 05            [24] 1179 	push	ar5
      0033DE 12 35 43         [24] 1180 	lcall	_i2c_write
      0033E1 E5 82            [12] 1181 	mov	a,dpl
      0033E3 85 83 F0         [24] 1182 	mov	b,dph
      0033E6 D0 05            [24] 1183 	pop	ar5
      0033E8 D0 06            [24] 1184 	pop	ar6
      0033EA D0 07            [24] 1185 	pop	ar7
      0033EC 45 F0            [12] 1186 	orl	a,b
      0033EE 70 1C            [24] 1187 	jnz	00106$
                                   1188 ;	8051_i2c_eeprom.c:155: printf("Error: No ACK for data\n\r");
      0033F0 74 C1            [12] 1189 	mov	a,#___str_21
      0033F2 C0 E0            [24] 1190 	push	acc
      0033F4 74 48            [12] 1191 	mov	a,#(___str_21 >> 8)
      0033F6 C0 E0            [24] 1192 	push	acc
      0033F8 74 80            [12] 1193 	mov	a,#0x80
      0033FA C0 E0            [24] 1194 	push	acc
      0033FC 12 37 84         [24] 1195 	lcall	_printf
      0033FF 15 81            [12] 1196 	dec	sp
      003401 15 81            [12] 1197 	dec	sp
      003403 15 81            [12] 1198 	dec	sp
                                   1199 ;	8051_i2c_eeprom.c:156: i2c_stop();
      003405 12 36 5A         [24] 1200 	lcall	_i2c_stop
                                   1201 ;	8051_i2c_eeprom.c:157: return 0;
      003408 90 00 00         [24] 1202 	mov	dptr,#0x0000
      00340B 22               [24] 1203 	ret
      00340C                       1204 00106$:
                                   1205 ;	8051_i2c_eeprom.c:160: i2c_stop();
      00340C C0 07            [24] 1206 	push	ar7
      00340E C0 06            [24] 1207 	push	ar6
      003410 C0 05            [24] 1208 	push	ar5
      003412 12 36 5A         [24] 1209 	lcall	_i2c_stop
      003415 D0 05            [24] 1210 	pop	ar5
      003417 D0 06            [24] 1211 	pop	ar6
      003419 D0 07            [24] 1212 	pop	ar7
                                   1213 ;	8051_i2c_eeprom.c:162: for(int i = 0; i<100; i++)
      00341B 7B 00            [12] 1214 	mov	r3,#0x00
      00341D 7C 00            [12] 1215 	mov	r4,#0x00
      00341F                       1216 00109$:
      00341F C3               [12] 1217 	clr	c
      003420 EB               [12] 1218 	mov	a,r3
      003421 94 64            [12] 1219 	subb	a,#0x64
      003423 EC               [12] 1220 	mov	a,r4
      003424 64 80            [12] 1221 	xrl	a,#0x80
      003426 94 80            [12] 1222 	subb	a,#0x80
      003428 50 1E            [24] 1223 	jnc	00107$
                                   1224 ;	8051_i2c_eeprom.c:164: i2c_delay();
      00342A C0 07            [24] 1225 	push	ar7
      00342C C0 06            [24] 1226 	push	ar6
      00342E C0 05            [24] 1227 	push	ar5
      003430 C0 04            [24] 1228 	push	ar4
      003432 C0 03            [24] 1229 	push	ar3
      003434 12 36 67         [24] 1230 	lcall	_i2c_delay
      003437 D0 03            [24] 1231 	pop	ar3
      003439 D0 04            [24] 1232 	pop	ar4
      00343B D0 05            [24] 1233 	pop	ar5
      00343D D0 06            [24] 1234 	pop	ar6
      00343F D0 07            [24] 1235 	pop	ar7
                                   1236 ;	8051_i2c_eeprom.c:162: for(int i = 0; i<100; i++)
      003441 0B               [12] 1237 	inc	r3
      003442 BB 00 DA         [24] 1238 	cjne	r3,#0x00,00109$
      003445 0C               [12] 1239 	inc	r4
      003446 80 D7            [24] 1240 	sjmp	00109$
      003448                       1241 00107$:
                                   1242 ;	8051_i2c_eeprom.c:166: printf("| Writing at Address 0x%02X Data 0x%02X          |\n\r", address, data);
      003448 7C 00            [12] 1243 	mov	r4,#0x00
      00344A C0 05            [24] 1244 	push	ar5
      00344C C0 04            [24] 1245 	push	ar4
      00344E C0 06            [24] 1246 	push	ar6
      003450 C0 07            [24] 1247 	push	ar7
      003452 74 FD            [12] 1248 	mov	a,#___str_15
      003454 C0 E0            [24] 1249 	push	acc
      003456 74 47            [12] 1250 	mov	a,#(___str_15 >> 8)
      003458 C0 E0            [24] 1251 	push	acc
      00345A 74 80            [12] 1252 	mov	a,#0x80
      00345C C0 E0            [24] 1253 	push	acc
      00345E 12 37 84         [24] 1254 	lcall	_printf
      003461 E5 81            [12] 1255 	mov	a,sp
      003463 24 F9            [12] 1256 	add	a,#0xf9
      003465 F5 81            [12] 1257 	mov	sp,a
                                   1258 ;	8051_i2c_eeprom.c:167: printf("│ Write successful!                             │\n");
      003467 74 DA            [12] 1259 	mov	a,#___str_22
      003469 C0 E0            [24] 1260 	push	acc
      00346B 74 48            [12] 1261 	mov	a,#(___str_22 >> 8)
      00346D C0 E0            [24] 1262 	push	acc
      00346F 74 80            [12] 1263 	mov	a,#0x80
      003471 C0 E0            [24] 1264 	push	acc
      003473 12 37 84         [24] 1265 	lcall	_printf
      003476 15 81            [12] 1266 	dec	sp
      003478 15 81            [12] 1267 	dec	sp
      00347A 15 81            [12] 1268 	dec	sp
                                   1269 ;	8051_i2c_eeprom.c:168: printf("└───────────────────────────────────────────────┘\n");
      00347C 74 11            [12] 1270 	mov	a,#___str_23
      00347E C0 E0            [24] 1271 	push	acc
      003480 74 49            [12] 1272 	mov	a,#(___str_23 >> 8)
      003482 C0 E0            [24] 1273 	push	acc
      003484 74 80            [12] 1274 	mov	a,#0x80
      003486 C0 E0            [24] 1275 	push	acc
      003488 12 37 84         [24] 1276 	lcall	_printf
      00348B 15 81            [12] 1277 	dec	sp
      00348D 15 81            [12] 1278 	dec	sp
      00348F 15 81            [12] 1279 	dec	sp
                                   1280 ;	8051_i2c_eeprom.c:169: return 1;  // Success
      003491 90 00 01         [24] 1281 	mov	dptr,#0x0001
                                   1282 ;	8051_i2c_eeprom.c:171: }
      003494 22               [24] 1283 	ret
                                   1284 ;------------------------------------------------------------
                                   1285 ;Allocation info for local variables in function 'eeprom_read'
                                   1286 ;------------------------------------------------------------
                                   1287 ;address                   Allocated with name '_eeprom_read_address_65536_47'
                                   1288 ;result                    Allocated with name '_eeprom_read_result_65536_48'
                                   1289 ;------------------------------------------------------------
                                   1290 ;	8051_i2c_eeprom.c:173: int eeprom_read(unsigned int address) 
                                   1291 ;	-----------------------------------------
                                   1292 ;	 function eeprom_read
                                   1293 ;	-----------------------------------------
      003495                       1294 _eeprom_read:
      003495 AF 83            [24] 1295 	mov	r7,dph
      003497 E5 82            [12] 1296 	mov	a,dpl
      003499 90 04 0D         [24] 1297 	mov	dptr,#_eeprom_read_address_65536_47
      00349C F0               [24] 1298 	movx	@dptr,a
      00349D EF               [12] 1299 	mov	a,r7
      00349E A3               [24] 1300 	inc	dptr
      00349F F0               [24] 1301 	movx	@dptr,a
                                   1302 ;	8051_i2c_eeprom.c:179: i2c_start();
      0034A0 12 36 45         [24] 1303 	lcall	_i2c_start
                                   1304 ;	8051_i2c_eeprom.c:182: if(!i2c_write(EEPROM_ID | WRITE)) {
      0034A3 75 82 A0         [24] 1305 	mov	dpl,#0xa0
      0034A6 12 35 43         [24] 1306 	lcall	_i2c_write
      0034A9 E5 82            [12] 1307 	mov	a,dpl
      0034AB 85 83 F0         [24] 1308 	mov	b,dph
      0034AE 45 F0            [12] 1309 	orl	a,b
      0034B0 70 1C            [24] 1310 	jnz	00102$
                                   1311 ;	8051_i2c_eeprom.c:183: printf("Error: No ACK for device address (write mode)\n\r");
      0034B2 74 A6            [12] 1312 	mov	a,#___str_24
      0034B4 C0 E0            [24] 1313 	push	acc
      0034B6 74 49            [12] 1314 	mov	a,#(___str_24 >> 8)
      0034B8 C0 E0            [24] 1315 	push	acc
      0034BA 74 80            [12] 1316 	mov	a,#0x80
      0034BC C0 E0            [24] 1317 	push	acc
      0034BE 12 37 84         [24] 1318 	lcall	_printf
      0034C1 15 81            [12] 1319 	dec	sp
      0034C3 15 81            [12] 1320 	dec	sp
      0034C5 15 81            [12] 1321 	dec	sp
                                   1322 ;	8051_i2c_eeprom.c:184: i2c_stop();
      0034C7 12 36 5A         [24] 1323 	lcall	_i2c_stop
                                   1324 ;	8051_i2c_eeprom.c:185: return -1;
      0034CA 90 FF FF         [24] 1325 	mov	dptr,#0xffff
      0034CD 22               [24] 1326 	ret
      0034CE                       1327 00102$:
                                   1328 ;	8051_i2c_eeprom.c:189: if(!i2c_write((unsigned char)address)) {
      0034CE 90 04 0D         [24] 1329 	mov	dptr,#_eeprom_read_address_65536_47
      0034D1 E0               [24] 1330 	movx	a,@dptr
      0034D2 FE               [12] 1331 	mov	r6,a
      0034D3 A3               [24] 1332 	inc	dptr
      0034D4 E0               [24] 1333 	movx	a,@dptr
      0034D5 8E 82            [24] 1334 	mov	dpl,r6
      0034D7 12 35 43         [24] 1335 	lcall	_i2c_write
      0034DA E5 82            [12] 1336 	mov	a,dpl
      0034DC 85 83 F0         [24] 1337 	mov	b,dph
      0034DF 45 F0            [12] 1338 	orl	a,b
      0034E1 70 1C            [24] 1339 	jnz	00104$
                                   1340 ;	8051_i2c_eeprom.c:190: printf("Error: No ACK for memory address\n\r");
      0034E3 74 9E            [12] 1341 	mov	a,#___str_20
      0034E5 C0 E0            [24] 1342 	push	acc
      0034E7 74 48            [12] 1343 	mov	a,#(___str_20 >> 8)
      0034E9 C0 E0            [24] 1344 	push	acc
      0034EB 74 80            [12] 1345 	mov	a,#0x80
      0034ED C0 E0            [24] 1346 	push	acc
      0034EF 12 37 84         [24] 1347 	lcall	_printf
      0034F2 15 81            [12] 1348 	dec	sp
      0034F4 15 81            [12] 1349 	dec	sp
      0034F6 15 81            [12] 1350 	dec	sp
                                   1351 ;	8051_i2c_eeprom.c:191: i2c_stop();
      0034F8 12 36 5A         [24] 1352 	lcall	_i2c_stop
                                   1353 ;	8051_i2c_eeprom.c:192: return -1;
      0034FB 90 FF FF         [24] 1354 	mov	dptr,#0xffff
      0034FE 22               [24] 1355 	ret
      0034FF                       1356 00104$:
                                   1357 ;	8051_i2c_eeprom.c:196: i2c_start();
      0034FF 12 36 45         [24] 1358 	lcall	_i2c_start
                                   1359 ;	8051_i2c_eeprom.c:199: if(!i2c_write(EEPROM_ID | READ)) {
      003502 75 82 A1         [24] 1360 	mov	dpl,#0xa1
      003505 12 35 43         [24] 1361 	lcall	_i2c_write
      003508 E5 82            [12] 1362 	mov	a,dpl
      00350A 85 83 F0         [24] 1363 	mov	b,dph
      00350D 45 F0            [12] 1364 	orl	a,b
      00350F 70 1C            [24] 1365 	jnz	00106$
                                   1366 ;	8051_i2c_eeprom.c:200: printf("Error: No ACK for device address (read mode)\n\r");
      003511 74 D6            [12] 1367 	mov	a,#___str_25
      003513 C0 E0            [24] 1368 	push	acc
      003515 74 49            [12] 1369 	mov	a,#(___str_25 >> 8)
      003517 C0 E0            [24] 1370 	push	acc
      003519 74 80            [12] 1371 	mov	a,#0x80
      00351B C0 E0            [24] 1372 	push	acc
      00351D 12 37 84         [24] 1373 	lcall	_printf
      003520 15 81            [12] 1374 	dec	sp
      003522 15 81            [12] 1375 	dec	sp
      003524 15 81            [12] 1376 	dec	sp
                                   1377 ;	8051_i2c_eeprom.c:201: i2c_stop();
      003526 12 36 5A         [24] 1378 	lcall	_i2c_stop
                                   1379 ;	8051_i2c_eeprom.c:202: return -1;
      003529 90 FF FF         [24] 1380 	mov	dptr,#0xffff
      00352C 22               [24] 1381 	ret
      00352D                       1382 00106$:
                                   1383 ;	8051_i2c_eeprom.c:206: result = i2c_read(0);  // 0 means send NACK
      00352D 90 00 00         [24] 1384 	mov	dptr,#0x0000
      003530 12 35 C0         [24] 1385 	lcall	_i2c_read
      003533 AE 82            [24] 1386 	mov	r6,dpl
                                   1387 ;	8051_i2c_eeprom.c:208: i2c_stop();
      003535 C0 06            [24] 1388 	push	ar6
      003537 12 36 5A         [24] 1389 	lcall	_i2c_stop
      00353A D0 06            [24] 1390 	pop	ar6
                                   1391 ;	8051_i2c_eeprom.c:209: return result;
      00353C 7F 00            [12] 1392 	mov	r7,#0x00
      00353E 8E 82            [24] 1393 	mov	dpl,r6
      003540 8F 83            [24] 1394 	mov	dph,r7
                                   1395 ;	8051_i2c_eeprom.c:210: }
      003542 22               [24] 1396 	ret
                                   1397 ;------------------------------------------------------------
                                   1398 ;Allocation info for local variables in function 'i2c_write'
                                   1399 ;------------------------------------------------------------
                                   1400 ;data                      Allocated with name '_i2c_write_data_65536_52'
                                   1401 ;i                         Allocated with name '_i2c_write_i_65536_53'
                                   1402 ;------------------------------------------------------------
                                   1403 ;	8051_i2c_eeprom.c:213: int i2c_write(unsigned char data)
                                   1404 ;	-----------------------------------------
                                   1405 ;	 function i2c_write
                                   1406 ;	-----------------------------------------
      003543                       1407 _i2c_write:
      003543 E5 82            [12] 1408 	mov	a,dpl
      003545 90 04 0F         [24] 1409 	mov	dptr,#_i2c_write_data_65536_52
      003548 F0               [24] 1410 	movx	@dptr,a
                                   1411 ;	8051_i2c_eeprom.c:217: for(i=0;i<=7;i++)
      003549 7E 00            [12] 1412 	mov	r6,#0x00
      00354B 7F 00            [12] 1413 	mov	r7,#0x00
      00354D                       1414 00104$:
                                   1415 ;	8051_i2c_eeprom.c:219: SDA = (data & 0x80) ? 1 : 0;    //msb first
      00354D 90 04 0F         [24] 1416 	mov	dptr,#_i2c_write_data_65536_52
      003550 E0               [24] 1417 	movx	a,@dptr
      003551 FD               [12] 1418 	mov	r5,a
      003552 23               [12] 1419 	rl	a
      003553 54 01            [12] 1420 	anl	a,#0x01
      003555 24 FF            [12] 1421 	add	a,#0xff
      003557 92 94            [24] 1422 	mov	_P1_4,c
                                   1423 ;	8051_i2c_eeprom.c:220: i2c_delay();        // Setup time for data
      003559 C0 07            [24] 1424 	push	ar7
      00355B C0 06            [24] 1425 	push	ar6
      00355D C0 05            [24] 1426 	push	ar5
      00355F 12 36 67         [24] 1427 	lcall	_i2c_delay
                                   1428 ;	8051_i2c_eeprom.c:221: SCL=1;
                                   1429 ;	assignBit
      003562 D2 93            [12] 1430 	setb	_P1_3
                                   1431 ;	8051_i2c_eeprom.c:222: i2c_delay();        // Hold time for clock
      003564 12 36 67         [24] 1432 	lcall	_i2c_delay
      003567 D0 05            [24] 1433 	pop	ar5
      003569 D0 06            [24] 1434 	pop	ar6
      00356B D0 07            [24] 1435 	pop	ar7
                                   1436 ;	8051_i2c_eeprom.c:223: SCL=0;
                                   1437 ;	assignBit
      00356D C2 93            [12] 1438 	clr	_P1_3
                                   1439 ;	8051_i2c_eeprom.c:224: data = data << 1;
      00356F ED               [12] 1440 	mov	a,r5
      003570 2D               [12] 1441 	add	a,r5
      003571 90 04 0F         [24] 1442 	mov	dptr,#_i2c_write_data_65536_52
      003574 F0               [24] 1443 	movx	@dptr,a
                                   1444 ;	8051_i2c_eeprom.c:217: for(i=0;i<=7;i++)
      003575 0E               [12] 1445 	inc	r6
      003576 BE 00 01         [24] 1446 	cjne	r6,#0x00,00121$
      003579 0F               [12] 1447 	inc	r7
      00357A                       1448 00121$:
      00357A C3               [12] 1449 	clr	c
      00357B 74 07            [12] 1450 	mov	a,#0x07
      00357D 9E               [12] 1451 	subb	a,r6
      00357E E4               [12] 1452 	clr	a
      00357F 9F               [12] 1453 	subb	a,r7
      003580 50 CB            [24] 1454 	jnc	00104$
                                   1455 ;	8051_i2c_eeprom.c:228: SDA = 1;            // Release SDA for slave
                                   1456 ;	assignBit
      003582 D2 94            [12] 1457 	setb	_P1_4
                                   1458 ;	8051_i2c_eeprom.c:229: SCL = 1;            // 9th clock pulse for ACK
                                   1459 ;	assignBit
      003584 D2 93            [12] 1460 	setb	_P1_3
                                   1461 ;	8051_i2c_eeprom.c:230: i2c_delay();
      003586 12 36 67         [24] 1462 	lcall	_i2c_delay
                                   1463 ;	8051_i2c_eeprom.c:231: if(SDA == 1)        // If SDA is still high, no ACK received
      003589 30 94 19         [24] 1464 	jnb	_P1_4,00103$
                                   1465 ;	8051_i2c_eeprom.c:234: printf("ACK DID NOT ARRIVE\n\r");
      00358C 74 05            [12] 1466 	mov	a,#___str_26
      00358E C0 E0            [24] 1467 	push	acc
      003590 74 4A            [12] 1468 	mov	a,#(___str_26 >> 8)
      003592 C0 E0            [24] 1469 	push	acc
      003594 74 80            [12] 1470 	mov	a,#0x80
      003596 C0 E0            [24] 1471 	push	acc
      003598 12 37 84         [24] 1472 	lcall	_printf
      00359B 15 81            [12] 1473 	dec	sp
      00359D 15 81            [12] 1474 	dec	sp
      00359F 15 81            [12] 1475 	dec	sp
                                   1476 ;	8051_i2c_eeprom.c:235: return 0;       // Error
      0035A1 90 00 00         [24] 1477 	mov	dptr,#0x0000
      0035A4 22               [24] 1478 	ret
      0035A5                       1479 00103$:
                                   1480 ;	8051_i2c_eeprom.c:237: SCL = 0;
                                   1481 ;	assignBit
      0035A5 C2 93            [12] 1482 	clr	_P1_3
                                   1483 ;	8051_i2c_eeprom.c:238: printf("Transmission successfull\n\r");
      0035A7 74 1A            [12] 1484 	mov	a,#___str_27
      0035A9 C0 E0            [24] 1485 	push	acc
      0035AB 74 4A            [12] 1486 	mov	a,#(___str_27 >> 8)
      0035AD C0 E0            [24] 1487 	push	acc
      0035AF 74 80            [12] 1488 	mov	a,#0x80
      0035B1 C0 E0            [24] 1489 	push	acc
      0035B3 12 37 84         [24] 1490 	lcall	_printf
      0035B6 15 81            [12] 1491 	dec	sp
      0035B8 15 81            [12] 1492 	dec	sp
      0035BA 15 81            [12] 1493 	dec	sp
                                   1494 ;	8051_i2c_eeprom.c:239: return 1;           // Success
      0035BC 90 00 01         [24] 1495 	mov	dptr,#0x0001
                                   1496 ;	8051_i2c_eeprom.c:241: }
      0035BF 22               [24] 1497 	ret
                                   1498 ;------------------------------------------------------------
                                   1499 ;Allocation info for local variables in function 'i2c_read'
                                   1500 ;------------------------------------------------------------
                                   1501 ;ACK                       Allocated with name '_i2c_read_ACK_65536_57'
                                   1502 ;buff                      Allocated with name '_i2c_read_buff_65536_58'
                                   1503 ;i                         Allocated with name '_i2c_read_i_131072_59'
                                   1504 ;------------------------------------------------------------
                                   1505 ;	8051_i2c_eeprom.c:242: int i2c_read(int ACK)
                                   1506 ;	-----------------------------------------
                                   1507 ;	 function i2c_read
                                   1508 ;	-----------------------------------------
      0035C0                       1509 _i2c_read:
      0035C0 AF 83            [24] 1510 	mov	r7,dph
      0035C2 E5 82            [12] 1511 	mov	a,dpl
      0035C4 90 04 10         [24] 1512 	mov	dptr,#_i2c_read_ACK_65536_57
      0035C7 F0               [24] 1513 	movx	@dptr,a
      0035C8 EF               [12] 1514 	mov	a,r7
      0035C9 A3               [24] 1515 	inc	dptr
      0035CA F0               [24] 1516 	movx	@dptr,a
                                   1517 ;	8051_i2c_eeprom.c:244: unsigned char buff=0;
      0035CB 90 04 12         [24] 1518 	mov	dptr,#_i2c_read_buff_65536_58
      0035CE E4               [12] 1519 	clr	a
      0035CF F0               [24] 1520 	movx	@dptr,a
                                   1521 ;	8051_i2c_eeprom.c:245: SCL = 0;
                                   1522 ;	assignBit
      0035D0 C2 93            [12] 1523 	clr	_P1_3
                                   1524 ;	8051_i2c_eeprom.c:246: for(int i=0;i<8;i++)
      0035D2 7E 00            [12] 1525 	mov	r6,#0x00
      0035D4 7F 00            [12] 1526 	mov	r7,#0x00
      0035D6                       1527 00103$:
      0035D6 C3               [12] 1528 	clr	c
      0035D7 EE               [12] 1529 	mov	a,r6
      0035D8 94 08            [12] 1530 	subb	a,#0x08
      0035DA EF               [12] 1531 	mov	a,r7
      0035DB 64 80            [12] 1532 	xrl	a,#0x80
      0035DD 94 80            [12] 1533 	subb	a,#0x80
      0035DF 50 40            [24] 1534 	jnc	00101$
                                   1535 ;	8051_i2c_eeprom.c:248: SCL = 1;
                                   1536 ;	assignBit
      0035E1 D2 93            [12] 1537 	setb	_P1_3
                                   1538 ;	8051_i2c_eeprom.c:249: i2c_delay();
      0035E3 C0 07            [24] 1539 	push	ar7
      0035E5 C0 06            [24] 1540 	push	ar6
      0035E7 12 36 67         [24] 1541 	lcall	_i2c_delay
      0035EA D0 06            [24] 1542 	pop	ar6
      0035EC D0 07            [24] 1543 	pop	ar7
                                   1544 ;	8051_i2c_eeprom.c:250: buff |= (SDA << (7 - i));
      0035EE A2 94            [12] 1545 	mov	c,_P1_4
      0035F0 E4               [12] 1546 	clr	a
      0035F1 33               [12] 1547 	rlc	a
      0035F2 FD               [12] 1548 	mov	r5,a
      0035F3 8E 04            [24] 1549 	mov	ar4,r6
      0035F5 74 07            [12] 1550 	mov	a,#0x07
      0035F7 C3               [12] 1551 	clr	c
      0035F8 9C               [12] 1552 	subb	a,r4
      0035F9 FC               [12] 1553 	mov	r4,a
      0035FA 8C F0            [24] 1554 	mov	b,r4
      0035FC 05 F0            [12] 1555 	inc	b
      0035FE ED               [12] 1556 	mov	a,r5
      0035FF 80 02            [24] 1557 	sjmp	00119$
      003601                       1558 00117$:
      003601 25 E0            [12] 1559 	add	a,acc
      003603                       1560 00119$:
      003603 D5 F0 FB         [24] 1561 	djnz	b,00117$
      003606 FC               [12] 1562 	mov	r4,a
      003607 90 04 12         [24] 1563 	mov	dptr,#_i2c_read_buff_65536_58
      00360A E0               [24] 1564 	movx	a,@dptr
      00360B 4C               [12] 1565 	orl	a,r4
      00360C F0               [24] 1566 	movx	@dptr,a
                                   1567 ;	8051_i2c_eeprom.c:251: i2c_delay();
      00360D C0 07            [24] 1568 	push	ar7
      00360F C0 06            [24] 1569 	push	ar6
      003611 12 36 67         [24] 1570 	lcall	_i2c_delay
      003614 D0 06            [24] 1571 	pop	ar6
      003616 D0 07            [24] 1572 	pop	ar7
                                   1573 ;	8051_i2c_eeprom.c:252: SCL=0;
                                   1574 ;	assignBit
      003618 C2 93            [12] 1575 	clr	_P1_3
                                   1576 ;	8051_i2c_eeprom.c:246: for(int i=0;i<8;i++)
      00361A 0E               [12] 1577 	inc	r6
      00361B BE 00 B8         [24] 1578 	cjne	r6,#0x00,00103$
      00361E 0F               [12] 1579 	inc	r7
      00361F 80 B5            [24] 1580 	sjmp	00103$
      003621                       1581 00101$:
                                   1582 ;	8051_i2c_eeprom.c:256: SDA = !ACK;         // ACK = 0, NACK = 1
      003621 90 04 10         [24] 1583 	mov	dptr,#_i2c_read_ACK_65536_57
      003624 E0               [24] 1584 	movx	a,@dptr
      003625 FE               [12] 1585 	mov	r6,a
      003626 A3               [24] 1586 	inc	dptr
      003627 E0               [24] 1587 	movx	a,@dptr
      003628 4E               [12] 1588 	orl	a,r6
      003629 B4 01 00         [24] 1589 	cjne	a,#0x01,00121$
      00362C                       1590 00121$:
      00362C E4               [12] 1591 	clr	a
      00362D 33               [12] 1592 	rlc	a
      00362E 24 FF            [12] 1593 	add	a,#0xff
      003630 92 94            [24] 1594 	mov	_P1_4,c
                                   1595 ;	8051_i2c_eeprom.c:257: SCL = 1;
                                   1596 ;	assignBit
      003632 D2 93            [12] 1597 	setb	_P1_3
                                   1598 ;	8051_i2c_eeprom.c:258: i2c_delay();
      003634 12 36 67         [24] 1599 	lcall	_i2c_delay
                                   1600 ;	8051_i2c_eeprom.c:259: SCL = 0;
                                   1601 ;	assignBit
      003637 C2 93            [12] 1602 	clr	_P1_3
                                   1603 ;	8051_i2c_eeprom.c:261: return buff;
      003639 90 04 12         [24] 1604 	mov	dptr,#_i2c_read_buff_65536_58
      00363C E0               [24] 1605 	movx	a,@dptr
      00363D FF               [12] 1606 	mov	r7,a
      00363E 7E 00            [12] 1607 	mov	r6,#0x00
      003640 8F 82            [24] 1608 	mov	dpl,r7
      003642 8E 83            [24] 1609 	mov	dph,r6
                                   1610 ;	8051_i2c_eeprom.c:262: }
      003644 22               [24] 1611 	ret
                                   1612 ;------------------------------------------------------------
                                   1613 ;Allocation info for local variables in function 'i2c_start'
                                   1614 ;------------------------------------------------------------
                                   1615 ;	8051_i2c_eeprom.c:263: void i2c_start(void)
                                   1616 ;	-----------------------------------------
                                   1617 ;	 function i2c_start
                                   1618 ;	-----------------------------------------
      003645                       1619 _i2c_start:
                                   1620 ;	8051_i2c_eeprom.c:265: i2c_delay();
      003645 12 36 67         [24] 1621 	lcall	_i2c_delay
                                   1622 ;	8051_i2c_eeprom.c:266: SDA = 1;
                                   1623 ;	assignBit
      003648 D2 94            [12] 1624 	setb	_P1_4
                                   1625 ;	8051_i2c_eeprom.c:267: i2c_delay();
      00364A 12 36 67         [24] 1626 	lcall	_i2c_delay
                                   1627 ;	8051_i2c_eeprom.c:268: SCL = 1;
                                   1628 ;	assignBit
      00364D D2 93            [12] 1629 	setb	_P1_3
                                   1630 ;	8051_i2c_eeprom.c:269: i2c_delay();
      00364F 12 36 67         [24] 1631 	lcall	_i2c_delay
                                   1632 ;	8051_i2c_eeprom.c:270: SDA = 0;
                                   1633 ;	assignBit
      003652 C2 94            [12] 1634 	clr	_P1_4
                                   1635 ;	8051_i2c_eeprom.c:271: i2c_delay();
      003654 12 36 67         [24] 1636 	lcall	_i2c_delay
                                   1637 ;	8051_i2c_eeprom.c:272: SCL = 0;
                                   1638 ;	assignBit
      003657 C2 93            [12] 1639 	clr	_P1_3
                                   1640 ;	8051_i2c_eeprom.c:273: }
      003659 22               [24] 1641 	ret
                                   1642 ;------------------------------------------------------------
                                   1643 ;Allocation info for local variables in function 'i2c_stop'
                                   1644 ;------------------------------------------------------------
                                   1645 ;	8051_i2c_eeprom.c:275: void i2c_stop(void)
                                   1646 ;	-----------------------------------------
                                   1647 ;	 function i2c_stop
                                   1648 ;	-----------------------------------------
      00365A                       1649 _i2c_stop:
                                   1650 ;	8051_i2c_eeprom.c:277: SDA = 0;
                                   1651 ;	assignBit
      00365A C2 94            [12] 1652 	clr	_P1_4
                                   1653 ;	8051_i2c_eeprom.c:278: i2c_delay();
      00365C 12 36 67         [24] 1654 	lcall	_i2c_delay
                                   1655 ;	8051_i2c_eeprom.c:279: SCL = 1;
                                   1656 ;	assignBit
      00365F D2 93            [12] 1657 	setb	_P1_3
                                   1658 ;	8051_i2c_eeprom.c:280: i2c_delay();
      003661 12 36 67         [24] 1659 	lcall	_i2c_delay
                                   1660 ;	8051_i2c_eeprom.c:281: SDA = 1; 
                                   1661 ;	assignBit
      003664 D2 94            [12] 1662 	setb	_P1_4
                                   1663 ;	8051_i2c_eeprom.c:282: }
      003666 22               [24] 1664 	ret
                                   1665 ;------------------------------------------------------------
                                   1666 ;Allocation info for local variables in function 'i2c_delay'
                                   1667 ;------------------------------------------------------------
                                   1668 ;i                         Allocated with name '_i2c_delay_i_131072_66'
                                   1669 ;------------------------------------------------------------
                                   1670 ;	8051_i2c_eeprom.c:284: void i2c_delay() 
                                   1671 ;	-----------------------------------------
                                   1672 ;	 function i2c_delay
                                   1673 ;	-----------------------------------------
      003667                       1674 _i2c_delay:
                                   1675 ;	8051_i2c_eeprom.c:292: for(int i = 0; i<500; i++);
      003667 7E 00            [12] 1676 	mov	r6,#0x00
      003669 7F 00            [12] 1677 	mov	r7,#0x00
      00366B                       1678 00103$:
      00366B C3               [12] 1679 	clr	c
      00366C EE               [12] 1680 	mov	a,r6
      00366D 94 F4            [12] 1681 	subb	a,#0xf4
      00366F EF               [12] 1682 	mov	a,r7
      003670 64 80            [12] 1683 	xrl	a,#0x80
      003672 94 81            [12] 1684 	subb	a,#0x81
      003674 50 07            [24] 1685 	jnc	00105$
      003676 0E               [12] 1686 	inc	r6
      003677 BE 00 F1         [24] 1687 	cjne	r6,#0x00,00103$
      00367A 0F               [12] 1688 	inc	r7
      00367B 80 EE            [24] 1689 	sjmp	00103$
      00367D                       1690 00105$:
                                   1691 ;	8051_i2c_eeprom.c:293: }
      00367D 22               [24] 1692 	ret
                                   1693 ;------------------------------------------------------------
                                   1694 ;Allocation info for local variables in function 'test_function'
                                   1695 ;------------------------------------------------------------
                                   1696 ;test_data                 Allocated with name '_test_function_test_data_65537_68'
                                   1697 ;address                   Allocated with name '_test_function_address_65537_68'
                                   1698 ;i                         Allocated with name '_test_function_i_131073_69'
                                   1699 ;read_data                 Allocated with name '_test_function_read_data_65538_71'
                                   1700 ;------------------------------------------------------------
                                   1701 ;	8051_i2c_eeprom.c:295: void test_function()
                                   1702 ;	-----------------------------------------
                                   1703 ;	 function test_function
                                   1704 ;	-----------------------------------------
      00367E                       1705 _test_function:
                                   1706 ;	8051_i2c_eeprom.c:297: i2c_start();
      00367E 12 36 45         [24] 1707 	lcall	_i2c_start
                                   1708 ;	8051_i2c_eeprom.c:298: i2c_delay();
      003681 12 36 67         [24] 1709 	lcall	_i2c_delay
                                   1710 ;	8051_i2c_eeprom.c:304: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      003684 74 02            [12] 1711 	mov	a,#0x02
      003686 C0 E0            [24] 1712 	push	acc
      003688 E4               [12] 1713 	clr	a
      003689 C0 E0            [24] 1714 	push	acc
      00368B 74 26            [12] 1715 	mov	a,#0x26
      00368D C0 E0            [24] 1716 	push	acc
      00368F E4               [12] 1717 	clr	a
      003690 C0 E0            [24] 1718 	push	acc
      003692 74 35            [12] 1719 	mov	a,#___str_28
      003694 C0 E0            [24] 1720 	push	acc
      003696 74 4A            [12] 1721 	mov	a,#(___str_28 >> 8)
      003698 C0 E0            [24] 1722 	push	acc
      00369A 74 80            [12] 1723 	mov	a,#0x80
      00369C C0 E0            [24] 1724 	push	acc
      00369E 12 37 84         [24] 1725 	lcall	_printf
      0036A1 E5 81            [12] 1726 	mov	a,sp
      0036A3 24 F9            [12] 1727 	add	a,#0xf9
      0036A5 F5 81            [12] 1728 	mov	sp,a
                                   1729 ;	8051_i2c_eeprom.c:305: eeprom_write(address, test_data);
      0036A7 90 04 0A         [24] 1730 	mov	dptr,#_eeprom_write_PARM_2
      0036AA 74 26            [12] 1731 	mov	a,#0x26
      0036AC F0               [24] 1732 	movx	@dptr,a
      0036AD 90 00 02         [24] 1733 	mov	dptr,#0x0002
      0036B0 12 33 5C         [24] 1734 	lcall	_eeprom_write
                                   1735 ;	8051_i2c_eeprom.c:306: i2c_stop();
      0036B3 12 36 5A         [24] 1736 	lcall	_i2c_stop
                                   1737 ;	8051_i2c_eeprom.c:308: for(int i = 0; i<100; i++)
      0036B6 7E 00            [12] 1738 	mov	r6,#0x00
      0036B8 7F 00            [12] 1739 	mov	r7,#0x00
      0036BA                       1740 00106$:
      0036BA C3               [12] 1741 	clr	c
      0036BB EE               [12] 1742 	mov	a,r6
      0036BC 94 64            [12] 1743 	subb	a,#0x64
      0036BE EF               [12] 1744 	mov	a,r7
      0036BF 64 80            [12] 1745 	xrl	a,#0x80
      0036C1 94 80            [12] 1746 	subb	a,#0x80
      0036C3 50 12            [24] 1747 	jnc	00101$
                                   1748 ;	8051_i2c_eeprom.c:310: i2c_delay();
      0036C5 C0 07            [24] 1749 	push	ar7
      0036C7 C0 06            [24] 1750 	push	ar6
      0036C9 12 36 67         [24] 1751 	lcall	_i2c_delay
      0036CC D0 06            [24] 1752 	pop	ar6
      0036CE D0 07            [24] 1753 	pop	ar7
                                   1754 ;	8051_i2c_eeprom.c:308: for(int i = 0; i<100; i++)
      0036D0 0E               [12] 1755 	inc	r6
      0036D1 BE 00 E6         [24] 1756 	cjne	r6,#0x00,00106$
      0036D4 0F               [12] 1757 	inc	r7
      0036D5 80 E3            [24] 1758 	sjmp	00106$
      0036D7                       1759 00101$:
                                   1760 ;	8051_i2c_eeprom.c:314: unsigned char read_data = eeprom_read(address);
      0036D7 90 00 02         [24] 1761 	mov	dptr,#0x0002
      0036DA 12 34 95         [24] 1762 	lcall	_eeprom_read
      0036DD AE 82            [24] 1763 	mov	r6,dpl
                                   1764 ;	8051_i2c_eeprom.c:315: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      0036DF 8E 05            [24] 1765 	mov	ar5,r6
      0036E1 7F 00            [12] 1766 	mov	r7,#0x00
      0036E3 C0 06            [24] 1767 	push	ar6
      0036E5 C0 05            [24] 1768 	push	ar5
      0036E7 C0 07            [24] 1769 	push	ar7
      0036E9 74 02            [12] 1770 	mov	a,#0x02
      0036EB C0 E0            [24] 1771 	push	acc
      0036ED E4               [12] 1772 	clr	a
      0036EE C0 E0            [24] 1773 	push	acc
      0036F0 74 5D            [12] 1774 	mov	a,#___str_29
      0036F2 C0 E0            [24] 1775 	push	acc
      0036F4 74 4A            [12] 1776 	mov	a,#(___str_29 >> 8)
      0036F6 C0 E0            [24] 1777 	push	acc
      0036F8 74 80            [12] 1778 	mov	a,#0x80
      0036FA C0 E0            [24] 1779 	push	acc
      0036FC 12 37 84         [24] 1780 	lcall	_printf
      0036FF E5 81            [12] 1781 	mov	a,sp
      003701 24 F9            [12] 1782 	add	a,#0xf9
      003703 F5 81            [12] 1783 	mov	sp,a
      003705 D0 06            [24] 1784 	pop	ar6
                                   1785 ;	8051_i2c_eeprom.c:318: if(read_data == test_data) {
      003707 BE 26 16         [24] 1786 	cjne	r6,#0x26,00103$
                                   1787 ;	8051_i2c_eeprom.c:319: printf("MATCH - Write/Read successful!\n\r");
      00370A 74 85            [12] 1788 	mov	a,#___str_30
      00370C C0 E0            [24] 1789 	push	acc
      00370E 74 4A            [12] 1790 	mov	a,#(___str_30 >> 8)
      003710 C0 E0            [24] 1791 	push	acc
      003712 74 80            [12] 1792 	mov	a,#0x80
      003714 C0 E0            [24] 1793 	push	acc
      003716 12 37 84         [24] 1794 	lcall	_printf
      003719 15 81            [12] 1795 	dec	sp
      00371B 15 81            [12] 1796 	dec	sp
      00371D 15 81            [12] 1797 	dec	sp
      00371F 22               [24] 1798 	ret
      003720                       1799 00103$:
                                   1800 ;	8051_i2c_eeprom.c:321: printf("ERROR - Data mismatch!\n\r");
      003720 74 A6            [12] 1801 	mov	a,#___str_31
      003722 C0 E0            [24] 1802 	push	acc
      003724 74 4A            [12] 1803 	mov	a,#(___str_31 >> 8)
      003726 C0 E0            [24] 1804 	push	acc
      003728 74 80            [12] 1805 	mov	a,#0x80
      00372A C0 E0            [24] 1806 	push	acc
      00372C 12 37 84         [24] 1807 	lcall	_printf
      00372F 15 81            [12] 1808 	dec	sp
      003731 15 81            [12] 1809 	dec	sp
      003733 15 81            [12] 1810 	dec	sp
                                   1811 ;	8051_i2c_eeprom.c:325: }
      003735 22               [24] 1812 	ret
                                   1813 	.area CSEG    (CODE)
                                   1814 	.area CONST   (CODE)
                                   1815 	.area CONST   (CODE)
      0041E6                       1816 ___str_0:
      0041E6 0A                    1817 	.db 0x0a
      0041E7 E2                    1818 	.db 0xe2
      0041E8 95                    1819 	.db 0x95
      0041E9 94                    1820 	.db 0x94
      0041EA E2                    1821 	.db 0xe2
      0041EB 95                    1822 	.db 0x95
      0041EC 90                    1823 	.db 0x90
      0041ED E2                    1824 	.db 0xe2
      0041EE 95                    1825 	.db 0x95
      0041EF 90                    1826 	.db 0x90
      0041F0 E2                    1827 	.db 0xe2
      0041F1 95                    1828 	.db 0x95
      0041F2 90                    1829 	.db 0x90
      0041F3 E2                    1830 	.db 0xe2
      0041F4 95                    1831 	.db 0x95
      0041F5 90                    1832 	.db 0x90
      0041F6 E2                    1833 	.db 0xe2
      0041F7 95                    1834 	.db 0x95
      0041F8 90                    1835 	.db 0x90
      0041F9 E2                    1836 	.db 0xe2
      0041FA 95                    1837 	.db 0x95
      0041FB 90                    1838 	.db 0x90
      0041FC E2                    1839 	.db 0xe2
      0041FD 95                    1840 	.db 0x95
      0041FE 90                    1841 	.db 0x90
      0041FF E2                    1842 	.db 0xe2
      004200 95                    1843 	.db 0x95
      004201 90                    1844 	.db 0x90
      004202 E2                    1845 	.db 0xe2
      004203 95                    1846 	.db 0x95
      004204 90                    1847 	.db 0x90
      004205 E2                    1848 	.db 0xe2
      004206 95                    1849 	.db 0x95
      004207 90                    1850 	.db 0x90
      004208 E2                    1851 	.db 0xe2
      004209 95                    1852 	.db 0x95
      00420A 90                    1853 	.db 0x90
      00420B E2                    1854 	.db 0xe2
      00420C 95                    1855 	.db 0x95
      00420D 90                    1856 	.db 0x90
      00420E E2                    1857 	.db 0xe2
      00420F 95                    1858 	.db 0x95
      004210 90                    1859 	.db 0x90
      004211 E2                    1860 	.db 0xe2
      004212 95                    1861 	.db 0x95
      004213 90                    1862 	.db 0x90
      004214 E2                    1863 	.db 0xe2
      004215 95                    1864 	.db 0x95
      004216 90                    1865 	.db 0x90
      004217 E2                    1866 	.db 0xe2
      004218 95                    1867 	.db 0x95
      004219 90                    1868 	.db 0x90
      00421A E2                    1869 	.db 0xe2
      00421B 95                    1870 	.db 0x95
      00421C 90                    1871 	.db 0x90
      00421D E2                    1872 	.db 0xe2
      00421E 95                    1873 	.db 0x95
      00421F 90                    1874 	.db 0x90
      004220 E2                    1875 	.db 0xe2
      004221 95                    1876 	.db 0x95
      004222 90                    1877 	.db 0x90
      004223 E2                    1878 	.db 0xe2
      004224 95                    1879 	.db 0x95
      004225 90                    1880 	.db 0x90
      004226 E2                    1881 	.db 0xe2
      004227 95                    1882 	.db 0x95
      004228 90                    1883 	.db 0x90
      004229 E2                    1884 	.db 0xe2
      00422A 95                    1885 	.db 0x95
      00422B 90                    1886 	.db 0x90
      00422C E2                    1887 	.db 0xe2
      00422D 95                    1888 	.db 0x95
      00422E 90                    1889 	.db 0x90
      00422F E2                    1890 	.db 0xe2
      004230 95                    1891 	.db 0x95
      004231 90                    1892 	.db 0x90
      004232 E2                    1893 	.db 0xe2
      004233 95                    1894 	.db 0x95
      004234 90                    1895 	.db 0x90
      004235 E2                    1896 	.db 0xe2
      004236 95                    1897 	.db 0x95
      004237 90                    1898 	.db 0x90
      004238 E2                    1899 	.db 0xe2
      004239 95                    1900 	.db 0x95
      00423A 90                    1901 	.db 0x90
      00423B E2                    1902 	.db 0xe2
      00423C 95                    1903 	.db 0x95
      00423D 90                    1904 	.db 0x90
      00423E E2                    1905 	.db 0xe2
      00423F 95                    1906 	.db 0x95
      004240 90                    1907 	.db 0x90
      004241 E2                    1908 	.db 0xe2
      004242 95                    1909 	.db 0x95
      004243 90                    1910 	.db 0x90
      004244 E2                    1911 	.db 0xe2
      004245 95                    1912 	.db 0x95
      004246 90                    1913 	.db 0x90
      004247 E2                    1914 	.db 0xe2
      004248 95                    1915 	.db 0x95
      004249 90                    1916 	.db 0x90
      00424A E2                    1917 	.db 0xe2
      00424B 95                    1918 	.db 0x95
      00424C 90                    1919 	.db 0x90
      00424D E2                    1920 	.db 0xe2
      00424E 95                    1921 	.db 0x95
      00424F 90                    1922 	.db 0x90
      004250 E2                    1923 	.db 0xe2
      004251 95                    1924 	.db 0x95
      004252 90                    1925 	.db 0x90
      004253 E2                    1926 	.db 0xe2
      004254 95                    1927 	.db 0x95
      004255 90                    1928 	.db 0x90
      004256 E2                    1929 	.db 0xe2
      004257 95                    1930 	.db 0x95
      004258 90                    1931 	.db 0x90
      004259 E2                    1932 	.db 0xe2
      00425A 95                    1933 	.db 0x95
      00425B 90                    1934 	.db 0x90
      00425C E2                    1935 	.db 0xe2
      00425D 95                    1936 	.db 0x95
      00425E 90                    1937 	.db 0x90
      00425F E2                    1938 	.db 0xe2
      004260 95                    1939 	.db 0x95
      004261 90                    1940 	.db 0x90
      004262 E2                    1941 	.db 0xe2
      004263 95                    1942 	.db 0x95
      004264 90                    1943 	.db 0x90
      004265 E2                    1944 	.db 0xe2
      004266 95                    1945 	.db 0x95
      004267 90                    1946 	.db 0x90
      004268 E2                    1947 	.db 0xe2
      004269 95                    1948 	.db 0x95
      00426A 90                    1949 	.db 0x90
      00426B E2                    1950 	.db 0xe2
      00426C 95                    1951 	.db 0x95
      00426D 90                    1952 	.db 0x90
      00426E E2                    1953 	.db 0xe2
      00426F 95                    1954 	.db 0x95
      004270 90                    1955 	.db 0x90
      004271 E2                    1956 	.db 0xe2
      004272 95                    1957 	.db 0x95
      004273 90                    1958 	.db 0x90
      004274 E2                    1959 	.db 0xe2
      004275 95                    1960 	.db 0x95
      004276 90                    1961 	.db 0x90
      004277 E2                    1962 	.db 0xe2
      004278 95                    1963 	.db 0x95
      004279 90                    1964 	.db 0x90
      00427A E2                    1965 	.db 0xe2
      00427B 95                    1966 	.db 0x95
      00427C 90                    1967 	.db 0x90
      00427D E2                    1968 	.db 0xe2
      00427E 95                    1969 	.db 0x95
      00427F 90                    1970 	.db 0x90
      004280 E2                    1971 	.db 0xe2
      004281 95                    1972 	.db 0x95
      004282 90                    1973 	.db 0x90
      004283 E2                    1974 	.db 0xe2
      004284 95                    1975 	.db 0x95
      004285 90                    1976 	.db 0x90
      004286 E2                    1977 	.db 0xe2
      004287 95                    1978 	.db 0x95
      004288 90                    1979 	.db 0x90
      004289 E2                    1980 	.db 0xe2
      00428A 95                    1981 	.db 0x95
      00428B 90                    1982 	.db 0x90
      00428C E2                    1983 	.db 0xe2
      00428D 95                    1984 	.db 0x95
      00428E 90                    1985 	.db 0x90
      00428F E2                    1986 	.db 0xe2
      004290 95                    1987 	.db 0x95
      004291 90                    1988 	.db 0x90
      004292 E2                    1989 	.db 0xe2
      004293 95                    1990 	.db 0x95
      004294 97                    1991 	.db 0x97
      004295 0A                    1992 	.db 0x0a
      004296 0D                    1993 	.db 0x0d
      004297 00                    1994 	.db 0x00
                                   1995 	.area CSEG    (CODE)
                                   1996 	.area CONST   (CODE)
      004298                       1997 ___str_1:
      004298 E2                    1998 	.db 0xe2
      004299 95                    1999 	.db 0x95
      00429A 91                    2000 	.db 0x91
      00429B 20 20 20 20 20 20 20  2001 	.ascii "           I2C Memory Management System v1.0             "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
             20
      0042D4 E2                    2002 	.db 0xe2
      0042D5 95                    2003 	.db 0x95
      0042D6 91                    2004 	.db 0x91
      0042D7 0A                    2005 	.db 0x0a
      0042D8 0D                    2006 	.db 0x0d
      0042D9 00                    2007 	.db 0x00
                                   2008 	.area CSEG    (CODE)
                                   2009 	.area CONST   (CODE)
      0042DA                       2010 ___str_2:
      0042DA E2                    2011 	.db 0xe2
      0042DB 95                    2012 	.db 0x95
      0042DC 9A                    2013 	.db 0x9a
      0042DD E2                    2014 	.db 0xe2
      0042DE 95                    2015 	.db 0x95
      0042DF 90                    2016 	.db 0x90
      0042E0 E2                    2017 	.db 0xe2
      0042E1 95                    2018 	.db 0x95
      0042E2 90                    2019 	.db 0x90
      0042E3 E2                    2020 	.db 0xe2
      0042E4 95                    2021 	.db 0x95
      0042E5 90                    2022 	.db 0x90
      0042E6 E2                    2023 	.db 0xe2
      0042E7 95                    2024 	.db 0x95
      0042E8 90                    2025 	.db 0x90
      0042E9 E2                    2026 	.db 0xe2
      0042EA 95                    2027 	.db 0x95
      0042EB 90                    2028 	.db 0x90
      0042EC E2                    2029 	.db 0xe2
      0042ED 95                    2030 	.db 0x95
      0042EE 90                    2031 	.db 0x90
      0042EF E2                    2032 	.db 0xe2
      0042F0 95                    2033 	.db 0x95
      0042F1 90                    2034 	.db 0x90
      0042F2 E2                    2035 	.db 0xe2
      0042F3 95                    2036 	.db 0x95
      0042F4 90                    2037 	.db 0x90
      0042F5 E2                    2038 	.db 0xe2
      0042F6 95                    2039 	.db 0x95
      0042F7 90                    2040 	.db 0x90
      0042F8 E2                    2041 	.db 0xe2
      0042F9 95                    2042 	.db 0x95
      0042FA 90                    2043 	.db 0x90
      0042FB E2                    2044 	.db 0xe2
      0042FC 95                    2045 	.db 0x95
      0042FD 90                    2046 	.db 0x90
      0042FE E2                    2047 	.db 0xe2
      0042FF 95                    2048 	.db 0x95
      004300 90                    2049 	.db 0x90
      004301 E2                    2050 	.db 0xe2
      004302 95                    2051 	.db 0x95
      004303 90                    2052 	.db 0x90
      004304 E2                    2053 	.db 0xe2
      004305 95                    2054 	.db 0x95
      004306 90                    2055 	.db 0x90
      004307 E2                    2056 	.db 0xe2
      004308 95                    2057 	.db 0x95
      004309 90                    2058 	.db 0x90
      00430A E2                    2059 	.db 0xe2
      00430B 95                    2060 	.db 0x95
      00430C 90                    2061 	.db 0x90
      00430D E2                    2062 	.db 0xe2
      00430E 95                    2063 	.db 0x95
      00430F 90                    2064 	.db 0x90
      004310 E2                    2065 	.db 0xe2
      004311 95                    2066 	.db 0x95
      004312 90                    2067 	.db 0x90
      004313 E2                    2068 	.db 0xe2
      004314 95                    2069 	.db 0x95
      004315 90                    2070 	.db 0x90
      004316 E2                    2071 	.db 0xe2
      004317 95                    2072 	.db 0x95
      004318 90                    2073 	.db 0x90
      004319 E2                    2074 	.db 0xe2
      00431A 95                    2075 	.db 0x95
      00431B 90                    2076 	.db 0x90
      00431C E2                    2077 	.db 0xe2
      00431D 95                    2078 	.db 0x95
      00431E 90                    2079 	.db 0x90
      00431F E2                    2080 	.db 0xe2
      004320 95                    2081 	.db 0x95
      004321 90                    2082 	.db 0x90
      004322 E2                    2083 	.db 0xe2
      004323 95                    2084 	.db 0x95
      004324 90                    2085 	.db 0x90
      004325 E2                    2086 	.db 0xe2
      004326 95                    2087 	.db 0x95
      004327 90                    2088 	.db 0x90
      004328 E2                    2089 	.db 0xe2
      004329 95                    2090 	.db 0x95
      00432A 90                    2091 	.db 0x90
      00432B E2                    2092 	.db 0xe2
      00432C 95                    2093 	.db 0x95
      00432D 90                    2094 	.db 0x90
      00432E E2                    2095 	.db 0xe2
      00432F 95                    2096 	.db 0x95
      004330 90                    2097 	.db 0x90
      004331 E2                    2098 	.db 0xe2
      004332 95                    2099 	.db 0x95
      004333 90                    2100 	.db 0x90
      004334 E2                    2101 	.db 0xe2
      004335 95                    2102 	.db 0x95
      004336 90                    2103 	.db 0x90
      004337 E2                    2104 	.db 0xe2
      004338 95                    2105 	.db 0x95
      004339 90                    2106 	.db 0x90
      00433A E2                    2107 	.db 0xe2
      00433B 95                    2108 	.db 0x95
      00433C 90                    2109 	.db 0x90
      00433D E2                    2110 	.db 0xe2
      00433E 95                    2111 	.db 0x95
      00433F 90                    2112 	.db 0x90
      004340 E2                    2113 	.db 0xe2
      004341 95                    2114 	.db 0x95
      004342 90                    2115 	.db 0x90
      004343 E2                    2116 	.db 0xe2
      004344 95                    2117 	.db 0x95
      004345 90                    2118 	.db 0x90
      004346 E2                    2119 	.db 0xe2
      004347 95                    2120 	.db 0x95
      004348 90                    2121 	.db 0x90
      004349 E2                    2122 	.db 0xe2
      00434A 95                    2123 	.db 0x95
      00434B 90                    2124 	.db 0x90
      00434C E2                    2125 	.db 0xe2
      00434D 95                    2126 	.db 0x95
      00434E 90                    2127 	.db 0x90
      00434F E2                    2128 	.db 0xe2
      004350 95                    2129 	.db 0x95
      004351 90                    2130 	.db 0x90
      004352 E2                    2131 	.db 0xe2
      004353 95                    2132 	.db 0x95
      004354 90                    2133 	.db 0x90
      004355 E2                    2134 	.db 0xe2
      004356 95                    2135 	.db 0x95
      004357 90                    2136 	.db 0x90
      004358 E2                    2137 	.db 0xe2
      004359 95                    2138 	.db 0x95
      00435A 90                    2139 	.db 0x90
      00435B E2                    2140 	.db 0xe2
      00435C 95                    2141 	.db 0x95
      00435D 90                    2142 	.db 0x90
      00435E E2                    2143 	.db 0xe2
      00435F 95                    2144 	.db 0x95
      004360 90                    2145 	.db 0x90
      004361 E2                    2146 	.db 0xe2
      004362 95                    2147 	.db 0x95
      004363 90                    2148 	.db 0x90
      004364 E2                    2149 	.db 0xe2
      004365 95                    2150 	.db 0x95
      004366 90                    2151 	.db 0x90
      004367 E2                    2152 	.db 0xe2
      004368 95                    2153 	.db 0x95
      004369 90                    2154 	.db 0x90
      00436A E2                    2155 	.db 0xe2
      00436B 95                    2156 	.db 0x95
      00436C 90                    2157 	.db 0x90
      00436D E2                    2158 	.db 0xe2
      00436E 95                    2159 	.db 0x95
      00436F 90                    2160 	.db 0x90
      004370 E2                    2161 	.db 0xe2
      004371 95                    2162 	.db 0x95
      004372 90                    2163 	.db 0x90
      004373 E2                    2164 	.db 0xe2
      004374 95                    2165 	.db 0x95
      004375 90                    2166 	.db 0x90
      004376 E2                    2167 	.db 0xe2
      004377 95                    2168 	.db 0x95
      004378 90                    2169 	.db 0x90
      004379 E2                    2170 	.db 0xe2
      00437A 95                    2171 	.db 0x95
      00437B 90                    2172 	.db 0x90
      00437C E2                    2173 	.db 0xe2
      00437D 95                    2174 	.db 0x95
      00437E 90                    2175 	.db 0x90
      00437F E2                    2176 	.db 0xe2
      004380 95                    2177 	.db 0x95
      004381 90                    2178 	.db 0x90
      004382 E2                    2179 	.db 0xe2
      004383 95                    2180 	.db 0x95
      004384 90                    2181 	.db 0x90
      004385 E2                    2182 	.db 0xe2
      004386 95                    2183 	.db 0x95
      004387 9D                    2184 	.db 0x9d
      004388 0A                    2185 	.db 0x0a
      004389 0D                    2186 	.db 0x0d
      00438A 00                    2187 	.db 0x00
                                   2188 	.area CSEG    (CODE)
                                   2189 	.area CONST   (CODE)
      00438B                       2190 ___str_3:
      00438B 0A                    2191 	.db 0x0a
      00438C 0D                    2192 	.db 0x0d
      00438D E2                    2193 	.db 0xe2
      00438E 94                    2194 	.db 0x94
      00438F 8C                    2195 	.db 0x8c
      004390 E2                    2196 	.db 0xe2
      004391 94                    2197 	.db 0x94
      004392 80                    2198 	.db 0x80
      004393 E2                    2199 	.db 0xe2
      004394 94                    2200 	.db 0x94
      004395 80                    2201 	.db 0x80
      004396 E2                    2202 	.db 0xe2
      004397 94                    2203 	.db 0x94
      004398 80                    2204 	.db 0x80
      004399 E2                    2205 	.db 0xe2
      00439A 94                    2206 	.db 0x94
      00439B 80                    2207 	.db 0x80
      00439C E2                    2208 	.db 0xe2
      00439D 94                    2209 	.db 0x94
      00439E 80                    2210 	.db 0x80
      00439F E2                    2211 	.db 0xe2
      0043A0 94                    2212 	.db 0x94
      0043A1 80                    2213 	.db 0x80
      0043A2 E2                    2214 	.db 0xe2
      0043A3 94                    2215 	.db 0x94
      0043A4 80                    2216 	.db 0x80
      0043A5 E2                    2217 	.db 0xe2
      0043A6 94                    2218 	.db 0x94
      0043A7 80                    2219 	.db 0x80
      0043A8 E2                    2220 	.db 0xe2
      0043A9 94                    2221 	.db 0x94
      0043AA 80                    2222 	.db 0x80
      0043AB E2                    2223 	.db 0xe2
      0043AC 94                    2224 	.db 0x94
      0043AD 80                    2225 	.db 0x80
      0043AE E2                    2226 	.db 0xe2
      0043AF 94                    2227 	.db 0x94
      0043B0 80                    2228 	.db 0x80
      0043B1 E2                    2229 	.db 0xe2
      0043B2 94                    2230 	.db 0x94
      0043B3 80                    2231 	.db 0x80
      0043B4 E2                    2232 	.db 0xe2
      0043B5 94                    2233 	.db 0x94
      0043B6 AC                    2234 	.db 0xac
      0043B7 E2                    2235 	.db 0xe2
      0043B8 94                    2236 	.db 0x94
      0043B9 80                    2237 	.db 0x80
      0043BA E2                    2238 	.db 0xe2
      0043BB 94                    2239 	.db 0x94
      0043BC 80                    2240 	.db 0x80
      0043BD E2                    2241 	.db 0xe2
      0043BE 94                    2242 	.db 0x94
      0043BF 80                    2243 	.db 0x80
      0043C0 E2                    2244 	.db 0xe2
      0043C1 94                    2245 	.db 0x94
      0043C2 80                    2246 	.db 0x80
      0043C3 E2                    2247 	.db 0xe2
      0043C4 94                    2248 	.db 0x94
      0043C5 80                    2249 	.db 0x80
      0043C6 E2                    2250 	.db 0xe2
      0043C7 94                    2251 	.db 0x94
      0043C8 80                    2252 	.db 0x80
      0043C9 E2                    2253 	.db 0xe2
      0043CA 94                    2254 	.db 0x94
      0043CB 80                    2255 	.db 0x80
      0043CC E2                    2256 	.db 0xe2
      0043CD 94                    2257 	.db 0x94
      0043CE 80                    2258 	.db 0x80
      0043CF E2                    2259 	.db 0xe2
      0043D0 94                    2260 	.db 0x94
      0043D1 80                    2261 	.db 0x80
      0043D2 E2                    2262 	.db 0xe2
      0043D3 94                    2263 	.db 0x94
      0043D4 80                    2264 	.db 0x80
      0043D5 E2                    2265 	.db 0xe2
      0043D6 94                    2266 	.db 0x94
      0043D7 80                    2267 	.db 0x80
      0043D8 E2                    2268 	.db 0xe2
      0043D9 94                    2269 	.db 0x94
      0043DA 80                    2270 	.db 0x80
      0043DB E2                    2271 	.db 0xe2
      0043DC 94                    2272 	.db 0x94
      0043DD 80                    2273 	.db 0x80
      0043DE E2                    2274 	.db 0xe2
      0043DF 94                    2275 	.db 0x94
      0043E0 80                    2276 	.db 0x80
      0043E1 E2                    2277 	.db 0xe2
      0043E2 94                    2278 	.db 0x94
      0043E3 80                    2279 	.db 0x80
      0043E4 E2                    2280 	.db 0xe2
      0043E5 94                    2281 	.db 0x94
      0043E6 80                    2282 	.db 0x80
      0043E7 E2                    2283 	.db 0xe2
      0043E8 94                    2284 	.db 0x94
      0043E9 80                    2285 	.db 0x80
      0043EA E2                    2286 	.db 0xe2
      0043EB 94                    2287 	.db 0x94
      0043EC 80                    2288 	.db 0x80
      0043ED E2                    2289 	.db 0xe2
      0043EE 94                    2290 	.db 0x94
      0043EF 80                    2291 	.db 0x80
      0043F0 E2                    2292 	.db 0xe2
      0043F1 94                    2293 	.db 0x94
      0043F2 80                    2294 	.db 0x80
      0043F3 E2                    2295 	.db 0xe2
      0043F4 94                    2296 	.db 0x94
      0043F5 80                    2297 	.db 0x80
      0043F6 E2                    2298 	.db 0xe2
      0043F7 94                    2299 	.db 0x94
      0043F8 80                    2300 	.db 0x80
      0043F9 E2                    2301 	.db 0xe2
      0043FA 94                    2302 	.db 0x94
      0043FB 80                    2303 	.db 0x80
      0043FC E2                    2304 	.db 0xe2
      0043FD 94                    2305 	.db 0x94
      0043FE 80                    2306 	.db 0x80
      0043FF E2                    2307 	.db 0xe2
      004400 94                    2308 	.db 0x94
      004401 80                    2309 	.db 0x80
      004402 E2                    2310 	.db 0xe2
      004403 94                    2311 	.db 0x94
      004404 80                    2312 	.db 0x80
      004405 E2                    2313 	.db 0xe2
      004406 94                    2314 	.db 0x94
      004407 80                    2315 	.db 0x80
      004408 E2                    2316 	.db 0xe2
      004409 94                    2317 	.db 0x94
      00440A 80                    2318 	.db 0x80
      00440B E2                    2319 	.db 0xe2
      00440C 94                    2320 	.db 0x94
      00440D 80                    2321 	.db 0x80
      00440E E2                    2322 	.db 0xe2
      00440F 94                    2323 	.db 0x94
      004410 80                    2324 	.db 0x80
      004411 E2                    2325 	.db 0xe2
      004412 94                    2326 	.db 0x94
      004413 80                    2327 	.db 0x80
      004414 E2                    2328 	.db 0xe2
      004415 94                    2329 	.db 0x94
      004416 80                    2330 	.db 0x80
      004417 E2                    2331 	.db 0xe2
      004418 94                    2332 	.db 0x94
      004419 80                    2333 	.db 0x80
      00441A E2                    2334 	.db 0xe2
      00441B 94                    2335 	.db 0x94
      00441C 80                    2336 	.db 0x80
      00441D E2                    2337 	.db 0xe2
      00441E 94                    2338 	.db 0x94
      00441F 80                    2339 	.db 0x80
      004420 E2                    2340 	.db 0xe2
      004421 94                    2341 	.db 0x94
      004422 80                    2342 	.db 0x80
      004423 E2                    2343 	.db 0xe2
      004424 94                    2344 	.db 0x94
      004425 80                    2345 	.db 0x80
      004426 E2                    2346 	.db 0xe2
      004427 94                    2347 	.db 0x94
      004428 80                    2348 	.db 0x80
      004429 E2                    2349 	.db 0xe2
      00442A 94                    2350 	.db 0x94
      00442B 80                    2351 	.db 0x80
      00442C E2                    2352 	.db 0xe2
      00442D 94                    2353 	.db 0x94
      00442E 80                    2354 	.db 0x80
      00442F E2                    2355 	.db 0xe2
      004430 94                    2356 	.db 0x94
      004431 80                    2357 	.db 0x80
      004432 E2                    2358 	.db 0xe2
      004433 94                    2359 	.db 0x94
      004434 80                    2360 	.db 0x80
      004435 E2                    2361 	.db 0xe2
      004436 94                    2362 	.db 0x94
      004437 80                    2363 	.db 0x80
      004438 E2                    2364 	.db 0xe2
      004439 94                    2365 	.db 0x94
      00443A 80                    2366 	.db 0x80
      00443B E2                    2367 	.db 0xe2
      00443C 94                    2368 	.db 0x94
      00443D 90                    2369 	.db 0x90
      00443E 0A                    2370 	.db 0x0a
      00443F 0D                    2371 	.db 0x0d
      004440 00                    2372 	.db 0x00
                                   2373 	.area CSEG    (CODE)
                                   2374 	.area CONST   (CODE)
      004441                       2375 ___str_4:
      004441 E2                    2376 	.db 0xe2
      004442 94                    2377 	.db 0x94
      004443 82                    2378 	.db 0x82
      004444 20 20 43 6F 6D 6D 61  2379 	.ascii "  Command   "
             6E 64 20 20 20
      004450 E2                    2380 	.db 0xe2
      004451 94                    2381 	.db 0x94
      004452 82                    2382 	.db 0x82
      004453 20 20 20 20 20 20 20  2383 	.ascii "               Description                   "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20
      004480 E2                    2384 	.db 0xe2
      004481 94                    2385 	.db 0x94
      004482 82                    2386 	.db 0x82
      004483 0A                    2387 	.db 0x0a
      004484 0D                    2388 	.db 0x0d
      004485 00                    2389 	.db 0x00
                                   2390 	.area CSEG    (CODE)
                                   2391 	.area CONST   (CODE)
      004486                       2392 ___str_5:
      004486 E2                    2393 	.db 0xe2
      004487 94                    2394 	.db 0x94
      004488 9C                    2395 	.db 0x9c
      004489 E2                    2396 	.db 0xe2
      00448A 94                    2397 	.db 0x94
      00448B 80                    2398 	.db 0x80
      00448C E2                    2399 	.db 0xe2
      00448D 94                    2400 	.db 0x94
      00448E 80                    2401 	.db 0x80
      00448F E2                    2402 	.db 0xe2
      004490 94                    2403 	.db 0x94
      004491 80                    2404 	.db 0x80
      004492 E2                    2405 	.db 0xe2
      004493 94                    2406 	.db 0x94
      004494 80                    2407 	.db 0x80
      004495 E2                    2408 	.db 0xe2
      004496 94                    2409 	.db 0x94
      004497 80                    2410 	.db 0x80
      004498 E2                    2411 	.db 0xe2
      004499 94                    2412 	.db 0x94
      00449A 80                    2413 	.db 0x80
      00449B E2                    2414 	.db 0xe2
      00449C 94                    2415 	.db 0x94
      00449D 80                    2416 	.db 0x80
      00449E E2                    2417 	.db 0xe2
      00449F 94                    2418 	.db 0x94
      0044A0 80                    2419 	.db 0x80
      0044A1 E2                    2420 	.db 0xe2
      0044A2 94                    2421 	.db 0x94
      0044A3 80                    2422 	.db 0x80
      0044A4 E2                    2423 	.db 0xe2
      0044A5 94                    2424 	.db 0x94
      0044A6 80                    2425 	.db 0x80
      0044A7 E2                    2426 	.db 0xe2
      0044A8 94                    2427 	.db 0x94
      0044A9 80                    2428 	.db 0x80
      0044AA E2                    2429 	.db 0xe2
      0044AB 94                    2430 	.db 0x94
      0044AC 80                    2431 	.db 0x80
      0044AD E2                    2432 	.db 0xe2
      0044AE 94                    2433 	.db 0x94
      0044AF BC                    2434 	.db 0xbc
      0044B0 E2                    2435 	.db 0xe2
      0044B1 94                    2436 	.db 0x94
      0044B2 80                    2437 	.db 0x80
      0044B3 E2                    2438 	.db 0xe2
      0044B4 94                    2439 	.db 0x94
      0044B5 80                    2440 	.db 0x80
      0044B6 E2                    2441 	.db 0xe2
      0044B7 94                    2442 	.db 0x94
      0044B8 80                    2443 	.db 0x80
      0044B9 E2                    2444 	.db 0xe2
      0044BA 94                    2445 	.db 0x94
      0044BB 80                    2446 	.db 0x80
      0044BC E2                    2447 	.db 0xe2
      0044BD 94                    2448 	.db 0x94
      0044BE 80                    2449 	.db 0x80
      0044BF E2                    2450 	.db 0xe2
      0044C0 94                    2451 	.db 0x94
      0044C1 80                    2452 	.db 0x80
      0044C2 E2                    2453 	.db 0xe2
      0044C3 94                    2454 	.db 0x94
      0044C4 80                    2455 	.db 0x80
      0044C5 E2                    2456 	.db 0xe2
      0044C6 94                    2457 	.db 0x94
      0044C7 80                    2458 	.db 0x80
      0044C8 E2                    2459 	.db 0xe2
      0044C9 94                    2460 	.db 0x94
      0044CA 80                    2461 	.db 0x80
      0044CB E2                    2462 	.db 0xe2
      0044CC 94                    2463 	.db 0x94
      0044CD 80                    2464 	.db 0x80
      0044CE E2                    2465 	.db 0xe2
      0044CF 94                    2466 	.db 0x94
      0044D0 80                    2467 	.db 0x80
      0044D1 E2                    2468 	.db 0xe2
      0044D2 94                    2469 	.db 0x94
      0044D3 80                    2470 	.db 0x80
      0044D4 E2                    2471 	.db 0xe2
      0044D5 94                    2472 	.db 0x94
      0044D6 80                    2473 	.db 0x80
      0044D7 E2                    2474 	.db 0xe2
      0044D8 94                    2475 	.db 0x94
      0044D9 80                    2476 	.db 0x80
      0044DA E2                    2477 	.db 0xe2
      0044DB 94                    2478 	.db 0x94
      0044DC 80                    2479 	.db 0x80
      0044DD E2                    2480 	.db 0xe2
      0044DE 94                    2481 	.db 0x94
      0044DF 80                    2482 	.db 0x80
      0044E0 E2                    2483 	.db 0xe2
      0044E1 94                    2484 	.db 0x94
      0044E2 80                    2485 	.db 0x80
      0044E3 E2                    2486 	.db 0xe2
      0044E4 94                    2487 	.db 0x94
      0044E5 80                    2488 	.db 0x80
      0044E6 E2                    2489 	.db 0xe2
      0044E7 94                    2490 	.db 0x94
      0044E8 80                    2491 	.db 0x80
      0044E9 E2                    2492 	.db 0xe2
      0044EA 94                    2493 	.db 0x94
      0044EB 80                    2494 	.db 0x80
      0044EC E2                    2495 	.db 0xe2
      0044ED 94                    2496 	.db 0x94
      0044EE 80                    2497 	.db 0x80
      0044EF E2                    2498 	.db 0xe2
      0044F0 94                    2499 	.db 0x94
      0044F1 80                    2500 	.db 0x80
      0044F2 E2                    2501 	.db 0xe2
      0044F3 94                    2502 	.db 0x94
      0044F4 80                    2503 	.db 0x80
      0044F5 E2                    2504 	.db 0xe2
      0044F6 94                    2505 	.db 0x94
      0044F7 80                    2506 	.db 0x80
      0044F8 E2                    2507 	.db 0xe2
      0044F9 94                    2508 	.db 0x94
      0044FA 80                    2509 	.db 0x80
      0044FB E2                    2510 	.db 0xe2
      0044FC 94                    2511 	.db 0x94
      0044FD 80                    2512 	.db 0x80
      0044FE E2                    2513 	.db 0xe2
      0044FF 94                    2514 	.db 0x94
      004500 80                    2515 	.db 0x80
      004501 E2                    2516 	.db 0xe2
      004502 94                    2517 	.db 0x94
      004503 80                    2518 	.db 0x80
      004504 E2                    2519 	.db 0xe2
      004505 94                    2520 	.db 0x94
      004506 80                    2521 	.db 0x80
      004507 E2                    2522 	.db 0xe2
      004508 94                    2523 	.db 0x94
      004509 80                    2524 	.db 0x80
      00450A E2                    2525 	.db 0xe2
      00450B 94                    2526 	.db 0x94
      00450C 80                    2527 	.db 0x80
      00450D E2                    2528 	.db 0xe2
      00450E 94                    2529 	.db 0x94
      00450F 80                    2530 	.db 0x80
      004510 E2                    2531 	.db 0xe2
      004511 94                    2532 	.db 0x94
      004512 80                    2533 	.db 0x80
      004513 E2                    2534 	.db 0xe2
      004514 94                    2535 	.db 0x94
      004515 80                    2536 	.db 0x80
      004516 E2                    2537 	.db 0xe2
      004517 94                    2538 	.db 0x94
      004518 80                    2539 	.db 0x80
      004519 E2                    2540 	.db 0xe2
      00451A 94                    2541 	.db 0x94
      00451B 80                    2542 	.db 0x80
      00451C E2                    2543 	.db 0xe2
      00451D 94                    2544 	.db 0x94
      00451E 80                    2545 	.db 0x80
      00451F E2                    2546 	.db 0xe2
      004520 94                    2547 	.db 0x94
      004521 80                    2548 	.db 0x80
      004522 E2                    2549 	.db 0xe2
      004523 94                    2550 	.db 0x94
      004524 80                    2551 	.db 0x80
      004525 E2                    2552 	.db 0xe2
      004526 94                    2553 	.db 0x94
      004527 80                    2554 	.db 0x80
      004528 E2                    2555 	.db 0xe2
      004529 94                    2556 	.db 0x94
      00452A 80                    2557 	.db 0x80
      00452B E2                    2558 	.db 0xe2
      00452C 94                    2559 	.db 0x94
      00452D 80                    2560 	.db 0x80
      00452E E2                    2561 	.db 0xe2
      00452F 94                    2562 	.db 0x94
      004530 80                    2563 	.db 0x80
      004531 E2                    2564 	.db 0xe2
      004532 94                    2565 	.db 0x94
      004533 80                    2566 	.db 0x80
      004534 E2                    2567 	.db 0xe2
      004535 94                    2568 	.db 0x94
      004536 A4                    2569 	.db 0xa4
      004537 0A                    2570 	.db 0x0a
      004538 0D                    2571 	.db 0x0d
      004539 00                    2572 	.db 0x00
                                   2573 	.area CSEG    (CODE)
                                   2574 	.area CONST   (CODE)
      00453A                       2575 ___str_6:
      00453A E2                    2576 	.db 0xe2
      00453B 94                    2577 	.db 0x94
      00453C 82                    2578 	.db 0x82
      00453D 20 20 20 20 20 52 20  2579 	.ascii "     R      "
             20 20 20 20 20
      004549 E2                    2580 	.db 0xe2
      00454A 94                    2581 	.db 0x94
      00454B 82                    2582 	.db 0x82
      00454C 20 52 65 61 64 20 66  2583 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004578 E2                    2584 	.db 0xe2
      004579 94                    2585 	.db 0x94
      00457A 82                    2586 	.db 0x82
      00457B 0A                    2587 	.db 0x0a
      00457C 0D                    2588 	.db 0x0d
      00457D 00                    2589 	.db 0x00
                                   2590 	.area CSEG    (CODE)
                                   2591 	.area CONST   (CODE)
      00457E                       2592 ___str_7:
      00457E E2                    2593 	.db 0xe2
      00457F 94                    2594 	.db 0x94
      004580 82                    2595 	.db 0x82
      004581 20 20 20 20 20 57 20  2596 	.ascii "     W      "
             20 20 20 20 20
      00458D E2                    2597 	.db 0xe2
      00458E 94                    2598 	.db 0x94
      00458F 82                    2599 	.db 0x82
      004590 20 57 72 69 74 65 20  2600 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0045BC E2                    2601 	.db 0xe2
      0045BD 94                    2602 	.db 0x94
      0045BE 82                    2603 	.db 0x82
      0045BF 0A                    2604 	.db 0x0a
      0045C0 0D                    2605 	.db 0x0d
      0045C1 00                    2606 	.db 0x00
                                   2607 	.area CSEG    (CODE)
                                   2608 	.area CONST   (CODE)
      0045C2                       2609 ___str_8:
      0045C2 E2                    2610 	.db 0xe2
      0045C3 94                    2611 	.db 0x94
      0045C4 82                    2612 	.db 0x82
      0045C5 20 20 20 20 20 48 20  2613 	.ascii "     H      "
             20 20 20 20 20
      0045D1 E2                    2614 	.db 0xe2
      0045D2 94                    2615 	.db 0x94
      0045D3 82                    2616 	.db 0x82
      0045D4 20 44 69 73 70 6C 61  2617 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004600 E2                    2618 	.db 0xe2
      004601 94                    2619 	.db 0x94
      004602 82                    2620 	.db 0x82
      004603 0A                    2621 	.db 0x0a
      004604 0D                    2622 	.db 0x0d
      004605 00                    2623 	.db 0x00
                                   2624 	.area CSEG    (CODE)
                                   2625 	.area CONST   (CODE)
      004606                       2626 ___str_9:
      004606 E2                    2627 	.db 0xe2
      004607 94                    2628 	.db 0x94
      004608 82                    2629 	.db 0x82
      004609 20 20 20 20 20 58 20  2630 	.ascii "     X      "
             20 20 20 20 20
      004615 E2                    2631 	.db 0xe2
      004616 94                    2632 	.db 0x94
      004617 82                    2633 	.db 0x82
      004618 20 52 65 73 65 74 20  2634 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004644 E2                    2635 	.db 0xe2
      004645 94                    2636 	.db 0x94
      004646 82                    2637 	.db 0x82
      004647 0A                    2638 	.db 0x0a
      004648 0D                    2639 	.db 0x0d
      004649 00                    2640 	.db 0x00
                                   2641 	.area CSEG    (CODE)
                                   2642 	.area CONST   (CODE)
      00464A                       2643 ___str_10:
      00464A E2                    2644 	.db 0xe2
      00464B 94                    2645 	.db 0x94
      00464C 82                    2646 	.db 0x82
      00464D 20 20 20 20 20 3F 20  2647 	.ascii "     ?      "
             20 20 20 20 20
      004659 E2                    2648 	.db 0xe2
      00465A 94                    2649 	.db 0x94
      00465B 82                    2650 	.db 0x82
      00465C 20 44 69 73 70 6C 61  2651 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004688 E2                    2652 	.db 0xe2
      004689 94                    2653 	.db 0x94
      00468A 82                    2654 	.db 0x82
      00468B 0A                    2655 	.db 0x0a
      00468C 0D                    2656 	.db 0x0d
      00468D 00                    2657 	.db 0x00
                                   2658 	.area CSEG    (CODE)
                                   2659 	.area CONST   (CODE)
      00468E                       2660 ___str_11:
      00468E E2                    2661 	.db 0xe2
      00468F 94                    2662 	.db 0x94
      004690 82                    2663 	.db 0x82
      004691 20 20 20 20 20 51 20  2664 	.ascii "     Q      "
             20 20 20 20 20
      00469D E2                    2665 	.db 0xe2
      00469E 94                    2666 	.db 0x94
      00469F 82                    2667 	.db 0x82
      0046A0 20 51 75 69 74 20 70  2668 	.ascii " Quit program                              "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20
      0046CB E2                    2669 	.db 0xe2
      0046CC 94                    2670 	.db 0x94
      0046CD 82                    2671 	.db 0x82
      0046CE 0A                    2672 	.db 0x0a
      0046CF 0D                    2673 	.db 0x0d
      0046D0 00                    2674 	.db 0x00
                                   2675 	.area CSEG    (CODE)
                                   2676 	.area CONST   (CODE)
      0046D1                       2677 ___str_12:
      0046D1 E2                    2678 	.db 0xe2
      0046D2 94                    2679 	.db 0x94
      0046D3 94                    2680 	.db 0x94
      0046D4 E2                    2681 	.db 0xe2
      0046D5 94                    2682 	.db 0x94
      0046D6 80                    2683 	.db 0x80
      0046D7 E2                    2684 	.db 0xe2
      0046D8 94                    2685 	.db 0x94
      0046D9 80                    2686 	.db 0x80
      0046DA E2                    2687 	.db 0xe2
      0046DB 94                    2688 	.db 0x94
      0046DC 80                    2689 	.db 0x80
      0046DD E2                    2690 	.db 0xe2
      0046DE 94                    2691 	.db 0x94
      0046DF 80                    2692 	.db 0x80
      0046E0 E2                    2693 	.db 0xe2
      0046E1 94                    2694 	.db 0x94
      0046E2 80                    2695 	.db 0x80
      0046E3 E2                    2696 	.db 0xe2
      0046E4 94                    2697 	.db 0x94
      0046E5 80                    2698 	.db 0x80
      0046E6 E2                    2699 	.db 0xe2
      0046E7 94                    2700 	.db 0x94
      0046E8 80                    2701 	.db 0x80
      0046E9 E2                    2702 	.db 0xe2
      0046EA 94                    2703 	.db 0x94
      0046EB 80                    2704 	.db 0x80
      0046EC E2                    2705 	.db 0xe2
      0046ED 94                    2706 	.db 0x94
      0046EE 80                    2707 	.db 0x80
      0046EF E2                    2708 	.db 0xe2
      0046F0 94                    2709 	.db 0x94
      0046F1 80                    2710 	.db 0x80
      0046F2 E2                    2711 	.db 0xe2
      0046F3 94                    2712 	.db 0x94
      0046F4 80                    2713 	.db 0x80
      0046F5 E2                    2714 	.db 0xe2
      0046F6 94                    2715 	.db 0x94
      0046F7 80                    2716 	.db 0x80
      0046F8 E2                    2717 	.db 0xe2
      0046F9 94                    2718 	.db 0x94
      0046FA B4                    2719 	.db 0xb4
      0046FB E2                    2720 	.db 0xe2
      0046FC 94                    2721 	.db 0x94
      0046FD 80                    2722 	.db 0x80
      0046FE E2                    2723 	.db 0xe2
      0046FF 94                    2724 	.db 0x94
      004700 80                    2725 	.db 0x80
      004701 E2                    2726 	.db 0xe2
      004702 94                    2727 	.db 0x94
      004703 80                    2728 	.db 0x80
      004704 E2                    2729 	.db 0xe2
      004705 94                    2730 	.db 0x94
      004706 80                    2731 	.db 0x80
      004707 E2                    2732 	.db 0xe2
      004708 94                    2733 	.db 0x94
      004709 80                    2734 	.db 0x80
      00470A E2                    2735 	.db 0xe2
      00470B 94                    2736 	.db 0x94
      00470C 80                    2737 	.db 0x80
      00470D E2                    2738 	.db 0xe2
      00470E 94                    2739 	.db 0x94
      00470F 80                    2740 	.db 0x80
      004710 E2                    2741 	.db 0xe2
      004711 94                    2742 	.db 0x94
      004712 80                    2743 	.db 0x80
      004713 E2                    2744 	.db 0xe2
      004714 94                    2745 	.db 0x94
      004715 80                    2746 	.db 0x80
      004716 E2                    2747 	.db 0xe2
      004717 94                    2748 	.db 0x94
      004718 80                    2749 	.db 0x80
      004719 E2                    2750 	.db 0xe2
      00471A 94                    2751 	.db 0x94
      00471B 80                    2752 	.db 0x80
      00471C E2                    2753 	.db 0xe2
      00471D 94                    2754 	.db 0x94
      00471E 80                    2755 	.db 0x80
      00471F E2                    2756 	.db 0xe2
      004720 94                    2757 	.db 0x94
      004721 80                    2758 	.db 0x80
      004722 E2                    2759 	.db 0xe2
      004723 94                    2760 	.db 0x94
      004724 80                    2761 	.db 0x80
      004725 E2                    2762 	.db 0xe2
      004726 94                    2763 	.db 0x94
      004727 80                    2764 	.db 0x80
      004728 E2                    2765 	.db 0xe2
      004729 94                    2766 	.db 0x94
      00472A 80                    2767 	.db 0x80
      00472B E2                    2768 	.db 0xe2
      00472C 94                    2769 	.db 0x94
      00472D 80                    2770 	.db 0x80
      00472E E2                    2771 	.db 0xe2
      00472F 94                    2772 	.db 0x94
      004730 80                    2773 	.db 0x80
      004731 E2                    2774 	.db 0xe2
      004732 94                    2775 	.db 0x94
      004733 80                    2776 	.db 0x80
      004734 E2                    2777 	.db 0xe2
      004735 94                    2778 	.db 0x94
      004736 80                    2779 	.db 0x80
      004737 E2                    2780 	.db 0xe2
      004738 94                    2781 	.db 0x94
      004739 80                    2782 	.db 0x80
      00473A E2                    2783 	.db 0xe2
      00473B 94                    2784 	.db 0x94
      00473C 80                    2785 	.db 0x80
      00473D E2                    2786 	.db 0xe2
      00473E 94                    2787 	.db 0x94
      00473F 80                    2788 	.db 0x80
      004740 E2                    2789 	.db 0xe2
      004741 94                    2790 	.db 0x94
      004742 80                    2791 	.db 0x80
      004743 E2                    2792 	.db 0xe2
      004744 94                    2793 	.db 0x94
      004745 80                    2794 	.db 0x80
      004746 E2                    2795 	.db 0xe2
      004747 94                    2796 	.db 0x94
      004748 80                    2797 	.db 0x80
      004749 E2                    2798 	.db 0xe2
      00474A 94                    2799 	.db 0x94
      00474B 80                    2800 	.db 0x80
      00474C E2                    2801 	.db 0xe2
      00474D 94                    2802 	.db 0x94
      00474E 80                    2803 	.db 0x80
      00474F E2                    2804 	.db 0xe2
      004750 94                    2805 	.db 0x94
      004751 80                    2806 	.db 0x80
      004752 E2                    2807 	.db 0xe2
      004753 94                    2808 	.db 0x94
      004754 80                    2809 	.db 0x80
      004755 E2                    2810 	.db 0xe2
      004756 94                    2811 	.db 0x94
      004757 80                    2812 	.db 0x80
      004758 E2                    2813 	.db 0xe2
      004759 94                    2814 	.db 0x94
      00475A 80                    2815 	.db 0x80
      00475B E2                    2816 	.db 0xe2
      00475C 94                    2817 	.db 0x94
      00475D 80                    2818 	.db 0x80
      00475E E2                    2819 	.db 0xe2
      00475F 94                    2820 	.db 0x94
      004760 80                    2821 	.db 0x80
      004761 E2                    2822 	.db 0xe2
      004762 94                    2823 	.db 0x94
      004763 80                    2824 	.db 0x80
      004764 E2                    2825 	.db 0xe2
      004765 94                    2826 	.db 0x94
      004766 80                    2827 	.db 0x80
      004767 E2                    2828 	.db 0xe2
      004768 94                    2829 	.db 0x94
      004769 80                    2830 	.db 0x80
      00476A E2                    2831 	.db 0xe2
      00476B 94                    2832 	.db 0x94
      00476C 80                    2833 	.db 0x80
      00476D E2                    2834 	.db 0xe2
      00476E 94                    2835 	.db 0x94
      00476F 80                    2836 	.db 0x80
      004770 E2                    2837 	.db 0xe2
      004771 94                    2838 	.db 0x94
      004772 80                    2839 	.db 0x80
      004773 E2                    2840 	.db 0xe2
      004774 94                    2841 	.db 0x94
      004775 80                    2842 	.db 0x80
      004776 E2                    2843 	.db 0xe2
      004777 94                    2844 	.db 0x94
      004778 80                    2845 	.db 0x80
      004779 E2                    2846 	.db 0xe2
      00477A 94                    2847 	.db 0x94
      00477B 80                    2848 	.db 0x80
      00477C E2                    2849 	.db 0xe2
      00477D 94                    2850 	.db 0x94
      00477E 80                    2851 	.db 0x80
      00477F E2                    2852 	.db 0xe2
      004780 94                    2853 	.db 0x94
      004781 98                    2854 	.db 0x98
      004782 0A                    2855 	.db 0x0a
      004783 0D                    2856 	.db 0x0d
      004784 00                    2857 	.db 0x00
                                   2858 	.area CSEG    (CODE)
                                   2859 	.area CONST   (CODE)
      004785                       2860 ___str_13:
      004785 24 20 25 63           2861 	.ascii "$ %c"
      004789 0A                    2862 	.db 0x0a
      00478A 0D                    2863 	.db 0x0d
      00478B 00                    2864 	.db 0x00
                                   2865 	.area CSEG    (CODE)
                                   2866 	.area CONST   (CODE)
      00478C                       2867 ___str_14:
      00478C 0A                    2868 	.db 0x0a
      00478D E2                    2869 	.db 0xe2
      00478E 94                    2870 	.db 0x94
      00478F 8C                    2871 	.db 0x8c
      004790 E2                    2872 	.db 0xe2
      004791 94                    2873 	.db 0x94
      004792 80                    2874 	.db 0x80
      004793 E2                    2875 	.db 0xe2
      004794 94                    2876 	.db 0x94
      004795 80                    2877 	.db 0x80
      004796 E2                    2878 	.db 0xe2
      004797 94                    2879 	.db 0x94
      004798 80                    2880 	.db 0x80
      004799 E2                    2881 	.db 0xe2
      00479A 94                    2882 	.db 0x94
      00479B 80                    2883 	.db 0x80
      00479C E2                    2884 	.db 0xe2
      00479D 94                    2885 	.db 0x94
      00479E 80                    2886 	.db 0x80
      00479F E2                    2887 	.db 0xe2
      0047A0 94                    2888 	.db 0x94
      0047A1 80                    2889 	.db 0x80
      0047A2 E2                    2890 	.db 0xe2
      0047A3 94                    2891 	.db 0x94
      0047A4 80                    2892 	.db 0x80
      0047A5 E2                    2893 	.db 0xe2
      0047A6 94                    2894 	.db 0x94
      0047A7 80                    2895 	.db 0x80
      0047A8 E2                    2896 	.db 0xe2
      0047A9 94                    2897 	.db 0x94
      0047AA 80                    2898 	.db 0x80
      0047AB E2                    2899 	.db 0xe2
      0047AC 94                    2900 	.db 0x94
      0047AD 80                    2901 	.db 0x80
      0047AE E2                    2902 	.db 0xe2
      0047AF 94                    2903 	.db 0x94
      0047B0 80                    2904 	.db 0x80
      0047B1 E2                    2905 	.db 0xe2
      0047B2 94                    2906 	.db 0x94
      0047B3 80                    2907 	.db 0x80
      0047B4 E2                    2908 	.db 0xe2
      0047B5 94                    2909 	.db 0x94
      0047B6 80                    2910 	.db 0x80
      0047B7 E2                    2911 	.db 0xe2
      0047B8 94                    2912 	.db 0x94
      0047B9 80                    2913 	.db 0x80
      0047BA E2                    2914 	.db 0xe2
      0047BB 94                    2915 	.db 0x94
      0047BC 80                    2916 	.db 0x80
      0047BD 20 57 52 49 54 45 20  2917 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      0047CE E2                    2918 	.db 0xe2
      0047CF 94                    2919 	.db 0x94
      0047D0 80                    2920 	.db 0x80
      0047D1 E2                    2921 	.db 0xe2
      0047D2 94                    2922 	.db 0x94
      0047D3 80                    2923 	.db 0x80
      0047D4 E2                    2924 	.db 0xe2
      0047D5 94                    2925 	.db 0x94
      0047D6 80                    2926 	.db 0x80
      0047D7 E2                    2927 	.db 0xe2
      0047D8 94                    2928 	.db 0x94
      0047D9 80                    2929 	.db 0x80
      0047DA E2                    2930 	.db 0xe2
      0047DB 94                    2931 	.db 0x94
      0047DC 80                    2932 	.db 0x80
      0047DD E2                    2933 	.db 0xe2
      0047DE 94                    2934 	.db 0x94
      0047DF 80                    2935 	.db 0x80
      0047E0 E2                    2936 	.db 0xe2
      0047E1 94                    2937 	.db 0x94
      0047E2 80                    2938 	.db 0x80
      0047E3 E2                    2939 	.db 0xe2
      0047E4 94                    2940 	.db 0x94
      0047E5 80                    2941 	.db 0x80
      0047E6 E2                    2942 	.db 0xe2
      0047E7 94                    2943 	.db 0x94
      0047E8 80                    2944 	.db 0x80
      0047E9 E2                    2945 	.db 0xe2
      0047EA 94                    2946 	.db 0x94
      0047EB 80                    2947 	.db 0x80
      0047EC E2                    2948 	.db 0xe2
      0047ED 94                    2949 	.db 0x94
      0047EE 80                    2950 	.db 0x80
      0047EF E2                    2951 	.db 0xe2
      0047F0 94                    2952 	.db 0x94
      0047F1 80                    2953 	.db 0x80
      0047F2 E2                    2954 	.db 0xe2
      0047F3 94                    2955 	.db 0x94
      0047F4 80                    2956 	.db 0x80
      0047F5 E2                    2957 	.db 0xe2
      0047F6 94                    2958 	.db 0x94
      0047F7 80                    2959 	.db 0x80
      0047F8 E2                    2960 	.db 0xe2
      0047F9 94                    2961 	.db 0x94
      0047FA 90                    2962 	.db 0x90
      0047FB 0A                    2963 	.db 0x0a
      0047FC 00                    2964 	.db 0x00
                                   2965 	.area CSEG    (CODE)
                                   2966 	.area CONST   (CODE)
      0047FD                       2967 ___str_15:
      0047FD 7C 20 57 72 69 74 69  2968 	.ascii "| Writing at Address 0x%02X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 32 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      00482F 0A                    2969 	.db 0x0a
      004830 0D                    2970 	.db 0x0d
      004831 00                    2971 	.db 0x00
                                   2972 	.area CSEG    (CODE)
                                   2973 	.area CONST   (CODE)
      004832                       2974 ___str_16:
      004832 49 4E 56 41 4C 49 44  2975 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      00483F 0A                    2976 	.db 0x0a
      004840 0D                    2977 	.db 0x0d
      004841 00                    2978 	.db 0x00
                                   2979 	.area CSEG    (CODE)
                                   2980 	.area CONST   (CODE)
      004842                       2981 ___str_17:
      004842 E2                    2982 	.db 0xe2
      004843 94                    2983 	.db 0x94
      004844 82                    2984 	.db 0x82
      004845 20 45 6E 74 65 72 20  2985 	.ascii " Enter address (hex): "
             61 64 64 72 65 73 73
             20 28 68 65 78 29 3A
             20
      00485B 00                    2986 	.db 0x00
                                   2987 	.area CSEG    (CODE)
                                   2988 	.area CONST   (CODE)
      00485C                       2989 ___str_18:
      00485C E2                    2990 	.db 0xe2
      00485D 94                    2991 	.db 0x94
      00485E 82                    2992 	.db 0x82
      00485F 20 45 6E 74 65 72 20  2993 	.ascii " Enter data (hex): "
             64 61 74 61 20 28 68
             65 78 29 3A 20
      004872 00                    2994 	.db 0x00
                                   2995 	.area CSEG    (CODE)
                                   2996 	.area CONST   (CODE)
      004873                       2997 ___str_19:
      004873 45 72 72 6F 72 3A 20  2998 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      00489B 0A                    2999 	.db 0x0a
      00489C 0D                    3000 	.db 0x0d
      00489D 00                    3001 	.db 0x00
                                   3002 	.area CSEG    (CODE)
                                   3003 	.area CONST   (CODE)
      00489E                       3004 ___str_20:
      00489E 45 72 72 6F 72 3A 20  3005 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      0048BE 0A                    3006 	.db 0x0a
      0048BF 0D                    3007 	.db 0x0d
      0048C0 00                    3008 	.db 0x00
                                   3009 	.area CSEG    (CODE)
                                   3010 	.area CONST   (CODE)
      0048C1                       3011 ___str_21:
      0048C1 45 72 72 6F 72 3A 20  3012 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      0048D7 0A                    3013 	.db 0x0a
      0048D8 0D                    3014 	.db 0x0d
      0048D9 00                    3015 	.db 0x00
                                   3016 	.area CSEG    (CODE)
                                   3017 	.area CONST   (CODE)
      0048DA                       3018 ___str_22:
      0048DA E2                    3019 	.db 0xe2
      0048DB 94                    3020 	.db 0x94
      0048DC 82                    3021 	.db 0x82
      0048DD 20 57 72 69 74 65 20  3022 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      00490C E2                    3023 	.db 0xe2
      00490D 94                    3024 	.db 0x94
      00490E 82                    3025 	.db 0x82
      00490F 0A                    3026 	.db 0x0a
      004910 00                    3027 	.db 0x00
                                   3028 	.area CSEG    (CODE)
                                   3029 	.area CONST   (CODE)
      004911                       3030 ___str_23:
      004911 E2                    3031 	.db 0xe2
      004912 94                    3032 	.db 0x94
      004913 94                    3033 	.db 0x94
      004914 E2                    3034 	.db 0xe2
      004915 94                    3035 	.db 0x94
      004916 80                    3036 	.db 0x80
      004917 E2                    3037 	.db 0xe2
      004918 94                    3038 	.db 0x94
      004919 80                    3039 	.db 0x80
      00491A E2                    3040 	.db 0xe2
      00491B 94                    3041 	.db 0x94
      00491C 80                    3042 	.db 0x80
      00491D E2                    3043 	.db 0xe2
      00491E 94                    3044 	.db 0x94
      00491F 80                    3045 	.db 0x80
      004920 E2                    3046 	.db 0xe2
      004921 94                    3047 	.db 0x94
      004922 80                    3048 	.db 0x80
      004923 E2                    3049 	.db 0xe2
      004924 94                    3050 	.db 0x94
      004925 80                    3051 	.db 0x80
      004926 E2                    3052 	.db 0xe2
      004927 94                    3053 	.db 0x94
      004928 80                    3054 	.db 0x80
      004929 E2                    3055 	.db 0xe2
      00492A 94                    3056 	.db 0x94
      00492B 80                    3057 	.db 0x80
      00492C E2                    3058 	.db 0xe2
      00492D 94                    3059 	.db 0x94
      00492E 80                    3060 	.db 0x80
      00492F E2                    3061 	.db 0xe2
      004930 94                    3062 	.db 0x94
      004931 80                    3063 	.db 0x80
      004932 E2                    3064 	.db 0xe2
      004933 94                    3065 	.db 0x94
      004934 80                    3066 	.db 0x80
      004935 E2                    3067 	.db 0xe2
      004936 94                    3068 	.db 0x94
      004937 80                    3069 	.db 0x80
      004938 E2                    3070 	.db 0xe2
      004939 94                    3071 	.db 0x94
      00493A 80                    3072 	.db 0x80
      00493B E2                    3073 	.db 0xe2
      00493C 94                    3074 	.db 0x94
      00493D 80                    3075 	.db 0x80
      00493E E2                    3076 	.db 0xe2
      00493F 94                    3077 	.db 0x94
      004940 80                    3078 	.db 0x80
      004941 E2                    3079 	.db 0xe2
      004942 94                    3080 	.db 0x94
      004943 80                    3081 	.db 0x80
      004944 E2                    3082 	.db 0xe2
      004945 94                    3083 	.db 0x94
      004946 80                    3084 	.db 0x80
      004947 E2                    3085 	.db 0xe2
      004948 94                    3086 	.db 0x94
      004949 80                    3087 	.db 0x80
      00494A E2                    3088 	.db 0xe2
      00494B 94                    3089 	.db 0x94
      00494C 80                    3090 	.db 0x80
      00494D E2                    3091 	.db 0xe2
      00494E 94                    3092 	.db 0x94
      00494F 80                    3093 	.db 0x80
      004950 E2                    3094 	.db 0xe2
      004951 94                    3095 	.db 0x94
      004952 80                    3096 	.db 0x80
      004953 E2                    3097 	.db 0xe2
      004954 94                    3098 	.db 0x94
      004955 80                    3099 	.db 0x80
      004956 E2                    3100 	.db 0xe2
      004957 94                    3101 	.db 0x94
      004958 80                    3102 	.db 0x80
      004959 E2                    3103 	.db 0xe2
      00495A 94                    3104 	.db 0x94
      00495B 80                    3105 	.db 0x80
      00495C E2                    3106 	.db 0xe2
      00495D 94                    3107 	.db 0x94
      00495E 80                    3108 	.db 0x80
      00495F E2                    3109 	.db 0xe2
      004960 94                    3110 	.db 0x94
      004961 80                    3111 	.db 0x80
      004962 E2                    3112 	.db 0xe2
      004963 94                    3113 	.db 0x94
      004964 80                    3114 	.db 0x80
      004965 E2                    3115 	.db 0xe2
      004966 94                    3116 	.db 0x94
      004967 80                    3117 	.db 0x80
      004968 E2                    3118 	.db 0xe2
      004969 94                    3119 	.db 0x94
      00496A 80                    3120 	.db 0x80
      00496B E2                    3121 	.db 0xe2
      00496C 94                    3122 	.db 0x94
      00496D 80                    3123 	.db 0x80
      00496E E2                    3124 	.db 0xe2
      00496F 94                    3125 	.db 0x94
      004970 80                    3126 	.db 0x80
      004971 E2                    3127 	.db 0xe2
      004972 94                    3128 	.db 0x94
      004973 80                    3129 	.db 0x80
      004974 E2                    3130 	.db 0xe2
      004975 94                    3131 	.db 0x94
      004976 80                    3132 	.db 0x80
      004977 E2                    3133 	.db 0xe2
      004978 94                    3134 	.db 0x94
      004979 80                    3135 	.db 0x80
      00497A E2                    3136 	.db 0xe2
      00497B 94                    3137 	.db 0x94
      00497C 80                    3138 	.db 0x80
      00497D E2                    3139 	.db 0xe2
      00497E 94                    3140 	.db 0x94
      00497F 80                    3141 	.db 0x80
      004980 E2                    3142 	.db 0xe2
      004981 94                    3143 	.db 0x94
      004982 80                    3144 	.db 0x80
      004983 E2                    3145 	.db 0xe2
      004984 94                    3146 	.db 0x94
      004985 80                    3147 	.db 0x80
      004986 E2                    3148 	.db 0xe2
      004987 94                    3149 	.db 0x94
      004988 80                    3150 	.db 0x80
      004989 E2                    3151 	.db 0xe2
      00498A 94                    3152 	.db 0x94
      00498B 80                    3153 	.db 0x80
      00498C E2                    3154 	.db 0xe2
      00498D 94                    3155 	.db 0x94
      00498E 80                    3156 	.db 0x80
      00498F E2                    3157 	.db 0xe2
      004990 94                    3158 	.db 0x94
      004991 80                    3159 	.db 0x80
      004992 E2                    3160 	.db 0xe2
      004993 94                    3161 	.db 0x94
      004994 80                    3162 	.db 0x80
      004995 E2                    3163 	.db 0xe2
      004996 94                    3164 	.db 0x94
      004997 80                    3165 	.db 0x80
      004998 E2                    3166 	.db 0xe2
      004999 94                    3167 	.db 0x94
      00499A 80                    3168 	.db 0x80
      00499B E2                    3169 	.db 0xe2
      00499C 94                    3170 	.db 0x94
      00499D 80                    3171 	.db 0x80
      00499E E2                    3172 	.db 0xe2
      00499F 94                    3173 	.db 0x94
      0049A0 80                    3174 	.db 0x80
      0049A1 E2                    3175 	.db 0xe2
      0049A2 94                    3176 	.db 0x94
      0049A3 98                    3177 	.db 0x98
      0049A4 0A                    3178 	.db 0x0a
      0049A5 00                    3179 	.db 0x00
                                   3180 	.area CSEG    (CODE)
                                   3181 	.area CONST   (CODE)
      0049A6                       3182 ___str_24:
      0049A6 45 72 72 6F 72 3A 20  3183 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      0049D3 0A                    3184 	.db 0x0a
      0049D4 0D                    3185 	.db 0x0d
      0049D5 00                    3186 	.db 0x00
                                   3187 	.area CSEG    (CODE)
                                   3188 	.area CONST   (CODE)
      0049D6                       3189 ___str_25:
      0049D6 45 72 72 6F 72 3A 20  3190 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      004A02 0A                    3191 	.db 0x0a
      004A03 0D                    3192 	.db 0x0d
      004A04 00                    3193 	.db 0x00
                                   3194 	.area CSEG    (CODE)
                                   3195 	.area CONST   (CODE)
      004A05                       3196 ___str_26:
      004A05 41 43 4B 20 44 49 44  3197 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      004A17 0A                    3198 	.db 0x0a
      004A18 0D                    3199 	.db 0x0d
      004A19 00                    3200 	.db 0x00
                                   3201 	.area CSEG    (CODE)
                                   3202 	.area CONST   (CODE)
      004A1A                       3203 ___str_27:
      004A1A 54 72 61 6E 73 6D 69  3204 	.ascii "Transmission successfull"
             73 73 69 6F 6E 20 73
             75 63 63 65 73 73 66
             75 6C 6C
      004A32 0A                    3205 	.db 0x0a
      004A33 0D                    3206 	.db 0x0d
      004A34 00                    3207 	.db 0x00
                                   3208 	.area CSEG    (CODE)
                                   3209 	.area CONST   (CODE)
      004A35                       3210 ___str_28:
      004A35 57 72 69 74 69 6E 67  3211 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      004A5A 0A                    3212 	.db 0x0a
      004A5B 0D                    3213 	.db 0x0d
      004A5C 00                    3214 	.db 0x00
                                   3215 	.area CSEG    (CODE)
                                   3216 	.area CONST   (CODE)
      004A5D                       3217 ___str_29:
      004A5D 52 65 61 64 20 62 61  3218 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      004A82 0A                    3219 	.db 0x0a
      004A83 0D                    3220 	.db 0x0d
      004A84 00                    3221 	.db 0x00
                                   3222 	.area CSEG    (CODE)
                                   3223 	.area CONST   (CODE)
      004A85                       3224 ___str_30:
      004A85 4D 41 54 43 48 20 2D  3225 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      004AA3 0A                    3226 	.db 0x0a
      004AA4 0D                    3227 	.db 0x0d
      004AA5 00                    3228 	.db 0x00
                                   3229 	.area CSEG    (CODE)
                                   3230 	.area CONST   (CODE)
      004AA6                       3231 ___str_31:
      004AA6 45 52 52 4F 52 20 2D  3232 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      004ABC 0A                    3233 	.db 0x0a
      004ABD 0D                    3234 	.db 0x0d
      004ABE 00                    3235 	.db 0x00
                                   3236 	.area CSEG    (CODE)
                                   3237 	.area XINIT   (CODE)
                                   3238 	.area CABS    (ABS,CODE)
