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
      000404                        470 _eeprom_read_address_65536_24:
      000404                        471 	.ds 2
      000406                        472 _eeprom_write_PARM_2:
      000406                        473 	.ds 1
      000407                        474 _eeprom_write_address_65536_26:
      000407                        475 	.ds 2
      000409                        476 _i2c_write_data_65536_28:
      000409                        477 	.ds 1
      00040A                        478 _i2c_read_ACK_65536_33:
      00040A                        479 	.ds 2
      00040C                        480 _i2c_read_buff_65536_34:
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
                                    603 ;	8051_i2c_eeprom.c:37: int main()
                                    604 ;	-----------------------------------------
                                    605 ;	 function main
                                    606 ;	-----------------------------------------
      00308F                        607 _main:
                                    608 ;	8051_i2c_eeprom.c:40: P1 &= ~(1<<3);  // Set P1.3 as output
      00308F 53 90 F7         [24]  609 	anl	_P1,#0xf7
                                    610 ;	8051_i2c_eeprom.c:41: P1 &= ~(1<<4);  // Set P1.4 as output
      003092 53 90 EF         [24]  611 	anl	_P1,#0xef
                                    612 ;	8051_i2c_eeprom.c:42: i2c_start();
      003095 12 32 20         [24]  613 	lcall	_i2c_start
                                    614 ;	8051_i2c_eeprom.c:43: i2c_delay();
      003098 12 32 42         [24]  615 	lcall	_i2c_delay
                                    616 ;	8051_i2c_eeprom.c:44: i2c_stop();
      00309B 12 32 35         [24]  617 	lcall	_i2c_stop
                                    618 ;	8051_i2c_eeprom.c:57: return 0;
      00309E 90 00 00         [24]  619 	mov	dptr,#0x0000
                                    620 ;	8051_i2c_eeprom.c:58: }
      0030A1 22               [24]  621 	ret
                                    622 ;------------------------------------------------------------
                                    623 ;Allocation info for local variables in function 'eeprom_read'
                                    624 ;------------------------------------------------------------
                                    625 ;address                   Allocated with name '_eeprom_read_address_65536_24'
                                    626 ;result                    Allocated with name '_eeprom_read_result_65536_25'
                                    627 ;------------------------------------------------------------
                                    628 ;	8051_i2c_eeprom.c:60: int eeprom_read(unsigned int address)
                                    629 ;	-----------------------------------------
                                    630 ;	 function eeprom_read
                                    631 ;	-----------------------------------------
      0030A2                        632 _eeprom_read:
      0030A2 AF 83            [24]  633 	mov	r7,dph
      0030A4 E5 82            [12]  634 	mov	a,dpl
      0030A6 90 04 04         [24]  635 	mov	dptr,#_eeprom_read_address_65536_24
      0030A9 F0               [24]  636 	movx	@dptr,a
      0030AA EF               [12]  637 	mov	a,r7
      0030AB A3               [24]  638 	inc	dptr
      0030AC F0               [24]  639 	movx	@dptr,a
                                    640 ;	8051_i2c_eeprom.c:64: i2c_start();
      0030AD 12 32 20         [24]  641 	lcall	_i2c_start
                                    642 ;	8051_i2c_eeprom.c:66: i2c_write(EEPROM_ID|WRITE);
      0030B0 75 82 A0         [24]  643 	mov	dpl,#0xa0
      0030B3 12 31 22         [24]  644 	lcall	_i2c_write
                                    645 ;	8051_i2c_eeprom.c:67: i2c_write(address);
      0030B6 90 04 04         [24]  646 	mov	dptr,#_eeprom_read_address_65536_24
      0030B9 E0               [24]  647 	movx	a,@dptr
      0030BA FE               [12]  648 	mov	r6,a
      0030BB A3               [24]  649 	inc	dptr
      0030BC E0               [24]  650 	movx	a,@dptr
      0030BD 8E 82            [24]  651 	mov	dpl,r6
      0030BF 12 31 22         [24]  652 	lcall	_i2c_write
                                    653 ;	8051_i2c_eeprom.c:69: i2c_start();
      0030C2 12 32 20         [24]  654 	lcall	_i2c_start
                                    655 ;	8051_i2c_eeprom.c:70: i2c_write(EEPROM_ID|READ);
      0030C5 75 82 A1         [24]  656 	mov	dpl,#0xa1
      0030C8 12 31 22         [24]  657 	lcall	_i2c_write
                                    658 ;	8051_i2c_eeprom.c:71: result = i2c_read(0);
      0030CB 90 00 00         [24]  659 	mov	dptr,#0x0000
      0030CE 12 31 9C         [24]  660 	lcall	_i2c_read
      0030D1 AE 82            [24]  661 	mov	r6,dpl
                                    662 ;	8051_i2c_eeprom.c:73: i2c_stop();
      0030D3 C0 06            [24]  663 	push	ar6
      0030D5 12 32 35         [24]  664 	lcall	_i2c_stop
      0030D8 D0 06            [24]  665 	pop	ar6
                                    666 ;	8051_i2c_eeprom.c:74: return result;
      0030DA 7F 00            [12]  667 	mov	r7,#0x00
      0030DC 8E 82            [24]  668 	mov	dpl,r6
      0030DE 8F 83            [24]  669 	mov	dph,r7
                                    670 ;	8051_i2c_eeprom.c:75: }
      0030E0 22               [24]  671 	ret
                                    672 ;------------------------------------------------------------
                                    673 ;Allocation info for local variables in function 'eeprom_write'
                                    674 ;------------------------------------------------------------
                                    675 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                    676 ;address                   Allocated with name '_eeprom_write_address_65536_26'
                                    677 ;------------------------------------------------------------
                                    678 ;	8051_i2c_eeprom.c:77: int eeprom_write(unsigned int address, unsigned char data)
                                    679 ;	-----------------------------------------
                                    680 ;	 function eeprom_write
                                    681 ;	-----------------------------------------
      0030E1                        682 _eeprom_write:
      0030E1 AF 83            [24]  683 	mov	r7,dph
      0030E3 E5 82            [12]  684 	mov	a,dpl
      0030E5 90 04 07         [24]  685 	mov	dptr,#_eeprom_write_address_65536_26
      0030E8 F0               [24]  686 	movx	@dptr,a
      0030E9 EF               [12]  687 	mov	a,r7
      0030EA A3               [24]  688 	inc	dptr
      0030EB F0               [24]  689 	movx	@dptr,a
                                    690 ;	8051_i2c_eeprom.c:79: i2c_start();
      0030EC 12 32 20         [24]  691 	lcall	_i2c_start
                                    692 ;	8051_i2c_eeprom.c:80: i2c_write(EEPROM_ID | WRITE);
      0030EF 75 82 A0         [24]  693 	mov	dpl,#0xa0
      0030F2 12 31 22         [24]  694 	lcall	_i2c_write
                                    695 ;	8051_i2c_eeprom.c:81: i2c_write((unsigned char)(address >> 8));  // Address MSB (if needed)
      0030F5 90 04 07         [24]  696 	mov	dptr,#_eeprom_write_address_65536_26
      0030F8 E0               [24]  697 	movx	a,@dptr
      0030F9 FE               [12]  698 	mov	r6,a
      0030FA A3               [24]  699 	inc	dptr
      0030FB E0               [24]  700 	movx	a,@dptr
      0030FC FF               [12]  701 	mov	r7,a
      0030FD F5 82            [12]  702 	mov	dpl,a
      0030FF C0 07            [24]  703 	push	ar7
      003101 C0 06            [24]  704 	push	ar6
      003103 12 31 22         [24]  705 	lcall	_i2c_write
      003106 D0 06            [24]  706 	pop	ar6
      003108 D0 07            [24]  707 	pop	ar7
                                    708 ;	8051_i2c_eeprom.c:82: i2c_write((unsigned char)address);         // Address LSB
      00310A 8E 82            [24]  709 	mov	dpl,r6
      00310C 12 31 22         [24]  710 	lcall	_i2c_write
                                    711 ;	8051_i2c_eeprom.c:83: i2c_start();
      00310F 12 32 20         [24]  712 	lcall	_i2c_start
                                    713 ;	8051_i2c_eeprom.c:84: i2c_write(data);
      003112 90 04 06         [24]  714 	mov	dptr,#_eeprom_write_PARM_2
      003115 E0               [24]  715 	movx	a,@dptr
      003116 F5 82            [12]  716 	mov	dpl,a
      003118 12 31 22         [24]  717 	lcall	_i2c_write
                                    718 ;	8051_i2c_eeprom.c:85: i2c_stop();
      00311B 12 32 35         [24]  719 	lcall	_i2c_stop
                                    720 ;	8051_i2c_eeprom.c:86: return 0;
      00311E 90 00 00         [24]  721 	mov	dptr,#0x0000
                                    722 ;	8051_i2c_eeprom.c:87: }
      003121 22               [24]  723 	ret
                                    724 ;------------------------------------------------------------
                                    725 ;Allocation info for local variables in function 'i2c_write'
                                    726 ;------------------------------------------------------------
                                    727 ;data                      Allocated with name '_i2c_write_data_65536_28'
                                    728 ;i                         Allocated with name '_i2c_write_i_65536_29'
                                    729 ;------------------------------------------------------------
                                    730 ;	8051_i2c_eeprom.c:90: int i2c_write(unsigned char data)
                                    731 ;	-----------------------------------------
                                    732 ;	 function i2c_write
                                    733 ;	-----------------------------------------
      003122                        734 _i2c_write:
      003122 E5 82            [12]  735 	mov	a,dpl
      003124 90 04 09         [24]  736 	mov	dptr,#_i2c_write_data_65536_28
      003127 F0               [24]  737 	movx	@dptr,a
                                    738 ;	8051_i2c_eeprom.c:94: for(i=0;i<=7;i++)
      003128 7E 00            [12]  739 	mov	r6,#0x00
      00312A 7F 00            [12]  740 	mov	r7,#0x00
      00312C                        741 00104$:
                                    742 ;	8051_i2c_eeprom.c:96: SDA = (data & 0x80) ? 1 : 0;
      00312C 90 04 09         [24]  743 	mov	dptr,#_i2c_write_data_65536_28
      00312F E0               [24]  744 	movx	a,@dptr
      003130 FD               [12]  745 	mov	r5,a
      003131 23               [12]  746 	rl	a
      003132 54 01            [12]  747 	anl	a,#0x01
      003134 24 FF            [12]  748 	add	a,#0xff
      003136 92 94            [24]  749 	mov	_P1_4,c
                                    750 ;	8051_i2c_eeprom.c:97: SCL=1;
                                    751 ;	assignBit
      003138 D2 93            [12]  752 	setb	_P1_3
                                    753 ;	8051_i2c_eeprom.c:98: i2c_delay();
      00313A C0 07            [24]  754 	push	ar7
      00313C C0 06            [24]  755 	push	ar6
      00313E C0 05            [24]  756 	push	ar5
      003140 12 32 42         [24]  757 	lcall	_i2c_delay
      003143 D0 05            [24]  758 	pop	ar5
      003145 D0 06            [24]  759 	pop	ar6
      003147 D0 07            [24]  760 	pop	ar7
                                    761 ;	8051_i2c_eeprom.c:99: SCL=0;
                                    762 ;	assignBit
      003149 C2 93            [12]  763 	clr	_P1_3
                                    764 ;	8051_i2c_eeprom.c:100: data = data << 1;
      00314B ED               [12]  765 	mov	a,r5
      00314C 2D               [12]  766 	add	a,r5
      00314D 90 04 09         [24]  767 	mov	dptr,#_i2c_write_data_65536_28
      003150 F0               [24]  768 	movx	@dptr,a
                                    769 ;	8051_i2c_eeprom.c:94: for(i=0;i<=7;i++)
      003151 0E               [12]  770 	inc	r6
      003152 BE 00 01         [24]  771 	cjne	r6,#0x00,00121$
      003155 0F               [12]  772 	inc	r7
      003156                        773 00121$:
      003156 C3               [12]  774 	clr	c
      003157 74 07            [12]  775 	mov	a,#0x07
      003159 9E               [12]  776 	subb	a,r6
      00315A E4               [12]  777 	clr	a
      00315B 9F               [12]  778 	subb	a,r7
      00315C 50 CE            [24]  779 	jnc	00104$
                                    780 ;	8051_i2c_eeprom.c:104: SDA = 1;            // Release SDA for slave
                                    781 ;	assignBit
      00315E D2 94            [12]  782 	setb	_P1_4
                                    783 ;	8051_i2c_eeprom.c:105: SCL = 1;            // 9th clock pulse for ACK
                                    784 ;	assignBit
      003160 D2 93            [12]  785 	setb	_P1_3
                                    786 ;	8051_i2c_eeprom.c:106: i2c_delay();
      003162 12 32 42         [24]  787 	lcall	_i2c_delay
                                    788 ;	8051_i2c_eeprom.c:107: if(SDA == 1)        // If SDA is still high, no ACK received
      003165 30 94 19         [24]  789 	jnb	_P1_4,00103$
                                    790 ;	8051_i2c_eeprom.c:110: printf("ACK DID NOT ARRIVE\n\r");
      003168 74 09            [12]  791 	mov	a,#___str_0
      00316A C0 E0            [24]  792 	push	acc
      00316C 74 3D            [12]  793 	mov	a,#(___str_0 >> 8)
      00316E C0 E0            [24]  794 	push	acc
      003170 74 80            [12]  795 	mov	a,#0x80
      003172 C0 E0            [24]  796 	push	acc
      003174 12 32 A7         [24]  797 	lcall	_printf
      003177 15 81            [12]  798 	dec	sp
      003179 15 81            [12]  799 	dec	sp
      00317B 15 81            [12]  800 	dec	sp
                                    801 ;	8051_i2c_eeprom.c:111: return 0;       // Error
      00317D 90 00 00         [24]  802 	mov	dptr,#0x0000
      003180 22               [24]  803 	ret
      003181                        804 00103$:
                                    805 ;	8051_i2c_eeprom.c:113: SCL = 0;
                                    806 ;	assignBit
      003181 C2 93            [12]  807 	clr	_P1_3
                                    808 ;	8051_i2c_eeprom.c:114: printf("Transmission successfull\n\r");
      003183 74 1E            [12]  809 	mov	a,#___str_1
      003185 C0 E0            [24]  810 	push	acc
      003187 74 3D            [12]  811 	mov	a,#(___str_1 >> 8)
      003189 C0 E0            [24]  812 	push	acc
      00318B 74 80            [12]  813 	mov	a,#0x80
      00318D C0 E0            [24]  814 	push	acc
      00318F 12 32 A7         [24]  815 	lcall	_printf
      003192 15 81            [12]  816 	dec	sp
      003194 15 81            [12]  817 	dec	sp
      003196 15 81            [12]  818 	dec	sp
                                    819 ;	8051_i2c_eeprom.c:115: return 1;           // Success
      003198 90 00 01         [24]  820 	mov	dptr,#0x0001
                                    821 ;	8051_i2c_eeprom.c:117: }
      00319B 22               [24]  822 	ret
                                    823 ;------------------------------------------------------------
                                    824 ;Allocation info for local variables in function 'i2c_read'
                                    825 ;------------------------------------------------------------
                                    826 ;ACK                       Allocated with name '_i2c_read_ACK_65536_33'
                                    827 ;buff                      Allocated with name '_i2c_read_buff_65536_34'
                                    828 ;i                         Allocated with name '_i2c_read_i_131072_35'
                                    829 ;------------------------------------------------------------
                                    830 ;	8051_i2c_eeprom.c:118: int i2c_read(int ACK)
                                    831 ;	-----------------------------------------
                                    832 ;	 function i2c_read
                                    833 ;	-----------------------------------------
      00319C                        834 _i2c_read:
      00319C AF 83            [24]  835 	mov	r7,dph
      00319E E5 82            [12]  836 	mov	a,dpl
      0031A0 90 04 0A         [24]  837 	mov	dptr,#_i2c_read_ACK_65536_33
      0031A3 F0               [24]  838 	movx	@dptr,a
      0031A4 EF               [12]  839 	mov	a,r7
      0031A5 A3               [24]  840 	inc	dptr
      0031A6 F0               [24]  841 	movx	@dptr,a
                                    842 ;	8051_i2c_eeprom.c:120: unsigned char buff=0;
      0031A7 90 04 0C         [24]  843 	mov	dptr,#_i2c_read_buff_65536_34
      0031AA E4               [12]  844 	clr	a
      0031AB F0               [24]  845 	movx	@dptr,a
                                    846 ;	8051_i2c_eeprom.c:122: for(int i=0;i<8;i++)
      0031AC 7E 00            [12]  847 	mov	r6,#0x00
      0031AE 7F 00            [12]  848 	mov	r7,#0x00
      0031B0                        849 00105$:
      0031B0 C3               [12]  850 	clr	c
      0031B1 EE               [12]  851 	mov	a,r6
      0031B2 94 08            [12]  852 	subb	a,#0x08
      0031B4 EF               [12]  853 	mov	a,r7
      0031B5 64 80            [12]  854 	xrl	a,#0x80
      0031B7 94 80            [12]  855 	subb	a,#0x80
      0031B9 50 41            [24]  856 	jnc	00103$
                                    857 ;	8051_i2c_eeprom.c:124: SDA = 1;
                                    858 ;	assignBit
      0031BB D2 94            [12]  859 	setb	_P1_4
                                    860 ;	8051_i2c_eeprom.c:125: SCL = 1;
                                    861 ;	assignBit
      0031BD D2 93            [12]  862 	setb	_P1_3
                                    863 ;	8051_i2c_eeprom.c:126: i2c_delay();
      0031BF C0 07            [24]  864 	push	ar7
      0031C1 C0 06            [24]  865 	push	ar6
      0031C3 12 32 42         [24]  866 	lcall	_i2c_delay
      0031C6 D0 06            [24]  867 	pop	ar6
      0031C8 D0 07            [24]  868 	pop	ar7
                                    869 ;	8051_i2c_eeprom.c:127: buff = buff << 1;
      0031CA 90 04 0C         [24]  870 	mov	dptr,#_i2c_read_buff_65536_34
      0031CD E0               [24]  871 	movx	a,@dptr
      0031CE 25 E0            [12]  872 	add	a,acc
      0031D0 F0               [24]  873 	movx	@dptr,a
                                    874 ;	8051_i2c_eeprom.c:128: if(SDA) buff |=0x80>>i;
      0031D1 30 94 1F         [24]  875 	jnb	_P1_4,00102$
      0031D4 8E F0            [24]  876 	mov	b,r6
      0031D6 05 F0            [12]  877 	inc	b
      0031D8 7C 80            [12]  878 	mov	r4,#0x80
      0031DA E4               [12]  879 	clr	a
      0031DB FD               [12]  880 	mov	r5,a
      0031DC 33               [12]  881 	rlc	a
      0031DD 92 D2            [24]  882 	mov	ov,c
      0031DF 80 08            [24]  883 	sjmp	00125$
      0031E1                        884 00124$:
      0031E1 A2 D2            [12]  885 	mov	c,ov
      0031E3 ED               [12]  886 	mov	a,r5
      0031E4 13               [12]  887 	rrc	a
      0031E5 FD               [12]  888 	mov	r5,a
      0031E6 EC               [12]  889 	mov	a,r4
      0031E7 13               [12]  890 	rrc	a
      0031E8 FC               [12]  891 	mov	r4,a
      0031E9                        892 00125$:
      0031E9 D5 F0 F5         [24]  893 	djnz	b,00124$
      0031EC 90 04 0C         [24]  894 	mov	dptr,#_i2c_read_buff_65536_34
      0031EF E0               [24]  895 	movx	a,@dptr
      0031F0 FB               [12]  896 	mov	r3,a
      0031F1 4C               [12]  897 	orl	a,r4
      0031F2 F0               [24]  898 	movx	@dptr,a
      0031F3                        899 00102$:
                                    900 ;	8051_i2c_eeprom.c:129: SCL=0;
                                    901 ;	assignBit
      0031F3 C2 93            [12]  902 	clr	_P1_3
                                    903 ;	8051_i2c_eeprom.c:122: for(int i=0;i<8;i++)
      0031F5 0E               [12]  904 	inc	r6
      0031F6 BE 00 B7         [24]  905 	cjne	r6,#0x00,00105$
      0031F9 0F               [12]  906 	inc	r7
      0031FA 80 B4            [24]  907 	sjmp	00105$
      0031FC                        908 00103$:
                                    909 ;	8051_i2c_eeprom.c:133: SDA = !ACK;         // ACK = 0, NACK = 1
      0031FC 90 04 0A         [24]  910 	mov	dptr,#_i2c_read_ACK_65536_33
      0031FF E0               [24]  911 	movx	a,@dptr
      003200 FE               [12]  912 	mov	r6,a
      003201 A3               [24]  913 	inc	dptr
      003202 E0               [24]  914 	movx	a,@dptr
      003203 4E               [12]  915 	orl	a,r6
      003204 B4 01 00         [24]  916 	cjne	a,#0x01,00127$
      003207                        917 00127$:
      003207 E4               [12]  918 	clr	a
      003208 33               [12]  919 	rlc	a
      003209 24 FF            [12]  920 	add	a,#0xff
      00320B 92 94            [24]  921 	mov	_P1_4,c
                                    922 ;	8051_i2c_eeprom.c:134: SCL = 1;
                                    923 ;	assignBit
      00320D D2 93            [12]  924 	setb	_P1_3
                                    925 ;	8051_i2c_eeprom.c:135: i2c_delay();
      00320F 12 32 42         [24]  926 	lcall	_i2c_delay
                                    927 ;	8051_i2c_eeprom.c:136: SCL = 0;
                                    928 ;	assignBit
      003212 C2 93            [12]  929 	clr	_P1_3
                                    930 ;	8051_i2c_eeprom.c:139: return buff;
      003214 90 04 0C         [24]  931 	mov	dptr,#_i2c_read_buff_65536_34
      003217 E0               [24]  932 	movx	a,@dptr
      003218 FF               [12]  933 	mov	r7,a
      003219 7E 00            [12]  934 	mov	r6,#0x00
      00321B 8F 82            [24]  935 	mov	dpl,r7
      00321D 8E 83            [24]  936 	mov	dph,r6
                                    937 ;	8051_i2c_eeprom.c:140: }
      00321F 22               [24]  938 	ret
                                    939 ;------------------------------------------------------------
                                    940 ;Allocation info for local variables in function 'i2c_start'
                                    941 ;------------------------------------------------------------
                                    942 ;	8051_i2c_eeprom.c:141: void i2c_start(void)
                                    943 ;	-----------------------------------------
                                    944 ;	 function i2c_start
                                    945 ;	-----------------------------------------
      003220                        946 _i2c_start:
                                    947 ;	8051_i2c_eeprom.c:143: i2c_delay();
      003220 12 32 42         [24]  948 	lcall	_i2c_delay
                                    949 ;	8051_i2c_eeprom.c:144: SDA = 1;
                                    950 ;	assignBit
      003223 D2 94            [12]  951 	setb	_P1_4
                                    952 ;	8051_i2c_eeprom.c:145: i2c_delay();
      003225 12 32 42         [24]  953 	lcall	_i2c_delay
                                    954 ;	8051_i2c_eeprom.c:146: SCL = 1;
                                    955 ;	assignBit
      003228 D2 93            [12]  956 	setb	_P1_3
                                    957 ;	8051_i2c_eeprom.c:147: i2c_delay();
      00322A 12 32 42         [24]  958 	lcall	_i2c_delay
                                    959 ;	8051_i2c_eeprom.c:148: SDA = 0;
                                    960 ;	assignBit
      00322D C2 94            [12]  961 	clr	_P1_4
                                    962 ;	8051_i2c_eeprom.c:149: i2c_delay();
      00322F 12 32 42         [24]  963 	lcall	_i2c_delay
                                    964 ;	8051_i2c_eeprom.c:150: SCL = 0;
                                    965 ;	assignBit
      003232 C2 93            [12]  966 	clr	_P1_3
                                    967 ;	8051_i2c_eeprom.c:151: }
      003234 22               [24]  968 	ret
                                    969 ;------------------------------------------------------------
                                    970 ;Allocation info for local variables in function 'i2c_stop'
                                    971 ;------------------------------------------------------------
                                    972 ;	8051_i2c_eeprom.c:153: void i2c_stop(void)
                                    973 ;	-----------------------------------------
                                    974 ;	 function i2c_stop
                                    975 ;	-----------------------------------------
      003235                        976 _i2c_stop:
                                    977 ;	8051_i2c_eeprom.c:155: SDA = 0;
                                    978 ;	assignBit
      003235 C2 94            [12]  979 	clr	_P1_4
                                    980 ;	8051_i2c_eeprom.c:156: i2c_delay();
      003237 12 32 42         [24]  981 	lcall	_i2c_delay
                                    982 ;	8051_i2c_eeprom.c:157: SCL = 1;
                                    983 ;	assignBit
      00323A D2 93            [12]  984 	setb	_P1_3
                                    985 ;	8051_i2c_eeprom.c:158: i2c_delay();
      00323C 12 32 42         [24]  986 	lcall	_i2c_delay
                                    987 ;	8051_i2c_eeprom.c:159: SDA = 1; 
                                    988 ;	assignBit
      00323F D2 94            [12]  989 	setb	_P1_4
                                    990 ;	8051_i2c_eeprom.c:160: }
      003241 22               [24]  991 	ret
                                    992 ;------------------------------------------------------------
                                    993 ;Allocation info for local variables in function 'i2c_delay'
                                    994 ;------------------------------------------------------------
                                    995 ;i                         Allocated with name '_i2c_delay_i_131072_42'
                                    996 ;------------------------------------------------------------
                                    997 ;	8051_i2c_eeprom.c:162: void i2c_delay() 
                                    998 ;	-----------------------------------------
                                    999 ;	 function i2c_delay
                                   1000 ;	-----------------------------------------
      003242                       1001 _i2c_delay:
                                   1002 ;	8051_i2c_eeprom.c:170: for(int i = 0; i<500; i++);
      003242 7E 00            [12] 1003 	mov	r6,#0x00
      003244 7F 00            [12] 1004 	mov	r7,#0x00
      003246                       1005 00103$:
      003246 C3               [12] 1006 	clr	c
      003247 EE               [12] 1007 	mov	a,r6
      003248 94 F4            [12] 1008 	subb	a,#0xf4
      00324A EF               [12] 1009 	mov	a,r7
      00324B 64 80            [12] 1010 	xrl	a,#0x80
      00324D 94 81            [12] 1011 	subb	a,#0x81
      00324F 50 07            [24] 1012 	jnc	00105$
      003251 0E               [12] 1013 	inc	r6
      003252 BE 00 F1         [24] 1014 	cjne	r6,#0x00,00103$
      003255 0F               [12] 1015 	inc	r7
      003256 80 EE            [24] 1016 	sjmp	00103$
      003258                       1017 00105$:
                                   1018 ;	8051_i2c_eeprom.c:171: }
      003258 22               [24] 1019 	ret
                                   1020 	.area CSEG    (CODE)
                                   1021 	.area CONST   (CODE)
                                   1022 	.area CONST   (CODE)
      003D09                       1023 ___str_0:
      003D09 41 43 4B 20 44 49 44  1024 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      003D1B 0A                    1025 	.db 0x0a
      003D1C 0D                    1026 	.db 0x0d
      003D1D 00                    1027 	.db 0x00
                                   1028 	.area CSEG    (CODE)
                                   1029 	.area CONST   (CODE)
      003D1E                       1030 ___str_1:
      003D1E 54 72 61 6E 73 6D 69  1031 	.ascii "Transmission successfull"
             73 73 69 6F 6E 20 73
             75 63 63 65 73 73 66
             75 6C 6C
      003D36 0A                    1032 	.db 0x0a
      003D37 0D                    1033 	.db 0x0d
      003D38 00                    1034 	.db 0x00
                                   1035 	.area CSEG    (CODE)
                                   1036 	.area XINIT   (CODE)
                                   1037 	.area CABS    (ABS,CODE)
