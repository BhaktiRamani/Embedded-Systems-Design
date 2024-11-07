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
                                    919 ;	8051_i2c_eeprom.c:107: printf("│ Enter address (hex): ");
      00326E 74 42            [12]  920 	mov	a,#___str_17
      003270 C0 E0            [24]  921 	push	acc
      003272 74 48            [12]  922 	mov	a,#(___str_17 >> 8)
      003274 C0 E0            [24]  923 	push	acc
      003276 74 80            [12]  924 	mov	a,#0x80
      003278 C0 E0            [24]  925 	push	acc
      00327A 12 37 84         [24]  926 	lcall	_printf
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
      003290 50 2A            [24]  940 	jnc	00103$
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
      0032AB D0 06            [24]  956 	pop	ar6
      0032AD D0 07            [24]  957 	pop	ar7
      0032AF 8C 82            [24]  958 	mov	dpl,r4
      0032B1 8D 83            [24]  959 	mov	dph,r5
      0032B3 EA               [12]  960 	mov	a,r2
      0032B4 F0               [24]  961 	movx	@dptr,a
                                    962 ;	8051_i2c_eeprom.c:113: i++;
      0032B5 0E               [12]  963 	inc	r6
      0032B6 BE 00 CE         [24]  964 	cjne	r6,#0x00,00101$
      0032B9 0F               [12]  965 	inc	r7
      0032BA 80 CB            [24]  966 	sjmp	00101$
      0032BC                        967 00103$:
                                    968 ;	8051_i2c_eeprom.c:115: unsigned int address = input[0] - '0' + input[1] - '0' + input[2] - '0';
      0032BC 90 04 04         [24]  969 	mov	dptr,#_take_address_input_65537_33
      0032BF E0               [24]  970 	movx	a,@dptr
      0032C0 FF               [12]  971 	mov	r7,a
      0032C1 7E 00            [12]  972 	mov	r6,#0x00
      0032C3 90 04 05         [24]  973 	mov	dptr,#(_take_address_input_65537_33 + 0x0001)
      0032C6 E0               [24]  974 	movx	a,@dptr
      0032C7 7C 00            [12]  975 	mov	r4,#0x00
      0032C9 2F               [12]  976 	add	a,r7
      0032CA FF               [12]  977 	mov	r7,a
      0032CB EC               [12]  978 	mov	a,r4
      0032CC 3E               [12]  979 	addc	a,r6
      0032CD FE               [12]  980 	mov	r6,a
      0032CE 90 04 06         [24]  981 	mov	dptr,#(_take_address_input_65537_33 + 0x0002)
      0032D1 E0               [24]  982 	movx	a,@dptr
      0032D2 7C 00            [12]  983 	mov	r4,#0x00
      0032D4 2F               [12]  984 	add	a,r7
      0032D5 FF               [12]  985 	mov	r7,a
      0032D6 EC               [12]  986 	mov	a,r4
      0032D7 3E               [12]  987 	addc	a,r6
      0032D8 FE               [12]  988 	mov	r6,a
      0032D9 EF               [12]  989 	mov	a,r7
      0032DA 24 70            [12]  990 	add	a,#0x70
      0032DC FF               [12]  991 	mov	r7,a
      0032DD EE               [12]  992 	mov	a,r6
      0032DE 34 FF            [12]  993 	addc	a,#0xff
                                    994 ;	8051_i2c_eeprom.c:116: return address;
                                    995 ;	8051_i2c_eeprom.c:117: }
      0032E0 8F 82            [24]  996 	mov	dpl,r7
      0032E2 F5 83            [12]  997 	mov	dph,a
      0032E4 22               [24]  998 	ret
                                    999 ;------------------------------------------------------------
                                   1000 ;Allocation info for local variables in function 'take_data'
                                   1001 ;------------------------------------------------------------
                                   1002 ;input                     Allocated with name '_take_data_input_65537_37'
                                   1003 ;i                         Allocated with name '_take_data_i_65537_37'
                                   1004 ;data                      Allocated with name '_take_data_data_65538_39'
                                   1005 ;------------------------------------------------------------
                                   1006 ;	8051_i2c_eeprom.c:118: int take_data()
                                   1007 ;	-----------------------------------------
                                   1008 ;	 function take_data
                                   1009 ;	-----------------------------------------
      0032E5                       1010 _take_data:
                                   1011 ;	8051_i2c_eeprom.c:120: printf("│ Enter data (hex): ");
      0032E5 74 5C            [12] 1012 	mov	a,#___str_18
      0032E7 C0 E0            [24] 1013 	push	acc
      0032E9 74 48            [12] 1014 	mov	a,#(___str_18 >> 8)
      0032EB C0 E0            [24] 1015 	push	acc
      0032ED 74 80            [12] 1016 	mov	a,#0x80
      0032EF C0 E0            [24] 1017 	push	acc
      0032F1 12 37 84         [24] 1018 	lcall	_printf
      0032F4 15 81            [12] 1019 	dec	sp
      0032F6 15 81            [12] 1020 	dec	sp
      0032F8 15 81            [12] 1021 	dec	sp
                                   1022 ;	8051_i2c_eeprom.c:123: while(i<3)
      0032FA 7E 00            [12] 1023 	mov	r6,#0x00
      0032FC 7F 00            [12] 1024 	mov	r7,#0x00
      0032FE                       1025 00101$:
      0032FE C3               [12] 1026 	clr	c
      0032FF EE               [12] 1027 	mov	a,r6
      003300 94 03            [12] 1028 	subb	a,#0x03
      003302 EF               [12] 1029 	mov	a,r7
      003303 64 80            [12] 1030 	xrl	a,#0x80
      003305 94 80            [12] 1031 	subb	a,#0x80
      003307 50 2A            [24] 1032 	jnc	00103$
                                   1033 ;	8051_i2c_eeprom.c:125: input[i] = getchar();
      003309 EE               [12] 1034 	mov	a,r6
      00330A 24 07            [12] 1035 	add	a,#_take_data_input_65537_37
      00330C FC               [12] 1036 	mov	r4,a
      00330D EF               [12] 1037 	mov	a,r7
      00330E 34 04            [12] 1038 	addc	a,#(_take_data_input_65537_37 >> 8)
      003310 FD               [12] 1039 	mov	r5,a
      003311 C0 07            [24] 1040 	push	ar7
      003313 C0 06            [24] 1041 	push	ar6
      003315 C0 05            [24] 1042 	push	ar5
      003317 C0 04            [24] 1043 	push	ar4
      003319 12 30 81         [24] 1044 	lcall	_getchar
      00331C AA 82            [24] 1045 	mov	r2,dpl
      00331E D0 04            [24] 1046 	pop	ar4
      003320 D0 05            [24] 1047 	pop	ar5
      003322 D0 06            [24] 1048 	pop	ar6
      003324 D0 07            [24] 1049 	pop	ar7
      003326 8C 82            [24] 1050 	mov	dpl,r4
      003328 8D 83            [24] 1051 	mov	dph,r5
      00332A EA               [12] 1052 	mov	a,r2
      00332B F0               [24] 1053 	movx	@dptr,a
                                   1054 ;	8051_i2c_eeprom.c:126: i++;
      00332C 0E               [12] 1055 	inc	r6
      00332D BE 00 CE         [24] 1056 	cjne	r6,#0x00,00101$
      003330 0F               [12] 1057 	inc	r7
      003331 80 CB            [24] 1058 	sjmp	00101$
      003333                       1059 00103$:
                                   1060 ;	8051_i2c_eeprom.c:128: unsigned int data = input[0] - '0' + input[1] - '0' + input[2] - '0';
      003333 90 04 07         [24] 1061 	mov	dptr,#_take_data_input_65537_37
      003336 E0               [24] 1062 	movx	a,@dptr
      003337 FF               [12] 1063 	mov	r7,a
      003338 7E 00            [12] 1064 	mov	r6,#0x00
      00333A 90 04 08         [24] 1065 	mov	dptr,#(_take_data_input_65537_37 + 0x0001)
      00333D E0               [24] 1066 	movx	a,@dptr
      00333E 7C 00            [12] 1067 	mov	r4,#0x00
      003340 2F               [12] 1068 	add	a,r7
      003341 FF               [12] 1069 	mov	r7,a
      003342 EC               [12] 1070 	mov	a,r4
      003343 3E               [12] 1071 	addc	a,r6
      003344 FE               [12] 1072 	mov	r6,a
      003345 90 04 09         [24] 1073 	mov	dptr,#(_take_data_input_65537_37 + 0x0002)
      003348 E0               [24] 1074 	movx	a,@dptr
      003349 7C 00            [12] 1075 	mov	r4,#0x00
      00334B 2F               [12] 1076 	add	a,r7
      00334C FF               [12] 1077 	mov	r7,a
      00334D EC               [12] 1078 	mov	a,r4
      00334E 3E               [12] 1079 	addc	a,r6
      00334F FE               [12] 1080 	mov	r6,a
      003350 EF               [12] 1081 	mov	a,r7
      003351 24 70            [12] 1082 	add	a,#0x70
      003353 FF               [12] 1083 	mov	r7,a
      003354 EE               [12] 1084 	mov	a,r6
      003355 34 FF            [12] 1085 	addc	a,#0xff
                                   1086 ;	8051_i2c_eeprom.c:129: return data; 
                                   1087 ;	8051_i2c_eeprom.c:131: }
      003357 8F 82            [24] 1088 	mov	dpl,r7
      003359 F5 83            [12] 1089 	mov	dph,a
      00335B 22               [24] 1090 	ret
                                   1091 ;------------------------------------------------------------
                                   1092 ;Allocation info for local variables in function 'eeprom_write'
                                   1093 ;------------------------------------------------------------
                                   1094 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                   1095 ;address                   Allocated with name '_eeprom_write_address_65536_40'
                                   1096 ;i                         Allocated with name '_eeprom_write_i_131072_45'
                                   1097 ;------------------------------------------------------------
                                   1098 ;	8051_i2c_eeprom.c:133: int eeprom_write(unsigned int address, unsigned char data) 
                                   1099 ;	-----------------------------------------
                                   1100 ;	 function eeprom_write
                                   1101 ;	-----------------------------------------
      00335C                       1102 _eeprom_write:
      00335C AF 83            [24] 1103 	mov	r7,dph
      00335E E5 82            [12] 1104 	mov	a,dpl
      003360 90 04 0B         [24] 1105 	mov	dptr,#_eeprom_write_address_65536_40
      003363 F0               [24] 1106 	movx	@dptr,a
      003364 EF               [12] 1107 	mov	a,r7
      003365 A3               [24] 1108 	inc	dptr
      003366 F0               [24] 1109 	movx	@dptr,a
                                   1110 ;	8051_i2c_eeprom.c:136: i2c_start();
      003367 12 36 45         [24] 1111 	lcall	_i2c_start
                                   1112 ;	8051_i2c_eeprom.c:139: if(!i2c_write(EEPROM_ID | WRITE)) {
      00336A 75 82 A0         [24] 1113 	mov	dpl,#0xa0
      00336D 12 35 43         [24] 1114 	lcall	_i2c_write
      003370 E5 82            [12] 1115 	mov	a,dpl
      003372 85 83 F0         [24] 1116 	mov	b,dph
      003375 45 F0            [12] 1117 	orl	a,b
      003377 70 1C            [24] 1118 	jnz	00102$
                                   1119 ;	8051_i2c_eeprom.c:140: printf("Error: No ACK for device address (write)\n\r");
      003379 74 73            [12] 1120 	mov	a,#___str_19
      00337B C0 E0            [24] 1121 	push	acc
      00337D 74 48            [12] 1122 	mov	a,#(___str_19 >> 8)
      00337F C0 E0            [24] 1123 	push	acc
      003381 74 80            [12] 1124 	mov	a,#0x80
      003383 C0 E0            [24] 1125 	push	acc
      003385 12 37 84         [24] 1126 	lcall	_printf
      003388 15 81            [12] 1127 	dec	sp
      00338A 15 81            [12] 1128 	dec	sp
      00338C 15 81            [12] 1129 	dec	sp
                                   1130 ;	8051_i2c_eeprom.c:141: i2c_stop();
      00338E 12 36 5A         [24] 1131 	lcall	_i2c_stop
                                   1132 ;	8051_i2c_eeprom.c:142: return 0;
      003391 90 00 00         [24] 1133 	mov	dptr,#0x0000
      003394 22               [24] 1134 	ret
      003395                       1135 00102$:
                                   1136 ;	8051_i2c_eeprom.c:146: if(!i2c_write((unsigned char)address)) {
      003395 90 04 0B         [24] 1137 	mov	dptr,#_eeprom_write_address_65536_40
      003398 E0               [24] 1138 	movx	a,@dptr
      003399 FE               [12] 1139 	mov	r6,a
      00339A A3               [24] 1140 	inc	dptr
      00339B E0               [24] 1141 	movx	a,@dptr
      00339C FF               [12] 1142 	mov	r7,a
      00339D 8E 05            [24] 1143 	mov	ar5,r6
      00339F 8D 82            [24] 1144 	mov	dpl,r5
      0033A1 C0 07            [24] 1145 	push	ar7
      0033A3 C0 06            [24] 1146 	push	ar6
      0033A5 12 35 43         [24] 1147 	lcall	_i2c_write
      0033A8 E5 82            [12] 1148 	mov	a,dpl
      0033AA 85 83 F0         [24] 1149 	mov	b,dph
      0033AD D0 06            [24] 1150 	pop	ar6
      0033AF D0 07            [24] 1151 	pop	ar7
      0033B1 45 F0            [12] 1152 	orl	a,b
      0033B3 70 1C            [24] 1153 	jnz	00104$
                                   1154 ;	8051_i2c_eeprom.c:147: printf("Error: No ACK for memory address\n\r");
      0033B5 74 9E            [12] 1155 	mov	a,#___str_20
      0033B7 C0 E0            [24] 1156 	push	acc
      0033B9 74 48            [12] 1157 	mov	a,#(___str_20 >> 8)
      0033BB C0 E0            [24] 1158 	push	acc
      0033BD 74 80            [12] 1159 	mov	a,#0x80
      0033BF C0 E0            [24] 1160 	push	acc
      0033C1 12 37 84         [24] 1161 	lcall	_printf
      0033C4 15 81            [12] 1162 	dec	sp
      0033C6 15 81            [12] 1163 	dec	sp
      0033C8 15 81            [12] 1164 	dec	sp
                                   1165 ;	8051_i2c_eeprom.c:148: i2c_stop();
      0033CA 12 36 5A         [24] 1166 	lcall	_i2c_stop
                                   1167 ;	8051_i2c_eeprom.c:149: return 0;
      0033CD 90 00 00         [24] 1168 	mov	dptr,#0x0000
      0033D0 22               [24] 1169 	ret
      0033D1                       1170 00104$:
                                   1171 ;	8051_i2c_eeprom.c:153: if(!i2c_write(data)) {
      0033D1 90 04 0A         [24] 1172 	mov	dptr,#_eeprom_write_PARM_2
      0033D4 E0               [24] 1173 	movx	a,@dptr
      0033D5 FD               [12] 1174 	mov	r5,a
      0033D6 F5 82            [12] 1175 	mov	dpl,a
      0033D8 C0 07            [24] 1176 	push	ar7
      0033DA C0 06            [24] 1177 	push	ar6
      0033DC C0 05            [24] 1178 	push	ar5
      0033DE 12 35 43         [24] 1179 	lcall	_i2c_write
      0033E1 E5 82            [12] 1180 	mov	a,dpl
      0033E3 85 83 F0         [24] 1181 	mov	b,dph
      0033E6 D0 05            [24] 1182 	pop	ar5
      0033E8 D0 06            [24] 1183 	pop	ar6
      0033EA D0 07            [24] 1184 	pop	ar7
      0033EC 45 F0            [12] 1185 	orl	a,b
      0033EE 70 1C            [24] 1186 	jnz	00106$
                                   1187 ;	8051_i2c_eeprom.c:154: printf("Error: No ACK for data\n\r");
      0033F0 74 C1            [12] 1188 	mov	a,#___str_21
      0033F2 C0 E0            [24] 1189 	push	acc
      0033F4 74 48            [12] 1190 	mov	a,#(___str_21 >> 8)
      0033F6 C0 E0            [24] 1191 	push	acc
      0033F8 74 80            [12] 1192 	mov	a,#0x80
      0033FA C0 E0            [24] 1193 	push	acc
      0033FC 12 37 84         [24] 1194 	lcall	_printf
      0033FF 15 81            [12] 1195 	dec	sp
      003401 15 81            [12] 1196 	dec	sp
      003403 15 81            [12] 1197 	dec	sp
                                   1198 ;	8051_i2c_eeprom.c:155: i2c_stop();
      003405 12 36 5A         [24] 1199 	lcall	_i2c_stop
                                   1200 ;	8051_i2c_eeprom.c:156: return 0;
      003408 90 00 00         [24] 1201 	mov	dptr,#0x0000
      00340B 22               [24] 1202 	ret
      00340C                       1203 00106$:
                                   1204 ;	8051_i2c_eeprom.c:159: i2c_stop();
      00340C C0 07            [24] 1205 	push	ar7
      00340E C0 06            [24] 1206 	push	ar6
      003410 C0 05            [24] 1207 	push	ar5
      003412 12 36 5A         [24] 1208 	lcall	_i2c_stop
      003415 D0 05            [24] 1209 	pop	ar5
      003417 D0 06            [24] 1210 	pop	ar6
      003419 D0 07            [24] 1211 	pop	ar7
                                   1212 ;	8051_i2c_eeprom.c:161: for(int i = 0; i<100; i++)
      00341B 7B 00            [12] 1213 	mov	r3,#0x00
      00341D 7C 00            [12] 1214 	mov	r4,#0x00
      00341F                       1215 00109$:
      00341F C3               [12] 1216 	clr	c
      003420 EB               [12] 1217 	mov	a,r3
      003421 94 64            [12] 1218 	subb	a,#0x64
      003423 EC               [12] 1219 	mov	a,r4
      003424 64 80            [12] 1220 	xrl	a,#0x80
      003426 94 80            [12] 1221 	subb	a,#0x80
      003428 50 1E            [24] 1222 	jnc	00107$
                                   1223 ;	8051_i2c_eeprom.c:163: i2c_delay();
      00342A C0 07            [24] 1224 	push	ar7
      00342C C0 06            [24] 1225 	push	ar6
      00342E C0 05            [24] 1226 	push	ar5
      003430 C0 04            [24] 1227 	push	ar4
      003432 C0 03            [24] 1228 	push	ar3
      003434 12 36 67         [24] 1229 	lcall	_i2c_delay
      003437 D0 03            [24] 1230 	pop	ar3
      003439 D0 04            [24] 1231 	pop	ar4
      00343B D0 05            [24] 1232 	pop	ar5
      00343D D0 06            [24] 1233 	pop	ar6
      00343F D0 07            [24] 1234 	pop	ar7
                                   1235 ;	8051_i2c_eeprom.c:161: for(int i = 0; i<100; i++)
      003441 0B               [12] 1236 	inc	r3
      003442 BB 00 DA         [24] 1237 	cjne	r3,#0x00,00109$
      003445 0C               [12] 1238 	inc	r4
      003446 80 D7            [24] 1239 	sjmp	00109$
      003448                       1240 00107$:
                                   1241 ;	8051_i2c_eeprom.c:165: printf("| Writing at Address 0x%02X Data 0x%02X          |\n\r", address, data);
      003448 7C 00            [12] 1242 	mov	r4,#0x00
      00344A C0 05            [24] 1243 	push	ar5
      00344C C0 04            [24] 1244 	push	ar4
      00344E C0 06            [24] 1245 	push	ar6
      003450 C0 07            [24] 1246 	push	ar7
      003452 74 FD            [12] 1247 	mov	a,#___str_15
      003454 C0 E0            [24] 1248 	push	acc
      003456 74 47            [12] 1249 	mov	a,#(___str_15 >> 8)
      003458 C0 E0            [24] 1250 	push	acc
      00345A 74 80            [12] 1251 	mov	a,#0x80
      00345C C0 E0            [24] 1252 	push	acc
      00345E 12 37 84         [24] 1253 	lcall	_printf
      003461 E5 81            [12] 1254 	mov	a,sp
      003463 24 F9            [12] 1255 	add	a,#0xf9
      003465 F5 81            [12] 1256 	mov	sp,a
                                   1257 ;	8051_i2c_eeprom.c:166: printf("│ Write successful!                             │\n");
      003467 74 DA            [12] 1258 	mov	a,#___str_22
      003469 C0 E0            [24] 1259 	push	acc
      00346B 74 48            [12] 1260 	mov	a,#(___str_22 >> 8)
      00346D C0 E0            [24] 1261 	push	acc
      00346F 74 80            [12] 1262 	mov	a,#0x80
      003471 C0 E0            [24] 1263 	push	acc
      003473 12 37 84         [24] 1264 	lcall	_printf
      003476 15 81            [12] 1265 	dec	sp
      003478 15 81            [12] 1266 	dec	sp
      00347A 15 81            [12] 1267 	dec	sp
                                   1268 ;	8051_i2c_eeprom.c:167: printf("└───────────────────────────────────────────────┘\n");
      00347C 74 11            [12] 1269 	mov	a,#___str_23
      00347E C0 E0            [24] 1270 	push	acc
      003480 74 49            [12] 1271 	mov	a,#(___str_23 >> 8)
      003482 C0 E0            [24] 1272 	push	acc
      003484 74 80            [12] 1273 	mov	a,#0x80
      003486 C0 E0            [24] 1274 	push	acc
      003488 12 37 84         [24] 1275 	lcall	_printf
      00348B 15 81            [12] 1276 	dec	sp
      00348D 15 81            [12] 1277 	dec	sp
      00348F 15 81            [12] 1278 	dec	sp
                                   1279 ;	8051_i2c_eeprom.c:168: return 1;  // Success
      003491 90 00 01         [24] 1280 	mov	dptr,#0x0001
                                   1281 ;	8051_i2c_eeprom.c:170: }
      003494 22               [24] 1282 	ret
                                   1283 ;------------------------------------------------------------
                                   1284 ;Allocation info for local variables in function 'eeprom_read'
                                   1285 ;------------------------------------------------------------
                                   1286 ;address                   Allocated with name '_eeprom_read_address_65536_47'
                                   1287 ;result                    Allocated with name '_eeprom_read_result_65536_48'
                                   1288 ;------------------------------------------------------------
                                   1289 ;	8051_i2c_eeprom.c:172: int eeprom_read(unsigned int address) 
                                   1290 ;	-----------------------------------------
                                   1291 ;	 function eeprom_read
                                   1292 ;	-----------------------------------------
      003495                       1293 _eeprom_read:
      003495 AF 83            [24] 1294 	mov	r7,dph
      003497 E5 82            [12] 1295 	mov	a,dpl
      003499 90 04 0D         [24] 1296 	mov	dptr,#_eeprom_read_address_65536_47
      00349C F0               [24] 1297 	movx	@dptr,a
      00349D EF               [12] 1298 	mov	a,r7
      00349E A3               [24] 1299 	inc	dptr
      00349F F0               [24] 1300 	movx	@dptr,a
                                   1301 ;	8051_i2c_eeprom.c:178: i2c_start();
      0034A0 12 36 45         [24] 1302 	lcall	_i2c_start
                                   1303 ;	8051_i2c_eeprom.c:181: if(!i2c_write(EEPROM_ID | WRITE)) {
      0034A3 75 82 A0         [24] 1304 	mov	dpl,#0xa0
      0034A6 12 35 43         [24] 1305 	lcall	_i2c_write
      0034A9 E5 82            [12] 1306 	mov	a,dpl
      0034AB 85 83 F0         [24] 1307 	mov	b,dph
      0034AE 45 F0            [12] 1308 	orl	a,b
      0034B0 70 1C            [24] 1309 	jnz	00102$
                                   1310 ;	8051_i2c_eeprom.c:182: printf("Error: No ACK for device address (write mode)\n\r");
      0034B2 74 A6            [12] 1311 	mov	a,#___str_24
      0034B4 C0 E0            [24] 1312 	push	acc
      0034B6 74 49            [12] 1313 	mov	a,#(___str_24 >> 8)
      0034B8 C0 E0            [24] 1314 	push	acc
      0034BA 74 80            [12] 1315 	mov	a,#0x80
      0034BC C0 E0            [24] 1316 	push	acc
      0034BE 12 37 84         [24] 1317 	lcall	_printf
      0034C1 15 81            [12] 1318 	dec	sp
      0034C3 15 81            [12] 1319 	dec	sp
      0034C5 15 81            [12] 1320 	dec	sp
                                   1321 ;	8051_i2c_eeprom.c:183: i2c_stop();
      0034C7 12 36 5A         [24] 1322 	lcall	_i2c_stop
                                   1323 ;	8051_i2c_eeprom.c:184: return -1;
      0034CA 90 FF FF         [24] 1324 	mov	dptr,#0xffff
      0034CD 22               [24] 1325 	ret
      0034CE                       1326 00102$:
                                   1327 ;	8051_i2c_eeprom.c:188: if(!i2c_write((unsigned char)address)) {
      0034CE 90 04 0D         [24] 1328 	mov	dptr,#_eeprom_read_address_65536_47
      0034D1 E0               [24] 1329 	movx	a,@dptr
      0034D2 FE               [12] 1330 	mov	r6,a
      0034D3 A3               [24] 1331 	inc	dptr
      0034D4 E0               [24] 1332 	movx	a,@dptr
      0034D5 8E 82            [24] 1333 	mov	dpl,r6
      0034D7 12 35 43         [24] 1334 	lcall	_i2c_write
      0034DA E5 82            [12] 1335 	mov	a,dpl
      0034DC 85 83 F0         [24] 1336 	mov	b,dph
      0034DF 45 F0            [12] 1337 	orl	a,b
      0034E1 70 1C            [24] 1338 	jnz	00104$
                                   1339 ;	8051_i2c_eeprom.c:189: printf("Error: No ACK for memory address\n\r");
      0034E3 74 9E            [12] 1340 	mov	a,#___str_20
      0034E5 C0 E0            [24] 1341 	push	acc
      0034E7 74 48            [12] 1342 	mov	a,#(___str_20 >> 8)
      0034E9 C0 E0            [24] 1343 	push	acc
      0034EB 74 80            [12] 1344 	mov	a,#0x80
      0034ED C0 E0            [24] 1345 	push	acc
      0034EF 12 37 84         [24] 1346 	lcall	_printf
      0034F2 15 81            [12] 1347 	dec	sp
      0034F4 15 81            [12] 1348 	dec	sp
      0034F6 15 81            [12] 1349 	dec	sp
                                   1350 ;	8051_i2c_eeprom.c:190: i2c_stop();
      0034F8 12 36 5A         [24] 1351 	lcall	_i2c_stop
                                   1352 ;	8051_i2c_eeprom.c:191: return -1;
      0034FB 90 FF FF         [24] 1353 	mov	dptr,#0xffff
      0034FE 22               [24] 1354 	ret
      0034FF                       1355 00104$:
                                   1356 ;	8051_i2c_eeprom.c:195: i2c_start();
      0034FF 12 36 45         [24] 1357 	lcall	_i2c_start
                                   1358 ;	8051_i2c_eeprom.c:198: if(!i2c_write(EEPROM_ID | READ)) {
      003502 75 82 A1         [24] 1359 	mov	dpl,#0xa1
      003505 12 35 43         [24] 1360 	lcall	_i2c_write
      003508 E5 82            [12] 1361 	mov	a,dpl
      00350A 85 83 F0         [24] 1362 	mov	b,dph
      00350D 45 F0            [12] 1363 	orl	a,b
      00350F 70 1C            [24] 1364 	jnz	00106$
                                   1365 ;	8051_i2c_eeprom.c:199: printf("Error: No ACK for device address (read mode)\n\r");
      003511 74 D6            [12] 1366 	mov	a,#___str_25
      003513 C0 E0            [24] 1367 	push	acc
      003515 74 49            [12] 1368 	mov	a,#(___str_25 >> 8)
      003517 C0 E0            [24] 1369 	push	acc
      003519 74 80            [12] 1370 	mov	a,#0x80
      00351B C0 E0            [24] 1371 	push	acc
      00351D 12 37 84         [24] 1372 	lcall	_printf
      003520 15 81            [12] 1373 	dec	sp
      003522 15 81            [12] 1374 	dec	sp
      003524 15 81            [12] 1375 	dec	sp
                                   1376 ;	8051_i2c_eeprom.c:200: i2c_stop();
      003526 12 36 5A         [24] 1377 	lcall	_i2c_stop
                                   1378 ;	8051_i2c_eeprom.c:201: return -1;
      003529 90 FF FF         [24] 1379 	mov	dptr,#0xffff
      00352C 22               [24] 1380 	ret
      00352D                       1381 00106$:
                                   1382 ;	8051_i2c_eeprom.c:205: result = i2c_read(0);  // 0 means send NACK
      00352D 90 00 00         [24] 1383 	mov	dptr,#0x0000
      003530 12 35 C0         [24] 1384 	lcall	_i2c_read
      003533 AE 82            [24] 1385 	mov	r6,dpl
                                   1386 ;	8051_i2c_eeprom.c:207: i2c_stop();
      003535 C0 06            [24] 1387 	push	ar6
      003537 12 36 5A         [24] 1388 	lcall	_i2c_stop
      00353A D0 06            [24] 1389 	pop	ar6
                                   1390 ;	8051_i2c_eeprom.c:208: return result;
      00353C 7F 00            [12] 1391 	mov	r7,#0x00
      00353E 8E 82            [24] 1392 	mov	dpl,r6
      003540 8F 83            [24] 1393 	mov	dph,r7
                                   1394 ;	8051_i2c_eeprom.c:209: }
      003542 22               [24] 1395 	ret
                                   1396 ;------------------------------------------------------------
                                   1397 ;Allocation info for local variables in function 'i2c_write'
                                   1398 ;------------------------------------------------------------
                                   1399 ;data                      Allocated with name '_i2c_write_data_65536_52'
                                   1400 ;i                         Allocated with name '_i2c_write_i_65536_53'
                                   1401 ;------------------------------------------------------------
                                   1402 ;	8051_i2c_eeprom.c:212: int i2c_write(unsigned char data)
                                   1403 ;	-----------------------------------------
                                   1404 ;	 function i2c_write
                                   1405 ;	-----------------------------------------
      003543                       1406 _i2c_write:
      003543 E5 82            [12] 1407 	mov	a,dpl
      003545 90 04 0F         [24] 1408 	mov	dptr,#_i2c_write_data_65536_52
      003548 F0               [24] 1409 	movx	@dptr,a
                                   1410 ;	8051_i2c_eeprom.c:216: for(i=0;i<=7;i++)
      003549 7E 00            [12] 1411 	mov	r6,#0x00
      00354B 7F 00            [12] 1412 	mov	r7,#0x00
      00354D                       1413 00104$:
                                   1414 ;	8051_i2c_eeprom.c:218: SDA = (data & 0x80) ? 1 : 0;    //msb first
      00354D 90 04 0F         [24] 1415 	mov	dptr,#_i2c_write_data_65536_52
      003550 E0               [24] 1416 	movx	a,@dptr
      003551 FD               [12] 1417 	mov	r5,a
      003552 23               [12] 1418 	rl	a
      003553 54 01            [12] 1419 	anl	a,#0x01
      003555 24 FF            [12] 1420 	add	a,#0xff
      003557 92 94            [24] 1421 	mov	_P1_4,c
                                   1422 ;	8051_i2c_eeprom.c:219: i2c_delay();        // Setup time for data
      003559 C0 07            [24] 1423 	push	ar7
      00355B C0 06            [24] 1424 	push	ar6
      00355D C0 05            [24] 1425 	push	ar5
      00355F 12 36 67         [24] 1426 	lcall	_i2c_delay
                                   1427 ;	8051_i2c_eeprom.c:220: SCL=1;
                                   1428 ;	assignBit
      003562 D2 93            [12] 1429 	setb	_P1_3
                                   1430 ;	8051_i2c_eeprom.c:221: i2c_delay();        // Hold time for clock
      003564 12 36 67         [24] 1431 	lcall	_i2c_delay
      003567 D0 05            [24] 1432 	pop	ar5
      003569 D0 06            [24] 1433 	pop	ar6
      00356B D0 07            [24] 1434 	pop	ar7
                                   1435 ;	8051_i2c_eeprom.c:222: SCL=0;
                                   1436 ;	assignBit
      00356D C2 93            [12] 1437 	clr	_P1_3
                                   1438 ;	8051_i2c_eeprom.c:223: data = data << 1;
      00356F ED               [12] 1439 	mov	a,r5
      003570 2D               [12] 1440 	add	a,r5
      003571 90 04 0F         [24] 1441 	mov	dptr,#_i2c_write_data_65536_52
      003574 F0               [24] 1442 	movx	@dptr,a
                                   1443 ;	8051_i2c_eeprom.c:216: for(i=0;i<=7;i++)
      003575 0E               [12] 1444 	inc	r6
      003576 BE 00 01         [24] 1445 	cjne	r6,#0x00,00121$
      003579 0F               [12] 1446 	inc	r7
      00357A                       1447 00121$:
      00357A C3               [12] 1448 	clr	c
      00357B 74 07            [12] 1449 	mov	a,#0x07
      00357D 9E               [12] 1450 	subb	a,r6
      00357E E4               [12] 1451 	clr	a
      00357F 9F               [12] 1452 	subb	a,r7
      003580 50 CB            [24] 1453 	jnc	00104$
                                   1454 ;	8051_i2c_eeprom.c:227: SDA = 1;            // Release SDA for slave
                                   1455 ;	assignBit
      003582 D2 94            [12] 1456 	setb	_P1_4
                                   1457 ;	8051_i2c_eeprom.c:228: SCL = 1;            // 9th clock pulse for ACK
                                   1458 ;	assignBit
      003584 D2 93            [12] 1459 	setb	_P1_3
                                   1460 ;	8051_i2c_eeprom.c:229: i2c_delay();
      003586 12 36 67         [24] 1461 	lcall	_i2c_delay
                                   1462 ;	8051_i2c_eeprom.c:230: if(SDA == 1)        // If SDA is still high, no ACK received
      003589 30 94 19         [24] 1463 	jnb	_P1_4,00103$
                                   1464 ;	8051_i2c_eeprom.c:233: printf("ACK DID NOT ARRIVE\n\r");
      00358C 74 05            [12] 1465 	mov	a,#___str_26
      00358E C0 E0            [24] 1466 	push	acc
      003590 74 4A            [12] 1467 	mov	a,#(___str_26 >> 8)
      003592 C0 E0            [24] 1468 	push	acc
      003594 74 80            [12] 1469 	mov	a,#0x80
      003596 C0 E0            [24] 1470 	push	acc
      003598 12 37 84         [24] 1471 	lcall	_printf
      00359B 15 81            [12] 1472 	dec	sp
      00359D 15 81            [12] 1473 	dec	sp
      00359F 15 81            [12] 1474 	dec	sp
                                   1475 ;	8051_i2c_eeprom.c:234: return 0;       // Error
      0035A1 90 00 00         [24] 1476 	mov	dptr,#0x0000
      0035A4 22               [24] 1477 	ret
      0035A5                       1478 00103$:
                                   1479 ;	8051_i2c_eeprom.c:236: SCL = 0;
                                   1480 ;	assignBit
      0035A5 C2 93            [12] 1481 	clr	_P1_3
                                   1482 ;	8051_i2c_eeprom.c:237: printf("Transmission successfull\n\r");
      0035A7 74 1A            [12] 1483 	mov	a,#___str_27
      0035A9 C0 E0            [24] 1484 	push	acc
      0035AB 74 4A            [12] 1485 	mov	a,#(___str_27 >> 8)
      0035AD C0 E0            [24] 1486 	push	acc
      0035AF 74 80            [12] 1487 	mov	a,#0x80
      0035B1 C0 E0            [24] 1488 	push	acc
      0035B3 12 37 84         [24] 1489 	lcall	_printf
      0035B6 15 81            [12] 1490 	dec	sp
      0035B8 15 81            [12] 1491 	dec	sp
      0035BA 15 81            [12] 1492 	dec	sp
                                   1493 ;	8051_i2c_eeprom.c:238: return 1;           // Success
      0035BC 90 00 01         [24] 1494 	mov	dptr,#0x0001
                                   1495 ;	8051_i2c_eeprom.c:240: }
      0035BF 22               [24] 1496 	ret
                                   1497 ;------------------------------------------------------------
                                   1498 ;Allocation info for local variables in function 'i2c_read'
                                   1499 ;------------------------------------------------------------
                                   1500 ;ACK                       Allocated with name '_i2c_read_ACK_65536_57'
                                   1501 ;buff                      Allocated with name '_i2c_read_buff_65536_58'
                                   1502 ;i                         Allocated with name '_i2c_read_i_131072_59'
                                   1503 ;------------------------------------------------------------
                                   1504 ;	8051_i2c_eeprom.c:241: int i2c_read(int ACK)
                                   1505 ;	-----------------------------------------
                                   1506 ;	 function i2c_read
                                   1507 ;	-----------------------------------------
      0035C0                       1508 _i2c_read:
      0035C0 AF 83            [24] 1509 	mov	r7,dph
      0035C2 E5 82            [12] 1510 	mov	a,dpl
      0035C4 90 04 10         [24] 1511 	mov	dptr,#_i2c_read_ACK_65536_57
      0035C7 F0               [24] 1512 	movx	@dptr,a
      0035C8 EF               [12] 1513 	mov	a,r7
      0035C9 A3               [24] 1514 	inc	dptr
      0035CA F0               [24] 1515 	movx	@dptr,a
                                   1516 ;	8051_i2c_eeprom.c:243: unsigned char buff=0;
      0035CB 90 04 12         [24] 1517 	mov	dptr,#_i2c_read_buff_65536_58
      0035CE E4               [12] 1518 	clr	a
      0035CF F0               [24] 1519 	movx	@dptr,a
                                   1520 ;	8051_i2c_eeprom.c:244: SCL = 0;
                                   1521 ;	assignBit
      0035D0 C2 93            [12] 1522 	clr	_P1_3
                                   1523 ;	8051_i2c_eeprom.c:245: for(int i=0;i<8;i++)
      0035D2 7E 00            [12] 1524 	mov	r6,#0x00
      0035D4 7F 00            [12] 1525 	mov	r7,#0x00
      0035D6                       1526 00103$:
      0035D6 C3               [12] 1527 	clr	c
      0035D7 EE               [12] 1528 	mov	a,r6
      0035D8 94 08            [12] 1529 	subb	a,#0x08
      0035DA EF               [12] 1530 	mov	a,r7
      0035DB 64 80            [12] 1531 	xrl	a,#0x80
      0035DD 94 80            [12] 1532 	subb	a,#0x80
      0035DF 50 40            [24] 1533 	jnc	00101$
                                   1534 ;	8051_i2c_eeprom.c:247: SCL = 1;
                                   1535 ;	assignBit
      0035E1 D2 93            [12] 1536 	setb	_P1_3
                                   1537 ;	8051_i2c_eeprom.c:248: i2c_delay();
      0035E3 C0 07            [24] 1538 	push	ar7
      0035E5 C0 06            [24] 1539 	push	ar6
      0035E7 12 36 67         [24] 1540 	lcall	_i2c_delay
      0035EA D0 06            [24] 1541 	pop	ar6
      0035EC D0 07            [24] 1542 	pop	ar7
                                   1543 ;	8051_i2c_eeprom.c:249: buff |= (SDA << (7 - i));
      0035EE A2 94            [12] 1544 	mov	c,_P1_4
      0035F0 E4               [12] 1545 	clr	a
      0035F1 33               [12] 1546 	rlc	a
      0035F2 FD               [12] 1547 	mov	r5,a
      0035F3 8E 04            [24] 1548 	mov	ar4,r6
      0035F5 74 07            [12] 1549 	mov	a,#0x07
      0035F7 C3               [12] 1550 	clr	c
      0035F8 9C               [12] 1551 	subb	a,r4
      0035F9 FC               [12] 1552 	mov	r4,a
      0035FA 8C F0            [24] 1553 	mov	b,r4
      0035FC 05 F0            [12] 1554 	inc	b
      0035FE ED               [12] 1555 	mov	a,r5
      0035FF 80 02            [24] 1556 	sjmp	00119$
      003601                       1557 00117$:
      003601 25 E0            [12] 1558 	add	a,acc
      003603                       1559 00119$:
      003603 D5 F0 FB         [24] 1560 	djnz	b,00117$
      003606 FC               [12] 1561 	mov	r4,a
      003607 90 04 12         [24] 1562 	mov	dptr,#_i2c_read_buff_65536_58
      00360A E0               [24] 1563 	movx	a,@dptr
      00360B 4C               [12] 1564 	orl	a,r4
      00360C F0               [24] 1565 	movx	@dptr,a
                                   1566 ;	8051_i2c_eeprom.c:250: i2c_delay();
      00360D C0 07            [24] 1567 	push	ar7
      00360F C0 06            [24] 1568 	push	ar6
      003611 12 36 67         [24] 1569 	lcall	_i2c_delay
      003614 D0 06            [24] 1570 	pop	ar6
      003616 D0 07            [24] 1571 	pop	ar7
                                   1572 ;	8051_i2c_eeprom.c:251: SCL=0;
                                   1573 ;	assignBit
      003618 C2 93            [12] 1574 	clr	_P1_3
                                   1575 ;	8051_i2c_eeprom.c:245: for(int i=0;i<8;i++)
      00361A 0E               [12] 1576 	inc	r6
      00361B BE 00 B8         [24] 1577 	cjne	r6,#0x00,00103$
      00361E 0F               [12] 1578 	inc	r7
      00361F 80 B5            [24] 1579 	sjmp	00103$
      003621                       1580 00101$:
                                   1581 ;	8051_i2c_eeprom.c:255: SDA = !ACK;         // ACK = 0, NACK = 1
      003621 90 04 10         [24] 1582 	mov	dptr,#_i2c_read_ACK_65536_57
      003624 E0               [24] 1583 	movx	a,@dptr
      003625 FE               [12] 1584 	mov	r6,a
      003626 A3               [24] 1585 	inc	dptr
      003627 E0               [24] 1586 	movx	a,@dptr
      003628 4E               [12] 1587 	orl	a,r6
      003629 B4 01 00         [24] 1588 	cjne	a,#0x01,00121$
      00362C                       1589 00121$:
      00362C E4               [12] 1590 	clr	a
      00362D 33               [12] 1591 	rlc	a
      00362E 24 FF            [12] 1592 	add	a,#0xff
      003630 92 94            [24] 1593 	mov	_P1_4,c
                                   1594 ;	8051_i2c_eeprom.c:256: SCL = 1;
                                   1595 ;	assignBit
      003632 D2 93            [12] 1596 	setb	_P1_3
                                   1597 ;	8051_i2c_eeprom.c:257: i2c_delay();
      003634 12 36 67         [24] 1598 	lcall	_i2c_delay
                                   1599 ;	8051_i2c_eeprom.c:258: SCL = 0;
                                   1600 ;	assignBit
      003637 C2 93            [12] 1601 	clr	_P1_3
                                   1602 ;	8051_i2c_eeprom.c:260: return buff;
      003639 90 04 12         [24] 1603 	mov	dptr,#_i2c_read_buff_65536_58
      00363C E0               [24] 1604 	movx	a,@dptr
      00363D FF               [12] 1605 	mov	r7,a
      00363E 7E 00            [12] 1606 	mov	r6,#0x00
      003640 8F 82            [24] 1607 	mov	dpl,r7
      003642 8E 83            [24] 1608 	mov	dph,r6
                                   1609 ;	8051_i2c_eeprom.c:261: }
      003644 22               [24] 1610 	ret
                                   1611 ;------------------------------------------------------------
                                   1612 ;Allocation info for local variables in function 'i2c_start'
                                   1613 ;------------------------------------------------------------
                                   1614 ;	8051_i2c_eeprom.c:262: void i2c_start(void)
                                   1615 ;	-----------------------------------------
                                   1616 ;	 function i2c_start
                                   1617 ;	-----------------------------------------
      003645                       1618 _i2c_start:
                                   1619 ;	8051_i2c_eeprom.c:264: i2c_delay();
      003645 12 36 67         [24] 1620 	lcall	_i2c_delay
                                   1621 ;	8051_i2c_eeprom.c:265: SDA = 1;
                                   1622 ;	assignBit
      003648 D2 94            [12] 1623 	setb	_P1_4
                                   1624 ;	8051_i2c_eeprom.c:266: i2c_delay();
      00364A 12 36 67         [24] 1625 	lcall	_i2c_delay
                                   1626 ;	8051_i2c_eeprom.c:267: SCL = 1;
                                   1627 ;	assignBit
      00364D D2 93            [12] 1628 	setb	_P1_3
                                   1629 ;	8051_i2c_eeprom.c:268: i2c_delay();
      00364F 12 36 67         [24] 1630 	lcall	_i2c_delay
                                   1631 ;	8051_i2c_eeprom.c:269: SDA = 0;
                                   1632 ;	assignBit
      003652 C2 94            [12] 1633 	clr	_P1_4
                                   1634 ;	8051_i2c_eeprom.c:270: i2c_delay();
      003654 12 36 67         [24] 1635 	lcall	_i2c_delay
                                   1636 ;	8051_i2c_eeprom.c:271: SCL = 0;
                                   1637 ;	assignBit
      003657 C2 93            [12] 1638 	clr	_P1_3
                                   1639 ;	8051_i2c_eeprom.c:272: }
      003659 22               [24] 1640 	ret
                                   1641 ;------------------------------------------------------------
                                   1642 ;Allocation info for local variables in function 'i2c_stop'
                                   1643 ;------------------------------------------------------------
                                   1644 ;	8051_i2c_eeprom.c:274: void i2c_stop(void)
                                   1645 ;	-----------------------------------------
                                   1646 ;	 function i2c_stop
                                   1647 ;	-----------------------------------------
      00365A                       1648 _i2c_stop:
                                   1649 ;	8051_i2c_eeprom.c:276: SDA = 0;
                                   1650 ;	assignBit
      00365A C2 94            [12] 1651 	clr	_P1_4
                                   1652 ;	8051_i2c_eeprom.c:277: i2c_delay();
      00365C 12 36 67         [24] 1653 	lcall	_i2c_delay
                                   1654 ;	8051_i2c_eeprom.c:278: SCL = 1;
                                   1655 ;	assignBit
      00365F D2 93            [12] 1656 	setb	_P1_3
                                   1657 ;	8051_i2c_eeprom.c:279: i2c_delay();
      003661 12 36 67         [24] 1658 	lcall	_i2c_delay
                                   1659 ;	8051_i2c_eeprom.c:280: SDA = 1; 
                                   1660 ;	assignBit
      003664 D2 94            [12] 1661 	setb	_P1_4
                                   1662 ;	8051_i2c_eeprom.c:281: }
      003666 22               [24] 1663 	ret
                                   1664 ;------------------------------------------------------------
                                   1665 ;Allocation info for local variables in function 'i2c_delay'
                                   1666 ;------------------------------------------------------------
                                   1667 ;i                         Allocated with name '_i2c_delay_i_131072_66'
                                   1668 ;------------------------------------------------------------
                                   1669 ;	8051_i2c_eeprom.c:283: void i2c_delay() 
                                   1670 ;	-----------------------------------------
                                   1671 ;	 function i2c_delay
                                   1672 ;	-----------------------------------------
      003667                       1673 _i2c_delay:
                                   1674 ;	8051_i2c_eeprom.c:291: for(int i = 0; i<500; i++);
      003667 7E 00            [12] 1675 	mov	r6,#0x00
      003669 7F 00            [12] 1676 	mov	r7,#0x00
      00366B                       1677 00103$:
      00366B C3               [12] 1678 	clr	c
      00366C EE               [12] 1679 	mov	a,r6
      00366D 94 F4            [12] 1680 	subb	a,#0xf4
      00366F EF               [12] 1681 	mov	a,r7
      003670 64 80            [12] 1682 	xrl	a,#0x80
      003672 94 81            [12] 1683 	subb	a,#0x81
      003674 50 07            [24] 1684 	jnc	00105$
      003676 0E               [12] 1685 	inc	r6
      003677 BE 00 F1         [24] 1686 	cjne	r6,#0x00,00103$
      00367A 0F               [12] 1687 	inc	r7
      00367B 80 EE            [24] 1688 	sjmp	00103$
      00367D                       1689 00105$:
                                   1690 ;	8051_i2c_eeprom.c:292: }
      00367D 22               [24] 1691 	ret
                                   1692 ;------------------------------------------------------------
                                   1693 ;Allocation info for local variables in function 'test_function'
                                   1694 ;------------------------------------------------------------
                                   1695 ;test_data                 Allocated with name '_test_function_test_data_65537_68'
                                   1696 ;address                   Allocated with name '_test_function_address_65537_68'
                                   1697 ;i                         Allocated with name '_test_function_i_131073_69'
                                   1698 ;read_data                 Allocated with name '_test_function_read_data_65538_71'
                                   1699 ;------------------------------------------------------------
                                   1700 ;	8051_i2c_eeprom.c:294: void test_function()
                                   1701 ;	-----------------------------------------
                                   1702 ;	 function test_function
                                   1703 ;	-----------------------------------------
      00367E                       1704 _test_function:
                                   1705 ;	8051_i2c_eeprom.c:296: i2c_start();
      00367E 12 36 45         [24] 1706 	lcall	_i2c_start
                                   1707 ;	8051_i2c_eeprom.c:297: i2c_delay();
      003681 12 36 67         [24] 1708 	lcall	_i2c_delay
                                   1709 ;	8051_i2c_eeprom.c:303: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      003684 74 02            [12] 1710 	mov	a,#0x02
      003686 C0 E0            [24] 1711 	push	acc
      003688 E4               [12] 1712 	clr	a
      003689 C0 E0            [24] 1713 	push	acc
      00368B 74 26            [12] 1714 	mov	a,#0x26
      00368D C0 E0            [24] 1715 	push	acc
      00368F E4               [12] 1716 	clr	a
      003690 C0 E0            [24] 1717 	push	acc
      003692 74 35            [12] 1718 	mov	a,#___str_28
      003694 C0 E0            [24] 1719 	push	acc
      003696 74 4A            [12] 1720 	mov	a,#(___str_28 >> 8)
      003698 C0 E0            [24] 1721 	push	acc
      00369A 74 80            [12] 1722 	mov	a,#0x80
      00369C C0 E0            [24] 1723 	push	acc
      00369E 12 37 84         [24] 1724 	lcall	_printf
      0036A1 E5 81            [12] 1725 	mov	a,sp
      0036A3 24 F9            [12] 1726 	add	a,#0xf9
      0036A5 F5 81            [12] 1727 	mov	sp,a
                                   1728 ;	8051_i2c_eeprom.c:304: eeprom_write(address, test_data);
      0036A7 90 04 0A         [24] 1729 	mov	dptr,#_eeprom_write_PARM_2
      0036AA 74 26            [12] 1730 	mov	a,#0x26
      0036AC F0               [24] 1731 	movx	@dptr,a
      0036AD 90 00 02         [24] 1732 	mov	dptr,#0x0002
      0036B0 12 33 5C         [24] 1733 	lcall	_eeprom_write
                                   1734 ;	8051_i2c_eeprom.c:305: i2c_stop();
      0036B3 12 36 5A         [24] 1735 	lcall	_i2c_stop
                                   1736 ;	8051_i2c_eeprom.c:307: for(int i = 0; i<100; i++)
      0036B6 7E 00            [12] 1737 	mov	r6,#0x00
      0036B8 7F 00            [12] 1738 	mov	r7,#0x00
      0036BA                       1739 00106$:
      0036BA C3               [12] 1740 	clr	c
      0036BB EE               [12] 1741 	mov	a,r6
      0036BC 94 64            [12] 1742 	subb	a,#0x64
      0036BE EF               [12] 1743 	mov	a,r7
      0036BF 64 80            [12] 1744 	xrl	a,#0x80
      0036C1 94 80            [12] 1745 	subb	a,#0x80
      0036C3 50 12            [24] 1746 	jnc	00101$
                                   1747 ;	8051_i2c_eeprom.c:309: i2c_delay();
      0036C5 C0 07            [24] 1748 	push	ar7
      0036C7 C0 06            [24] 1749 	push	ar6
      0036C9 12 36 67         [24] 1750 	lcall	_i2c_delay
      0036CC D0 06            [24] 1751 	pop	ar6
      0036CE D0 07            [24] 1752 	pop	ar7
                                   1753 ;	8051_i2c_eeprom.c:307: for(int i = 0; i<100; i++)
      0036D0 0E               [12] 1754 	inc	r6
      0036D1 BE 00 E6         [24] 1755 	cjne	r6,#0x00,00106$
      0036D4 0F               [12] 1756 	inc	r7
      0036D5 80 E3            [24] 1757 	sjmp	00106$
      0036D7                       1758 00101$:
                                   1759 ;	8051_i2c_eeprom.c:313: unsigned char read_data = eeprom_read(address);
      0036D7 90 00 02         [24] 1760 	mov	dptr,#0x0002
      0036DA 12 34 95         [24] 1761 	lcall	_eeprom_read
      0036DD AE 82            [24] 1762 	mov	r6,dpl
                                   1763 ;	8051_i2c_eeprom.c:314: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      0036DF 8E 05            [24] 1764 	mov	ar5,r6
      0036E1 7F 00            [12] 1765 	mov	r7,#0x00
      0036E3 C0 06            [24] 1766 	push	ar6
      0036E5 C0 05            [24] 1767 	push	ar5
      0036E7 C0 07            [24] 1768 	push	ar7
      0036E9 74 02            [12] 1769 	mov	a,#0x02
      0036EB C0 E0            [24] 1770 	push	acc
      0036ED E4               [12] 1771 	clr	a
      0036EE C0 E0            [24] 1772 	push	acc
      0036F0 74 5D            [12] 1773 	mov	a,#___str_29
      0036F2 C0 E0            [24] 1774 	push	acc
      0036F4 74 4A            [12] 1775 	mov	a,#(___str_29 >> 8)
      0036F6 C0 E0            [24] 1776 	push	acc
      0036F8 74 80            [12] 1777 	mov	a,#0x80
      0036FA C0 E0            [24] 1778 	push	acc
      0036FC 12 37 84         [24] 1779 	lcall	_printf
      0036FF E5 81            [12] 1780 	mov	a,sp
      003701 24 F9            [12] 1781 	add	a,#0xf9
      003703 F5 81            [12] 1782 	mov	sp,a
      003705 D0 06            [24] 1783 	pop	ar6
                                   1784 ;	8051_i2c_eeprom.c:317: if(read_data == test_data) {
      003707 BE 26 16         [24] 1785 	cjne	r6,#0x26,00103$
                                   1786 ;	8051_i2c_eeprom.c:318: printf("MATCH - Write/Read successful!\n\r");
      00370A 74 85            [12] 1787 	mov	a,#___str_30
      00370C C0 E0            [24] 1788 	push	acc
      00370E 74 4A            [12] 1789 	mov	a,#(___str_30 >> 8)
      003710 C0 E0            [24] 1790 	push	acc
      003712 74 80            [12] 1791 	mov	a,#0x80
      003714 C0 E0            [24] 1792 	push	acc
      003716 12 37 84         [24] 1793 	lcall	_printf
      003719 15 81            [12] 1794 	dec	sp
      00371B 15 81            [12] 1795 	dec	sp
      00371D 15 81            [12] 1796 	dec	sp
      00371F 22               [24] 1797 	ret
      003720                       1798 00103$:
                                   1799 ;	8051_i2c_eeprom.c:320: printf("ERROR - Data mismatch!\n\r");
      003720 74 A6            [12] 1800 	mov	a,#___str_31
      003722 C0 E0            [24] 1801 	push	acc
      003724 74 4A            [12] 1802 	mov	a,#(___str_31 >> 8)
      003726 C0 E0            [24] 1803 	push	acc
      003728 74 80            [12] 1804 	mov	a,#0x80
      00372A C0 E0            [24] 1805 	push	acc
      00372C 12 37 84         [24] 1806 	lcall	_printf
      00372F 15 81            [12] 1807 	dec	sp
      003731 15 81            [12] 1808 	dec	sp
      003733 15 81            [12] 1809 	dec	sp
                                   1810 ;	8051_i2c_eeprom.c:324: }
      003735 22               [24] 1811 	ret
                                   1812 	.area CSEG    (CODE)
                                   1813 	.area CONST   (CODE)
                                   1814 	.area CONST   (CODE)
      0041E6                       1815 ___str_0:
      0041E6 0A                    1816 	.db 0x0a
      0041E7 E2                    1817 	.db 0xe2
      0041E8 95                    1818 	.db 0x95
      0041E9 94                    1819 	.db 0x94
      0041EA E2                    1820 	.db 0xe2
      0041EB 95                    1821 	.db 0x95
      0041EC 90                    1822 	.db 0x90
      0041ED E2                    1823 	.db 0xe2
      0041EE 95                    1824 	.db 0x95
      0041EF 90                    1825 	.db 0x90
      0041F0 E2                    1826 	.db 0xe2
      0041F1 95                    1827 	.db 0x95
      0041F2 90                    1828 	.db 0x90
      0041F3 E2                    1829 	.db 0xe2
      0041F4 95                    1830 	.db 0x95
      0041F5 90                    1831 	.db 0x90
      0041F6 E2                    1832 	.db 0xe2
      0041F7 95                    1833 	.db 0x95
      0041F8 90                    1834 	.db 0x90
      0041F9 E2                    1835 	.db 0xe2
      0041FA 95                    1836 	.db 0x95
      0041FB 90                    1837 	.db 0x90
      0041FC E2                    1838 	.db 0xe2
      0041FD 95                    1839 	.db 0x95
      0041FE 90                    1840 	.db 0x90
      0041FF E2                    1841 	.db 0xe2
      004200 95                    1842 	.db 0x95
      004201 90                    1843 	.db 0x90
      004202 E2                    1844 	.db 0xe2
      004203 95                    1845 	.db 0x95
      004204 90                    1846 	.db 0x90
      004205 E2                    1847 	.db 0xe2
      004206 95                    1848 	.db 0x95
      004207 90                    1849 	.db 0x90
      004208 E2                    1850 	.db 0xe2
      004209 95                    1851 	.db 0x95
      00420A 90                    1852 	.db 0x90
      00420B E2                    1853 	.db 0xe2
      00420C 95                    1854 	.db 0x95
      00420D 90                    1855 	.db 0x90
      00420E E2                    1856 	.db 0xe2
      00420F 95                    1857 	.db 0x95
      004210 90                    1858 	.db 0x90
      004211 E2                    1859 	.db 0xe2
      004212 95                    1860 	.db 0x95
      004213 90                    1861 	.db 0x90
      004214 E2                    1862 	.db 0xe2
      004215 95                    1863 	.db 0x95
      004216 90                    1864 	.db 0x90
      004217 E2                    1865 	.db 0xe2
      004218 95                    1866 	.db 0x95
      004219 90                    1867 	.db 0x90
      00421A E2                    1868 	.db 0xe2
      00421B 95                    1869 	.db 0x95
      00421C 90                    1870 	.db 0x90
      00421D E2                    1871 	.db 0xe2
      00421E 95                    1872 	.db 0x95
      00421F 90                    1873 	.db 0x90
      004220 E2                    1874 	.db 0xe2
      004221 95                    1875 	.db 0x95
      004222 90                    1876 	.db 0x90
      004223 E2                    1877 	.db 0xe2
      004224 95                    1878 	.db 0x95
      004225 90                    1879 	.db 0x90
      004226 E2                    1880 	.db 0xe2
      004227 95                    1881 	.db 0x95
      004228 90                    1882 	.db 0x90
      004229 E2                    1883 	.db 0xe2
      00422A 95                    1884 	.db 0x95
      00422B 90                    1885 	.db 0x90
      00422C E2                    1886 	.db 0xe2
      00422D 95                    1887 	.db 0x95
      00422E 90                    1888 	.db 0x90
      00422F E2                    1889 	.db 0xe2
      004230 95                    1890 	.db 0x95
      004231 90                    1891 	.db 0x90
      004232 E2                    1892 	.db 0xe2
      004233 95                    1893 	.db 0x95
      004234 90                    1894 	.db 0x90
      004235 E2                    1895 	.db 0xe2
      004236 95                    1896 	.db 0x95
      004237 90                    1897 	.db 0x90
      004238 E2                    1898 	.db 0xe2
      004239 95                    1899 	.db 0x95
      00423A 90                    1900 	.db 0x90
      00423B E2                    1901 	.db 0xe2
      00423C 95                    1902 	.db 0x95
      00423D 90                    1903 	.db 0x90
      00423E E2                    1904 	.db 0xe2
      00423F 95                    1905 	.db 0x95
      004240 90                    1906 	.db 0x90
      004241 E2                    1907 	.db 0xe2
      004242 95                    1908 	.db 0x95
      004243 90                    1909 	.db 0x90
      004244 E2                    1910 	.db 0xe2
      004245 95                    1911 	.db 0x95
      004246 90                    1912 	.db 0x90
      004247 E2                    1913 	.db 0xe2
      004248 95                    1914 	.db 0x95
      004249 90                    1915 	.db 0x90
      00424A E2                    1916 	.db 0xe2
      00424B 95                    1917 	.db 0x95
      00424C 90                    1918 	.db 0x90
      00424D E2                    1919 	.db 0xe2
      00424E 95                    1920 	.db 0x95
      00424F 90                    1921 	.db 0x90
      004250 E2                    1922 	.db 0xe2
      004251 95                    1923 	.db 0x95
      004252 90                    1924 	.db 0x90
      004253 E2                    1925 	.db 0xe2
      004254 95                    1926 	.db 0x95
      004255 90                    1927 	.db 0x90
      004256 E2                    1928 	.db 0xe2
      004257 95                    1929 	.db 0x95
      004258 90                    1930 	.db 0x90
      004259 E2                    1931 	.db 0xe2
      00425A 95                    1932 	.db 0x95
      00425B 90                    1933 	.db 0x90
      00425C E2                    1934 	.db 0xe2
      00425D 95                    1935 	.db 0x95
      00425E 90                    1936 	.db 0x90
      00425F E2                    1937 	.db 0xe2
      004260 95                    1938 	.db 0x95
      004261 90                    1939 	.db 0x90
      004262 E2                    1940 	.db 0xe2
      004263 95                    1941 	.db 0x95
      004264 90                    1942 	.db 0x90
      004265 E2                    1943 	.db 0xe2
      004266 95                    1944 	.db 0x95
      004267 90                    1945 	.db 0x90
      004268 E2                    1946 	.db 0xe2
      004269 95                    1947 	.db 0x95
      00426A 90                    1948 	.db 0x90
      00426B E2                    1949 	.db 0xe2
      00426C 95                    1950 	.db 0x95
      00426D 90                    1951 	.db 0x90
      00426E E2                    1952 	.db 0xe2
      00426F 95                    1953 	.db 0x95
      004270 90                    1954 	.db 0x90
      004271 E2                    1955 	.db 0xe2
      004272 95                    1956 	.db 0x95
      004273 90                    1957 	.db 0x90
      004274 E2                    1958 	.db 0xe2
      004275 95                    1959 	.db 0x95
      004276 90                    1960 	.db 0x90
      004277 E2                    1961 	.db 0xe2
      004278 95                    1962 	.db 0x95
      004279 90                    1963 	.db 0x90
      00427A E2                    1964 	.db 0xe2
      00427B 95                    1965 	.db 0x95
      00427C 90                    1966 	.db 0x90
      00427D E2                    1967 	.db 0xe2
      00427E 95                    1968 	.db 0x95
      00427F 90                    1969 	.db 0x90
      004280 E2                    1970 	.db 0xe2
      004281 95                    1971 	.db 0x95
      004282 90                    1972 	.db 0x90
      004283 E2                    1973 	.db 0xe2
      004284 95                    1974 	.db 0x95
      004285 90                    1975 	.db 0x90
      004286 E2                    1976 	.db 0xe2
      004287 95                    1977 	.db 0x95
      004288 90                    1978 	.db 0x90
      004289 E2                    1979 	.db 0xe2
      00428A 95                    1980 	.db 0x95
      00428B 90                    1981 	.db 0x90
      00428C E2                    1982 	.db 0xe2
      00428D 95                    1983 	.db 0x95
      00428E 90                    1984 	.db 0x90
      00428F E2                    1985 	.db 0xe2
      004290 95                    1986 	.db 0x95
      004291 90                    1987 	.db 0x90
      004292 E2                    1988 	.db 0xe2
      004293 95                    1989 	.db 0x95
      004294 97                    1990 	.db 0x97
      004295 0A                    1991 	.db 0x0a
      004296 0D                    1992 	.db 0x0d
      004297 00                    1993 	.db 0x00
                                   1994 	.area CSEG    (CODE)
                                   1995 	.area CONST   (CODE)
      004298                       1996 ___str_1:
      004298 E2                    1997 	.db 0xe2
      004299 95                    1998 	.db 0x95
      00429A 91                    1999 	.db 0x91
      00429B 20 20 20 20 20 20 20  2000 	.ascii "           I2C Memory Management System v1.0             "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
             20
      0042D4 E2                    2001 	.db 0xe2
      0042D5 95                    2002 	.db 0x95
      0042D6 91                    2003 	.db 0x91
      0042D7 0A                    2004 	.db 0x0a
      0042D8 0D                    2005 	.db 0x0d
      0042D9 00                    2006 	.db 0x00
                                   2007 	.area CSEG    (CODE)
                                   2008 	.area CONST   (CODE)
      0042DA                       2009 ___str_2:
      0042DA E2                    2010 	.db 0xe2
      0042DB 95                    2011 	.db 0x95
      0042DC 9A                    2012 	.db 0x9a
      0042DD E2                    2013 	.db 0xe2
      0042DE 95                    2014 	.db 0x95
      0042DF 90                    2015 	.db 0x90
      0042E0 E2                    2016 	.db 0xe2
      0042E1 95                    2017 	.db 0x95
      0042E2 90                    2018 	.db 0x90
      0042E3 E2                    2019 	.db 0xe2
      0042E4 95                    2020 	.db 0x95
      0042E5 90                    2021 	.db 0x90
      0042E6 E2                    2022 	.db 0xe2
      0042E7 95                    2023 	.db 0x95
      0042E8 90                    2024 	.db 0x90
      0042E9 E2                    2025 	.db 0xe2
      0042EA 95                    2026 	.db 0x95
      0042EB 90                    2027 	.db 0x90
      0042EC E2                    2028 	.db 0xe2
      0042ED 95                    2029 	.db 0x95
      0042EE 90                    2030 	.db 0x90
      0042EF E2                    2031 	.db 0xe2
      0042F0 95                    2032 	.db 0x95
      0042F1 90                    2033 	.db 0x90
      0042F2 E2                    2034 	.db 0xe2
      0042F3 95                    2035 	.db 0x95
      0042F4 90                    2036 	.db 0x90
      0042F5 E2                    2037 	.db 0xe2
      0042F6 95                    2038 	.db 0x95
      0042F7 90                    2039 	.db 0x90
      0042F8 E2                    2040 	.db 0xe2
      0042F9 95                    2041 	.db 0x95
      0042FA 90                    2042 	.db 0x90
      0042FB E2                    2043 	.db 0xe2
      0042FC 95                    2044 	.db 0x95
      0042FD 90                    2045 	.db 0x90
      0042FE E2                    2046 	.db 0xe2
      0042FF 95                    2047 	.db 0x95
      004300 90                    2048 	.db 0x90
      004301 E2                    2049 	.db 0xe2
      004302 95                    2050 	.db 0x95
      004303 90                    2051 	.db 0x90
      004304 E2                    2052 	.db 0xe2
      004305 95                    2053 	.db 0x95
      004306 90                    2054 	.db 0x90
      004307 E2                    2055 	.db 0xe2
      004308 95                    2056 	.db 0x95
      004309 90                    2057 	.db 0x90
      00430A E2                    2058 	.db 0xe2
      00430B 95                    2059 	.db 0x95
      00430C 90                    2060 	.db 0x90
      00430D E2                    2061 	.db 0xe2
      00430E 95                    2062 	.db 0x95
      00430F 90                    2063 	.db 0x90
      004310 E2                    2064 	.db 0xe2
      004311 95                    2065 	.db 0x95
      004312 90                    2066 	.db 0x90
      004313 E2                    2067 	.db 0xe2
      004314 95                    2068 	.db 0x95
      004315 90                    2069 	.db 0x90
      004316 E2                    2070 	.db 0xe2
      004317 95                    2071 	.db 0x95
      004318 90                    2072 	.db 0x90
      004319 E2                    2073 	.db 0xe2
      00431A 95                    2074 	.db 0x95
      00431B 90                    2075 	.db 0x90
      00431C E2                    2076 	.db 0xe2
      00431D 95                    2077 	.db 0x95
      00431E 90                    2078 	.db 0x90
      00431F E2                    2079 	.db 0xe2
      004320 95                    2080 	.db 0x95
      004321 90                    2081 	.db 0x90
      004322 E2                    2082 	.db 0xe2
      004323 95                    2083 	.db 0x95
      004324 90                    2084 	.db 0x90
      004325 E2                    2085 	.db 0xe2
      004326 95                    2086 	.db 0x95
      004327 90                    2087 	.db 0x90
      004328 E2                    2088 	.db 0xe2
      004329 95                    2089 	.db 0x95
      00432A 90                    2090 	.db 0x90
      00432B E2                    2091 	.db 0xe2
      00432C 95                    2092 	.db 0x95
      00432D 90                    2093 	.db 0x90
      00432E E2                    2094 	.db 0xe2
      00432F 95                    2095 	.db 0x95
      004330 90                    2096 	.db 0x90
      004331 E2                    2097 	.db 0xe2
      004332 95                    2098 	.db 0x95
      004333 90                    2099 	.db 0x90
      004334 E2                    2100 	.db 0xe2
      004335 95                    2101 	.db 0x95
      004336 90                    2102 	.db 0x90
      004337 E2                    2103 	.db 0xe2
      004338 95                    2104 	.db 0x95
      004339 90                    2105 	.db 0x90
      00433A E2                    2106 	.db 0xe2
      00433B 95                    2107 	.db 0x95
      00433C 90                    2108 	.db 0x90
      00433D E2                    2109 	.db 0xe2
      00433E 95                    2110 	.db 0x95
      00433F 90                    2111 	.db 0x90
      004340 E2                    2112 	.db 0xe2
      004341 95                    2113 	.db 0x95
      004342 90                    2114 	.db 0x90
      004343 E2                    2115 	.db 0xe2
      004344 95                    2116 	.db 0x95
      004345 90                    2117 	.db 0x90
      004346 E2                    2118 	.db 0xe2
      004347 95                    2119 	.db 0x95
      004348 90                    2120 	.db 0x90
      004349 E2                    2121 	.db 0xe2
      00434A 95                    2122 	.db 0x95
      00434B 90                    2123 	.db 0x90
      00434C E2                    2124 	.db 0xe2
      00434D 95                    2125 	.db 0x95
      00434E 90                    2126 	.db 0x90
      00434F E2                    2127 	.db 0xe2
      004350 95                    2128 	.db 0x95
      004351 90                    2129 	.db 0x90
      004352 E2                    2130 	.db 0xe2
      004353 95                    2131 	.db 0x95
      004354 90                    2132 	.db 0x90
      004355 E2                    2133 	.db 0xe2
      004356 95                    2134 	.db 0x95
      004357 90                    2135 	.db 0x90
      004358 E2                    2136 	.db 0xe2
      004359 95                    2137 	.db 0x95
      00435A 90                    2138 	.db 0x90
      00435B E2                    2139 	.db 0xe2
      00435C 95                    2140 	.db 0x95
      00435D 90                    2141 	.db 0x90
      00435E E2                    2142 	.db 0xe2
      00435F 95                    2143 	.db 0x95
      004360 90                    2144 	.db 0x90
      004361 E2                    2145 	.db 0xe2
      004362 95                    2146 	.db 0x95
      004363 90                    2147 	.db 0x90
      004364 E2                    2148 	.db 0xe2
      004365 95                    2149 	.db 0x95
      004366 90                    2150 	.db 0x90
      004367 E2                    2151 	.db 0xe2
      004368 95                    2152 	.db 0x95
      004369 90                    2153 	.db 0x90
      00436A E2                    2154 	.db 0xe2
      00436B 95                    2155 	.db 0x95
      00436C 90                    2156 	.db 0x90
      00436D E2                    2157 	.db 0xe2
      00436E 95                    2158 	.db 0x95
      00436F 90                    2159 	.db 0x90
      004370 E2                    2160 	.db 0xe2
      004371 95                    2161 	.db 0x95
      004372 90                    2162 	.db 0x90
      004373 E2                    2163 	.db 0xe2
      004374 95                    2164 	.db 0x95
      004375 90                    2165 	.db 0x90
      004376 E2                    2166 	.db 0xe2
      004377 95                    2167 	.db 0x95
      004378 90                    2168 	.db 0x90
      004379 E2                    2169 	.db 0xe2
      00437A 95                    2170 	.db 0x95
      00437B 90                    2171 	.db 0x90
      00437C E2                    2172 	.db 0xe2
      00437D 95                    2173 	.db 0x95
      00437E 90                    2174 	.db 0x90
      00437F E2                    2175 	.db 0xe2
      004380 95                    2176 	.db 0x95
      004381 90                    2177 	.db 0x90
      004382 E2                    2178 	.db 0xe2
      004383 95                    2179 	.db 0x95
      004384 90                    2180 	.db 0x90
      004385 E2                    2181 	.db 0xe2
      004386 95                    2182 	.db 0x95
      004387 9D                    2183 	.db 0x9d
      004388 0A                    2184 	.db 0x0a
      004389 0D                    2185 	.db 0x0d
      00438A 00                    2186 	.db 0x00
                                   2187 	.area CSEG    (CODE)
                                   2188 	.area CONST   (CODE)
      00438B                       2189 ___str_3:
      00438B 0A                    2190 	.db 0x0a
      00438C 0D                    2191 	.db 0x0d
      00438D E2                    2192 	.db 0xe2
      00438E 94                    2193 	.db 0x94
      00438F 8C                    2194 	.db 0x8c
      004390 E2                    2195 	.db 0xe2
      004391 94                    2196 	.db 0x94
      004392 80                    2197 	.db 0x80
      004393 E2                    2198 	.db 0xe2
      004394 94                    2199 	.db 0x94
      004395 80                    2200 	.db 0x80
      004396 E2                    2201 	.db 0xe2
      004397 94                    2202 	.db 0x94
      004398 80                    2203 	.db 0x80
      004399 E2                    2204 	.db 0xe2
      00439A 94                    2205 	.db 0x94
      00439B 80                    2206 	.db 0x80
      00439C E2                    2207 	.db 0xe2
      00439D 94                    2208 	.db 0x94
      00439E 80                    2209 	.db 0x80
      00439F E2                    2210 	.db 0xe2
      0043A0 94                    2211 	.db 0x94
      0043A1 80                    2212 	.db 0x80
      0043A2 E2                    2213 	.db 0xe2
      0043A3 94                    2214 	.db 0x94
      0043A4 80                    2215 	.db 0x80
      0043A5 E2                    2216 	.db 0xe2
      0043A6 94                    2217 	.db 0x94
      0043A7 80                    2218 	.db 0x80
      0043A8 E2                    2219 	.db 0xe2
      0043A9 94                    2220 	.db 0x94
      0043AA 80                    2221 	.db 0x80
      0043AB E2                    2222 	.db 0xe2
      0043AC 94                    2223 	.db 0x94
      0043AD 80                    2224 	.db 0x80
      0043AE E2                    2225 	.db 0xe2
      0043AF 94                    2226 	.db 0x94
      0043B0 80                    2227 	.db 0x80
      0043B1 E2                    2228 	.db 0xe2
      0043B2 94                    2229 	.db 0x94
      0043B3 80                    2230 	.db 0x80
      0043B4 E2                    2231 	.db 0xe2
      0043B5 94                    2232 	.db 0x94
      0043B6 AC                    2233 	.db 0xac
      0043B7 E2                    2234 	.db 0xe2
      0043B8 94                    2235 	.db 0x94
      0043B9 80                    2236 	.db 0x80
      0043BA E2                    2237 	.db 0xe2
      0043BB 94                    2238 	.db 0x94
      0043BC 80                    2239 	.db 0x80
      0043BD E2                    2240 	.db 0xe2
      0043BE 94                    2241 	.db 0x94
      0043BF 80                    2242 	.db 0x80
      0043C0 E2                    2243 	.db 0xe2
      0043C1 94                    2244 	.db 0x94
      0043C2 80                    2245 	.db 0x80
      0043C3 E2                    2246 	.db 0xe2
      0043C4 94                    2247 	.db 0x94
      0043C5 80                    2248 	.db 0x80
      0043C6 E2                    2249 	.db 0xe2
      0043C7 94                    2250 	.db 0x94
      0043C8 80                    2251 	.db 0x80
      0043C9 E2                    2252 	.db 0xe2
      0043CA 94                    2253 	.db 0x94
      0043CB 80                    2254 	.db 0x80
      0043CC E2                    2255 	.db 0xe2
      0043CD 94                    2256 	.db 0x94
      0043CE 80                    2257 	.db 0x80
      0043CF E2                    2258 	.db 0xe2
      0043D0 94                    2259 	.db 0x94
      0043D1 80                    2260 	.db 0x80
      0043D2 E2                    2261 	.db 0xe2
      0043D3 94                    2262 	.db 0x94
      0043D4 80                    2263 	.db 0x80
      0043D5 E2                    2264 	.db 0xe2
      0043D6 94                    2265 	.db 0x94
      0043D7 80                    2266 	.db 0x80
      0043D8 E2                    2267 	.db 0xe2
      0043D9 94                    2268 	.db 0x94
      0043DA 80                    2269 	.db 0x80
      0043DB E2                    2270 	.db 0xe2
      0043DC 94                    2271 	.db 0x94
      0043DD 80                    2272 	.db 0x80
      0043DE E2                    2273 	.db 0xe2
      0043DF 94                    2274 	.db 0x94
      0043E0 80                    2275 	.db 0x80
      0043E1 E2                    2276 	.db 0xe2
      0043E2 94                    2277 	.db 0x94
      0043E3 80                    2278 	.db 0x80
      0043E4 E2                    2279 	.db 0xe2
      0043E5 94                    2280 	.db 0x94
      0043E6 80                    2281 	.db 0x80
      0043E7 E2                    2282 	.db 0xe2
      0043E8 94                    2283 	.db 0x94
      0043E9 80                    2284 	.db 0x80
      0043EA E2                    2285 	.db 0xe2
      0043EB 94                    2286 	.db 0x94
      0043EC 80                    2287 	.db 0x80
      0043ED E2                    2288 	.db 0xe2
      0043EE 94                    2289 	.db 0x94
      0043EF 80                    2290 	.db 0x80
      0043F0 E2                    2291 	.db 0xe2
      0043F1 94                    2292 	.db 0x94
      0043F2 80                    2293 	.db 0x80
      0043F3 E2                    2294 	.db 0xe2
      0043F4 94                    2295 	.db 0x94
      0043F5 80                    2296 	.db 0x80
      0043F6 E2                    2297 	.db 0xe2
      0043F7 94                    2298 	.db 0x94
      0043F8 80                    2299 	.db 0x80
      0043F9 E2                    2300 	.db 0xe2
      0043FA 94                    2301 	.db 0x94
      0043FB 80                    2302 	.db 0x80
      0043FC E2                    2303 	.db 0xe2
      0043FD 94                    2304 	.db 0x94
      0043FE 80                    2305 	.db 0x80
      0043FF E2                    2306 	.db 0xe2
      004400 94                    2307 	.db 0x94
      004401 80                    2308 	.db 0x80
      004402 E2                    2309 	.db 0xe2
      004403 94                    2310 	.db 0x94
      004404 80                    2311 	.db 0x80
      004405 E2                    2312 	.db 0xe2
      004406 94                    2313 	.db 0x94
      004407 80                    2314 	.db 0x80
      004408 E2                    2315 	.db 0xe2
      004409 94                    2316 	.db 0x94
      00440A 80                    2317 	.db 0x80
      00440B E2                    2318 	.db 0xe2
      00440C 94                    2319 	.db 0x94
      00440D 80                    2320 	.db 0x80
      00440E E2                    2321 	.db 0xe2
      00440F 94                    2322 	.db 0x94
      004410 80                    2323 	.db 0x80
      004411 E2                    2324 	.db 0xe2
      004412 94                    2325 	.db 0x94
      004413 80                    2326 	.db 0x80
      004414 E2                    2327 	.db 0xe2
      004415 94                    2328 	.db 0x94
      004416 80                    2329 	.db 0x80
      004417 E2                    2330 	.db 0xe2
      004418 94                    2331 	.db 0x94
      004419 80                    2332 	.db 0x80
      00441A E2                    2333 	.db 0xe2
      00441B 94                    2334 	.db 0x94
      00441C 80                    2335 	.db 0x80
      00441D E2                    2336 	.db 0xe2
      00441E 94                    2337 	.db 0x94
      00441F 80                    2338 	.db 0x80
      004420 E2                    2339 	.db 0xe2
      004421 94                    2340 	.db 0x94
      004422 80                    2341 	.db 0x80
      004423 E2                    2342 	.db 0xe2
      004424 94                    2343 	.db 0x94
      004425 80                    2344 	.db 0x80
      004426 E2                    2345 	.db 0xe2
      004427 94                    2346 	.db 0x94
      004428 80                    2347 	.db 0x80
      004429 E2                    2348 	.db 0xe2
      00442A 94                    2349 	.db 0x94
      00442B 80                    2350 	.db 0x80
      00442C E2                    2351 	.db 0xe2
      00442D 94                    2352 	.db 0x94
      00442E 80                    2353 	.db 0x80
      00442F E2                    2354 	.db 0xe2
      004430 94                    2355 	.db 0x94
      004431 80                    2356 	.db 0x80
      004432 E2                    2357 	.db 0xe2
      004433 94                    2358 	.db 0x94
      004434 80                    2359 	.db 0x80
      004435 E2                    2360 	.db 0xe2
      004436 94                    2361 	.db 0x94
      004437 80                    2362 	.db 0x80
      004438 E2                    2363 	.db 0xe2
      004439 94                    2364 	.db 0x94
      00443A 80                    2365 	.db 0x80
      00443B E2                    2366 	.db 0xe2
      00443C 94                    2367 	.db 0x94
      00443D 90                    2368 	.db 0x90
      00443E 0A                    2369 	.db 0x0a
      00443F 0D                    2370 	.db 0x0d
      004440 00                    2371 	.db 0x00
                                   2372 	.area CSEG    (CODE)
                                   2373 	.area CONST   (CODE)
      004441                       2374 ___str_4:
      004441 E2                    2375 	.db 0xe2
      004442 94                    2376 	.db 0x94
      004443 82                    2377 	.db 0x82
      004444 20 20 43 6F 6D 6D 61  2378 	.ascii "  Command   "
             6E 64 20 20 20
      004450 E2                    2379 	.db 0xe2
      004451 94                    2380 	.db 0x94
      004452 82                    2381 	.db 0x82
      004453 20 20 20 20 20 20 20  2382 	.ascii "               Description                   "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20
      004480 E2                    2383 	.db 0xe2
      004481 94                    2384 	.db 0x94
      004482 82                    2385 	.db 0x82
      004483 0A                    2386 	.db 0x0a
      004484 0D                    2387 	.db 0x0d
      004485 00                    2388 	.db 0x00
                                   2389 	.area CSEG    (CODE)
                                   2390 	.area CONST   (CODE)
      004486                       2391 ___str_5:
      004486 E2                    2392 	.db 0xe2
      004487 94                    2393 	.db 0x94
      004488 9C                    2394 	.db 0x9c
      004489 E2                    2395 	.db 0xe2
      00448A 94                    2396 	.db 0x94
      00448B 80                    2397 	.db 0x80
      00448C E2                    2398 	.db 0xe2
      00448D 94                    2399 	.db 0x94
      00448E 80                    2400 	.db 0x80
      00448F E2                    2401 	.db 0xe2
      004490 94                    2402 	.db 0x94
      004491 80                    2403 	.db 0x80
      004492 E2                    2404 	.db 0xe2
      004493 94                    2405 	.db 0x94
      004494 80                    2406 	.db 0x80
      004495 E2                    2407 	.db 0xe2
      004496 94                    2408 	.db 0x94
      004497 80                    2409 	.db 0x80
      004498 E2                    2410 	.db 0xe2
      004499 94                    2411 	.db 0x94
      00449A 80                    2412 	.db 0x80
      00449B E2                    2413 	.db 0xe2
      00449C 94                    2414 	.db 0x94
      00449D 80                    2415 	.db 0x80
      00449E E2                    2416 	.db 0xe2
      00449F 94                    2417 	.db 0x94
      0044A0 80                    2418 	.db 0x80
      0044A1 E2                    2419 	.db 0xe2
      0044A2 94                    2420 	.db 0x94
      0044A3 80                    2421 	.db 0x80
      0044A4 E2                    2422 	.db 0xe2
      0044A5 94                    2423 	.db 0x94
      0044A6 80                    2424 	.db 0x80
      0044A7 E2                    2425 	.db 0xe2
      0044A8 94                    2426 	.db 0x94
      0044A9 80                    2427 	.db 0x80
      0044AA E2                    2428 	.db 0xe2
      0044AB 94                    2429 	.db 0x94
      0044AC 80                    2430 	.db 0x80
      0044AD E2                    2431 	.db 0xe2
      0044AE 94                    2432 	.db 0x94
      0044AF BC                    2433 	.db 0xbc
      0044B0 E2                    2434 	.db 0xe2
      0044B1 94                    2435 	.db 0x94
      0044B2 80                    2436 	.db 0x80
      0044B3 E2                    2437 	.db 0xe2
      0044B4 94                    2438 	.db 0x94
      0044B5 80                    2439 	.db 0x80
      0044B6 E2                    2440 	.db 0xe2
      0044B7 94                    2441 	.db 0x94
      0044B8 80                    2442 	.db 0x80
      0044B9 E2                    2443 	.db 0xe2
      0044BA 94                    2444 	.db 0x94
      0044BB 80                    2445 	.db 0x80
      0044BC E2                    2446 	.db 0xe2
      0044BD 94                    2447 	.db 0x94
      0044BE 80                    2448 	.db 0x80
      0044BF E2                    2449 	.db 0xe2
      0044C0 94                    2450 	.db 0x94
      0044C1 80                    2451 	.db 0x80
      0044C2 E2                    2452 	.db 0xe2
      0044C3 94                    2453 	.db 0x94
      0044C4 80                    2454 	.db 0x80
      0044C5 E2                    2455 	.db 0xe2
      0044C6 94                    2456 	.db 0x94
      0044C7 80                    2457 	.db 0x80
      0044C8 E2                    2458 	.db 0xe2
      0044C9 94                    2459 	.db 0x94
      0044CA 80                    2460 	.db 0x80
      0044CB E2                    2461 	.db 0xe2
      0044CC 94                    2462 	.db 0x94
      0044CD 80                    2463 	.db 0x80
      0044CE E2                    2464 	.db 0xe2
      0044CF 94                    2465 	.db 0x94
      0044D0 80                    2466 	.db 0x80
      0044D1 E2                    2467 	.db 0xe2
      0044D2 94                    2468 	.db 0x94
      0044D3 80                    2469 	.db 0x80
      0044D4 E2                    2470 	.db 0xe2
      0044D5 94                    2471 	.db 0x94
      0044D6 80                    2472 	.db 0x80
      0044D7 E2                    2473 	.db 0xe2
      0044D8 94                    2474 	.db 0x94
      0044D9 80                    2475 	.db 0x80
      0044DA E2                    2476 	.db 0xe2
      0044DB 94                    2477 	.db 0x94
      0044DC 80                    2478 	.db 0x80
      0044DD E2                    2479 	.db 0xe2
      0044DE 94                    2480 	.db 0x94
      0044DF 80                    2481 	.db 0x80
      0044E0 E2                    2482 	.db 0xe2
      0044E1 94                    2483 	.db 0x94
      0044E2 80                    2484 	.db 0x80
      0044E3 E2                    2485 	.db 0xe2
      0044E4 94                    2486 	.db 0x94
      0044E5 80                    2487 	.db 0x80
      0044E6 E2                    2488 	.db 0xe2
      0044E7 94                    2489 	.db 0x94
      0044E8 80                    2490 	.db 0x80
      0044E9 E2                    2491 	.db 0xe2
      0044EA 94                    2492 	.db 0x94
      0044EB 80                    2493 	.db 0x80
      0044EC E2                    2494 	.db 0xe2
      0044ED 94                    2495 	.db 0x94
      0044EE 80                    2496 	.db 0x80
      0044EF E2                    2497 	.db 0xe2
      0044F0 94                    2498 	.db 0x94
      0044F1 80                    2499 	.db 0x80
      0044F2 E2                    2500 	.db 0xe2
      0044F3 94                    2501 	.db 0x94
      0044F4 80                    2502 	.db 0x80
      0044F5 E2                    2503 	.db 0xe2
      0044F6 94                    2504 	.db 0x94
      0044F7 80                    2505 	.db 0x80
      0044F8 E2                    2506 	.db 0xe2
      0044F9 94                    2507 	.db 0x94
      0044FA 80                    2508 	.db 0x80
      0044FB E2                    2509 	.db 0xe2
      0044FC 94                    2510 	.db 0x94
      0044FD 80                    2511 	.db 0x80
      0044FE E2                    2512 	.db 0xe2
      0044FF 94                    2513 	.db 0x94
      004500 80                    2514 	.db 0x80
      004501 E2                    2515 	.db 0xe2
      004502 94                    2516 	.db 0x94
      004503 80                    2517 	.db 0x80
      004504 E2                    2518 	.db 0xe2
      004505 94                    2519 	.db 0x94
      004506 80                    2520 	.db 0x80
      004507 E2                    2521 	.db 0xe2
      004508 94                    2522 	.db 0x94
      004509 80                    2523 	.db 0x80
      00450A E2                    2524 	.db 0xe2
      00450B 94                    2525 	.db 0x94
      00450C 80                    2526 	.db 0x80
      00450D E2                    2527 	.db 0xe2
      00450E 94                    2528 	.db 0x94
      00450F 80                    2529 	.db 0x80
      004510 E2                    2530 	.db 0xe2
      004511 94                    2531 	.db 0x94
      004512 80                    2532 	.db 0x80
      004513 E2                    2533 	.db 0xe2
      004514 94                    2534 	.db 0x94
      004515 80                    2535 	.db 0x80
      004516 E2                    2536 	.db 0xe2
      004517 94                    2537 	.db 0x94
      004518 80                    2538 	.db 0x80
      004519 E2                    2539 	.db 0xe2
      00451A 94                    2540 	.db 0x94
      00451B 80                    2541 	.db 0x80
      00451C E2                    2542 	.db 0xe2
      00451D 94                    2543 	.db 0x94
      00451E 80                    2544 	.db 0x80
      00451F E2                    2545 	.db 0xe2
      004520 94                    2546 	.db 0x94
      004521 80                    2547 	.db 0x80
      004522 E2                    2548 	.db 0xe2
      004523 94                    2549 	.db 0x94
      004524 80                    2550 	.db 0x80
      004525 E2                    2551 	.db 0xe2
      004526 94                    2552 	.db 0x94
      004527 80                    2553 	.db 0x80
      004528 E2                    2554 	.db 0xe2
      004529 94                    2555 	.db 0x94
      00452A 80                    2556 	.db 0x80
      00452B E2                    2557 	.db 0xe2
      00452C 94                    2558 	.db 0x94
      00452D 80                    2559 	.db 0x80
      00452E E2                    2560 	.db 0xe2
      00452F 94                    2561 	.db 0x94
      004530 80                    2562 	.db 0x80
      004531 E2                    2563 	.db 0xe2
      004532 94                    2564 	.db 0x94
      004533 80                    2565 	.db 0x80
      004534 E2                    2566 	.db 0xe2
      004535 94                    2567 	.db 0x94
      004536 A4                    2568 	.db 0xa4
      004537 0A                    2569 	.db 0x0a
      004538 0D                    2570 	.db 0x0d
      004539 00                    2571 	.db 0x00
                                   2572 	.area CSEG    (CODE)
                                   2573 	.area CONST   (CODE)
      00453A                       2574 ___str_6:
      00453A E2                    2575 	.db 0xe2
      00453B 94                    2576 	.db 0x94
      00453C 82                    2577 	.db 0x82
      00453D 20 20 20 20 20 52 20  2578 	.ascii "     R      "
             20 20 20 20 20
      004549 E2                    2579 	.db 0xe2
      00454A 94                    2580 	.db 0x94
      00454B 82                    2581 	.db 0x82
      00454C 20 52 65 61 64 20 66  2582 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004578 E2                    2583 	.db 0xe2
      004579 94                    2584 	.db 0x94
      00457A 82                    2585 	.db 0x82
      00457B 0A                    2586 	.db 0x0a
      00457C 0D                    2587 	.db 0x0d
      00457D 00                    2588 	.db 0x00
                                   2589 	.area CSEG    (CODE)
                                   2590 	.area CONST   (CODE)
      00457E                       2591 ___str_7:
      00457E E2                    2592 	.db 0xe2
      00457F 94                    2593 	.db 0x94
      004580 82                    2594 	.db 0x82
      004581 20 20 20 20 20 57 20  2595 	.ascii "     W      "
             20 20 20 20 20
      00458D E2                    2596 	.db 0xe2
      00458E 94                    2597 	.db 0x94
      00458F 82                    2598 	.db 0x82
      004590 20 57 72 69 74 65 20  2599 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0045BC E2                    2600 	.db 0xe2
      0045BD 94                    2601 	.db 0x94
      0045BE 82                    2602 	.db 0x82
      0045BF 0A                    2603 	.db 0x0a
      0045C0 0D                    2604 	.db 0x0d
      0045C1 00                    2605 	.db 0x00
                                   2606 	.area CSEG    (CODE)
                                   2607 	.area CONST   (CODE)
      0045C2                       2608 ___str_8:
      0045C2 E2                    2609 	.db 0xe2
      0045C3 94                    2610 	.db 0x94
      0045C4 82                    2611 	.db 0x82
      0045C5 20 20 20 20 20 48 20  2612 	.ascii "     H      "
             20 20 20 20 20
      0045D1 E2                    2613 	.db 0xe2
      0045D2 94                    2614 	.db 0x94
      0045D3 82                    2615 	.db 0x82
      0045D4 20 44 69 73 70 6C 61  2616 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004600 E2                    2617 	.db 0xe2
      004601 94                    2618 	.db 0x94
      004602 82                    2619 	.db 0x82
      004603 0A                    2620 	.db 0x0a
      004604 0D                    2621 	.db 0x0d
      004605 00                    2622 	.db 0x00
                                   2623 	.area CSEG    (CODE)
                                   2624 	.area CONST   (CODE)
      004606                       2625 ___str_9:
      004606 E2                    2626 	.db 0xe2
      004607 94                    2627 	.db 0x94
      004608 82                    2628 	.db 0x82
      004609 20 20 20 20 20 58 20  2629 	.ascii "     X      "
             20 20 20 20 20
      004615 E2                    2630 	.db 0xe2
      004616 94                    2631 	.db 0x94
      004617 82                    2632 	.db 0x82
      004618 20 52 65 73 65 74 20  2633 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004644 E2                    2634 	.db 0xe2
      004645 94                    2635 	.db 0x94
      004646 82                    2636 	.db 0x82
      004647 0A                    2637 	.db 0x0a
      004648 0D                    2638 	.db 0x0d
      004649 00                    2639 	.db 0x00
                                   2640 	.area CSEG    (CODE)
                                   2641 	.area CONST   (CODE)
      00464A                       2642 ___str_10:
      00464A E2                    2643 	.db 0xe2
      00464B 94                    2644 	.db 0x94
      00464C 82                    2645 	.db 0x82
      00464D 20 20 20 20 20 3F 20  2646 	.ascii "     ?      "
             20 20 20 20 20
      004659 E2                    2647 	.db 0xe2
      00465A 94                    2648 	.db 0x94
      00465B 82                    2649 	.db 0x82
      00465C 20 44 69 73 70 6C 61  2650 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004688 E2                    2651 	.db 0xe2
      004689 94                    2652 	.db 0x94
      00468A 82                    2653 	.db 0x82
      00468B 0A                    2654 	.db 0x0a
      00468C 0D                    2655 	.db 0x0d
      00468D 00                    2656 	.db 0x00
                                   2657 	.area CSEG    (CODE)
                                   2658 	.area CONST   (CODE)
      00468E                       2659 ___str_11:
      00468E E2                    2660 	.db 0xe2
      00468F 94                    2661 	.db 0x94
      004690 82                    2662 	.db 0x82
      004691 20 20 20 20 20 51 20  2663 	.ascii "     Q      "
             20 20 20 20 20
      00469D E2                    2664 	.db 0xe2
      00469E 94                    2665 	.db 0x94
      00469F 82                    2666 	.db 0x82
      0046A0 20 51 75 69 74 20 70  2667 	.ascii " Quit program                              "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20
      0046CB E2                    2668 	.db 0xe2
      0046CC 94                    2669 	.db 0x94
      0046CD 82                    2670 	.db 0x82
      0046CE 0A                    2671 	.db 0x0a
      0046CF 0D                    2672 	.db 0x0d
      0046D0 00                    2673 	.db 0x00
                                   2674 	.area CSEG    (CODE)
                                   2675 	.area CONST   (CODE)
      0046D1                       2676 ___str_12:
      0046D1 E2                    2677 	.db 0xe2
      0046D2 94                    2678 	.db 0x94
      0046D3 94                    2679 	.db 0x94
      0046D4 E2                    2680 	.db 0xe2
      0046D5 94                    2681 	.db 0x94
      0046D6 80                    2682 	.db 0x80
      0046D7 E2                    2683 	.db 0xe2
      0046D8 94                    2684 	.db 0x94
      0046D9 80                    2685 	.db 0x80
      0046DA E2                    2686 	.db 0xe2
      0046DB 94                    2687 	.db 0x94
      0046DC 80                    2688 	.db 0x80
      0046DD E2                    2689 	.db 0xe2
      0046DE 94                    2690 	.db 0x94
      0046DF 80                    2691 	.db 0x80
      0046E0 E2                    2692 	.db 0xe2
      0046E1 94                    2693 	.db 0x94
      0046E2 80                    2694 	.db 0x80
      0046E3 E2                    2695 	.db 0xe2
      0046E4 94                    2696 	.db 0x94
      0046E5 80                    2697 	.db 0x80
      0046E6 E2                    2698 	.db 0xe2
      0046E7 94                    2699 	.db 0x94
      0046E8 80                    2700 	.db 0x80
      0046E9 E2                    2701 	.db 0xe2
      0046EA 94                    2702 	.db 0x94
      0046EB 80                    2703 	.db 0x80
      0046EC E2                    2704 	.db 0xe2
      0046ED 94                    2705 	.db 0x94
      0046EE 80                    2706 	.db 0x80
      0046EF E2                    2707 	.db 0xe2
      0046F0 94                    2708 	.db 0x94
      0046F1 80                    2709 	.db 0x80
      0046F2 E2                    2710 	.db 0xe2
      0046F3 94                    2711 	.db 0x94
      0046F4 80                    2712 	.db 0x80
      0046F5 E2                    2713 	.db 0xe2
      0046F6 94                    2714 	.db 0x94
      0046F7 80                    2715 	.db 0x80
      0046F8 E2                    2716 	.db 0xe2
      0046F9 94                    2717 	.db 0x94
      0046FA B4                    2718 	.db 0xb4
      0046FB E2                    2719 	.db 0xe2
      0046FC 94                    2720 	.db 0x94
      0046FD 80                    2721 	.db 0x80
      0046FE E2                    2722 	.db 0xe2
      0046FF 94                    2723 	.db 0x94
      004700 80                    2724 	.db 0x80
      004701 E2                    2725 	.db 0xe2
      004702 94                    2726 	.db 0x94
      004703 80                    2727 	.db 0x80
      004704 E2                    2728 	.db 0xe2
      004705 94                    2729 	.db 0x94
      004706 80                    2730 	.db 0x80
      004707 E2                    2731 	.db 0xe2
      004708 94                    2732 	.db 0x94
      004709 80                    2733 	.db 0x80
      00470A E2                    2734 	.db 0xe2
      00470B 94                    2735 	.db 0x94
      00470C 80                    2736 	.db 0x80
      00470D E2                    2737 	.db 0xe2
      00470E 94                    2738 	.db 0x94
      00470F 80                    2739 	.db 0x80
      004710 E2                    2740 	.db 0xe2
      004711 94                    2741 	.db 0x94
      004712 80                    2742 	.db 0x80
      004713 E2                    2743 	.db 0xe2
      004714 94                    2744 	.db 0x94
      004715 80                    2745 	.db 0x80
      004716 E2                    2746 	.db 0xe2
      004717 94                    2747 	.db 0x94
      004718 80                    2748 	.db 0x80
      004719 E2                    2749 	.db 0xe2
      00471A 94                    2750 	.db 0x94
      00471B 80                    2751 	.db 0x80
      00471C E2                    2752 	.db 0xe2
      00471D 94                    2753 	.db 0x94
      00471E 80                    2754 	.db 0x80
      00471F E2                    2755 	.db 0xe2
      004720 94                    2756 	.db 0x94
      004721 80                    2757 	.db 0x80
      004722 E2                    2758 	.db 0xe2
      004723 94                    2759 	.db 0x94
      004724 80                    2760 	.db 0x80
      004725 E2                    2761 	.db 0xe2
      004726 94                    2762 	.db 0x94
      004727 80                    2763 	.db 0x80
      004728 E2                    2764 	.db 0xe2
      004729 94                    2765 	.db 0x94
      00472A 80                    2766 	.db 0x80
      00472B E2                    2767 	.db 0xe2
      00472C 94                    2768 	.db 0x94
      00472D 80                    2769 	.db 0x80
      00472E E2                    2770 	.db 0xe2
      00472F 94                    2771 	.db 0x94
      004730 80                    2772 	.db 0x80
      004731 E2                    2773 	.db 0xe2
      004732 94                    2774 	.db 0x94
      004733 80                    2775 	.db 0x80
      004734 E2                    2776 	.db 0xe2
      004735 94                    2777 	.db 0x94
      004736 80                    2778 	.db 0x80
      004737 E2                    2779 	.db 0xe2
      004738 94                    2780 	.db 0x94
      004739 80                    2781 	.db 0x80
      00473A E2                    2782 	.db 0xe2
      00473B 94                    2783 	.db 0x94
      00473C 80                    2784 	.db 0x80
      00473D E2                    2785 	.db 0xe2
      00473E 94                    2786 	.db 0x94
      00473F 80                    2787 	.db 0x80
      004740 E2                    2788 	.db 0xe2
      004741 94                    2789 	.db 0x94
      004742 80                    2790 	.db 0x80
      004743 E2                    2791 	.db 0xe2
      004744 94                    2792 	.db 0x94
      004745 80                    2793 	.db 0x80
      004746 E2                    2794 	.db 0xe2
      004747 94                    2795 	.db 0x94
      004748 80                    2796 	.db 0x80
      004749 E2                    2797 	.db 0xe2
      00474A 94                    2798 	.db 0x94
      00474B 80                    2799 	.db 0x80
      00474C E2                    2800 	.db 0xe2
      00474D 94                    2801 	.db 0x94
      00474E 80                    2802 	.db 0x80
      00474F E2                    2803 	.db 0xe2
      004750 94                    2804 	.db 0x94
      004751 80                    2805 	.db 0x80
      004752 E2                    2806 	.db 0xe2
      004753 94                    2807 	.db 0x94
      004754 80                    2808 	.db 0x80
      004755 E2                    2809 	.db 0xe2
      004756 94                    2810 	.db 0x94
      004757 80                    2811 	.db 0x80
      004758 E2                    2812 	.db 0xe2
      004759 94                    2813 	.db 0x94
      00475A 80                    2814 	.db 0x80
      00475B E2                    2815 	.db 0xe2
      00475C 94                    2816 	.db 0x94
      00475D 80                    2817 	.db 0x80
      00475E E2                    2818 	.db 0xe2
      00475F 94                    2819 	.db 0x94
      004760 80                    2820 	.db 0x80
      004761 E2                    2821 	.db 0xe2
      004762 94                    2822 	.db 0x94
      004763 80                    2823 	.db 0x80
      004764 E2                    2824 	.db 0xe2
      004765 94                    2825 	.db 0x94
      004766 80                    2826 	.db 0x80
      004767 E2                    2827 	.db 0xe2
      004768 94                    2828 	.db 0x94
      004769 80                    2829 	.db 0x80
      00476A E2                    2830 	.db 0xe2
      00476B 94                    2831 	.db 0x94
      00476C 80                    2832 	.db 0x80
      00476D E2                    2833 	.db 0xe2
      00476E 94                    2834 	.db 0x94
      00476F 80                    2835 	.db 0x80
      004770 E2                    2836 	.db 0xe2
      004771 94                    2837 	.db 0x94
      004772 80                    2838 	.db 0x80
      004773 E2                    2839 	.db 0xe2
      004774 94                    2840 	.db 0x94
      004775 80                    2841 	.db 0x80
      004776 E2                    2842 	.db 0xe2
      004777 94                    2843 	.db 0x94
      004778 80                    2844 	.db 0x80
      004779 E2                    2845 	.db 0xe2
      00477A 94                    2846 	.db 0x94
      00477B 80                    2847 	.db 0x80
      00477C E2                    2848 	.db 0xe2
      00477D 94                    2849 	.db 0x94
      00477E 80                    2850 	.db 0x80
      00477F E2                    2851 	.db 0xe2
      004780 94                    2852 	.db 0x94
      004781 98                    2853 	.db 0x98
      004782 0A                    2854 	.db 0x0a
      004783 0D                    2855 	.db 0x0d
      004784 00                    2856 	.db 0x00
                                   2857 	.area CSEG    (CODE)
                                   2858 	.area CONST   (CODE)
      004785                       2859 ___str_13:
      004785 24 20 25 63           2860 	.ascii "$ %c"
      004789 0A                    2861 	.db 0x0a
      00478A 0D                    2862 	.db 0x0d
      00478B 00                    2863 	.db 0x00
                                   2864 	.area CSEG    (CODE)
                                   2865 	.area CONST   (CODE)
      00478C                       2866 ___str_14:
      00478C 0A                    2867 	.db 0x0a
      00478D E2                    2868 	.db 0xe2
      00478E 94                    2869 	.db 0x94
      00478F 8C                    2870 	.db 0x8c
      004790 E2                    2871 	.db 0xe2
      004791 94                    2872 	.db 0x94
      004792 80                    2873 	.db 0x80
      004793 E2                    2874 	.db 0xe2
      004794 94                    2875 	.db 0x94
      004795 80                    2876 	.db 0x80
      004796 E2                    2877 	.db 0xe2
      004797 94                    2878 	.db 0x94
      004798 80                    2879 	.db 0x80
      004799 E2                    2880 	.db 0xe2
      00479A 94                    2881 	.db 0x94
      00479B 80                    2882 	.db 0x80
      00479C E2                    2883 	.db 0xe2
      00479D 94                    2884 	.db 0x94
      00479E 80                    2885 	.db 0x80
      00479F E2                    2886 	.db 0xe2
      0047A0 94                    2887 	.db 0x94
      0047A1 80                    2888 	.db 0x80
      0047A2 E2                    2889 	.db 0xe2
      0047A3 94                    2890 	.db 0x94
      0047A4 80                    2891 	.db 0x80
      0047A5 E2                    2892 	.db 0xe2
      0047A6 94                    2893 	.db 0x94
      0047A7 80                    2894 	.db 0x80
      0047A8 E2                    2895 	.db 0xe2
      0047A9 94                    2896 	.db 0x94
      0047AA 80                    2897 	.db 0x80
      0047AB E2                    2898 	.db 0xe2
      0047AC 94                    2899 	.db 0x94
      0047AD 80                    2900 	.db 0x80
      0047AE E2                    2901 	.db 0xe2
      0047AF 94                    2902 	.db 0x94
      0047B0 80                    2903 	.db 0x80
      0047B1 E2                    2904 	.db 0xe2
      0047B2 94                    2905 	.db 0x94
      0047B3 80                    2906 	.db 0x80
      0047B4 E2                    2907 	.db 0xe2
      0047B5 94                    2908 	.db 0x94
      0047B6 80                    2909 	.db 0x80
      0047B7 E2                    2910 	.db 0xe2
      0047B8 94                    2911 	.db 0x94
      0047B9 80                    2912 	.db 0x80
      0047BA E2                    2913 	.db 0xe2
      0047BB 94                    2914 	.db 0x94
      0047BC 80                    2915 	.db 0x80
      0047BD 20 57 52 49 54 45 20  2916 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      0047CE E2                    2917 	.db 0xe2
      0047CF 94                    2918 	.db 0x94
      0047D0 80                    2919 	.db 0x80
      0047D1 E2                    2920 	.db 0xe2
      0047D2 94                    2921 	.db 0x94
      0047D3 80                    2922 	.db 0x80
      0047D4 E2                    2923 	.db 0xe2
      0047D5 94                    2924 	.db 0x94
      0047D6 80                    2925 	.db 0x80
      0047D7 E2                    2926 	.db 0xe2
      0047D8 94                    2927 	.db 0x94
      0047D9 80                    2928 	.db 0x80
      0047DA E2                    2929 	.db 0xe2
      0047DB 94                    2930 	.db 0x94
      0047DC 80                    2931 	.db 0x80
      0047DD E2                    2932 	.db 0xe2
      0047DE 94                    2933 	.db 0x94
      0047DF 80                    2934 	.db 0x80
      0047E0 E2                    2935 	.db 0xe2
      0047E1 94                    2936 	.db 0x94
      0047E2 80                    2937 	.db 0x80
      0047E3 E2                    2938 	.db 0xe2
      0047E4 94                    2939 	.db 0x94
      0047E5 80                    2940 	.db 0x80
      0047E6 E2                    2941 	.db 0xe2
      0047E7 94                    2942 	.db 0x94
      0047E8 80                    2943 	.db 0x80
      0047E9 E2                    2944 	.db 0xe2
      0047EA 94                    2945 	.db 0x94
      0047EB 80                    2946 	.db 0x80
      0047EC E2                    2947 	.db 0xe2
      0047ED 94                    2948 	.db 0x94
      0047EE 80                    2949 	.db 0x80
      0047EF E2                    2950 	.db 0xe2
      0047F0 94                    2951 	.db 0x94
      0047F1 80                    2952 	.db 0x80
      0047F2 E2                    2953 	.db 0xe2
      0047F3 94                    2954 	.db 0x94
      0047F4 80                    2955 	.db 0x80
      0047F5 E2                    2956 	.db 0xe2
      0047F6 94                    2957 	.db 0x94
      0047F7 80                    2958 	.db 0x80
      0047F8 E2                    2959 	.db 0xe2
      0047F9 94                    2960 	.db 0x94
      0047FA 90                    2961 	.db 0x90
      0047FB 0A                    2962 	.db 0x0a
      0047FC 00                    2963 	.db 0x00
                                   2964 	.area CSEG    (CODE)
                                   2965 	.area CONST   (CODE)
      0047FD                       2966 ___str_15:
      0047FD 7C 20 57 72 69 74 69  2967 	.ascii "| Writing at Address 0x%02X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 32 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      00482F 0A                    2968 	.db 0x0a
      004830 0D                    2969 	.db 0x0d
      004831 00                    2970 	.db 0x00
                                   2971 	.area CSEG    (CODE)
                                   2972 	.area CONST   (CODE)
      004832                       2973 ___str_16:
      004832 49 4E 56 41 4C 49 44  2974 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      00483F 0A                    2975 	.db 0x0a
      004840 0D                    2976 	.db 0x0d
      004841 00                    2977 	.db 0x00
                                   2978 	.area CSEG    (CODE)
                                   2979 	.area CONST   (CODE)
      004842                       2980 ___str_17:
      004842 E2                    2981 	.db 0xe2
      004843 94                    2982 	.db 0x94
      004844 82                    2983 	.db 0x82
      004845 20 45 6E 74 65 72 20  2984 	.ascii " Enter address (hex): "
             61 64 64 72 65 73 73
             20 28 68 65 78 29 3A
             20
      00485B 00                    2985 	.db 0x00
                                   2986 	.area CSEG    (CODE)
                                   2987 	.area CONST   (CODE)
      00485C                       2988 ___str_18:
      00485C E2                    2989 	.db 0xe2
      00485D 94                    2990 	.db 0x94
      00485E 82                    2991 	.db 0x82
      00485F 20 45 6E 74 65 72 20  2992 	.ascii " Enter data (hex): "
             64 61 74 61 20 28 68
             65 78 29 3A 20
      004872 00                    2993 	.db 0x00
                                   2994 	.area CSEG    (CODE)
                                   2995 	.area CONST   (CODE)
      004873                       2996 ___str_19:
      004873 45 72 72 6F 72 3A 20  2997 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      00489B 0A                    2998 	.db 0x0a
      00489C 0D                    2999 	.db 0x0d
      00489D 00                    3000 	.db 0x00
                                   3001 	.area CSEG    (CODE)
                                   3002 	.area CONST   (CODE)
      00489E                       3003 ___str_20:
      00489E 45 72 72 6F 72 3A 20  3004 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      0048BE 0A                    3005 	.db 0x0a
      0048BF 0D                    3006 	.db 0x0d
      0048C0 00                    3007 	.db 0x00
                                   3008 	.area CSEG    (CODE)
                                   3009 	.area CONST   (CODE)
      0048C1                       3010 ___str_21:
      0048C1 45 72 72 6F 72 3A 20  3011 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      0048D7 0A                    3012 	.db 0x0a
      0048D8 0D                    3013 	.db 0x0d
      0048D9 00                    3014 	.db 0x00
                                   3015 	.area CSEG    (CODE)
                                   3016 	.area CONST   (CODE)
      0048DA                       3017 ___str_22:
      0048DA E2                    3018 	.db 0xe2
      0048DB 94                    3019 	.db 0x94
      0048DC 82                    3020 	.db 0x82
      0048DD 20 57 72 69 74 65 20  3021 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      00490C E2                    3022 	.db 0xe2
      00490D 94                    3023 	.db 0x94
      00490E 82                    3024 	.db 0x82
      00490F 0A                    3025 	.db 0x0a
      004910 00                    3026 	.db 0x00
                                   3027 	.area CSEG    (CODE)
                                   3028 	.area CONST   (CODE)
      004911                       3029 ___str_23:
      004911 E2                    3030 	.db 0xe2
      004912 94                    3031 	.db 0x94
      004913 94                    3032 	.db 0x94
      004914 E2                    3033 	.db 0xe2
      004915 94                    3034 	.db 0x94
      004916 80                    3035 	.db 0x80
      004917 E2                    3036 	.db 0xe2
      004918 94                    3037 	.db 0x94
      004919 80                    3038 	.db 0x80
      00491A E2                    3039 	.db 0xe2
      00491B 94                    3040 	.db 0x94
      00491C 80                    3041 	.db 0x80
      00491D E2                    3042 	.db 0xe2
      00491E 94                    3043 	.db 0x94
      00491F 80                    3044 	.db 0x80
      004920 E2                    3045 	.db 0xe2
      004921 94                    3046 	.db 0x94
      004922 80                    3047 	.db 0x80
      004923 E2                    3048 	.db 0xe2
      004924 94                    3049 	.db 0x94
      004925 80                    3050 	.db 0x80
      004926 E2                    3051 	.db 0xe2
      004927 94                    3052 	.db 0x94
      004928 80                    3053 	.db 0x80
      004929 E2                    3054 	.db 0xe2
      00492A 94                    3055 	.db 0x94
      00492B 80                    3056 	.db 0x80
      00492C E2                    3057 	.db 0xe2
      00492D 94                    3058 	.db 0x94
      00492E 80                    3059 	.db 0x80
      00492F E2                    3060 	.db 0xe2
      004930 94                    3061 	.db 0x94
      004931 80                    3062 	.db 0x80
      004932 E2                    3063 	.db 0xe2
      004933 94                    3064 	.db 0x94
      004934 80                    3065 	.db 0x80
      004935 E2                    3066 	.db 0xe2
      004936 94                    3067 	.db 0x94
      004937 80                    3068 	.db 0x80
      004938 E2                    3069 	.db 0xe2
      004939 94                    3070 	.db 0x94
      00493A 80                    3071 	.db 0x80
      00493B E2                    3072 	.db 0xe2
      00493C 94                    3073 	.db 0x94
      00493D 80                    3074 	.db 0x80
      00493E E2                    3075 	.db 0xe2
      00493F 94                    3076 	.db 0x94
      004940 80                    3077 	.db 0x80
      004941 E2                    3078 	.db 0xe2
      004942 94                    3079 	.db 0x94
      004943 80                    3080 	.db 0x80
      004944 E2                    3081 	.db 0xe2
      004945 94                    3082 	.db 0x94
      004946 80                    3083 	.db 0x80
      004947 E2                    3084 	.db 0xe2
      004948 94                    3085 	.db 0x94
      004949 80                    3086 	.db 0x80
      00494A E2                    3087 	.db 0xe2
      00494B 94                    3088 	.db 0x94
      00494C 80                    3089 	.db 0x80
      00494D E2                    3090 	.db 0xe2
      00494E 94                    3091 	.db 0x94
      00494F 80                    3092 	.db 0x80
      004950 E2                    3093 	.db 0xe2
      004951 94                    3094 	.db 0x94
      004952 80                    3095 	.db 0x80
      004953 E2                    3096 	.db 0xe2
      004954 94                    3097 	.db 0x94
      004955 80                    3098 	.db 0x80
      004956 E2                    3099 	.db 0xe2
      004957 94                    3100 	.db 0x94
      004958 80                    3101 	.db 0x80
      004959 E2                    3102 	.db 0xe2
      00495A 94                    3103 	.db 0x94
      00495B 80                    3104 	.db 0x80
      00495C E2                    3105 	.db 0xe2
      00495D 94                    3106 	.db 0x94
      00495E 80                    3107 	.db 0x80
      00495F E2                    3108 	.db 0xe2
      004960 94                    3109 	.db 0x94
      004961 80                    3110 	.db 0x80
      004962 E2                    3111 	.db 0xe2
      004963 94                    3112 	.db 0x94
      004964 80                    3113 	.db 0x80
      004965 E2                    3114 	.db 0xe2
      004966 94                    3115 	.db 0x94
      004967 80                    3116 	.db 0x80
      004968 E2                    3117 	.db 0xe2
      004969 94                    3118 	.db 0x94
      00496A 80                    3119 	.db 0x80
      00496B E2                    3120 	.db 0xe2
      00496C 94                    3121 	.db 0x94
      00496D 80                    3122 	.db 0x80
      00496E E2                    3123 	.db 0xe2
      00496F 94                    3124 	.db 0x94
      004970 80                    3125 	.db 0x80
      004971 E2                    3126 	.db 0xe2
      004972 94                    3127 	.db 0x94
      004973 80                    3128 	.db 0x80
      004974 E2                    3129 	.db 0xe2
      004975 94                    3130 	.db 0x94
      004976 80                    3131 	.db 0x80
      004977 E2                    3132 	.db 0xe2
      004978 94                    3133 	.db 0x94
      004979 80                    3134 	.db 0x80
      00497A E2                    3135 	.db 0xe2
      00497B 94                    3136 	.db 0x94
      00497C 80                    3137 	.db 0x80
      00497D E2                    3138 	.db 0xe2
      00497E 94                    3139 	.db 0x94
      00497F 80                    3140 	.db 0x80
      004980 E2                    3141 	.db 0xe2
      004981 94                    3142 	.db 0x94
      004982 80                    3143 	.db 0x80
      004983 E2                    3144 	.db 0xe2
      004984 94                    3145 	.db 0x94
      004985 80                    3146 	.db 0x80
      004986 E2                    3147 	.db 0xe2
      004987 94                    3148 	.db 0x94
      004988 80                    3149 	.db 0x80
      004989 E2                    3150 	.db 0xe2
      00498A 94                    3151 	.db 0x94
      00498B 80                    3152 	.db 0x80
      00498C E2                    3153 	.db 0xe2
      00498D 94                    3154 	.db 0x94
      00498E 80                    3155 	.db 0x80
      00498F E2                    3156 	.db 0xe2
      004990 94                    3157 	.db 0x94
      004991 80                    3158 	.db 0x80
      004992 E2                    3159 	.db 0xe2
      004993 94                    3160 	.db 0x94
      004994 80                    3161 	.db 0x80
      004995 E2                    3162 	.db 0xe2
      004996 94                    3163 	.db 0x94
      004997 80                    3164 	.db 0x80
      004998 E2                    3165 	.db 0xe2
      004999 94                    3166 	.db 0x94
      00499A 80                    3167 	.db 0x80
      00499B E2                    3168 	.db 0xe2
      00499C 94                    3169 	.db 0x94
      00499D 80                    3170 	.db 0x80
      00499E E2                    3171 	.db 0xe2
      00499F 94                    3172 	.db 0x94
      0049A0 80                    3173 	.db 0x80
      0049A1 E2                    3174 	.db 0xe2
      0049A2 94                    3175 	.db 0x94
      0049A3 98                    3176 	.db 0x98
      0049A4 0A                    3177 	.db 0x0a
      0049A5 00                    3178 	.db 0x00
                                   3179 	.area CSEG    (CODE)
                                   3180 	.area CONST   (CODE)
      0049A6                       3181 ___str_24:
      0049A6 45 72 72 6F 72 3A 20  3182 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      0049D3 0A                    3183 	.db 0x0a
      0049D4 0D                    3184 	.db 0x0d
      0049D5 00                    3185 	.db 0x00
                                   3186 	.area CSEG    (CODE)
                                   3187 	.area CONST   (CODE)
      0049D6                       3188 ___str_25:
      0049D6 45 72 72 6F 72 3A 20  3189 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      004A02 0A                    3190 	.db 0x0a
      004A03 0D                    3191 	.db 0x0d
      004A04 00                    3192 	.db 0x00
                                   3193 	.area CSEG    (CODE)
                                   3194 	.area CONST   (CODE)
      004A05                       3195 ___str_26:
      004A05 41 43 4B 20 44 49 44  3196 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      004A17 0A                    3197 	.db 0x0a
      004A18 0D                    3198 	.db 0x0d
      004A19 00                    3199 	.db 0x00
                                   3200 	.area CSEG    (CODE)
                                   3201 	.area CONST   (CODE)
      004A1A                       3202 ___str_27:
      004A1A 54 72 61 6E 73 6D 69  3203 	.ascii "Transmission successfull"
             73 73 69 6F 6E 20 73
             75 63 63 65 73 73 66
             75 6C 6C
      004A32 0A                    3204 	.db 0x0a
      004A33 0D                    3205 	.db 0x0d
      004A34 00                    3206 	.db 0x00
                                   3207 	.area CSEG    (CODE)
                                   3208 	.area CONST   (CODE)
      004A35                       3209 ___str_28:
      004A35 57 72 69 74 69 6E 67  3210 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      004A5A 0A                    3211 	.db 0x0a
      004A5B 0D                    3212 	.db 0x0d
      004A5C 00                    3213 	.db 0x00
                                   3214 	.area CSEG    (CODE)
                                   3215 	.area CONST   (CODE)
      004A5D                       3216 ___str_29:
      004A5D 52 65 61 64 20 62 61  3217 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      004A82 0A                    3218 	.db 0x0a
      004A83 0D                    3219 	.db 0x0d
      004A84 00                    3220 	.db 0x00
                                   3221 	.area CSEG    (CODE)
                                   3222 	.area CONST   (CODE)
      004A85                       3223 ___str_30:
      004A85 4D 41 54 43 48 20 2D  3224 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      004AA3 0A                    3225 	.db 0x0a
      004AA4 0D                    3226 	.db 0x0d
      004AA5 00                    3227 	.db 0x00
                                   3228 	.area CSEG    (CODE)
                                   3229 	.area CONST   (CODE)
      004AA6                       3230 ___str_31:
      004AA6 45 52 52 4F 52 20 2D  3231 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      004ABC 0A                    3232 	.db 0x0a
      004ABD 0D                    3233 	.db 0x0d
      004ABE 00                    3234 	.db 0x00
                                   3235 	.area CSEG    (CODE)
                                   3236 	.area XINIT   (CODE)
                                   3237 	.area CABS    (ABS,CODE)
