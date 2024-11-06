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
      000405                        472 _eeprom_write_address_65536_25:
      000405                        473 	.ds 2
      000407                        474 _eeprom_read_address_65536_32:
      000407                        475 	.ds 2
      000409                        476 _i2c_write_data_65536_37:
      000409                        477 	.ds 1
      00040A                        478 _i2c_read_ACK_65536_42:
      00040A                        479 	.ds 2
      00040C                        480 _i2c_read_buff_65536_43:
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
                                    605 ;------------------------------------------------------------
                                    606 ;	8051_i2c_eeprom.c:37: int main()
                                    607 ;	-----------------------------------------
                                    608 ;	 function main
                                    609 ;	-----------------------------------------
      00308F                        610 _main:
                                    611 ;	8051_i2c_eeprom.c:40: P1 &= ~(1<<3);  // Set P1.3 as output
      00308F 53 90 F7         [24]  612 	anl	_P1,#0xf7
                                    613 ;	8051_i2c_eeprom.c:41: P1 &= ~(1<<4);  // Set P1.4 as output
      003092 53 90 EF         [24]  614 	anl	_P1,#0xef
                                    615 ;	8051_i2c_eeprom.c:42: i2c_start();
      003095 12 33 40         [24]  616 	lcall	_i2c_start
                                    617 ;	8051_i2c_eeprom.c:43: i2c_delay();
      003098 12 33 62         [24]  618 	lcall	_i2c_delay
                                    619 ;	8051_i2c_eeprom.c:49: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      00309B 74 02            [12]  620 	mov	a,#0x02
      00309D C0 E0            [24]  621 	push	acc
      00309F E4               [12]  622 	clr	a
      0030A0 C0 E0            [24]  623 	push	acc
      0030A2 74 26            [12]  624 	mov	a,#0x26
      0030A4 C0 E0            [24]  625 	push	acc
      0030A6 E4               [12]  626 	clr	a
      0030A7 C0 E0            [24]  627 	push	acc
      0030A9 74 29            [12]  628 	mov	a,#___str_0
      0030AB C0 E0            [24]  629 	push	acc
      0030AD 74 3E            [12]  630 	mov	a,#(___str_0 >> 8)
      0030AF C0 E0            [24]  631 	push	acc
      0030B1 74 80            [12]  632 	mov	a,#0x80
      0030B3 C0 E0            [24]  633 	push	acc
      0030B5 12 33 C7         [24]  634 	lcall	_printf
      0030B8 E5 81            [12]  635 	mov	a,sp
      0030BA 24 F9            [12]  636 	add	a,#0xf9
      0030BC F5 81            [12]  637 	mov	sp,a
                                    638 ;	8051_i2c_eeprom.c:50: eeprom_write(address, test_data);
      0030BE 90 04 04         [24]  639 	mov	dptr,#_eeprom_write_PARM_2
      0030C1 74 26            [12]  640 	mov	a,#0x26
      0030C3 F0               [24]  641 	movx	@dptr,a
      0030C4 90 00 02         [24]  642 	mov	dptr,#0x0002
      0030C7 12 30 D1         [24]  643 	lcall	_eeprom_write
                                    644 ;	8051_i2c_eeprom.c:51: i2c_stop();
      0030CA 12 33 55         [24]  645 	lcall	_i2c_stop
                                    646 ;	8051_i2c_eeprom.c:80: return 0;
      0030CD 90 00 00         [24]  647 	mov	dptr,#0x0000
                                    648 ;	8051_i2c_eeprom.c:81: }
      0030D0 22               [24]  649 	ret
                                    650 ;------------------------------------------------------------
                                    651 ;Allocation info for local variables in function 'eeprom_write'
                                    652 ;------------------------------------------------------------
                                    653 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                    654 ;address                   Allocated with name '_eeprom_write_address_65536_25'
                                    655 ;i                         Allocated with name '_eeprom_write_i_131072_30'
                                    656 ;------------------------------------------------------------
                                    657 ;	8051_i2c_eeprom.c:83: int eeprom_write(unsigned int address, unsigned char data) {
                                    658 ;	-----------------------------------------
                                    659 ;	 function eeprom_write
                                    660 ;	-----------------------------------------
      0030D1                        661 _eeprom_write:
      0030D1 AF 83            [24]  662 	mov	r7,dph
      0030D3 E5 82            [12]  663 	mov	a,dpl
      0030D5 90 04 05         [24]  664 	mov	dptr,#_eeprom_write_address_65536_25
      0030D8 F0               [24]  665 	movx	@dptr,a
      0030D9 EF               [12]  666 	mov	a,r7
      0030DA A3               [24]  667 	inc	dptr
      0030DB F0               [24]  668 	movx	@dptr,a
                                    669 ;	8051_i2c_eeprom.c:84: i2c_start();
      0030DC 12 33 40         [24]  670 	lcall	_i2c_start
                                    671 ;	8051_i2c_eeprom.c:87: if(!i2c_write(EEPROM_ID | WRITE)) {
      0030DF 75 82 A0         [24]  672 	mov	dpl,#0xa0
      0030E2 12 32 3F         [24]  673 	lcall	_i2c_write
      0030E5 E5 82            [12]  674 	mov	a,dpl
      0030E7 85 83 F0         [24]  675 	mov	b,dph
      0030EA 45 F0            [12]  676 	orl	a,b
      0030EC 70 1C            [24]  677 	jnz	00102$
                                    678 ;	8051_i2c_eeprom.c:88: printf("Error: No ACK for device address (write)\n\r");
      0030EE 74 51            [12]  679 	mov	a,#___str_1
      0030F0 C0 E0            [24]  680 	push	acc
      0030F2 74 3E            [12]  681 	mov	a,#(___str_1 >> 8)
      0030F4 C0 E0            [24]  682 	push	acc
      0030F6 74 80            [12]  683 	mov	a,#0x80
      0030F8 C0 E0            [24]  684 	push	acc
      0030FA 12 33 C7         [24]  685 	lcall	_printf
      0030FD 15 81            [12]  686 	dec	sp
      0030FF 15 81            [12]  687 	dec	sp
      003101 15 81            [12]  688 	dec	sp
                                    689 ;	8051_i2c_eeprom.c:89: i2c_stop();
      003103 12 33 55         [24]  690 	lcall	_i2c_stop
                                    691 ;	8051_i2c_eeprom.c:90: return 0;
      003106 90 00 00         [24]  692 	mov	dptr,#0x0000
      003109 22               [24]  693 	ret
      00310A                        694 00102$:
                                    695 ;	8051_i2c_eeprom.c:94: if(!i2c_write((unsigned char)address)) {
      00310A 90 04 05         [24]  696 	mov	dptr,#_eeprom_write_address_65536_25
      00310D E0               [24]  697 	movx	a,@dptr
      00310E FE               [12]  698 	mov	r6,a
      00310F A3               [24]  699 	inc	dptr
      003110 E0               [24]  700 	movx	a,@dptr
      003111 8E 82            [24]  701 	mov	dpl,r6
      003113 12 32 3F         [24]  702 	lcall	_i2c_write
      003116 E5 82            [12]  703 	mov	a,dpl
      003118 85 83 F0         [24]  704 	mov	b,dph
      00311B 45 F0            [12]  705 	orl	a,b
      00311D 70 1C            [24]  706 	jnz	00104$
                                    707 ;	8051_i2c_eeprom.c:95: printf("Error: No ACK for memory address\n\r");
      00311F 74 7C            [12]  708 	mov	a,#___str_2
      003121 C0 E0            [24]  709 	push	acc
      003123 74 3E            [12]  710 	mov	a,#(___str_2 >> 8)
      003125 C0 E0            [24]  711 	push	acc
      003127 74 80            [12]  712 	mov	a,#0x80
      003129 C0 E0            [24]  713 	push	acc
      00312B 12 33 C7         [24]  714 	lcall	_printf
      00312E 15 81            [12]  715 	dec	sp
      003130 15 81            [12]  716 	dec	sp
      003132 15 81            [12]  717 	dec	sp
                                    718 ;	8051_i2c_eeprom.c:96: i2c_stop();
      003134 12 33 55         [24]  719 	lcall	_i2c_stop
                                    720 ;	8051_i2c_eeprom.c:97: return 0;
      003137 90 00 00         [24]  721 	mov	dptr,#0x0000
      00313A 22               [24]  722 	ret
      00313B                        723 00104$:
                                    724 ;	8051_i2c_eeprom.c:101: if(!i2c_write(data)) {
      00313B 90 04 04         [24]  725 	mov	dptr,#_eeprom_write_PARM_2
      00313E E0               [24]  726 	movx	a,@dptr
      00313F F5 82            [12]  727 	mov	dpl,a
      003141 12 32 3F         [24]  728 	lcall	_i2c_write
      003144 E5 82            [12]  729 	mov	a,dpl
      003146 85 83 F0         [24]  730 	mov	b,dph
      003149 45 F0            [12]  731 	orl	a,b
      00314B 70 1C            [24]  732 	jnz	00106$
                                    733 ;	8051_i2c_eeprom.c:102: printf("Error: No ACK for data\n\r");
      00314D 74 9F            [12]  734 	mov	a,#___str_3
      00314F C0 E0            [24]  735 	push	acc
      003151 74 3E            [12]  736 	mov	a,#(___str_3 >> 8)
      003153 C0 E0            [24]  737 	push	acc
      003155 74 80            [12]  738 	mov	a,#0x80
      003157 C0 E0            [24]  739 	push	acc
      003159 12 33 C7         [24]  740 	lcall	_printf
      00315C 15 81            [12]  741 	dec	sp
      00315E 15 81            [12]  742 	dec	sp
      003160 15 81            [12]  743 	dec	sp
                                    744 ;	8051_i2c_eeprom.c:103: i2c_stop();
      003162 12 33 55         [24]  745 	lcall	_i2c_stop
                                    746 ;	8051_i2c_eeprom.c:104: return 0;
      003165 90 00 00         [24]  747 	mov	dptr,#0x0000
      003168 22               [24]  748 	ret
      003169                        749 00106$:
                                    750 ;	8051_i2c_eeprom.c:107: i2c_stop();
      003169 12 33 55         [24]  751 	lcall	_i2c_stop
                                    752 ;	8051_i2c_eeprom.c:109: for(int i = 0; i<100; i++)
      00316C 7E 00            [12]  753 	mov	r6,#0x00
      00316E 7F 00            [12]  754 	mov	r7,#0x00
      003170                        755 00109$:
      003170 C3               [12]  756 	clr	c
      003171 EE               [12]  757 	mov	a,r6
      003172 94 64            [12]  758 	subb	a,#0x64
      003174 EF               [12]  759 	mov	a,r7
      003175 64 80            [12]  760 	xrl	a,#0x80
      003177 94 80            [12]  761 	subb	a,#0x80
      003179 50 12            [24]  762 	jnc	00107$
                                    763 ;	8051_i2c_eeprom.c:111: i2c_delay();
      00317B C0 07            [24]  764 	push	ar7
      00317D C0 06            [24]  765 	push	ar6
      00317F 12 33 62         [24]  766 	lcall	_i2c_delay
      003182 D0 06            [24]  767 	pop	ar6
      003184 D0 07            [24]  768 	pop	ar7
                                    769 ;	8051_i2c_eeprom.c:109: for(int i = 0; i<100; i++)
      003186 0E               [12]  770 	inc	r6
      003187 BE 00 E6         [24]  771 	cjne	r6,#0x00,00109$
      00318A 0F               [12]  772 	inc	r7
      00318B 80 E3            [24]  773 	sjmp	00109$
      00318D                        774 00107$:
                                    775 ;	8051_i2c_eeprom.c:113: return 1;  // Success
      00318D 90 00 01         [24]  776 	mov	dptr,#0x0001
                                    777 ;	8051_i2c_eeprom.c:114: }
      003190 22               [24]  778 	ret
                                    779 ;------------------------------------------------------------
                                    780 ;Allocation info for local variables in function 'eeprom_read'
                                    781 ;------------------------------------------------------------
                                    782 ;address                   Allocated with name '_eeprom_read_address_65536_32'
                                    783 ;result                    Allocated with name '_eeprom_read_result_65536_33'
                                    784 ;------------------------------------------------------------
                                    785 ;	8051_i2c_eeprom.c:116: int eeprom_read(unsigned int address) {
                                    786 ;	-----------------------------------------
                                    787 ;	 function eeprom_read
                                    788 ;	-----------------------------------------
      003191                        789 _eeprom_read:
      003191 AF 83            [24]  790 	mov	r7,dph
      003193 E5 82            [12]  791 	mov	a,dpl
      003195 90 04 07         [24]  792 	mov	dptr,#_eeprom_read_address_65536_32
      003198 F0               [24]  793 	movx	@dptr,a
      003199 EF               [12]  794 	mov	a,r7
      00319A A3               [24]  795 	inc	dptr
      00319B F0               [24]  796 	movx	@dptr,a
                                    797 ;	8051_i2c_eeprom.c:120: i2c_start();
      00319C 12 33 40         [24]  798 	lcall	_i2c_start
                                    799 ;	8051_i2c_eeprom.c:123: if(!i2c_write(EEPROM_ID | WRITE)) {
      00319F 75 82 A0         [24]  800 	mov	dpl,#0xa0
      0031A2 12 32 3F         [24]  801 	lcall	_i2c_write
      0031A5 E5 82            [12]  802 	mov	a,dpl
      0031A7 85 83 F0         [24]  803 	mov	b,dph
      0031AA 45 F0            [12]  804 	orl	a,b
      0031AC 70 1C            [24]  805 	jnz	00102$
                                    806 ;	8051_i2c_eeprom.c:124: printf("Error: No ACK for device address (write mode)\n\r");
      0031AE 74 B8            [12]  807 	mov	a,#___str_4
      0031B0 C0 E0            [24]  808 	push	acc
      0031B2 74 3E            [12]  809 	mov	a,#(___str_4 >> 8)
      0031B4 C0 E0            [24]  810 	push	acc
      0031B6 74 80            [12]  811 	mov	a,#0x80
      0031B8 C0 E0            [24]  812 	push	acc
      0031BA 12 33 C7         [24]  813 	lcall	_printf
      0031BD 15 81            [12]  814 	dec	sp
      0031BF 15 81            [12]  815 	dec	sp
      0031C1 15 81            [12]  816 	dec	sp
                                    817 ;	8051_i2c_eeprom.c:125: i2c_stop();
      0031C3 12 33 55         [24]  818 	lcall	_i2c_stop
                                    819 ;	8051_i2c_eeprom.c:126: return -1;
      0031C6 90 FF FF         [24]  820 	mov	dptr,#0xffff
      0031C9 22               [24]  821 	ret
      0031CA                        822 00102$:
                                    823 ;	8051_i2c_eeprom.c:130: if(!i2c_write((unsigned char)address)) {
      0031CA 90 04 07         [24]  824 	mov	dptr,#_eeprom_read_address_65536_32
      0031CD E0               [24]  825 	movx	a,@dptr
      0031CE FE               [12]  826 	mov	r6,a
      0031CF A3               [24]  827 	inc	dptr
      0031D0 E0               [24]  828 	movx	a,@dptr
      0031D1 8E 82            [24]  829 	mov	dpl,r6
      0031D3 12 32 3F         [24]  830 	lcall	_i2c_write
      0031D6 E5 82            [12]  831 	mov	a,dpl
      0031D8 85 83 F0         [24]  832 	mov	b,dph
      0031DB 45 F0            [12]  833 	orl	a,b
      0031DD 70 1C            [24]  834 	jnz	00104$
                                    835 ;	8051_i2c_eeprom.c:131: printf("Error: No ACK for memory address\n\r");
      0031DF 74 7C            [12]  836 	mov	a,#___str_2
      0031E1 C0 E0            [24]  837 	push	acc
      0031E3 74 3E            [12]  838 	mov	a,#(___str_2 >> 8)
      0031E5 C0 E0            [24]  839 	push	acc
      0031E7 74 80            [12]  840 	mov	a,#0x80
      0031E9 C0 E0            [24]  841 	push	acc
      0031EB 12 33 C7         [24]  842 	lcall	_printf
      0031EE 15 81            [12]  843 	dec	sp
      0031F0 15 81            [12]  844 	dec	sp
      0031F2 15 81            [12]  845 	dec	sp
                                    846 ;	8051_i2c_eeprom.c:132: i2c_stop();
      0031F4 12 33 55         [24]  847 	lcall	_i2c_stop
                                    848 ;	8051_i2c_eeprom.c:133: return -1;
      0031F7 90 FF FF         [24]  849 	mov	dptr,#0xffff
      0031FA 22               [24]  850 	ret
      0031FB                        851 00104$:
                                    852 ;	8051_i2c_eeprom.c:137: i2c_start();
      0031FB 12 33 40         [24]  853 	lcall	_i2c_start
                                    854 ;	8051_i2c_eeprom.c:140: if(!i2c_write(EEPROM_ID | READ)) {
      0031FE 75 82 A1         [24]  855 	mov	dpl,#0xa1
      003201 12 32 3F         [24]  856 	lcall	_i2c_write
      003204 E5 82            [12]  857 	mov	a,dpl
      003206 85 83 F0         [24]  858 	mov	b,dph
      003209 45 F0            [12]  859 	orl	a,b
      00320B 70 1C            [24]  860 	jnz	00106$
                                    861 ;	8051_i2c_eeprom.c:141: printf("Error: No ACK for device address (read mode)\n\r");
      00320D 74 E8            [12]  862 	mov	a,#___str_5
      00320F C0 E0            [24]  863 	push	acc
      003211 74 3E            [12]  864 	mov	a,#(___str_5 >> 8)
      003213 C0 E0            [24]  865 	push	acc
      003215 74 80            [12]  866 	mov	a,#0x80
      003217 C0 E0            [24]  867 	push	acc
      003219 12 33 C7         [24]  868 	lcall	_printf
      00321C 15 81            [12]  869 	dec	sp
      00321E 15 81            [12]  870 	dec	sp
      003220 15 81            [12]  871 	dec	sp
                                    872 ;	8051_i2c_eeprom.c:142: i2c_stop();
      003222 12 33 55         [24]  873 	lcall	_i2c_stop
                                    874 ;	8051_i2c_eeprom.c:143: return -1;
      003225 90 FF FF         [24]  875 	mov	dptr,#0xffff
      003228 22               [24]  876 	ret
      003229                        877 00106$:
                                    878 ;	8051_i2c_eeprom.c:147: result = i2c_read(0);  // 0 means send NACK
      003229 90 00 00         [24]  879 	mov	dptr,#0x0000
      00322C 12 32 BC         [24]  880 	lcall	_i2c_read
      00322F AE 82            [24]  881 	mov	r6,dpl
                                    882 ;	8051_i2c_eeprom.c:149: i2c_stop();
      003231 C0 06            [24]  883 	push	ar6
      003233 12 33 55         [24]  884 	lcall	_i2c_stop
      003236 D0 06            [24]  885 	pop	ar6
                                    886 ;	8051_i2c_eeprom.c:150: return result;
      003238 7F 00            [12]  887 	mov	r7,#0x00
      00323A 8E 82            [24]  888 	mov	dpl,r6
      00323C 8F 83            [24]  889 	mov	dph,r7
                                    890 ;	8051_i2c_eeprom.c:151: }
      00323E 22               [24]  891 	ret
                                    892 ;------------------------------------------------------------
                                    893 ;Allocation info for local variables in function 'i2c_write'
                                    894 ;------------------------------------------------------------
                                    895 ;data                      Allocated with name '_i2c_write_data_65536_37'
                                    896 ;i                         Allocated with name '_i2c_write_i_65536_38'
                                    897 ;------------------------------------------------------------
                                    898 ;	8051_i2c_eeprom.c:182: int i2c_write(unsigned char data)
                                    899 ;	-----------------------------------------
                                    900 ;	 function i2c_write
                                    901 ;	-----------------------------------------
      00323F                        902 _i2c_write:
      00323F E5 82            [12]  903 	mov	a,dpl
      003241 90 04 09         [24]  904 	mov	dptr,#_i2c_write_data_65536_37
      003244 F0               [24]  905 	movx	@dptr,a
                                    906 ;	8051_i2c_eeprom.c:186: for(i=0;i<=7;i++)
      003245 7E 00            [12]  907 	mov	r6,#0x00
      003247 7F 00            [12]  908 	mov	r7,#0x00
      003249                        909 00104$:
                                    910 ;	8051_i2c_eeprom.c:188: SDA = (data & 0x80) ? 1 : 0;    //msb first
      003249 90 04 09         [24]  911 	mov	dptr,#_i2c_write_data_65536_37
      00324C E0               [24]  912 	movx	a,@dptr
      00324D FD               [12]  913 	mov	r5,a
      00324E 23               [12]  914 	rl	a
      00324F 54 01            [12]  915 	anl	a,#0x01
      003251 24 FF            [12]  916 	add	a,#0xff
      003253 92 94            [24]  917 	mov	_P1_4,c
                                    918 ;	8051_i2c_eeprom.c:189: i2c_delay();        // Setup time for data
      003255 C0 07            [24]  919 	push	ar7
      003257 C0 06            [24]  920 	push	ar6
      003259 C0 05            [24]  921 	push	ar5
      00325B 12 33 62         [24]  922 	lcall	_i2c_delay
                                    923 ;	8051_i2c_eeprom.c:190: SCL=1;
                                    924 ;	assignBit
      00325E D2 93            [12]  925 	setb	_P1_3
                                    926 ;	8051_i2c_eeprom.c:191: i2c_delay();        // Hold time for clock
      003260 12 33 62         [24]  927 	lcall	_i2c_delay
      003263 D0 05            [24]  928 	pop	ar5
      003265 D0 06            [24]  929 	pop	ar6
      003267 D0 07            [24]  930 	pop	ar7
                                    931 ;	8051_i2c_eeprom.c:192: SCL=0;
                                    932 ;	assignBit
      003269 C2 93            [12]  933 	clr	_P1_3
                                    934 ;	8051_i2c_eeprom.c:193: data = data << 1;
      00326B ED               [12]  935 	mov	a,r5
      00326C 2D               [12]  936 	add	a,r5
      00326D 90 04 09         [24]  937 	mov	dptr,#_i2c_write_data_65536_37
      003270 F0               [24]  938 	movx	@dptr,a
                                    939 ;	8051_i2c_eeprom.c:186: for(i=0;i<=7;i++)
      003271 0E               [12]  940 	inc	r6
      003272 BE 00 01         [24]  941 	cjne	r6,#0x00,00121$
      003275 0F               [12]  942 	inc	r7
      003276                        943 00121$:
      003276 C3               [12]  944 	clr	c
      003277 74 07            [12]  945 	mov	a,#0x07
      003279 9E               [12]  946 	subb	a,r6
      00327A E4               [12]  947 	clr	a
      00327B 9F               [12]  948 	subb	a,r7
      00327C 50 CB            [24]  949 	jnc	00104$
                                    950 ;	8051_i2c_eeprom.c:197: SDA = 1;            // Release SDA for slave
                                    951 ;	assignBit
      00327E D2 94            [12]  952 	setb	_P1_4
                                    953 ;	8051_i2c_eeprom.c:198: SCL = 1;            // 9th clock pulse for ACK
                                    954 ;	assignBit
      003280 D2 93            [12]  955 	setb	_P1_3
                                    956 ;	8051_i2c_eeprom.c:199: i2c_delay();
      003282 12 33 62         [24]  957 	lcall	_i2c_delay
                                    958 ;	8051_i2c_eeprom.c:200: if(SDA == 1)        // If SDA is still high, no ACK received
      003285 30 94 19         [24]  959 	jnb	_P1_4,00103$
                                    960 ;	8051_i2c_eeprom.c:203: printf("ACK DID NOT ARRIVE\n\r");
      003288 74 17            [12]  961 	mov	a,#___str_6
      00328A C0 E0            [24]  962 	push	acc
      00328C 74 3F            [12]  963 	mov	a,#(___str_6 >> 8)
      00328E C0 E0            [24]  964 	push	acc
      003290 74 80            [12]  965 	mov	a,#0x80
      003292 C0 E0            [24]  966 	push	acc
      003294 12 33 C7         [24]  967 	lcall	_printf
      003297 15 81            [12]  968 	dec	sp
      003299 15 81            [12]  969 	dec	sp
      00329B 15 81            [12]  970 	dec	sp
                                    971 ;	8051_i2c_eeprom.c:204: return 0;       // Error
      00329D 90 00 00         [24]  972 	mov	dptr,#0x0000
      0032A0 22               [24]  973 	ret
      0032A1                        974 00103$:
                                    975 ;	8051_i2c_eeprom.c:206: SCL = 0;
                                    976 ;	assignBit
      0032A1 C2 93            [12]  977 	clr	_P1_3
                                    978 ;	8051_i2c_eeprom.c:207: printf("Transmission successfull\n\r");
      0032A3 74 2C            [12]  979 	mov	a,#___str_7
      0032A5 C0 E0            [24]  980 	push	acc
      0032A7 74 3F            [12]  981 	mov	a,#(___str_7 >> 8)
      0032A9 C0 E0            [24]  982 	push	acc
      0032AB 74 80            [12]  983 	mov	a,#0x80
      0032AD C0 E0            [24]  984 	push	acc
      0032AF 12 33 C7         [24]  985 	lcall	_printf
      0032B2 15 81            [12]  986 	dec	sp
      0032B4 15 81            [12]  987 	dec	sp
      0032B6 15 81            [12]  988 	dec	sp
                                    989 ;	8051_i2c_eeprom.c:208: return 1;           // Success
      0032B8 90 00 01         [24]  990 	mov	dptr,#0x0001
                                    991 ;	8051_i2c_eeprom.c:210: }
      0032BB 22               [24]  992 	ret
                                    993 ;------------------------------------------------------------
                                    994 ;Allocation info for local variables in function 'i2c_read'
                                    995 ;------------------------------------------------------------
                                    996 ;ACK                       Allocated with name '_i2c_read_ACK_65536_42'
                                    997 ;buff                      Allocated with name '_i2c_read_buff_65536_43'
                                    998 ;i                         Allocated with name '_i2c_read_i_131072_44'
                                    999 ;------------------------------------------------------------
                                   1000 ;	8051_i2c_eeprom.c:211: int i2c_read(int ACK)
                                   1001 ;	-----------------------------------------
                                   1002 ;	 function i2c_read
                                   1003 ;	-----------------------------------------
      0032BC                       1004 _i2c_read:
      0032BC AF 83            [24] 1005 	mov	r7,dph
      0032BE E5 82            [12] 1006 	mov	a,dpl
      0032C0 90 04 0A         [24] 1007 	mov	dptr,#_i2c_read_ACK_65536_42
      0032C3 F0               [24] 1008 	movx	@dptr,a
      0032C4 EF               [12] 1009 	mov	a,r7
      0032C5 A3               [24] 1010 	inc	dptr
      0032C6 F0               [24] 1011 	movx	@dptr,a
                                   1012 ;	8051_i2c_eeprom.c:213: unsigned char buff=0;
      0032C7 90 04 0C         [24] 1013 	mov	dptr,#_i2c_read_buff_65536_43
      0032CA E4               [12] 1014 	clr	a
      0032CB F0               [24] 1015 	movx	@dptr,a
                                   1016 ;	8051_i2c_eeprom.c:215: for(int i=0;i<8;i++)
      0032CC 7E 00            [12] 1017 	mov	r6,#0x00
      0032CE 7F 00            [12] 1018 	mov	r7,#0x00
      0032D0                       1019 00105$:
      0032D0 C3               [12] 1020 	clr	c
      0032D1 EE               [12] 1021 	mov	a,r6
      0032D2 94 08            [12] 1022 	subb	a,#0x08
      0032D4 EF               [12] 1023 	mov	a,r7
      0032D5 64 80            [12] 1024 	xrl	a,#0x80
      0032D7 94 80            [12] 1025 	subb	a,#0x80
      0032D9 50 41            [24] 1026 	jnc	00103$
                                   1027 ;	8051_i2c_eeprom.c:217: SDA = 1;
                                   1028 ;	assignBit
      0032DB D2 94            [12] 1029 	setb	_P1_4
                                   1030 ;	8051_i2c_eeprom.c:218: SCL = 1;
                                   1031 ;	assignBit
      0032DD D2 93            [12] 1032 	setb	_P1_3
                                   1033 ;	8051_i2c_eeprom.c:219: i2c_delay();
      0032DF C0 07            [24] 1034 	push	ar7
      0032E1 C0 06            [24] 1035 	push	ar6
      0032E3 12 33 62         [24] 1036 	lcall	_i2c_delay
      0032E6 D0 06            [24] 1037 	pop	ar6
      0032E8 D0 07            [24] 1038 	pop	ar7
                                   1039 ;	8051_i2c_eeprom.c:220: buff = buff << 1;
      0032EA 90 04 0C         [24] 1040 	mov	dptr,#_i2c_read_buff_65536_43
      0032ED E0               [24] 1041 	movx	a,@dptr
      0032EE 25 E0            [12] 1042 	add	a,acc
      0032F0 F0               [24] 1043 	movx	@dptr,a
                                   1044 ;	8051_i2c_eeprom.c:221: if(SDA) buff |=0x80>>i;
      0032F1 30 94 1F         [24] 1045 	jnb	_P1_4,00102$
      0032F4 8E F0            [24] 1046 	mov	b,r6
      0032F6 05 F0            [12] 1047 	inc	b
      0032F8 7C 80            [12] 1048 	mov	r4,#0x80
      0032FA E4               [12] 1049 	clr	a
      0032FB FD               [12] 1050 	mov	r5,a
      0032FC 33               [12] 1051 	rlc	a
      0032FD 92 D2            [24] 1052 	mov	ov,c
      0032FF 80 08            [24] 1053 	sjmp	00125$
      003301                       1054 00124$:
      003301 A2 D2            [12] 1055 	mov	c,ov
      003303 ED               [12] 1056 	mov	a,r5
      003304 13               [12] 1057 	rrc	a
      003305 FD               [12] 1058 	mov	r5,a
      003306 EC               [12] 1059 	mov	a,r4
      003307 13               [12] 1060 	rrc	a
      003308 FC               [12] 1061 	mov	r4,a
      003309                       1062 00125$:
      003309 D5 F0 F5         [24] 1063 	djnz	b,00124$
      00330C 90 04 0C         [24] 1064 	mov	dptr,#_i2c_read_buff_65536_43
      00330F E0               [24] 1065 	movx	a,@dptr
      003310 FB               [12] 1066 	mov	r3,a
      003311 4C               [12] 1067 	orl	a,r4
      003312 F0               [24] 1068 	movx	@dptr,a
      003313                       1069 00102$:
                                   1070 ;	8051_i2c_eeprom.c:222: SCL=0;
                                   1071 ;	assignBit
      003313 C2 93            [12] 1072 	clr	_P1_3
                                   1073 ;	8051_i2c_eeprom.c:215: for(int i=0;i<8;i++)
      003315 0E               [12] 1074 	inc	r6
      003316 BE 00 B7         [24] 1075 	cjne	r6,#0x00,00105$
      003319 0F               [12] 1076 	inc	r7
      00331A 80 B4            [24] 1077 	sjmp	00105$
      00331C                       1078 00103$:
                                   1079 ;	8051_i2c_eeprom.c:226: SDA = !ACK;         // ACK = 0, NACK = 1
      00331C 90 04 0A         [24] 1080 	mov	dptr,#_i2c_read_ACK_65536_42
      00331F E0               [24] 1081 	movx	a,@dptr
      003320 FE               [12] 1082 	mov	r6,a
      003321 A3               [24] 1083 	inc	dptr
      003322 E0               [24] 1084 	movx	a,@dptr
      003323 4E               [12] 1085 	orl	a,r6
      003324 B4 01 00         [24] 1086 	cjne	a,#0x01,00127$
      003327                       1087 00127$:
      003327 E4               [12] 1088 	clr	a
      003328 33               [12] 1089 	rlc	a
      003329 24 FF            [12] 1090 	add	a,#0xff
      00332B 92 94            [24] 1091 	mov	_P1_4,c
                                   1092 ;	8051_i2c_eeprom.c:227: SCL = 1;
                                   1093 ;	assignBit
      00332D D2 93            [12] 1094 	setb	_P1_3
                                   1095 ;	8051_i2c_eeprom.c:228: i2c_delay();
      00332F 12 33 62         [24] 1096 	lcall	_i2c_delay
                                   1097 ;	8051_i2c_eeprom.c:229: SCL = 0;
                                   1098 ;	assignBit
      003332 C2 93            [12] 1099 	clr	_P1_3
                                   1100 ;	8051_i2c_eeprom.c:231: return buff;
      003334 90 04 0C         [24] 1101 	mov	dptr,#_i2c_read_buff_65536_43
      003337 E0               [24] 1102 	movx	a,@dptr
      003338 FF               [12] 1103 	mov	r7,a
      003339 7E 00            [12] 1104 	mov	r6,#0x00
      00333B 8F 82            [24] 1105 	mov	dpl,r7
      00333D 8E 83            [24] 1106 	mov	dph,r6
                                   1107 ;	8051_i2c_eeprom.c:232: }
      00333F 22               [24] 1108 	ret
                                   1109 ;------------------------------------------------------------
                                   1110 ;Allocation info for local variables in function 'i2c_start'
                                   1111 ;------------------------------------------------------------
                                   1112 ;	8051_i2c_eeprom.c:233: void i2c_start(void)
                                   1113 ;	-----------------------------------------
                                   1114 ;	 function i2c_start
                                   1115 ;	-----------------------------------------
      003340                       1116 _i2c_start:
                                   1117 ;	8051_i2c_eeprom.c:235: i2c_delay();
      003340 12 33 62         [24] 1118 	lcall	_i2c_delay
                                   1119 ;	8051_i2c_eeprom.c:236: SDA = 1;
                                   1120 ;	assignBit
      003343 D2 94            [12] 1121 	setb	_P1_4
                                   1122 ;	8051_i2c_eeprom.c:237: i2c_delay();
      003345 12 33 62         [24] 1123 	lcall	_i2c_delay
                                   1124 ;	8051_i2c_eeprom.c:238: SCL = 1;
                                   1125 ;	assignBit
      003348 D2 93            [12] 1126 	setb	_P1_3
                                   1127 ;	8051_i2c_eeprom.c:239: i2c_delay();
      00334A 12 33 62         [24] 1128 	lcall	_i2c_delay
                                   1129 ;	8051_i2c_eeprom.c:240: SDA = 0;
                                   1130 ;	assignBit
      00334D C2 94            [12] 1131 	clr	_P1_4
                                   1132 ;	8051_i2c_eeprom.c:241: i2c_delay();
      00334F 12 33 62         [24] 1133 	lcall	_i2c_delay
                                   1134 ;	8051_i2c_eeprom.c:242: SCL = 0;
                                   1135 ;	assignBit
      003352 C2 93            [12] 1136 	clr	_P1_3
                                   1137 ;	8051_i2c_eeprom.c:243: }
      003354 22               [24] 1138 	ret
                                   1139 ;------------------------------------------------------------
                                   1140 ;Allocation info for local variables in function 'i2c_stop'
                                   1141 ;------------------------------------------------------------
                                   1142 ;	8051_i2c_eeprom.c:245: void i2c_stop(void)
                                   1143 ;	-----------------------------------------
                                   1144 ;	 function i2c_stop
                                   1145 ;	-----------------------------------------
      003355                       1146 _i2c_stop:
                                   1147 ;	8051_i2c_eeprom.c:247: SDA = 0;
                                   1148 ;	assignBit
      003355 C2 94            [12] 1149 	clr	_P1_4
                                   1150 ;	8051_i2c_eeprom.c:248: i2c_delay();
      003357 12 33 62         [24] 1151 	lcall	_i2c_delay
                                   1152 ;	8051_i2c_eeprom.c:249: SCL = 1;
                                   1153 ;	assignBit
      00335A D2 93            [12] 1154 	setb	_P1_3
                                   1155 ;	8051_i2c_eeprom.c:250: i2c_delay();
      00335C 12 33 62         [24] 1156 	lcall	_i2c_delay
                                   1157 ;	8051_i2c_eeprom.c:251: SDA = 1; 
                                   1158 ;	assignBit
      00335F D2 94            [12] 1159 	setb	_P1_4
                                   1160 ;	8051_i2c_eeprom.c:252: }
      003361 22               [24] 1161 	ret
                                   1162 ;------------------------------------------------------------
                                   1163 ;Allocation info for local variables in function 'i2c_delay'
                                   1164 ;------------------------------------------------------------
                                   1165 ;i                         Allocated with name '_i2c_delay_i_131072_51'
                                   1166 ;------------------------------------------------------------
                                   1167 ;	8051_i2c_eeprom.c:254: void i2c_delay() 
                                   1168 ;	-----------------------------------------
                                   1169 ;	 function i2c_delay
                                   1170 ;	-----------------------------------------
      003362                       1171 _i2c_delay:
                                   1172 ;	8051_i2c_eeprom.c:262: for(int i = 0; i<500; i++);
      003362 7E 00            [12] 1173 	mov	r6,#0x00
      003364 7F 00            [12] 1174 	mov	r7,#0x00
      003366                       1175 00103$:
      003366 C3               [12] 1176 	clr	c
      003367 EE               [12] 1177 	mov	a,r6
      003368 94 F4            [12] 1178 	subb	a,#0xf4
      00336A EF               [12] 1179 	mov	a,r7
      00336B 64 80            [12] 1180 	xrl	a,#0x80
      00336D 94 81            [12] 1181 	subb	a,#0x81
      00336F 50 07            [24] 1182 	jnc	00105$
      003371 0E               [12] 1183 	inc	r6
      003372 BE 00 F1         [24] 1184 	cjne	r6,#0x00,00103$
      003375 0F               [12] 1185 	inc	r7
      003376 80 EE            [24] 1186 	sjmp	00103$
      003378                       1187 00105$:
                                   1188 ;	8051_i2c_eeprom.c:263: }
      003378 22               [24] 1189 	ret
                                   1190 	.area CSEG    (CODE)
                                   1191 	.area CONST   (CODE)
                                   1192 	.area CONST   (CODE)
      003E29                       1193 ___str_0:
      003E29 57 72 69 74 69 6E 67  1194 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      003E4E 0A                    1195 	.db 0x0a
      003E4F 0D                    1196 	.db 0x0d
      003E50 00                    1197 	.db 0x00
                                   1198 	.area CSEG    (CODE)
                                   1199 	.area CONST   (CODE)
      003E51                       1200 ___str_1:
      003E51 45 72 72 6F 72 3A 20  1201 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      003E79 0A                    1202 	.db 0x0a
      003E7A 0D                    1203 	.db 0x0d
      003E7B 00                    1204 	.db 0x00
                                   1205 	.area CSEG    (CODE)
                                   1206 	.area CONST   (CODE)
      003E7C                       1207 ___str_2:
      003E7C 45 72 72 6F 72 3A 20  1208 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      003E9C 0A                    1209 	.db 0x0a
      003E9D 0D                    1210 	.db 0x0d
      003E9E 00                    1211 	.db 0x00
                                   1212 	.area CSEG    (CODE)
                                   1213 	.area CONST   (CODE)
      003E9F                       1214 ___str_3:
      003E9F 45 72 72 6F 72 3A 20  1215 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      003EB5 0A                    1216 	.db 0x0a
      003EB6 0D                    1217 	.db 0x0d
      003EB7 00                    1218 	.db 0x00
                                   1219 	.area CSEG    (CODE)
                                   1220 	.area CONST   (CODE)
      003EB8                       1221 ___str_4:
      003EB8 45 72 72 6F 72 3A 20  1222 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      003EE5 0A                    1223 	.db 0x0a
      003EE6 0D                    1224 	.db 0x0d
      003EE7 00                    1225 	.db 0x00
                                   1226 	.area CSEG    (CODE)
                                   1227 	.area CONST   (CODE)
      003EE8                       1228 ___str_5:
      003EE8 45 72 72 6F 72 3A 20  1229 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      003F14 0A                    1230 	.db 0x0a
      003F15 0D                    1231 	.db 0x0d
      003F16 00                    1232 	.db 0x00
                                   1233 	.area CSEG    (CODE)
                                   1234 	.area CONST   (CODE)
      003F17                       1235 ___str_6:
      003F17 41 43 4B 20 44 49 44  1236 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      003F29 0A                    1237 	.db 0x0a
      003F2A 0D                    1238 	.db 0x0d
      003F2B 00                    1239 	.db 0x00
                                   1240 	.area CSEG    (CODE)
                                   1241 	.area CONST   (CODE)
      003F2C                       1242 ___str_7:
      003F2C 54 72 61 6E 73 6D 69  1243 	.ascii "Transmission successfull"
             73 73 69 6F 6E 20 73
             75 63 63 65 73 73 66
             75 6C 6C
      003F44 0A                    1244 	.db 0x0a
      003F45 0D                    1245 	.db 0x0d
      003F46 00                    1246 	.db 0x00
                                   1247 	.area CSEG    (CODE)
                                   1248 	.area XINIT   (CODE)
                                   1249 	.area CABS    (ABS,CODE)
