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
                                    213 	.globl _eeprom_read
                                    214 	.globl _eeprom_write
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
      000404                        470 _eeprom_read_address_65536_26:
      000404                        471 	.ds 2
      000406                        472 _eeprom_write_PARM_2:
      000406                        473 	.ds 1
      000407                        474 _eeprom_write_address_65536_28:
      000407                        475 	.ds 2
      000409                        476 _i2c_write_data_65536_30:
      000409                        477 	.ds 1
      00040A                        478 _i2c_read_ACK_65536_35:
      00040A                        479 	.ds 2
      00040C                        480 _i2c_read_buff_65536_36:
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
                                    603 ;i                         Allocated with name '_main_i_65537_24'
                                    604 ;------------------------------------------------------------
                                    605 ;	8051_i2c_eeprom.c:37: int main()
                                    606 ;	-----------------------------------------
                                    607 ;	 function main
                                    608 ;	-----------------------------------------
      00308F                        609 _main:
                                    610 ;	8051_i2c_eeprom.c:40: P1 &= ~(1<<3);  // Set P1.3 as output
      00308F 53 90 F7         [24]  611 	anl	_P1,#0xf7
                                    612 ;	8051_i2c_eeprom.c:41: P1 &= ~(1<<4);  // Set P1.4 as output
      003092 53 90 EF         [24]  613 	anl	_P1,#0xef
                                    614 ;	8051_i2c_eeprom.c:42: i2c_start();
      003095 12 32 41         [24]  615 	lcall	_i2c_start
                                    616 ;	8051_i2c_eeprom.c:43: i2c_delay();
      003098 12 32 63         [24]  617 	lcall	_i2c_delay
                                    618 ;	8051_i2c_eeprom.c:46: while(i--)
      00309B 7E 1E            [12]  619 	mov	r6,#0x1e
      00309D 7F 00            [12]  620 	mov	r7,#0x00
      00309F                        621 00101$:
      00309F 8E 04            [24]  622 	mov	ar4,r6
      0030A1 8F 05            [24]  623 	mov	ar5,r7
      0030A3 1E               [12]  624 	dec	r6
      0030A4 BE FF 01         [24]  625 	cjne	r6,#0xff,00115$
      0030A7 1F               [12]  626 	dec	r7
      0030A8                        627 00115$:
      0030A8 EC               [12]  628 	mov	a,r4
      0030A9 4D               [12]  629 	orl	a,r5
      0030AA 60 10            [24]  630 	jz	00103$
                                    631 ;	8051_i2c_eeprom.c:48: i2c_write(0xA0);
      0030AC 75 82 A0         [24]  632 	mov	dpl,#0xa0
      0030AF C0 07            [24]  633 	push	ar7
      0030B1 C0 06            [24]  634 	push	ar6
      0030B3 12 31 40         [24]  635 	lcall	_i2c_write
      0030B6 D0 06            [24]  636 	pop	ar6
      0030B8 D0 07            [24]  637 	pop	ar7
      0030BA 80 E3            [24]  638 	sjmp	00101$
      0030BC                        639 00103$:
                                    640 ;	8051_i2c_eeprom.c:51: i2c_stop();
      0030BC 12 32 56         [24]  641 	lcall	_i2c_stop
                                    642 ;	8051_i2c_eeprom.c:64: return 0;
      0030BF 90 00 00         [24]  643 	mov	dptr,#0x0000
                                    644 ;	8051_i2c_eeprom.c:65: }
      0030C2 22               [24]  645 	ret
                                    646 ;------------------------------------------------------------
                                    647 ;Allocation info for local variables in function 'eeprom_read'
                                    648 ;------------------------------------------------------------
                                    649 ;address                   Allocated with name '_eeprom_read_address_65536_26'
                                    650 ;result                    Allocated with name '_eeprom_read_result_65536_27'
                                    651 ;------------------------------------------------------------
                                    652 ;	8051_i2c_eeprom.c:67: int eeprom_read(unsigned int address)
                                    653 ;	-----------------------------------------
                                    654 ;	 function eeprom_read
                                    655 ;	-----------------------------------------
      0030C3                        656 _eeprom_read:
      0030C3 AF 83            [24]  657 	mov	r7,dph
      0030C5 E5 82            [12]  658 	mov	a,dpl
      0030C7 90 04 04         [24]  659 	mov	dptr,#_eeprom_read_address_65536_26
      0030CA F0               [24]  660 	movx	@dptr,a
      0030CB EF               [12]  661 	mov	a,r7
      0030CC A3               [24]  662 	inc	dptr
      0030CD F0               [24]  663 	movx	@dptr,a
                                    664 ;	8051_i2c_eeprom.c:71: i2c_start();
      0030CE 12 32 41         [24]  665 	lcall	_i2c_start
                                    666 ;	8051_i2c_eeprom.c:73: i2c_write(EEPROM_ID|WRITE);
      0030D1 75 82 A0         [24]  667 	mov	dpl,#0xa0
      0030D4 12 31 40         [24]  668 	lcall	_i2c_write
                                    669 ;	8051_i2c_eeprom.c:74: i2c_write(address);
      0030D7 90 04 04         [24]  670 	mov	dptr,#_eeprom_read_address_65536_26
      0030DA E0               [24]  671 	movx	a,@dptr
      0030DB FE               [12]  672 	mov	r6,a
      0030DC A3               [24]  673 	inc	dptr
      0030DD E0               [24]  674 	movx	a,@dptr
      0030DE 8E 82            [24]  675 	mov	dpl,r6
      0030E0 12 31 40         [24]  676 	lcall	_i2c_write
                                    677 ;	8051_i2c_eeprom.c:76: i2c_start();
      0030E3 12 32 41         [24]  678 	lcall	_i2c_start
                                    679 ;	8051_i2c_eeprom.c:77: i2c_write(EEPROM_ID|READ);
      0030E6 75 82 A1         [24]  680 	mov	dpl,#0xa1
      0030E9 12 31 40         [24]  681 	lcall	_i2c_write
                                    682 ;	8051_i2c_eeprom.c:78: result = i2c_read(0);
      0030EC 90 00 00         [24]  683 	mov	dptr,#0x0000
      0030EF 12 31 BD         [24]  684 	lcall	_i2c_read
      0030F2 AE 82            [24]  685 	mov	r6,dpl
                                    686 ;	8051_i2c_eeprom.c:80: i2c_stop();
      0030F4 C0 06            [24]  687 	push	ar6
      0030F6 12 32 56         [24]  688 	lcall	_i2c_stop
      0030F9 D0 06            [24]  689 	pop	ar6
                                    690 ;	8051_i2c_eeprom.c:81: return result;
      0030FB 7F 00            [12]  691 	mov	r7,#0x00
      0030FD 8E 82            [24]  692 	mov	dpl,r6
      0030FF 8F 83            [24]  693 	mov	dph,r7
                                    694 ;	8051_i2c_eeprom.c:82: }
      003101 22               [24]  695 	ret
                                    696 ;------------------------------------------------------------
                                    697 ;Allocation info for local variables in function 'eeprom_write'
                                    698 ;------------------------------------------------------------
                                    699 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                    700 ;address                   Allocated with name '_eeprom_write_address_65536_28'
                                    701 ;------------------------------------------------------------
                                    702 ;	8051_i2c_eeprom.c:84: int eeprom_write(unsigned int address, unsigned char data)
                                    703 ;	-----------------------------------------
                                    704 ;	 function eeprom_write
                                    705 ;	-----------------------------------------
      003102                        706 _eeprom_write:
      003102 AF 83            [24]  707 	mov	r7,dph
      003104 E5 82            [12]  708 	mov	a,dpl
      003106 90 04 07         [24]  709 	mov	dptr,#_eeprom_write_address_65536_28
      003109 F0               [24]  710 	movx	@dptr,a
      00310A EF               [12]  711 	mov	a,r7
      00310B A3               [24]  712 	inc	dptr
      00310C F0               [24]  713 	movx	@dptr,a
                                    714 ;	8051_i2c_eeprom.c:86: i2c_start();
      00310D 12 32 41         [24]  715 	lcall	_i2c_start
                                    716 ;	8051_i2c_eeprom.c:87: i2c_write(EEPROM_ID | WRITE);
      003110 75 82 A0         [24]  717 	mov	dpl,#0xa0
      003113 12 31 40         [24]  718 	lcall	_i2c_write
                                    719 ;	8051_i2c_eeprom.c:88: i2c_write((unsigned char)(address >> 8));
      003116 90 04 07         [24]  720 	mov	dptr,#_eeprom_write_address_65536_28
      003119 E0               [24]  721 	movx	a,@dptr
      00311A FE               [12]  722 	mov	r6,a
      00311B A3               [24]  723 	inc	dptr
      00311C E0               [24]  724 	movx	a,@dptr
      00311D FF               [12]  725 	mov	r7,a
      00311E F5 82            [12]  726 	mov	dpl,a
      003120 C0 07            [24]  727 	push	ar7
      003122 C0 06            [24]  728 	push	ar6
      003124 12 31 40         [24]  729 	lcall	_i2c_write
      003127 D0 06            [24]  730 	pop	ar6
      003129 D0 07            [24]  731 	pop	ar7
                                    732 ;	8051_i2c_eeprom.c:89: i2c_write((unsigned char)address);
      00312B 8E 82            [24]  733 	mov	dpl,r6
      00312D 12 31 40         [24]  734 	lcall	_i2c_write
                                    735 ;	8051_i2c_eeprom.c:90: i2c_write(data);    // No start condition here
      003130 90 04 06         [24]  736 	mov	dptr,#_eeprom_write_PARM_2
      003133 E0               [24]  737 	movx	a,@dptr
      003134 F5 82            [12]  738 	mov	dpl,a
      003136 12 31 40         [24]  739 	lcall	_i2c_write
                                    740 ;	8051_i2c_eeprom.c:91: i2c_stop();
      003139 12 32 56         [24]  741 	lcall	_i2c_stop
                                    742 ;	8051_i2c_eeprom.c:92: return 0;
      00313C 90 00 00         [24]  743 	mov	dptr,#0x0000
                                    744 ;	8051_i2c_eeprom.c:93: }
      00313F 22               [24]  745 	ret
                                    746 ;------------------------------------------------------------
                                    747 ;Allocation info for local variables in function 'i2c_write'
                                    748 ;------------------------------------------------------------
                                    749 ;data                      Allocated with name '_i2c_write_data_65536_30'
                                    750 ;i                         Allocated with name '_i2c_write_i_65536_31'
                                    751 ;------------------------------------------------------------
                                    752 ;	8051_i2c_eeprom.c:96: int i2c_write(unsigned char data)
                                    753 ;	-----------------------------------------
                                    754 ;	 function i2c_write
                                    755 ;	-----------------------------------------
      003140                        756 _i2c_write:
      003140 E5 82            [12]  757 	mov	a,dpl
      003142 90 04 09         [24]  758 	mov	dptr,#_i2c_write_data_65536_30
      003145 F0               [24]  759 	movx	@dptr,a
                                    760 ;	8051_i2c_eeprom.c:100: for(i=0;i<=7;i++)
      003146 7E 00            [12]  761 	mov	r6,#0x00
      003148 7F 00            [12]  762 	mov	r7,#0x00
      00314A                        763 00104$:
                                    764 ;	8051_i2c_eeprom.c:102: SDA = (data & 0x80) ? 1 : 0;
      00314A 90 04 09         [24]  765 	mov	dptr,#_i2c_write_data_65536_30
      00314D E0               [24]  766 	movx	a,@dptr
      00314E FD               [12]  767 	mov	r5,a
      00314F 23               [12]  768 	rl	a
      003150 54 01            [12]  769 	anl	a,#0x01
      003152 24 FF            [12]  770 	add	a,#0xff
      003154 92 94            [24]  771 	mov	_P1_4,c
                                    772 ;	8051_i2c_eeprom.c:103: i2c_delay();        // Setup time for data
      003156 C0 07            [24]  773 	push	ar7
      003158 C0 06            [24]  774 	push	ar6
      00315A C0 05            [24]  775 	push	ar5
      00315C 12 32 63         [24]  776 	lcall	_i2c_delay
                                    777 ;	8051_i2c_eeprom.c:104: SCL=1;
                                    778 ;	assignBit
      00315F D2 93            [12]  779 	setb	_P1_3
                                    780 ;	8051_i2c_eeprom.c:105: i2c_delay();        // Hold time for clock
      003161 12 32 63         [24]  781 	lcall	_i2c_delay
      003164 D0 05            [24]  782 	pop	ar5
      003166 D0 06            [24]  783 	pop	ar6
      003168 D0 07            [24]  784 	pop	ar7
                                    785 ;	8051_i2c_eeprom.c:106: SCL=0;
                                    786 ;	assignBit
      00316A C2 93            [12]  787 	clr	_P1_3
                                    788 ;	8051_i2c_eeprom.c:107: data = data << 1;
      00316C ED               [12]  789 	mov	a,r5
      00316D 2D               [12]  790 	add	a,r5
      00316E 90 04 09         [24]  791 	mov	dptr,#_i2c_write_data_65536_30
      003171 F0               [24]  792 	movx	@dptr,a
                                    793 ;	8051_i2c_eeprom.c:100: for(i=0;i<=7;i++)
      003172 0E               [12]  794 	inc	r6
      003173 BE 00 01         [24]  795 	cjne	r6,#0x00,00121$
      003176 0F               [12]  796 	inc	r7
      003177                        797 00121$:
      003177 C3               [12]  798 	clr	c
      003178 74 07            [12]  799 	mov	a,#0x07
      00317A 9E               [12]  800 	subb	a,r6
      00317B E4               [12]  801 	clr	a
      00317C 9F               [12]  802 	subb	a,r7
      00317D 50 CB            [24]  803 	jnc	00104$
                                    804 ;	8051_i2c_eeprom.c:111: SDA = 1;            // Release SDA for slave
                                    805 ;	assignBit
      00317F D2 94            [12]  806 	setb	_P1_4
                                    807 ;	8051_i2c_eeprom.c:112: SCL = 1;            // 9th clock pulse for ACK
                                    808 ;	assignBit
      003181 D2 93            [12]  809 	setb	_P1_3
                                    810 ;	8051_i2c_eeprom.c:113: i2c_delay();
      003183 12 32 63         [24]  811 	lcall	_i2c_delay
                                    812 ;	8051_i2c_eeprom.c:114: if(SDA == 1)        // If SDA is still high, no ACK received
      003186 30 94 19         [24]  813 	jnb	_P1_4,00103$
                                    814 ;	8051_i2c_eeprom.c:117: printf("ACK DID NOT ARRIVE\n\r");
      003189 74 2A            [12]  815 	mov	a,#___str_0
      00318B C0 E0            [24]  816 	push	acc
      00318D 74 3D            [12]  817 	mov	a,#(___str_0 >> 8)
      00318F C0 E0            [24]  818 	push	acc
      003191 74 80            [12]  819 	mov	a,#0x80
      003193 C0 E0            [24]  820 	push	acc
      003195 12 32 C8         [24]  821 	lcall	_printf
      003198 15 81            [12]  822 	dec	sp
      00319A 15 81            [12]  823 	dec	sp
      00319C 15 81            [12]  824 	dec	sp
                                    825 ;	8051_i2c_eeprom.c:118: return 0;       // Error
      00319E 90 00 00         [24]  826 	mov	dptr,#0x0000
      0031A1 22               [24]  827 	ret
      0031A2                        828 00103$:
                                    829 ;	8051_i2c_eeprom.c:120: SCL = 0;
                                    830 ;	assignBit
      0031A2 C2 93            [12]  831 	clr	_P1_3
                                    832 ;	8051_i2c_eeprom.c:121: printf("Transmission successfull\n\r");
      0031A4 74 3F            [12]  833 	mov	a,#___str_1
      0031A6 C0 E0            [24]  834 	push	acc
      0031A8 74 3D            [12]  835 	mov	a,#(___str_1 >> 8)
      0031AA C0 E0            [24]  836 	push	acc
      0031AC 74 80            [12]  837 	mov	a,#0x80
      0031AE C0 E0            [24]  838 	push	acc
      0031B0 12 32 C8         [24]  839 	lcall	_printf
      0031B3 15 81            [12]  840 	dec	sp
      0031B5 15 81            [12]  841 	dec	sp
      0031B7 15 81            [12]  842 	dec	sp
                                    843 ;	8051_i2c_eeprom.c:122: return 1;           // Success
      0031B9 90 00 01         [24]  844 	mov	dptr,#0x0001
                                    845 ;	8051_i2c_eeprom.c:124: }
      0031BC 22               [24]  846 	ret
                                    847 ;------------------------------------------------------------
                                    848 ;Allocation info for local variables in function 'i2c_read'
                                    849 ;------------------------------------------------------------
                                    850 ;ACK                       Allocated with name '_i2c_read_ACK_65536_35'
                                    851 ;buff                      Allocated with name '_i2c_read_buff_65536_36'
                                    852 ;i                         Allocated with name '_i2c_read_i_131072_37'
                                    853 ;------------------------------------------------------------
                                    854 ;	8051_i2c_eeprom.c:125: int i2c_read(int ACK)
                                    855 ;	-----------------------------------------
                                    856 ;	 function i2c_read
                                    857 ;	-----------------------------------------
      0031BD                        858 _i2c_read:
      0031BD AF 83            [24]  859 	mov	r7,dph
      0031BF E5 82            [12]  860 	mov	a,dpl
      0031C1 90 04 0A         [24]  861 	mov	dptr,#_i2c_read_ACK_65536_35
      0031C4 F0               [24]  862 	movx	@dptr,a
      0031C5 EF               [12]  863 	mov	a,r7
      0031C6 A3               [24]  864 	inc	dptr
      0031C7 F0               [24]  865 	movx	@dptr,a
                                    866 ;	8051_i2c_eeprom.c:127: unsigned char buff=0;
      0031C8 90 04 0C         [24]  867 	mov	dptr,#_i2c_read_buff_65536_36
      0031CB E4               [12]  868 	clr	a
      0031CC F0               [24]  869 	movx	@dptr,a
                                    870 ;	8051_i2c_eeprom.c:129: for(int i=0;i<8;i++)
      0031CD 7E 00            [12]  871 	mov	r6,#0x00
      0031CF 7F 00            [12]  872 	mov	r7,#0x00
      0031D1                        873 00105$:
      0031D1 C3               [12]  874 	clr	c
      0031D2 EE               [12]  875 	mov	a,r6
      0031D3 94 08            [12]  876 	subb	a,#0x08
      0031D5 EF               [12]  877 	mov	a,r7
      0031D6 64 80            [12]  878 	xrl	a,#0x80
      0031D8 94 80            [12]  879 	subb	a,#0x80
      0031DA 50 41            [24]  880 	jnc	00103$
                                    881 ;	8051_i2c_eeprom.c:131: SDA = 1;
                                    882 ;	assignBit
      0031DC D2 94            [12]  883 	setb	_P1_4
                                    884 ;	8051_i2c_eeprom.c:132: SCL = 1;
                                    885 ;	assignBit
      0031DE D2 93            [12]  886 	setb	_P1_3
                                    887 ;	8051_i2c_eeprom.c:133: i2c_delay();
      0031E0 C0 07            [24]  888 	push	ar7
      0031E2 C0 06            [24]  889 	push	ar6
      0031E4 12 32 63         [24]  890 	lcall	_i2c_delay
      0031E7 D0 06            [24]  891 	pop	ar6
      0031E9 D0 07            [24]  892 	pop	ar7
                                    893 ;	8051_i2c_eeprom.c:134: buff = buff << 1;
      0031EB 90 04 0C         [24]  894 	mov	dptr,#_i2c_read_buff_65536_36
      0031EE E0               [24]  895 	movx	a,@dptr
      0031EF 25 E0            [12]  896 	add	a,acc
      0031F1 F0               [24]  897 	movx	@dptr,a
                                    898 ;	8051_i2c_eeprom.c:135: if(SDA) buff |=0x80>>i;
      0031F2 30 94 1F         [24]  899 	jnb	_P1_4,00102$
      0031F5 8E F0            [24]  900 	mov	b,r6
      0031F7 05 F0            [12]  901 	inc	b
      0031F9 7C 80            [12]  902 	mov	r4,#0x80
      0031FB E4               [12]  903 	clr	a
      0031FC FD               [12]  904 	mov	r5,a
      0031FD 33               [12]  905 	rlc	a
      0031FE 92 D2            [24]  906 	mov	ov,c
      003200 80 08            [24]  907 	sjmp	00125$
      003202                        908 00124$:
      003202 A2 D2            [12]  909 	mov	c,ov
      003204 ED               [12]  910 	mov	a,r5
      003205 13               [12]  911 	rrc	a
      003206 FD               [12]  912 	mov	r5,a
      003207 EC               [12]  913 	mov	a,r4
      003208 13               [12]  914 	rrc	a
      003209 FC               [12]  915 	mov	r4,a
      00320A                        916 00125$:
      00320A D5 F0 F5         [24]  917 	djnz	b,00124$
      00320D 90 04 0C         [24]  918 	mov	dptr,#_i2c_read_buff_65536_36
      003210 E0               [24]  919 	movx	a,@dptr
      003211 FB               [12]  920 	mov	r3,a
      003212 4C               [12]  921 	orl	a,r4
      003213 F0               [24]  922 	movx	@dptr,a
      003214                        923 00102$:
                                    924 ;	8051_i2c_eeprom.c:136: SCL=0;
                                    925 ;	assignBit
      003214 C2 93            [12]  926 	clr	_P1_3
                                    927 ;	8051_i2c_eeprom.c:129: for(int i=0;i<8;i++)
      003216 0E               [12]  928 	inc	r6
      003217 BE 00 B7         [24]  929 	cjne	r6,#0x00,00105$
      00321A 0F               [12]  930 	inc	r7
      00321B 80 B4            [24]  931 	sjmp	00105$
      00321D                        932 00103$:
                                    933 ;	8051_i2c_eeprom.c:140: SDA = !ACK;         // ACK = 0, NACK = 1
      00321D 90 04 0A         [24]  934 	mov	dptr,#_i2c_read_ACK_65536_35
      003220 E0               [24]  935 	movx	a,@dptr
      003221 FE               [12]  936 	mov	r6,a
      003222 A3               [24]  937 	inc	dptr
      003223 E0               [24]  938 	movx	a,@dptr
      003224 4E               [12]  939 	orl	a,r6
      003225 B4 01 00         [24]  940 	cjne	a,#0x01,00127$
      003228                        941 00127$:
      003228 E4               [12]  942 	clr	a
      003229 33               [12]  943 	rlc	a
      00322A 24 FF            [12]  944 	add	a,#0xff
      00322C 92 94            [24]  945 	mov	_P1_4,c
                                    946 ;	8051_i2c_eeprom.c:141: SCL = 1;
                                    947 ;	assignBit
      00322E D2 93            [12]  948 	setb	_P1_3
                                    949 ;	8051_i2c_eeprom.c:142: i2c_delay();
      003230 12 32 63         [24]  950 	lcall	_i2c_delay
                                    951 ;	8051_i2c_eeprom.c:143: SCL = 0;
                                    952 ;	assignBit
      003233 C2 93            [12]  953 	clr	_P1_3
                                    954 ;	8051_i2c_eeprom.c:145: return buff;
      003235 90 04 0C         [24]  955 	mov	dptr,#_i2c_read_buff_65536_36
      003238 E0               [24]  956 	movx	a,@dptr
      003239 FF               [12]  957 	mov	r7,a
      00323A 7E 00            [12]  958 	mov	r6,#0x00
      00323C 8F 82            [24]  959 	mov	dpl,r7
      00323E 8E 83            [24]  960 	mov	dph,r6
                                    961 ;	8051_i2c_eeprom.c:146: }
      003240 22               [24]  962 	ret
                                    963 ;------------------------------------------------------------
                                    964 ;Allocation info for local variables in function 'i2c_start'
                                    965 ;------------------------------------------------------------
                                    966 ;	8051_i2c_eeprom.c:147: void i2c_start(void)
                                    967 ;	-----------------------------------------
                                    968 ;	 function i2c_start
                                    969 ;	-----------------------------------------
      003241                        970 _i2c_start:
                                    971 ;	8051_i2c_eeprom.c:149: i2c_delay();
      003241 12 32 63         [24]  972 	lcall	_i2c_delay
                                    973 ;	8051_i2c_eeprom.c:150: SDA = 1;
                                    974 ;	assignBit
      003244 D2 94            [12]  975 	setb	_P1_4
                                    976 ;	8051_i2c_eeprom.c:151: i2c_delay();
      003246 12 32 63         [24]  977 	lcall	_i2c_delay
                                    978 ;	8051_i2c_eeprom.c:152: SCL = 1;
                                    979 ;	assignBit
      003249 D2 93            [12]  980 	setb	_P1_3
                                    981 ;	8051_i2c_eeprom.c:153: i2c_delay();
      00324B 12 32 63         [24]  982 	lcall	_i2c_delay
                                    983 ;	8051_i2c_eeprom.c:154: SDA = 0;
                                    984 ;	assignBit
      00324E C2 94            [12]  985 	clr	_P1_4
                                    986 ;	8051_i2c_eeprom.c:155: i2c_delay();
      003250 12 32 63         [24]  987 	lcall	_i2c_delay
                                    988 ;	8051_i2c_eeprom.c:156: SCL = 0;
                                    989 ;	assignBit
      003253 C2 93            [12]  990 	clr	_P1_3
                                    991 ;	8051_i2c_eeprom.c:157: }
      003255 22               [24]  992 	ret
                                    993 ;------------------------------------------------------------
                                    994 ;Allocation info for local variables in function 'i2c_stop'
                                    995 ;------------------------------------------------------------
                                    996 ;	8051_i2c_eeprom.c:159: void i2c_stop(void)
                                    997 ;	-----------------------------------------
                                    998 ;	 function i2c_stop
                                    999 ;	-----------------------------------------
      003256                       1000 _i2c_stop:
                                   1001 ;	8051_i2c_eeprom.c:161: SDA = 0;
                                   1002 ;	assignBit
      003256 C2 94            [12] 1003 	clr	_P1_4
                                   1004 ;	8051_i2c_eeprom.c:162: i2c_delay();
      003258 12 32 63         [24] 1005 	lcall	_i2c_delay
                                   1006 ;	8051_i2c_eeprom.c:163: SCL = 1;
                                   1007 ;	assignBit
      00325B D2 93            [12] 1008 	setb	_P1_3
                                   1009 ;	8051_i2c_eeprom.c:164: i2c_delay();
      00325D 12 32 63         [24] 1010 	lcall	_i2c_delay
                                   1011 ;	8051_i2c_eeprom.c:165: SDA = 1; 
                                   1012 ;	assignBit
      003260 D2 94            [12] 1013 	setb	_P1_4
                                   1014 ;	8051_i2c_eeprom.c:166: }
      003262 22               [24] 1015 	ret
                                   1016 ;------------------------------------------------------------
                                   1017 ;Allocation info for local variables in function 'i2c_delay'
                                   1018 ;------------------------------------------------------------
                                   1019 ;i                         Allocated with name '_i2c_delay_i_131072_44'
                                   1020 ;------------------------------------------------------------
                                   1021 ;	8051_i2c_eeprom.c:168: void i2c_delay() 
                                   1022 ;	-----------------------------------------
                                   1023 ;	 function i2c_delay
                                   1024 ;	-----------------------------------------
      003263                       1025 _i2c_delay:
                                   1026 ;	8051_i2c_eeprom.c:176: for(int i = 0; i<500; i++);
      003263 7E 00            [12] 1027 	mov	r6,#0x00
      003265 7F 00            [12] 1028 	mov	r7,#0x00
      003267                       1029 00103$:
      003267 C3               [12] 1030 	clr	c
      003268 EE               [12] 1031 	mov	a,r6
      003269 94 F4            [12] 1032 	subb	a,#0xf4
      00326B EF               [12] 1033 	mov	a,r7
      00326C 64 80            [12] 1034 	xrl	a,#0x80
      00326E 94 81            [12] 1035 	subb	a,#0x81
      003270 50 07            [24] 1036 	jnc	00105$
      003272 0E               [12] 1037 	inc	r6
      003273 BE 00 F1         [24] 1038 	cjne	r6,#0x00,00103$
      003276 0F               [12] 1039 	inc	r7
      003277 80 EE            [24] 1040 	sjmp	00103$
      003279                       1041 00105$:
                                   1042 ;	8051_i2c_eeprom.c:177: }
      003279 22               [24] 1043 	ret
                                   1044 	.area CSEG    (CODE)
                                   1045 	.area CONST   (CODE)
                                   1046 	.area CONST   (CODE)
      003D2A                       1047 ___str_0:
      003D2A 41 43 4B 20 44 49 44  1048 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      003D3C 0A                    1049 	.db 0x0a
      003D3D 0D                    1050 	.db 0x0d
      003D3E 00                    1051 	.db 0x00
                                   1052 	.area CSEG    (CODE)
                                   1053 	.area CONST   (CODE)
      003D3F                       1054 ___str_1:
      003D3F 54 72 61 6E 73 6D 69  1055 	.ascii "Transmission successfull"
             73 73 69 6F 6E 20 73
             75 63 63 65 73 73 66
             75 6C 6C
      003D57 0A                    1056 	.db 0x0a
      003D58 0D                    1057 	.db 0x0d
      003D59 00                    1058 	.db 0x00
                                   1059 	.area CSEG    (CODE)
                                   1060 	.area XINIT   (CODE)
                                   1061 	.area CABS    (ABS,CODE)
