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
                                     11 	.globl _main
                                     12 	.globl _getchar
                                     13 	.globl _putchar
                                     14 	.globl _printf
                                     15 	.globl _P5_7
                                     16 	.globl _P5_6
                                     17 	.globl _P5_5
                                     18 	.globl _P5_4
                                     19 	.globl _P5_3
                                     20 	.globl _P5_2
                                     21 	.globl _P5_1
                                     22 	.globl _P5_0
                                     23 	.globl _P4_7
                                     24 	.globl _P4_6
                                     25 	.globl _P4_5
                                     26 	.globl _P4_4
                                     27 	.globl _P4_3
                                     28 	.globl _P4_2
                                     29 	.globl _P4_1
                                     30 	.globl _P4_0
                                     31 	.globl _PX0L
                                     32 	.globl _PT0L
                                     33 	.globl _PX1L
                                     34 	.globl _PT1L
                                     35 	.globl _PSL
                                     36 	.globl _PT2L
                                     37 	.globl _PPCL
                                     38 	.globl _EC
                                     39 	.globl _CCF0
                                     40 	.globl _CCF1
                                     41 	.globl _CCF2
                                     42 	.globl _CCF3
                                     43 	.globl _CCF4
                                     44 	.globl _CR
                                     45 	.globl _CF
                                     46 	.globl _TF2
                                     47 	.globl _EXF2
                                     48 	.globl _RCLK
                                     49 	.globl _TCLK
                                     50 	.globl _EXEN2
                                     51 	.globl _TR2
                                     52 	.globl _C_T2
                                     53 	.globl _CP_RL2
                                     54 	.globl _T2CON_7
                                     55 	.globl _T2CON_6
                                     56 	.globl _T2CON_5
                                     57 	.globl _T2CON_4
                                     58 	.globl _T2CON_3
                                     59 	.globl _T2CON_2
                                     60 	.globl _T2CON_1
                                     61 	.globl _T2CON_0
                                     62 	.globl _PT2
                                     63 	.globl _ET2
                                     64 	.globl _CY
                                     65 	.globl _AC
                                     66 	.globl _F0
                                     67 	.globl _RS1
                                     68 	.globl _RS0
                                     69 	.globl _OV
                                     70 	.globl _F1
                                     71 	.globl _P
                                     72 	.globl _PS
                                     73 	.globl _PT1
                                     74 	.globl _PX1
                                     75 	.globl _PT0
                                     76 	.globl _PX0
                                     77 	.globl _RD
                                     78 	.globl _WR
                                     79 	.globl _T1
                                     80 	.globl _T0
                                     81 	.globl _INT1
                                     82 	.globl _INT0
                                     83 	.globl _TXD
                                     84 	.globl _RXD
                                     85 	.globl _P3_7
                                     86 	.globl _P3_6
                                     87 	.globl _P3_5
                                     88 	.globl _P3_4
                                     89 	.globl _P3_3
                                     90 	.globl _P3_2
                                     91 	.globl _P3_1
                                     92 	.globl _P3_0
                                     93 	.globl _EA
                                     94 	.globl _ES
                                     95 	.globl _ET1
                                     96 	.globl _EX1
                                     97 	.globl _ET0
                                     98 	.globl _EX0
                                     99 	.globl _P2_7
                                    100 	.globl _P2_6
                                    101 	.globl _P2_5
                                    102 	.globl _P2_4
                                    103 	.globl _P2_3
                                    104 	.globl _P2_2
                                    105 	.globl _P2_1
                                    106 	.globl _P2_0
                                    107 	.globl _SM0
                                    108 	.globl _SM1
                                    109 	.globl _SM2
                                    110 	.globl _REN
                                    111 	.globl _TB8
                                    112 	.globl _RB8
                                    113 	.globl _TI
                                    114 	.globl _RI
                                    115 	.globl _P1_7
                                    116 	.globl _P1_6
                                    117 	.globl _P1_5
                                    118 	.globl _P1_4
                                    119 	.globl _P1_3
                                    120 	.globl _P1_2
                                    121 	.globl _P1_1
                                    122 	.globl _P1_0
                                    123 	.globl _TF1
                                    124 	.globl _TR1
                                    125 	.globl _TF0
                                    126 	.globl _TR0
                                    127 	.globl _IE1
                                    128 	.globl _IT1
                                    129 	.globl _IE0
                                    130 	.globl _IT0
                                    131 	.globl _P0_7
                                    132 	.globl _P0_6
                                    133 	.globl _P0_5
                                    134 	.globl _P0_4
                                    135 	.globl _P0_3
                                    136 	.globl _P0_2
                                    137 	.globl _P0_1
                                    138 	.globl _P0_0
                                    139 	.globl _EECON
                                    140 	.globl _KBF
                                    141 	.globl _KBE
                                    142 	.globl _KBLS
                                    143 	.globl _BRL
                                    144 	.globl _BDRCON
                                    145 	.globl _T2MOD
                                    146 	.globl _SPDAT
                                    147 	.globl _SPSTA
                                    148 	.globl _SPCON
                                    149 	.globl _SADEN
                                    150 	.globl _SADDR
                                    151 	.globl _WDTPRG
                                    152 	.globl _WDTRST
                                    153 	.globl _P5
                                    154 	.globl _P4
                                    155 	.globl _IPH1
                                    156 	.globl _IPL1
                                    157 	.globl _IPH0
                                    158 	.globl _IPL0
                                    159 	.globl _IEN1
                                    160 	.globl _IEN0
                                    161 	.globl _CMOD
                                    162 	.globl _CL
                                    163 	.globl _CH
                                    164 	.globl _CCON
                                    165 	.globl _CCAPM4
                                    166 	.globl _CCAPM3
                                    167 	.globl _CCAPM2
                                    168 	.globl _CCAPM1
                                    169 	.globl _CCAPM0
                                    170 	.globl _CCAP4L
                                    171 	.globl _CCAP3L
                                    172 	.globl _CCAP2L
                                    173 	.globl _CCAP1L
                                    174 	.globl _CCAP0L
                                    175 	.globl _CCAP4H
                                    176 	.globl _CCAP3H
                                    177 	.globl _CCAP2H
                                    178 	.globl _CCAP1H
                                    179 	.globl _CCAP0H
                                    180 	.globl _CKCON1
                                    181 	.globl _CKCON0
                                    182 	.globl _CKRL
                                    183 	.globl _AUXR1
                                    184 	.globl _AUXR
                                    185 	.globl _TH2
                                    186 	.globl _TL2
                                    187 	.globl _RCAP2H
                                    188 	.globl _RCAP2L
                                    189 	.globl _T2CON
                                    190 	.globl _B
                                    191 	.globl _ACC
                                    192 	.globl _PSW
                                    193 	.globl _IP
                                    194 	.globl _P3
                                    195 	.globl _IE
                                    196 	.globl _P2
                                    197 	.globl _SBUF
                                    198 	.globl _SCON
                                    199 	.globl _P1
                                    200 	.globl _TH1
                                    201 	.globl _TH0
                                    202 	.globl _TL1
                                    203 	.globl _TL0
                                    204 	.globl _TMOD
                                    205 	.globl _TCON
                                    206 	.globl _PCON
                                    207 	.globl _DPH
                                    208 	.globl _DPL
                                    209 	.globl _SP
                                    210 	.globl _P0
                                    211 	.globl _eeprom_write_PARM_2
                                    212 	.globl _ACK
                                    213 	.globl _eeprom_write
                                    214 	.globl _eeprom_read
                                    215 	.globl _i2c_write
                                    216 	.globl _i2c_read
                                    217 	.globl _i2c_start
                                    218 	.globl _i2c_stop
                                    219 	.globl _i2c_delay
                                    220 ;--------------------------------------------------------
                                    221 ; special function registers
                                    222 ;--------------------------------------------------------
                                    223 	.area RSEG    (ABS,DATA)
      000000                        224 	.org 0x0000
                           000080   225 _P0	=	0x0080
                           000081   226 _SP	=	0x0081
                           000082   227 _DPL	=	0x0082
                           000083   228 _DPH	=	0x0083
                           000087   229 _PCON	=	0x0087
                           000088   230 _TCON	=	0x0088
                           000089   231 _TMOD	=	0x0089
                           00008A   232 _TL0	=	0x008a
                           00008B   233 _TL1	=	0x008b
                           00008C   234 _TH0	=	0x008c
                           00008D   235 _TH1	=	0x008d
                           000090   236 _P1	=	0x0090
                           000098   237 _SCON	=	0x0098
                           000099   238 _SBUF	=	0x0099
                           0000A0   239 _P2	=	0x00a0
                           0000A8   240 _IE	=	0x00a8
                           0000B0   241 _P3	=	0x00b0
                           0000B8   242 _IP	=	0x00b8
                           0000D0   243 _PSW	=	0x00d0
                           0000E0   244 _ACC	=	0x00e0
                           0000F0   245 _B	=	0x00f0
                           0000C8   246 _T2CON	=	0x00c8
                           0000CA   247 _RCAP2L	=	0x00ca
                           0000CB   248 _RCAP2H	=	0x00cb
                           0000CC   249 _TL2	=	0x00cc
                           0000CD   250 _TH2	=	0x00cd
                           00008E   251 _AUXR	=	0x008e
                           0000A2   252 _AUXR1	=	0x00a2
                           000097   253 _CKRL	=	0x0097
                           00008F   254 _CKCON0	=	0x008f
                           0000AF   255 _CKCON1	=	0x00af
                           0000FA   256 _CCAP0H	=	0x00fa
                           0000FB   257 _CCAP1H	=	0x00fb
                           0000FC   258 _CCAP2H	=	0x00fc
                           0000FD   259 _CCAP3H	=	0x00fd
                           0000FE   260 _CCAP4H	=	0x00fe
                           0000EA   261 _CCAP0L	=	0x00ea
                           0000EB   262 _CCAP1L	=	0x00eb
                           0000EC   263 _CCAP2L	=	0x00ec
                           0000ED   264 _CCAP3L	=	0x00ed
                           0000EE   265 _CCAP4L	=	0x00ee
                           0000DA   266 _CCAPM0	=	0x00da
                           0000DB   267 _CCAPM1	=	0x00db
                           0000DC   268 _CCAPM2	=	0x00dc
                           0000DD   269 _CCAPM3	=	0x00dd
                           0000DE   270 _CCAPM4	=	0x00de
                           0000D8   271 _CCON	=	0x00d8
                           0000F9   272 _CH	=	0x00f9
                           0000E9   273 _CL	=	0x00e9
                           0000D9   274 _CMOD	=	0x00d9
                           0000A8   275 _IEN0	=	0x00a8
                           0000B1   276 _IEN1	=	0x00b1
                           0000B8   277 _IPL0	=	0x00b8
                           0000B7   278 _IPH0	=	0x00b7
                           0000B2   279 _IPL1	=	0x00b2
                           0000B3   280 _IPH1	=	0x00b3
                           0000C0   281 _P4	=	0x00c0
                           0000E8   282 _P5	=	0x00e8
                           0000A6   283 _WDTRST	=	0x00a6
                           0000A7   284 _WDTPRG	=	0x00a7
                           0000A9   285 _SADDR	=	0x00a9
                           0000B9   286 _SADEN	=	0x00b9
                           0000C3   287 _SPCON	=	0x00c3
                           0000C4   288 _SPSTA	=	0x00c4
                           0000C5   289 _SPDAT	=	0x00c5
                           0000C9   290 _T2MOD	=	0x00c9
                           00009B   291 _BDRCON	=	0x009b
                           00009A   292 _BRL	=	0x009a
                           00009C   293 _KBLS	=	0x009c
                           00009D   294 _KBE	=	0x009d
                           00009E   295 _KBF	=	0x009e
                           0000D2   296 _EECON	=	0x00d2
                                    297 ;--------------------------------------------------------
                                    298 ; special function bits
                                    299 ;--------------------------------------------------------
                                    300 	.area RSEG    (ABS,DATA)
      000000                        301 	.org 0x0000
                           000080   302 _P0_0	=	0x0080
                           000081   303 _P0_1	=	0x0081
                           000082   304 _P0_2	=	0x0082
                           000083   305 _P0_3	=	0x0083
                           000084   306 _P0_4	=	0x0084
                           000085   307 _P0_5	=	0x0085
                           000086   308 _P0_6	=	0x0086
                           000087   309 _P0_7	=	0x0087
                           000088   310 _IT0	=	0x0088
                           000089   311 _IE0	=	0x0089
                           00008A   312 _IT1	=	0x008a
                           00008B   313 _IE1	=	0x008b
                           00008C   314 _TR0	=	0x008c
                           00008D   315 _TF0	=	0x008d
                           00008E   316 _TR1	=	0x008e
                           00008F   317 _TF1	=	0x008f
                           000090   318 _P1_0	=	0x0090
                           000091   319 _P1_1	=	0x0091
                           000092   320 _P1_2	=	0x0092
                           000093   321 _P1_3	=	0x0093
                           000094   322 _P1_4	=	0x0094
                           000095   323 _P1_5	=	0x0095
                           000096   324 _P1_6	=	0x0096
                           000097   325 _P1_7	=	0x0097
                           000098   326 _RI	=	0x0098
                           000099   327 _TI	=	0x0099
                           00009A   328 _RB8	=	0x009a
                           00009B   329 _TB8	=	0x009b
                           00009C   330 _REN	=	0x009c
                           00009D   331 _SM2	=	0x009d
                           00009E   332 _SM1	=	0x009e
                           00009F   333 _SM0	=	0x009f
                           0000A0   334 _P2_0	=	0x00a0
                           0000A1   335 _P2_1	=	0x00a1
                           0000A2   336 _P2_2	=	0x00a2
                           0000A3   337 _P2_3	=	0x00a3
                           0000A4   338 _P2_4	=	0x00a4
                           0000A5   339 _P2_5	=	0x00a5
                           0000A6   340 _P2_6	=	0x00a6
                           0000A7   341 _P2_7	=	0x00a7
                           0000A8   342 _EX0	=	0x00a8
                           0000A9   343 _ET0	=	0x00a9
                           0000AA   344 _EX1	=	0x00aa
                           0000AB   345 _ET1	=	0x00ab
                           0000AC   346 _ES	=	0x00ac
                           0000AF   347 _EA	=	0x00af
                           0000B0   348 _P3_0	=	0x00b0
                           0000B1   349 _P3_1	=	0x00b1
                           0000B2   350 _P3_2	=	0x00b2
                           0000B3   351 _P3_3	=	0x00b3
                           0000B4   352 _P3_4	=	0x00b4
                           0000B5   353 _P3_5	=	0x00b5
                           0000B6   354 _P3_6	=	0x00b6
                           0000B7   355 _P3_7	=	0x00b7
                           0000B0   356 _RXD	=	0x00b0
                           0000B1   357 _TXD	=	0x00b1
                           0000B2   358 _INT0	=	0x00b2
                           0000B3   359 _INT1	=	0x00b3
                           0000B4   360 _T0	=	0x00b4
                           0000B5   361 _T1	=	0x00b5
                           0000B6   362 _WR	=	0x00b6
                           0000B7   363 _RD	=	0x00b7
                           0000B8   364 _PX0	=	0x00b8
                           0000B9   365 _PT0	=	0x00b9
                           0000BA   366 _PX1	=	0x00ba
                           0000BB   367 _PT1	=	0x00bb
                           0000BC   368 _PS	=	0x00bc
                           0000D0   369 _P	=	0x00d0
                           0000D1   370 _F1	=	0x00d1
                           0000D2   371 _OV	=	0x00d2
                           0000D3   372 _RS0	=	0x00d3
                           0000D4   373 _RS1	=	0x00d4
                           0000D5   374 _F0	=	0x00d5
                           0000D6   375 _AC	=	0x00d6
                           0000D7   376 _CY	=	0x00d7
                           0000AD   377 _ET2	=	0x00ad
                           0000BD   378 _PT2	=	0x00bd
                           0000C8   379 _T2CON_0	=	0x00c8
                           0000C9   380 _T2CON_1	=	0x00c9
                           0000CA   381 _T2CON_2	=	0x00ca
                           0000CB   382 _T2CON_3	=	0x00cb
                           0000CC   383 _T2CON_4	=	0x00cc
                           0000CD   384 _T2CON_5	=	0x00cd
                           0000CE   385 _T2CON_6	=	0x00ce
                           0000CF   386 _T2CON_7	=	0x00cf
                           0000C8   387 _CP_RL2	=	0x00c8
                           0000C9   388 _C_T2	=	0x00c9
                           0000CA   389 _TR2	=	0x00ca
                           0000CB   390 _EXEN2	=	0x00cb
                           0000CC   391 _TCLK	=	0x00cc
                           0000CD   392 _RCLK	=	0x00cd
                           0000CE   393 _EXF2	=	0x00ce
                           0000CF   394 _TF2	=	0x00cf
                           0000DF   395 _CF	=	0x00df
                           0000DE   396 _CR	=	0x00de
                           0000DC   397 _CCF4	=	0x00dc
                           0000DB   398 _CCF3	=	0x00db
                           0000DA   399 _CCF2	=	0x00da
                           0000D9   400 _CCF1	=	0x00d9
                           0000D8   401 _CCF0	=	0x00d8
                           0000AE   402 _EC	=	0x00ae
                           0000BE   403 _PPCL	=	0x00be
                           0000BD   404 _PT2L	=	0x00bd
                           0000BC   405 _PSL	=	0x00bc
                           0000BB   406 _PT1L	=	0x00bb
                           0000BA   407 _PX1L	=	0x00ba
                           0000B9   408 _PT0L	=	0x00b9
                           0000B8   409 _PX0L	=	0x00b8
                           0000C0   410 _P4_0	=	0x00c0
                           0000C1   411 _P4_1	=	0x00c1
                           0000C2   412 _P4_2	=	0x00c2
                           0000C3   413 _P4_3	=	0x00c3
                           0000C4   414 _P4_4	=	0x00c4
                           0000C5   415 _P4_5	=	0x00c5
                           0000C6   416 _P4_6	=	0x00c6
                           0000C7   417 _P4_7	=	0x00c7
                           0000E8   418 _P5_0	=	0x00e8
                           0000E9   419 _P5_1	=	0x00e9
                           0000EA   420 _P5_2	=	0x00ea
                           0000EB   421 _P5_3	=	0x00eb
                           0000EC   422 _P5_4	=	0x00ec
                           0000ED   423 _P5_5	=	0x00ed
                           0000EE   424 _P5_6	=	0x00ee
                           0000EF   425 _P5_7	=	0x00ef
                                    426 ;--------------------------------------------------------
                                    427 ; overlayable register banks
                                    428 ;--------------------------------------------------------
                                    429 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        430 	.ds 8
                                    431 ;--------------------------------------------------------
                                    432 ; internal ram data
                                    433 ;--------------------------------------------------------
                                    434 	.area DSEG    (DATA)
                                    435 ;--------------------------------------------------------
                                    436 ; overlayable items in internal ram 
                                    437 ;--------------------------------------------------------
                                    438 ;--------------------------------------------------------
                                    439 ; Stack segment in internal ram 
                                    440 ;--------------------------------------------------------
                                    441 	.area	SSEG
      000014                        442 __start__stack:
      000014                        443 	.ds	1
                                    444 
                                    445 ;--------------------------------------------------------
                                    446 ; indirectly addressable internal ram data
                                    447 ;--------------------------------------------------------
                                    448 	.area ISEG    (DATA)
                                    449 ;--------------------------------------------------------
                                    450 ; absolute internal ram data
                                    451 ;--------------------------------------------------------
                                    452 	.area IABS    (ABS,DATA)
                                    453 	.area IABS    (ABS,DATA)
                                    454 ;--------------------------------------------------------
                                    455 ; bit data
                                    456 ;--------------------------------------------------------
                                    457 	.area BSEG    (BIT)
                                    458 ;--------------------------------------------------------
                                    459 ; paged external ram data
                                    460 ;--------------------------------------------------------
                                    461 	.area PSEG    (PAG,XDATA)
                                    462 ;--------------------------------------------------------
                                    463 ; external ram data
                                    464 ;--------------------------------------------------------
                                    465 	.area XSEG    (XDATA)
      000400                        466 _ACK::
      000400                        467 	.ds 2
      000402                        468 _putchar_charToSend_65536_19:
      000402                        469 	.ds 2
      000404                        470 _eeprom_write_PARM_2:
      000404                        471 	.ds 1
      000405                        472 _eeprom_write_address_65536_30:
      000405                        473 	.ds 2
      000407                        474 _eeprom_read_address_65536_37:
      000407                        475 	.ds 2
      000409                        476 _i2c_write_data_65536_42:
      000409                        477 	.ds 1
      00040A                        478 _i2c_read_ACK_65536_47:
      00040A                        479 	.ds 2
      00040C                        480 _i2c_read_buff_65536_48:
      00040C                        481 	.ds 1
                                    482 ;--------------------------------------------------------
                                    483 ; absolute external ram data
                                    484 ;--------------------------------------------------------
                                    485 	.area XABS    (ABS,XDATA)
                                    486 ;--------------------------------------------------------
                                    487 ; external initialized ram data
                                    488 ;--------------------------------------------------------
                                    489 	.area XISEG   (XDATA)
                                    490 	.area HOME    (CODE)
                                    491 	.area GSINIT0 (CODE)
                                    492 	.area GSINIT1 (CODE)
                                    493 	.area GSINIT2 (CODE)
                                    494 	.area GSINIT3 (CODE)
                                    495 	.area GSINIT4 (CODE)
                                    496 	.area GSINIT5 (CODE)
                                    497 	.area GSINIT  (CODE)
                                    498 	.area GSFINAL (CODE)
                                    499 	.area CSEG    (CODE)
                                    500 ;--------------------------------------------------------
                                    501 ; interrupt vector 
                                    502 ;--------------------------------------------------------
                                    503 	.area HOME    (CODE)
      003000                        504 __interrupt_vect:
      003000 02 30 06         [24]  505 	ljmp	__sdcc_gsinit_startup
                                    506 ;--------------------------------------------------------
                                    507 ; global & static initialisations
                                    508 ;--------------------------------------------------------
                                    509 	.area HOME    (CODE)
                                    510 	.area GSINIT  (CODE)
                                    511 	.area GSFINAL (CODE)
                                    512 	.area GSINIT  (CODE)
                                    513 	.globl __sdcc_gsinit_startup
                                    514 	.globl __sdcc_program_startup
                                    515 	.globl __start__stack
                                    516 	.globl __mcs51_genXINIT
                                    517 	.globl __mcs51_genXRAMCLEAR
                                    518 	.globl __mcs51_genRAMCLEAR
                                    519 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  520 	ljmp	__sdcc_program_startup
                                    521 ;--------------------------------------------------------
                                    522 ; Home
                                    523 ;--------------------------------------------------------
                                    524 	.area HOME    (CODE)
                                    525 	.area HOME    (CODE)
      003003                        526 __sdcc_program_startup:
      003003 02 30 8F         [24]  527 	ljmp	_main
                                    528 ;	return from main will return to caller
                                    529 ;--------------------------------------------------------
                                    530 ; code
                                    531 ;--------------------------------------------------------
                                    532 	.area CSEG    (CODE)
                                    533 ;------------------------------------------------------------
                                    534 ;Allocation info for local variables in function 'putchar'
                                    535 ;------------------------------------------------------------
                                    536 ;charToSend                Allocated with name '_putchar_charToSend_65536_19'
                                    537 ;------------------------------------------------------------
                                    538 ;	8051_i2c_eeprom.c:24: int putchar(int charToSend) {
                                    539 ;	-----------------------------------------
                                    540 ;	 function putchar
                                    541 ;	-----------------------------------------
      003062                        542 _putchar:
                           000007   543 	ar7 = 0x07
                           000006   544 	ar6 = 0x06
                           000005   545 	ar5 = 0x05
                           000004   546 	ar4 = 0x04
                           000003   547 	ar3 = 0x03
                           000002   548 	ar2 = 0x02
                           000001   549 	ar1 = 0x01
                           000000   550 	ar0 = 0x00
      003062 AF 83            [24]  551 	mov	r7,dph
      003064 E5 82            [12]  552 	mov	a,dpl
      003066 90 04 02         [24]  553 	mov	dptr,#_putchar_charToSend_65536_19
      003069 F0               [24]  554 	movx	@dptr,a
      00306A EF               [12]  555 	mov	a,r7
      00306B A3               [24]  556 	inc	dptr
      00306C F0               [24]  557 	movx	@dptr,a
                                    558 ;	8051_i2c_eeprom.c:25: SBUF = charToSend;  // Send character to serial buffer
      00306D 90 04 02         [24]  559 	mov	dptr,#_putchar_charToSend_65536_19
      003070 E0               [24]  560 	movx	a,@dptr
      003071 FE               [12]  561 	mov	r6,a
      003072 A3               [24]  562 	inc	dptr
      003073 E0               [24]  563 	movx	a,@dptr
      003074 FF               [12]  564 	mov	r7,a
      003075 8E 99            [24]  565 	mov	_SBUF,r6
                                    566 ;	8051_i2c_eeprom.c:26: while (!TI);        // Wait for transmission to complete
      003077                        567 00101$:
                                    568 ;	8051_i2c_eeprom.c:27: TI = 0;            // Clear transmission interrupt flag
                                    569 ;	assignBit
      003077 10 99 02         [24]  570 	jbc	_TI,00114$
      00307A 80 FB            [24]  571 	sjmp	00101$
      00307C                        572 00114$:
                                    573 ;	8051_i2c_eeprom.c:28: return charToSend;
      00307C 8E 82            [24]  574 	mov	dpl,r6
      00307E 8F 83            [24]  575 	mov	dph,r7
                                    576 ;	8051_i2c_eeprom.c:29: }
      003080 22               [24]  577 	ret
                                    578 ;------------------------------------------------------------
                                    579 ;Allocation info for local variables in function 'getchar'
                                    580 ;------------------------------------------------------------
                                    581 ;	8051_i2c_eeprom.c:31: int getchar(void) {
                                    582 ;	-----------------------------------------
                                    583 ;	 function getchar
                                    584 ;	-----------------------------------------
      003081                        585 _getchar:
                                    586 ;	8051_i2c_eeprom.c:32: while (!RI);        // Wait for reception to complete
      003081                        587 00101$:
                                    588 ;	8051_i2c_eeprom.c:33: RI = 0;            // Clear reception interrupt flag
                                    589 ;	assignBit
      003081 10 98 02         [24]  590 	jbc	_RI,00114$
      003084 80 FB            [24]  591 	sjmp	00101$
      003086                        592 00114$:
                                    593 ;	8051_i2c_eeprom.c:34: return SBUF;       // Return received character
      003086 AE 99            [24]  594 	mov	r6,_SBUF
      003088 7F 00            [12]  595 	mov	r7,#0x00
      00308A 8E 82            [24]  596 	mov	dpl,r6
      00308C 8F 83            [24]  597 	mov	dph,r7
                                    598 ;	8051_i2c_eeprom.c:35: }
      00308E 22               [24]  599 	ret
                                    600 ;------------------------------------------------------------
                                    601 ;Allocation info for local variables in function 'main'
                                    602 ;------------------------------------------------------------
                                    603 ;test_data                 Allocated with name '_main_test_data_65537_24'
                                    604 ;address                   Allocated with name '_main_address_65537_24'
                                    605 ;i                         Allocated with name '_main_i_131073_25'
                                    606 ;read_data                 Allocated with name '_main_read_data_65538_27'
                                    607 ;------------------------------------------------------------
                                    608 ;	8051_i2c_eeprom.c:37: int main()
                                    609 ;	-----------------------------------------
                                    610 ;	 function main
                                    611 ;	-----------------------------------------
      00308F                        612 _main:
                                    613 ;	8051_i2c_eeprom.c:40: P1 &= ~(1<<3);  // Set P1.3 as output
      00308F 53 90 F7         [24]  614 	anl	_P1,#0xf7
                                    615 ;	8051_i2c_eeprom.c:41: P1 &= ~(1<<4);  // Set P1.4 as output
      003092 53 90 EF         [24]  616 	anl	_P1,#0xef
                                    617 ;	8051_i2c_eeprom.c:42: i2c_start();
      003095 12 33 C0         [24]  618 	lcall	_i2c_start
                                    619 ;	8051_i2c_eeprom.c:43: i2c_delay();
      003098 12 33 E2         [24]  620 	lcall	_i2c_delay
                                    621 ;	8051_i2c_eeprom.c:49: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      00309B 74 02            [12]  622 	mov	a,#0x02
      00309D C0 E0            [24]  623 	push	acc
      00309F E4               [12]  624 	clr	a
      0030A0 C0 E0            [24]  625 	push	acc
      0030A2 74 26            [12]  626 	mov	a,#0x26
      0030A4 C0 E0            [24]  627 	push	acc
      0030A6 E4               [12]  628 	clr	a
      0030A7 C0 E0            [24]  629 	push	acc
      0030A9 74 A9            [12]  630 	mov	a,#___str_0
      0030AB C0 E0            [24]  631 	push	acc
      0030AD 74 3E            [12]  632 	mov	a,#(___str_0 >> 8)
      0030AF C0 E0            [24]  633 	push	acc
      0030B1 74 80            [12]  634 	mov	a,#0x80
      0030B3 C0 E0            [24]  635 	push	acc
      0030B5 12 34 47         [24]  636 	lcall	_printf
      0030B8 E5 81            [12]  637 	mov	a,sp
      0030BA 24 F9            [12]  638 	add	a,#0xf9
      0030BC F5 81            [12]  639 	mov	sp,a
                                    640 ;	8051_i2c_eeprom.c:50: eeprom_write(address, test_data);
      0030BE 90 04 04         [24]  641 	mov	dptr,#_eeprom_write_PARM_2
      0030C1 74 26            [12]  642 	mov	a,#0x26
      0030C3 F0               [24]  643 	movx	@dptr,a
      0030C4 90 00 02         [24]  644 	mov	dptr,#0x0002
      0030C7 12 31 51         [24]  645 	lcall	_eeprom_write
                                    646 ;	8051_i2c_eeprom.c:51: i2c_stop();
      0030CA 12 33 D5         [24]  647 	lcall	_i2c_stop
                                    648 ;	8051_i2c_eeprom.c:53: for(int i = 0; i<100; i++)
      0030CD 7E 00            [12]  649 	mov	r6,#0x00
      0030CF 7F 00            [12]  650 	mov	r7,#0x00
      0030D1                        651 00106$:
      0030D1 C3               [12]  652 	clr	c
      0030D2 EE               [12]  653 	mov	a,r6
      0030D3 94 64            [12]  654 	subb	a,#0x64
      0030D5 EF               [12]  655 	mov	a,r7
      0030D6 64 80            [12]  656 	xrl	a,#0x80
      0030D8 94 80            [12]  657 	subb	a,#0x80
      0030DA 50 12            [24]  658 	jnc	00101$
                                    659 ;	8051_i2c_eeprom.c:55: i2c_delay();
      0030DC C0 07            [24]  660 	push	ar7
      0030DE C0 06            [24]  661 	push	ar6
      0030E0 12 33 E2         [24]  662 	lcall	_i2c_delay
      0030E3 D0 06            [24]  663 	pop	ar6
      0030E5 D0 07            [24]  664 	pop	ar7
                                    665 ;	8051_i2c_eeprom.c:53: for(int i = 0; i<100; i++)
      0030E7 0E               [12]  666 	inc	r6
      0030E8 BE 00 E6         [24]  667 	cjne	r6,#0x00,00106$
      0030EB 0F               [12]  668 	inc	r7
      0030EC 80 E3            [24]  669 	sjmp	00106$
      0030EE                        670 00101$:
                                    671 ;	8051_i2c_eeprom.c:59: unsigned char read_data = eeprom_read(address);
      0030EE 90 00 02         [24]  672 	mov	dptr,#0x0002
      0030F1 12 32 11         [24]  673 	lcall	_eeprom_read
      0030F4 AE 82            [24]  674 	mov	r6,dpl
                                    675 ;	8051_i2c_eeprom.c:60: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      0030F6 8E 05            [24]  676 	mov	ar5,r6
      0030F8 7F 00            [12]  677 	mov	r7,#0x00
      0030FA C0 06            [24]  678 	push	ar6
      0030FC C0 05            [24]  679 	push	ar5
      0030FE C0 07            [24]  680 	push	ar7
      003100 74 02            [12]  681 	mov	a,#0x02
      003102 C0 E0            [24]  682 	push	acc
      003104 E4               [12]  683 	clr	a
      003105 C0 E0            [24]  684 	push	acc
      003107 74 D1            [12]  685 	mov	a,#___str_1
      003109 C0 E0            [24]  686 	push	acc
      00310B 74 3E            [12]  687 	mov	a,#(___str_1 >> 8)
      00310D C0 E0            [24]  688 	push	acc
      00310F 74 80            [12]  689 	mov	a,#0x80
      003111 C0 E0            [24]  690 	push	acc
      003113 12 34 47         [24]  691 	lcall	_printf
      003116 E5 81            [12]  692 	mov	a,sp
      003118 24 F9            [12]  693 	add	a,#0xf9
      00311A F5 81            [12]  694 	mov	sp,a
      00311C D0 06            [24]  695 	pop	ar6
                                    696 ;	8051_i2c_eeprom.c:63: if(read_data == test_data) {
      00311E BE 26 17         [24]  697 	cjne	r6,#0x26,00103$
                                    698 ;	8051_i2c_eeprom.c:64: printf("MATCH - Write/Read successful!\n\r");
      003121 74 F9            [12]  699 	mov	a,#___str_2
      003123 C0 E0            [24]  700 	push	acc
      003125 74 3E            [12]  701 	mov	a,#(___str_2 >> 8)
      003127 C0 E0            [24]  702 	push	acc
      003129 74 80            [12]  703 	mov	a,#0x80
      00312B C0 E0            [24]  704 	push	acc
      00312D 12 34 47         [24]  705 	lcall	_printf
      003130 15 81            [12]  706 	dec	sp
      003132 15 81            [12]  707 	dec	sp
      003134 15 81            [12]  708 	dec	sp
      003136 80 15            [24]  709 	sjmp	00104$
      003138                        710 00103$:
                                    711 ;	8051_i2c_eeprom.c:66: printf("ERROR - Data mismatch!\n\r");
      003138 74 1A            [12]  712 	mov	a,#___str_3
      00313A C0 E0            [24]  713 	push	acc
      00313C 74 3F            [12]  714 	mov	a,#(___str_3 >> 8)
      00313E C0 E0            [24]  715 	push	acc
      003140 74 80            [12]  716 	mov	a,#0x80
      003142 C0 E0            [24]  717 	push	acc
      003144 12 34 47         [24]  718 	lcall	_printf
      003147 15 81            [12]  719 	dec	sp
      003149 15 81            [12]  720 	dec	sp
      00314B 15 81            [12]  721 	dec	sp
      00314D                        722 00104$:
                                    723 ;	8051_i2c_eeprom.c:70: return 0;
      00314D 90 00 00         [24]  724 	mov	dptr,#0x0000
                                    725 ;	8051_i2c_eeprom.c:71: }
      003150 22               [24]  726 	ret
                                    727 ;------------------------------------------------------------
                                    728 ;Allocation info for local variables in function 'eeprom_write'
                                    729 ;------------------------------------------------------------
                                    730 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                    731 ;address                   Allocated with name '_eeprom_write_address_65536_30'
                                    732 ;i                         Allocated with name '_eeprom_write_i_131072_35'
                                    733 ;------------------------------------------------------------
                                    734 ;	8051_i2c_eeprom.c:73: int eeprom_write(unsigned int address, unsigned char data) {
                                    735 ;	-----------------------------------------
                                    736 ;	 function eeprom_write
                                    737 ;	-----------------------------------------
      003151                        738 _eeprom_write:
      003151 AF 83            [24]  739 	mov	r7,dph
      003153 E5 82            [12]  740 	mov	a,dpl
      003155 90 04 05         [24]  741 	mov	dptr,#_eeprom_write_address_65536_30
      003158 F0               [24]  742 	movx	@dptr,a
      003159 EF               [12]  743 	mov	a,r7
      00315A A3               [24]  744 	inc	dptr
      00315B F0               [24]  745 	movx	@dptr,a
                                    746 ;	8051_i2c_eeprom.c:74: i2c_start();
      00315C 12 33 C0         [24]  747 	lcall	_i2c_start
                                    748 ;	8051_i2c_eeprom.c:77: if(!i2c_write(EEPROM_ID | WRITE)) {
      00315F 75 82 A0         [24]  749 	mov	dpl,#0xa0
      003162 12 32 BF         [24]  750 	lcall	_i2c_write
      003165 E5 82            [12]  751 	mov	a,dpl
      003167 85 83 F0         [24]  752 	mov	b,dph
      00316A 45 F0            [12]  753 	orl	a,b
      00316C 70 1C            [24]  754 	jnz	00102$
                                    755 ;	8051_i2c_eeprom.c:78: printf("Error: No ACK for device address (write)\n\r");
      00316E 74 33            [12]  756 	mov	a,#___str_4
      003170 C0 E0            [24]  757 	push	acc
      003172 74 3F            [12]  758 	mov	a,#(___str_4 >> 8)
      003174 C0 E0            [24]  759 	push	acc
      003176 74 80            [12]  760 	mov	a,#0x80
      003178 C0 E0            [24]  761 	push	acc
      00317A 12 34 47         [24]  762 	lcall	_printf
      00317D 15 81            [12]  763 	dec	sp
      00317F 15 81            [12]  764 	dec	sp
      003181 15 81            [12]  765 	dec	sp
                                    766 ;	8051_i2c_eeprom.c:79: i2c_stop();
      003183 12 33 D5         [24]  767 	lcall	_i2c_stop
                                    768 ;	8051_i2c_eeprom.c:80: return 0;
      003186 90 00 00         [24]  769 	mov	dptr,#0x0000
      003189 22               [24]  770 	ret
      00318A                        771 00102$:
                                    772 ;	8051_i2c_eeprom.c:84: if(!i2c_write((unsigned char)address)) {
      00318A 90 04 05         [24]  773 	mov	dptr,#_eeprom_write_address_65536_30
      00318D E0               [24]  774 	movx	a,@dptr
      00318E FE               [12]  775 	mov	r6,a
      00318F A3               [24]  776 	inc	dptr
      003190 E0               [24]  777 	movx	a,@dptr
      003191 8E 82            [24]  778 	mov	dpl,r6
      003193 12 32 BF         [24]  779 	lcall	_i2c_write
      003196 E5 82            [12]  780 	mov	a,dpl
      003198 85 83 F0         [24]  781 	mov	b,dph
      00319B 45 F0            [12]  782 	orl	a,b
      00319D 70 1C            [24]  783 	jnz	00104$
                                    784 ;	8051_i2c_eeprom.c:85: printf("Error: No ACK for memory address\n\r");
      00319F 74 5E            [12]  785 	mov	a,#___str_5
      0031A1 C0 E0            [24]  786 	push	acc
      0031A3 74 3F            [12]  787 	mov	a,#(___str_5 >> 8)
      0031A5 C0 E0            [24]  788 	push	acc
      0031A7 74 80            [12]  789 	mov	a,#0x80
      0031A9 C0 E0            [24]  790 	push	acc
      0031AB 12 34 47         [24]  791 	lcall	_printf
      0031AE 15 81            [12]  792 	dec	sp
      0031B0 15 81            [12]  793 	dec	sp
      0031B2 15 81            [12]  794 	dec	sp
                                    795 ;	8051_i2c_eeprom.c:86: i2c_stop();
      0031B4 12 33 D5         [24]  796 	lcall	_i2c_stop
                                    797 ;	8051_i2c_eeprom.c:87: return 0;
      0031B7 90 00 00         [24]  798 	mov	dptr,#0x0000
      0031BA 22               [24]  799 	ret
      0031BB                        800 00104$:
                                    801 ;	8051_i2c_eeprom.c:91: if(!i2c_write(data)) {
      0031BB 90 04 04         [24]  802 	mov	dptr,#_eeprom_write_PARM_2
      0031BE E0               [24]  803 	movx	a,@dptr
      0031BF F5 82            [12]  804 	mov	dpl,a
      0031C1 12 32 BF         [24]  805 	lcall	_i2c_write
      0031C4 E5 82            [12]  806 	mov	a,dpl
      0031C6 85 83 F0         [24]  807 	mov	b,dph
      0031C9 45 F0            [12]  808 	orl	a,b
      0031CB 70 1C            [24]  809 	jnz	00106$
                                    810 ;	8051_i2c_eeprom.c:92: printf("Error: No ACK for data\n\r");
      0031CD 74 81            [12]  811 	mov	a,#___str_6
      0031CF C0 E0            [24]  812 	push	acc
      0031D1 74 3F            [12]  813 	mov	a,#(___str_6 >> 8)
      0031D3 C0 E0            [24]  814 	push	acc
      0031D5 74 80            [12]  815 	mov	a,#0x80
      0031D7 C0 E0            [24]  816 	push	acc
      0031D9 12 34 47         [24]  817 	lcall	_printf
      0031DC 15 81            [12]  818 	dec	sp
      0031DE 15 81            [12]  819 	dec	sp
      0031E0 15 81            [12]  820 	dec	sp
                                    821 ;	8051_i2c_eeprom.c:93: i2c_stop();
      0031E2 12 33 D5         [24]  822 	lcall	_i2c_stop
                                    823 ;	8051_i2c_eeprom.c:94: return 0;
      0031E5 90 00 00         [24]  824 	mov	dptr,#0x0000
      0031E8 22               [24]  825 	ret
      0031E9                        826 00106$:
                                    827 ;	8051_i2c_eeprom.c:97: i2c_stop();
      0031E9 12 33 D5         [24]  828 	lcall	_i2c_stop
                                    829 ;	8051_i2c_eeprom.c:99: for(int i = 0; i<100; i++)
      0031EC 7E 00            [12]  830 	mov	r6,#0x00
      0031EE 7F 00            [12]  831 	mov	r7,#0x00
      0031F0                        832 00109$:
      0031F0 C3               [12]  833 	clr	c
      0031F1 EE               [12]  834 	mov	a,r6
      0031F2 94 64            [12]  835 	subb	a,#0x64
      0031F4 EF               [12]  836 	mov	a,r7
      0031F5 64 80            [12]  837 	xrl	a,#0x80
      0031F7 94 80            [12]  838 	subb	a,#0x80
      0031F9 50 12            [24]  839 	jnc	00107$
                                    840 ;	8051_i2c_eeprom.c:101: i2c_delay();
      0031FB C0 07            [24]  841 	push	ar7
      0031FD C0 06            [24]  842 	push	ar6
      0031FF 12 33 E2         [24]  843 	lcall	_i2c_delay
      003202 D0 06            [24]  844 	pop	ar6
      003204 D0 07            [24]  845 	pop	ar7
                                    846 ;	8051_i2c_eeprom.c:99: for(int i = 0; i<100; i++)
      003206 0E               [12]  847 	inc	r6
      003207 BE 00 E6         [24]  848 	cjne	r6,#0x00,00109$
      00320A 0F               [12]  849 	inc	r7
      00320B 80 E3            [24]  850 	sjmp	00109$
      00320D                        851 00107$:
                                    852 ;	8051_i2c_eeprom.c:103: return 1;  // Success
      00320D 90 00 01         [24]  853 	mov	dptr,#0x0001
                                    854 ;	8051_i2c_eeprom.c:104: }
      003210 22               [24]  855 	ret
                                    856 ;------------------------------------------------------------
                                    857 ;Allocation info for local variables in function 'eeprom_read'
                                    858 ;------------------------------------------------------------
                                    859 ;address                   Allocated with name '_eeprom_read_address_65536_37'
                                    860 ;result                    Allocated with name '_eeprom_read_result_65536_38'
                                    861 ;------------------------------------------------------------
                                    862 ;	8051_i2c_eeprom.c:106: int eeprom_read(unsigned int address) {
                                    863 ;	-----------------------------------------
                                    864 ;	 function eeprom_read
                                    865 ;	-----------------------------------------
      003211                        866 _eeprom_read:
      003211 AF 83            [24]  867 	mov	r7,dph
      003213 E5 82            [12]  868 	mov	a,dpl
      003215 90 04 07         [24]  869 	mov	dptr,#_eeprom_read_address_65536_37
      003218 F0               [24]  870 	movx	@dptr,a
      003219 EF               [12]  871 	mov	a,r7
      00321A A3               [24]  872 	inc	dptr
      00321B F0               [24]  873 	movx	@dptr,a
                                    874 ;	8051_i2c_eeprom.c:110: i2c_start();
      00321C 12 33 C0         [24]  875 	lcall	_i2c_start
                                    876 ;	8051_i2c_eeprom.c:113: if(!i2c_write(EEPROM_ID | WRITE)) {
      00321F 75 82 A0         [24]  877 	mov	dpl,#0xa0
      003222 12 32 BF         [24]  878 	lcall	_i2c_write
      003225 E5 82            [12]  879 	mov	a,dpl
      003227 85 83 F0         [24]  880 	mov	b,dph
      00322A 45 F0            [12]  881 	orl	a,b
      00322C 70 1C            [24]  882 	jnz	00102$
                                    883 ;	8051_i2c_eeprom.c:114: printf("Error: No ACK for device address (write mode)\n\r");
      00322E 74 9A            [12]  884 	mov	a,#___str_7
      003230 C0 E0            [24]  885 	push	acc
      003232 74 3F            [12]  886 	mov	a,#(___str_7 >> 8)
      003234 C0 E0            [24]  887 	push	acc
      003236 74 80            [12]  888 	mov	a,#0x80
      003238 C0 E0            [24]  889 	push	acc
      00323A 12 34 47         [24]  890 	lcall	_printf
      00323D 15 81            [12]  891 	dec	sp
      00323F 15 81            [12]  892 	dec	sp
      003241 15 81            [12]  893 	dec	sp
                                    894 ;	8051_i2c_eeprom.c:115: i2c_stop();
      003243 12 33 D5         [24]  895 	lcall	_i2c_stop
                                    896 ;	8051_i2c_eeprom.c:116: return -1;
      003246 90 FF FF         [24]  897 	mov	dptr,#0xffff
      003249 22               [24]  898 	ret
      00324A                        899 00102$:
                                    900 ;	8051_i2c_eeprom.c:120: if(!i2c_write((unsigned char)address)) {
      00324A 90 04 07         [24]  901 	mov	dptr,#_eeprom_read_address_65536_37
      00324D E0               [24]  902 	movx	a,@dptr
      00324E FE               [12]  903 	mov	r6,a
      00324F A3               [24]  904 	inc	dptr
      003250 E0               [24]  905 	movx	a,@dptr
      003251 8E 82            [24]  906 	mov	dpl,r6
      003253 12 32 BF         [24]  907 	lcall	_i2c_write
      003256 E5 82            [12]  908 	mov	a,dpl
      003258 85 83 F0         [24]  909 	mov	b,dph
      00325B 45 F0            [12]  910 	orl	a,b
      00325D 70 1C            [24]  911 	jnz	00104$
                                    912 ;	8051_i2c_eeprom.c:121: printf("Error: No ACK for memory address\n\r");
      00325F 74 5E            [12]  913 	mov	a,#___str_5
      003261 C0 E0            [24]  914 	push	acc
      003263 74 3F            [12]  915 	mov	a,#(___str_5 >> 8)
      003265 C0 E0            [24]  916 	push	acc
      003267 74 80            [12]  917 	mov	a,#0x80
      003269 C0 E0            [24]  918 	push	acc
      00326B 12 34 47         [24]  919 	lcall	_printf
      00326E 15 81            [12]  920 	dec	sp
      003270 15 81            [12]  921 	dec	sp
      003272 15 81            [12]  922 	dec	sp
                                    923 ;	8051_i2c_eeprom.c:122: i2c_stop();
      003274 12 33 D5         [24]  924 	lcall	_i2c_stop
                                    925 ;	8051_i2c_eeprom.c:123: return -1;
      003277 90 FF FF         [24]  926 	mov	dptr,#0xffff
      00327A 22               [24]  927 	ret
      00327B                        928 00104$:
                                    929 ;	8051_i2c_eeprom.c:127: i2c_start();
      00327B 12 33 C0         [24]  930 	lcall	_i2c_start
                                    931 ;	8051_i2c_eeprom.c:130: if(!i2c_write(EEPROM_ID | READ)) {
      00327E 75 82 A1         [24]  932 	mov	dpl,#0xa1
      003281 12 32 BF         [24]  933 	lcall	_i2c_write
      003284 E5 82            [12]  934 	mov	a,dpl
      003286 85 83 F0         [24]  935 	mov	b,dph
      003289 45 F0            [12]  936 	orl	a,b
      00328B 70 1C            [24]  937 	jnz	00106$
                                    938 ;	8051_i2c_eeprom.c:131: printf("Error: No ACK for device address (read mode)\n\r");
      00328D 74 CA            [12]  939 	mov	a,#___str_8
      00328F C0 E0            [24]  940 	push	acc
      003291 74 3F            [12]  941 	mov	a,#(___str_8 >> 8)
      003293 C0 E0            [24]  942 	push	acc
      003295 74 80            [12]  943 	mov	a,#0x80
      003297 C0 E0            [24]  944 	push	acc
      003299 12 34 47         [24]  945 	lcall	_printf
      00329C 15 81            [12]  946 	dec	sp
      00329E 15 81            [12]  947 	dec	sp
      0032A0 15 81            [12]  948 	dec	sp
                                    949 ;	8051_i2c_eeprom.c:132: i2c_stop();
      0032A2 12 33 D5         [24]  950 	lcall	_i2c_stop
                                    951 ;	8051_i2c_eeprom.c:133: return -1;
      0032A5 90 FF FF         [24]  952 	mov	dptr,#0xffff
      0032A8 22               [24]  953 	ret
      0032A9                        954 00106$:
                                    955 ;	8051_i2c_eeprom.c:137: result = i2c_read(0);  // 0 means send NACK
      0032A9 90 00 00         [24]  956 	mov	dptr,#0x0000
      0032AC 12 33 3C         [24]  957 	lcall	_i2c_read
      0032AF AE 82            [24]  958 	mov	r6,dpl
                                    959 ;	8051_i2c_eeprom.c:139: i2c_stop();
      0032B1 C0 06            [24]  960 	push	ar6
      0032B3 12 33 D5         [24]  961 	lcall	_i2c_stop
      0032B6 D0 06            [24]  962 	pop	ar6
                                    963 ;	8051_i2c_eeprom.c:140: return result;
      0032B8 7F 00            [12]  964 	mov	r7,#0x00
      0032BA 8E 82            [24]  965 	mov	dpl,r6
      0032BC 8F 83            [24]  966 	mov	dph,r7
                                    967 ;	8051_i2c_eeprom.c:141: }
      0032BE 22               [24]  968 	ret
                                    969 ;------------------------------------------------------------
                                    970 ;Allocation info for local variables in function 'i2c_write'
                                    971 ;------------------------------------------------------------
                                    972 ;data                      Allocated with name '_i2c_write_data_65536_42'
                                    973 ;i                         Allocated with name '_i2c_write_i_65536_43'
                                    974 ;------------------------------------------------------------
                                    975 ;	8051_i2c_eeprom.c:172: int i2c_write(unsigned char data)
                                    976 ;	-----------------------------------------
                                    977 ;	 function i2c_write
                                    978 ;	-----------------------------------------
      0032BF                        979 _i2c_write:
      0032BF E5 82            [12]  980 	mov	a,dpl
      0032C1 90 04 09         [24]  981 	mov	dptr,#_i2c_write_data_65536_42
      0032C4 F0               [24]  982 	movx	@dptr,a
                                    983 ;	8051_i2c_eeprom.c:176: for(i=0;i<=7;i++)
      0032C5 7E 00            [12]  984 	mov	r6,#0x00
      0032C7 7F 00            [12]  985 	mov	r7,#0x00
      0032C9                        986 00104$:
                                    987 ;	8051_i2c_eeprom.c:178: SDA = (data & 0x80) ? 1 : 0;    //msb first
      0032C9 90 04 09         [24]  988 	mov	dptr,#_i2c_write_data_65536_42
      0032CC E0               [24]  989 	movx	a,@dptr
      0032CD FD               [12]  990 	mov	r5,a
      0032CE 23               [12]  991 	rl	a
      0032CF 54 01            [12]  992 	anl	a,#0x01
      0032D1 24 FF            [12]  993 	add	a,#0xff
      0032D3 92 94            [24]  994 	mov	_P1_4,c
                                    995 ;	8051_i2c_eeprom.c:179: i2c_delay();        // Setup time for data
      0032D5 C0 07            [24]  996 	push	ar7
      0032D7 C0 06            [24]  997 	push	ar6
      0032D9 C0 05            [24]  998 	push	ar5
      0032DB 12 33 E2         [24]  999 	lcall	_i2c_delay
                                   1000 ;	8051_i2c_eeprom.c:180: SCL=1;
                                   1001 ;	assignBit
      0032DE D2 93            [12] 1002 	setb	_P1_3
                                   1003 ;	8051_i2c_eeprom.c:181: i2c_delay();        // Hold time for clock
      0032E0 12 33 E2         [24] 1004 	lcall	_i2c_delay
      0032E3 D0 05            [24] 1005 	pop	ar5
      0032E5 D0 06            [24] 1006 	pop	ar6
      0032E7 D0 07            [24] 1007 	pop	ar7
                                   1008 ;	8051_i2c_eeprom.c:182: SCL=0;
                                   1009 ;	assignBit
      0032E9 C2 93            [12] 1010 	clr	_P1_3
                                   1011 ;	8051_i2c_eeprom.c:183: data = data << 1;
      0032EB ED               [12] 1012 	mov	a,r5
      0032EC 2D               [12] 1013 	add	a,r5
      0032ED 90 04 09         [24] 1014 	mov	dptr,#_i2c_write_data_65536_42
      0032F0 F0               [24] 1015 	movx	@dptr,a
                                   1016 ;	8051_i2c_eeprom.c:176: for(i=0;i<=7;i++)
      0032F1 0E               [12] 1017 	inc	r6
      0032F2 BE 00 01         [24] 1018 	cjne	r6,#0x00,00121$
      0032F5 0F               [12] 1019 	inc	r7
      0032F6                       1020 00121$:
      0032F6 C3               [12] 1021 	clr	c
      0032F7 74 07            [12] 1022 	mov	a,#0x07
      0032F9 9E               [12] 1023 	subb	a,r6
      0032FA E4               [12] 1024 	clr	a
      0032FB 9F               [12] 1025 	subb	a,r7
      0032FC 50 CB            [24] 1026 	jnc	00104$
                                   1027 ;	8051_i2c_eeprom.c:187: SDA = 1;            // Release SDA for slave
                                   1028 ;	assignBit
      0032FE D2 94            [12] 1029 	setb	_P1_4
                                   1030 ;	8051_i2c_eeprom.c:188: SCL = 1;            // 9th clock pulse for ACK
                                   1031 ;	assignBit
      003300 D2 93            [12] 1032 	setb	_P1_3
                                   1033 ;	8051_i2c_eeprom.c:189: i2c_delay();
      003302 12 33 E2         [24] 1034 	lcall	_i2c_delay
                                   1035 ;	8051_i2c_eeprom.c:190: if(SDA == 1)        // If SDA is still high, no ACK received
      003305 30 94 19         [24] 1036 	jnb	_P1_4,00103$
                                   1037 ;	8051_i2c_eeprom.c:193: printf("ACK DID NOT ARRIVE\n\r");
      003308 74 F9            [12] 1038 	mov	a,#___str_9
      00330A C0 E0            [24] 1039 	push	acc
      00330C 74 3F            [12] 1040 	mov	a,#(___str_9 >> 8)
      00330E C0 E0            [24] 1041 	push	acc
      003310 74 80            [12] 1042 	mov	a,#0x80
      003312 C0 E0            [24] 1043 	push	acc
      003314 12 34 47         [24] 1044 	lcall	_printf
      003317 15 81            [12] 1045 	dec	sp
      003319 15 81            [12] 1046 	dec	sp
      00331B 15 81            [12] 1047 	dec	sp
                                   1048 ;	8051_i2c_eeprom.c:194: return 0;       // Error
      00331D 90 00 00         [24] 1049 	mov	dptr,#0x0000
      003320 22               [24] 1050 	ret
      003321                       1051 00103$:
                                   1052 ;	8051_i2c_eeprom.c:196: SCL = 0;
                                   1053 ;	assignBit
      003321 C2 93            [12] 1054 	clr	_P1_3
                                   1055 ;	8051_i2c_eeprom.c:197: printf("Transmission successfull\n\r");
      003323 74 0E            [12] 1056 	mov	a,#___str_10
      003325 C0 E0            [24] 1057 	push	acc
      003327 74 40            [12] 1058 	mov	a,#(___str_10 >> 8)
      003329 C0 E0            [24] 1059 	push	acc
      00332B 74 80            [12] 1060 	mov	a,#0x80
      00332D C0 E0            [24] 1061 	push	acc
      00332F 12 34 47         [24] 1062 	lcall	_printf
      003332 15 81            [12] 1063 	dec	sp
      003334 15 81            [12] 1064 	dec	sp
      003336 15 81            [12] 1065 	dec	sp
                                   1066 ;	8051_i2c_eeprom.c:198: return 1;           // Success
      003338 90 00 01         [24] 1067 	mov	dptr,#0x0001
                                   1068 ;	8051_i2c_eeprom.c:200: }
      00333B 22               [24] 1069 	ret
                                   1070 ;------------------------------------------------------------
                                   1071 ;Allocation info for local variables in function 'i2c_read'
                                   1072 ;------------------------------------------------------------
                                   1073 ;ACK                       Allocated with name '_i2c_read_ACK_65536_47'
                                   1074 ;buff                      Allocated with name '_i2c_read_buff_65536_48'
                                   1075 ;i                         Allocated with name '_i2c_read_i_131072_49'
                                   1076 ;------------------------------------------------------------
                                   1077 ;	8051_i2c_eeprom.c:201: int i2c_read(int ACK)
                                   1078 ;	-----------------------------------------
                                   1079 ;	 function i2c_read
                                   1080 ;	-----------------------------------------
      00333C                       1081 _i2c_read:
      00333C AF 83            [24] 1082 	mov	r7,dph
      00333E E5 82            [12] 1083 	mov	a,dpl
      003340 90 04 0A         [24] 1084 	mov	dptr,#_i2c_read_ACK_65536_47
      003343 F0               [24] 1085 	movx	@dptr,a
      003344 EF               [12] 1086 	mov	a,r7
      003345 A3               [24] 1087 	inc	dptr
      003346 F0               [24] 1088 	movx	@dptr,a
                                   1089 ;	8051_i2c_eeprom.c:203: unsigned char buff=0;
      003347 90 04 0C         [24] 1090 	mov	dptr,#_i2c_read_buff_65536_48
      00334A E4               [12] 1091 	clr	a
      00334B F0               [24] 1092 	movx	@dptr,a
                                   1093 ;	8051_i2c_eeprom.c:205: for(int i=0;i<8;i++)
      00334C 7E 00            [12] 1094 	mov	r6,#0x00
      00334E 7F 00            [12] 1095 	mov	r7,#0x00
      003350                       1096 00105$:
      003350 C3               [12] 1097 	clr	c
      003351 EE               [12] 1098 	mov	a,r6
      003352 94 08            [12] 1099 	subb	a,#0x08
      003354 EF               [12] 1100 	mov	a,r7
      003355 64 80            [12] 1101 	xrl	a,#0x80
      003357 94 80            [12] 1102 	subb	a,#0x80
      003359 50 41            [24] 1103 	jnc	00103$
                                   1104 ;	8051_i2c_eeprom.c:207: SDA = 1;
                                   1105 ;	assignBit
      00335B D2 94            [12] 1106 	setb	_P1_4
                                   1107 ;	8051_i2c_eeprom.c:208: SCL = 1;
                                   1108 ;	assignBit
      00335D D2 93            [12] 1109 	setb	_P1_3
                                   1110 ;	8051_i2c_eeprom.c:209: i2c_delay();
      00335F C0 07            [24] 1111 	push	ar7
      003361 C0 06            [24] 1112 	push	ar6
      003363 12 33 E2         [24] 1113 	lcall	_i2c_delay
      003366 D0 06            [24] 1114 	pop	ar6
      003368 D0 07            [24] 1115 	pop	ar7
                                   1116 ;	8051_i2c_eeprom.c:210: if(SDA) buff |=0x80>>i;
      00336A 30 94 1F         [24] 1117 	jnb	_P1_4,00102$
      00336D 8E F0            [24] 1118 	mov	b,r6
      00336F 05 F0            [12] 1119 	inc	b
      003371 7C 80            [12] 1120 	mov	r4,#0x80
      003373 E4               [12] 1121 	clr	a
      003374 FD               [12] 1122 	mov	r5,a
      003375 33               [12] 1123 	rlc	a
      003376 92 D2            [24] 1124 	mov	ov,c
      003378 80 08            [24] 1125 	sjmp	00125$
      00337A                       1126 00124$:
      00337A A2 D2            [12] 1127 	mov	c,ov
      00337C ED               [12] 1128 	mov	a,r5
      00337D 13               [12] 1129 	rrc	a
      00337E FD               [12] 1130 	mov	r5,a
      00337F EC               [12] 1131 	mov	a,r4
      003380 13               [12] 1132 	rrc	a
      003381 FC               [12] 1133 	mov	r4,a
      003382                       1134 00125$:
      003382 D5 F0 F5         [24] 1135 	djnz	b,00124$
      003385 90 04 0C         [24] 1136 	mov	dptr,#_i2c_read_buff_65536_48
      003388 E0               [24] 1137 	movx	a,@dptr
      003389 FB               [12] 1138 	mov	r3,a
      00338A 4C               [12] 1139 	orl	a,r4
      00338B F0               [24] 1140 	movx	@dptr,a
      00338C                       1141 00102$:
                                   1142 ;	8051_i2c_eeprom.c:211: buff = buff << 1;
      00338C 90 04 0C         [24] 1143 	mov	dptr,#_i2c_read_buff_65536_48
      00338F E0               [24] 1144 	movx	a,@dptr
      003390 25 E0            [12] 1145 	add	a,acc
      003392 F0               [24] 1146 	movx	@dptr,a
                                   1147 ;	8051_i2c_eeprom.c:212: SCL=0;
                                   1148 ;	assignBit
      003393 C2 93            [12] 1149 	clr	_P1_3
                                   1150 ;	8051_i2c_eeprom.c:205: for(int i=0;i<8;i++)
      003395 0E               [12] 1151 	inc	r6
      003396 BE 00 B7         [24] 1152 	cjne	r6,#0x00,00105$
      003399 0F               [12] 1153 	inc	r7
      00339A 80 B4            [24] 1154 	sjmp	00105$
      00339C                       1155 00103$:
                                   1156 ;	8051_i2c_eeprom.c:216: SDA = !ACK;         // ACK = 0, NACK = 1
      00339C 90 04 0A         [24] 1157 	mov	dptr,#_i2c_read_ACK_65536_47
      00339F E0               [24] 1158 	movx	a,@dptr
      0033A0 FE               [12] 1159 	mov	r6,a
      0033A1 A3               [24] 1160 	inc	dptr
      0033A2 E0               [24] 1161 	movx	a,@dptr
      0033A3 4E               [12] 1162 	orl	a,r6
      0033A4 B4 01 00         [24] 1163 	cjne	a,#0x01,00127$
      0033A7                       1164 00127$:
      0033A7 E4               [12] 1165 	clr	a
      0033A8 33               [12] 1166 	rlc	a
      0033A9 24 FF            [12] 1167 	add	a,#0xff
      0033AB 92 94            [24] 1168 	mov	_P1_4,c
                                   1169 ;	8051_i2c_eeprom.c:217: SCL = 1;
                                   1170 ;	assignBit
      0033AD D2 93            [12] 1171 	setb	_P1_3
                                   1172 ;	8051_i2c_eeprom.c:218: i2c_delay();
      0033AF 12 33 E2         [24] 1173 	lcall	_i2c_delay
                                   1174 ;	8051_i2c_eeprom.c:219: SCL = 0;
                                   1175 ;	assignBit
      0033B2 C2 93            [12] 1176 	clr	_P1_3
                                   1177 ;	8051_i2c_eeprom.c:221: return buff;
      0033B4 90 04 0C         [24] 1178 	mov	dptr,#_i2c_read_buff_65536_48
      0033B7 E0               [24] 1179 	movx	a,@dptr
      0033B8 FF               [12] 1180 	mov	r7,a
      0033B9 7E 00            [12] 1181 	mov	r6,#0x00
      0033BB 8F 82            [24] 1182 	mov	dpl,r7
      0033BD 8E 83            [24] 1183 	mov	dph,r6
                                   1184 ;	8051_i2c_eeprom.c:222: }
      0033BF 22               [24] 1185 	ret
                                   1186 ;------------------------------------------------------------
                                   1187 ;Allocation info for local variables in function 'i2c_start'
                                   1188 ;------------------------------------------------------------
                                   1189 ;	8051_i2c_eeprom.c:223: void i2c_start(void)
                                   1190 ;	-----------------------------------------
                                   1191 ;	 function i2c_start
                                   1192 ;	-----------------------------------------
      0033C0                       1193 _i2c_start:
                                   1194 ;	8051_i2c_eeprom.c:225: i2c_delay();
      0033C0 12 33 E2         [24] 1195 	lcall	_i2c_delay
                                   1196 ;	8051_i2c_eeprom.c:226: SDA = 1;
                                   1197 ;	assignBit
      0033C3 D2 94            [12] 1198 	setb	_P1_4
                                   1199 ;	8051_i2c_eeprom.c:227: i2c_delay();
      0033C5 12 33 E2         [24] 1200 	lcall	_i2c_delay
                                   1201 ;	8051_i2c_eeprom.c:228: SCL = 1;
                                   1202 ;	assignBit
      0033C8 D2 93            [12] 1203 	setb	_P1_3
                                   1204 ;	8051_i2c_eeprom.c:229: i2c_delay();
      0033CA 12 33 E2         [24] 1205 	lcall	_i2c_delay
                                   1206 ;	8051_i2c_eeprom.c:230: SDA = 0;
                                   1207 ;	assignBit
      0033CD C2 94            [12] 1208 	clr	_P1_4
                                   1209 ;	8051_i2c_eeprom.c:231: i2c_delay();
      0033CF 12 33 E2         [24] 1210 	lcall	_i2c_delay
                                   1211 ;	8051_i2c_eeprom.c:232: SCL = 0;
                                   1212 ;	assignBit
      0033D2 C2 93            [12] 1213 	clr	_P1_3
                                   1214 ;	8051_i2c_eeprom.c:233: }
      0033D4 22               [24] 1215 	ret
                                   1216 ;------------------------------------------------------------
                                   1217 ;Allocation info for local variables in function 'i2c_stop'
                                   1218 ;------------------------------------------------------------
                                   1219 ;	8051_i2c_eeprom.c:235: void i2c_stop(void)
                                   1220 ;	-----------------------------------------
                                   1221 ;	 function i2c_stop
                                   1222 ;	-----------------------------------------
      0033D5                       1223 _i2c_stop:
                                   1224 ;	8051_i2c_eeprom.c:237: SDA = 0;
                                   1225 ;	assignBit
      0033D5 C2 94            [12] 1226 	clr	_P1_4
                                   1227 ;	8051_i2c_eeprom.c:238: i2c_delay();
      0033D7 12 33 E2         [24] 1228 	lcall	_i2c_delay
                                   1229 ;	8051_i2c_eeprom.c:239: SCL = 1;
                                   1230 ;	assignBit
      0033DA D2 93            [12] 1231 	setb	_P1_3
                                   1232 ;	8051_i2c_eeprom.c:240: i2c_delay();
      0033DC 12 33 E2         [24] 1233 	lcall	_i2c_delay
                                   1234 ;	8051_i2c_eeprom.c:241: SDA = 1; 
                                   1235 ;	assignBit
      0033DF D2 94            [12] 1236 	setb	_P1_4
                                   1237 ;	8051_i2c_eeprom.c:242: }
      0033E1 22               [24] 1238 	ret
                                   1239 ;------------------------------------------------------------
                                   1240 ;Allocation info for local variables in function 'i2c_delay'
                                   1241 ;------------------------------------------------------------
                                   1242 ;i                         Allocated with name '_i2c_delay_i_131072_56'
                                   1243 ;------------------------------------------------------------
                                   1244 ;	8051_i2c_eeprom.c:244: void i2c_delay() 
                                   1245 ;	-----------------------------------------
                                   1246 ;	 function i2c_delay
                                   1247 ;	-----------------------------------------
      0033E2                       1248 _i2c_delay:
                                   1249 ;	8051_i2c_eeprom.c:252: for(int i = 0; i<500; i++);
      0033E2 7E 00            [12] 1250 	mov	r6,#0x00
      0033E4 7F 00            [12] 1251 	mov	r7,#0x00
      0033E6                       1252 00103$:
      0033E6 C3               [12] 1253 	clr	c
      0033E7 EE               [12] 1254 	mov	a,r6
      0033E8 94 F4            [12] 1255 	subb	a,#0xf4
      0033EA EF               [12] 1256 	mov	a,r7
      0033EB 64 80            [12] 1257 	xrl	a,#0x80
      0033ED 94 81            [12] 1258 	subb	a,#0x81
      0033EF 50 07            [24] 1259 	jnc	00105$
      0033F1 0E               [12] 1260 	inc	r6
      0033F2 BE 00 F1         [24] 1261 	cjne	r6,#0x00,00103$
      0033F5 0F               [12] 1262 	inc	r7
      0033F6 80 EE            [24] 1263 	sjmp	00103$
      0033F8                       1264 00105$:
                                   1265 ;	8051_i2c_eeprom.c:253: }
      0033F8 22               [24] 1266 	ret
                                   1267 	.area CSEG    (CODE)
                                   1268 	.area CONST   (CODE)
                                   1269 	.area CONST   (CODE)
      003EA9                       1270 ___str_0:
      003EA9 57 72 69 74 69 6E 67  1271 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      003ECE 0A                    1272 	.db 0x0a
      003ECF 0D                    1273 	.db 0x0d
      003ED0 00                    1274 	.db 0x00
                                   1275 	.area CSEG    (CODE)
                                   1276 	.area CONST   (CODE)
      003ED1                       1277 ___str_1:
      003ED1 52 65 61 64 20 62 61  1278 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      003EF6 0A                    1279 	.db 0x0a
      003EF7 0D                    1280 	.db 0x0d
      003EF8 00                    1281 	.db 0x00
                                   1282 	.area CSEG    (CODE)
                                   1283 	.area CONST   (CODE)
      003EF9                       1284 ___str_2:
      003EF9 4D 41 54 43 48 20 2D  1285 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      003F17 0A                    1286 	.db 0x0a
      003F18 0D                    1287 	.db 0x0d
      003F19 00                    1288 	.db 0x00
                                   1289 	.area CSEG    (CODE)
                                   1290 	.area CONST   (CODE)
      003F1A                       1291 ___str_3:
      003F1A 45 52 52 4F 52 20 2D  1292 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      003F30 0A                    1293 	.db 0x0a
      003F31 0D                    1294 	.db 0x0d
      003F32 00                    1295 	.db 0x00
                                   1296 	.area CSEG    (CODE)
                                   1297 	.area CONST   (CODE)
      003F33                       1298 ___str_4:
      003F33 45 72 72 6F 72 3A 20  1299 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      003F5B 0A                    1300 	.db 0x0a
      003F5C 0D                    1301 	.db 0x0d
      003F5D 00                    1302 	.db 0x00
                                   1303 	.area CSEG    (CODE)
                                   1304 	.area CONST   (CODE)
      003F5E                       1305 ___str_5:
      003F5E 45 72 72 6F 72 3A 20  1306 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      003F7E 0A                    1307 	.db 0x0a
      003F7F 0D                    1308 	.db 0x0d
      003F80 00                    1309 	.db 0x00
                                   1310 	.area CSEG    (CODE)
                                   1311 	.area CONST   (CODE)
      003F81                       1312 ___str_6:
      003F81 45 72 72 6F 72 3A 20  1313 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      003F97 0A                    1314 	.db 0x0a
      003F98 0D                    1315 	.db 0x0d
      003F99 00                    1316 	.db 0x00
                                   1317 	.area CSEG    (CODE)
                                   1318 	.area CONST   (CODE)
      003F9A                       1319 ___str_7:
      003F9A 45 72 72 6F 72 3A 20  1320 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      003FC7 0A                    1321 	.db 0x0a
      003FC8 0D                    1322 	.db 0x0d
      003FC9 00                    1323 	.db 0x00
                                   1324 	.area CSEG    (CODE)
                                   1325 	.area CONST   (CODE)
      003FCA                       1326 ___str_8:
      003FCA 45 72 72 6F 72 3A 20  1327 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      003FF6 0A                    1328 	.db 0x0a
      003FF7 0D                    1329 	.db 0x0d
      003FF8 00                    1330 	.db 0x00
                                   1331 	.area CSEG    (CODE)
                                   1332 	.area CONST   (CODE)
      003FF9                       1333 ___str_9:
      003FF9 41 43 4B 20 44 49 44  1334 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      00400B 0A                    1335 	.db 0x0a
      00400C 0D                    1336 	.db 0x0d
      00400D 00                    1337 	.db 0x00
                                   1338 	.area CSEG    (CODE)
                                   1339 	.area CONST   (CODE)
      00400E                       1340 ___str_10:
      00400E 54 72 61 6E 73 6D 69  1341 	.ascii "Transmission successfull"
             73 73 69 6F 6E 20 73
             75 63 63 65 73 73 66
             75 6C 6C
      004026 0A                    1342 	.db 0x0a
      004027 0D                    1343 	.db 0x0d
      004028 00                    1344 	.db 0x00
                                   1345 	.area CSEG    (CODE)
                                   1346 	.area XINIT   (CODE)
                                   1347 	.area CABS    (ABS,CODE)
