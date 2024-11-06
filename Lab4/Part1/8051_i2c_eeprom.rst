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
      003095 12 33 B9         [24]  618 	lcall	_i2c_start
                                    619 ;	8051_i2c_eeprom.c:43: i2c_delay();
      003098 12 33 DB         [24]  620 	lcall	_i2c_delay
                                    621 ;	8051_i2c_eeprom.c:49: printf("Writing 0x%02X to address 0x%02X\n\r", test_data, address);
      00309B E4               [12]  622 	clr	a
      00309C C0 E0            [24]  623 	push	acc
      00309E C0 E0            [24]  624 	push	acc
      0030A0 74 55            [12]  625 	mov	a,#0x55
      0030A2 C0 E0            [24]  626 	push	acc
      0030A4 E4               [12]  627 	clr	a
      0030A5 C0 E0            [24]  628 	push	acc
      0030A7 74 A2            [12]  629 	mov	a,#___str_0
      0030A9 C0 E0            [24]  630 	push	acc
      0030AB 74 3E            [12]  631 	mov	a,#(___str_0 >> 8)
      0030AD C0 E0            [24]  632 	push	acc
      0030AF 74 80            [12]  633 	mov	a,#0x80
      0030B1 C0 E0            [24]  634 	push	acc
      0030B3 12 34 40         [24]  635 	lcall	_printf
      0030B6 E5 81            [12]  636 	mov	a,sp
      0030B8 24 F9            [12]  637 	add	a,#0xf9
      0030BA F5 81            [12]  638 	mov	sp,a
                                    639 ;	8051_i2c_eeprom.c:50: eeprom_write(address, test_data);
      0030BC 90 04 04         [24]  640 	mov	dptr,#_eeprom_write_PARM_2
      0030BF 74 55            [12]  641 	mov	a,#0x55
      0030C1 F0               [24]  642 	movx	@dptr,a
      0030C2 90 00 00         [24]  643 	mov	dptr,#0x0000
      0030C5 12 31 4A         [24]  644 	lcall	_eeprom_write
                                    645 ;	8051_i2c_eeprom.c:52: for(int i = 0; i<100; i++)
      0030C8 7E 00            [12]  646 	mov	r6,#0x00
      0030CA 7F 00            [12]  647 	mov	r7,#0x00
      0030CC                        648 00106$:
      0030CC C3               [12]  649 	clr	c
      0030CD EE               [12]  650 	mov	a,r6
      0030CE 94 64            [12]  651 	subb	a,#0x64
      0030D0 EF               [12]  652 	mov	a,r7
      0030D1 64 80            [12]  653 	xrl	a,#0x80
      0030D3 94 80            [12]  654 	subb	a,#0x80
      0030D5 50 12            [24]  655 	jnc	00101$
                                    656 ;	8051_i2c_eeprom.c:54: i2c_delay();
      0030D7 C0 07            [24]  657 	push	ar7
      0030D9 C0 06            [24]  658 	push	ar6
      0030DB 12 33 DB         [24]  659 	lcall	_i2c_delay
      0030DE D0 06            [24]  660 	pop	ar6
      0030E0 D0 07            [24]  661 	pop	ar7
                                    662 ;	8051_i2c_eeprom.c:52: for(int i = 0; i<100; i++)
      0030E2 0E               [12]  663 	inc	r6
      0030E3 BE 00 E6         [24]  664 	cjne	r6,#0x00,00106$
      0030E6 0F               [12]  665 	inc	r7
      0030E7 80 E3            [24]  666 	sjmp	00106$
      0030E9                        667 00101$:
                                    668 ;	8051_i2c_eeprom.c:58: unsigned char read_data = eeprom_read(address);
      0030E9 90 00 00         [24]  669 	mov	dptr,#0x0000
      0030EC 12 32 0A         [24]  670 	lcall	_eeprom_read
      0030EF AE 82            [24]  671 	mov	r6,dpl
                                    672 ;	8051_i2c_eeprom.c:59: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      0030F1 8E 05            [24]  673 	mov	ar5,r6
      0030F3 7F 00            [12]  674 	mov	r7,#0x00
      0030F5 C0 06            [24]  675 	push	ar6
      0030F7 C0 05            [24]  676 	push	ar5
      0030F9 C0 07            [24]  677 	push	ar7
      0030FB E4               [12]  678 	clr	a
      0030FC C0 E0            [24]  679 	push	acc
      0030FE C0 E0            [24]  680 	push	acc
      003100 74 C5            [12]  681 	mov	a,#___str_1
      003102 C0 E0            [24]  682 	push	acc
      003104 74 3E            [12]  683 	mov	a,#(___str_1 >> 8)
      003106 C0 E0            [24]  684 	push	acc
      003108 74 80            [12]  685 	mov	a,#0x80
      00310A C0 E0            [24]  686 	push	acc
      00310C 12 34 40         [24]  687 	lcall	_printf
      00310F E5 81            [12]  688 	mov	a,sp
      003111 24 F9            [12]  689 	add	a,#0xf9
      003113 F5 81            [12]  690 	mov	sp,a
      003115 D0 06            [24]  691 	pop	ar6
                                    692 ;	8051_i2c_eeprom.c:62: if(read_data == test_data) {
      003117 BE 55 17         [24]  693 	cjne	r6,#0x55,00103$
                                    694 ;	8051_i2c_eeprom.c:63: printf("MATCH - Write/Read successful!\n\r");
      00311A 74 ED            [12]  695 	mov	a,#___str_2
      00311C C0 E0            [24]  696 	push	acc
      00311E 74 3E            [12]  697 	mov	a,#(___str_2 >> 8)
      003120 C0 E0            [24]  698 	push	acc
      003122 74 80            [12]  699 	mov	a,#0x80
      003124 C0 E0            [24]  700 	push	acc
      003126 12 34 40         [24]  701 	lcall	_printf
      003129 15 81            [12]  702 	dec	sp
      00312B 15 81            [12]  703 	dec	sp
      00312D 15 81            [12]  704 	dec	sp
      00312F 80 15            [24]  705 	sjmp	00104$
      003131                        706 00103$:
                                    707 ;	8051_i2c_eeprom.c:65: printf("ERROR - Data mismatch!\n\r");
      003131 74 0E            [12]  708 	mov	a,#___str_3
      003133 C0 E0            [24]  709 	push	acc
      003135 74 3F            [12]  710 	mov	a,#(___str_3 >> 8)
      003137 C0 E0            [24]  711 	push	acc
      003139 74 80            [12]  712 	mov	a,#0x80
      00313B C0 E0            [24]  713 	push	acc
      00313D 12 34 40         [24]  714 	lcall	_printf
      003140 15 81            [12]  715 	dec	sp
      003142 15 81            [12]  716 	dec	sp
      003144 15 81            [12]  717 	dec	sp
      003146                        718 00104$:
                                    719 ;	8051_i2c_eeprom.c:79: return 0;
      003146 90 00 00         [24]  720 	mov	dptr,#0x0000
                                    721 ;	8051_i2c_eeprom.c:80: }
      003149 22               [24]  722 	ret
                                    723 ;------------------------------------------------------------
                                    724 ;Allocation info for local variables in function 'eeprom_write'
                                    725 ;------------------------------------------------------------
                                    726 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                    727 ;address                   Allocated with name '_eeprom_write_address_65536_30'
                                    728 ;i                         Allocated with name '_eeprom_write_i_131072_35'
                                    729 ;------------------------------------------------------------
                                    730 ;	8051_i2c_eeprom.c:82: int eeprom_write(unsigned int address, unsigned char data) {
                                    731 ;	-----------------------------------------
                                    732 ;	 function eeprom_write
                                    733 ;	-----------------------------------------
      00314A                        734 _eeprom_write:
      00314A AF 83            [24]  735 	mov	r7,dph
      00314C E5 82            [12]  736 	mov	a,dpl
      00314E 90 04 05         [24]  737 	mov	dptr,#_eeprom_write_address_65536_30
      003151 F0               [24]  738 	movx	@dptr,a
      003152 EF               [12]  739 	mov	a,r7
      003153 A3               [24]  740 	inc	dptr
      003154 F0               [24]  741 	movx	@dptr,a
                                    742 ;	8051_i2c_eeprom.c:83: i2c_start();
      003155 12 33 B9         [24]  743 	lcall	_i2c_start
                                    744 ;	8051_i2c_eeprom.c:86: if(!i2c_write(EEPROM_ID | WRITE)) {
      003158 75 82 A0         [24]  745 	mov	dpl,#0xa0
      00315B 12 32 B8         [24]  746 	lcall	_i2c_write
      00315E E5 82            [12]  747 	mov	a,dpl
      003160 85 83 F0         [24]  748 	mov	b,dph
      003163 45 F0            [12]  749 	orl	a,b
      003165 70 1C            [24]  750 	jnz	00102$
                                    751 ;	8051_i2c_eeprom.c:87: printf("Error: No ACK for device address (write)\n\r");
      003167 74 27            [12]  752 	mov	a,#___str_4
      003169 C0 E0            [24]  753 	push	acc
      00316B 74 3F            [12]  754 	mov	a,#(___str_4 >> 8)
      00316D C0 E0            [24]  755 	push	acc
      00316F 74 80            [12]  756 	mov	a,#0x80
      003171 C0 E0            [24]  757 	push	acc
      003173 12 34 40         [24]  758 	lcall	_printf
      003176 15 81            [12]  759 	dec	sp
      003178 15 81            [12]  760 	dec	sp
      00317A 15 81            [12]  761 	dec	sp
                                    762 ;	8051_i2c_eeprom.c:88: i2c_stop();
      00317C 12 33 CE         [24]  763 	lcall	_i2c_stop
                                    764 ;	8051_i2c_eeprom.c:89: return 0;
      00317F 90 00 00         [24]  765 	mov	dptr,#0x0000
      003182 22               [24]  766 	ret
      003183                        767 00102$:
                                    768 ;	8051_i2c_eeprom.c:93: if(!i2c_write((unsigned char)address)) {
      003183 90 04 05         [24]  769 	mov	dptr,#_eeprom_write_address_65536_30
      003186 E0               [24]  770 	movx	a,@dptr
      003187 FE               [12]  771 	mov	r6,a
      003188 A3               [24]  772 	inc	dptr
      003189 E0               [24]  773 	movx	a,@dptr
      00318A 8E 82            [24]  774 	mov	dpl,r6
      00318C 12 32 B8         [24]  775 	lcall	_i2c_write
      00318F E5 82            [12]  776 	mov	a,dpl
      003191 85 83 F0         [24]  777 	mov	b,dph
      003194 45 F0            [12]  778 	orl	a,b
      003196 70 1C            [24]  779 	jnz	00104$
                                    780 ;	8051_i2c_eeprom.c:94: printf("Error: No ACK for memory address\n\r");
      003198 74 52            [12]  781 	mov	a,#___str_5
      00319A C0 E0            [24]  782 	push	acc
      00319C 74 3F            [12]  783 	mov	a,#(___str_5 >> 8)
      00319E C0 E0            [24]  784 	push	acc
      0031A0 74 80            [12]  785 	mov	a,#0x80
      0031A2 C0 E0            [24]  786 	push	acc
      0031A4 12 34 40         [24]  787 	lcall	_printf
      0031A7 15 81            [12]  788 	dec	sp
      0031A9 15 81            [12]  789 	dec	sp
      0031AB 15 81            [12]  790 	dec	sp
                                    791 ;	8051_i2c_eeprom.c:95: i2c_stop();
      0031AD 12 33 CE         [24]  792 	lcall	_i2c_stop
                                    793 ;	8051_i2c_eeprom.c:96: return 0;
      0031B0 90 00 00         [24]  794 	mov	dptr,#0x0000
      0031B3 22               [24]  795 	ret
      0031B4                        796 00104$:
                                    797 ;	8051_i2c_eeprom.c:100: if(!i2c_write(data)) {
      0031B4 90 04 04         [24]  798 	mov	dptr,#_eeprom_write_PARM_2
      0031B7 E0               [24]  799 	movx	a,@dptr
      0031B8 F5 82            [12]  800 	mov	dpl,a
      0031BA 12 32 B8         [24]  801 	lcall	_i2c_write
      0031BD E5 82            [12]  802 	mov	a,dpl
      0031BF 85 83 F0         [24]  803 	mov	b,dph
      0031C2 45 F0            [12]  804 	orl	a,b
      0031C4 70 1C            [24]  805 	jnz	00106$
                                    806 ;	8051_i2c_eeprom.c:101: printf("Error: No ACK for data\n\r");
      0031C6 74 75            [12]  807 	mov	a,#___str_6
      0031C8 C0 E0            [24]  808 	push	acc
      0031CA 74 3F            [12]  809 	mov	a,#(___str_6 >> 8)
      0031CC C0 E0            [24]  810 	push	acc
      0031CE 74 80            [12]  811 	mov	a,#0x80
      0031D0 C0 E0            [24]  812 	push	acc
      0031D2 12 34 40         [24]  813 	lcall	_printf
      0031D5 15 81            [12]  814 	dec	sp
      0031D7 15 81            [12]  815 	dec	sp
      0031D9 15 81            [12]  816 	dec	sp
                                    817 ;	8051_i2c_eeprom.c:102: i2c_stop();
      0031DB 12 33 CE         [24]  818 	lcall	_i2c_stop
                                    819 ;	8051_i2c_eeprom.c:103: return 0;
      0031DE 90 00 00         [24]  820 	mov	dptr,#0x0000
      0031E1 22               [24]  821 	ret
      0031E2                        822 00106$:
                                    823 ;	8051_i2c_eeprom.c:106: i2c_stop();
      0031E2 12 33 CE         [24]  824 	lcall	_i2c_stop
                                    825 ;	8051_i2c_eeprom.c:108: for(int i = 0; i<100; i++)
      0031E5 7E 00            [12]  826 	mov	r6,#0x00
      0031E7 7F 00            [12]  827 	mov	r7,#0x00
      0031E9                        828 00109$:
      0031E9 C3               [12]  829 	clr	c
      0031EA EE               [12]  830 	mov	a,r6
      0031EB 94 64            [12]  831 	subb	a,#0x64
      0031ED EF               [12]  832 	mov	a,r7
      0031EE 64 80            [12]  833 	xrl	a,#0x80
      0031F0 94 80            [12]  834 	subb	a,#0x80
      0031F2 50 12            [24]  835 	jnc	00107$
                                    836 ;	8051_i2c_eeprom.c:110: i2c_delay();
      0031F4 C0 07            [24]  837 	push	ar7
      0031F6 C0 06            [24]  838 	push	ar6
      0031F8 12 33 DB         [24]  839 	lcall	_i2c_delay
      0031FB D0 06            [24]  840 	pop	ar6
      0031FD D0 07            [24]  841 	pop	ar7
                                    842 ;	8051_i2c_eeprom.c:108: for(int i = 0; i<100; i++)
      0031FF 0E               [12]  843 	inc	r6
      003200 BE 00 E6         [24]  844 	cjne	r6,#0x00,00109$
      003203 0F               [12]  845 	inc	r7
      003204 80 E3            [24]  846 	sjmp	00109$
      003206                        847 00107$:
                                    848 ;	8051_i2c_eeprom.c:112: return 1;  // Success
      003206 90 00 01         [24]  849 	mov	dptr,#0x0001
                                    850 ;	8051_i2c_eeprom.c:113: }
      003209 22               [24]  851 	ret
                                    852 ;------------------------------------------------------------
                                    853 ;Allocation info for local variables in function 'eeprom_read'
                                    854 ;------------------------------------------------------------
                                    855 ;address                   Allocated with name '_eeprom_read_address_65536_37'
                                    856 ;result                    Allocated with name '_eeprom_read_result_65536_38'
                                    857 ;------------------------------------------------------------
                                    858 ;	8051_i2c_eeprom.c:115: int eeprom_read(unsigned int address) {
                                    859 ;	-----------------------------------------
                                    860 ;	 function eeprom_read
                                    861 ;	-----------------------------------------
      00320A                        862 _eeprom_read:
      00320A AF 83            [24]  863 	mov	r7,dph
      00320C E5 82            [12]  864 	mov	a,dpl
      00320E 90 04 07         [24]  865 	mov	dptr,#_eeprom_read_address_65536_37
      003211 F0               [24]  866 	movx	@dptr,a
      003212 EF               [12]  867 	mov	a,r7
      003213 A3               [24]  868 	inc	dptr
      003214 F0               [24]  869 	movx	@dptr,a
                                    870 ;	8051_i2c_eeprom.c:119: i2c_start();
      003215 12 33 B9         [24]  871 	lcall	_i2c_start
                                    872 ;	8051_i2c_eeprom.c:122: if(!i2c_write(EEPROM_ID | WRITE)) {
      003218 75 82 A0         [24]  873 	mov	dpl,#0xa0
      00321B 12 32 B8         [24]  874 	lcall	_i2c_write
      00321E E5 82            [12]  875 	mov	a,dpl
      003220 85 83 F0         [24]  876 	mov	b,dph
      003223 45 F0            [12]  877 	orl	a,b
      003225 70 1C            [24]  878 	jnz	00102$
                                    879 ;	8051_i2c_eeprom.c:123: printf("Error: No ACK for device address (write mode)\n\r");
      003227 74 8E            [12]  880 	mov	a,#___str_7
      003229 C0 E0            [24]  881 	push	acc
      00322B 74 3F            [12]  882 	mov	a,#(___str_7 >> 8)
      00322D C0 E0            [24]  883 	push	acc
      00322F 74 80            [12]  884 	mov	a,#0x80
      003231 C0 E0            [24]  885 	push	acc
      003233 12 34 40         [24]  886 	lcall	_printf
      003236 15 81            [12]  887 	dec	sp
      003238 15 81            [12]  888 	dec	sp
      00323A 15 81            [12]  889 	dec	sp
                                    890 ;	8051_i2c_eeprom.c:124: i2c_stop();
      00323C 12 33 CE         [24]  891 	lcall	_i2c_stop
                                    892 ;	8051_i2c_eeprom.c:125: return -1;
      00323F 90 FF FF         [24]  893 	mov	dptr,#0xffff
      003242 22               [24]  894 	ret
      003243                        895 00102$:
                                    896 ;	8051_i2c_eeprom.c:129: if(!i2c_write((unsigned char)address)) {
      003243 90 04 07         [24]  897 	mov	dptr,#_eeprom_read_address_65536_37
      003246 E0               [24]  898 	movx	a,@dptr
      003247 FE               [12]  899 	mov	r6,a
      003248 A3               [24]  900 	inc	dptr
      003249 E0               [24]  901 	movx	a,@dptr
      00324A 8E 82            [24]  902 	mov	dpl,r6
      00324C 12 32 B8         [24]  903 	lcall	_i2c_write
      00324F E5 82            [12]  904 	mov	a,dpl
      003251 85 83 F0         [24]  905 	mov	b,dph
      003254 45 F0            [12]  906 	orl	a,b
      003256 70 1C            [24]  907 	jnz	00104$
                                    908 ;	8051_i2c_eeprom.c:130: printf("Error: No ACK for memory address\n\r");
      003258 74 52            [12]  909 	mov	a,#___str_5
      00325A C0 E0            [24]  910 	push	acc
      00325C 74 3F            [12]  911 	mov	a,#(___str_5 >> 8)
      00325E C0 E0            [24]  912 	push	acc
      003260 74 80            [12]  913 	mov	a,#0x80
      003262 C0 E0            [24]  914 	push	acc
      003264 12 34 40         [24]  915 	lcall	_printf
      003267 15 81            [12]  916 	dec	sp
      003269 15 81            [12]  917 	dec	sp
      00326B 15 81            [12]  918 	dec	sp
                                    919 ;	8051_i2c_eeprom.c:131: i2c_stop();
      00326D 12 33 CE         [24]  920 	lcall	_i2c_stop
                                    921 ;	8051_i2c_eeprom.c:132: return -1;
      003270 90 FF FF         [24]  922 	mov	dptr,#0xffff
      003273 22               [24]  923 	ret
      003274                        924 00104$:
                                    925 ;	8051_i2c_eeprom.c:136: i2c_start();
      003274 12 33 B9         [24]  926 	lcall	_i2c_start
                                    927 ;	8051_i2c_eeprom.c:139: if(!i2c_write(EEPROM_ID | READ)) {
      003277 75 82 A1         [24]  928 	mov	dpl,#0xa1
      00327A 12 32 B8         [24]  929 	lcall	_i2c_write
      00327D E5 82            [12]  930 	mov	a,dpl
      00327F 85 83 F0         [24]  931 	mov	b,dph
      003282 45 F0            [12]  932 	orl	a,b
      003284 70 1C            [24]  933 	jnz	00106$
                                    934 ;	8051_i2c_eeprom.c:140: printf("Error: No ACK for device address (read mode)\n\r");
      003286 74 BE            [12]  935 	mov	a,#___str_8
      003288 C0 E0            [24]  936 	push	acc
      00328A 74 3F            [12]  937 	mov	a,#(___str_8 >> 8)
      00328C C0 E0            [24]  938 	push	acc
      00328E 74 80            [12]  939 	mov	a,#0x80
      003290 C0 E0            [24]  940 	push	acc
      003292 12 34 40         [24]  941 	lcall	_printf
      003295 15 81            [12]  942 	dec	sp
      003297 15 81            [12]  943 	dec	sp
      003299 15 81            [12]  944 	dec	sp
                                    945 ;	8051_i2c_eeprom.c:141: i2c_stop();
      00329B 12 33 CE         [24]  946 	lcall	_i2c_stop
                                    947 ;	8051_i2c_eeprom.c:142: return -1;
      00329E 90 FF FF         [24]  948 	mov	dptr,#0xffff
      0032A1 22               [24]  949 	ret
      0032A2                        950 00106$:
                                    951 ;	8051_i2c_eeprom.c:146: result = i2c_read(0);  // 0 means send NACK
      0032A2 90 00 00         [24]  952 	mov	dptr,#0x0000
      0032A5 12 33 35         [24]  953 	lcall	_i2c_read
      0032A8 AE 82            [24]  954 	mov	r6,dpl
                                    955 ;	8051_i2c_eeprom.c:148: i2c_stop();
      0032AA C0 06            [24]  956 	push	ar6
      0032AC 12 33 CE         [24]  957 	lcall	_i2c_stop
      0032AF D0 06            [24]  958 	pop	ar6
                                    959 ;	8051_i2c_eeprom.c:149: return result;
      0032B1 7F 00            [12]  960 	mov	r7,#0x00
      0032B3 8E 82            [24]  961 	mov	dpl,r6
      0032B5 8F 83            [24]  962 	mov	dph,r7
                                    963 ;	8051_i2c_eeprom.c:150: }
      0032B7 22               [24]  964 	ret
                                    965 ;------------------------------------------------------------
                                    966 ;Allocation info for local variables in function 'i2c_write'
                                    967 ;------------------------------------------------------------
                                    968 ;data                      Allocated with name '_i2c_write_data_65536_42'
                                    969 ;i                         Allocated with name '_i2c_write_i_65536_43'
                                    970 ;------------------------------------------------------------
                                    971 ;	8051_i2c_eeprom.c:181: int i2c_write(unsigned char data)
                                    972 ;	-----------------------------------------
                                    973 ;	 function i2c_write
                                    974 ;	-----------------------------------------
      0032B8                        975 _i2c_write:
      0032B8 E5 82            [12]  976 	mov	a,dpl
      0032BA 90 04 09         [24]  977 	mov	dptr,#_i2c_write_data_65536_42
      0032BD F0               [24]  978 	movx	@dptr,a
                                    979 ;	8051_i2c_eeprom.c:185: for(i=0;i<=7;i++)
      0032BE 7E 00            [12]  980 	mov	r6,#0x00
      0032C0 7F 00            [12]  981 	mov	r7,#0x00
      0032C2                        982 00104$:
                                    983 ;	8051_i2c_eeprom.c:187: SDA = (data & 0x80) ? 1 : 0;
      0032C2 90 04 09         [24]  984 	mov	dptr,#_i2c_write_data_65536_42
      0032C5 E0               [24]  985 	movx	a,@dptr
      0032C6 FD               [12]  986 	mov	r5,a
      0032C7 23               [12]  987 	rl	a
      0032C8 54 01            [12]  988 	anl	a,#0x01
      0032CA 24 FF            [12]  989 	add	a,#0xff
      0032CC 92 94            [24]  990 	mov	_P1_4,c
                                    991 ;	8051_i2c_eeprom.c:188: i2c_delay();        // Setup time for data
      0032CE C0 07            [24]  992 	push	ar7
      0032D0 C0 06            [24]  993 	push	ar6
      0032D2 C0 05            [24]  994 	push	ar5
      0032D4 12 33 DB         [24]  995 	lcall	_i2c_delay
                                    996 ;	8051_i2c_eeprom.c:189: SCL=1;
                                    997 ;	assignBit
      0032D7 D2 93            [12]  998 	setb	_P1_3
                                    999 ;	8051_i2c_eeprom.c:190: i2c_delay();        // Hold time for clock
      0032D9 12 33 DB         [24] 1000 	lcall	_i2c_delay
      0032DC D0 05            [24] 1001 	pop	ar5
      0032DE D0 06            [24] 1002 	pop	ar6
      0032E0 D0 07            [24] 1003 	pop	ar7
                                   1004 ;	8051_i2c_eeprom.c:191: SCL=0;
                                   1005 ;	assignBit
      0032E2 C2 93            [12] 1006 	clr	_P1_3
                                   1007 ;	8051_i2c_eeprom.c:192: data = data << 1;
      0032E4 ED               [12] 1008 	mov	a,r5
      0032E5 2D               [12] 1009 	add	a,r5
      0032E6 90 04 09         [24] 1010 	mov	dptr,#_i2c_write_data_65536_42
      0032E9 F0               [24] 1011 	movx	@dptr,a
                                   1012 ;	8051_i2c_eeprom.c:185: for(i=0;i<=7;i++)
      0032EA 0E               [12] 1013 	inc	r6
      0032EB BE 00 01         [24] 1014 	cjne	r6,#0x00,00121$
      0032EE 0F               [12] 1015 	inc	r7
      0032EF                       1016 00121$:
      0032EF C3               [12] 1017 	clr	c
      0032F0 74 07            [12] 1018 	mov	a,#0x07
      0032F2 9E               [12] 1019 	subb	a,r6
      0032F3 E4               [12] 1020 	clr	a
      0032F4 9F               [12] 1021 	subb	a,r7
      0032F5 50 CB            [24] 1022 	jnc	00104$
                                   1023 ;	8051_i2c_eeprom.c:196: SDA = 1;            // Release SDA for slave
                                   1024 ;	assignBit
      0032F7 D2 94            [12] 1025 	setb	_P1_4
                                   1026 ;	8051_i2c_eeprom.c:197: SCL = 1;            // 9th clock pulse for ACK
                                   1027 ;	assignBit
      0032F9 D2 93            [12] 1028 	setb	_P1_3
                                   1029 ;	8051_i2c_eeprom.c:198: i2c_delay();
      0032FB 12 33 DB         [24] 1030 	lcall	_i2c_delay
                                   1031 ;	8051_i2c_eeprom.c:199: if(SDA == 1)        // If SDA is still high, no ACK received
      0032FE 30 94 19         [24] 1032 	jnb	_P1_4,00103$
                                   1033 ;	8051_i2c_eeprom.c:202: printf("ACK DID NOT ARRIVE\n\r");
      003301 74 ED            [12] 1034 	mov	a,#___str_9
      003303 C0 E0            [24] 1035 	push	acc
      003305 74 3F            [12] 1036 	mov	a,#(___str_9 >> 8)
      003307 C0 E0            [24] 1037 	push	acc
      003309 74 80            [12] 1038 	mov	a,#0x80
      00330B C0 E0            [24] 1039 	push	acc
      00330D 12 34 40         [24] 1040 	lcall	_printf
      003310 15 81            [12] 1041 	dec	sp
      003312 15 81            [12] 1042 	dec	sp
      003314 15 81            [12] 1043 	dec	sp
                                   1044 ;	8051_i2c_eeprom.c:203: return 0;       // Error
      003316 90 00 00         [24] 1045 	mov	dptr,#0x0000
      003319 22               [24] 1046 	ret
      00331A                       1047 00103$:
                                   1048 ;	8051_i2c_eeprom.c:205: SCL = 0;
                                   1049 ;	assignBit
      00331A C2 93            [12] 1050 	clr	_P1_3
                                   1051 ;	8051_i2c_eeprom.c:206: printf("Transmission successfull\n\r");
      00331C 74 02            [12] 1052 	mov	a,#___str_10
      00331E C0 E0            [24] 1053 	push	acc
      003320 74 40            [12] 1054 	mov	a,#(___str_10 >> 8)
      003322 C0 E0            [24] 1055 	push	acc
      003324 74 80            [12] 1056 	mov	a,#0x80
      003326 C0 E0            [24] 1057 	push	acc
      003328 12 34 40         [24] 1058 	lcall	_printf
      00332B 15 81            [12] 1059 	dec	sp
      00332D 15 81            [12] 1060 	dec	sp
      00332F 15 81            [12] 1061 	dec	sp
                                   1062 ;	8051_i2c_eeprom.c:207: return 1;           // Success
      003331 90 00 01         [24] 1063 	mov	dptr,#0x0001
                                   1064 ;	8051_i2c_eeprom.c:209: }
      003334 22               [24] 1065 	ret
                                   1066 ;------------------------------------------------------------
                                   1067 ;Allocation info for local variables in function 'i2c_read'
                                   1068 ;------------------------------------------------------------
                                   1069 ;ACK                       Allocated with name '_i2c_read_ACK_65536_47'
                                   1070 ;buff                      Allocated with name '_i2c_read_buff_65536_48'
                                   1071 ;i                         Allocated with name '_i2c_read_i_131072_49'
                                   1072 ;------------------------------------------------------------
                                   1073 ;	8051_i2c_eeprom.c:210: int i2c_read(int ACK)
                                   1074 ;	-----------------------------------------
                                   1075 ;	 function i2c_read
                                   1076 ;	-----------------------------------------
      003335                       1077 _i2c_read:
      003335 AF 83            [24] 1078 	mov	r7,dph
      003337 E5 82            [12] 1079 	mov	a,dpl
      003339 90 04 0A         [24] 1080 	mov	dptr,#_i2c_read_ACK_65536_47
      00333C F0               [24] 1081 	movx	@dptr,a
      00333D EF               [12] 1082 	mov	a,r7
      00333E A3               [24] 1083 	inc	dptr
      00333F F0               [24] 1084 	movx	@dptr,a
                                   1085 ;	8051_i2c_eeprom.c:212: unsigned char buff=0;
      003340 90 04 0C         [24] 1086 	mov	dptr,#_i2c_read_buff_65536_48
      003343 E4               [12] 1087 	clr	a
      003344 F0               [24] 1088 	movx	@dptr,a
                                   1089 ;	8051_i2c_eeprom.c:214: for(int i=0;i<8;i++)
      003345 7E 00            [12] 1090 	mov	r6,#0x00
      003347 7F 00            [12] 1091 	mov	r7,#0x00
      003349                       1092 00105$:
      003349 C3               [12] 1093 	clr	c
      00334A EE               [12] 1094 	mov	a,r6
      00334B 94 08            [12] 1095 	subb	a,#0x08
      00334D EF               [12] 1096 	mov	a,r7
      00334E 64 80            [12] 1097 	xrl	a,#0x80
      003350 94 80            [12] 1098 	subb	a,#0x80
      003352 50 41            [24] 1099 	jnc	00103$
                                   1100 ;	8051_i2c_eeprom.c:216: SDA = 1;
                                   1101 ;	assignBit
      003354 D2 94            [12] 1102 	setb	_P1_4
                                   1103 ;	8051_i2c_eeprom.c:217: SCL = 1;
                                   1104 ;	assignBit
      003356 D2 93            [12] 1105 	setb	_P1_3
                                   1106 ;	8051_i2c_eeprom.c:218: i2c_delay();
      003358 C0 07            [24] 1107 	push	ar7
      00335A C0 06            [24] 1108 	push	ar6
      00335C 12 33 DB         [24] 1109 	lcall	_i2c_delay
      00335F D0 06            [24] 1110 	pop	ar6
      003361 D0 07            [24] 1111 	pop	ar7
                                   1112 ;	8051_i2c_eeprom.c:219: buff = buff << 1;
      003363 90 04 0C         [24] 1113 	mov	dptr,#_i2c_read_buff_65536_48
      003366 E0               [24] 1114 	movx	a,@dptr
      003367 25 E0            [12] 1115 	add	a,acc
      003369 F0               [24] 1116 	movx	@dptr,a
                                   1117 ;	8051_i2c_eeprom.c:220: if(SDA) buff |=0x80>>i;
      00336A 30 94 1F         [24] 1118 	jnb	_P1_4,00102$
      00336D 8E F0            [24] 1119 	mov	b,r6
      00336F 05 F0            [12] 1120 	inc	b
      003371 7C 80            [12] 1121 	mov	r4,#0x80
      003373 E4               [12] 1122 	clr	a
      003374 FD               [12] 1123 	mov	r5,a
      003375 33               [12] 1124 	rlc	a
      003376 92 D2            [24] 1125 	mov	ov,c
      003378 80 08            [24] 1126 	sjmp	00125$
      00337A                       1127 00124$:
      00337A A2 D2            [12] 1128 	mov	c,ov
      00337C ED               [12] 1129 	mov	a,r5
      00337D 13               [12] 1130 	rrc	a
      00337E FD               [12] 1131 	mov	r5,a
      00337F EC               [12] 1132 	mov	a,r4
      003380 13               [12] 1133 	rrc	a
      003381 FC               [12] 1134 	mov	r4,a
      003382                       1135 00125$:
      003382 D5 F0 F5         [24] 1136 	djnz	b,00124$
      003385 90 04 0C         [24] 1137 	mov	dptr,#_i2c_read_buff_65536_48
      003388 E0               [24] 1138 	movx	a,@dptr
      003389 FB               [12] 1139 	mov	r3,a
      00338A 4C               [12] 1140 	orl	a,r4
      00338B F0               [24] 1141 	movx	@dptr,a
      00338C                       1142 00102$:
                                   1143 ;	8051_i2c_eeprom.c:221: SCL=0;
                                   1144 ;	assignBit
      00338C C2 93            [12] 1145 	clr	_P1_3
                                   1146 ;	8051_i2c_eeprom.c:214: for(int i=0;i<8;i++)
      00338E 0E               [12] 1147 	inc	r6
      00338F BE 00 B7         [24] 1148 	cjne	r6,#0x00,00105$
      003392 0F               [12] 1149 	inc	r7
      003393 80 B4            [24] 1150 	sjmp	00105$
      003395                       1151 00103$:
                                   1152 ;	8051_i2c_eeprom.c:225: SDA = !ACK;         // ACK = 0, NACK = 1
      003395 90 04 0A         [24] 1153 	mov	dptr,#_i2c_read_ACK_65536_47
      003398 E0               [24] 1154 	movx	a,@dptr
      003399 FE               [12] 1155 	mov	r6,a
      00339A A3               [24] 1156 	inc	dptr
      00339B E0               [24] 1157 	movx	a,@dptr
      00339C 4E               [12] 1158 	orl	a,r6
      00339D B4 01 00         [24] 1159 	cjne	a,#0x01,00127$
      0033A0                       1160 00127$:
      0033A0 E4               [12] 1161 	clr	a
      0033A1 33               [12] 1162 	rlc	a
      0033A2 24 FF            [12] 1163 	add	a,#0xff
      0033A4 92 94            [24] 1164 	mov	_P1_4,c
                                   1165 ;	8051_i2c_eeprom.c:226: SCL = 1;
                                   1166 ;	assignBit
      0033A6 D2 93            [12] 1167 	setb	_P1_3
                                   1168 ;	8051_i2c_eeprom.c:227: i2c_delay();
      0033A8 12 33 DB         [24] 1169 	lcall	_i2c_delay
                                   1170 ;	8051_i2c_eeprom.c:228: SCL = 0;
                                   1171 ;	assignBit
      0033AB C2 93            [12] 1172 	clr	_P1_3
                                   1173 ;	8051_i2c_eeprom.c:230: return buff;
      0033AD 90 04 0C         [24] 1174 	mov	dptr,#_i2c_read_buff_65536_48
      0033B0 E0               [24] 1175 	movx	a,@dptr
      0033B1 FF               [12] 1176 	mov	r7,a
      0033B2 7E 00            [12] 1177 	mov	r6,#0x00
      0033B4 8F 82            [24] 1178 	mov	dpl,r7
      0033B6 8E 83            [24] 1179 	mov	dph,r6
                                   1180 ;	8051_i2c_eeprom.c:231: }
      0033B8 22               [24] 1181 	ret
                                   1182 ;------------------------------------------------------------
                                   1183 ;Allocation info for local variables in function 'i2c_start'
                                   1184 ;------------------------------------------------------------
                                   1185 ;	8051_i2c_eeprom.c:232: void i2c_start(void)
                                   1186 ;	-----------------------------------------
                                   1187 ;	 function i2c_start
                                   1188 ;	-----------------------------------------
      0033B9                       1189 _i2c_start:
                                   1190 ;	8051_i2c_eeprom.c:234: i2c_delay();
      0033B9 12 33 DB         [24] 1191 	lcall	_i2c_delay
                                   1192 ;	8051_i2c_eeprom.c:235: SDA = 1;
                                   1193 ;	assignBit
      0033BC D2 94            [12] 1194 	setb	_P1_4
                                   1195 ;	8051_i2c_eeprom.c:236: i2c_delay();
      0033BE 12 33 DB         [24] 1196 	lcall	_i2c_delay
                                   1197 ;	8051_i2c_eeprom.c:237: SCL = 1;
                                   1198 ;	assignBit
      0033C1 D2 93            [12] 1199 	setb	_P1_3
                                   1200 ;	8051_i2c_eeprom.c:238: i2c_delay();
      0033C3 12 33 DB         [24] 1201 	lcall	_i2c_delay
                                   1202 ;	8051_i2c_eeprom.c:239: SDA = 0;
                                   1203 ;	assignBit
      0033C6 C2 94            [12] 1204 	clr	_P1_4
                                   1205 ;	8051_i2c_eeprom.c:240: i2c_delay();
      0033C8 12 33 DB         [24] 1206 	lcall	_i2c_delay
                                   1207 ;	8051_i2c_eeprom.c:241: SCL = 0;
                                   1208 ;	assignBit
      0033CB C2 93            [12] 1209 	clr	_P1_3
                                   1210 ;	8051_i2c_eeprom.c:242: }
      0033CD 22               [24] 1211 	ret
                                   1212 ;------------------------------------------------------------
                                   1213 ;Allocation info for local variables in function 'i2c_stop'
                                   1214 ;------------------------------------------------------------
                                   1215 ;	8051_i2c_eeprom.c:244: void i2c_stop(void)
                                   1216 ;	-----------------------------------------
                                   1217 ;	 function i2c_stop
                                   1218 ;	-----------------------------------------
      0033CE                       1219 _i2c_stop:
                                   1220 ;	8051_i2c_eeprom.c:246: SDA = 0;
                                   1221 ;	assignBit
      0033CE C2 94            [12] 1222 	clr	_P1_4
                                   1223 ;	8051_i2c_eeprom.c:247: i2c_delay();
      0033D0 12 33 DB         [24] 1224 	lcall	_i2c_delay
                                   1225 ;	8051_i2c_eeprom.c:248: SCL = 1;
                                   1226 ;	assignBit
      0033D3 D2 93            [12] 1227 	setb	_P1_3
                                   1228 ;	8051_i2c_eeprom.c:249: i2c_delay();
      0033D5 12 33 DB         [24] 1229 	lcall	_i2c_delay
                                   1230 ;	8051_i2c_eeprom.c:250: SDA = 1; 
                                   1231 ;	assignBit
      0033D8 D2 94            [12] 1232 	setb	_P1_4
                                   1233 ;	8051_i2c_eeprom.c:251: }
      0033DA 22               [24] 1234 	ret
                                   1235 ;------------------------------------------------------------
                                   1236 ;Allocation info for local variables in function 'i2c_delay'
                                   1237 ;------------------------------------------------------------
                                   1238 ;i                         Allocated with name '_i2c_delay_i_131072_56'
                                   1239 ;------------------------------------------------------------
                                   1240 ;	8051_i2c_eeprom.c:253: void i2c_delay() 
                                   1241 ;	-----------------------------------------
                                   1242 ;	 function i2c_delay
                                   1243 ;	-----------------------------------------
      0033DB                       1244 _i2c_delay:
                                   1245 ;	8051_i2c_eeprom.c:261: for(int i = 0; i<500; i++);
      0033DB 7E 00            [12] 1246 	mov	r6,#0x00
      0033DD 7F 00            [12] 1247 	mov	r7,#0x00
      0033DF                       1248 00103$:
      0033DF C3               [12] 1249 	clr	c
      0033E0 EE               [12] 1250 	mov	a,r6
      0033E1 94 F4            [12] 1251 	subb	a,#0xf4
      0033E3 EF               [12] 1252 	mov	a,r7
      0033E4 64 80            [12] 1253 	xrl	a,#0x80
      0033E6 94 81            [12] 1254 	subb	a,#0x81
      0033E8 50 07            [24] 1255 	jnc	00105$
      0033EA 0E               [12] 1256 	inc	r6
      0033EB BE 00 F1         [24] 1257 	cjne	r6,#0x00,00103$
      0033EE 0F               [12] 1258 	inc	r7
      0033EF 80 EE            [24] 1259 	sjmp	00103$
      0033F1                       1260 00105$:
                                   1261 ;	8051_i2c_eeprom.c:262: }
      0033F1 22               [24] 1262 	ret
                                   1263 	.area CSEG    (CODE)
                                   1264 	.area CONST   (CODE)
                                   1265 	.area CONST   (CODE)
      003EA2                       1266 ___str_0:
      003EA2 57 72 69 74 69 6E 67  1267 	.ascii "Writing 0x%02X to address 0x%02X"
             20 30 78 25 30 32 58
             20 74 6F 20 61 64 64
             72 65 73 73 20 30 78
             25 30 32 58
      003EC2 0A                    1268 	.db 0x0a
      003EC3 0D                    1269 	.db 0x0d
      003EC4 00                    1270 	.db 0x00
                                   1271 	.area CSEG    (CODE)
                                   1272 	.area CONST   (CODE)
      003EC5                       1273 ___str_1:
      003EC5 52 65 61 64 20 62 61  1274 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      003EEA 0A                    1275 	.db 0x0a
      003EEB 0D                    1276 	.db 0x0d
      003EEC 00                    1277 	.db 0x00
                                   1278 	.area CSEG    (CODE)
                                   1279 	.area CONST   (CODE)
      003EED                       1280 ___str_2:
      003EED 4D 41 54 43 48 20 2D  1281 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      003F0B 0A                    1282 	.db 0x0a
      003F0C 0D                    1283 	.db 0x0d
      003F0D 00                    1284 	.db 0x00
                                   1285 	.area CSEG    (CODE)
                                   1286 	.area CONST   (CODE)
      003F0E                       1287 ___str_3:
      003F0E 45 52 52 4F 52 20 2D  1288 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      003F24 0A                    1289 	.db 0x0a
      003F25 0D                    1290 	.db 0x0d
      003F26 00                    1291 	.db 0x00
                                   1292 	.area CSEG    (CODE)
                                   1293 	.area CONST   (CODE)
      003F27                       1294 ___str_4:
      003F27 45 72 72 6F 72 3A 20  1295 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      003F4F 0A                    1296 	.db 0x0a
      003F50 0D                    1297 	.db 0x0d
      003F51 00                    1298 	.db 0x00
                                   1299 	.area CSEG    (CODE)
                                   1300 	.area CONST   (CODE)
      003F52                       1301 ___str_5:
      003F52 45 72 72 6F 72 3A 20  1302 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      003F72 0A                    1303 	.db 0x0a
      003F73 0D                    1304 	.db 0x0d
      003F74 00                    1305 	.db 0x00
                                   1306 	.area CSEG    (CODE)
                                   1307 	.area CONST   (CODE)
      003F75                       1308 ___str_6:
      003F75 45 72 72 6F 72 3A 20  1309 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      003F8B 0A                    1310 	.db 0x0a
      003F8C 0D                    1311 	.db 0x0d
      003F8D 00                    1312 	.db 0x00
                                   1313 	.area CSEG    (CODE)
                                   1314 	.area CONST   (CODE)
      003F8E                       1315 ___str_7:
      003F8E 45 72 72 6F 72 3A 20  1316 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      003FBB 0A                    1317 	.db 0x0a
      003FBC 0D                    1318 	.db 0x0d
      003FBD 00                    1319 	.db 0x00
                                   1320 	.area CSEG    (CODE)
                                   1321 	.area CONST   (CODE)
      003FBE                       1322 ___str_8:
      003FBE 45 72 72 6F 72 3A 20  1323 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      003FEA 0A                    1324 	.db 0x0a
      003FEB 0D                    1325 	.db 0x0d
      003FEC 00                    1326 	.db 0x00
                                   1327 	.area CSEG    (CODE)
                                   1328 	.area CONST   (CODE)
      003FED                       1329 ___str_9:
      003FED 41 43 4B 20 44 49 44  1330 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      003FFF 0A                    1331 	.db 0x0a
      004000 0D                    1332 	.db 0x0d
      004001 00                    1333 	.db 0x00
                                   1334 	.area CSEG    (CODE)
                                   1335 	.area CONST   (CODE)
      004002                       1336 ___str_10:
      004002 54 72 61 6E 73 6D 69  1337 	.ascii "Transmission successfull"
             73 73 69 6F 6E 20 73
             75 63 63 65 73 73 66
             75 6C 6C
      00401A 0A                    1338 	.db 0x0a
      00401B 0D                    1339 	.db 0x0d
      00401C 00                    1340 	.db 0x00
                                   1341 	.area CSEG    (CODE)
                                   1342 	.area XINIT   (CODE)
                                   1343 	.area CABS    (ABS,CODE)
