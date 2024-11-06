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
      000405                        472 	.ds 2
      000407                        473 _i2c_write_data_65536_29:
      000407                        474 	.ds 1
      000408                        475 _i2c_read_buff_65536_33:
      000408                        476 	.ds 1
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
      003095 90 00 48         [24]  611 	mov	dptr,#0x0048
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
      0030BB 74 06            [12]  630 	mov	a,#___str_0
      0030BD C0 E0            [24]  631 	push	acc
      0030BF 74 3D            [12]  632 	mov	a,#(___str_0 >> 8)
      0030C1 C0 E0            [24]  633 	push	acc
      0030C3 74 80            [12]  634 	mov	a,#0x80
      0030C5 C0 E0            [24]  635 	push	acc
      0030C7 12 32 A4         [24]  636 	lcall	_printf
      0030CA E5 81            [12]  637 	mov	a,sp
      0030CC 24 FB            [12]  638 	add	a,#0xfb
      0030CE F5 81            [12]  639 	mov	sp,a
                                    640 ;	8051_i2c_eeprom.c:40: printf("address 0x48 read_value_char %c\n\r", read_value_char);
      0030D0 7F 00            [12]  641 	mov	r7,#0x00
      0030D2 C0 07            [24]  642 	push	ar7
      0030D4 74 27            [12]  643 	mov	a,#___str_1
      0030D6 C0 E0            [24]  644 	push	acc
      0030D8 74 3D            [12]  645 	mov	a,#(___str_1 >> 8)
      0030DA C0 E0            [24]  646 	push	acc
      0030DC 74 80            [12]  647 	mov	a,#0x80
      0030DE C0 E0            [24]  648 	push	acc
      0030E0 12 32 A4         [24]  649 	lcall	_printf
      0030E3 E5 81            [12]  650 	mov	a,sp
      0030E5 24 FB            [12]  651 	add	a,#0xfb
      0030E7 F5 81            [12]  652 	mov	sp,a
                                    653 ;	8051_i2c_eeprom.c:42: eeprom_write(00, 32);
      0030E9 90 04 04         [24]  654 	mov	dptr,#_eeprom_write_PARM_2
      0030EC 74 20            [12]  655 	mov	a,#0x20
      0030EE F0               [24]  656 	movx	@dptr,a
      0030EF 90 00 00         [24]  657 	mov	dptr,#0x0000
      0030F2 12 31 58         [24]  658 	lcall	_eeprom_write
                                    659 ;	8051_i2c_eeprom.c:43: int read_value = eeprom_read(00);
      0030F5 90 00 00         [24]  660 	mov	dptr,#0x0000
      0030F8 12 31 1C         [24]  661 	lcall	_eeprom_read
      0030FB AE 82            [24]  662 	mov	r6,dpl
      0030FD AF 83            [24]  663 	mov	r7,dph
                                    664 ;	8051_i2c_eeprom.c:44: printf("address 00 read_value %d\n\r", read_value);
      0030FF C0 06            [24]  665 	push	ar6
      003101 C0 07            [24]  666 	push	ar7
      003103 74 49            [12]  667 	mov	a,#___str_2
      003105 C0 E0            [24]  668 	push	acc
      003107 74 3D            [12]  669 	mov	a,#(___str_2 >> 8)
      003109 C0 E0            [24]  670 	push	acc
      00310B 74 80            [12]  671 	mov	a,#0x80
      00310D C0 E0            [24]  672 	push	acc
      00310F 12 32 A4         [24]  673 	lcall	_printf
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
      003127 12 32 34         [24]  700 	lcall	_i2c_start
                                    701 ;	8051_i2c_eeprom.c:55: i2c_write(EEPROM_ID|WRITE);
      00312A 75 82 A0         [24]  702 	mov	dpl,#0xa0
      00312D 12 31 96         [24]  703 	lcall	_i2c_write
                                    704 ;	8051_i2c_eeprom.c:56: i2c_write(address);
      003130 90 04 02         [24]  705 	mov	dptr,#_eeprom_read_address_65536_25
      003133 E0               [24]  706 	movx	a,@dptr
      003134 FE               [12]  707 	mov	r6,a
      003135 A3               [24]  708 	inc	dptr
      003136 E0               [24]  709 	movx	a,@dptr
      003137 8E 82            [24]  710 	mov	dpl,r6
      003139 12 31 96         [24]  711 	lcall	_i2c_write
                                    712 ;	8051_i2c_eeprom.c:58: i2c_start();
      00313C 12 32 34         [24]  713 	lcall	_i2c_start
                                    714 ;	8051_i2c_eeprom.c:59: i2c_write(EEPROM_ID|READ);
      00313F 75 82 A1         [24]  715 	mov	dpl,#0xa1
      003142 12 31 96         [24]  716 	lcall	_i2c_write
                                    717 ;	8051_i2c_eeprom.c:60: result = i2c_read();
      003145 12 31 D3         [24]  718 	lcall	_i2c_read
      003148 AE 82            [24]  719 	mov	r6,dpl
                                    720 ;	8051_i2c_eeprom.c:62: i2c_stop();
      00314A C0 06            [24]  721 	push	ar6
      00314C 12 32 43         [24]  722 	lcall	_i2c_stop
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
                                    736 ;	8051_i2c_eeprom.c:66: int eeprom_write(unsigned int address, unsigned char data)
                                    737 ;	-----------------------------------------
                                    738 ;	 function eeprom_write
                                    739 ;	-----------------------------------------
      003158                        740 _eeprom_write:
      003158 AF 83            [24]  741 	mov	r7,dph
      00315A E5 82            [12]  742 	mov	a,dpl
      00315C 90 04 05         [24]  743 	mov	dptr,#_eeprom_write_address_65536_27
      00315F F0               [24]  744 	movx	@dptr,a
      003160 EF               [12]  745 	mov	a,r7
      003161 A3               [24]  746 	inc	dptr
      003162 F0               [24]  747 	movx	@dptr,a
                                    748 ;	8051_i2c_eeprom.c:68: i2c_start();
      003163 12 32 34         [24]  749 	lcall	_i2c_start
                                    750 ;	8051_i2c_eeprom.c:69: i2c_write(EEPROM_ID | WRITE);
      003166 75 82 A0         [24]  751 	mov	dpl,#0xa0
      003169 12 31 96         [24]  752 	lcall	_i2c_write
                                    753 ;	8051_i2c_eeprom.c:70: i2c_write((unsigned char)(address >> 8));  // Address MSB (if needed)
      00316C 90 04 05         [24]  754 	mov	dptr,#_eeprom_write_address_65536_27
      00316F E0               [24]  755 	movx	a,@dptr
      003170 FE               [12]  756 	mov	r6,a
      003171 A3               [24]  757 	inc	dptr
      003172 E0               [24]  758 	movx	a,@dptr
      003173 FF               [12]  759 	mov	r7,a
      003174 F5 82            [12]  760 	mov	dpl,a
      003176 C0 07            [24]  761 	push	ar7
      003178 C0 06            [24]  762 	push	ar6
      00317A 12 31 96         [24]  763 	lcall	_i2c_write
      00317D D0 06            [24]  764 	pop	ar6
      00317F D0 07            [24]  765 	pop	ar7
                                    766 ;	8051_i2c_eeprom.c:71: i2c_write((unsigned char)address);         // Address LSB
      003181 8E 82            [24]  767 	mov	dpl,r6
      003183 12 31 96         [24]  768 	lcall	_i2c_write
                                    769 ;	8051_i2c_eeprom.c:72: i2c_write(data);
      003186 90 04 04         [24]  770 	mov	dptr,#_eeprom_write_PARM_2
      003189 E0               [24]  771 	movx	a,@dptr
      00318A F5 82            [12]  772 	mov	dpl,a
      00318C 12 31 96         [24]  773 	lcall	_i2c_write
                                    774 ;	8051_i2c_eeprom.c:73: i2c_stop();
      00318F 12 32 43         [24]  775 	lcall	_i2c_stop
                                    776 ;	8051_i2c_eeprom.c:74: return 0;
      003192 90 00 00         [24]  777 	mov	dptr,#0x0000
                                    778 ;	8051_i2c_eeprom.c:75: }
      003195 22               [24]  779 	ret
                                    780 ;------------------------------------------------------------
                                    781 ;Allocation info for local variables in function 'i2c_write'
                                    782 ;------------------------------------------------------------
                                    783 ;data                      Allocated with name '_i2c_write_data_65536_29'
                                    784 ;i                         Allocated with name '_i2c_write_i_65536_30'
                                    785 ;------------------------------------------------------------
                                    786 ;	8051_i2c_eeprom.c:78: void i2c_write(unsigned char data)
                                    787 ;	-----------------------------------------
                                    788 ;	 function i2c_write
                                    789 ;	-----------------------------------------
      003196                        790 _i2c_write:
      003196 E5 82            [12]  791 	mov	a,dpl
      003198 90 04 07         [24]  792 	mov	dptr,#_i2c_write_data_65536_29
      00319B F0               [24]  793 	movx	@dptr,a
                                    794 ;	8051_i2c_eeprom.c:82: for(i=0;i<=7;i++)
      00319C 7E 00            [12]  795 	mov	r6,#0x00
      00319E 7F 00            [12]  796 	mov	r7,#0x00
      0031A0                        797 00102$:
                                    798 ;	8051_i2c_eeprom.c:84: SDA = (data & 0x80) ? 1 : 0;
      0031A0 90 04 07         [24]  799 	mov	dptr,#_i2c_write_data_65536_29
      0031A3 E0               [24]  800 	movx	a,@dptr
      0031A4 FD               [12]  801 	mov	r5,a
      0031A5 23               [12]  802 	rl	a
      0031A6 54 01            [12]  803 	anl	a,#0x01
      0031A8 24 FF            [12]  804 	add	a,#0xff
      0031AA 92 94            [24]  805 	mov	_P1_4,c
                                    806 ;	8051_i2c_eeprom.c:85: SCL=1;
                                    807 ;	assignBit
      0031AC D2 93            [12]  808 	setb	_P1_3
                                    809 ;	8051_i2c_eeprom.c:86: i2c_delay();
      0031AE C0 07            [24]  810 	push	ar7
      0031B0 C0 06            [24]  811 	push	ar6
      0031B2 C0 05            [24]  812 	push	ar5
      0031B4 12 32 50         [24]  813 	lcall	_i2c_delay
      0031B7 D0 05            [24]  814 	pop	ar5
      0031B9 D0 06            [24]  815 	pop	ar6
      0031BB D0 07            [24]  816 	pop	ar7
                                    817 ;	8051_i2c_eeprom.c:87: SCL=0;
                                    818 ;	assignBit
      0031BD C2 93            [12]  819 	clr	_P1_3
                                    820 ;	8051_i2c_eeprom.c:88: data = data << 1;
      0031BF ED               [12]  821 	mov	a,r5
      0031C0 2D               [12]  822 	add	a,r5
      0031C1 90 04 07         [24]  823 	mov	dptr,#_i2c_write_data_65536_29
      0031C4 F0               [24]  824 	movx	@dptr,a
                                    825 ;	8051_i2c_eeprom.c:82: for(i=0;i<=7;i++)
      0031C5 0E               [12]  826 	inc	r6
      0031C6 BE 00 01         [24]  827 	cjne	r6,#0x00,00111$
      0031C9 0F               [12]  828 	inc	r7
      0031CA                        829 00111$:
      0031CA C3               [12]  830 	clr	c
      0031CB 74 07            [12]  831 	mov	a,#0x07
      0031CD 9E               [12]  832 	subb	a,r6
      0031CE E4               [12]  833 	clr	a
      0031CF 9F               [12]  834 	subb	a,r7
      0031D0 50 CE            [24]  835 	jnc	00102$
                                    836 ;	8051_i2c_eeprom.c:94: }
      0031D2 22               [24]  837 	ret
                                    838 ;------------------------------------------------------------
                                    839 ;Allocation info for local variables in function 'i2c_read'
                                    840 ;------------------------------------------------------------
                                    841 ;buff                      Allocated with name '_i2c_read_buff_65536_33'
                                    842 ;i                         Allocated with name '_i2c_read_i_131072_34'
                                    843 ;------------------------------------------------------------
                                    844 ;	8051_i2c_eeprom.c:95: int i2c_read()
                                    845 ;	-----------------------------------------
                                    846 ;	 function i2c_read
                                    847 ;	-----------------------------------------
      0031D3                        848 _i2c_read:
                                    849 ;	8051_i2c_eeprom.c:97: unsigned char buff=0;
      0031D3 90 04 08         [24]  850 	mov	dptr,#_i2c_read_buff_65536_33
      0031D6 E4               [12]  851 	clr	a
      0031D7 F0               [24]  852 	movx	@dptr,a
                                    853 ;	8051_i2c_eeprom.c:99: for(int i=0;i<8;i++)
      0031D8 7E 00            [12]  854 	mov	r6,#0x00
      0031DA 7F 00            [12]  855 	mov	r7,#0x00
      0031DC                        856 00105$:
      0031DC C3               [12]  857 	clr	c
      0031DD EE               [12]  858 	mov	a,r6
      0031DE 94 08            [12]  859 	subb	a,#0x08
      0031E0 EF               [12]  860 	mov	a,r7
      0031E1 64 80            [12]  861 	xrl	a,#0x80
      0031E3 94 80            [12]  862 	subb	a,#0x80
      0031E5 50 41            [24]  863 	jnc	00103$
                                    864 ;	8051_i2c_eeprom.c:101: SDA = 1;
                                    865 ;	assignBit
      0031E7 D2 94            [12]  866 	setb	_P1_4
                                    867 ;	8051_i2c_eeprom.c:102: SCL = 1;
                                    868 ;	assignBit
      0031E9 D2 93            [12]  869 	setb	_P1_3
                                    870 ;	8051_i2c_eeprom.c:103: i2c_delay();
      0031EB C0 07            [24]  871 	push	ar7
      0031ED C0 06            [24]  872 	push	ar6
      0031EF 12 32 50         [24]  873 	lcall	_i2c_delay
      0031F2 D0 06            [24]  874 	pop	ar6
      0031F4 D0 07            [24]  875 	pop	ar7
                                    876 ;	8051_i2c_eeprom.c:104: buff = buff << 1;
      0031F6 90 04 08         [24]  877 	mov	dptr,#_i2c_read_buff_65536_33
      0031F9 E0               [24]  878 	movx	a,@dptr
      0031FA 25 E0            [12]  879 	add	a,acc
      0031FC F0               [24]  880 	movx	@dptr,a
                                    881 ;	8051_i2c_eeprom.c:105: if(SDA) buff |=0x80>>i;
      0031FD 30 94 1F         [24]  882 	jnb	_P1_4,00102$
      003200 8E F0            [24]  883 	mov	b,r6
      003202 05 F0            [12]  884 	inc	b
      003204 7C 80            [12]  885 	mov	r4,#0x80
      003206 E4               [12]  886 	clr	a
      003207 FD               [12]  887 	mov	r5,a
      003208 33               [12]  888 	rlc	a
      003209 92 D2            [24]  889 	mov	ov,c
      00320B 80 08            [24]  890 	sjmp	00125$
      00320D                        891 00124$:
      00320D A2 D2            [12]  892 	mov	c,ov
      00320F ED               [12]  893 	mov	a,r5
      003210 13               [12]  894 	rrc	a
      003211 FD               [12]  895 	mov	r5,a
      003212 EC               [12]  896 	mov	a,r4
      003213 13               [12]  897 	rrc	a
      003214 FC               [12]  898 	mov	r4,a
      003215                        899 00125$:
      003215 D5 F0 F5         [24]  900 	djnz	b,00124$
      003218 90 04 08         [24]  901 	mov	dptr,#_i2c_read_buff_65536_33
      00321B E0               [24]  902 	movx	a,@dptr
      00321C FB               [12]  903 	mov	r3,a
      00321D 4C               [12]  904 	orl	a,r4
      00321E F0               [24]  905 	movx	@dptr,a
      00321F                        906 00102$:
                                    907 ;	8051_i2c_eeprom.c:106: SCL=0;
                                    908 ;	assignBit
      00321F C2 93            [12]  909 	clr	_P1_3
                                    910 ;	8051_i2c_eeprom.c:99: for(int i=0;i<8;i++)
      003221 0E               [12]  911 	inc	r6
      003222 BE 00 B7         [24]  912 	cjne	r6,#0x00,00105$
      003225 0F               [12]  913 	inc	r7
      003226 80 B4            [24]  914 	sjmp	00105$
      003228                        915 00103$:
                                    916 ;	8051_i2c_eeprom.c:108: return buff;
      003228 90 04 08         [24]  917 	mov	dptr,#_i2c_read_buff_65536_33
      00322B E0               [24]  918 	movx	a,@dptr
      00322C FF               [12]  919 	mov	r7,a
      00322D 7E 00            [12]  920 	mov	r6,#0x00
      00322F 8F 82            [24]  921 	mov	dpl,r7
      003231 8E 83            [24]  922 	mov	dph,r6
                                    923 ;	8051_i2c_eeprom.c:109: }
      003233 22               [24]  924 	ret
                                    925 ;------------------------------------------------------------
                                    926 ;Allocation info for local variables in function 'i2c_start'
                                    927 ;------------------------------------------------------------
                                    928 ;	8051_i2c_eeprom.c:110: void i2c_start(void)
                                    929 ;	-----------------------------------------
                                    930 ;	 function i2c_start
                                    931 ;	-----------------------------------------
      003234                        932 _i2c_start:
                                    933 ;	8051_i2c_eeprom.c:112: SDA = 1;
                                    934 ;	assignBit
      003234 D2 94            [12]  935 	setb	_P1_4
                                    936 ;	8051_i2c_eeprom.c:113: SCL = 1;
                                    937 ;	assignBit
      003236 D2 93            [12]  938 	setb	_P1_3
                                    939 ;	8051_i2c_eeprom.c:114: i2c_delay();
      003238 12 32 50         [24]  940 	lcall	_i2c_delay
                                    941 ;	8051_i2c_eeprom.c:115: SDA = 0;
                                    942 ;	assignBit
      00323B C2 94            [12]  943 	clr	_P1_4
                                    944 ;	8051_i2c_eeprom.c:116: i2c_delay();
      00323D 12 32 50         [24]  945 	lcall	_i2c_delay
                                    946 ;	8051_i2c_eeprom.c:117: SCL = 0;
                                    947 ;	assignBit
      003240 C2 93            [12]  948 	clr	_P1_3
                                    949 ;	8051_i2c_eeprom.c:118: }
      003242 22               [24]  950 	ret
                                    951 ;------------------------------------------------------------
                                    952 ;Allocation info for local variables in function 'i2c_stop'
                                    953 ;------------------------------------------------------------
                                    954 ;	8051_i2c_eeprom.c:120: void i2c_stop(void)
                                    955 ;	-----------------------------------------
                                    956 ;	 function i2c_stop
                                    957 ;	-----------------------------------------
      003243                        958 _i2c_stop:
                                    959 ;	8051_i2c_eeprom.c:122: SDA = 0;
                                    960 ;	assignBit
      003243 C2 94            [12]  961 	clr	_P1_4
                                    962 ;	8051_i2c_eeprom.c:123: i2c_delay();
      003245 12 32 50         [24]  963 	lcall	_i2c_delay
                                    964 ;	8051_i2c_eeprom.c:124: SCL = 1;
                                    965 ;	assignBit
      003248 D2 93            [12]  966 	setb	_P1_3
                                    967 ;	8051_i2c_eeprom.c:125: i2c_delay();
      00324A 12 32 50         [24]  968 	lcall	_i2c_delay
                                    969 ;	8051_i2c_eeprom.c:126: SDA = 1; 
                                    970 ;	assignBit
      00324D D2 94            [12]  971 	setb	_P1_4
                                    972 ;	8051_i2c_eeprom.c:127: }
      00324F 22               [24]  973 	ret
                                    974 ;------------------------------------------------------------
                                    975 ;Allocation info for local variables in function 'i2c_delay'
                                    976 ;------------------------------------------------------------
                                    977 ;i                         Allocated with name '_i2c_delay_i_65536_40'
                                    978 ;------------------------------------------------------------
                                    979 ;	8051_i2c_eeprom.c:129: void i2c_delay() 
                                    980 ;	-----------------------------------------
                                    981 ;	 function i2c_delay
                                    982 ;	-----------------------------------------
      003250                        983 _i2c_delay:
                                    984 ;	8051_i2c_eeprom.c:132: for (i = 0; i < 5; i++) {   // Run 5 NOP instructions to approximate 5 µs
      003250 7F 05            [12]  985 	mov	r7,#0x05
      003252                        986 00104$:
                                    987 ;	8051_i2c_eeprom.c:135: __endasm;
      003252 00               [12]  988 	nop
                                    989 ;	8051_i2c_eeprom.c:132: for (i = 0; i < 5; i++) {   // Run 5 NOP instructions to approximate 5 µs
      003253 DF FD            [24]  990 	djnz	r7,00104$
                                    991 ;	8051_i2c_eeprom.c:137: }
      003255 22               [24]  992 	ret
                                    993 	.area CSEG    (CODE)
                                    994 	.area CONST   (CODE)
                                    995 	.area CONST   (CODE)
      003D06                        996 ___str_0:
      003D06 61 64 64 72 65 73 73   997 	.ascii "address 0x48 read_value_int %d"
             20 30 78 34 38 20 72
             65 61 64 5F 76 61 6C
             75 65 5F 69 6E 74 20
             25 64
      003D24 0A                     998 	.db 0x0a
      003D25 0D                     999 	.db 0x0d
      003D26 00                    1000 	.db 0x00
                                   1001 	.area CSEG    (CODE)
                                   1002 	.area CONST   (CODE)
      003D27                       1003 ___str_1:
      003D27 61 64 64 72 65 73 73  1004 	.ascii "address 0x48 read_value_char %c"
             20 30 78 34 38 20 72
             65 61 64 5F 76 61 6C
             75 65 5F 63 68 61 72
             20 25 63
      003D46 0A                    1005 	.db 0x0a
      003D47 0D                    1006 	.db 0x0d
      003D48 00                    1007 	.db 0x00
                                   1008 	.area CSEG    (CODE)
                                   1009 	.area CONST   (CODE)
      003D49                       1010 ___str_2:
      003D49 61 64 64 72 65 73 73  1011 	.ascii "address 00 read_value %d"
             20 30 30 20 72 65 61
             64 5F 76 61 6C 75 65
             20 25 64
      003D61 0A                    1012 	.db 0x0a
      003D62 0D                    1013 	.db 0x0d
      003D63 00                    1014 	.db 0x00
                                   1015 	.area CSEG    (CODE)
                                   1016 	.area XINIT   (CODE)
                                   1017 	.area CABS    (ABS,CODE)
