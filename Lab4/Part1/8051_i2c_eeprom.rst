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
      000404                        470 _eeprom_read_address_65536_30:
      000404                        471 	.ds 2
      000406                        472 _eeprom_write_PARM_2:
      000406                        473 	.ds 1
      000407                        474 _eeprom_write_address_65536_32:
      000407                        475 	.ds 2
      000409                        476 _i2c_write_data_65536_34:
      000409                        477 	.ds 1
      00040A                        478 _i2c_read_ACK_65536_39:
      00040A                        479 	.ds 2
      00040C                        480 _i2c_read_buff_65536_40:
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
      003095 12 32 C8         [24]  618 	lcall	_i2c_start
                                    619 ;	8051_i2c_eeprom.c:43: i2c_delay();
      003098 12 32 EA         [24]  620 	lcall	_i2c_delay
                                    621 ;	8051_i2c_eeprom.c:49: printf("Writing 0x%02X to address 0x%02X\n\r", test_data, address);
      00309B E4               [12]  622 	clr	a
      00309C C0 E0            [24]  623 	push	acc
      00309E C0 E0            [24]  624 	push	acc
      0030A0 74 55            [12]  625 	mov	a,#0x55
      0030A2 C0 E0            [24]  626 	push	acc
      0030A4 E4               [12]  627 	clr	a
      0030A5 C0 E0            [24]  628 	push	acc
      0030A7 74 B1            [12]  629 	mov	a,#___str_0
      0030A9 C0 E0            [24]  630 	push	acc
      0030AB 74 3D            [12]  631 	mov	a,#(___str_0 >> 8)
      0030AD C0 E0            [24]  632 	push	acc
      0030AF 74 80            [12]  633 	mov	a,#0x80
      0030B1 C0 E0            [24]  634 	push	acc
      0030B3 12 33 4F         [24]  635 	lcall	_printf
      0030B6 E5 81            [12]  636 	mov	a,sp
      0030B8 24 F9            [12]  637 	add	a,#0xf9
      0030BA F5 81            [12]  638 	mov	sp,a
                                    639 ;	8051_i2c_eeprom.c:50: eeprom_write(address, test_data);
      0030BC 90 04 06         [24]  640 	mov	dptr,#_eeprom_write_PARM_2
      0030BF 74 55            [12]  641 	mov	a,#0x55
      0030C1 F0               [24]  642 	movx	@dptr,a
      0030C2 90 00 00         [24]  643 	mov	dptr,#0x0000
      0030C5 12 31 89         [24]  644 	lcall	_eeprom_write
                                    645 ;	8051_i2c_eeprom.c:53: for(int i = 0; i<100; i++)
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
                                    656 ;	8051_i2c_eeprom.c:56: i2c_delay();
      0030D7 C0 07            [24]  657 	push	ar7
      0030D9 C0 06            [24]  658 	push	ar6
      0030DB 12 32 EA         [24]  659 	lcall	_i2c_delay
      0030DE D0 06            [24]  660 	pop	ar6
      0030E0 D0 07            [24]  661 	pop	ar7
                                    662 ;	8051_i2c_eeprom.c:53: for(int i = 0; i<100; i++)
      0030E2 0E               [12]  663 	inc	r6
      0030E3 BE 00 E6         [24]  664 	cjne	r6,#0x00,00106$
      0030E6 0F               [12]  665 	inc	r7
      0030E7 80 E3            [24]  666 	sjmp	00106$
      0030E9                        667 00101$:
                                    668 ;	8051_i2c_eeprom.c:60: unsigned char read_data = eeprom_read(address);
      0030E9 90 00 00         [24]  669 	mov	dptr,#0x0000
      0030EC 12 31 4A         [24]  670 	lcall	_eeprom_read
      0030EF AE 82            [24]  671 	mov	r6,dpl
                                    672 ;	8051_i2c_eeprom.c:61: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      0030F1 8E 05            [24]  673 	mov	ar5,r6
      0030F3 7F 00            [12]  674 	mov	r7,#0x00
      0030F5 C0 06            [24]  675 	push	ar6
      0030F7 C0 05            [24]  676 	push	ar5
      0030F9 C0 07            [24]  677 	push	ar7
      0030FB E4               [12]  678 	clr	a
      0030FC C0 E0            [24]  679 	push	acc
      0030FE C0 E0            [24]  680 	push	acc
      003100 74 D4            [12]  681 	mov	a,#___str_1
      003102 C0 E0            [24]  682 	push	acc
      003104 74 3D            [12]  683 	mov	a,#(___str_1 >> 8)
      003106 C0 E0            [24]  684 	push	acc
      003108 74 80            [12]  685 	mov	a,#0x80
      00310A C0 E0            [24]  686 	push	acc
      00310C 12 33 4F         [24]  687 	lcall	_printf
      00310F E5 81            [12]  688 	mov	a,sp
      003111 24 F9            [12]  689 	add	a,#0xf9
      003113 F5 81            [12]  690 	mov	sp,a
      003115 D0 06            [24]  691 	pop	ar6
                                    692 ;	8051_i2c_eeprom.c:64: if(read_data == test_data) {
      003117 BE 55 17         [24]  693 	cjne	r6,#0x55,00103$
                                    694 ;	8051_i2c_eeprom.c:65: printf("MATCH - Write/Read successful!\n\r");
      00311A 74 FC            [12]  695 	mov	a,#___str_2
      00311C C0 E0            [24]  696 	push	acc
      00311E 74 3D            [12]  697 	mov	a,#(___str_2 >> 8)
      003120 C0 E0            [24]  698 	push	acc
      003122 74 80            [12]  699 	mov	a,#0x80
      003124 C0 E0            [24]  700 	push	acc
      003126 12 33 4F         [24]  701 	lcall	_printf
      003129 15 81            [12]  702 	dec	sp
      00312B 15 81            [12]  703 	dec	sp
      00312D 15 81            [12]  704 	dec	sp
      00312F 80 15            [24]  705 	sjmp	00104$
      003131                        706 00103$:
                                    707 ;	8051_i2c_eeprom.c:67: printf("ERROR - Data mismatch!\n\r");
      003131 74 1D            [12]  708 	mov	a,#___str_3
      003133 C0 E0            [24]  709 	push	acc
      003135 74 3E            [12]  710 	mov	a,#(___str_3 >> 8)
      003137 C0 E0            [24]  711 	push	acc
      003139 74 80            [12]  712 	mov	a,#0x80
      00313B C0 E0            [24]  713 	push	acc
      00313D 12 33 4F         [24]  714 	lcall	_printf
      003140 15 81            [12]  715 	dec	sp
      003142 15 81            [12]  716 	dec	sp
      003144 15 81            [12]  717 	dec	sp
      003146                        718 00104$:
                                    719 ;	8051_i2c_eeprom.c:81: return 0;
      003146 90 00 00         [24]  720 	mov	dptr,#0x0000
                                    721 ;	8051_i2c_eeprom.c:82: }
      003149 22               [24]  722 	ret
                                    723 ;------------------------------------------------------------
                                    724 ;Allocation info for local variables in function 'eeprom_read'
                                    725 ;------------------------------------------------------------
                                    726 ;address                   Allocated with name '_eeprom_read_address_65536_30'
                                    727 ;result                    Allocated with name '_eeprom_read_result_65536_31'
                                    728 ;------------------------------------------------------------
                                    729 ;	8051_i2c_eeprom.c:84: int eeprom_read(unsigned int address)
                                    730 ;	-----------------------------------------
                                    731 ;	 function eeprom_read
                                    732 ;	-----------------------------------------
      00314A                        733 _eeprom_read:
      00314A AF 83            [24]  734 	mov	r7,dph
      00314C E5 82            [12]  735 	mov	a,dpl
      00314E 90 04 04         [24]  736 	mov	dptr,#_eeprom_read_address_65536_30
      003151 F0               [24]  737 	movx	@dptr,a
      003152 EF               [12]  738 	mov	a,r7
      003153 A3               [24]  739 	inc	dptr
      003154 F0               [24]  740 	movx	@dptr,a
                                    741 ;	8051_i2c_eeprom.c:88: i2c_start();
      003155 12 32 C8         [24]  742 	lcall	_i2c_start
                                    743 ;	8051_i2c_eeprom.c:90: i2c_write(EEPROM_ID|WRITE);
      003158 75 82 A0         [24]  744 	mov	dpl,#0xa0
      00315B 12 31 C7         [24]  745 	lcall	_i2c_write
                                    746 ;	8051_i2c_eeprom.c:91: i2c_write(address);
      00315E 90 04 04         [24]  747 	mov	dptr,#_eeprom_read_address_65536_30
      003161 E0               [24]  748 	movx	a,@dptr
      003162 FE               [12]  749 	mov	r6,a
      003163 A3               [24]  750 	inc	dptr
      003164 E0               [24]  751 	movx	a,@dptr
      003165 8E 82            [24]  752 	mov	dpl,r6
      003167 12 31 C7         [24]  753 	lcall	_i2c_write
                                    754 ;	8051_i2c_eeprom.c:93: i2c_start();
      00316A 12 32 C8         [24]  755 	lcall	_i2c_start
                                    756 ;	8051_i2c_eeprom.c:94: i2c_write(EEPROM_ID|READ);
      00316D 75 82 A1         [24]  757 	mov	dpl,#0xa1
      003170 12 31 C7         [24]  758 	lcall	_i2c_write
                                    759 ;	8051_i2c_eeprom.c:95: result = i2c_read(0);
      003173 90 00 00         [24]  760 	mov	dptr,#0x0000
      003176 12 32 44         [24]  761 	lcall	_i2c_read
      003179 AE 82            [24]  762 	mov	r6,dpl
                                    763 ;	8051_i2c_eeprom.c:97: i2c_stop();
      00317B C0 06            [24]  764 	push	ar6
      00317D 12 32 DD         [24]  765 	lcall	_i2c_stop
      003180 D0 06            [24]  766 	pop	ar6
                                    767 ;	8051_i2c_eeprom.c:98: return result;
      003182 7F 00            [12]  768 	mov	r7,#0x00
      003184 8E 82            [24]  769 	mov	dpl,r6
      003186 8F 83            [24]  770 	mov	dph,r7
                                    771 ;	8051_i2c_eeprom.c:99: }
      003188 22               [24]  772 	ret
                                    773 ;------------------------------------------------------------
                                    774 ;Allocation info for local variables in function 'eeprom_write'
                                    775 ;------------------------------------------------------------
                                    776 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                    777 ;address                   Allocated with name '_eeprom_write_address_65536_32'
                                    778 ;------------------------------------------------------------
                                    779 ;	8051_i2c_eeprom.c:101: int eeprom_write(unsigned int address, unsigned char data)
                                    780 ;	-----------------------------------------
                                    781 ;	 function eeprom_write
                                    782 ;	-----------------------------------------
      003189                        783 _eeprom_write:
      003189 AF 83            [24]  784 	mov	r7,dph
      00318B E5 82            [12]  785 	mov	a,dpl
      00318D 90 04 07         [24]  786 	mov	dptr,#_eeprom_write_address_65536_32
      003190 F0               [24]  787 	movx	@dptr,a
      003191 EF               [12]  788 	mov	a,r7
      003192 A3               [24]  789 	inc	dptr
      003193 F0               [24]  790 	movx	@dptr,a
                                    791 ;	8051_i2c_eeprom.c:103: i2c_start();
      003194 12 32 C8         [24]  792 	lcall	_i2c_start
                                    793 ;	8051_i2c_eeprom.c:104: i2c_write(EEPROM_ID | WRITE);
      003197 75 82 A0         [24]  794 	mov	dpl,#0xa0
      00319A 12 31 C7         [24]  795 	lcall	_i2c_write
                                    796 ;	8051_i2c_eeprom.c:105: i2c_write((unsigned char)(address >> 8));
      00319D 90 04 07         [24]  797 	mov	dptr,#_eeprom_write_address_65536_32
      0031A0 E0               [24]  798 	movx	a,@dptr
      0031A1 FE               [12]  799 	mov	r6,a
      0031A2 A3               [24]  800 	inc	dptr
      0031A3 E0               [24]  801 	movx	a,@dptr
      0031A4 FF               [12]  802 	mov	r7,a
      0031A5 F5 82            [12]  803 	mov	dpl,a
      0031A7 C0 07            [24]  804 	push	ar7
      0031A9 C0 06            [24]  805 	push	ar6
      0031AB 12 31 C7         [24]  806 	lcall	_i2c_write
      0031AE D0 06            [24]  807 	pop	ar6
      0031B0 D0 07            [24]  808 	pop	ar7
                                    809 ;	8051_i2c_eeprom.c:106: i2c_write((unsigned char)address);
      0031B2 8E 82            [24]  810 	mov	dpl,r6
      0031B4 12 31 C7         [24]  811 	lcall	_i2c_write
                                    812 ;	8051_i2c_eeprom.c:107: i2c_write(data);    // No start condition here
      0031B7 90 04 06         [24]  813 	mov	dptr,#_eeprom_write_PARM_2
      0031BA E0               [24]  814 	movx	a,@dptr
      0031BB F5 82            [12]  815 	mov	dpl,a
      0031BD 12 31 C7         [24]  816 	lcall	_i2c_write
                                    817 ;	8051_i2c_eeprom.c:108: i2c_stop();
      0031C0 12 32 DD         [24]  818 	lcall	_i2c_stop
                                    819 ;	8051_i2c_eeprom.c:109: return 0;
      0031C3 90 00 00         [24]  820 	mov	dptr,#0x0000
                                    821 ;	8051_i2c_eeprom.c:110: }
      0031C6 22               [24]  822 	ret
                                    823 ;------------------------------------------------------------
                                    824 ;Allocation info for local variables in function 'i2c_write'
                                    825 ;------------------------------------------------------------
                                    826 ;data                      Allocated with name '_i2c_write_data_65536_34'
                                    827 ;i                         Allocated with name '_i2c_write_i_65536_35'
                                    828 ;------------------------------------------------------------
                                    829 ;	8051_i2c_eeprom.c:113: int i2c_write(unsigned char data)
                                    830 ;	-----------------------------------------
                                    831 ;	 function i2c_write
                                    832 ;	-----------------------------------------
      0031C7                        833 _i2c_write:
      0031C7 E5 82            [12]  834 	mov	a,dpl
      0031C9 90 04 09         [24]  835 	mov	dptr,#_i2c_write_data_65536_34
      0031CC F0               [24]  836 	movx	@dptr,a
                                    837 ;	8051_i2c_eeprom.c:117: for(i=0;i<=7;i++)
      0031CD 7E 00            [12]  838 	mov	r6,#0x00
      0031CF 7F 00            [12]  839 	mov	r7,#0x00
      0031D1                        840 00104$:
                                    841 ;	8051_i2c_eeprom.c:119: SDA = (data & 0x80) ? 1 : 0;
      0031D1 90 04 09         [24]  842 	mov	dptr,#_i2c_write_data_65536_34
      0031D4 E0               [24]  843 	movx	a,@dptr
      0031D5 FD               [12]  844 	mov	r5,a
      0031D6 23               [12]  845 	rl	a
      0031D7 54 01            [12]  846 	anl	a,#0x01
      0031D9 24 FF            [12]  847 	add	a,#0xff
      0031DB 92 94            [24]  848 	mov	_P1_4,c
                                    849 ;	8051_i2c_eeprom.c:120: i2c_delay();        // Setup time for data
      0031DD C0 07            [24]  850 	push	ar7
      0031DF C0 06            [24]  851 	push	ar6
      0031E1 C0 05            [24]  852 	push	ar5
      0031E3 12 32 EA         [24]  853 	lcall	_i2c_delay
                                    854 ;	8051_i2c_eeprom.c:121: SCL=1;
                                    855 ;	assignBit
      0031E6 D2 93            [12]  856 	setb	_P1_3
                                    857 ;	8051_i2c_eeprom.c:122: i2c_delay();        // Hold time for clock
      0031E8 12 32 EA         [24]  858 	lcall	_i2c_delay
      0031EB D0 05            [24]  859 	pop	ar5
      0031ED D0 06            [24]  860 	pop	ar6
      0031EF D0 07            [24]  861 	pop	ar7
                                    862 ;	8051_i2c_eeprom.c:123: SCL=0;
                                    863 ;	assignBit
      0031F1 C2 93            [12]  864 	clr	_P1_3
                                    865 ;	8051_i2c_eeprom.c:124: data = data << 1;
      0031F3 ED               [12]  866 	mov	a,r5
      0031F4 2D               [12]  867 	add	a,r5
      0031F5 90 04 09         [24]  868 	mov	dptr,#_i2c_write_data_65536_34
      0031F8 F0               [24]  869 	movx	@dptr,a
                                    870 ;	8051_i2c_eeprom.c:117: for(i=0;i<=7;i++)
      0031F9 0E               [12]  871 	inc	r6
      0031FA BE 00 01         [24]  872 	cjne	r6,#0x00,00121$
      0031FD 0F               [12]  873 	inc	r7
      0031FE                        874 00121$:
      0031FE C3               [12]  875 	clr	c
      0031FF 74 07            [12]  876 	mov	a,#0x07
      003201 9E               [12]  877 	subb	a,r6
      003202 E4               [12]  878 	clr	a
      003203 9F               [12]  879 	subb	a,r7
      003204 50 CB            [24]  880 	jnc	00104$
                                    881 ;	8051_i2c_eeprom.c:128: SDA = 1;            // Release SDA for slave
                                    882 ;	assignBit
      003206 D2 94            [12]  883 	setb	_P1_4
                                    884 ;	8051_i2c_eeprom.c:129: SCL = 1;            // 9th clock pulse for ACK
                                    885 ;	assignBit
      003208 D2 93            [12]  886 	setb	_P1_3
                                    887 ;	8051_i2c_eeprom.c:130: i2c_delay();
      00320A 12 32 EA         [24]  888 	lcall	_i2c_delay
                                    889 ;	8051_i2c_eeprom.c:131: if(SDA == 1)        // If SDA is still high, no ACK received
      00320D 30 94 19         [24]  890 	jnb	_P1_4,00103$
                                    891 ;	8051_i2c_eeprom.c:134: printf("ACK DID NOT ARRIVE\n\r");
      003210 74 36            [12]  892 	mov	a,#___str_4
      003212 C0 E0            [24]  893 	push	acc
      003214 74 3E            [12]  894 	mov	a,#(___str_4 >> 8)
      003216 C0 E0            [24]  895 	push	acc
      003218 74 80            [12]  896 	mov	a,#0x80
      00321A C0 E0            [24]  897 	push	acc
      00321C 12 33 4F         [24]  898 	lcall	_printf
      00321F 15 81            [12]  899 	dec	sp
      003221 15 81            [12]  900 	dec	sp
      003223 15 81            [12]  901 	dec	sp
                                    902 ;	8051_i2c_eeprom.c:135: return 0;       // Error
      003225 90 00 00         [24]  903 	mov	dptr,#0x0000
      003228 22               [24]  904 	ret
      003229                        905 00103$:
                                    906 ;	8051_i2c_eeprom.c:137: SCL = 0;
                                    907 ;	assignBit
      003229 C2 93            [12]  908 	clr	_P1_3
                                    909 ;	8051_i2c_eeprom.c:138: printf("Transmission successfull\n\r");
      00322B 74 4B            [12]  910 	mov	a,#___str_5
      00322D C0 E0            [24]  911 	push	acc
      00322F 74 3E            [12]  912 	mov	a,#(___str_5 >> 8)
      003231 C0 E0            [24]  913 	push	acc
      003233 74 80            [12]  914 	mov	a,#0x80
      003235 C0 E0            [24]  915 	push	acc
      003237 12 33 4F         [24]  916 	lcall	_printf
      00323A 15 81            [12]  917 	dec	sp
      00323C 15 81            [12]  918 	dec	sp
      00323E 15 81            [12]  919 	dec	sp
                                    920 ;	8051_i2c_eeprom.c:139: return 1;           // Success
      003240 90 00 01         [24]  921 	mov	dptr,#0x0001
                                    922 ;	8051_i2c_eeprom.c:141: }
      003243 22               [24]  923 	ret
                                    924 ;------------------------------------------------------------
                                    925 ;Allocation info for local variables in function 'i2c_read'
                                    926 ;------------------------------------------------------------
                                    927 ;ACK                       Allocated with name '_i2c_read_ACK_65536_39'
                                    928 ;buff                      Allocated with name '_i2c_read_buff_65536_40'
                                    929 ;i                         Allocated with name '_i2c_read_i_131072_41'
                                    930 ;------------------------------------------------------------
                                    931 ;	8051_i2c_eeprom.c:142: int i2c_read(int ACK)
                                    932 ;	-----------------------------------------
                                    933 ;	 function i2c_read
                                    934 ;	-----------------------------------------
      003244                        935 _i2c_read:
      003244 AF 83            [24]  936 	mov	r7,dph
      003246 E5 82            [12]  937 	mov	a,dpl
      003248 90 04 0A         [24]  938 	mov	dptr,#_i2c_read_ACK_65536_39
      00324B F0               [24]  939 	movx	@dptr,a
      00324C EF               [12]  940 	mov	a,r7
      00324D A3               [24]  941 	inc	dptr
      00324E F0               [24]  942 	movx	@dptr,a
                                    943 ;	8051_i2c_eeprom.c:144: unsigned char buff=0;
      00324F 90 04 0C         [24]  944 	mov	dptr,#_i2c_read_buff_65536_40
      003252 E4               [12]  945 	clr	a
      003253 F0               [24]  946 	movx	@dptr,a
                                    947 ;	8051_i2c_eeprom.c:146: for(int i=0;i<8;i++)
      003254 7E 00            [12]  948 	mov	r6,#0x00
      003256 7F 00            [12]  949 	mov	r7,#0x00
      003258                        950 00105$:
      003258 C3               [12]  951 	clr	c
      003259 EE               [12]  952 	mov	a,r6
      00325A 94 08            [12]  953 	subb	a,#0x08
      00325C EF               [12]  954 	mov	a,r7
      00325D 64 80            [12]  955 	xrl	a,#0x80
      00325F 94 80            [12]  956 	subb	a,#0x80
      003261 50 41            [24]  957 	jnc	00103$
                                    958 ;	8051_i2c_eeprom.c:148: SDA = 1;
                                    959 ;	assignBit
      003263 D2 94            [12]  960 	setb	_P1_4
                                    961 ;	8051_i2c_eeprom.c:149: SCL = 1;
                                    962 ;	assignBit
      003265 D2 93            [12]  963 	setb	_P1_3
                                    964 ;	8051_i2c_eeprom.c:150: i2c_delay();
      003267 C0 07            [24]  965 	push	ar7
      003269 C0 06            [24]  966 	push	ar6
      00326B 12 32 EA         [24]  967 	lcall	_i2c_delay
      00326E D0 06            [24]  968 	pop	ar6
      003270 D0 07            [24]  969 	pop	ar7
                                    970 ;	8051_i2c_eeprom.c:151: buff = buff << 1;
      003272 90 04 0C         [24]  971 	mov	dptr,#_i2c_read_buff_65536_40
      003275 E0               [24]  972 	movx	a,@dptr
      003276 25 E0            [12]  973 	add	a,acc
      003278 F0               [24]  974 	movx	@dptr,a
                                    975 ;	8051_i2c_eeprom.c:152: if(SDA) buff |=0x80>>i;
      003279 30 94 1F         [24]  976 	jnb	_P1_4,00102$
      00327C 8E F0            [24]  977 	mov	b,r6
      00327E 05 F0            [12]  978 	inc	b
      003280 7C 80            [12]  979 	mov	r4,#0x80
      003282 E4               [12]  980 	clr	a
      003283 FD               [12]  981 	mov	r5,a
      003284 33               [12]  982 	rlc	a
      003285 92 D2            [24]  983 	mov	ov,c
      003287 80 08            [24]  984 	sjmp	00125$
      003289                        985 00124$:
      003289 A2 D2            [12]  986 	mov	c,ov
      00328B ED               [12]  987 	mov	a,r5
      00328C 13               [12]  988 	rrc	a
      00328D FD               [12]  989 	mov	r5,a
      00328E EC               [12]  990 	mov	a,r4
      00328F 13               [12]  991 	rrc	a
      003290 FC               [12]  992 	mov	r4,a
      003291                        993 00125$:
      003291 D5 F0 F5         [24]  994 	djnz	b,00124$
      003294 90 04 0C         [24]  995 	mov	dptr,#_i2c_read_buff_65536_40
      003297 E0               [24]  996 	movx	a,@dptr
      003298 FB               [12]  997 	mov	r3,a
      003299 4C               [12]  998 	orl	a,r4
      00329A F0               [24]  999 	movx	@dptr,a
      00329B                       1000 00102$:
                                   1001 ;	8051_i2c_eeprom.c:153: SCL=0;
                                   1002 ;	assignBit
      00329B C2 93            [12] 1003 	clr	_P1_3
                                   1004 ;	8051_i2c_eeprom.c:146: for(int i=0;i<8;i++)
      00329D 0E               [12] 1005 	inc	r6
      00329E BE 00 B7         [24] 1006 	cjne	r6,#0x00,00105$
      0032A1 0F               [12] 1007 	inc	r7
      0032A2 80 B4            [24] 1008 	sjmp	00105$
      0032A4                       1009 00103$:
                                   1010 ;	8051_i2c_eeprom.c:157: SDA = !ACK;         // ACK = 0, NACK = 1
      0032A4 90 04 0A         [24] 1011 	mov	dptr,#_i2c_read_ACK_65536_39
      0032A7 E0               [24] 1012 	movx	a,@dptr
      0032A8 FE               [12] 1013 	mov	r6,a
      0032A9 A3               [24] 1014 	inc	dptr
      0032AA E0               [24] 1015 	movx	a,@dptr
      0032AB 4E               [12] 1016 	orl	a,r6
      0032AC B4 01 00         [24] 1017 	cjne	a,#0x01,00127$
      0032AF                       1018 00127$:
      0032AF E4               [12] 1019 	clr	a
      0032B0 33               [12] 1020 	rlc	a
      0032B1 24 FF            [12] 1021 	add	a,#0xff
      0032B3 92 94            [24] 1022 	mov	_P1_4,c
                                   1023 ;	8051_i2c_eeprom.c:158: SCL = 1;
                                   1024 ;	assignBit
      0032B5 D2 93            [12] 1025 	setb	_P1_3
                                   1026 ;	8051_i2c_eeprom.c:159: i2c_delay();
      0032B7 12 32 EA         [24] 1027 	lcall	_i2c_delay
                                   1028 ;	8051_i2c_eeprom.c:160: SCL = 0;
                                   1029 ;	assignBit
      0032BA C2 93            [12] 1030 	clr	_P1_3
                                   1031 ;	8051_i2c_eeprom.c:162: return buff;
      0032BC 90 04 0C         [24] 1032 	mov	dptr,#_i2c_read_buff_65536_40
      0032BF E0               [24] 1033 	movx	a,@dptr
      0032C0 FF               [12] 1034 	mov	r7,a
      0032C1 7E 00            [12] 1035 	mov	r6,#0x00
      0032C3 8F 82            [24] 1036 	mov	dpl,r7
      0032C5 8E 83            [24] 1037 	mov	dph,r6
                                   1038 ;	8051_i2c_eeprom.c:163: }
      0032C7 22               [24] 1039 	ret
                                   1040 ;------------------------------------------------------------
                                   1041 ;Allocation info for local variables in function 'i2c_start'
                                   1042 ;------------------------------------------------------------
                                   1043 ;	8051_i2c_eeprom.c:164: void i2c_start(void)
                                   1044 ;	-----------------------------------------
                                   1045 ;	 function i2c_start
                                   1046 ;	-----------------------------------------
      0032C8                       1047 _i2c_start:
                                   1048 ;	8051_i2c_eeprom.c:166: i2c_delay();
      0032C8 12 32 EA         [24] 1049 	lcall	_i2c_delay
                                   1050 ;	8051_i2c_eeprom.c:167: SDA = 1;
                                   1051 ;	assignBit
      0032CB D2 94            [12] 1052 	setb	_P1_4
                                   1053 ;	8051_i2c_eeprom.c:168: i2c_delay();
      0032CD 12 32 EA         [24] 1054 	lcall	_i2c_delay
                                   1055 ;	8051_i2c_eeprom.c:169: SCL = 1;
                                   1056 ;	assignBit
      0032D0 D2 93            [12] 1057 	setb	_P1_3
                                   1058 ;	8051_i2c_eeprom.c:170: i2c_delay();
      0032D2 12 32 EA         [24] 1059 	lcall	_i2c_delay
                                   1060 ;	8051_i2c_eeprom.c:171: SDA = 0;
                                   1061 ;	assignBit
      0032D5 C2 94            [12] 1062 	clr	_P1_4
                                   1063 ;	8051_i2c_eeprom.c:172: i2c_delay();
      0032D7 12 32 EA         [24] 1064 	lcall	_i2c_delay
                                   1065 ;	8051_i2c_eeprom.c:173: SCL = 0;
                                   1066 ;	assignBit
      0032DA C2 93            [12] 1067 	clr	_P1_3
                                   1068 ;	8051_i2c_eeprom.c:174: }
      0032DC 22               [24] 1069 	ret
                                   1070 ;------------------------------------------------------------
                                   1071 ;Allocation info for local variables in function 'i2c_stop'
                                   1072 ;------------------------------------------------------------
                                   1073 ;	8051_i2c_eeprom.c:176: void i2c_stop(void)
                                   1074 ;	-----------------------------------------
                                   1075 ;	 function i2c_stop
                                   1076 ;	-----------------------------------------
      0032DD                       1077 _i2c_stop:
                                   1078 ;	8051_i2c_eeprom.c:178: SDA = 0;
                                   1079 ;	assignBit
      0032DD C2 94            [12] 1080 	clr	_P1_4
                                   1081 ;	8051_i2c_eeprom.c:179: i2c_delay();
      0032DF 12 32 EA         [24] 1082 	lcall	_i2c_delay
                                   1083 ;	8051_i2c_eeprom.c:180: SCL = 1;
                                   1084 ;	assignBit
      0032E2 D2 93            [12] 1085 	setb	_P1_3
                                   1086 ;	8051_i2c_eeprom.c:181: i2c_delay();
      0032E4 12 32 EA         [24] 1087 	lcall	_i2c_delay
                                   1088 ;	8051_i2c_eeprom.c:182: SDA = 1; 
                                   1089 ;	assignBit
      0032E7 D2 94            [12] 1090 	setb	_P1_4
                                   1091 ;	8051_i2c_eeprom.c:183: }
      0032E9 22               [24] 1092 	ret
                                   1093 ;------------------------------------------------------------
                                   1094 ;Allocation info for local variables in function 'i2c_delay'
                                   1095 ;------------------------------------------------------------
                                   1096 ;i                         Allocated with name '_i2c_delay_i_131072_48'
                                   1097 ;------------------------------------------------------------
                                   1098 ;	8051_i2c_eeprom.c:185: void i2c_delay() 
                                   1099 ;	-----------------------------------------
                                   1100 ;	 function i2c_delay
                                   1101 ;	-----------------------------------------
      0032EA                       1102 _i2c_delay:
                                   1103 ;	8051_i2c_eeprom.c:193: for(int i = 0; i<500; i++);
      0032EA 7E 00            [12] 1104 	mov	r6,#0x00
      0032EC 7F 00            [12] 1105 	mov	r7,#0x00
      0032EE                       1106 00103$:
      0032EE C3               [12] 1107 	clr	c
      0032EF EE               [12] 1108 	mov	a,r6
      0032F0 94 F4            [12] 1109 	subb	a,#0xf4
      0032F2 EF               [12] 1110 	mov	a,r7
      0032F3 64 80            [12] 1111 	xrl	a,#0x80
      0032F5 94 81            [12] 1112 	subb	a,#0x81
      0032F7 50 07            [24] 1113 	jnc	00105$
      0032F9 0E               [12] 1114 	inc	r6
      0032FA BE 00 F1         [24] 1115 	cjne	r6,#0x00,00103$
      0032FD 0F               [12] 1116 	inc	r7
      0032FE 80 EE            [24] 1117 	sjmp	00103$
      003300                       1118 00105$:
                                   1119 ;	8051_i2c_eeprom.c:194: }
      003300 22               [24] 1120 	ret
                                   1121 	.area CSEG    (CODE)
                                   1122 	.area CONST   (CODE)
                                   1123 	.area CONST   (CODE)
      003DB1                       1124 ___str_0:
      003DB1 57 72 69 74 69 6E 67  1125 	.ascii "Writing 0x%02X to address 0x%02X"
             20 30 78 25 30 32 58
             20 74 6F 20 61 64 64
             72 65 73 73 20 30 78
             25 30 32 58
      003DD1 0A                    1126 	.db 0x0a
      003DD2 0D                    1127 	.db 0x0d
      003DD3 00                    1128 	.db 0x00
                                   1129 	.area CSEG    (CODE)
                                   1130 	.area CONST   (CODE)
      003DD4                       1131 ___str_1:
      003DD4 52 65 61 64 20 62 61  1132 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      003DF9 0A                    1133 	.db 0x0a
      003DFA 0D                    1134 	.db 0x0d
      003DFB 00                    1135 	.db 0x00
                                   1136 	.area CSEG    (CODE)
                                   1137 	.area CONST   (CODE)
      003DFC                       1138 ___str_2:
      003DFC 4D 41 54 43 48 20 2D  1139 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      003E1A 0A                    1140 	.db 0x0a
      003E1B 0D                    1141 	.db 0x0d
      003E1C 00                    1142 	.db 0x00
                                   1143 	.area CSEG    (CODE)
                                   1144 	.area CONST   (CODE)
      003E1D                       1145 ___str_3:
      003E1D 45 52 52 4F 52 20 2D  1146 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      003E33 0A                    1147 	.db 0x0a
      003E34 0D                    1148 	.db 0x0d
      003E35 00                    1149 	.db 0x00
                                   1150 	.area CSEG    (CODE)
                                   1151 	.area CONST   (CODE)
      003E36                       1152 ___str_4:
      003E36 41 43 4B 20 44 49 44  1153 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      003E48 0A                    1154 	.db 0x0a
      003E49 0D                    1155 	.db 0x0d
      003E4A 00                    1156 	.db 0x00
                                   1157 	.area CSEG    (CODE)
                                   1158 	.area CONST   (CODE)
      003E4B                       1159 ___str_5:
      003E4B 54 72 61 6E 73 6D 69  1160 	.ascii "Transmission successfull"
             73 73 69 6F 6E 20 73
             75 63 63 65 73 73 66
             75 6C 6C
      003E63 0A                    1161 	.db 0x0a
      003E64 0D                    1162 	.db 0x0d
      003E65 00                    1163 	.db 0x00
                                   1164 	.area CSEG    (CODE)
                                   1165 	.area XINIT   (CODE)
                                   1166 	.area CABS    (ABS,CODE)
