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
                                    603 ;read_value_int            Allocated with name '_main_read_value_int_65537_24'
                                    604 ;read_value_char           Allocated with name '_main_read_value_char_65537_24'
                                    605 ;read_value                Allocated with name '_main_read_value_65538_25'
                                    606 ;------------------------------------------------------------
                                    607 ;	8051_i2c_eeprom.c:37: int main()
                                    608 ;	-----------------------------------------
                                    609 ;	 function main
                                    610 ;	-----------------------------------------
      00308F                        611 _main:
                                    612 ;	8051_i2c_eeprom.c:40: P1 &= ~(1<<3);  // Set P1.3 as output
      00308F 53 90 F7         [24]  613 	anl	_P1,#0xf7
                                    614 ;	8051_i2c_eeprom.c:41: P1 &= ~(1<<4);  // Set P1.4 as output
      003092 53 90 EF         [24]  615 	anl	_P1,#0xef
                                    616 ;	8051_i2c_eeprom.c:42: eeprom_write(0x48, 32);
      003095 90 04 06         [24]  617 	mov	dptr,#_eeprom_write_PARM_2
      003098 74 20            [12]  618 	mov	a,#0x20
      00309A F0               [24]  619 	movx	@dptr,a
      00309B 90 00 48         [24]  620 	mov	dptr,#0x0048
      00309E 12 31 61         [24]  621 	lcall	_eeprom_write
                                    622 ;	8051_i2c_eeprom.c:43: int read_value_int = eeprom_read(0x48);
      0030A1 90 00 48         [24]  623 	mov	dptr,#0x0048
      0030A4 12 31 22         [24]  624 	lcall	_eeprom_read
      0030A7 AE 82            [24]  625 	mov	r6,dpl
      0030A9 AF 83            [24]  626 	mov	r7,dph
                                    627 ;	8051_i2c_eeprom.c:44: unsigned char read_value_char = eeprom_read(0x48);
      0030AB 90 00 48         [24]  628 	mov	dptr,#0x0048
      0030AE C0 07            [24]  629 	push	ar7
      0030B0 C0 06            [24]  630 	push	ar6
      0030B2 12 31 22         [24]  631 	lcall	_eeprom_read
      0030B5 AC 82            [24]  632 	mov	r4,dpl
      0030B7 D0 06            [24]  633 	pop	ar6
      0030B9 D0 07            [24]  634 	pop	ar7
                                    635 ;	8051_i2c_eeprom.c:45: printf("address 0x48 read_value_int %d\n\r", read_value_int);
      0030BB C0 04            [24]  636 	push	ar4
      0030BD C0 06            [24]  637 	push	ar6
      0030BF C0 07            [24]  638 	push	ar7
      0030C1 74 82            [12]  639 	mov	a,#___str_0
      0030C3 C0 E0            [24]  640 	push	acc
      0030C5 74 3D            [12]  641 	mov	a,#(___str_0 >> 8)
      0030C7 C0 E0            [24]  642 	push	acc
      0030C9 74 80            [12]  643 	mov	a,#0x80
      0030CB C0 E0            [24]  644 	push	acc
      0030CD 12 33 20         [24]  645 	lcall	_printf
      0030D0 E5 81            [12]  646 	mov	a,sp
      0030D2 24 FB            [12]  647 	add	a,#0xfb
      0030D4 F5 81            [12]  648 	mov	sp,a
                                    649 ;	8051_i2c_eeprom.c:46: printf("address 0x48 read_value_char %c\n\r", read_value_char);
      0030D6 7F 00            [12]  650 	mov	r7,#0x00
      0030D8 C0 07            [24]  651 	push	ar7
      0030DA 74 A3            [12]  652 	mov	a,#___str_1
      0030DC C0 E0            [24]  653 	push	acc
      0030DE 74 3D            [12]  654 	mov	a,#(___str_1 >> 8)
      0030E0 C0 E0            [24]  655 	push	acc
      0030E2 74 80            [12]  656 	mov	a,#0x80
      0030E4 C0 E0            [24]  657 	push	acc
      0030E6 12 33 20         [24]  658 	lcall	_printf
      0030E9 E5 81            [12]  659 	mov	a,sp
      0030EB 24 FB            [12]  660 	add	a,#0xfb
      0030ED F5 81            [12]  661 	mov	sp,a
                                    662 ;	8051_i2c_eeprom.c:48: eeprom_write(00, 32);
      0030EF 90 04 06         [24]  663 	mov	dptr,#_eeprom_write_PARM_2
      0030F2 74 20            [12]  664 	mov	a,#0x20
      0030F4 F0               [24]  665 	movx	@dptr,a
      0030F5 90 00 00         [24]  666 	mov	dptr,#0x0000
      0030F8 12 31 61         [24]  667 	lcall	_eeprom_write
                                    668 ;	8051_i2c_eeprom.c:49: int read_value = eeprom_read(00);
      0030FB 90 00 00         [24]  669 	mov	dptr,#0x0000
      0030FE 12 31 22         [24]  670 	lcall	_eeprom_read
      003101 AE 82            [24]  671 	mov	r6,dpl
      003103 AF 83            [24]  672 	mov	r7,dph
                                    673 ;	8051_i2c_eeprom.c:50: printf("address 00 read_value %d\n\r", read_value);
      003105 C0 06            [24]  674 	push	ar6
      003107 C0 07            [24]  675 	push	ar7
      003109 74 C5            [12]  676 	mov	a,#___str_2
      00310B C0 E0            [24]  677 	push	acc
      00310D 74 3D            [12]  678 	mov	a,#(___str_2 >> 8)
      00310F C0 E0            [24]  679 	push	acc
      003111 74 80            [12]  680 	mov	a,#0x80
      003113 C0 E0            [24]  681 	push	acc
      003115 12 33 20         [24]  682 	lcall	_printf
      003118 E5 81            [12]  683 	mov	a,sp
      00311A 24 FB            [12]  684 	add	a,#0xfb
      00311C F5 81            [12]  685 	mov	sp,a
                                    686 ;	8051_i2c_eeprom.c:52: return 0;
      00311E 90 00 00         [24]  687 	mov	dptr,#0x0000
                                    688 ;	8051_i2c_eeprom.c:53: }
      003121 22               [24]  689 	ret
                                    690 ;------------------------------------------------------------
                                    691 ;Allocation info for local variables in function 'eeprom_read'
                                    692 ;------------------------------------------------------------
                                    693 ;address                   Allocated with name '_eeprom_read_address_65536_26'
                                    694 ;result                    Allocated with name '_eeprom_read_result_65536_27'
                                    695 ;------------------------------------------------------------
                                    696 ;	8051_i2c_eeprom.c:55: int eeprom_read(unsigned int address)
                                    697 ;	-----------------------------------------
                                    698 ;	 function eeprom_read
                                    699 ;	-----------------------------------------
      003122                        700 _eeprom_read:
      003122 AF 83            [24]  701 	mov	r7,dph
      003124 E5 82            [12]  702 	mov	a,dpl
      003126 90 04 04         [24]  703 	mov	dptr,#_eeprom_read_address_65536_26
      003129 F0               [24]  704 	movx	@dptr,a
      00312A EF               [12]  705 	mov	a,r7
      00312B A3               [24]  706 	inc	dptr
      00312C F0               [24]  707 	movx	@dptr,a
                                    708 ;	8051_i2c_eeprom.c:59: i2c_start();
      00312D 12 32 99         [24]  709 	lcall	_i2c_start
                                    710 ;	8051_i2c_eeprom.c:61: i2c_write(EEPROM_ID|WRITE);
      003130 75 82 A0         [24]  711 	mov	dpl,#0xa0
      003133 12 31 A2         [24]  712 	lcall	_i2c_write
                                    713 ;	8051_i2c_eeprom.c:62: i2c_write(address);
      003136 90 04 04         [24]  714 	mov	dptr,#_eeprom_read_address_65536_26
      003139 E0               [24]  715 	movx	a,@dptr
      00313A FE               [12]  716 	mov	r6,a
      00313B A3               [24]  717 	inc	dptr
      00313C E0               [24]  718 	movx	a,@dptr
      00313D 8E 82            [24]  719 	mov	dpl,r6
      00313F 12 31 A2         [24]  720 	lcall	_i2c_write
                                    721 ;	8051_i2c_eeprom.c:64: i2c_start();
      003142 12 32 99         [24]  722 	lcall	_i2c_start
                                    723 ;	8051_i2c_eeprom.c:65: i2c_write(EEPROM_ID|READ);
      003145 75 82 A1         [24]  724 	mov	dpl,#0xa1
      003148 12 31 A2         [24]  725 	lcall	_i2c_write
                                    726 ;	8051_i2c_eeprom.c:66: result = i2c_read(0);
      00314B 90 00 00         [24]  727 	mov	dptr,#0x0000
      00314E 12 32 15         [24]  728 	lcall	_i2c_read
      003151 AE 82            [24]  729 	mov	r6,dpl
                                    730 ;	8051_i2c_eeprom.c:68: i2c_stop();
      003153 C0 06            [24]  731 	push	ar6
      003155 12 32 AE         [24]  732 	lcall	_i2c_stop
      003158 D0 06            [24]  733 	pop	ar6
                                    734 ;	8051_i2c_eeprom.c:69: return result;
      00315A 7F 00            [12]  735 	mov	r7,#0x00
      00315C 8E 82            [24]  736 	mov	dpl,r6
      00315E 8F 83            [24]  737 	mov	dph,r7
                                    738 ;	8051_i2c_eeprom.c:70: }
      003160 22               [24]  739 	ret
                                    740 ;------------------------------------------------------------
                                    741 ;Allocation info for local variables in function 'eeprom_write'
                                    742 ;------------------------------------------------------------
                                    743 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                    744 ;address                   Allocated with name '_eeprom_write_address_65536_28'
                                    745 ;------------------------------------------------------------
                                    746 ;	8051_i2c_eeprom.c:72: int eeprom_write(unsigned int address, unsigned char data)
                                    747 ;	-----------------------------------------
                                    748 ;	 function eeprom_write
                                    749 ;	-----------------------------------------
      003161                        750 _eeprom_write:
      003161 AF 83            [24]  751 	mov	r7,dph
      003163 E5 82            [12]  752 	mov	a,dpl
      003165 90 04 07         [24]  753 	mov	dptr,#_eeprom_write_address_65536_28
      003168 F0               [24]  754 	movx	@dptr,a
      003169 EF               [12]  755 	mov	a,r7
      00316A A3               [24]  756 	inc	dptr
      00316B F0               [24]  757 	movx	@dptr,a
                                    758 ;	8051_i2c_eeprom.c:74: i2c_start();
      00316C 12 32 99         [24]  759 	lcall	_i2c_start
                                    760 ;	8051_i2c_eeprom.c:75: i2c_write(EEPROM_ID | WRITE);
      00316F 75 82 A0         [24]  761 	mov	dpl,#0xa0
      003172 12 31 A2         [24]  762 	lcall	_i2c_write
                                    763 ;	8051_i2c_eeprom.c:76: i2c_write((unsigned char)(address >> 8));  // Address MSB (if needed)
      003175 90 04 07         [24]  764 	mov	dptr,#_eeprom_write_address_65536_28
      003178 E0               [24]  765 	movx	a,@dptr
      003179 FE               [12]  766 	mov	r6,a
      00317A A3               [24]  767 	inc	dptr
      00317B E0               [24]  768 	movx	a,@dptr
      00317C FF               [12]  769 	mov	r7,a
      00317D F5 82            [12]  770 	mov	dpl,a
      00317F C0 07            [24]  771 	push	ar7
      003181 C0 06            [24]  772 	push	ar6
      003183 12 31 A2         [24]  773 	lcall	_i2c_write
      003186 D0 06            [24]  774 	pop	ar6
      003188 D0 07            [24]  775 	pop	ar7
                                    776 ;	8051_i2c_eeprom.c:77: i2c_write((unsigned char)address);         // Address LSB
      00318A 8E 82            [24]  777 	mov	dpl,r6
      00318C 12 31 A2         [24]  778 	lcall	_i2c_write
                                    779 ;	8051_i2c_eeprom.c:78: i2c_start();
      00318F 12 32 99         [24]  780 	lcall	_i2c_start
                                    781 ;	8051_i2c_eeprom.c:79: i2c_write(data);
      003192 90 04 06         [24]  782 	mov	dptr,#_eeprom_write_PARM_2
      003195 E0               [24]  783 	movx	a,@dptr
      003196 F5 82            [12]  784 	mov	dpl,a
      003198 12 31 A2         [24]  785 	lcall	_i2c_write
                                    786 ;	8051_i2c_eeprom.c:80: i2c_stop();
      00319B 12 32 AE         [24]  787 	lcall	_i2c_stop
                                    788 ;	8051_i2c_eeprom.c:81: return 0;
      00319E 90 00 00         [24]  789 	mov	dptr,#0x0000
                                    790 ;	8051_i2c_eeprom.c:82: }
      0031A1 22               [24]  791 	ret
                                    792 ;------------------------------------------------------------
                                    793 ;Allocation info for local variables in function 'i2c_write'
                                    794 ;------------------------------------------------------------
                                    795 ;data                      Allocated with name '_i2c_write_data_65536_30'
                                    796 ;i                         Allocated with name '_i2c_write_i_65536_31'
                                    797 ;------------------------------------------------------------
                                    798 ;	8051_i2c_eeprom.c:85: void i2c_write(unsigned char data)
                                    799 ;	-----------------------------------------
                                    800 ;	 function i2c_write
                                    801 ;	-----------------------------------------
      0031A2                        802 _i2c_write:
      0031A2 E5 82            [12]  803 	mov	a,dpl
      0031A4 90 04 09         [24]  804 	mov	dptr,#_i2c_write_data_65536_30
      0031A7 F0               [24]  805 	movx	@dptr,a
                                    806 ;	8051_i2c_eeprom.c:89: for(i=0;i<=7;i++)
      0031A8 7E 00            [12]  807 	mov	r6,#0x00
      0031AA 7F 00            [12]  808 	mov	r7,#0x00
      0031AC                        809 00104$:
                                    810 ;	8051_i2c_eeprom.c:91: SDA = (data & 0x80) ? 1 : 0;
      0031AC 90 04 09         [24]  811 	mov	dptr,#_i2c_write_data_65536_30
      0031AF E0               [24]  812 	movx	a,@dptr
      0031B0 FD               [12]  813 	mov	r5,a
      0031B1 23               [12]  814 	rl	a
      0031B2 54 01            [12]  815 	anl	a,#0x01
      0031B4 24 FF            [12]  816 	add	a,#0xff
      0031B6 92 94            [24]  817 	mov	_P1_4,c
                                    818 ;	8051_i2c_eeprom.c:92: SCL=1;
                                    819 ;	assignBit
      0031B8 D2 93            [12]  820 	setb	_P1_3
                                    821 ;	8051_i2c_eeprom.c:93: i2c_delay();
      0031BA C0 07            [24]  822 	push	ar7
      0031BC C0 06            [24]  823 	push	ar6
      0031BE C0 05            [24]  824 	push	ar5
      0031C0 12 32 BB         [24]  825 	lcall	_i2c_delay
      0031C3 D0 05            [24]  826 	pop	ar5
      0031C5 D0 06            [24]  827 	pop	ar6
      0031C7 D0 07            [24]  828 	pop	ar7
                                    829 ;	8051_i2c_eeprom.c:94: SCL=0;
                                    830 ;	assignBit
      0031C9 C2 93            [12]  831 	clr	_P1_3
                                    832 ;	8051_i2c_eeprom.c:95: data = data << 1;
      0031CB ED               [12]  833 	mov	a,r5
      0031CC 2D               [12]  834 	add	a,r5
      0031CD 90 04 09         [24]  835 	mov	dptr,#_i2c_write_data_65536_30
      0031D0 F0               [24]  836 	movx	@dptr,a
                                    837 ;	8051_i2c_eeprom.c:89: for(i=0;i<=7;i++)
      0031D1 0E               [12]  838 	inc	r6
      0031D2 BE 00 01         [24]  839 	cjne	r6,#0x00,00121$
      0031D5 0F               [12]  840 	inc	r7
      0031D6                        841 00121$:
      0031D6 C3               [12]  842 	clr	c
      0031D7 74 07            [12]  843 	mov	a,#0x07
      0031D9 9E               [12]  844 	subb	a,r6
      0031DA E4               [12]  845 	clr	a
      0031DB 9F               [12]  846 	subb	a,r7
      0031DC 50 CE            [24]  847 	jnc	00104$
                                    848 ;	8051_i2c_eeprom.c:99: SDA = 1;            // Release SDA for slave
                                    849 ;	assignBit
      0031DE D2 94            [12]  850 	setb	_P1_4
                                    851 ;	8051_i2c_eeprom.c:100: SCL = 1;            // 9th clock pulse for ACK
                                    852 ;	assignBit
      0031E0 D2 93            [12]  853 	setb	_P1_3
                                    854 ;	8051_i2c_eeprom.c:101: i2c_delay();
      0031E2 12 32 BB         [24]  855 	lcall	_i2c_delay
                                    856 ;	8051_i2c_eeprom.c:102: if(SDA == 1)        // If SDA is still high, no ACK received
      0031E5 30 94 15         [24]  857 	jnb	_P1_4,00103$
                                    858 ;	8051_i2c_eeprom.c:105: printf("ACK DID NOT ARRIVE\n\r");
      0031E8 74 E0            [12]  859 	mov	a,#___str_3
      0031EA C0 E0            [24]  860 	push	acc
      0031EC 74 3D            [12]  861 	mov	a,#(___str_3 >> 8)
      0031EE C0 E0            [24]  862 	push	acc
      0031F0 74 80            [12]  863 	mov	a,#0x80
      0031F2 C0 E0            [24]  864 	push	acc
      0031F4 12 33 20         [24]  865 	lcall	_printf
      0031F7 15 81            [12]  866 	dec	sp
      0031F9 15 81            [12]  867 	dec	sp
      0031FB 15 81            [12]  868 	dec	sp
      0031FD                        869 00103$:
                                    870 ;	8051_i2c_eeprom.c:108: SCL = 0;
                                    871 ;	assignBit
      0031FD C2 93            [12]  872 	clr	_P1_3
                                    873 ;	8051_i2c_eeprom.c:109: printf("Transmission successfull\n\r");
      0031FF 74 F5            [12]  874 	mov	a,#___str_4
      003201 C0 E0            [24]  875 	push	acc
      003203 74 3D            [12]  876 	mov	a,#(___str_4 >> 8)
      003205 C0 E0            [24]  877 	push	acc
      003207 74 80            [12]  878 	mov	a,#0x80
      003209 C0 E0            [24]  879 	push	acc
      00320B 12 33 20         [24]  880 	lcall	_printf
      00320E 15 81            [12]  881 	dec	sp
      003210 15 81            [12]  882 	dec	sp
      003212 15 81            [12]  883 	dec	sp
                                    884 ;	8051_i2c_eeprom.c:112: }
      003214 22               [24]  885 	ret
                                    886 ;------------------------------------------------------------
                                    887 ;Allocation info for local variables in function 'i2c_read'
                                    888 ;------------------------------------------------------------
                                    889 ;ACK                       Allocated with name '_i2c_read_ACK_65536_35'
                                    890 ;buff                      Allocated with name '_i2c_read_buff_65536_36'
                                    891 ;i                         Allocated with name '_i2c_read_i_131072_37'
                                    892 ;------------------------------------------------------------
                                    893 ;	8051_i2c_eeprom.c:113: int i2c_read(int ACK)
                                    894 ;	-----------------------------------------
                                    895 ;	 function i2c_read
                                    896 ;	-----------------------------------------
      003215                        897 _i2c_read:
      003215 AF 83            [24]  898 	mov	r7,dph
      003217 E5 82            [12]  899 	mov	a,dpl
      003219 90 04 0A         [24]  900 	mov	dptr,#_i2c_read_ACK_65536_35
      00321C F0               [24]  901 	movx	@dptr,a
      00321D EF               [12]  902 	mov	a,r7
      00321E A3               [24]  903 	inc	dptr
      00321F F0               [24]  904 	movx	@dptr,a
                                    905 ;	8051_i2c_eeprom.c:115: unsigned char buff=0;
      003220 90 04 0C         [24]  906 	mov	dptr,#_i2c_read_buff_65536_36
      003223 E4               [12]  907 	clr	a
      003224 F0               [24]  908 	movx	@dptr,a
                                    909 ;	8051_i2c_eeprom.c:117: for(int i=0;i<8;i++)
      003225 7E 00            [12]  910 	mov	r6,#0x00
      003227 7F 00            [12]  911 	mov	r7,#0x00
      003229                        912 00105$:
      003229 C3               [12]  913 	clr	c
      00322A EE               [12]  914 	mov	a,r6
      00322B 94 08            [12]  915 	subb	a,#0x08
      00322D EF               [12]  916 	mov	a,r7
      00322E 64 80            [12]  917 	xrl	a,#0x80
      003230 94 80            [12]  918 	subb	a,#0x80
      003232 50 41            [24]  919 	jnc	00103$
                                    920 ;	8051_i2c_eeprom.c:119: SDA = 1;
                                    921 ;	assignBit
      003234 D2 94            [12]  922 	setb	_P1_4
                                    923 ;	8051_i2c_eeprom.c:120: SCL = 1;
                                    924 ;	assignBit
      003236 D2 93            [12]  925 	setb	_P1_3
                                    926 ;	8051_i2c_eeprom.c:121: i2c_delay();
      003238 C0 07            [24]  927 	push	ar7
      00323A C0 06            [24]  928 	push	ar6
      00323C 12 32 BB         [24]  929 	lcall	_i2c_delay
      00323F D0 06            [24]  930 	pop	ar6
      003241 D0 07            [24]  931 	pop	ar7
                                    932 ;	8051_i2c_eeprom.c:122: buff = buff << 1;
      003243 90 04 0C         [24]  933 	mov	dptr,#_i2c_read_buff_65536_36
      003246 E0               [24]  934 	movx	a,@dptr
      003247 25 E0            [12]  935 	add	a,acc
      003249 F0               [24]  936 	movx	@dptr,a
                                    937 ;	8051_i2c_eeprom.c:123: if(SDA) buff |=0x80>>i;
      00324A 30 94 1F         [24]  938 	jnb	_P1_4,00102$
      00324D 8E F0            [24]  939 	mov	b,r6
      00324F 05 F0            [12]  940 	inc	b
      003251 7C 80            [12]  941 	mov	r4,#0x80
      003253 E4               [12]  942 	clr	a
      003254 FD               [12]  943 	mov	r5,a
      003255 33               [12]  944 	rlc	a
      003256 92 D2            [24]  945 	mov	ov,c
      003258 80 08            [24]  946 	sjmp	00125$
      00325A                        947 00124$:
      00325A A2 D2            [12]  948 	mov	c,ov
      00325C ED               [12]  949 	mov	a,r5
      00325D 13               [12]  950 	rrc	a
      00325E FD               [12]  951 	mov	r5,a
      00325F EC               [12]  952 	mov	a,r4
      003260 13               [12]  953 	rrc	a
      003261 FC               [12]  954 	mov	r4,a
      003262                        955 00125$:
      003262 D5 F0 F5         [24]  956 	djnz	b,00124$
      003265 90 04 0C         [24]  957 	mov	dptr,#_i2c_read_buff_65536_36
      003268 E0               [24]  958 	movx	a,@dptr
      003269 FB               [12]  959 	mov	r3,a
      00326A 4C               [12]  960 	orl	a,r4
      00326B F0               [24]  961 	movx	@dptr,a
      00326C                        962 00102$:
                                    963 ;	8051_i2c_eeprom.c:124: SCL=0;
                                    964 ;	assignBit
      00326C C2 93            [12]  965 	clr	_P1_3
                                    966 ;	8051_i2c_eeprom.c:117: for(int i=0;i<8;i++)
      00326E 0E               [12]  967 	inc	r6
      00326F BE 00 B7         [24]  968 	cjne	r6,#0x00,00105$
      003272 0F               [12]  969 	inc	r7
      003273 80 B4            [24]  970 	sjmp	00105$
      003275                        971 00103$:
                                    972 ;	8051_i2c_eeprom.c:128: SDA = !ACK;         // ACK = 0, NACK = 1
      003275 90 04 0A         [24]  973 	mov	dptr,#_i2c_read_ACK_65536_35
      003278 E0               [24]  974 	movx	a,@dptr
      003279 FE               [12]  975 	mov	r6,a
      00327A A3               [24]  976 	inc	dptr
      00327B E0               [24]  977 	movx	a,@dptr
      00327C 4E               [12]  978 	orl	a,r6
      00327D B4 01 00         [24]  979 	cjne	a,#0x01,00127$
      003280                        980 00127$:
      003280 E4               [12]  981 	clr	a
      003281 33               [12]  982 	rlc	a
      003282 24 FF            [12]  983 	add	a,#0xff
      003284 92 94            [24]  984 	mov	_P1_4,c
                                    985 ;	8051_i2c_eeprom.c:129: SCL = 1;
                                    986 ;	assignBit
      003286 D2 93            [12]  987 	setb	_P1_3
                                    988 ;	8051_i2c_eeprom.c:130: i2c_delay();
      003288 12 32 BB         [24]  989 	lcall	_i2c_delay
                                    990 ;	8051_i2c_eeprom.c:131: SCL = 0;
                                    991 ;	assignBit
      00328B C2 93            [12]  992 	clr	_P1_3
                                    993 ;	8051_i2c_eeprom.c:134: return buff;
      00328D 90 04 0C         [24]  994 	mov	dptr,#_i2c_read_buff_65536_36
      003290 E0               [24]  995 	movx	a,@dptr
      003291 FF               [12]  996 	mov	r7,a
      003292 7E 00            [12]  997 	mov	r6,#0x00
      003294 8F 82            [24]  998 	mov	dpl,r7
      003296 8E 83            [24]  999 	mov	dph,r6
                                   1000 ;	8051_i2c_eeprom.c:135: }
      003298 22               [24] 1001 	ret
                                   1002 ;------------------------------------------------------------
                                   1003 ;Allocation info for local variables in function 'i2c_start'
                                   1004 ;------------------------------------------------------------
                                   1005 ;	8051_i2c_eeprom.c:136: void i2c_start(void)
                                   1006 ;	-----------------------------------------
                                   1007 ;	 function i2c_start
                                   1008 ;	-----------------------------------------
      003299                       1009 _i2c_start:
                                   1010 ;	8051_i2c_eeprom.c:138: i2c_delay();
      003299 12 32 BB         [24] 1011 	lcall	_i2c_delay
                                   1012 ;	8051_i2c_eeprom.c:139: SDA = 1;
                                   1013 ;	assignBit
      00329C D2 94            [12] 1014 	setb	_P1_4
                                   1015 ;	8051_i2c_eeprom.c:140: i2c_delay();
      00329E 12 32 BB         [24] 1016 	lcall	_i2c_delay
                                   1017 ;	8051_i2c_eeprom.c:141: SCL = 1;
                                   1018 ;	assignBit
      0032A1 D2 93            [12] 1019 	setb	_P1_3
                                   1020 ;	8051_i2c_eeprom.c:142: i2c_delay();
      0032A3 12 32 BB         [24] 1021 	lcall	_i2c_delay
                                   1022 ;	8051_i2c_eeprom.c:143: SDA = 0;
                                   1023 ;	assignBit
      0032A6 C2 94            [12] 1024 	clr	_P1_4
                                   1025 ;	8051_i2c_eeprom.c:144: i2c_delay();
      0032A8 12 32 BB         [24] 1026 	lcall	_i2c_delay
                                   1027 ;	8051_i2c_eeprom.c:145: SCL = 0;
                                   1028 ;	assignBit
      0032AB C2 93            [12] 1029 	clr	_P1_3
                                   1030 ;	8051_i2c_eeprom.c:146: }
      0032AD 22               [24] 1031 	ret
                                   1032 ;------------------------------------------------------------
                                   1033 ;Allocation info for local variables in function 'i2c_stop'
                                   1034 ;------------------------------------------------------------
                                   1035 ;	8051_i2c_eeprom.c:148: void i2c_stop(void)
                                   1036 ;	-----------------------------------------
                                   1037 ;	 function i2c_stop
                                   1038 ;	-----------------------------------------
      0032AE                       1039 _i2c_stop:
                                   1040 ;	8051_i2c_eeprom.c:150: SDA = 0;
                                   1041 ;	assignBit
      0032AE C2 94            [12] 1042 	clr	_P1_4
                                   1043 ;	8051_i2c_eeprom.c:151: i2c_delay();
      0032B0 12 32 BB         [24] 1044 	lcall	_i2c_delay
                                   1045 ;	8051_i2c_eeprom.c:152: SCL = 1;
                                   1046 ;	assignBit
      0032B3 D2 93            [12] 1047 	setb	_P1_3
                                   1048 ;	8051_i2c_eeprom.c:153: i2c_delay();
      0032B5 12 32 BB         [24] 1049 	lcall	_i2c_delay
                                   1050 ;	8051_i2c_eeprom.c:154: SDA = 1; 
                                   1051 ;	assignBit
      0032B8 D2 94            [12] 1052 	setb	_P1_4
                                   1053 ;	8051_i2c_eeprom.c:155: }
      0032BA 22               [24] 1054 	ret
                                   1055 ;------------------------------------------------------------
                                   1056 ;Allocation info for local variables in function 'i2c_delay'
                                   1057 ;------------------------------------------------------------
                                   1058 ;i                         Allocated with name '_i2c_delay_i_131072_44'
                                   1059 ;------------------------------------------------------------
                                   1060 ;	8051_i2c_eeprom.c:157: void i2c_delay() 
                                   1061 ;	-----------------------------------------
                                   1062 ;	 function i2c_delay
                                   1063 ;	-----------------------------------------
      0032BB                       1064 _i2c_delay:
                                   1065 ;	8051_i2c_eeprom.c:165: for(int i = 0; i<500; i++);
      0032BB 7E 00            [12] 1066 	mov	r6,#0x00
      0032BD 7F 00            [12] 1067 	mov	r7,#0x00
      0032BF                       1068 00103$:
      0032BF C3               [12] 1069 	clr	c
      0032C0 EE               [12] 1070 	mov	a,r6
      0032C1 94 F4            [12] 1071 	subb	a,#0xf4
      0032C3 EF               [12] 1072 	mov	a,r7
      0032C4 64 80            [12] 1073 	xrl	a,#0x80
      0032C6 94 81            [12] 1074 	subb	a,#0x81
      0032C8 50 07            [24] 1075 	jnc	00105$
      0032CA 0E               [12] 1076 	inc	r6
      0032CB BE 00 F1         [24] 1077 	cjne	r6,#0x00,00103$
      0032CE 0F               [12] 1078 	inc	r7
      0032CF 80 EE            [24] 1079 	sjmp	00103$
      0032D1                       1080 00105$:
                                   1081 ;	8051_i2c_eeprom.c:166: }
      0032D1 22               [24] 1082 	ret
                                   1083 	.area CSEG    (CODE)
                                   1084 	.area CONST   (CODE)
                                   1085 	.area CONST   (CODE)
      003D82                       1086 ___str_0:
      003D82 61 64 64 72 65 73 73  1087 	.ascii "address 0x48 read_value_int %d"
             20 30 78 34 38 20 72
             65 61 64 5F 76 61 6C
             75 65 5F 69 6E 74 20
             25 64
      003DA0 0A                    1088 	.db 0x0a
      003DA1 0D                    1089 	.db 0x0d
      003DA2 00                    1090 	.db 0x00
                                   1091 	.area CSEG    (CODE)
                                   1092 	.area CONST   (CODE)
      003DA3                       1093 ___str_1:
      003DA3 61 64 64 72 65 73 73  1094 	.ascii "address 0x48 read_value_char %c"
             20 30 78 34 38 20 72
             65 61 64 5F 76 61 6C
             75 65 5F 63 68 61 72
             20 25 63
      003DC2 0A                    1095 	.db 0x0a
      003DC3 0D                    1096 	.db 0x0d
      003DC4 00                    1097 	.db 0x00
                                   1098 	.area CSEG    (CODE)
                                   1099 	.area CONST   (CODE)
      003DC5                       1100 ___str_2:
      003DC5 61 64 64 72 65 73 73  1101 	.ascii "address 00 read_value %d"
             20 30 30 20 72 65 61
             64 5F 76 61 6C 75 65
             20 25 64
      003DDD 0A                    1102 	.db 0x0a
      003DDE 0D                    1103 	.db 0x0d
      003DDF 00                    1104 	.db 0x00
                                   1105 	.area CSEG    (CODE)
                                   1106 	.area CONST   (CODE)
      003DE0                       1107 ___str_3:
      003DE0 41 43 4B 20 44 49 44  1108 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      003DF2 0A                    1109 	.db 0x0a
      003DF3 0D                    1110 	.db 0x0d
      003DF4 00                    1111 	.db 0x00
                                   1112 	.area CSEG    (CODE)
                                   1113 	.area CONST   (CODE)
      003DF5                       1114 ___str_4:
      003DF5 54 72 61 6E 73 6D 69  1115 	.ascii "Transmission successfull"
             73 73 69 6F 6E 20 73
             75 63 63 65 73 73 66
             75 6C 6C
      003E0D 0A                    1116 	.db 0x0a
      003E0E 0D                    1117 	.db 0x0d
      003E0F 00                    1118 	.db 0x00
                                   1119 	.area CSEG    (CODE)
                                   1120 	.area XINIT   (CODE)
                                   1121 	.area CABS    (ABS,CODE)
