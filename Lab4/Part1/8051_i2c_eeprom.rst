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
                                    212 	.globl _eeprom_read
                                    213 	.globl _eeprom_write
                                    214 	.globl _i2c_write
                                    215 	.globl _i2c_read
                                    216 	.globl _i2c_start
                                    217 	.globl _i2c_stop
                                    218 	.globl _i2c_delay
                                    219 ;--------------------------------------------------------
                                    220 ; special function registers
                                    221 ;--------------------------------------------------------
                                    222 	.area RSEG    (ABS,DATA)
      000000                        223 	.org 0x0000
                           000080   224 _P0	=	0x0080
                           000081   225 _SP	=	0x0081
                           000082   226 _DPL	=	0x0082
                           000083   227 _DPH	=	0x0083
                           000087   228 _PCON	=	0x0087
                           000088   229 _TCON	=	0x0088
                           000089   230 _TMOD	=	0x0089
                           00008A   231 _TL0	=	0x008a
                           00008B   232 _TL1	=	0x008b
                           00008C   233 _TH0	=	0x008c
                           00008D   234 _TH1	=	0x008d
                           000090   235 _P1	=	0x0090
                           000098   236 _SCON	=	0x0098
                           000099   237 _SBUF	=	0x0099
                           0000A0   238 _P2	=	0x00a0
                           0000A8   239 _IE	=	0x00a8
                           0000B0   240 _P3	=	0x00b0
                           0000B8   241 _IP	=	0x00b8
                           0000D0   242 _PSW	=	0x00d0
                           0000E0   243 _ACC	=	0x00e0
                           0000F0   244 _B	=	0x00f0
                           0000C8   245 _T2CON	=	0x00c8
                           0000CA   246 _RCAP2L	=	0x00ca
                           0000CB   247 _RCAP2H	=	0x00cb
                           0000CC   248 _TL2	=	0x00cc
                           0000CD   249 _TH2	=	0x00cd
                           00008E   250 _AUXR	=	0x008e
                           0000A2   251 _AUXR1	=	0x00a2
                           000097   252 _CKRL	=	0x0097
                           00008F   253 _CKCON0	=	0x008f
                           0000AF   254 _CKCON1	=	0x00af
                           0000FA   255 _CCAP0H	=	0x00fa
                           0000FB   256 _CCAP1H	=	0x00fb
                           0000FC   257 _CCAP2H	=	0x00fc
                           0000FD   258 _CCAP3H	=	0x00fd
                           0000FE   259 _CCAP4H	=	0x00fe
                           0000EA   260 _CCAP0L	=	0x00ea
                           0000EB   261 _CCAP1L	=	0x00eb
                           0000EC   262 _CCAP2L	=	0x00ec
                           0000ED   263 _CCAP3L	=	0x00ed
                           0000EE   264 _CCAP4L	=	0x00ee
                           0000DA   265 _CCAPM0	=	0x00da
                           0000DB   266 _CCAPM1	=	0x00db
                           0000DC   267 _CCAPM2	=	0x00dc
                           0000DD   268 _CCAPM3	=	0x00dd
                           0000DE   269 _CCAPM4	=	0x00de
                           0000D8   270 _CCON	=	0x00d8
                           0000F9   271 _CH	=	0x00f9
                           0000E9   272 _CL	=	0x00e9
                           0000D9   273 _CMOD	=	0x00d9
                           0000A8   274 _IEN0	=	0x00a8
                           0000B1   275 _IEN1	=	0x00b1
                           0000B8   276 _IPL0	=	0x00b8
                           0000B7   277 _IPH0	=	0x00b7
                           0000B2   278 _IPL1	=	0x00b2
                           0000B3   279 _IPH1	=	0x00b3
                           0000C0   280 _P4	=	0x00c0
                           0000E8   281 _P5	=	0x00e8
                           0000A6   282 _WDTRST	=	0x00a6
                           0000A7   283 _WDTPRG	=	0x00a7
                           0000A9   284 _SADDR	=	0x00a9
                           0000B9   285 _SADEN	=	0x00b9
                           0000C3   286 _SPCON	=	0x00c3
                           0000C4   287 _SPSTA	=	0x00c4
                           0000C5   288 _SPDAT	=	0x00c5
                           0000C9   289 _T2MOD	=	0x00c9
                           00009B   290 _BDRCON	=	0x009b
                           00009A   291 _BRL	=	0x009a
                           00009C   292 _KBLS	=	0x009c
                           00009D   293 _KBE	=	0x009d
                           00009E   294 _KBF	=	0x009e
                           0000D2   295 _EECON	=	0x00d2
                                    296 ;--------------------------------------------------------
                                    297 ; special function bits
                                    298 ;--------------------------------------------------------
                                    299 	.area RSEG    (ABS,DATA)
      000000                        300 	.org 0x0000
                           000080   301 _P0_0	=	0x0080
                           000081   302 _P0_1	=	0x0081
                           000082   303 _P0_2	=	0x0082
                           000083   304 _P0_3	=	0x0083
                           000084   305 _P0_4	=	0x0084
                           000085   306 _P0_5	=	0x0085
                           000086   307 _P0_6	=	0x0086
                           000087   308 _P0_7	=	0x0087
                           000088   309 _IT0	=	0x0088
                           000089   310 _IE0	=	0x0089
                           00008A   311 _IT1	=	0x008a
                           00008B   312 _IE1	=	0x008b
                           00008C   313 _TR0	=	0x008c
                           00008D   314 _TF0	=	0x008d
                           00008E   315 _TR1	=	0x008e
                           00008F   316 _TF1	=	0x008f
                           000090   317 _P1_0	=	0x0090
                           000091   318 _P1_1	=	0x0091
                           000092   319 _P1_2	=	0x0092
                           000093   320 _P1_3	=	0x0093
                           000094   321 _P1_4	=	0x0094
                           000095   322 _P1_5	=	0x0095
                           000096   323 _P1_6	=	0x0096
                           000097   324 _P1_7	=	0x0097
                           000098   325 _RI	=	0x0098
                           000099   326 _TI	=	0x0099
                           00009A   327 _RB8	=	0x009a
                           00009B   328 _TB8	=	0x009b
                           00009C   329 _REN	=	0x009c
                           00009D   330 _SM2	=	0x009d
                           00009E   331 _SM1	=	0x009e
                           00009F   332 _SM0	=	0x009f
                           0000A0   333 _P2_0	=	0x00a0
                           0000A1   334 _P2_1	=	0x00a1
                           0000A2   335 _P2_2	=	0x00a2
                           0000A3   336 _P2_3	=	0x00a3
                           0000A4   337 _P2_4	=	0x00a4
                           0000A5   338 _P2_5	=	0x00a5
                           0000A6   339 _P2_6	=	0x00a6
                           0000A7   340 _P2_7	=	0x00a7
                           0000A8   341 _EX0	=	0x00a8
                           0000A9   342 _ET0	=	0x00a9
                           0000AA   343 _EX1	=	0x00aa
                           0000AB   344 _ET1	=	0x00ab
                           0000AC   345 _ES	=	0x00ac
                           0000AF   346 _EA	=	0x00af
                           0000B0   347 _P3_0	=	0x00b0
                           0000B1   348 _P3_1	=	0x00b1
                           0000B2   349 _P3_2	=	0x00b2
                           0000B3   350 _P3_3	=	0x00b3
                           0000B4   351 _P3_4	=	0x00b4
                           0000B5   352 _P3_5	=	0x00b5
                           0000B6   353 _P3_6	=	0x00b6
                           0000B7   354 _P3_7	=	0x00b7
                           0000B0   355 _RXD	=	0x00b0
                           0000B1   356 _TXD	=	0x00b1
                           0000B2   357 _INT0	=	0x00b2
                           0000B3   358 _INT1	=	0x00b3
                           0000B4   359 _T0	=	0x00b4
                           0000B5   360 _T1	=	0x00b5
                           0000B6   361 _WR	=	0x00b6
                           0000B7   362 _RD	=	0x00b7
                           0000B8   363 _PX0	=	0x00b8
                           0000B9   364 _PT0	=	0x00b9
                           0000BA   365 _PX1	=	0x00ba
                           0000BB   366 _PT1	=	0x00bb
                           0000BC   367 _PS	=	0x00bc
                           0000D0   368 _P	=	0x00d0
                           0000D1   369 _F1	=	0x00d1
                           0000D2   370 _OV	=	0x00d2
                           0000D3   371 _RS0	=	0x00d3
                           0000D4   372 _RS1	=	0x00d4
                           0000D5   373 _F0	=	0x00d5
                           0000D6   374 _AC	=	0x00d6
                           0000D7   375 _CY	=	0x00d7
                           0000AD   376 _ET2	=	0x00ad
                           0000BD   377 _PT2	=	0x00bd
                           0000C8   378 _T2CON_0	=	0x00c8
                           0000C9   379 _T2CON_1	=	0x00c9
                           0000CA   380 _T2CON_2	=	0x00ca
                           0000CB   381 _T2CON_3	=	0x00cb
                           0000CC   382 _T2CON_4	=	0x00cc
                           0000CD   383 _T2CON_5	=	0x00cd
                           0000CE   384 _T2CON_6	=	0x00ce
                           0000CF   385 _T2CON_7	=	0x00cf
                           0000C8   386 _CP_RL2	=	0x00c8
                           0000C9   387 _C_T2	=	0x00c9
                           0000CA   388 _TR2	=	0x00ca
                           0000CB   389 _EXEN2	=	0x00cb
                           0000CC   390 _TCLK	=	0x00cc
                           0000CD   391 _RCLK	=	0x00cd
                           0000CE   392 _EXF2	=	0x00ce
                           0000CF   393 _TF2	=	0x00cf
                           0000DF   394 _CF	=	0x00df
                           0000DE   395 _CR	=	0x00de
                           0000DC   396 _CCF4	=	0x00dc
                           0000DB   397 _CCF3	=	0x00db
                           0000DA   398 _CCF2	=	0x00da
                           0000D9   399 _CCF1	=	0x00d9
                           0000D8   400 _CCF0	=	0x00d8
                           0000AE   401 _EC	=	0x00ae
                           0000BE   402 _PPCL	=	0x00be
                           0000BD   403 _PT2L	=	0x00bd
                           0000BC   404 _PSL	=	0x00bc
                           0000BB   405 _PT1L	=	0x00bb
                           0000BA   406 _PX1L	=	0x00ba
                           0000B9   407 _PT0L	=	0x00b9
                           0000B8   408 _PX0L	=	0x00b8
                           0000C0   409 _P4_0	=	0x00c0
                           0000C1   410 _P4_1	=	0x00c1
                           0000C2   411 _P4_2	=	0x00c2
                           0000C3   412 _P4_3	=	0x00c3
                           0000C4   413 _P4_4	=	0x00c4
                           0000C5   414 _P4_5	=	0x00c5
                           0000C6   415 _P4_6	=	0x00c6
                           0000C7   416 _P4_7	=	0x00c7
                           0000E8   417 _P5_0	=	0x00e8
                           0000E9   418 _P5_1	=	0x00e9
                           0000EA   419 _P5_2	=	0x00ea
                           0000EB   420 _P5_3	=	0x00eb
                           0000EC   421 _P5_4	=	0x00ec
                           0000ED   422 _P5_5	=	0x00ed
                           0000EE   423 _P5_6	=	0x00ee
                           0000EF   424 _P5_7	=	0x00ef
                                    425 ;--------------------------------------------------------
                                    426 ; overlayable register banks
                                    427 ;--------------------------------------------------------
                                    428 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        429 	.ds 8
                                    430 ;--------------------------------------------------------
                                    431 ; internal ram data
                                    432 ;--------------------------------------------------------
                                    433 	.area DSEG    (DATA)
                                    434 ;--------------------------------------------------------
                                    435 ; overlayable items in internal ram 
                                    436 ;--------------------------------------------------------
                                    437 ;--------------------------------------------------------
                                    438 ; Stack segment in internal ram 
                                    439 ;--------------------------------------------------------
                                    440 	.area	SSEG
      000014                        441 __start__stack:
      000014                        442 	.ds	1
                                    443 
                                    444 ;--------------------------------------------------------
                                    445 ; indirectly addressable internal ram data
                                    446 ;--------------------------------------------------------
                                    447 	.area ISEG    (DATA)
                                    448 ;--------------------------------------------------------
                                    449 ; absolute internal ram data
                                    450 ;--------------------------------------------------------
                                    451 	.area IABS    (ABS,DATA)
                                    452 	.area IABS    (ABS,DATA)
                                    453 ;--------------------------------------------------------
                                    454 ; bit data
                                    455 ;--------------------------------------------------------
                                    456 	.area BSEG    (BIT)
                                    457 ;--------------------------------------------------------
                                    458 ; paged external ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area PSEG    (PAG,XDATA)
                                    461 ;--------------------------------------------------------
                                    462 ; external ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area XSEG    (XDATA)
      000400                        465 _putchar_charToSend_65536_18:
      000400                        466 	.ds 2
      000402                        467 _eeprom_read_address_65536_25:
      000402                        468 	.ds 2
      000404                        469 _eeprom_write_PARM_2:
      000404                        470 	.ds 1
      000405                        471 _eeprom_write_address_65536_27:
      000405                        472 	.ds 1
      000406                        473 _i2c_write_data_65536_29:
      000406                        474 	.ds 1
      000407                        475 _i2c_read_buff_65536_33:
      000407                        476 	.ds 1
                                    477 ;--------------------------------------------------------
                                    478 ; absolute external ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area XABS    (ABS,XDATA)
                                    481 ;--------------------------------------------------------
                                    482 ; external initialized ram data
                                    483 ;--------------------------------------------------------
                                    484 	.area XISEG   (XDATA)
                                    485 	.area HOME    (CODE)
                                    486 	.area GSINIT0 (CODE)
                                    487 	.area GSINIT1 (CODE)
                                    488 	.area GSINIT2 (CODE)
                                    489 	.area GSINIT3 (CODE)
                                    490 	.area GSINIT4 (CODE)
                                    491 	.area GSINIT5 (CODE)
                                    492 	.area GSINIT  (CODE)
                                    493 	.area GSFINAL (CODE)
                                    494 	.area CSEG    (CODE)
                                    495 ;--------------------------------------------------------
                                    496 ; interrupt vector 
                                    497 ;--------------------------------------------------------
                                    498 	.area HOME    (CODE)
      003000                        499 __interrupt_vect:
      003000 02 30 06         [24]  500 	ljmp	__sdcc_gsinit_startup
                                    501 ;--------------------------------------------------------
                                    502 ; global & static initialisations
                                    503 ;--------------------------------------------------------
                                    504 	.area HOME    (CODE)
                                    505 	.area GSINIT  (CODE)
                                    506 	.area GSFINAL (CODE)
                                    507 	.area GSINIT  (CODE)
                                    508 	.globl __sdcc_gsinit_startup
                                    509 	.globl __sdcc_program_startup
                                    510 	.globl __start__stack
                                    511 	.globl __mcs51_genXINIT
                                    512 	.globl __mcs51_genXRAMCLEAR
                                    513 	.globl __mcs51_genRAMCLEAR
                                    514 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  515 	ljmp	__sdcc_program_startup
                                    516 ;--------------------------------------------------------
                                    517 ; Home
                                    518 ;--------------------------------------------------------
                                    519 	.area HOME    (CODE)
                                    520 	.area HOME    (CODE)
      003003                        521 __sdcc_program_startup:
      003003 02 30 8F         [24]  522 	ljmp	_main
                                    523 ;	return from main will return to caller
                                    524 ;--------------------------------------------------------
                                    525 ; code
                                    526 ;--------------------------------------------------------
                                    527 	.area CSEG    (CODE)
                                    528 ;------------------------------------------------------------
                                    529 ;Allocation info for local variables in function 'putchar'
                                    530 ;------------------------------------------------------------
                                    531 ;charToSend                Allocated with name '_putchar_charToSend_65536_18'
                                    532 ;------------------------------------------------------------
                                    533 ;	8051_i2c_eeprom.c:21: int putchar(int charToSend) {
                                    534 ;	-----------------------------------------
                                    535 ;	 function putchar
                                    536 ;	-----------------------------------------
      003062                        537 _putchar:
                           000007   538 	ar7 = 0x07
                           000006   539 	ar6 = 0x06
                           000005   540 	ar5 = 0x05
                           000004   541 	ar4 = 0x04
                           000003   542 	ar3 = 0x03
                           000002   543 	ar2 = 0x02
                           000001   544 	ar1 = 0x01
                           000000   545 	ar0 = 0x00
      003062 AF 83            [24]  546 	mov	r7,dph
      003064 E5 82            [12]  547 	mov	a,dpl
      003066 90 04 00         [24]  548 	mov	dptr,#_putchar_charToSend_65536_18
      003069 F0               [24]  549 	movx	@dptr,a
      00306A EF               [12]  550 	mov	a,r7
      00306B A3               [24]  551 	inc	dptr
      00306C F0               [24]  552 	movx	@dptr,a
                                    553 ;	8051_i2c_eeprom.c:22: SBUF = charToSend;  // Send character to serial buffer
      00306D 90 04 00         [24]  554 	mov	dptr,#_putchar_charToSend_65536_18
      003070 E0               [24]  555 	movx	a,@dptr
      003071 FE               [12]  556 	mov	r6,a
      003072 A3               [24]  557 	inc	dptr
      003073 E0               [24]  558 	movx	a,@dptr
      003074 FF               [12]  559 	mov	r7,a
      003075 8E 99            [24]  560 	mov	_SBUF,r6
                                    561 ;	8051_i2c_eeprom.c:23: while (!TI);        // Wait for transmission to complete
      003077                        562 00101$:
                                    563 ;	8051_i2c_eeprom.c:24: TI = 0;            // Clear transmission interrupt flag
                                    564 ;	assignBit
      003077 10 99 02         [24]  565 	jbc	_TI,00114$
      00307A 80 FB            [24]  566 	sjmp	00101$
      00307C                        567 00114$:
                                    568 ;	8051_i2c_eeprom.c:25: return charToSend;
      00307C 8E 82            [24]  569 	mov	dpl,r6
      00307E 8F 83            [24]  570 	mov	dph,r7
                                    571 ;	8051_i2c_eeprom.c:26: }
      003080 22               [24]  572 	ret
                                    573 ;------------------------------------------------------------
                                    574 ;Allocation info for local variables in function 'getchar'
                                    575 ;------------------------------------------------------------
                                    576 ;	8051_i2c_eeprom.c:28: int getchar(void) {
                                    577 ;	-----------------------------------------
                                    578 ;	 function getchar
                                    579 ;	-----------------------------------------
      003081                        580 _getchar:
                                    581 ;	8051_i2c_eeprom.c:29: while (!RI);        // Wait for reception to complete
      003081                        582 00101$:
                                    583 ;	8051_i2c_eeprom.c:30: RI = 0;            // Clear reception interrupt flag
                                    584 ;	assignBit
      003081 10 98 02         [24]  585 	jbc	_RI,00114$
      003084 80 FB            [24]  586 	sjmp	00101$
      003086                        587 00114$:
                                    588 ;	8051_i2c_eeprom.c:31: return SBUF;       // Return received character
      003086 AE 99            [24]  589 	mov	r6,_SBUF
      003088 7F 00            [12]  590 	mov	r7,#0x00
      00308A 8E 82            [24]  591 	mov	dpl,r6
      00308C 8F 83            [24]  592 	mov	dph,r7
                                    593 ;	8051_i2c_eeprom.c:32: }
      00308E 22               [24]  594 	ret
                                    595 ;------------------------------------------------------------
                                    596 ;Allocation info for local variables in function 'main'
                                    597 ;------------------------------------------------------------
                                    598 ;read_value_int            Allocated with name '_main_read_value_int_65537_23'
                                    599 ;read_value_char           Allocated with name '_main_read_value_char_65537_23'
                                    600 ;read_value                Allocated with name '_main_read_value_65538_24'
                                    601 ;------------------------------------------------------------
                                    602 ;	8051_i2c_eeprom.c:34: int main()
                                    603 ;	-----------------------------------------
                                    604 ;	 function main
                                    605 ;	-----------------------------------------
      00308F                        606 _main:
                                    607 ;	8051_i2c_eeprom.c:36: eeprom_write(0x48, 32);
      00308F 90 04 04         [24]  608 	mov	dptr,#_eeprom_write_PARM_2
      003092 74 20            [12]  609 	mov	a,#0x20
      003094 F0               [24]  610 	movx	@dptr,a
      003095 75 82 48         [24]  611 	mov	dpl,#0x48
      003098 12 31 58         [24]  612 	lcall	_eeprom_write
                                    613 ;	8051_i2c_eeprom.c:37: int read_value_int = eeprom_read(0x48);
      00309B 90 00 48         [24]  614 	mov	dptr,#0x0048
      00309E 12 31 1C         [24]  615 	lcall	_eeprom_read
      0030A1 AE 82            [24]  616 	mov	r6,dpl
      0030A3 AF 83            [24]  617 	mov	r7,dph
                                    618 ;	8051_i2c_eeprom.c:38: unsigned char read_value_char = eeprom_read(0x48);
      0030A5 90 00 48         [24]  619 	mov	dptr,#0x0048
      0030A8 C0 07            [24]  620 	push	ar7
      0030AA C0 06            [24]  621 	push	ar6
      0030AC 12 31 1C         [24]  622 	lcall	_eeprom_read
      0030AF AC 82            [24]  623 	mov	r4,dpl
      0030B1 D0 06            [24]  624 	pop	ar6
      0030B3 D0 07            [24]  625 	pop	ar7
                                    626 ;	8051_i2c_eeprom.c:39: printf("address 0x48 read_value_int %d\n\r", read_value_int);
      0030B5 C0 04            [24]  627 	push	ar4
      0030B7 C0 06            [24]  628 	push	ar6
      0030B9 C0 07            [24]  629 	push	ar7
      0030BB 74 F0            [12]  630 	mov	a,#___str_0
      0030BD C0 E0            [24]  631 	push	acc
      0030BF 74 3C            [12]  632 	mov	a,#(___str_0 >> 8)
      0030C1 C0 E0            [24]  633 	push	acc
      0030C3 74 80            [12]  634 	mov	a,#0x80
      0030C5 C0 E0            [24]  635 	push	acc
      0030C7 12 32 8E         [24]  636 	lcall	_printf
      0030CA E5 81            [12]  637 	mov	a,sp
      0030CC 24 FB            [12]  638 	add	a,#0xfb
      0030CE F5 81            [12]  639 	mov	sp,a
                                    640 ;	8051_i2c_eeprom.c:40: printf("address 0x48 read_value_char %c\n\r", read_value_char);
      0030D0 7F 00            [12]  641 	mov	r7,#0x00
      0030D2 C0 07            [24]  642 	push	ar7
      0030D4 74 11            [12]  643 	mov	a,#___str_1
      0030D6 C0 E0            [24]  644 	push	acc
      0030D8 74 3D            [12]  645 	mov	a,#(___str_1 >> 8)
      0030DA C0 E0            [24]  646 	push	acc
      0030DC 74 80            [12]  647 	mov	a,#0x80
      0030DE C0 E0            [24]  648 	push	acc
      0030E0 12 32 8E         [24]  649 	lcall	_printf
      0030E3 E5 81            [12]  650 	mov	a,sp
      0030E5 24 FB            [12]  651 	add	a,#0xfb
      0030E7 F5 81            [12]  652 	mov	sp,a
                                    653 ;	8051_i2c_eeprom.c:42: eeprom_write(00, 32);
      0030E9 90 04 04         [24]  654 	mov	dptr,#_eeprom_write_PARM_2
      0030EC 74 20            [12]  655 	mov	a,#0x20
      0030EE F0               [24]  656 	movx	@dptr,a
      0030EF 75 82 00         [24]  657 	mov	dpl,#0x00
      0030F2 12 31 58         [24]  658 	lcall	_eeprom_write
                                    659 ;	8051_i2c_eeprom.c:43: int read_value = eeprom_read(00);
      0030F5 90 00 00         [24]  660 	mov	dptr,#0x0000
      0030F8 12 31 1C         [24]  661 	lcall	_eeprom_read
      0030FB AE 82            [24]  662 	mov	r6,dpl
      0030FD AF 83            [24]  663 	mov	r7,dph
                                    664 ;	8051_i2c_eeprom.c:44: printf("address 00 read_value %d\n\r", read_value);
      0030FF C0 06            [24]  665 	push	ar6
      003101 C0 07            [24]  666 	push	ar7
      003103 74 33            [12]  667 	mov	a,#___str_2
      003105 C0 E0            [24]  668 	push	acc
      003107 74 3D            [12]  669 	mov	a,#(___str_2 >> 8)
      003109 C0 E0            [24]  670 	push	acc
      00310B 74 80            [12]  671 	mov	a,#0x80
      00310D C0 E0            [24]  672 	push	acc
      00310F 12 32 8E         [24]  673 	lcall	_printf
      003112 E5 81            [12]  674 	mov	a,sp
      003114 24 FB            [12]  675 	add	a,#0xfb
      003116 F5 81            [12]  676 	mov	sp,a
                                    677 ;	8051_i2c_eeprom.c:46: return 0;
      003118 90 00 00         [24]  678 	mov	dptr,#0x0000
                                    679 ;	8051_i2c_eeprom.c:47: }
      00311B 22               [24]  680 	ret
                                    681 ;------------------------------------------------------------
                                    682 ;Allocation info for local variables in function 'eeprom_read'
                                    683 ;------------------------------------------------------------
                                    684 ;address                   Allocated with name '_eeprom_read_address_65536_25'
                                    685 ;result                    Allocated with name '_eeprom_read_result_65536_26'
                                    686 ;------------------------------------------------------------
                                    687 ;	8051_i2c_eeprom.c:49: int eeprom_read(unsigned int address)
                                    688 ;	-----------------------------------------
                                    689 ;	 function eeprom_read
                                    690 ;	-----------------------------------------
      00311C                        691 _eeprom_read:
      00311C AF 83            [24]  692 	mov	r7,dph
      00311E E5 82            [12]  693 	mov	a,dpl
      003120 90 04 02         [24]  694 	mov	dptr,#_eeprom_read_address_65536_25
      003123 F0               [24]  695 	movx	@dptr,a
      003124 EF               [12]  696 	mov	a,r7
      003125 A3               [24]  697 	inc	dptr
      003126 F0               [24]  698 	movx	@dptr,a
                                    699 ;	8051_i2c_eeprom.c:53: i2c_start();
      003127 12 32 1E         [24]  700 	lcall	_i2c_start
                                    701 ;	8051_i2c_eeprom.c:55: i2c_write(EEPROM_ID|WRITE);
      00312A 75 82 A0         [24]  702 	mov	dpl,#0xa0
      00312D 12 31 80         [24]  703 	lcall	_i2c_write
                                    704 ;	8051_i2c_eeprom.c:56: i2c_write(address);
      003130 90 04 02         [24]  705 	mov	dptr,#_eeprom_read_address_65536_25
      003133 E0               [24]  706 	movx	a,@dptr
      003134 FE               [12]  707 	mov	r6,a
      003135 A3               [24]  708 	inc	dptr
      003136 E0               [24]  709 	movx	a,@dptr
      003137 8E 82            [24]  710 	mov	dpl,r6
      003139 12 31 80         [24]  711 	lcall	_i2c_write
                                    712 ;	8051_i2c_eeprom.c:58: i2c_start();
      00313C 12 32 1E         [24]  713 	lcall	_i2c_start
                                    714 ;	8051_i2c_eeprom.c:59: i2c_write(EEPROM_ID|READ);
      00313F 75 82 A1         [24]  715 	mov	dpl,#0xa1
      003142 12 31 80         [24]  716 	lcall	_i2c_write
                                    717 ;	8051_i2c_eeprom.c:60: result = i2c_read();
      003145 12 31 BD         [24]  718 	lcall	_i2c_read
      003148 AE 82            [24]  719 	mov	r6,dpl
                                    720 ;	8051_i2c_eeprom.c:62: i2c_stop();
      00314A C0 06            [24]  721 	push	ar6
      00314C 12 32 2D         [24]  722 	lcall	_i2c_stop
      00314F D0 06            [24]  723 	pop	ar6
                                    724 ;	8051_i2c_eeprom.c:63: return result;
      003151 7F 00            [12]  725 	mov	r7,#0x00
      003153 8E 82            [24]  726 	mov	dpl,r6
      003155 8F 83            [24]  727 	mov	dph,r7
                                    728 ;	8051_i2c_eeprom.c:64: }
      003157 22               [24]  729 	ret
                                    730 ;------------------------------------------------------------
                                    731 ;Allocation info for local variables in function 'eeprom_write'
                                    732 ;------------------------------------------------------------
                                    733 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                    734 ;address                   Allocated with name '_eeprom_write_address_65536_27'
                                    735 ;------------------------------------------------------------
                                    736 ;	8051_i2c_eeprom.c:66: int eeprom_write(unsigned char address, unsigned char data)
                                    737 ;	-----------------------------------------
                                    738 ;	 function eeprom_write
                                    739 ;	-----------------------------------------
      003158                        740 _eeprom_write:
      003158 E5 82            [12]  741 	mov	a,dpl
      00315A 90 04 05         [24]  742 	mov	dptr,#_eeprom_write_address_65536_27
      00315D F0               [24]  743 	movx	@dptr,a
                                    744 ;	8051_i2c_eeprom.c:68: i2c_start();
      00315E 12 32 1E         [24]  745 	lcall	_i2c_start
                                    746 ;	8051_i2c_eeprom.c:69: i2c_write(EEPROM_ID | WRITE);
      003161 75 82 A0         [24]  747 	mov	dpl,#0xa0
      003164 12 31 80         [24]  748 	lcall	_i2c_write
                                    749 ;	8051_i2c_eeprom.c:70: i2c_write(address);
      003167 90 04 05         [24]  750 	mov	dptr,#_eeprom_write_address_65536_27
      00316A E0               [24]  751 	movx	a,@dptr
      00316B F5 82            [12]  752 	mov	dpl,a
      00316D 12 31 80         [24]  753 	lcall	_i2c_write
                                    754 ;	8051_i2c_eeprom.c:71: i2c_write(data);
      003170 90 04 04         [24]  755 	mov	dptr,#_eeprom_write_PARM_2
      003173 E0               [24]  756 	movx	a,@dptr
      003174 F5 82            [12]  757 	mov	dpl,a
      003176 12 31 80         [24]  758 	lcall	_i2c_write
                                    759 ;	8051_i2c_eeprom.c:72: i2c_stop();
      003179 12 32 2D         [24]  760 	lcall	_i2c_stop
                                    761 ;	8051_i2c_eeprom.c:73: return 0;
      00317C 90 00 00         [24]  762 	mov	dptr,#0x0000
                                    763 ;	8051_i2c_eeprom.c:75: }
      00317F 22               [24]  764 	ret
                                    765 ;------------------------------------------------------------
                                    766 ;Allocation info for local variables in function 'i2c_write'
                                    767 ;------------------------------------------------------------
                                    768 ;data                      Allocated with name '_i2c_write_data_65536_29'
                                    769 ;i                         Allocated with name '_i2c_write_i_65536_30'
                                    770 ;------------------------------------------------------------
                                    771 ;	8051_i2c_eeprom.c:77: void i2c_write(unsigned char data)
                                    772 ;	-----------------------------------------
                                    773 ;	 function i2c_write
                                    774 ;	-----------------------------------------
      003180                        775 _i2c_write:
      003180 E5 82            [12]  776 	mov	a,dpl
      003182 90 04 06         [24]  777 	mov	dptr,#_i2c_write_data_65536_29
      003185 F0               [24]  778 	movx	@dptr,a
                                    779 ;	8051_i2c_eeprom.c:81: for(i=0;i<=7;i++)
      003186 7E 00            [12]  780 	mov	r6,#0x00
      003188 7F 00            [12]  781 	mov	r7,#0x00
      00318A                        782 00102$:
                                    783 ;	8051_i2c_eeprom.c:83: SDA = (data & 0x80) ? 1 : 0;
      00318A 90 04 06         [24]  784 	mov	dptr,#_i2c_write_data_65536_29
      00318D E0               [24]  785 	movx	a,@dptr
      00318E FD               [12]  786 	mov	r5,a
      00318F 23               [12]  787 	rl	a
      003190 54 01            [12]  788 	anl	a,#0x01
      003192 24 FF            [12]  789 	add	a,#0xff
      003194 92 94            [24]  790 	mov	_P1_4,c
                                    791 ;	8051_i2c_eeprom.c:84: SCL=1;
                                    792 ;	assignBit
      003196 D2 93            [12]  793 	setb	_P1_3
                                    794 ;	8051_i2c_eeprom.c:85: i2c_delay();
      003198 C0 07            [24]  795 	push	ar7
      00319A C0 06            [24]  796 	push	ar6
      00319C C0 05            [24]  797 	push	ar5
      00319E 12 32 3A         [24]  798 	lcall	_i2c_delay
      0031A1 D0 05            [24]  799 	pop	ar5
      0031A3 D0 06            [24]  800 	pop	ar6
      0031A5 D0 07            [24]  801 	pop	ar7
                                    802 ;	8051_i2c_eeprom.c:86: SCL=0;
                                    803 ;	assignBit
      0031A7 C2 93            [12]  804 	clr	_P1_3
                                    805 ;	8051_i2c_eeprom.c:87: data = data << 1;
      0031A9 ED               [12]  806 	mov	a,r5
      0031AA 2D               [12]  807 	add	a,r5
      0031AB 90 04 06         [24]  808 	mov	dptr,#_i2c_write_data_65536_29
      0031AE F0               [24]  809 	movx	@dptr,a
                                    810 ;	8051_i2c_eeprom.c:81: for(i=0;i<=7;i++)
      0031AF 0E               [12]  811 	inc	r6
      0031B0 BE 00 01         [24]  812 	cjne	r6,#0x00,00111$
      0031B3 0F               [12]  813 	inc	r7
      0031B4                        814 00111$:
      0031B4 C3               [12]  815 	clr	c
      0031B5 74 07            [12]  816 	mov	a,#0x07
      0031B7 9E               [12]  817 	subb	a,r6
      0031B8 E4               [12]  818 	clr	a
      0031B9 9F               [12]  819 	subb	a,r7
      0031BA 50 CE            [24]  820 	jnc	00102$
                                    821 ;	8051_i2c_eeprom.c:93: }
      0031BC 22               [24]  822 	ret
                                    823 ;------------------------------------------------------------
                                    824 ;Allocation info for local variables in function 'i2c_read'
                                    825 ;------------------------------------------------------------
                                    826 ;buff                      Allocated with name '_i2c_read_buff_65536_33'
                                    827 ;i                         Allocated with name '_i2c_read_i_131072_34'
                                    828 ;------------------------------------------------------------
                                    829 ;	8051_i2c_eeprom.c:94: int i2c_read()
                                    830 ;	-----------------------------------------
                                    831 ;	 function i2c_read
                                    832 ;	-----------------------------------------
      0031BD                        833 _i2c_read:
                                    834 ;	8051_i2c_eeprom.c:96: unsigned char buff=0;
      0031BD 90 04 07         [24]  835 	mov	dptr,#_i2c_read_buff_65536_33
      0031C0 E4               [12]  836 	clr	a
      0031C1 F0               [24]  837 	movx	@dptr,a
                                    838 ;	8051_i2c_eeprom.c:98: for(int i=0;i<8;i++)
      0031C2 7E 00            [12]  839 	mov	r6,#0x00
      0031C4 7F 00            [12]  840 	mov	r7,#0x00
      0031C6                        841 00105$:
      0031C6 C3               [12]  842 	clr	c
      0031C7 EE               [12]  843 	mov	a,r6
      0031C8 94 08            [12]  844 	subb	a,#0x08
      0031CA EF               [12]  845 	mov	a,r7
      0031CB 64 80            [12]  846 	xrl	a,#0x80
      0031CD 94 80            [12]  847 	subb	a,#0x80
      0031CF 50 41            [24]  848 	jnc	00103$
                                    849 ;	8051_i2c_eeprom.c:100: SDA = 1;
                                    850 ;	assignBit
      0031D1 D2 94            [12]  851 	setb	_P1_4
                                    852 ;	8051_i2c_eeprom.c:101: SCL = 1;
                                    853 ;	assignBit
      0031D3 D2 93            [12]  854 	setb	_P1_3
                                    855 ;	8051_i2c_eeprom.c:102: i2c_delay();
      0031D5 C0 07            [24]  856 	push	ar7
      0031D7 C0 06            [24]  857 	push	ar6
      0031D9 12 32 3A         [24]  858 	lcall	_i2c_delay
      0031DC D0 06            [24]  859 	pop	ar6
      0031DE D0 07            [24]  860 	pop	ar7
                                    861 ;	8051_i2c_eeprom.c:103: buff = buff << 1;
      0031E0 90 04 07         [24]  862 	mov	dptr,#_i2c_read_buff_65536_33
      0031E3 E0               [24]  863 	movx	a,@dptr
      0031E4 25 E0            [12]  864 	add	a,acc
      0031E6 F0               [24]  865 	movx	@dptr,a
                                    866 ;	8051_i2c_eeprom.c:104: if(SDA) buff |=0x80>>i;
      0031E7 30 94 1F         [24]  867 	jnb	_P1_4,00102$
      0031EA 8E F0            [24]  868 	mov	b,r6
      0031EC 05 F0            [12]  869 	inc	b
      0031EE 7C 80            [12]  870 	mov	r4,#0x80
      0031F0 E4               [12]  871 	clr	a
      0031F1 FD               [12]  872 	mov	r5,a
      0031F2 33               [12]  873 	rlc	a
      0031F3 92 D2            [24]  874 	mov	ov,c
      0031F5 80 08            [24]  875 	sjmp	00125$
      0031F7                        876 00124$:
      0031F7 A2 D2            [12]  877 	mov	c,ov
      0031F9 ED               [12]  878 	mov	a,r5
      0031FA 13               [12]  879 	rrc	a
      0031FB FD               [12]  880 	mov	r5,a
      0031FC EC               [12]  881 	mov	a,r4
      0031FD 13               [12]  882 	rrc	a
      0031FE FC               [12]  883 	mov	r4,a
      0031FF                        884 00125$:
      0031FF D5 F0 F5         [24]  885 	djnz	b,00124$
      003202 90 04 07         [24]  886 	mov	dptr,#_i2c_read_buff_65536_33
      003205 E0               [24]  887 	movx	a,@dptr
      003206 FB               [12]  888 	mov	r3,a
      003207 4C               [12]  889 	orl	a,r4
      003208 F0               [24]  890 	movx	@dptr,a
      003209                        891 00102$:
                                    892 ;	8051_i2c_eeprom.c:105: SCL=0;
                                    893 ;	assignBit
      003209 C2 93            [12]  894 	clr	_P1_3
                                    895 ;	8051_i2c_eeprom.c:98: for(int i=0;i<8;i++)
      00320B 0E               [12]  896 	inc	r6
      00320C BE 00 B7         [24]  897 	cjne	r6,#0x00,00105$
      00320F 0F               [12]  898 	inc	r7
      003210 80 B4            [24]  899 	sjmp	00105$
      003212                        900 00103$:
                                    901 ;	8051_i2c_eeprom.c:107: return buff;
      003212 90 04 07         [24]  902 	mov	dptr,#_i2c_read_buff_65536_33
      003215 E0               [24]  903 	movx	a,@dptr
      003216 FF               [12]  904 	mov	r7,a
      003217 7E 00            [12]  905 	mov	r6,#0x00
      003219 8F 82            [24]  906 	mov	dpl,r7
      00321B 8E 83            [24]  907 	mov	dph,r6
                                    908 ;	8051_i2c_eeprom.c:108: }
      00321D 22               [24]  909 	ret
                                    910 ;------------------------------------------------------------
                                    911 ;Allocation info for local variables in function 'i2c_start'
                                    912 ;------------------------------------------------------------
                                    913 ;	8051_i2c_eeprom.c:109: void i2c_start(void)
                                    914 ;	-----------------------------------------
                                    915 ;	 function i2c_start
                                    916 ;	-----------------------------------------
      00321E                        917 _i2c_start:
                                    918 ;	8051_i2c_eeprom.c:111: SDA = 1;
                                    919 ;	assignBit
      00321E D2 94            [12]  920 	setb	_P1_4
                                    921 ;	8051_i2c_eeprom.c:112: SCL = 1;
                                    922 ;	assignBit
      003220 D2 93            [12]  923 	setb	_P1_3
                                    924 ;	8051_i2c_eeprom.c:113: i2c_delay();
      003222 12 32 3A         [24]  925 	lcall	_i2c_delay
                                    926 ;	8051_i2c_eeprom.c:114: SDA = 0;
                                    927 ;	assignBit
      003225 C2 94            [12]  928 	clr	_P1_4
                                    929 ;	8051_i2c_eeprom.c:115: i2c_delay();
      003227 12 32 3A         [24]  930 	lcall	_i2c_delay
                                    931 ;	8051_i2c_eeprom.c:116: SCL = 0;
                                    932 ;	assignBit
      00322A C2 93            [12]  933 	clr	_P1_3
                                    934 ;	8051_i2c_eeprom.c:117: }
      00322C 22               [24]  935 	ret
                                    936 ;------------------------------------------------------------
                                    937 ;Allocation info for local variables in function 'i2c_stop'
                                    938 ;------------------------------------------------------------
                                    939 ;	8051_i2c_eeprom.c:119: void i2c_stop(void)
                                    940 ;	-----------------------------------------
                                    941 ;	 function i2c_stop
                                    942 ;	-----------------------------------------
      00322D                        943 _i2c_stop:
                                    944 ;	8051_i2c_eeprom.c:121: SDA = 0;
                                    945 ;	assignBit
      00322D C2 94            [12]  946 	clr	_P1_4
                                    947 ;	8051_i2c_eeprom.c:122: i2c_delay();
      00322F 12 32 3A         [24]  948 	lcall	_i2c_delay
                                    949 ;	8051_i2c_eeprom.c:123: SCL = 1;
                                    950 ;	assignBit
      003232 D2 93            [12]  951 	setb	_P1_3
                                    952 ;	8051_i2c_eeprom.c:124: i2c_delay();
      003234 12 32 3A         [24]  953 	lcall	_i2c_delay
                                    954 ;	8051_i2c_eeprom.c:125: SDA = 1; 
                                    955 ;	assignBit
      003237 D2 94            [12]  956 	setb	_P1_4
                                    957 ;	8051_i2c_eeprom.c:126: }
      003239 22               [24]  958 	ret
                                    959 ;------------------------------------------------------------
                                    960 ;Allocation info for local variables in function 'i2c_delay'
                                    961 ;------------------------------------------------------------
                                    962 ;i                         Allocated with name '_i2c_delay_i_65536_40'
                                    963 ;------------------------------------------------------------
                                    964 ;	8051_i2c_eeprom.c:128: void i2c_delay() 
                                    965 ;	-----------------------------------------
                                    966 ;	 function i2c_delay
                                    967 ;	-----------------------------------------
      00323A                        968 _i2c_delay:
                                    969 ;	8051_i2c_eeprom.c:131: for (i = 0; i < 5; i++) {   // Run 5 NOP instructions to approximate 5 µs
      00323A 7F 05            [12]  970 	mov	r7,#0x05
      00323C                        971 00104$:
                                    972 ;	8051_i2c_eeprom.c:134: __endasm;
      00323C 00               [12]  973 	nop
                                    974 ;	8051_i2c_eeprom.c:131: for (i = 0; i < 5; i++) {   // Run 5 NOP instructions to approximate 5 µs
      00323D DF FD            [24]  975 	djnz	r7,00104$
                                    976 ;	8051_i2c_eeprom.c:136: }
      00323F 22               [24]  977 	ret
                                    978 	.area CSEG    (CODE)
                                    979 	.area CONST   (CODE)
                                    980 	.area CONST   (CODE)
      003CF0                        981 ___str_0:
      003CF0 61 64 64 72 65 73 73   982 	.ascii "address 0x48 read_value_int %d"
             20 30 78 34 38 20 72
             65 61 64 5F 76 61 6C
             75 65 5F 69 6E 74 20
             25 64
      003D0E 0A                     983 	.db 0x0a
      003D0F 0D                     984 	.db 0x0d
      003D10 00                     985 	.db 0x00
                                    986 	.area CSEG    (CODE)
                                    987 	.area CONST   (CODE)
      003D11                        988 ___str_1:
      003D11 61 64 64 72 65 73 73   989 	.ascii "address 0x48 read_value_char %c"
             20 30 78 34 38 20 72
             65 61 64 5F 76 61 6C
             75 65 5F 63 68 61 72
             20 25 63
      003D30 0A                     990 	.db 0x0a
      003D31 0D                     991 	.db 0x0d
      003D32 00                     992 	.db 0x00
                                    993 	.area CSEG    (CODE)
                                    994 	.area CONST   (CODE)
      003D33                        995 ___str_2:
      003D33 61 64 64 72 65 73 73   996 	.ascii "address 00 read_value %d"
             20 30 30 20 72 65 61
             64 5F 76 61 6C 75 65
             20 25 64
      003D4B 0A                     997 	.db 0x0a
      003D4C 0D                     998 	.db 0x0d
      003D4D 00                     999 	.db 0x00
                                   1000 	.area CSEG    (CODE)
                                   1001 	.area XINIT   (CODE)
                                   1002 	.area CABS    (ABS,CODE)
