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
                                    606 ;read_value_c              Allocated with name '_main_read_value_c_65538_25'
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
                                    617 ;	8051_i2c_eeprom.c:42: eeprom_write(0x48, 00);
      003095 90 04 06         [24]  618 	mov	dptr,#_eeprom_write_PARM_2
      003098 E4               [12]  619 	clr	a
      003099 F0               [24]  620 	movx	@dptr,a
      00309A 90 00 48         [24]  621 	mov	dptr,#0x0048
      00309D 12 31 8B         [24]  622 	lcall	_eeprom_write
                                    623 ;	8051_i2c_eeprom.c:43: int read_value_int = eeprom_read(0x48);
      0030A0 90 00 48         [24]  624 	mov	dptr,#0x0048
      0030A3 12 31 4C         [24]  625 	lcall	_eeprom_read
      0030A6 AE 82            [24]  626 	mov	r6,dpl
      0030A8 AF 83            [24]  627 	mov	r7,dph
                                    628 ;	8051_i2c_eeprom.c:44: unsigned char read_value_char = eeprom_read(0x48);
      0030AA 90 00 48         [24]  629 	mov	dptr,#0x0048
      0030AD C0 07            [24]  630 	push	ar7
      0030AF C0 06            [24]  631 	push	ar6
      0030B1 12 31 4C         [24]  632 	lcall	_eeprom_read
      0030B4 AC 82            [24]  633 	mov	r4,dpl
      0030B6 D0 06            [24]  634 	pop	ar6
      0030B8 D0 07            [24]  635 	pop	ar7
                                    636 ;	8051_i2c_eeprom.c:45: printf("address 0x48 read_value_int %d\n\r", read_value_int);
      0030BA C0 04            [24]  637 	push	ar4
      0030BC C0 06            [24]  638 	push	ar6
      0030BE C0 07            [24]  639 	push	ar7
      0030C0 74 AC            [12]  640 	mov	a,#___str_0
      0030C2 C0 E0            [24]  641 	push	acc
      0030C4 74 3D            [12]  642 	mov	a,#(___str_0 >> 8)
      0030C6 C0 E0            [24]  643 	push	acc
      0030C8 74 80            [12]  644 	mov	a,#0x80
      0030CA C0 E0            [24]  645 	push	acc
      0030CC 12 33 4A         [24]  646 	lcall	_printf
      0030CF E5 81            [12]  647 	mov	a,sp
      0030D1 24 FB            [12]  648 	add	a,#0xfb
      0030D3 F5 81            [12]  649 	mov	sp,a
                                    650 ;	8051_i2c_eeprom.c:46: printf("address 0x48 read_value_char %c\n\r", read_value_char);
      0030D5 7F 00            [12]  651 	mov	r7,#0x00
      0030D7 C0 07            [24]  652 	push	ar7
      0030D9 74 CD            [12]  653 	mov	a,#___str_1
      0030DB C0 E0            [24]  654 	push	acc
      0030DD 74 3D            [12]  655 	mov	a,#(___str_1 >> 8)
      0030DF C0 E0            [24]  656 	push	acc
      0030E1 74 80            [12]  657 	mov	a,#0x80
      0030E3 C0 E0            [24]  658 	push	acc
      0030E5 12 33 4A         [24]  659 	lcall	_printf
      0030E8 E5 81            [12]  660 	mov	a,sp
      0030EA 24 FB            [12]  661 	add	a,#0xfb
      0030EC F5 81            [12]  662 	mov	sp,a
                                    663 ;	8051_i2c_eeprom.c:48: eeprom_write(00, 'A');
      0030EE 90 04 06         [24]  664 	mov	dptr,#_eeprom_write_PARM_2
      0030F1 74 41            [12]  665 	mov	a,#0x41
      0030F3 F0               [24]  666 	movx	@dptr,a
      0030F4 90 00 00         [24]  667 	mov	dptr,#0x0000
      0030F7 12 31 8B         [24]  668 	lcall	_eeprom_write
                                    669 ;	8051_i2c_eeprom.c:49: int read_value = eeprom_read(00);
      0030FA 90 00 00         [24]  670 	mov	dptr,#0x0000
      0030FD 12 31 4C         [24]  671 	lcall	_eeprom_read
      003100 AE 82            [24]  672 	mov	r6,dpl
      003102 AF 83            [24]  673 	mov	r7,dph
                                    674 ;	8051_i2c_eeprom.c:50: unsigned char read_value_c = eeprom_read(00);
      003104 90 00 00         [24]  675 	mov	dptr,#0x0000
      003107 C0 07            [24]  676 	push	ar7
      003109 C0 06            [24]  677 	push	ar6
      00310B 12 31 4C         [24]  678 	lcall	_eeprom_read
      00310E AC 82            [24]  679 	mov	r4,dpl
      003110 D0 06            [24]  680 	pop	ar6
      003112 D0 07            [24]  681 	pop	ar7
                                    682 ;	8051_i2c_eeprom.c:51: printf("address 00 read_value %d\n\r", read_value);
      003114 C0 04            [24]  683 	push	ar4
      003116 C0 06            [24]  684 	push	ar6
      003118 C0 07            [24]  685 	push	ar7
      00311A 74 EF            [12]  686 	mov	a,#___str_2
      00311C C0 E0            [24]  687 	push	acc
      00311E 74 3D            [12]  688 	mov	a,#(___str_2 >> 8)
      003120 C0 E0            [24]  689 	push	acc
      003122 74 80            [12]  690 	mov	a,#0x80
      003124 C0 E0            [24]  691 	push	acc
      003126 12 33 4A         [24]  692 	lcall	_printf
      003129 E5 81            [12]  693 	mov	a,sp
      00312B 24 FB            [12]  694 	add	a,#0xfb
      00312D F5 81            [12]  695 	mov	sp,a
                                    696 ;	8051_i2c_eeprom.c:52: printf("address 00 read_value_c %d\n\r", read_value_c);
      00312F 7F 00            [12]  697 	mov	r7,#0x00
      003131 C0 07            [24]  698 	push	ar7
      003133 74 0A            [12]  699 	mov	a,#___str_3
      003135 C0 E0            [24]  700 	push	acc
      003137 74 3E            [12]  701 	mov	a,#(___str_3 >> 8)
      003139 C0 E0            [24]  702 	push	acc
      00313B 74 80            [12]  703 	mov	a,#0x80
      00313D C0 E0            [24]  704 	push	acc
      00313F 12 33 4A         [24]  705 	lcall	_printf
      003142 E5 81            [12]  706 	mov	a,sp
      003144 24 FB            [12]  707 	add	a,#0xfb
      003146 F5 81            [12]  708 	mov	sp,a
                                    709 ;	8051_i2c_eeprom.c:54: return 0;
      003148 90 00 00         [24]  710 	mov	dptr,#0x0000
                                    711 ;	8051_i2c_eeprom.c:55: }
      00314B 22               [24]  712 	ret
                                    713 ;------------------------------------------------------------
                                    714 ;Allocation info for local variables in function 'eeprom_read'
                                    715 ;------------------------------------------------------------
                                    716 ;address                   Allocated with name '_eeprom_read_address_65536_26'
                                    717 ;result                    Allocated with name '_eeprom_read_result_65536_27'
                                    718 ;------------------------------------------------------------
                                    719 ;	8051_i2c_eeprom.c:57: int eeprom_read(unsigned int address)
                                    720 ;	-----------------------------------------
                                    721 ;	 function eeprom_read
                                    722 ;	-----------------------------------------
      00314C                        723 _eeprom_read:
      00314C AF 83            [24]  724 	mov	r7,dph
      00314E E5 82            [12]  725 	mov	a,dpl
      003150 90 04 04         [24]  726 	mov	dptr,#_eeprom_read_address_65536_26
      003153 F0               [24]  727 	movx	@dptr,a
      003154 EF               [12]  728 	mov	a,r7
      003155 A3               [24]  729 	inc	dptr
      003156 F0               [24]  730 	movx	@dptr,a
                                    731 ;	8051_i2c_eeprom.c:61: i2c_start();
      003157 12 32 C3         [24]  732 	lcall	_i2c_start
                                    733 ;	8051_i2c_eeprom.c:63: i2c_write(EEPROM_ID|WRITE);
      00315A 75 82 A0         [24]  734 	mov	dpl,#0xa0
      00315D 12 31 CC         [24]  735 	lcall	_i2c_write
                                    736 ;	8051_i2c_eeprom.c:64: i2c_write(address);
      003160 90 04 04         [24]  737 	mov	dptr,#_eeprom_read_address_65536_26
      003163 E0               [24]  738 	movx	a,@dptr
      003164 FE               [12]  739 	mov	r6,a
      003165 A3               [24]  740 	inc	dptr
      003166 E0               [24]  741 	movx	a,@dptr
      003167 8E 82            [24]  742 	mov	dpl,r6
      003169 12 31 CC         [24]  743 	lcall	_i2c_write
                                    744 ;	8051_i2c_eeprom.c:66: i2c_start();
      00316C 12 32 C3         [24]  745 	lcall	_i2c_start
                                    746 ;	8051_i2c_eeprom.c:67: i2c_write(EEPROM_ID|READ);
      00316F 75 82 A1         [24]  747 	mov	dpl,#0xa1
      003172 12 31 CC         [24]  748 	lcall	_i2c_write
                                    749 ;	8051_i2c_eeprom.c:68: result = i2c_read(0);
      003175 90 00 00         [24]  750 	mov	dptr,#0x0000
      003178 12 32 3F         [24]  751 	lcall	_i2c_read
      00317B AE 82            [24]  752 	mov	r6,dpl
                                    753 ;	8051_i2c_eeprom.c:70: i2c_stop();
      00317D C0 06            [24]  754 	push	ar6
      00317F 12 32 D8         [24]  755 	lcall	_i2c_stop
      003182 D0 06            [24]  756 	pop	ar6
                                    757 ;	8051_i2c_eeprom.c:71: return result;
      003184 7F 00            [12]  758 	mov	r7,#0x00
      003186 8E 82            [24]  759 	mov	dpl,r6
      003188 8F 83            [24]  760 	mov	dph,r7
                                    761 ;	8051_i2c_eeprom.c:72: }
      00318A 22               [24]  762 	ret
                                    763 ;------------------------------------------------------------
                                    764 ;Allocation info for local variables in function 'eeprom_write'
                                    765 ;------------------------------------------------------------
                                    766 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                    767 ;address                   Allocated with name '_eeprom_write_address_65536_28'
                                    768 ;------------------------------------------------------------
                                    769 ;	8051_i2c_eeprom.c:74: int eeprom_write(unsigned int address, unsigned char data)
                                    770 ;	-----------------------------------------
                                    771 ;	 function eeprom_write
                                    772 ;	-----------------------------------------
      00318B                        773 _eeprom_write:
      00318B AF 83            [24]  774 	mov	r7,dph
      00318D E5 82            [12]  775 	mov	a,dpl
      00318F 90 04 07         [24]  776 	mov	dptr,#_eeprom_write_address_65536_28
      003192 F0               [24]  777 	movx	@dptr,a
      003193 EF               [12]  778 	mov	a,r7
      003194 A3               [24]  779 	inc	dptr
      003195 F0               [24]  780 	movx	@dptr,a
                                    781 ;	8051_i2c_eeprom.c:76: i2c_start();
      003196 12 32 C3         [24]  782 	lcall	_i2c_start
                                    783 ;	8051_i2c_eeprom.c:77: i2c_write(EEPROM_ID | WRITE);
      003199 75 82 A0         [24]  784 	mov	dpl,#0xa0
      00319C 12 31 CC         [24]  785 	lcall	_i2c_write
                                    786 ;	8051_i2c_eeprom.c:78: i2c_write((unsigned char)(address >> 8));  // Address MSB (if needed)
      00319F 90 04 07         [24]  787 	mov	dptr,#_eeprom_write_address_65536_28
      0031A2 E0               [24]  788 	movx	a,@dptr
      0031A3 FE               [12]  789 	mov	r6,a
      0031A4 A3               [24]  790 	inc	dptr
      0031A5 E0               [24]  791 	movx	a,@dptr
      0031A6 FF               [12]  792 	mov	r7,a
      0031A7 F5 82            [12]  793 	mov	dpl,a
      0031A9 C0 07            [24]  794 	push	ar7
      0031AB C0 06            [24]  795 	push	ar6
      0031AD 12 31 CC         [24]  796 	lcall	_i2c_write
      0031B0 D0 06            [24]  797 	pop	ar6
      0031B2 D0 07            [24]  798 	pop	ar7
                                    799 ;	8051_i2c_eeprom.c:79: i2c_write((unsigned char)address);         // Address LSB
      0031B4 8E 82            [24]  800 	mov	dpl,r6
      0031B6 12 31 CC         [24]  801 	lcall	_i2c_write
                                    802 ;	8051_i2c_eeprom.c:80: i2c_start();
      0031B9 12 32 C3         [24]  803 	lcall	_i2c_start
                                    804 ;	8051_i2c_eeprom.c:81: i2c_write(data);
      0031BC 90 04 06         [24]  805 	mov	dptr,#_eeprom_write_PARM_2
      0031BF E0               [24]  806 	movx	a,@dptr
      0031C0 F5 82            [12]  807 	mov	dpl,a
      0031C2 12 31 CC         [24]  808 	lcall	_i2c_write
                                    809 ;	8051_i2c_eeprom.c:82: i2c_stop();
      0031C5 12 32 D8         [24]  810 	lcall	_i2c_stop
                                    811 ;	8051_i2c_eeprom.c:83: return 0;
      0031C8 90 00 00         [24]  812 	mov	dptr,#0x0000
                                    813 ;	8051_i2c_eeprom.c:84: }
      0031CB 22               [24]  814 	ret
                                    815 ;------------------------------------------------------------
                                    816 ;Allocation info for local variables in function 'i2c_write'
                                    817 ;------------------------------------------------------------
                                    818 ;data                      Allocated with name '_i2c_write_data_65536_30'
                                    819 ;i                         Allocated with name '_i2c_write_i_65536_31'
                                    820 ;------------------------------------------------------------
                                    821 ;	8051_i2c_eeprom.c:87: void i2c_write(unsigned char data)
                                    822 ;	-----------------------------------------
                                    823 ;	 function i2c_write
                                    824 ;	-----------------------------------------
      0031CC                        825 _i2c_write:
      0031CC E5 82            [12]  826 	mov	a,dpl
      0031CE 90 04 09         [24]  827 	mov	dptr,#_i2c_write_data_65536_30
      0031D1 F0               [24]  828 	movx	@dptr,a
                                    829 ;	8051_i2c_eeprom.c:91: for(i=0;i<=7;i++)
      0031D2 7E 00            [12]  830 	mov	r6,#0x00
      0031D4 7F 00            [12]  831 	mov	r7,#0x00
      0031D6                        832 00104$:
                                    833 ;	8051_i2c_eeprom.c:93: SDA = (data & 0x80) ? 1 : 0;
      0031D6 90 04 09         [24]  834 	mov	dptr,#_i2c_write_data_65536_30
      0031D9 E0               [24]  835 	movx	a,@dptr
      0031DA FD               [12]  836 	mov	r5,a
      0031DB 23               [12]  837 	rl	a
      0031DC 54 01            [12]  838 	anl	a,#0x01
      0031DE 24 FF            [12]  839 	add	a,#0xff
      0031E0 92 94            [24]  840 	mov	_P1_4,c
                                    841 ;	8051_i2c_eeprom.c:94: SCL=1;
                                    842 ;	assignBit
      0031E2 D2 93            [12]  843 	setb	_P1_3
                                    844 ;	8051_i2c_eeprom.c:95: i2c_delay();
      0031E4 C0 07            [24]  845 	push	ar7
      0031E6 C0 06            [24]  846 	push	ar6
      0031E8 C0 05            [24]  847 	push	ar5
      0031EA 12 32 E5         [24]  848 	lcall	_i2c_delay
      0031ED D0 05            [24]  849 	pop	ar5
      0031EF D0 06            [24]  850 	pop	ar6
      0031F1 D0 07            [24]  851 	pop	ar7
                                    852 ;	8051_i2c_eeprom.c:96: SCL=0;
                                    853 ;	assignBit
      0031F3 C2 93            [12]  854 	clr	_P1_3
                                    855 ;	8051_i2c_eeprom.c:97: data = data << 1;
      0031F5 ED               [12]  856 	mov	a,r5
      0031F6 2D               [12]  857 	add	a,r5
      0031F7 90 04 09         [24]  858 	mov	dptr,#_i2c_write_data_65536_30
      0031FA F0               [24]  859 	movx	@dptr,a
                                    860 ;	8051_i2c_eeprom.c:91: for(i=0;i<=7;i++)
      0031FB 0E               [12]  861 	inc	r6
      0031FC BE 00 01         [24]  862 	cjne	r6,#0x00,00121$
      0031FF 0F               [12]  863 	inc	r7
      003200                        864 00121$:
      003200 C3               [12]  865 	clr	c
      003201 74 07            [12]  866 	mov	a,#0x07
      003203 9E               [12]  867 	subb	a,r6
      003204 E4               [12]  868 	clr	a
      003205 9F               [12]  869 	subb	a,r7
      003206 50 CE            [24]  870 	jnc	00104$
                                    871 ;	8051_i2c_eeprom.c:101: SDA = 1;            // Release SDA for slave
                                    872 ;	assignBit
      003208 D2 94            [12]  873 	setb	_P1_4
                                    874 ;	8051_i2c_eeprom.c:102: SCL = 1;            // 9th clock pulse for ACK
                                    875 ;	assignBit
      00320A D2 93            [12]  876 	setb	_P1_3
                                    877 ;	8051_i2c_eeprom.c:103: i2c_delay();
      00320C 12 32 E5         [24]  878 	lcall	_i2c_delay
                                    879 ;	8051_i2c_eeprom.c:104: if(SDA == 1)        // If SDA is still high, no ACK received
      00320F 30 94 15         [24]  880 	jnb	_P1_4,00103$
                                    881 ;	8051_i2c_eeprom.c:107: printf("ACK DID NOT ARRIVE\n\r");
      003212 74 27            [12]  882 	mov	a,#___str_4
      003214 C0 E0            [24]  883 	push	acc
      003216 74 3E            [12]  884 	mov	a,#(___str_4 >> 8)
      003218 C0 E0            [24]  885 	push	acc
      00321A 74 80            [12]  886 	mov	a,#0x80
      00321C C0 E0            [24]  887 	push	acc
      00321E 12 33 4A         [24]  888 	lcall	_printf
      003221 15 81            [12]  889 	dec	sp
      003223 15 81            [12]  890 	dec	sp
      003225 15 81            [12]  891 	dec	sp
      003227                        892 00103$:
                                    893 ;	8051_i2c_eeprom.c:110: SCL = 0;
                                    894 ;	assignBit
      003227 C2 93            [12]  895 	clr	_P1_3
                                    896 ;	8051_i2c_eeprom.c:111: printf("Transmission successfull\n\r");
      003229 74 3C            [12]  897 	mov	a,#___str_5
      00322B C0 E0            [24]  898 	push	acc
      00322D 74 3E            [12]  899 	mov	a,#(___str_5 >> 8)
      00322F C0 E0            [24]  900 	push	acc
      003231 74 80            [12]  901 	mov	a,#0x80
      003233 C0 E0            [24]  902 	push	acc
      003235 12 33 4A         [24]  903 	lcall	_printf
      003238 15 81            [12]  904 	dec	sp
      00323A 15 81            [12]  905 	dec	sp
      00323C 15 81            [12]  906 	dec	sp
                                    907 ;	8051_i2c_eeprom.c:114: }
      00323E 22               [24]  908 	ret
                                    909 ;------------------------------------------------------------
                                    910 ;Allocation info for local variables in function 'i2c_read'
                                    911 ;------------------------------------------------------------
                                    912 ;ACK                       Allocated with name '_i2c_read_ACK_65536_35'
                                    913 ;buff                      Allocated with name '_i2c_read_buff_65536_36'
                                    914 ;i                         Allocated with name '_i2c_read_i_131072_37'
                                    915 ;------------------------------------------------------------
                                    916 ;	8051_i2c_eeprom.c:115: int i2c_read(int ACK)
                                    917 ;	-----------------------------------------
                                    918 ;	 function i2c_read
                                    919 ;	-----------------------------------------
      00323F                        920 _i2c_read:
      00323F AF 83            [24]  921 	mov	r7,dph
      003241 E5 82            [12]  922 	mov	a,dpl
      003243 90 04 0A         [24]  923 	mov	dptr,#_i2c_read_ACK_65536_35
      003246 F0               [24]  924 	movx	@dptr,a
      003247 EF               [12]  925 	mov	a,r7
      003248 A3               [24]  926 	inc	dptr
      003249 F0               [24]  927 	movx	@dptr,a
                                    928 ;	8051_i2c_eeprom.c:117: unsigned char buff=0;
      00324A 90 04 0C         [24]  929 	mov	dptr,#_i2c_read_buff_65536_36
      00324D E4               [12]  930 	clr	a
      00324E F0               [24]  931 	movx	@dptr,a
                                    932 ;	8051_i2c_eeprom.c:119: for(int i=0;i<8;i++)
      00324F 7E 00            [12]  933 	mov	r6,#0x00
      003251 7F 00            [12]  934 	mov	r7,#0x00
      003253                        935 00105$:
      003253 C3               [12]  936 	clr	c
      003254 EE               [12]  937 	mov	a,r6
      003255 94 08            [12]  938 	subb	a,#0x08
      003257 EF               [12]  939 	mov	a,r7
      003258 64 80            [12]  940 	xrl	a,#0x80
      00325A 94 80            [12]  941 	subb	a,#0x80
      00325C 50 41            [24]  942 	jnc	00103$
                                    943 ;	8051_i2c_eeprom.c:121: SDA = 1;
                                    944 ;	assignBit
      00325E D2 94            [12]  945 	setb	_P1_4
                                    946 ;	8051_i2c_eeprom.c:122: SCL = 1;
                                    947 ;	assignBit
      003260 D2 93            [12]  948 	setb	_P1_3
                                    949 ;	8051_i2c_eeprom.c:123: i2c_delay();
      003262 C0 07            [24]  950 	push	ar7
      003264 C0 06            [24]  951 	push	ar6
      003266 12 32 E5         [24]  952 	lcall	_i2c_delay
      003269 D0 06            [24]  953 	pop	ar6
      00326B D0 07            [24]  954 	pop	ar7
                                    955 ;	8051_i2c_eeprom.c:124: buff = buff << 1;
      00326D 90 04 0C         [24]  956 	mov	dptr,#_i2c_read_buff_65536_36
      003270 E0               [24]  957 	movx	a,@dptr
      003271 25 E0            [12]  958 	add	a,acc
      003273 F0               [24]  959 	movx	@dptr,a
                                    960 ;	8051_i2c_eeprom.c:125: if(SDA) buff |=0x80>>i;
      003274 30 94 1F         [24]  961 	jnb	_P1_4,00102$
      003277 8E F0            [24]  962 	mov	b,r6
      003279 05 F0            [12]  963 	inc	b
      00327B 7C 80            [12]  964 	mov	r4,#0x80
      00327D E4               [12]  965 	clr	a
      00327E FD               [12]  966 	mov	r5,a
      00327F 33               [12]  967 	rlc	a
      003280 92 D2            [24]  968 	mov	ov,c
      003282 80 08            [24]  969 	sjmp	00125$
      003284                        970 00124$:
      003284 A2 D2            [12]  971 	mov	c,ov
      003286 ED               [12]  972 	mov	a,r5
      003287 13               [12]  973 	rrc	a
      003288 FD               [12]  974 	mov	r5,a
      003289 EC               [12]  975 	mov	a,r4
      00328A 13               [12]  976 	rrc	a
      00328B FC               [12]  977 	mov	r4,a
      00328C                        978 00125$:
      00328C D5 F0 F5         [24]  979 	djnz	b,00124$
      00328F 90 04 0C         [24]  980 	mov	dptr,#_i2c_read_buff_65536_36
      003292 E0               [24]  981 	movx	a,@dptr
      003293 FB               [12]  982 	mov	r3,a
      003294 4C               [12]  983 	orl	a,r4
      003295 F0               [24]  984 	movx	@dptr,a
      003296                        985 00102$:
                                    986 ;	8051_i2c_eeprom.c:126: SCL=0;
                                    987 ;	assignBit
      003296 C2 93            [12]  988 	clr	_P1_3
                                    989 ;	8051_i2c_eeprom.c:119: for(int i=0;i<8;i++)
      003298 0E               [12]  990 	inc	r6
      003299 BE 00 B7         [24]  991 	cjne	r6,#0x00,00105$
      00329C 0F               [12]  992 	inc	r7
      00329D 80 B4            [24]  993 	sjmp	00105$
      00329F                        994 00103$:
                                    995 ;	8051_i2c_eeprom.c:130: SDA = !ACK;         // ACK = 0, NACK = 1
      00329F 90 04 0A         [24]  996 	mov	dptr,#_i2c_read_ACK_65536_35
      0032A2 E0               [24]  997 	movx	a,@dptr
      0032A3 FE               [12]  998 	mov	r6,a
      0032A4 A3               [24]  999 	inc	dptr
      0032A5 E0               [24] 1000 	movx	a,@dptr
      0032A6 4E               [12] 1001 	orl	a,r6
      0032A7 B4 01 00         [24] 1002 	cjne	a,#0x01,00127$
      0032AA                       1003 00127$:
      0032AA E4               [12] 1004 	clr	a
      0032AB 33               [12] 1005 	rlc	a
      0032AC 24 FF            [12] 1006 	add	a,#0xff
      0032AE 92 94            [24] 1007 	mov	_P1_4,c
                                   1008 ;	8051_i2c_eeprom.c:131: SCL = 1;
                                   1009 ;	assignBit
      0032B0 D2 93            [12] 1010 	setb	_P1_3
                                   1011 ;	8051_i2c_eeprom.c:132: i2c_delay();
      0032B2 12 32 E5         [24] 1012 	lcall	_i2c_delay
                                   1013 ;	8051_i2c_eeprom.c:133: SCL = 0;
                                   1014 ;	assignBit
      0032B5 C2 93            [12] 1015 	clr	_P1_3
                                   1016 ;	8051_i2c_eeprom.c:136: return buff;
      0032B7 90 04 0C         [24] 1017 	mov	dptr,#_i2c_read_buff_65536_36
      0032BA E0               [24] 1018 	movx	a,@dptr
      0032BB FF               [12] 1019 	mov	r7,a
      0032BC 7E 00            [12] 1020 	mov	r6,#0x00
      0032BE 8F 82            [24] 1021 	mov	dpl,r7
      0032C0 8E 83            [24] 1022 	mov	dph,r6
                                   1023 ;	8051_i2c_eeprom.c:137: }
      0032C2 22               [24] 1024 	ret
                                   1025 ;------------------------------------------------------------
                                   1026 ;Allocation info for local variables in function 'i2c_start'
                                   1027 ;------------------------------------------------------------
                                   1028 ;	8051_i2c_eeprom.c:138: void i2c_start(void)
                                   1029 ;	-----------------------------------------
                                   1030 ;	 function i2c_start
                                   1031 ;	-----------------------------------------
      0032C3                       1032 _i2c_start:
                                   1033 ;	8051_i2c_eeprom.c:140: i2c_delay();
      0032C3 12 32 E5         [24] 1034 	lcall	_i2c_delay
                                   1035 ;	8051_i2c_eeprom.c:141: SDA = 1;
                                   1036 ;	assignBit
      0032C6 D2 94            [12] 1037 	setb	_P1_4
                                   1038 ;	8051_i2c_eeprom.c:142: i2c_delay();
      0032C8 12 32 E5         [24] 1039 	lcall	_i2c_delay
                                   1040 ;	8051_i2c_eeprom.c:143: SCL = 1;
                                   1041 ;	assignBit
      0032CB D2 93            [12] 1042 	setb	_P1_3
                                   1043 ;	8051_i2c_eeprom.c:144: i2c_delay();
      0032CD 12 32 E5         [24] 1044 	lcall	_i2c_delay
                                   1045 ;	8051_i2c_eeprom.c:145: SDA = 0;
                                   1046 ;	assignBit
      0032D0 C2 94            [12] 1047 	clr	_P1_4
                                   1048 ;	8051_i2c_eeprom.c:146: i2c_delay();
      0032D2 12 32 E5         [24] 1049 	lcall	_i2c_delay
                                   1050 ;	8051_i2c_eeprom.c:147: SCL = 0;
                                   1051 ;	assignBit
      0032D5 C2 93            [12] 1052 	clr	_P1_3
                                   1053 ;	8051_i2c_eeprom.c:148: }
      0032D7 22               [24] 1054 	ret
                                   1055 ;------------------------------------------------------------
                                   1056 ;Allocation info for local variables in function 'i2c_stop'
                                   1057 ;------------------------------------------------------------
                                   1058 ;	8051_i2c_eeprom.c:150: void i2c_stop(void)
                                   1059 ;	-----------------------------------------
                                   1060 ;	 function i2c_stop
                                   1061 ;	-----------------------------------------
      0032D8                       1062 _i2c_stop:
                                   1063 ;	8051_i2c_eeprom.c:152: SDA = 0;
                                   1064 ;	assignBit
      0032D8 C2 94            [12] 1065 	clr	_P1_4
                                   1066 ;	8051_i2c_eeprom.c:153: i2c_delay();
      0032DA 12 32 E5         [24] 1067 	lcall	_i2c_delay
                                   1068 ;	8051_i2c_eeprom.c:154: SCL = 1;
                                   1069 ;	assignBit
      0032DD D2 93            [12] 1070 	setb	_P1_3
                                   1071 ;	8051_i2c_eeprom.c:155: i2c_delay();
      0032DF 12 32 E5         [24] 1072 	lcall	_i2c_delay
                                   1073 ;	8051_i2c_eeprom.c:156: SDA = 1; 
                                   1074 ;	assignBit
      0032E2 D2 94            [12] 1075 	setb	_P1_4
                                   1076 ;	8051_i2c_eeprom.c:157: }
      0032E4 22               [24] 1077 	ret
                                   1078 ;------------------------------------------------------------
                                   1079 ;Allocation info for local variables in function 'i2c_delay'
                                   1080 ;------------------------------------------------------------
                                   1081 ;i                         Allocated with name '_i2c_delay_i_131072_44'
                                   1082 ;------------------------------------------------------------
                                   1083 ;	8051_i2c_eeprom.c:159: void i2c_delay() 
                                   1084 ;	-----------------------------------------
                                   1085 ;	 function i2c_delay
                                   1086 ;	-----------------------------------------
      0032E5                       1087 _i2c_delay:
                                   1088 ;	8051_i2c_eeprom.c:167: for(int i = 0; i<500; i++);
      0032E5 7E 00            [12] 1089 	mov	r6,#0x00
      0032E7 7F 00            [12] 1090 	mov	r7,#0x00
      0032E9                       1091 00103$:
      0032E9 C3               [12] 1092 	clr	c
      0032EA EE               [12] 1093 	mov	a,r6
      0032EB 94 F4            [12] 1094 	subb	a,#0xf4
      0032ED EF               [12] 1095 	mov	a,r7
      0032EE 64 80            [12] 1096 	xrl	a,#0x80
      0032F0 94 81            [12] 1097 	subb	a,#0x81
      0032F2 50 07            [24] 1098 	jnc	00105$
      0032F4 0E               [12] 1099 	inc	r6
      0032F5 BE 00 F1         [24] 1100 	cjne	r6,#0x00,00103$
      0032F8 0F               [12] 1101 	inc	r7
      0032F9 80 EE            [24] 1102 	sjmp	00103$
      0032FB                       1103 00105$:
                                   1104 ;	8051_i2c_eeprom.c:168: }
      0032FB 22               [24] 1105 	ret
                                   1106 	.area CSEG    (CODE)
                                   1107 	.area CONST   (CODE)
                                   1108 	.area CONST   (CODE)
      003DAC                       1109 ___str_0:
      003DAC 61 64 64 72 65 73 73  1110 	.ascii "address 0x48 read_value_int %d"
             20 30 78 34 38 20 72
             65 61 64 5F 76 61 6C
             75 65 5F 69 6E 74 20
             25 64
      003DCA 0A                    1111 	.db 0x0a
      003DCB 0D                    1112 	.db 0x0d
      003DCC 00                    1113 	.db 0x00
                                   1114 	.area CSEG    (CODE)
                                   1115 	.area CONST   (CODE)
      003DCD                       1116 ___str_1:
      003DCD 61 64 64 72 65 73 73  1117 	.ascii "address 0x48 read_value_char %c"
             20 30 78 34 38 20 72
             65 61 64 5F 76 61 6C
             75 65 5F 63 68 61 72
             20 25 63
      003DEC 0A                    1118 	.db 0x0a
      003DED 0D                    1119 	.db 0x0d
      003DEE 00                    1120 	.db 0x00
                                   1121 	.area CSEG    (CODE)
                                   1122 	.area CONST   (CODE)
      003DEF                       1123 ___str_2:
      003DEF 61 64 64 72 65 73 73  1124 	.ascii "address 00 read_value %d"
             20 30 30 20 72 65 61
             64 5F 76 61 6C 75 65
             20 25 64
      003E07 0A                    1125 	.db 0x0a
      003E08 0D                    1126 	.db 0x0d
      003E09 00                    1127 	.db 0x00
                                   1128 	.area CSEG    (CODE)
                                   1129 	.area CONST   (CODE)
      003E0A                       1130 ___str_3:
      003E0A 61 64 64 72 65 73 73  1131 	.ascii "address 00 read_value_c %d"
             20 30 30 20 72 65 61
             64 5F 76 61 6C 75 65
             5F 63 20 25 64
      003E24 0A                    1132 	.db 0x0a
      003E25 0D                    1133 	.db 0x0d
      003E26 00                    1134 	.db 0x00
                                   1135 	.area CSEG    (CODE)
                                   1136 	.area CONST   (CODE)
      003E27                       1137 ___str_4:
      003E27 41 43 4B 20 44 49 44  1138 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      003E39 0A                    1139 	.db 0x0a
      003E3A 0D                    1140 	.db 0x0d
      003E3B 00                    1141 	.db 0x00
                                   1142 	.area CSEG    (CODE)
                                   1143 	.area CONST   (CODE)
      003E3C                       1144 ___str_5:
      003E3C 54 72 61 6E 73 6D 69  1145 	.ascii "Transmission successfull"
             73 73 69 6F 6E 20 73
             75 63 63 65 73 73 66
             75 6C 6C
      003E54 0A                    1146 	.db 0x0a
      003E55 0D                    1147 	.db 0x0d
      003E56 00                    1148 	.db 0x00
                                   1149 	.area CSEG    (CODE)
                                   1150 	.area XINIT   (CODE)
                                   1151 	.area CABS    (ABS,CODE)
