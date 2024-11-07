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
                                     11 	.globl _test_function
                                     12 	.globl _main
                                     13 	.globl _command_menu
                                     14 	.globl _ui
                                     15 	.globl _getchar
                                     16 	.globl _putchar
                                     17 	.globl _printf
                                     18 	.globl _P5_7
                                     19 	.globl _P5_6
                                     20 	.globl _P5_5
                                     21 	.globl _P5_4
                                     22 	.globl _P5_3
                                     23 	.globl _P5_2
                                     24 	.globl _P5_1
                                     25 	.globl _P5_0
                                     26 	.globl _P4_7
                                     27 	.globl _P4_6
                                     28 	.globl _P4_5
                                     29 	.globl _P4_4
                                     30 	.globl _P4_3
                                     31 	.globl _P4_2
                                     32 	.globl _P4_1
                                     33 	.globl _P4_0
                                     34 	.globl _PX0L
                                     35 	.globl _PT0L
                                     36 	.globl _PX1L
                                     37 	.globl _PT1L
                                     38 	.globl _PSL
                                     39 	.globl _PT2L
                                     40 	.globl _PPCL
                                     41 	.globl _EC
                                     42 	.globl _CCF0
                                     43 	.globl _CCF1
                                     44 	.globl _CCF2
                                     45 	.globl _CCF3
                                     46 	.globl _CCF4
                                     47 	.globl _CR
                                     48 	.globl _CF
                                     49 	.globl _TF2
                                     50 	.globl _EXF2
                                     51 	.globl _RCLK
                                     52 	.globl _TCLK
                                     53 	.globl _EXEN2
                                     54 	.globl _TR2
                                     55 	.globl _C_T2
                                     56 	.globl _CP_RL2
                                     57 	.globl _T2CON_7
                                     58 	.globl _T2CON_6
                                     59 	.globl _T2CON_5
                                     60 	.globl _T2CON_4
                                     61 	.globl _T2CON_3
                                     62 	.globl _T2CON_2
                                     63 	.globl _T2CON_1
                                     64 	.globl _T2CON_0
                                     65 	.globl _PT2
                                     66 	.globl _ET2
                                     67 	.globl _CY
                                     68 	.globl _AC
                                     69 	.globl _F0
                                     70 	.globl _RS1
                                     71 	.globl _RS0
                                     72 	.globl _OV
                                     73 	.globl _F1
                                     74 	.globl _P
                                     75 	.globl _PS
                                     76 	.globl _PT1
                                     77 	.globl _PX1
                                     78 	.globl _PT0
                                     79 	.globl _PX0
                                     80 	.globl _RD
                                     81 	.globl _WR
                                     82 	.globl _T1
                                     83 	.globl _T0
                                     84 	.globl _INT1
                                     85 	.globl _INT0
                                     86 	.globl _TXD
                                     87 	.globl _RXD
                                     88 	.globl _P3_7
                                     89 	.globl _P3_6
                                     90 	.globl _P3_5
                                     91 	.globl _P3_4
                                     92 	.globl _P3_3
                                     93 	.globl _P3_2
                                     94 	.globl _P3_1
                                     95 	.globl _P3_0
                                     96 	.globl _EA
                                     97 	.globl _ES
                                     98 	.globl _ET1
                                     99 	.globl _EX1
                                    100 	.globl _ET0
                                    101 	.globl _EX0
                                    102 	.globl _P2_7
                                    103 	.globl _P2_6
                                    104 	.globl _P2_5
                                    105 	.globl _P2_4
                                    106 	.globl _P2_3
                                    107 	.globl _P2_2
                                    108 	.globl _P2_1
                                    109 	.globl _P2_0
                                    110 	.globl _SM0
                                    111 	.globl _SM1
                                    112 	.globl _SM2
                                    113 	.globl _REN
                                    114 	.globl _TB8
                                    115 	.globl _RB8
                                    116 	.globl _TI
                                    117 	.globl _RI
                                    118 	.globl _P1_7
                                    119 	.globl _P1_6
                                    120 	.globl _P1_5
                                    121 	.globl _P1_4
                                    122 	.globl _P1_3
                                    123 	.globl _P1_2
                                    124 	.globl _P1_1
                                    125 	.globl _P1_0
                                    126 	.globl _TF1
                                    127 	.globl _TR1
                                    128 	.globl _TF0
                                    129 	.globl _TR0
                                    130 	.globl _IE1
                                    131 	.globl _IT1
                                    132 	.globl _IE0
                                    133 	.globl _IT0
                                    134 	.globl _P0_7
                                    135 	.globl _P0_6
                                    136 	.globl _P0_5
                                    137 	.globl _P0_4
                                    138 	.globl _P0_3
                                    139 	.globl _P0_2
                                    140 	.globl _P0_1
                                    141 	.globl _P0_0
                                    142 	.globl _EECON
                                    143 	.globl _KBF
                                    144 	.globl _KBE
                                    145 	.globl _KBLS
                                    146 	.globl _BRL
                                    147 	.globl _BDRCON
                                    148 	.globl _T2MOD
                                    149 	.globl _SPDAT
                                    150 	.globl _SPSTA
                                    151 	.globl _SPCON
                                    152 	.globl _SADEN
                                    153 	.globl _SADDR
                                    154 	.globl _WDTPRG
                                    155 	.globl _WDTRST
                                    156 	.globl _P5
                                    157 	.globl _P4
                                    158 	.globl _IPH1
                                    159 	.globl _IPL1
                                    160 	.globl _IPH0
                                    161 	.globl _IPL0
                                    162 	.globl _IEN1
                                    163 	.globl _IEN0
                                    164 	.globl _CMOD
                                    165 	.globl _CL
                                    166 	.globl _CH
                                    167 	.globl _CCON
                                    168 	.globl _CCAPM4
                                    169 	.globl _CCAPM3
                                    170 	.globl _CCAPM2
                                    171 	.globl _CCAPM1
                                    172 	.globl _CCAPM0
                                    173 	.globl _CCAP4L
                                    174 	.globl _CCAP3L
                                    175 	.globl _CCAP2L
                                    176 	.globl _CCAP1L
                                    177 	.globl _CCAP0L
                                    178 	.globl _CCAP4H
                                    179 	.globl _CCAP3H
                                    180 	.globl _CCAP2H
                                    181 	.globl _CCAP1H
                                    182 	.globl _CCAP0H
                                    183 	.globl _CKCON1
                                    184 	.globl _CKCON0
                                    185 	.globl _CKRL
                                    186 	.globl _AUXR1
                                    187 	.globl _AUXR
                                    188 	.globl _TH2
                                    189 	.globl _TL2
                                    190 	.globl _RCAP2H
                                    191 	.globl _RCAP2L
                                    192 	.globl _T2CON
                                    193 	.globl _B
                                    194 	.globl _ACC
                                    195 	.globl _PSW
                                    196 	.globl _IP
                                    197 	.globl _P3
                                    198 	.globl _IE
                                    199 	.globl _P2
                                    200 	.globl _SBUF
                                    201 	.globl _SCON
                                    202 	.globl _P1
                                    203 	.globl _TH1
                                    204 	.globl _TH0
                                    205 	.globl _TL1
                                    206 	.globl _TL0
                                    207 	.globl _TMOD
                                    208 	.globl _TCON
                                    209 	.globl _PCON
                                    210 	.globl _DPH
                                    211 	.globl _DPL
                                    212 	.globl _SP
                                    213 	.globl _P0
                                    214 	.globl _eeprom_write_PARM_2
                                    215 	.globl _ACK
                                    216 	.globl _take_address
                                    217 	.globl _take_data
                                    218 	.globl _eeprom_write
                                    219 	.globl _eeprom_read
                                    220 	.globl _i2c_write
                                    221 	.globl _i2c_read
                                    222 	.globl _i2c_start
                                    223 	.globl _i2c_stop
                                    224 	.globl _i2c_delay
                                    225 ;--------------------------------------------------------
                                    226 ; special function registers
                                    227 ;--------------------------------------------------------
                                    228 	.area RSEG    (ABS,DATA)
      000000                        229 	.org 0x0000
                           000080   230 _P0	=	0x0080
                           000081   231 _SP	=	0x0081
                           000082   232 _DPL	=	0x0082
                           000083   233 _DPH	=	0x0083
                           000087   234 _PCON	=	0x0087
                           000088   235 _TCON	=	0x0088
                           000089   236 _TMOD	=	0x0089
                           00008A   237 _TL0	=	0x008a
                           00008B   238 _TL1	=	0x008b
                           00008C   239 _TH0	=	0x008c
                           00008D   240 _TH1	=	0x008d
                           000090   241 _P1	=	0x0090
                           000098   242 _SCON	=	0x0098
                           000099   243 _SBUF	=	0x0099
                           0000A0   244 _P2	=	0x00a0
                           0000A8   245 _IE	=	0x00a8
                           0000B0   246 _P3	=	0x00b0
                           0000B8   247 _IP	=	0x00b8
                           0000D0   248 _PSW	=	0x00d0
                           0000E0   249 _ACC	=	0x00e0
                           0000F0   250 _B	=	0x00f0
                           0000C8   251 _T2CON	=	0x00c8
                           0000CA   252 _RCAP2L	=	0x00ca
                           0000CB   253 _RCAP2H	=	0x00cb
                           0000CC   254 _TL2	=	0x00cc
                           0000CD   255 _TH2	=	0x00cd
                           00008E   256 _AUXR	=	0x008e
                           0000A2   257 _AUXR1	=	0x00a2
                           000097   258 _CKRL	=	0x0097
                           00008F   259 _CKCON0	=	0x008f
                           0000AF   260 _CKCON1	=	0x00af
                           0000FA   261 _CCAP0H	=	0x00fa
                           0000FB   262 _CCAP1H	=	0x00fb
                           0000FC   263 _CCAP2H	=	0x00fc
                           0000FD   264 _CCAP3H	=	0x00fd
                           0000FE   265 _CCAP4H	=	0x00fe
                           0000EA   266 _CCAP0L	=	0x00ea
                           0000EB   267 _CCAP1L	=	0x00eb
                           0000EC   268 _CCAP2L	=	0x00ec
                           0000ED   269 _CCAP3L	=	0x00ed
                           0000EE   270 _CCAP4L	=	0x00ee
                           0000DA   271 _CCAPM0	=	0x00da
                           0000DB   272 _CCAPM1	=	0x00db
                           0000DC   273 _CCAPM2	=	0x00dc
                           0000DD   274 _CCAPM3	=	0x00dd
                           0000DE   275 _CCAPM4	=	0x00de
                           0000D8   276 _CCON	=	0x00d8
                           0000F9   277 _CH	=	0x00f9
                           0000E9   278 _CL	=	0x00e9
                           0000D9   279 _CMOD	=	0x00d9
                           0000A8   280 _IEN0	=	0x00a8
                           0000B1   281 _IEN1	=	0x00b1
                           0000B8   282 _IPL0	=	0x00b8
                           0000B7   283 _IPH0	=	0x00b7
                           0000B2   284 _IPL1	=	0x00b2
                           0000B3   285 _IPH1	=	0x00b3
                           0000C0   286 _P4	=	0x00c0
                           0000E8   287 _P5	=	0x00e8
                           0000A6   288 _WDTRST	=	0x00a6
                           0000A7   289 _WDTPRG	=	0x00a7
                           0000A9   290 _SADDR	=	0x00a9
                           0000B9   291 _SADEN	=	0x00b9
                           0000C3   292 _SPCON	=	0x00c3
                           0000C4   293 _SPSTA	=	0x00c4
                           0000C5   294 _SPDAT	=	0x00c5
                           0000C9   295 _T2MOD	=	0x00c9
                           00009B   296 _BDRCON	=	0x009b
                           00009A   297 _BRL	=	0x009a
                           00009C   298 _KBLS	=	0x009c
                           00009D   299 _KBE	=	0x009d
                           00009E   300 _KBF	=	0x009e
                           0000D2   301 _EECON	=	0x00d2
                                    302 ;--------------------------------------------------------
                                    303 ; special function bits
                                    304 ;--------------------------------------------------------
                                    305 	.area RSEG    (ABS,DATA)
      000000                        306 	.org 0x0000
                           000080   307 _P0_0	=	0x0080
                           000081   308 _P0_1	=	0x0081
                           000082   309 _P0_2	=	0x0082
                           000083   310 _P0_3	=	0x0083
                           000084   311 _P0_4	=	0x0084
                           000085   312 _P0_5	=	0x0085
                           000086   313 _P0_6	=	0x0086
                           000087   314 _P0_7	=	0x0087
                           000088   315 _IT0	=	0x0088
                           000089   316 _IE0	=	0x0089
                           00008A   317 _IT1	=	0x008a
                           00008B   318 _IE1	=	0x008b
                           00008C   319 _TR0	=	0x008c
                           00008D   320 _TF0	=	0x008d
                           00008E   321 _TR1	=	0x008e
                           00008F   322 _TF1	=	0x008f
                           000090   323 _P1_0	=	0x0090
                           000091   324 _P1_1	=	0x0091
                           000092   325 _P1_2	=	0x0092
                           000093   326 _P1_3	=	0x0093
                           000094   327 _P1_4	=	0x0094
                           000095   328 _P1_5	=	0x0095
                           000096   329 _P1_6	=	0x0096
                           000097   330 _P1_7	=	0x0097
                           000098   331 _RI	=	0x0098
                           000099   332 _TI	=	0x0099
                           00009A   333 _RB8	=	0x009a
                           00009B   334 _TB8	=	0x009b
                           00009C   335 _REN	=	0x009c
                           00009D   336 _SM2	=	0x009d
                           00009E   337 _SM1	=	0x009e
                           00009F   338 _SM0	=	0x009f
                           0000A0   339 _P2_0	=	0x00a0
                           0000A1   340 _P2_1	=	0x00a1
                           0000A2   341 _P2_2	=	0x00a2
                           0000A3   342 _P2_3	=	0x00a3
                           0000A4   343 _P2_4	=	0x00a4
                           0000A5   344 _P2_5	=	0x00a5
                           0000A6   345 _P2_6	=	0x00a6
                           0000A7   346 _P2_7	=	0x00a7
                           0000A8   347 _EX0	=	0x00a8
                           0000A9   348 _ET0	=	0x00a9
                           0000AA   349 _EX1	=	0x00aa
                           0000AB   350 _ET1	=	0x00ab
                           0000AC   351 _ES	=	0x00ac
                           0000AF   352 _EA	=	0x00af
                           0000B0   353 _P3_0	=	0x00b0
                           0000B1   354 _P3_1	=	0x00b1
                           0000B2   355 _P3_2	=	0x00b2
                           0000B3   356 _P3_3	=	0x00b3
                           0000B4   357 _P3_4	=	0x00b4
                           0000B5   358 _P3_5	=	0x00b5
                           0000B6   359 _P3_6	=	0x00b6
                           0000B7   360 _P3_7	=	0x00b7
                           0000B0   361 _RXD	=	0x00b0
                           0000B1   362 _TXD	=	0x00b1
                           0000B2   363 _INT0	=	0x00b2
                           0000B3   364 _INT1	=	0x00b3
                           0000B4   365 _T0	=	0x00b4
                           0000B5   366 _T1	=	0x00b5
                           0000B6   367 _WR	=	0x00b6
                           0000B7   368 _RD	=	0x00b7
                           0000B8   369 _PX0	=	0x00b8
                           0000B9   370 _PT0	=	0x00b9
                           0000BA   371 _PX1	=	0x00ba
                           0000BB   372 _PT1	=	0x00bb
                           0000BC   373 _PS	=	0x00bc
                           0000D0   374 _P	=	0x00d0
                           0000D1   375 _F1	=	0x00d1
                           0000D2   376 _OV	=	0x00d2
                           0000D3   377 _RS0	=	0x00d3
                           0000D4   378 _RS1	=	0x00d4
                           0000D5   379 _F0	=	0x00d5
                           0000D6   380 _AC	=	0x00d6
                           0000D7   381 _CY	=	0x00d7
                           0000AD   382 _ET2	=	0x00ad
                           0000BD   383 _PT2	=	0x00bd
                           0000C8   384 _T2CON_0	=	0x00c8
                           0000C9   385 _T2CON_1	=	0x00c9
                           0000CA   386 _T2CON_2	=	0x00ca
                           0000CB   387 _T2CON_3	=	0x00cb
                           0000CC   388 _T2CON_4	=	0x00cc
                           0000CD   389 _T2CON_5	=	0x00cd
                           0000CE   390 _T2CON_6	=	0x00ce
                           0000CF   391 _T2CON_7	=	0x00cf
                           0000C8   392 _CP_RL2	=	0x00c8
                           0000C9   393 _C_T2	=	0x00c9
                           0000CA   394 _TR2	=	0x00ca
                           0000CB   395 _EXEN2	=	0x00cb
                           0000CC   396 _TCLK	=	0x00cc
                           0000CD   397 _RCLK	=	0x00cd
                           0000CE   398 _EXF2	=	0x00ce
                           0000CF   399 _TF2	=	0x00cf
                           0000DF   400 _CF	=	0x00df
                           0000DE   401 _CR	=	0x00de
                           0000DC   402 _CCF4	=	0x00dc
                           0000DB   403 _CCF3	=	0x00db
                           0000DA   404 _CCF2	=	0x00da
                           0000D9   405 _CCF1	=	0x00d9
                           0000D8   406 _CCF0	=	0x00d8
                           0000AE   407 _EC	=	0x00ae
                           0000BE   408 _PPCL	=	0x00be
                           0000BD   409 _PT2L	=	0x00bd
                           0000BC   410 _PSL	=	0x00bc
                           0000BB   411 _PT1L	=	0x00bb
                           0000BA   412 _PX1L	=	0x00ba
                           0000B9   413 _PT0L	=	0x00b9
                           0000B8   414 _PX0L	=	0x00b8
                           0000C0   415 _P4_0	=	0x00c0
                           0000C1   416 _P4_1	=	0x00c1
                           0000C2   417 _P4_2	=	0x00c2
                           0000C3   418 _P4_3	=	0x00c3
                           0000C4   419 _P4_4	=	0x00c4
                           0000C5   420 _P4_5	=	0x00c5
                           0000C6   421 _P4_6	=	0x00c6
                           0000C7   422 _P4_7	=	0x00c7
                           0000E8   423 _P5_0	=	0x00e8
                           0000E9   424 _P5_1	=	0x00e9
                           0000EA   425 _P5_2	=	0x00ea
                           0000EB   426 _P5_3	=	0x00eb
                           0000EC   427 _P5_4	=	0x00ec
                           0000ED   428 _P5_5	=	0x00ed
                           0000EE   429 _P5_6	=	0x00ee
                           0000EF   430 _P5_7	=	0x00ef
                                    431 ;--------------------------------------------------------
                                    432 ; overlayable register banks
                                    433 ;--------------------------------------------------------
                                    434 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        435 	.ds 8
                                    436 ;--------------------------------------------------------
                                    437 ; internal ram data
                                    438 ;--------------------------------------------------------
                                    439 	.area DSEG    (DATA)
                                    440 ;--------------------------------------------------------
                                    441 ; overlayable items in internal ram 
                                    442 ;--------------------------------------------------------
                                    443 ;--------------------------------------------------------
                                    444 ; Stack segment in internal ram 
                                    445 ;--------------------------------------------------------
                                    446 	.area	SSEG
      000014                        447 __start__stack:
      000014                        448 	.ds	1
                                    449 
                                    450 ;--------------------------------------------------------
                                    451 ; indirectly addressable internal ram data
                                    452 ;--------------------------------------------------------
                                    453 	.area ISEG    (DATA)
                                    454 ;--------------------------------------------------------
                                    455 ; absolute internal ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area IABS    (ABS,DATA)
                                    458 	.area IABS    (ABS,DATA)
                                    459 ;--------------------------------------------------------
                                    460 ; bit data
                                    461 ;--------------------------------------------------------
                                    462 	.area BSEG    (BIT)
                                    463 ;--------------------------------------------------------
                                    464 ; paged external ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area PSEG    (PAG,XDATA)
                                    467 ;--------------------------------------------------------
                                    468 ; external ram data
                                    469 ;--------------------------------------------------------
                                    470 	.area XSEG    (XDATA)
      000400                        471 _ACK::
      000400                        472 	.ds 2
      000402                        473 _putchar_charToSend_65536_48:
      000402                        474 	.ds 2
      000404                        475 _take_address_input_65537_62:
      000404                        476 	.ds 4
      000408                        477 _take_address_address_65538_66:
      000408                        478 	.ds 2
      00040A                        479 _take_data_input_65537_71:
      00040A                        480 	.ds 4
      00040E                        481 _take_data_data_65538_75:
      00040E                        482 	.ds 1
      00040F                        483 _eeprom_write_PARM_2:
      00040F                        484 	.ds 1
      000410                        485 _eeprom_write_address_65536_79:
      000410                        486 	.ds 2
      000412                        487 _eeprom_read_address_65536_86:
      000412                        488 	.ds 2
      000414                        489 _i2c_write_data_65536_91:
      000414                        490 	.ds 1
      000415                        491 _i2c_read_ACK_65536_96:
      000415                        492 	.ds 2
      000417                        493 _i2c_read_buff_65536_97:
      000417                        494 	.ds 1
                                    495 ;--------------------------------------------------------
                                    496 ; absolute external ram data
                                    497 ;--------------------------------------------------------
                                    498 	.area XABS    (ABS,XDATA)
                                    499 ;--------------------------------------------------------
                                    500 ; external initialized ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area XISEG   (XDATA)
                                    503 	.area HOME    (CODE)
                                    504 	.area GSINIT0 (CODE)
                                    505 	.area GSINIT1 (CODE)
                                    506 	.area GSINIT2 (CODE)
                                    507 	.area GSINIT3 (CODE)
                                    508 	.area GSINIT4 (CODE)
                                    509 	.area GSINIT5 (CODE)
                                    510 	.area GSINIT  (CODE)
                                    511 	.area GSFINAL (CODE)
                                    512 	.area CSEG    (CODE)
                                    513 ;--------------------------------------------------------
                                    514 ; interrupt vector 
                                    515 ;--------------------------------------------------------
                                    516 	.area HOME    (CODE)
      003000                        517 __interrupt_vect:
      003000 02 30 06         [24]  518 	ljmp	__sdcc_gsinit_startup
                                    519 ;--------------------------------------------------------
                                    520 ; global & static initialisations
                                    521 ;--------------------------------------------------------
                                    522 	.area HOME    (CODE)
                                    523 	.area GSINIT  (CODE)
                                    524 	.area GSFINAL (CODE)
                                    525 	.area GSINIT  (CODE)
                                    526 	.globl __sdcc_gsinit_startup
                                    527 	.globl __sdcc_program_startup
                                    528 	.globl __start__stack
                                    529 	.globl __mcs51_genXINIT
                                    530 	.globl __mcs51_genXRAMCLEAR
                                    531 	.globl __mcs51_genRAMCLEAR
                                    532 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  533 	ljmp	__sdcc_program_startup
                                    534 ;--------------------------------------------------------
                                    535 ; Home
                                    536 ;--------------------------------------------------------
                                    537 	.area HOME    (CODE)
                                    538 	.area HOME    (CODE)
      003003                        539 __sdcc_program_startup:
      003003 02 31 A2         [24]  540 	ljmp	_main
                                    541 ;	return from main will return to caller
                                    542 ;--------------------------------------------------------
                                    543 ; code
                                    544 ;--------------------------------------------------------
                                    545 	.area CSEG    (CODE)
                                    546 ;------------------------------------------------------------
                                    547 ;Allocation info for local variables in function 'putchar'
                                    548 ;------------------------------------------------------------
                                    549 ;charToSend                Allocated with name '_putchar_charToSend_65536_48'
                                    550 ;------------------------------------------------------------
                                    551 ;	8051_i2c_eeprom.c:26: int putchar(int charToSend) {
                                    552 ;	-----------------------------------------
                                    553 ;	 function putchar
                                    554 ;	-----------------------------------------
      003062                        555 _putchar:
                           000007   556 	ar7 = 0x07
                           000006   557 	ar6 = 0x06
                           000005   558 	ar5 = 0x05
                           000004   559 	ar4 = 0x04
                           000003   560 	ar3 = 0x03
                           000002   561 	ar2 = 0x02
                           000001   562 	ar1 = 0x01
                           000000   563 	ar0 = 0x00
      003062 AF 83            [24]  564 	mov	r7,dph
      003064 E5 82            [12]  565 	mov	a,dpl
      003066 90 04 02         [24]  566 	mov	dptr,#_putchar_charToSend_65536_48
      003069 F0               [24]  567 	movx	@dptr,a
      00306A EF               [12]  568 	mov	a,r7
      00306B A3               [24]  569 	inc	dptr
      00306C F0               [24]  570 	movx	@dptr,a
                                    571 ;	8051_i2c_eeprom.c:27: SBUF = charToSend;  // Send character to serial buffer
      00306D 90 04 02         [24]  572 	mov	dptr,#_putchar_charToSend_65536_48
      003070 E0               [24]  573 	movx	a,@dptr
      003071 FE               [12]  574 	mov	r6,a
      003072 A3               [24]  575 	inc	dptr
      003073 E0               [24]  576 	movx	a,@dptr
      003074 FF               [12]  577 	mov	r7,a
      003075 8E 99            [24]  578 	mov	_SBUF,r6
                                    579 ;	8051_i2c_eeprom.c:28: while (!TI);        // Wait for transmission to complete
      003077                        580 00101$:
                                    581 ;	8051_i2c_eeprom.c:29: TI = 0;            // Clear transmission interrupt flag
                                    582 ;	assignBit
      003077 10 99 02         [24]  583 	jbc	_TI,00114$
      00307A 80 FB            [24]  584 	sjmp	00101$
      00307C                        585 00114$:
                                    586 ;	8051_i2c_eeprom.c:30: return charToSend;
      00307C 8E 82            [24]  587 	mov	dpl,r6
      00307E 8F 83            [24]  588 	mov	dph,r7
                                    589 ;	8051_i2c_eeprom.c:31: }
      003080 22               [24]  590 	ret
                                    591 ;------------------------------------------------------------
                                    592 ;Allocation info for local variables in function 'getchar'
                                    593 ;------------------------------------------------------------
                                    594 ;	8051_i2c_eeprom.c:33: int getchar(void) 
                                    595 ;	-----------------------------------------
                                    596 ;	 function getchar
                                    597 ;	-----------------------------------------
      003081                        598 _getchar:
                                    599 ;	8051_i2c_eeprom.c:35: while (!RI);        // Wait for reception to complete
      003081                        600 00101$:
                                    601 ;	8051_i2c_eeprom.c:36: RI = 0;            // Clear reception interrupt flag
                                    602 ;	assignBit
      003081 10 98 02         [24]  603 	jbc	_RI,00114$
      003084 80 FB            [24]  604 	sjmp	00101$
      003086                        605 00114$:
                                    606 ;	8051_i2c_eeprom.c:37: return SBUF;       // Return received character
      003086 AE 99            [24]  607 	mov	r6,_SBUF
      003088 7F 00            [12]  608 	mov	r7,#0x00
      00308A 8E 82            [24]  609 	mov	dpl,r6
      00308C 8F 83            [24]  610 	mov	dph,r7
                                    611 ;	8051_i2c_eeprom.c:38: }
      00308E 22               [24]  612 	ret
                                    613 ;------------------------------------------------------------
                                    614 ;Allocation info for local variables in function 'ui'
                                    615 ;------------------------------------------------------------
                                    616 ;	8051_i2c_eeprom.c:40: void ui()
                                    617 ;	-----------------------------------------
                                    618 ;	 function ui
                                    619 ;	-----------------------------------------
      00308F                        620 _ui:
                                    621 ;	8051_i2c_eeprom.c:42: printf("\n╔════════════════════════════════════════════════════════╗\n\r");
      00308F 74 2E            [12]  622 	mov	a,#___str_0
      003091 C0 E0            [24]  623 	push	acc
      003093 74 44            [12]  624 	mov	a,#(___str_0 >> 8)
      003095 C0 E0            [24]  625 	push	acc
      003097 74 80            [12]  626 	mov	a,#0x80
      003099 C0 E0            [24]  627 	push	acc
      00309B 12 39 CC         [24]  628 	lcall	_printf
      00309E 15 81            [12]  629 	dec	sp
      0030A0 15 81            [12]  630 	dec	sp
      0030A2 15 81            [12]  631 	dec	sp
                                    632 ;	8051_i2c_eeprom.c:43: printf("║           I2C Memory Management System v1.0             ║\n\r");
      0030A4 74 E0            [12]  633 	mov	a,#___str_1
      0030A6 C0 E0            [24]  634 	push	acc
      0030A8 74 44            [12]  635 	mov	a,#(___str_1 >> 8)
      0030AA C0 E0            [24]  636 	push	acc
      0030AC 74 80            [12]  637 	mov	a,#0x80
      0030AE C0 E0            [24]  638 	push	acc
      0030B0 12 39 CC         [24]  639 	lcall	_printf
      0030B3 15 81            [12]  640 	dec	sp
      0030B5 15 81            [12]  641 	dec	sp
      0030B7 15 81            [12]  642 	dec	sp
                                    643 ;	8051_i2c_eeprom.c:44: printf("╚════════════════════════════════════════════════════════╝\n\r");
      0030B9 74 22            [12]  644 	mov	a,#___str_2
      0030BB C0 E0            [24]  645 	push	acc
      0030BD 74 45            [12]  646 	mov	a,#(___str_2 >> 8)
      0030BF C0 E0            [24]  647 	push	acc
      0030C1 74 80            [12]  648 	mov	a,#0x80
      0030C3 C0 E0            [24]  649 	push	acc
      0030C5 12 39 CC         [24]  650 	lcall	_printf
      0030C8 15 81            [12]  651 	dec	sp
      0030CA 15 81            [12]  652 	dec	sp
      0030CC 15 81            [12]  653 	dec	sp
                                    654 ;	8051_i2c_eeprom.c:46: }
      0030CE 22               [24]  655 	ret
                                    656 ;------------------------------------------------------------
                                    657 ;Allocation info for local variables in function 'command_menu'
                                    658 ;------------------------------------------------------------
                                    659 ;	8051_i2c_eeprom.c:48: void command_menu()
                                    660 ;	-----------------------------------------
                                    661 ;	 function command_menu
                                    662 ;	-----------------------------------------
      0030CF                        663 _command_menu:
                                    664 ;	8051_i2c_eeprom.c:50: printf("\n\r┌────────────┬────────────────────────────────────────────┐\n\r");
      0030CF 74 D3            [12]  665 	mov	a,#___str_3
      0030D1 C0 E0            [24]  666 	push	acc
      0030D3 74 45            [12]  667 	mov	a,#(___str_3 >> 8)
      0030D5 C0 E0            [24]  668 	push	acc
      0030D7 74 80            [12]  669 	mov	a,#0x80
      0030D9 C0 E0            [24]  670 	push	acc
      0030DB 12 39 CC         [24]  671 	lcall	_printf
      0030DE 15 81            [12]  672 	dec	sp
      0030E0 15 81            [12]  673 	dec	sp
      0030E2 15 81            [12]  674 	dec	sp
                                    675 ;	8051_i2c_eeprom.c:51: printf("│  Command   │               Description                   │\n\r");
      0030E4 74 89            [12]  676 	mov	a,#___str_4
      0030E6 C0 E0            [24]  677 	push	acc
      0030E8 74 46            [12]  678 	mov	a,#(___str_4 >> 8)
      0030EA C0 E0            [24]  679 	push	acc
      0030EC 74 80            [12]  680 	mov	a,#0x80
      0030EE C0 E0            [24]  681 	push	acc
      0030F0 12 39 CC         [24]  682 	lcall	_printf
      0030F3 15 81            [12]  683 	dec	sp
      0030F5 15 81            [12]  684 	dec	sp
      0030F7 15 81            [12]  685 	dec	sp
                                    686 ;	8051_i2c_eeprom.c:52: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      0030F9 74 CE            [12]  687 	mov	a,#___str_5
      0030FB C0 E0            [24]  688 	push	acc
      0030FD 74 46            [12]  689 	mov	a,#(___str_5 >> 8)
      0030FF C0 E0            [24]  690 	push	acc
      003101 74 80            [12]  691 	mov	a,#0x80
      003103 C0 E0            [24]  692 	push	acc
      003105 12 39 CC         [24]  693 	lcall	_printf
      003108 15 81            [12]  694 	dec	sp
      00310A 15 81            [12]  695 	dec	sp
      00310C 15 81            [12]  696 	dec	sp
                                    697 ;	8051_i2c_eeprom.c:53: printf("│     R      │ Read from address                          │\n\r");
      00310E 74 82            [12]  698 	mov	a,#___str_6
      003110 C0 E0            [24]  699 	push	acc
      003112 74 47            [12]  700 	mov	a,#(___str_6 >> 8)
      003114 C0 E0            [24]  701 	push	acc
      003116 74 80            [12]  702 	mov	a,#0x80
      003118 C0 E0            [24]  703 	push	acc
      00311A 12 39 CC         [24]  704 	lcall	_printf
      00311D 15 81            [12]  705 	dec	sp
      00311F 15 81            [12]  706 	dec	sp
      003121 15 81            [12]  707 	dec	sp
                                    708 ;	8051_i2c_eeprom.c:54: printf("│     W      │ Write data to address                      │\n\r");
      003123 74 C6            [12]  709 	mov	a,#___str_7
      003125 C0 E0            [24]  710 	push	acc
      003127 74 47            [12]  711 	mov	a,#(___str_7 >> 8)
      003129 C0 E0            [24]  712 	push	acc
      00312B 74 80            [12]  713 	mov	a,#0x80
      00312D C0 E0            [24]  714 	push	acc
      00312F 12 39 CC         [24]  715 	lcall	_printf
      003132 15 81            [12]  716 	dec	sp
      003134 15 81            [12]  717 	dec	sp
      003136 15 81            [12]  718 	dec	sp
                                    719 ;	8051_i2c_eeprom.c:55: printf("│     H      │ Display hex dump                           │\n\r");
      003138 74 0A            [12]  720 	mov	a,#___str_8
      00313A C0 E0            [24]  721 	push	acc
      00313C 74 48            [12]  722 	mov	a,#(___str_8 >> 8)
      00313E C0 E0            [24]  723 	push	acc
      003140 74 80            [12]  724 	mov	a,#0x80
      003142 C0 E0            [24]  725 	push	acc
      003144 12 39 CC         [24]  726 	lcall	_printf
      003147 15 81            [12]  727 	dec	sp
      003149 15 81            [12]  728 	dec	sp
      00314B 15 81            [12]  729 	dec	sp
                                    730 ;	8051_i2c_eeprom.c:56: printf("│     X      │ Reset memory system                        │\n\r");
      00314D 74 4E            [12]  731 	mov	a,#___str_9
      00314F C0 E0            [24]  732 	push	acc
      003151 74 48            [12]  733 	mov	a,#(___str_9 >> 8)
      003153 C0 E0            [24]  734 	push	acc
      003155 74 80            [12]  735 	mov	a,#0x80
      003157 C0 E0            [24]  736 	push	acc
      003159 12 39 CC         [24]  737 	lcall	_printf
      00315C 15 81            [12]  738 	dec	sp
      00315E 15 81            [12]  739 	dec	sp
      003160 15 81            [12]  740 	dec	sp
                                    741 ;	8051_i2c_eeprom.c:57: printf("│     ?      │ Display this help menu                     │\n\r");
      003162 74 92            [12]  742 	mov	a,#___str_10
      003164 C0 E0            [24]  743 	push	acc
      003166 74 48            [12]  744 	mov	a,#(___str_10 >> 8)
      003168 C0 E0            [24]  745 	push	acc
      00316A 74 80            [12]  746 	mov	a,#0x80
      00316C C0 E0            [24]  747 	push	acc
      00316E 12 39 CC         [24]  748 	lcall	_printf
      003171 15 81            [12]  749 	dec	sp
      003173 15 81            [12]  750 	dec	sp
      003175 15 81            [12]  751 	dec	sp
                                    752 ;	8051_i2c_eeprom.c:58: printf("│     Q      │ Quit program                              │\n\r");
      003177 74 D6            [12]  753 	mov	a,#___str_11
      003179 C0 E0            [24]  754 	push	acc
      00317B 74 48            [12]  755 	mov	a,#(___str_11 >> 8)
      00317D C0 E0            [24]  756 	push	acc
      00317F 74 80            [12]  757 	mov	a,#0x80
      003181 C0 E0            [24]  758 	push	acc
      003183 12 39 CC         [24]  759 	lcall	_printf
      003186 15 81            [12]  760 	dec	sp
      003188 15 81            [12]  761 	dec	sp
      00318A 15 81            [12]  762 	dec	sp
                                    763 ;	8051_i2c_eeprom.c:59: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      00318C 74 19            [12]  764 	mov	a,#___str_12
      00318E C0 E0            [24]  765 	push	acc
      003190 74 49            [12]  766 	mov	a,#(___str_12 >> 8)
      003192 C0 E0            [24]  767 	push	acc
      003194 74 80            [12]  768 	mov	a,#0x80
      003196 C0 E0            [24]  769 	push	acc
      003198 12 39 CC         [24]  770 	lcall	_printf
      00319B 15 81            [12]  771 	dec	sp
      00319D 15 81            [12]  772 	dec	sp
      00319F 15 81            [12]  773 	dec	sp
                                    774 ;	8051_i2c_eeprom.c:62: }
      0031A1 22               [24]  775 	ret
                                    776 ;------------------------------------------------------------
                                    777 ;Allocation info for local variables in function 'main'
                                    778 ;------------------------------------------------------------
                                    779 ;user_input                Allocated with name '_main_user_input_131072_55'
                                    780 ;address                   Allocated with name '_main_address_262145_58'
                                    781 ;data                      Allocated with name '_main_data_262146_59'
                                    782 ;address                   Allocated with name '_main_address_262144_60'
                                    783 ;------------------------------------------------------------
                                    784 ;	8051_i2c_eeprom.c:63: int main()
                                    785 ;	-----------------------------------------
                                    786 ;	 function main
                                    787 ;	-----------------------------------------
      0031A2                        788 _main:
                                    789 ;	8051_i2c_eeprom.c:66: P1 &= ~(1<<3);  // Set P1.3 as output
      0031A2 53 90 F7         [24]  790 	anl	_P1,#0xf7
                                    791 ;	8051_i2c_eeprom.c:67: P1 &= ~(1<<4);  // Set P1.4 as output
      0031A5 53 90 EF         [24]  792 	anl	_P1,#0xef
                                    793 ;	8051_i2c_eeprom.c:68: ui();
      0031A8 12 30 8F         [24]  794 	lcall	_ui
                                    795 ;	8051_i2c_eeprom.c:69: command_menu();
      0031AB 12 30 CF         [24]  796 	lcall	_command_menu
                                    797 ;	8051_i2c_eeprom.c:70: while(1)
      0031AE                        798 00107$:
                                    799 ;	8051_i2c_eeprom.c:72: char user_input = getchar();
      0031AE 12 30 81         [24]  800 	lcall	_getchar
      0031B1 AE 82            [24]  801 	mov	r6,dpl
                                    802 ;	8051_i2c_eeprom.c:73: printf("$ %c\n\r", user_input);
      0031B3 8E 05            [24]  803 	mov	ar5,r6
      0031B5 7F 00            [12]  804 	mov	r7,#0x00
      0031B7 C0 06            [24]  805 	push	ar6
      0031B9 C0 05            [24]  806 	push	ar5
      0031BB C0 07            [24]  807 	push	ar7
      0031BD 74 CD            [12]  808 	mov	a,#___str_13
      0031BF C0 E0            [24]  809 	push	acc
      0031C1 74 49            [12]  810 	mov	a,#(___str_13 >> 8)
      0031C3 C0 E0            [24]  811 	push	acc
      0031C5 74 80            [12]  812 	mov	a,#0x80
      0031C7 C0 E0            [24]  813 	push	acc
      0031C9 12 39 CC         [24]  814 	lcall	_printf
      0031CC E5 81            [12]  815 	mov	a,sp
      0031CE 24 FB            [12]  816 	add	a,#0xfb
      0031D0 F5 81            [12]  817 	mov	sp,a
      0031D2 D0 06            [24]  818 	pop	ar6
                                    819 ;	8051_i2c_eeprom.c:74: switch(user_input)
      0031D4 BE 3F 03         [24]  820 	cjne	r6,#0x3f,00127$
      0031D7 02 32 50         [24]  821 	ljmp	00103$
      0031DA                        822 00127$:
      0031DA BE 52 02         [24]  823 	cjne	r6,#0x52,00128$
      0031DD 80 68            [24]  824 	sjmp	00102$
      0031DF                        825 00128$:
      0031DF BE 57 74         [24]  826 	cjne	r6,#0x57,00104$
                                    827 ;	8051_i2c_eeprom.c:78: printf("\n┌─────────────── WRITE OPERATION ──────────────┐\n\r");
      0031E2 74 D4            [12]  828 	mov	a,#___str_14
      0031E4 C0 E0            [24]  829 	push	acc
      0031E6 74 49            [12]  830 	mov	a,#(___str_14 >> 8)
      0031E8 C0 E0            [24]  831 	push	acc
      0031EA 74 80            [12]  832 	mov	a,#0x80
      0031EC C0 E0            [24]  833 	push	acc
      0031EE 12 39 CC         [24]  834 	lcall	_printf
      0031F1 15 81            [12]  835 	dec	sp
      0031F3 15 81            [12]  836 	dec	sp
      0031F5 15 81            [12]  837 	dec	sp
                                    838 ;	8051_i2c_eeprom.c:80: address = take_address(); 
      0031F7 12 32 6E         [24]  839 	lcall	_take_address
      0031FA AE 82            [24]  840 	mov	r6,dpl
      0031FC AF 83            [24]  841 	mov	r7,dph
                                    842 ;	8051_i2c_eeprom.c:82: data = take_data();
      0031FE C0 07            [24]  843 	push	ar7
      003200 C0 06            [24]  844 	push	ar6
      003202 12 34 32         [24]  845 	lcall	_take_data
      003205 AD 82            [24]  846 	mov	r5,dpl
      003207 D0 06            [24]  847 	pop	ar6
      003209 D0 07            [24]  848 	pop	ar7
                                    849 ;	8051_i2c_eeprom.c:83: printf("| Writing at Address %d Data %c          |\n\r", address, data);
      00320B 8D 03            [24]  850 	mov	ar3,r5
      00320D 7C 00            [12]  851 	mov	r4,#0x00
      00320F C0 07            [24]  852 	push	ar7
      003211 C0 06            [24]  853 	push	ar6
      003213 C0 05            [24]  854 	push	ar5
      003215 C0 03            [24]  855 	push	ar3
      003217 C0 04            [24]  856 	push	ar4
      003219 C0 06            [24]  857 	push	ar6
      00321B C0 07            [24]  858 	push	ar7
      00321D 74 46            [12]  859 	mov	a,#___str_15
      00321F C0 E0            [24]  860 	push	acc
      003221 74 4A            [12]  861 	mov	a,#(___str_15 >> 8)
      003223 C0 E0            [24]  862 	push	acc
      003225 74 80            [12]  863 	mov	a,#0x80
      003227 C0 E0            [24]  864 	push	acc
      003229 12 39 CC         [24]  865 	lcall	_printf
      00322C E5 81            [12]  866 	mov	a,sp
      00322E 24 F9            [12]  867 	add	a,#0xf9
      003230 F5 81            [12]  868 	mov	sp,a
      003232 D0 05            [24]  869 	pop	ar5
      003234 D0 06            [24]  870 	pop	ar6
      003236 D0 07            [24]  871 	pop	ar7
                                    872 ;	8051_i2c_eeprom.c:84: eeprom_write(address, data);
      003238 90 04 0F         [24]  873 	mov	dptr,#_eeprom_write_PARM_2
      00323B ED               [12]  874 	mov	a,r5
      00323C F0               [24]  875 	movx	@dptr,a
      00323D 8E 82            [24]  876 	mov	dpl,r6
      00323F 8F 83            [24]  877 	mov	dph,r7
      003241 12 35 A4         [24]  878 	lcall	_eeprom_write
                                    879 ;	8051_i2c_eeprom.c:85: break;
      003244 02 31 AE         [24]  880 	ljmp	00107$
                                    881 ;	8051_i2c_eeprom.c:87: case 'R':
      003247                        882 00102$:
                                    883 ;	8051_i2c_eeprom.c:90: address = take_address(); 
      003247 12 32 6E         [24]  884 	lcall	_take_address
                                    885 ;	8051_i2c_eeprom.c:91: eeprom_read(address);
      00324A 12 36 DD         [24]  886 	lcall	_eeprom_read
                                    887 ;	8051_i2c_eeprom.c:92: break;
      00324D 02 31 AE         [24]  888 	ljmp	00107$
                                    889 ;	8051_i2c_eeprom.c:95: case '?':
      003250                        890 00103$:
                                    891 ;	8051_i2c_eeprom.c:96: command_menu();
      003250 12 30 CF         [24]  892 	lcall	_command_menu
                                    893 ;	8051_i2c_eeprom.c:97: break;
      003253 02 31 AE         [24]  894 	ljmp	00107$
                                    895 ;	8051_i2c_eeprom.c:99: default:
      003256                        896 00104$:
                                    897 ;	8051_i2c_eeprom.c:100: printf("INVALID INPUT\n\r");
      003256 74 73            [12]  898 	mov	a,#___str_16
      003258 C0 E0            [24]  899 	push	acc
      00325A 74 4A            [12]  900 	mov	a,#(___str_16 >> 8)
      00325C C0 E0            [24]  901 	push	acc
      00325E 74 80            [12]  902 	mov	a,#0x80
      003260 C0 E0            [24]  903 	push	acc
      003262 12 39 CC         [24]  904 	lcall	_printf
      003265 15 81            [12]  905 	dec	sp
      003267 15 81            [12]  906 	dec	sp
      003269 15 81            [12]  907 	dec	sp
                                    908 ;	8051_i2c_eeprom.c:102: }
                                    909 ;	8051_i2c_eeprom.c:105: }
      00326B 02 31 AE         [24]  910 	ljmp	00107$
                                    911 ;------------------------------------------------------------
                                    912 ;Allocation info for local variables in function 'take_address'
                                    913 ;------------------------------------------------------------
                                    914 ;input                     Allocated with name '_take_address_input_65537_62'
                                    915 ;i                         Allocated with name '_take_address_i_65537_62'
                                    916 ;c                         Allocated with name '_take_address_c_65537_62'
                                    917 ;address                   Allocated with name '_take_address_address_65538_66'
                                    918 ;------------------------------------------------------------
                                    919 ;	8051_i2c_eeprom.c:107: unsigned int take_address() 
                                    920 ;	-----------------------------------------
                                    921 ;	 function take_address
                                    922 ;	-----------------------------------------
      00326E                        923 _take_address:
                                    924 ;	8051_i2c_eeprom.c:109: printf("│ Enter address (hex, up to 3 characters): \n\r|");
      00326E 74 83            [12]  925 	mov	a,#___str_17
      003270 C0 E0            [24]  926 	push	acc
      003272 74 4A            [12]  927 	mov	a,#(___str_17 >> 8)
      003274 C0 E0            [24]  928 	push	acc
      003276 74 80            [12]  929 	mov	a,#0x80
      003278 C0 E0            [24]  930 	push	acc
      00327A 12 39 CC         [24]  931 	lcall	_printf
      00327D 15 81            [12]  932 	dec	sp
      00327F 15 81            [12]  933 	dec	sp
      003281 15 81            [12]  934 	dec	sp
                                    935 ;	8051_i2c_eeprom.c:110: char input[4] = {0};  // Array for 3 hex chars + null terminator
      003283 90 04 04         [24]  936 	mov	dptr,#_take_address_input_65537_62
      003286 E4               [12]  937 	clr	a
      003287 F0               [24]  938 	movx	@dptr,a
      003288 90 04 05         [24]  939 	mov	dptr,#(_take_address_input_65537_62 + 0x0001)
      00328B F0               [24]  940 	movx	@dptr,a
      00328C 90 04 06         [24]  941 	mov	dptr,#(_take_address_input_65537_62 + 0x0002)
      00328F F0               [24]  942 	movx	@dptr,a
      003290 90 04 07         [24]  943 	mov	dptr,#(_take_address_input_65537_62 + 0x0003)
      003293 F0               [24]  944 	movx	@dptr,a
                                    945 ;	8051_i2c_eeprom.c:114: printf("$ ");
      003294 74 B4            [12]  946 	mov	a,#___str_18
      003296 C0 E0            [24]  947 	push	acc
      003298 74 4A            [12]  948 	mov	a,#(___str_18 >> 8)
      00329A C0 E0            [24]  949 	push	acc
      00329C 74 80            [12]  950 	mov	a,#0x80
      00329E C0 E0            [24]  951 	push	acc
      0032A0 12 39 CC         [24]  952 	lcall	_printf
      0032A3 15 81            [12]  953 	dec	sp
      0032A5 15 81            [12]  954 	dec	sp
      0032A7 15 81            [12]  955 	dec	sp
                                    956 ;	8051_i2c_eeprom.c:116: while (i < 3) {
      0032A9 7E 00            [12]  957 	mov	r6,#0x00
      0032AB 7F 00            [12]  958 	mov	r7,#0x00
      0032AD                        959 00111$:
      0032AD C3               [12]  960 	clr	c
      0032AE EE               [12]  961 	mov	a,r6
      0032AF 94 03            [12]  962 	subb	a,#0x03
      0032B1 EF               [12]  963 	mov	a,r7
      0032B2 64 80            [12]  964 	xrl	a,#0x80
      0032B4 94 80            [12]  965 	subb	a,#0x80
      0032B6 50 5B            [24]  966 	jnc	00113$
                                    967 ;	8051_i2c_eeprom.c:118: c = getchar();
      0032B8 C0 07            [24]  968 	push	ar7
      0032BA C0 06            [24]  969 	push	ar6
      0032BC 12 30 81         [24]  970 	lcall	_getchar
      0032BF AC 82            [24]  971 	mov	r4,dpl
      0032C1 AD 83            [24]  972 	mov	r5,dph
      0032C3 D0 06            [24]  973 	pop	ar6
      0032C5 D0 07            [24]  974 	pop	ar7
                                    975 ;	8051_i2c_eeprom.c:121: if (c == '\r' || c == '\n') {
      0032C7 BC 0D 02         [24]  976 	cjne	r4,#0x0d,00200$
      0032CA 80 47            [24]  977 	sjmp	00113$
      0032CC                        978 00200$:
      0032CC BC 0A 02         [24]  979 	cjne	r4,#0x0a,00201$
      0032CF 80 42            [24]  980 	sjmp	00113$
      0032D1                        981 00201$:
                                    982 ;	8051_i2c_eeprom.c:126: if ((c >= '0' && c <= '9') || 
      0032D1 BC 30 00         [24]  983 	cjne	r4,#0x30,00202$
      0032D4                        984 00202$:
      0032D4 40 05            [24]  985 	jc	00108$
      0032D6 EC               [12]  986 	mov	a,r4
      0032D7 24 C6            [12]  987 	add	a,#0xff - 0x39
      0032D9 50 14            [24]  988 	jnc	00104$
      0032DB                        989 00108$:
                                    990 ;	8051_i2c_eeprom.c:127: (c >= 'a' && c <= 'f') || 
      0032DB BC 61 00         [24]  991 	cjne	r4,#0x61,00205$
      0032DE                        992 00205$:
      0032DE 40 05            [24]  993 	jc	00110$
      0032E0 EC               [12]  994 	mov	a,r4
      0032E1 24 99            [12]  995 	add	a,#0xff - 0x66
      0032E3 50 0A            [24]  996 	jnc	00104$
      0032E5                        997 00110$:
                                    998 ;	8051_i2c_eeprom.c:128: (c >= 'A' && c <= 'F')) {
      0032E5 BC 41 00         [24]  999 	cjne	r4,#0x41,00208$
      0032E8                       1000 00208$:
      0032E8 40 C3            [24] 1001 	jc	00111$
      0032EA EC               [12] 1002 	mov	a,r4
      0032EB 24 B9            [12] 1003 	add	a,#0xff - 0x46
      0032ED 40 BE            [24] 1004 	jc	00111$
      0032EF                       1005 00104$:
                                   1006 ;	8051_i2c_eeprom.c:130: input[i] = c;
      0032EF EE               [12] 1007 	mov	a,r6
      0032F0 24 04            [12] 1008 	add	a,#_take_address_input_65537_62
      0032F2 F5 82            [12] 1009 	mov	dpl,a
      0032F4 EF               [12] 1010 	mov	a,r7
      0032F5 34 04            [12] 1011 	addc	a,#(_take_address_input_65537_62 >> 8)
      0032F7 F5 83            [12] 1012 	mov	dph,a
      0032F9 EC               [12] 1013 	mov	a,r4
      0032FA F0               [24] 1014 	movx	@dptr,a
                                   1015 ;	8051_i2c_eeprom.c:131: putchar(c);  // Echo character back
      0032FB 7D 00            [12] 1016 	mov	r5,#0x00
      0032FD 8C 82            [24] 1017 	mov	dpl,r4
      0032FF 8D 83            [24] 1018 	mov	dph,r5
      003301 C0 07            [24] 1019 	push	ar7
      003303 C0 06            [24] 1020 	push	ar6
      003305 12 30 62         [24] 1021 	lcall	_putchar
      003308 D0 06            [24] 1022 	pop	ar6
      00330A D0 07            [24] 1023 	pop	ar7
                                   1024 ;	8051_i2c_eeprom.c:132: i++;
      00330C 0E               [12] 1025 	inc	r6
      00330D BE 00 9D         [24] 1026 	cjne	r6,#0x00,00111$
      003310 0F               [12] 1027 	inc	r7
      003311 80 9A            [24] 1028 	sjmp	00111$
      003313                       1029 00113$:
                                   1030 ;	8051_i2c_eeprom.c:136: input[i] = '\0';  // Null-terminate the string
      003313 EE               [12] 1031 	mov	a,r6
      003314 24 04            [12] 1032 	add	a,#_take_address_input_65537_62
      003316 F5 82            [12] 1033 	mov	dpl,a
      003318 EF               [12] 1034 	mov	a,r7
      003319 34 04            [12] 1035 	addc	a,#(_take_address_input_65537_62 >> 8)
      00331B F5 83            [12] 1036 	mov	dph,a
      00331D E4               [12] 1037 	clr	a
      00331E F0               [24] 1038 	movx	@dptr,a
                                   1039 ;	8051_i2c_eeprom.c:139: unsigned int address = 0;
      00331F 90 04 08         [24] 1040 	mov	dptr,#_take_address_address_65538_66
      003322 F0               [24] 1041 	movx	@dptr,a
      003323 A3               [24] 1042 	inc	dptr
      003324 F0               [24] 1043 	movx	@dptr,a
                                   1044 ;	8051_i2c_eeprom.c:140: for(i = 0; input[i] != '\0'; i++) {
      003325 7E 00            [12] 1045 	mov	r6,#0x00
      003327 7F 00            [12] 1046 	mov	r7,#0x00
      003329                       1047 00129$:
      003329 EE               [12] 1048 	mov	a,r6
      00332A 24 04            [12] 1049 	add	a,#_take_address_input_65537_62
      00332C F5 82            [12] 1050 	mov	dpl,a
      00332E EF               [12] 1051 	mov	a,r7
      00332F 34 04            [12] 1052 	addc	a,#(_take_address_input_65537_62 >> 8)
      003331 F5 83            [12] 1053 	mov	dph,a
      003333 E0               [24] 1054 	movx	a,@dptr
      003334 FD               [12] 1055 	mov	r5,a
      003335 70 03            [24] 1056 	jnz	00212$
      003337 02 33 E2         [24] 1057 	ljmp	00125$
      00333A                       1058 00212$:
                                   1059 ;	8051_i2c_eeprom.c:141: address = address * 16;
      00333A 90 04 08         [24] 1060 	mov	dptr,#_take_address_address_65538_66
      00333D E0               [24] 1061 	movx	a,@dptr
      00333E FB               [12] 1062 	mov	r3,a
      00333F A3               [24] 1063 	inc	dptr
      003340 E0               [24] 1064 	movx	a,@dptr
      003341 C4               [12] 1065 	swap	a
      003342 54 F0            [12] 1066 	anl	a,#0xf0
      003344 CB               [12] 1067 	xch	a,r3
      003345 C4               [12] 1068 	swap	a
      003346 CB               [12] 1069 	xch	a,r3
      003347 6B               [12] 1070 	xrl	a,r3
      003348 CB               [12] 1071 	xch	a,r3
      003349 54 F0            [12] 1072 	anl	a,#0xf0
      00334B CB               [12] 1073 	xch	a,r3
      00334C 6B               [12] 1074 	xrl	a,r3
      00334D FC               [12] 1075 	mov	r4,a
      00334E 90 04 08         [24] 1076 	mov	dptr,#_take_address_address_65538_66
      003351 EB               [12] 1077 	mov	a,r3
      003352 F0               [24] 1078 	movx	@dptr,a
      003353 EC               [12] 1079 	mov	a,r4
      003354 A3               [24] 1080 	inc	dptr
      003355 F0               [24] 1081 	movx	@dptr,a
                                   1082 ;	8051_i2c_eeprom.c:142: if(input[i] >= '0' && input[i] <= '9')
      003356 BD 30 00         [24] 1083 	cjne	r5,#0x30,00213$
      003359                       1084 00213$:
      003359 40 23            [24] 1085 	jc	00122$
      00335B ED               [12] 1086 	mov	a,r5
      00335C 24 C6            [12] 1087 	add	a,#0xff - 0x39
      00335E 40 1E            [24] 1088 	jc	00122$
                                   1089 ;	8051_i2c_eeprom.c:143: address += input[i] - '0';
      003360 7C 00            [12] 1090 	mov	r4,#0x00
      003362 ED               [12] 1091 	mov	a,r5
      003363 24 D0            [12] 1092 	add	a,#0xd0
      003365 FD               [12] 1093 	mov	r5,a
      003366 EC               [12] 1094 	mov	a,r4
      003367 34 FF            [12] 1095 	addc	a,#0xff
      003369 FC               [12] 1096 	mov	r4,a
      00336A 90 04 08         [24] 1097 	mov	dptr,#_take_address_address_65538_66
      00336D E0               [24] 1098 	movx	a,@dptr
      00336E FA               [12] 1099 	mov	r2,a
      00336F A3               [24] 1100 	inc	dptr
      003370 E0               [24] 1101 	movx	a,@dptr
      003371 FB               [12] 1102 	mov	r3,a
      003372 90 04 08         [24] 1103 	mov	dptr,#_take_address_address_65538_66
      003375 ED               [12] 1104 	mov	a,r5
      003376 2A               [12] 1105 	add	a,r2
      003377 F0               [24] 1106 	movx	@dptr,a
      003378 EC               [12] 1107 	mov	a,r4
      003379 3B               [12] 1108 	addc	a,r3
      00337A A3               [24] 1109 	inc	dptr
      00337B F0               [24] 1110 	movx	@dptr,a
      00337C 80 5C            [24] 1111 	sjmp	00130$
      00337E                       1112 00122$:
                                   1113 ;	8051_i2c_eeprom.c:144: else if(input[i] >= 'A' && input[i] <= 'F')
      00337E EE               [12] 1114 	mov	a,r6
      00337F 24 04            [12] 1115 	add	a,#_take_address_input_65537_62
      003381 F5 82            [12] 1116 	mov	dpl,a
      003383 EF               [12] 1117 	mov	a,r7
      003384 34 04            [12] 1118 	addc	a,#(_take_address_input_65537_62 >> 8)
      003386 F5 83            [12] 1119 	mov	dph,a
      003388 E0               [24] 1120 	movx	a,@dptr
      003389 FD               [12] 1121 	mov	r5,a
      00338A BD 41 00         [24] 1122 	cjne	r5,#0x41,00216$
      00338D                       1123 00216$:
      00338D 40 25            [24] 1124 	jc	00118$
      00338F ED               [12] 1125 	mov	a,r5
      003390 24 B9            [12] 1126 	add	a,#0xff - 0x46
      003392 40 20            [24] 1127 	jc	00118$
                                   1128 ;	8051_i2c_eeprom.c:145: address += input[i] - 'A' + 10;
      003394 8D 03            [24] 1129 	mov	ar3,r5
      003396 7C 00            [12] 1130 	mov	r4,#0x00
      003398 74 C9            [12] 1131 	mov	a,#0xc9
      00339A 2B               [12] 1132 	add	a,r3
      00339B FB               [12] 1133 	mov	r3,a
      00339C 74 FF            [12] 1134 	mov	a,#0xff
      00339E 3C               [12] 1135 	addc	a,r4
      00339F FC               [12] 1136 	mov	r4,a
      0033A0 90 04 08         [24] 1137 	mov	dptr,#_take_address_address_65538_66
      0033A3 E0               [24] 1138 	movx	a,@dptr
      0033A4 F9               [12] 1139 	mov	r1,a
      0033A5 A3               [24] 1140 	inc	dptr
      0033A6 E0               [24] 1141 	movx	a,@dptr
      0033A7 FA               [12] 1142 	mov	r2,a
      0033A8 90 04 08         [24] 1143 	mov	dptr,#_take_address_address_65538_66
      0033AB EB               [12] 1144 	mov	a,r3
      0033AC 29               [12] 1145 	add	a,r1
      0033AD F0               [24] 1146 	movx	@dptr,a
      0033AE EC               [12] 1147 	mov	a,r4
      0033AF 3A               [12] 1148 	addc	a,r2
      0033B0 A3               [24] 1149 	inc	dptr
      0033B1 F0               [24] 1150 	movx	@dptr,a
      0033B2 80 26            [24] 1151 	sjmp	00130$
      0033B4                       1152 00118$:
                                   1153 ;	8051_i2c_eeprom.c:146: else if(input[i] >= 'a' && input[i] <= 'f')
      0033B4 BD 61 00         [24] 1154 	cjne	r5,#0x61,00219$
      0033B7                       1155 00219$:
      0033B7 40 21            [24] 1156 	jc	00130$
      0033B9 ED               [12] 1157 	mov	a,r5
      0033BA 24 99            [12] 1158 	add	a,#0xff - 0x66
      0033BC 40 1C            [24] 1159 	jc	00130$
                                   1160 ;	8051_i2c_eeprom.c:147: address += input[i] - 'a' + 10;
      0033BE 7C 00            [12] 1161 	mov	r4,#0x00
      0033C0 74 A9            [12] 1162 	mov	a,#0xa9
      0033C2 2D               [12] 1163 	add	a,r5
      0033C3 FD               [12] 1164 	mov	r5,a
      0033C4 74 FF            [12] 1165 	mov	a,#0xff
      0033C6 3C               [12] 1166 	addc	a,r4
      0033C7 FC               [12] 1167 	mov	r4,a
      0033C8 90 04 08         [24] 1168 	mov	dptr,#_take_address_address_65538_66
      0033CB E0               [24] 1169 	movx	a,@dptr
      0033CC FA               [12] 1170 	mov	r2,a
      0033CD A3               [24] 1171 	inc	dptr
      0033CE E0               [24] 1172 	movx	a,@dptr
      0033CF FB               [12] 1173 	mov	r3,a
      0033D0 90 04 08         [24] 1174 	mov	dptr,#_take_address_address_65538_66
      0033D3 ED               [12] 1175 	mov	a,r5
      0033D4 2A               [12] 1176 	add	a,r2
      0033D5 F0               [24] 1177 	movx	@dptr,a
      0033D6 EC               [12] 1178 	mov	a,r4
      0033D7 3B               [12] 1179 	addc	a,r3
      0033D8 A3               [24] 1180 	inc	dptr
      0033D9 F0               [24] 1181 	movx	@dptr,a
      0033DA                       1182 00130$:
                                   1183 ;	8051_i2c_eeprom.c:140: for(i = 0; input[i] != '\0'; i++) {
      0033DA 0E               [12] 1184 	inc	r6
      0033DB BE 00 01         [24] 1185 	cjne	r6,#0x00,00222$
      0033DE 0F               [12] 1186 	inc	r7
      0033DF                       1187 00222$:
      0033DF 02 33 29         [24] 1188 	ljmp	00129$
      0033E2                       1189 00125$:
                                   1190 ;	8051_i2c_eeprom.c:150: printf("\n\r│ Entered address: 0x%03X\n\r", address);
      0033E2 90 04 08         [24] 1191 	mov	dptr,#_take_address_address_65538_66
      0033E5 E0               [24] 1192 	movx	a,@dptr
      0033E6 FE               [12] 1193 	mov	r6,a
      0033E7 A3               [24] 1194 	inc	dptr
      0033E8 E0               [24] 1195 	movx	a,@dptr
      0033E9 FF               [12] 1196 	mov	r7,a
      0033EA C0 07            [24] 1197 	push	ar7
      0033EC C0 06            [24] 1198 	push	ar6
      0033EE C0 06            [24] 1199 	push	ar6
      0033F0 C0 07            [24] 1200 	push	ar7
      0033F2 74 B7            [12] 1201 	mov	a,#___str_19
      0033F4 C0 E0            [24] 1202 	push	acc
      0033F6 74 4A            [12] 1203 	mov	a,#(___str_19 >> 8)
      0033F8 C0 E0            [24] 1204 	push	acc
      0033FA 74 80            [12] 1205 	mov	a,#0x80
      0033FC C0 E0            [24] 1206 	push	acc
      0033FE 12 39 CC         [24] 1207 	lcall	_printf
      003401 E5 81            [12] 1208 	mov	a,sp
      003403 24 FB            [12] 1209 	add	a,#0xfb
      003405 F5 81            [12] 1210 	mov	sp,a
      003407 D0 06            [24] 1211 	pop	ar6
      003409 D0 07            [24] 1212 	pop	ar7
                                   1213 ;	8051_i2c_eeprom.c:151: if(address > 0x7ff) 
      00340B C3               [12] 1214 	clr	c
      00340C 74 FF            [12] 1215 	mov	a,#0xff
      00340E 9E               [12] 1216 	subb	a,r6
      00340F 74 07            [12] 1217 	mov	a,#0x07
      003411 9F               [12] 1218 	subb	a,r7
      003412 50 19            [24] 1219 	jnc	00127$
                                   1220 ;	8051_i2c_eeprom.c:153: printf("Address out of Range\n\r");
      003414 74 D7            [12] 1221 	mov	a,#___str_20
      003416 C0 E0            [24] 1222 	push	acc
      003418 74 4A            [12] 1223 	mov	a,#(___str_20 >> 8)
      00341A C0 E0            [24] 1224 	push	acc
      00341C 74 80            [12] 1225 	mov	a,#0x80
      00341E C0 E0            [24] 1226 	push	acc
      003420 12 39 CC         [24] 1227 	lcall	_printf
      003423 15 81            [12] 1228 	dec	sp
      003425 15 81            [12] 1229 	dec	sp
      003427 15 81            [12] 1230 	dec	sp
                                   1231 ;	8051_i2c_eeprom.c:154: return 0;
      003429 90 00 00         [24] 1232 	mov	dptr,#0x0000
      00342C 22               [24] 1233 	ret
      00342D                       1234 00127$:
                                   1235 ;	8051_i2c_eeprom.c:156: return address;
      00342D 8E 82            [24] 1236 	mov	dpl,r6
      00342F 8F 83            [24] 1237 	mov	dph,r7
                                   1238 ;	8051_i2c_eeprom.c:157: }
      003431 22               [24] 1239 	ret
                                   1240 ;------------------------------------------------------------
                                   1241 ;Allocation info for local variables in function 'take_data'
                                   1242 ;------------------------------------------------------------
                                   1243 ;input                     Allocated with name '_take_data_input_65537_71'
                                   1244 ;i                         Allocated with name '_take_data_i_65537_71'
                                   1245 ;c                         Allocated with name '_take_data_c_65537_71'
                                   1246 ;data                      Allocated with name '_take_data_data_65538_75'
                                   1247 ;------------------------------------------------------------
                                   1248 ;	8051_i2c_eeprom.c:159: unsigned char take_data()
                                   1249 ;	-----------------------------------------
                                   1250 ;	 function take_data
                                   1251 ;	-----------------------------------------
      003432                       1252 _take_data:
                                   1253 ;	8051_i2c_eeprom.c:161: printf("│ Enter data (hex, up to 2 characters): \n\r|");
      003432 74 EE            [12] 1254 	mov	a,#___str_21
      003434 C0 E0            [24] 1255 	push	acc
      003436 74 4A            [12] 1256 	mov	a,#(___str_21 >> 8)
      003438 C0 E0            [24] 1257 	push	acc
      00343A 74 80            [12] 1258 	mov	a,#0x80
      00343C C0 E0            [24] 1259 	push	acc
      00343E 12 39 CC         [24] 1260 	lcall	_printf
      003441 15 81            [12] 1261 	dec	sp
      003443 15 81            [12] 1262 	dec	sp
      003445 15 81            [12] 1263 	dec	sp
                                   1264 ;	8051_i2c_eeprom.c:162: char input[4] = {0};  // Array for 3 hex chars + null terminator
      003447 90 04 0A         [24] 1265 	mov	dptr,#_take_data_input_65537_71
      00344A E4               [12] 1266 	clr	a
      00344B F0               [24] 1267 	movx	@dptr,a
      00344C 90 04 0B         [24] 1268 	mov	dptr,#(_take_data_input_65537_71 + 0x0001)
      00344F F0               [24] 1269 	movx	@dptr,a
      003450 90 04 0C         [24] 1270 	mov	dptr,#(_take_data_input_65537_71 + 0x0002)
      003453 F0               [24] 1271 	movx	@dptr,a
      003454 90 04 0D         [24] 1272 	mov	dptr,#(_take_data_input_65537_71 + 0x0003)
      003457 F0               [24] 1273 	movx	@dptr,a
                                   1274 ;	8051_i2c_eeprom.c:166: printf("$ ");
      003458 74 B4            [12] 1275 	mov	a,#___str_18
      00345A C0 E0            [24] 1276 	push	acc
      00345C 74 4A            [12] 1277 	mov	a,#(___str_18 >> 8)
      00345E C0 E0            [24] 1278 	push	acc
      003460 74 80            [12] 1279 	mov	a,#0x80
      003462 C0 E0            [24] 1280 	push	acc
      003464 12 39 CC         [24] 1281 	lcall	_printf
      003467 15 81            [12] 1282 	dec	sp
      003469 15 81            [12] 1283 	dec	sp
      00346B 15 81            [12] 1284 	dec	sp
                                   1285 ;	8051_i2c_eeprom.c:168: while (i < 3) {
      00346D 7E 00            [12] 1286 	mov	r6,#0x00
      00346F 7F 00            [12] 1287 	mov	r7,#0x00
      003471                       1288 00111$:
      003471 C3               [12] 1289 	clr	c
      003472 EE               [12] 1290 	mov	a,r6
      003473 94 03            [12] 1291 	subb	a,#0x03
      003475 EF               [12] 1292 	mov	a,r7
      003476 64 80            [12] 1293 	xrl	a,#0x80
      003478 94 80            [12] 1294 	subb	a,#0x80
      00347A 50 5B            [24] 1295 	jnc	00113$
                                   1296 ;	8051_i2c_eeprom.c:170: c = getchar();
      00347C C0 07            [24] 1297 	push	ar7
      00347E C0 06            [24] 1298 	push	ar6
      003480 12 30 81         [24] 1299 	lcall	_getchar
      003483 AC 82            [24] 1300 	mov	r4,dpl
      003485 AD 83            [24] 1301 	mov	r5,dph
      003487 D0 06            [24] 1302 	pop	ar6
      003489 D0 07            [24] 1303 	pop	ar7
                                   1304 ;	8051_i2c_eeprom.c:173: if (c == '\r' || c == '\n') {
      00348B BC 0D 02         [24] 1305 	cjne	r4,#0x0d,00200$
      00348E 80 47            [24] 1306 	sjmp	00113$
      003490                       1307 00200$:
      003490 BC 0A 02         [24] 1308 	cjne	r4,#0x0a,00201$
      003493 80 42            [24] 1309 	sjmp	00113$
      003495                       1310 00201$:
                                   1311 ;	8051_i2c_eeprom.c:178: if ((c >= '0' && c <= '9') || 
      003495 BC 30 00         [24] 1312 	cjne	r4,#0x30,00202$
      003498                       1313 00202$:
      003498 40 05            [24] 1314 	jc	00108$
      00349A EC               [12] 1315 	mov	a,r4
      00349B 24 C6            [12] 1316 	add	a,#0xff - 0x39
      00349D 50 14            [24] 1317 	jnc	00104$
      00349F                       1318 00108$:
                                   1319 ;	8051_i2c_eeprom.c:179: (c >= 'a' && c <= 'f') || 
      00349F BC 61 00         [24] 1320 	cjne	r4,#0x61,00205$
      0034A2                       1321 00205$:
      0034A2 40 05            [24] 1322 	jc	00110$
      0034A4 EC               [12] 1323 	mov	a,r4
      0034A5 24 99            [12] 1324 	add	a,#0xff - 0x66
      0034A7 50 0A            [24] 1325 	jnc	00104$
      0034A9                       1326 00110$:
                                   1327 ;	8051_i2c_eeprom.c:180: (c >= 'A' && c <= 'F')) {
      0034A9 BC 41 00         [24] 1328 	cjne	r4,#0x41,00208$
      0034AC                       1329 00208$:
      0034AC 40 C3            [24] 1330 	jc	00111$
      0034AE EC               [12] 1331 	mov	a,r4
      0034AF 24 B9            [12] 1332 	add	a,#0xff - 0x46
      0034B1 40 BE            [24] 1333 	jc	00111$
      0034B3                       1334 00104$:
                                   1335 ;	8051_i2c_eeprom.c:182: input[i] = c;
      0034B3 EE               [12] 1336 	mov	a,r6
      0034B4 24 0A            [12] 1337 	add	a,#_take_data_input_65537_71
      0034B6 F5 82            [12] 1338 	mov	dpl,a
      0034B8 EF               [12] 1339 	mov	a,r7
      0034B9 34 04            [12] 1340 	addc	a,#(_take_data_input_65537_71 >> 8)
      0034BB F5 83            [12] 1341 	mov	dph,a
      0034BD EC               [12] 1342 	mov	a,r4
      0034BE F0               [24] 1343 	movx	@dptr,a
                                   1344 ;	8051_i2c_eeprom.c:183: putchar(c);  // Echo character back
      0034BF 7D 00            [12] 1345 	mov	r5,#0x00
      0034C1 8C 82            [24] 1346 	mov	dpl,r4
      0034C3 8D 83            [24] 1347 	mov	dph,r5
      0034C5 C0 07            [24] 1348 	push	ar7
      0034C7 C0 06            [24] 1349 	push	ar6
      0034C9 12 30 62         [24] 1350 	lcall	_putchar
      0034CC D0 06            [24] 1351 	pop	ar6
      0034CE D0 07            [24] 1352 	pop	ar7
                                   1353 ;	8051_i2c_eeprom.c:184: i++;
      0034D0 0E               [12] 1354 	inc	r6
      0034D1 BE 00 9D         [24] 1355 	cjne	r6,#0x00,00111$
      0034D4 0F               [12] 1356 	inc	r7
      0034D5 80 9A            [24] 1357 	sjmp	00111$
      0034D7                       1358 00113$:
                                   1359 ;	8051_i2c_eeprom.c:188: input[i] = '\0';  // Null-terminate the string
      0034D7 EE               [12] 1360 	mov	a,r6
      0034D8 24 0A            [12] 1361 	add	a,#_take_data_input_65537_71
      0034DA F5 82            [12] 1362 	mov	dpl,a
      0034DC EF               [12] 1363 	mov	a,r7
      0034DD 34 04            [12] 1364 	addc	a,#(_take_data_input_65537_71 >> 8)
      0034DF F5 83            [12] 1365 	mov	dph,a
      0034E1 E4               [12] 1366 	clr	a
      0034E2 F0               [24] 1367 	movx	@dptr,a
                                   1368 ;	8051_i2c_eeprom.c:191: unsigned char data = 0;
      0034E3 90 04 0E         [24] 1369 	mov	dptr,#_take_data_data_65538_75
      0034E6 F0               [24] 1370 	movx	@dptr,a
                                   1371 ;	8051_i2c_eeprom.c:192: for (i = 0; input[i] != '\0'; i++) {
      0034E7 7E 00            [12] 1372 	mov	r6,#0x00
      0034E9 7F 00            [12] 1373 	mov	r7,#0x00
      0034EB                       1374 00129$:
      0034EB EE               [12] 1375 	mov	a,r6
      0034EC 24 0A            [12] 1376 	add	a,#_take_data_input_65537_71
      0034EE F5 82            [12] 1377 	mov	dpl,a
      0034F0 EF               [12] 1378 	mov	a,r7
      0034F1 34 04            [12] 1379 	addc	a,#(_take_data_input_65537_71 >> 8)
      0034F3 F5 83            [12] 1380 	mov	dph,a
      0034F5 E0               [24] 1381 	movx	a,@dptr
      0034F6 FD               [12] 1382 	mov	r5,a
      0034F7 70 03            [24] 1383 	jnz	00212$
      0034F9 02 35 5E         [24] 1384 	ljmp	00125$
      0034FC                       1385 00212$:
                                   1386 ;	8051_i2c_eeprom.c:193: data = data * 16;
      0034FC 90 04 0E         [24] 1387 	mov	dptr,#_take_data_data_65538_75
      0034FF E0               [24] 1388 	movx	a,@dptr
      003500 C4               [12] 1389 	swap	a
      003501 54 F0            [12] 1390 	anl	a,#0xf0
      003503 FC               [12] 1391 	mov	r4,a
      003504 F0               [24] 1392 	movx	@dptr,a
                                   1393 ;	8051_i2c_eeprom.c:194: if (input[i] >= '0' && input[i] <= '9')
      003505 BD 30 00         [24] 1394 	cjne	r5,#0x30,00213$
      003508                       1395 00213$:
      003508 40 12            [24] 1396 	jc	00122$
      00350A ED               [12] 1397 	mov	a,r5
      00350B 24 C6            [12] 1398 	add	a,#0xff - 0x39
      00350D 40 0D            [24] 1399 	jc	00122$
                                   1400 ;	8051_i2c_eeprom.c:195: data += input[i] - '0';
      00350F ED               [12] 1401 	mov	a,r5
      003510 24 D0            [12] 1402 	add	a,#0xd0
      003512 FD               [12] 1403 	mov	r5,a
      003513 90 04 0E         [24] 1404 	mov	dptr,#_take_data_data_65538_75
      003516 E0               [24] 1405 	movx	a,@dptr
      003517 FC               [12] 1406 	mov	r4,a
      003518 2D               [12] 1407 	add	a,r5
      003519 F0               [24] 1408 	movx	@dptr,a
      00351A 80 3A            [24] 1409 	sjmp	00130$
      00351C                       1410 00122$:
                                   1411 ;	8051_i2c_eeprom.c:196: else if (input[i] >= 'A' && input[i] <= 'F')
      00351C EE               [12] 1412 	mov	a,r6
      00351D 24 0A            [12] 1413 	add	a,#_take_data_input_65537_71
      00351F F5 82            [12] 1414 	mov	dpl,a
      003521 EF               [12] 1415 	mov	a,r7
      003522 34 04            [12] 1416 	addc	a,#(_take_data_input_65537_71 >> 8)
      003524 F5 83            [12] 1417 	mov	dph,a
      003526 E0               [24] 1418 	movx	a,@dptr
      003527 FD               [12] 1419 	mov	r5,a
      003528 BD 41 00         [24] 1420 	cjne	r5,#0x41,00216$
      00352B                       1421 00216$:
      00352B 40 14            [24] 1422 	jc	00118$
      00352D ED               [12] 1423 	mov	a,r5
      00352E 24 B9            [12] 1424 	add	a,#0xff - 0x46
      003530 40 0F            [24] 1425 	jc	00118$
                                   1426 ;	8051_i2c_eeprom.c:197: data += input[i] - 'A' + 10;
      003532 8D 04            [24] 1427 	mov	ar4,r5
      003534 74 C9            [12] 1428 	mov	a,#0xc9
      003536 2C               [12] 1429 	add	a,r4
      003537 FC               [12] 1430 	mov	r4,a
      003538 90 04 0E         [24] 1431 	mov	dptr,#_take_data_data_65538_75
      00353B E0               [24] 1432 	movx	a,@dptr
      00353C FB               [12] 1433 	mov	r3,a
      00353D 2C               [12] 1434 	add	a,r4
      00353E F0               [24] 1435 	movx	@dptr,a
      00353F 80 15            [24] 1436 	sjmp	00130$
      003541                       1437 00118$:
                                   1438 ;	8051_i2c_eeprom.c:198: else if (input[i] >= 'a' && input[i] <= 'f')
      003541 BD 61 00         [24] 1439 	cjne	r5,#0x61,00219$
      003544                       1440 00219$:
      003544 40 10            [24] 1441 	jc	00130$
      003546 ED               [12] 1442 	mov	a,r5
      003547 24 99            [12] 1443 	add	a,#0xff - 0x66
      003549 40 0B            [24] 1444 	jc	00130$
                                   1445 ;	8051_i2c_eeprom.c:199: data += input[i] - 'a' + 10;
      00354B 74 A9            [12] 1446 	mov	a,#0xa9
      00354D 2D               [12] 1447 	add	a,r5
      00354E FD               [12] 1448 	mov	r5,a
      00354F 90 04 0E         [24] 1449 	mov	dptr,#_take_data_data_65538_75
      003552 E0               [24] 1450 	movx	a,@dptr
      003553 FC               [12] 1451 	mov	r4,a
      003554 2D               [12] 1452 	add	a,r5
      003555 F0               [24] 1453 	movx	@dptr,a
      003556                       1454 00130$:
                                   1455 ;	8051_i2c_eeprom.c:192: for (i = 0; input[i] != '\0'; i++) {
      003556 0E               [12] 1456 	inc	r6
      003557 BE 00 01         [24] 1457 	cjne	r6,#0x00,00222$
      00355A 0F               [12] 1458 	inc	r7
      00355B                       1459 00222$:
      00355B 02 34 EB         [24] 1460 	ljmp	00129$
      00355E                       1461 00125$:
                                   1462 ;	8051_i2c_eeprom.c:202: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      00355E 90 04 0E         [24] 1463 	mov	dptr,#_take_data_data_65538_75
      003561 E0               [24] 1464 	movx	a,@dptr
      003562 FF               [12] 1465 	mov	r7,a
      003563 FD               [12] 1466 	mov	r5,a
      003564 7E 00            [12] 1467 	mov	r6,#0x00
      003566 C0 07            [24] 1468 	push	ar7
      003568 C0 05            [24] 1469 	push	ar5
      00356A C0 06            [24] 1470 	push	ar6
      00356C 74 1C            [12] 1471 	mov	a,#___str_22
      00356E C0 E0            [24] 1472 	push	acc
      003570 74 4B            [12] 1473 	mov	a,#(___str_22 >> 8)
      003572 C0 E0            [24] 1474 	push	acc
      003574 74 80            [12] 1475 	mov	a,#0x80
      003576 C0 E0            [24] 1476 	push	acc
      003578 12 39 CC         [24] 1477 	lcall	_printf
      00357B E5 81            [12] 1478 	mov	a,sp
      00357D 24 FB            [12] 1479 	add	a,#0xfb
      00357F F5 81            [12] 1480 	mov	sp,a
      003581 D0 07            [24] 1481 	pop	ar7
                                   1482 ;	8051_i2c_eeprom.c:203: if(data > 254) 
      003583 EF               [12] 1483 	mov	a,r7
      003584 24 01            [12] 1484 	add	a,#0xff - 0xfe
      003586 50 19            [24] 1485 	jnc	00127$
                                   1486 ;	8051_i2c_eeprom.c:205: printf("Data out of Range\n\r");
      003588 74 39            [12] 1487 	mov	a,#___str_23
      00358A C0 E0            [24] 1488 	push	acc
      00358C 74 4B            [12] 1489 	mov	a,#(___str_23 >> 8)
      00358E C0 E0            [24] 1490 	push	acc
      003590 74 80            [12] 1491 	mov	a,#0x80
      003592 C0 E0            [24] 1492 	push	acc
      003594 12 39 CC         [24] 1493 	lcall	_printf
      003597 15 81            [12] 1494 	dec	sp
      003599 15 81            [12] 1495 	dec	sp
      00359B 15 81            [12] 1496 	dec	sp
                                   1497 ;	8051_i2c_eeprom.c:206: return 0;
      00359D 75 82 00         [24] 1498 	mov	dpl,#0x00
      0035A0 22               [24] 1499 	ret
      0035A1                       1500 00127$:
                                   1501 ;	8051_i2c_eeprom.c:208: return data;
      0035A1 8F 82            [24] 1502 	mov	dpl,r7
                                   1503 ;	8051_i2c_eeprom.c:210: }
      0035A3 22               [24] 1504 	ret
                                   1505 ;------------------------------------------------------------
                                   1506 ;Allocation info for local variables in function 'eeprom_write'
                                   1507 ;------------------------------------------------------------
                                   1508 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                   1509 ;address                   Allocated with name '_eeprom_write_address_65536_79'
                                   1510 ;i                         Allocated with name '_eeprom_write_i_131072_84'
                                   1511 ;------------------------------------------------------------
                                   1512 ;	8051_i2c_eeprom.c:212: int eeprom_write(unsigned int address, unsigned char data) 
                                   1513 ;	-----------------------------------------
                                   1514 ;	 function eeprom_write
                                   1515 ;	-----------------------------------------
      0035A4                       1516 _eeprom_write:
      0035A4 AF 83            [24] 1517 	mov	r7,dph
      0035A6 E5 82            [12] 1518 	mov	a,dpl
      0035A8 90 04 10         [24] 1519 	mov	dptr,#_eeprom_write_address_65536_79
      0035AB F0               [24] 1520 	movx	@dptr,a
      0035AC EF               [12] 1521 	mov	a,r7
      0035AD A3               [24] 1522 	inc	dptr
      0035AE F0               [24] 1523 	movx	@dptr,a
                                   1524 ;	8051_i2c_eeprom.c:215: i2c_start();
      0035AF 12 38 8D         [24] 1525 	lcall	_i2c_start
                                   1526 ;	8051_i2c_eeprom.c:218: if(!i2c_write(EEPROM_ID | WRITE)) {
      0035B2 75 82 A0         [24] 1527 	mov	dpl,#0xa0
      0035B5 12 37 8B         [24] 1528 	lcall	_i2c_write
      0035B8 E5 82            [12] 1529 	mov	a,dpl
      0035BA 85 83 F0         [24] 1530 	mov	b,dph
      0035BD 45 F0            [12] 1531 	orl	a,b
      0035BF 70 1C            [24] 1532 	jnz	00102$
                                   1533 ;	8051_i2c_eeprom.c:219: printf("Error: No ACK for device address (write)\n\r");
      0035C1 74 4D            [12] 1534 	mov	a,#___str_24
      0035C3 C0 E0            [24] 1535 	push	acc
      0035C5 74 4B            [12] 1536 	mov	a,#(___str_24 >> 8)
      0035C7 C0 E0            [24] 1537 	push	acc
      0035C9 74 80            [12] 1538 	mov	a,#0x80
      0035CB C0 E0            [24] 1539 	push	acc
      0035CD 12 39 CC         [24] 1540 	lcall	_printf
      0035D0 15 81            [12] 1541 	dec	sp
      0035D2 15 81            [12] 1542 	dec	sp
      0035D4 15 81            [12] 1543 	dec	sp
                                   1544 ;	8051_i2c_eeprom.c:220: i2c_stop();
      0035D6 12 38 A2         [24] 1545 	lcall	_i2c_stop
                                   1546 ;	8051_i2c_eeprom.c:221: return 0;
      0035D9 90 00 00         [24] 1547 	mov	dptr,#0x0000
      0035DC 22               [24] 1548 	ret
      0035DD                       1549 00102$:
                                   1550 ;	8051_i2c_eeprom.c:225: if(!i2c_write((unsigned char)address)) {
      0035DD 90 04 10         [24] 1551 	mov	dptr,#_eeprom_write_address_65536_79
      0035E0 E0               [24] 1552 	movx	a,@dptr
      0035E1 FE               [12] 1553 	mov	r6,a
      0035E2 A3               [24] 1554 	inc	dptr
      0035E3 E0               [24] 1555 	movx	a,@dptr
      0035E4 FF               [12] 1556 	mov	r7,a
      0035E5 8E 05            [24] 1557 	mov	ar5,r6
      0035E7 8D 82            [24] 1558 	mov	dpl,r5
      0035E9 C0 07            [24] 1559 	push	ar7
      0035EB C0 06            [24] 1560 	push	ar6
      0035ED 12 37 8B         [24] 1561 	lcall	_i2c_write
      0035F0 E5 82            [12] 1562 	mov	a,dpl
      0035F2 85 83 F0         [24] 1563 	mov	b,dph
      0035F5 D0 06            [24] 1564 	pop	ar6
      0035F7 D0 07            [24] 1565 	pop	ar7
      0035F9 45 F0            [12] 1566 	orl	a,b
      0035FB 70 1C            [24] 1567 	jnz	00104$
                                   1568 ;	8051_i2c_eeprom.c:226: printf("Error: No ACK for memory address\n\r");
      0035FD 74 78            [12] 1569 	mov	a,#___str_25
      0035FF C0 E0            [24] 1570 	push	acc
      003601 74 4B            [12] 1571 	mov	a,#(___str_25 >> 8)
      003603 C0 E0            [24] 1572 	push	acc
      003605 74 80            [12] 1573 	mov	a,#0x80
      003607 C0 E0            [24] 1574 	push	acc
      003609 12 39 CC         [24] 1575 	lcall	_printf
      00360C 15 81            [12] 1576 	dec	sp
      00360E 15 81            [12] 1577 	dec	sp
      003610 15 81            [12] 1578 	dec	sp
                                   1579 ;	8051_i2c_eeprom.c:227: i2c_stop();
      003612 12 38 A2         [24] 1580 	lcall	_i2c_stop
                                   1581 ;	8051_i2c_eeprom.c:228: return 0;
      003615 90 00 00         [24] 1582 	mov	dptr,#0x0000
      003618 22               [24] 1583 	ret
      003619                       1584 00104$:
                                   1585 ;	8051_i2c_eeprom.c:232: if(!i2c_write(data)) {
      003619 90 04 0F         [24] 1586 	mov	dptr,#_eeprom_write_PARM_2
      00361C E0               [24] 1587 	movx	a,@dptr
      00361D FD               [12] 1588 	mov	r5,a
      00361E F5 82            [12] 1589 	mov	dpl,a
      003620 C0 07            [24] 1590 	push	ar7
      003622 C0 06            [24] 1591 	push	ar6
      003624 C0 05            [24] 1592 	push	ar5
      003626 12 37 8B         [24] 1593 	lcall	_i2c_write
      003629 E5 82            [12] 1594 	mov	a,dpl
      00362B 85 83 F0         [24] 1595 	mov	b,dph
      00362E D0 05            [24] 1596 	pop	ar5
      003630 D0 06            [24] 1597 	pop	ar6
      003632 D0 07            [24] 1598 	pop	ar7
      003634 45 F0            [12] 1599 	orl	a,b
      003636 70 1C            [24] 1600 	jnz	00106$
                                   1601 ;	8051_i2c_eeprom.c:233: printf("Error: No ACK for data\n\r");
      003638 74 9B            [12] 1602 	mov	a,#___str_26
      00363A C0 E0            [24] 1603 	push	acc
      00363C 74 4B            [12] 1604 	mov	a,#(___str_26 >> 8)
      00363E C0 E0            [24] 1605 	push	acc
      003640 74 80            [12] 1606 	mov	a,#0x80
      003642 C0 E0            [24] 1607 	push	acc
      003644 12 39 CC         [24] 1608 	lcall	_printf
      003647 15 81            [12] 1609 	dec	sp
      003649 15 81            [12] 1610 	dec	sp
      00364B 15 81            [12] 1611 	dec	sp
                                   1612 ;	8051_i2c_eeprom.c:234: i2c_stop();
      00364D 12 38 A2         [24] 1613 	lcall	_i2c_stop
                                   1614 ;	8051_i2c_eeprom.c:235: return 0;
      003650 90 00 00         [24] 1615 	mov	dptr,#0x0000
      003653 22               [24] 1616 	ret
      003654                       1617 00106$:
                                   1618 ;	8051_i2c_eeprom.c:238: i2c_stop();
      003654 C0 07            [24] 1619 	push	ar7
      003656 C0 06            [24] 1620 	push	ar6
      003658 C0 05            [24] 1621 	push	ar5
      00365A 12 38 A2         [24] 1622 	lcall	_i2c_stop
      00365D D0 05            [24] 1623 	pop	ar5
      00365F D0 06            [24] 1624 	pop	ar6
      003661 D0 07            [24] 1625 	pop	ar7
                                   1626 ;	8051_i2c_eeprom.c:240: for(int i = 0; i<100; i++)
      003663 7B 00            [12] 1627 	mov	r3,#0x00
      003665 7C 00            [12] 1628 	mov	r4,#0x00
      003667                       1629 00109$:
      003667 C3               [12] 1630 	clr	c
      003668 EB               [12] 1631 	mov	a,r3
      003669 94 64            [12] 1632 	subb	a,#0x64
      00366B EC               [12] 1633 	mov	a,r4
      00366C 64 80            [12] 1634 	xrl	a,#0x80
      00366E 94 80            [12] 1635 	subb	a,#0x80
      003670 50 1E            [24] 1636 	jnc	00107$
                                   1637 ;	8051_i2c_eeprom.c:242: i2c_delay();
      003672 C0 07            [24] 1638 	push	ar7
      003674 C0 06            [24] 1639 	push	ar6
      003676 C0 05            [24] 1640 	push	ar5
      003678 C0 04            [24] 1641 	push	ar4
      00367A C0 03            [24] 1642 	push	ar3
      00367C 12 38 AF         [24] 1643 	lcall	_i2c_delay
      00367F D0 03            [24] 1644 	pop	ar3
      003681 D0 04            [24] 1645 	pop	ar4
      003683 D0 05            [24] 1646 	pop	ar5
      003685 D0 06            [24] 1647 	pop	ar6
      003687 D0 07            [24] 1648 	pop	ar7
                                   1649 ;	8051_i2c_eeprom.c:240: for(int i = 0; i<100; i++)
      003689 0B               [12] 1650 	inc	r3
      00368A BB 00 DA         [24] 1651 	cjne	r3,#0x00,00109$
      00368D 0C               [12] 1652 	inc	r4
      00368E 80 D7            [24] 1653 	sjmp	00109$
      003690                       1654 00107$:
                                   1655 ;	8051_i2c_eeprom.c:244: printf("| Writing at Address 0x%02X Data 0x%02X          |\n\r", address, data);
      003690 7C 00            [12] 1656 	mov	r4,#0x00
      003692 C0 05            [24] 1657 	push	ar5
      003694 C0 04            [24] 1658 	push	ar4
      003696 C0 06            [24] 1659 	push	ar6
      003698 C0 07            [24] 1660 	push	ar7
      00369A 74 B4            [12] 1661 	mov	a,#___str_27
      00369C C0 E0            [24] 1662 	push	acc
      00369E 74 4B            [12] 1663 	mov	a,#(___str_27 >> 8)
      0036A0 C0 E0            [24] 1664 	push	acc
      0036A2 74 80            [12] 1665 	mov	a,#0x80
      0036A4 C0 E0            [24] 1666 	push	acc
      0036A6 12 39 CC         [24] 1667 	lcall	_printf
      0036A9 E5 81            [12] 1668 	mov	a,sp
      0036AB 24 F9            [12] 1669 	add	a,#0xf9
      0036AD F5 81            [12] 1670 	mov	sp,a
                                   1671 ;	8051_i2c_eeprom.c:245: printf("│ Write successful!                             │\n");
      0036AF 74 E9            [12] 1672 	mov	a,#___str_28
      0036B1 C0 E0            [24] 1673 	push	acc
      0036B3 74 4B            [12] 1674 	mov	a,#(___str_28 >> 8)
      0036B5 C0 E0            [24] 1675 	push	acc
      0036B7 74 80            [12] 1676 	mov	a,#0x80
      0036B9 C0 E0            [24] 1677 	push	acc
      0036BB 12 39 CC         [24] 1678 	lcall	_printf
      0036BE 15 81            [12] 1679 	dec	sp
      0036C0 15 81            [12] 1680 	dec	sp
      0036C2 15 81            [12] 1681 	dec	sp
                                   1682 ;	8051_i2c_eeprom.c:246: printf("└───────────────────────────────────────────────┘\n");
      0036C4 74 20            [12] 1683 	mov	a,#___str_29
      0036C6 C0 E0            [24] 1684 	push	acc
      0036C8 74 4C            [12] 1685 	mov	a,#(___str_29 >> 8)
      0036CA C0 E0            [24] 1686 	push	acc
      0036CC 74 80            [12] 1687 	mov	a,#0x80
      0036CE C0 E0            [24] 1688 	push	acc
      0036D0 12 39 CC         [24] 1689 	lcall	_printf
      0036D3 15 81            [12] 1690 	dec	sp
      0036D5 15 81            [12] 1691 	dec	sp
      0036D7 15 81            [12] 1692 	dec	sp
                                   1693 ;	8051_i2c_eeprom.c:247: return 1;  // Success
      0036D9 90 00 01         [24] 1694 	mov	dptr,#0x0001
                                   1695 ;	8051_i2c_eeprom.c:249: }
      0036DC 22               [24] 1696 	ret
                                   1697 ;------------------------------------------------------------
                                   1698 ;Allocation info for local variables in function 'eeprom_read'
                                   1699 ;------------------------------------------------------------
                                   1700 ;address                   Allocated with name '_eeprom_read_address_65536_86'
                                   1701 ;result                    Allocated with name '_eeprom_read_result_65536_87'
                                   1702 ;------------------------------------------------------------
                                   1703 ;	8051_i2c_eeprom.c:251: int eeprom_read(unsigned int address) 
                                   1704 ;	-----------------------------------------
                                   1705 ;	 function eeprom_read
                                   1706 ;	-----------------------------------------
      0036DD                       1707 _eeprom_read:
      0036DD AF 83            [24] 1708 	mov	r7,dph
      0036DF E5 82            [12] 1709 	mov	a,dpl
      0036E1 90 04 12         [24] 1710 	mov	dptr,#_eeprom_read_address_65536_86
      0036E4 F0               [24] 1711 	movx	@dptr,a
      0036E5 EF               [12] 1712 	mov	a,r7
      0036E6 A3               [24] 1713 	inc	dptr
      0036E7 F0               [24] 1714 	movx	@dptr,a
                                   1715 ;	8051_i2c_eeprom.c:257: i2c_start();
      0036E8 12 38 8D         [24] 1716 	lcall	_i2c_start
                                   1717 ;	8051_i2c_eeprom.c:260: if(!i2c_write(EEPROM_ID | WRITE)) {
      0036EB 75 82 A0         [24] 1718 	mov	dpl,#0xa0
      0036EE 12 37 8B         [24] 1719 	lcall	_i2c_write
      0036F1 E5 82            [12] 1720 	mov	a,dpl
      0036F3 85 83 F0         [24] 1721 	mov	b,dph
      0036F6 45 F0            [12] 1722 	orl	a,b
      0036F8 70 1C            [24] 1723 	jnz	00102$
                                   1724 ;	8051_i2c_eeprom.c:261: printf("Error: No ACK for device address (write mode)\n\r");
      0036FA 74 B5            [12] 1725 	mov	a,#___str_30
      0036FC C0 E0            [24] 1726 	push	acc
      0036FE 74 4C            [12] 1727 	mov	a,#(___str_30 >> 8)
      003700 C0 E0            [24] 1728 	push	acc
      003702 74 80            [12] 1729 	mov	a,#0x80
      003704 C0 E0            [24] 1730 	push	acc
      003706 12 39 CC         [24] 1731 	lcall	_printf
      003709 15 81            [12] 1732 	dec	sp
      00370B 15 81            [12] 1733 	dec	sp
      00370D 15 81            [12] 1734 	dec	sp
                                   1735 ;	8051_i2c_eeprom.c:262: i2c_stop();
      00370F 12 38 A2         [24] 1736 	lcall	_i2c_stop
                                   1737 ;	8051_i2c_eeprom.c:263: return -1;
      003712 90 FF FF         [24] 1738 	mov	dptr,#0xffff
      003715 22               [24] 1739 	ret
      003716                       1740 00102$:
                                   1741 ;	8051_i2c_eeprom.c:267: if(!i2c_write((unsigned char)address)) {
      003716 90 04 12         [24] 1742 	mov	dptr,#_eeprom_read_address_65536_86
      003719 E0               [24] 1743 	movx	a,@dptr
      00371A FE               [12] 1744 	mov	r6,a
      00371B A3               [24] 1745 	inc	dptr
      00371C E0               [24] 1746 	movx	a,@dptr
      00371D 8E 82            [24] 1747 	mov	dpl,r6
      00371F 12 37 8B         [24] 1748 	lcall	_i2c_write
      003722 E5 82            [12] 1749 	mov	a,dpl
      003724 85 83 F0         [24] 1750 	mov	b,dph
      003727 45 F0            [12] 1751 	orl	a,b
      003729 70 1C            [24] 1752 	jnz	00104$
                                   1753 ;	8051_i2c_eeprom.c:268: printf("Error: No ACK for memory address\n\r");
      00372B 74 78            [12] 1754 	mov	a,#___str_25
      00372D C0 E0            [24] 1755 	push	acc
      00372F 74 4B            [12] 1756 	mov	a,#(___str_25 >> 8)
      003731 C0 E0            [24] 1757 	push	acc
      003733 74 80            [12] 1758 	mov	a,#0x80
      003735 C0 E0            [24] 1759 	push	acc
      003737 12 39 CC         [24] 1760 	lcall	_printf
      00373A 15 81            [12] 1761 	dec	sp
      00373C 15 81            [12] 1762 	dec	sp
      00373E 15 81            [12] 1763 	dec	sp
                                   1764 ;	8051_i2c_eeprom.c:269: i2c_stop();
      003740 12 38 A2         [24] 1765 	lcall	_i2c_stop
                                   1766 ;	8051_i2c_eeprom.c:270: return -1;
      003743 90 FF FF         [24] 1767 	mov	dptr,#0xffff
      003746 22               [24] 1768 	ret
      003747                       1769 00104$:
                                   1770 ;	8051_i2c_eeprom.c:274: i2c_start();
      003747 12 38 8D         [24] 1771 	lcall	_i2c_start
                                   1772 ;	8051_i2c_eeprom.c:277: if(!i2c_write(EEPROM_ID | READ)) {
      00374A 75 82 A1         [24] 1773 	mov	dpl,#0xa1
      00374D 12 37 8B         [24] 1774 	lcall	_i2c_write
      003750 E5 82            [12] 1775 	mov	a,dpl
      003752 85 83 F0         [24] 1776 	mov	b,dph
      003755 45 F0            [12] 1777 	orl	a,b
      003757 70 1C            [24] 1778 	jnz	00106$
                                   1779 ;	8051_i2c_eeprom.c:278: printf("Error: No ACK for device address (read mode)\n\r");
      003759 74 E5            [12] 1780 	mov	a,#___str_31
      00375B C0 E0            [24] 1781 	push	acc
      00375D 74 4C            [12] 1782 	mov	a,#(___str_31 >> 8)
      00375F C0 E0            [24] 1783 	push	acc
      003761 74 80            [12] 1784 	mov	a,#0x80
      003763 C0 E0            [24] 1785 	push	acc
      003765 12 39 CC         [24] 1786 	lcall	_printf
      003768 15 81            [12] 1787 	dec	sp
      00376A 15 81            [12] 1788 	dec	sp
      00376C 15 81            [12] 1789 	dec	sp
                                   1790 ;	8051_i2c_eeprom.c:279: i2c_stop();
      00376E 12 38 A2         [24] 1791 	lcall	_i2c_stop
                                   1792 ;	8051_i2c_eeprom.c:280: return -1;
      003771 90 FF FF         [24] 1793 	mov	dptr,#0xffff
      003774 22               [24] 1794 	ret
      003775                       1795 00106$:
                                   1796 ;	8051_i2c_eeprom.c:284: result = i2c_read(0);  // 0 means send NACK
      003775 90 00 00         [24] 1797 	mov	dptr,#0x0000
      003778 12 38 08         [24] 1798 	lcall	_i2c_read
      00377B AE 82            [24] 1799 	mov	r6,dpl
                                   1800 ;	8051_i2c_eeprom.c:286: i2c_stop();
      00377D C0 06            [24] 1801 	push	ar6
      00377F 12 38 A2         [24] 1802 	lcall	_i2c_stop
      003782 D0 06            [24] 1803 	pop	ar6
                                   1804 ;	8051_i2c_eeprom.c:287: return result;
      003784 7F 00            [12] 1805 	mov	r7,#0x00
      003786 8E 82            [24] 1806 	mov	dpl,r6
      003788 8F 83            [24] 1807 	mov	dph,r7
                                   1808 ;	8051_i2c_eeprom.c:288: }
      00378A 22               [24] 1809 	ret
                                   1810 ;------------------------------------------------------------
                                   1811 ;Allocation info for local variables in function 'i2c_write'
                                   1812 ;------------------------------------------------------------
                                   1813 ;data                      Allocated with name '_i2c_write_data_65536_91'
                                   1814 ;i                         Allocated with name '_i2c_write_i_65536_92'
                                   1815 ;------------------------------------------------------------
                                   1816 ;	8051_i2c_eeprom.c:291: int i2c_write(unsigned char data)
                                   1817 ;	-----------------------------------------
                                   1818 ;	 function i2c_write
                                   1819 ;	-----------------------------------------
      00378B                       1820 _i2c_write:
      00378B E5 82            [12] 1821 	mov	a,dpl
      00378D 90 04 14         [24] 1822 	mov	dptr,#_i2c_write_data_65536_91
      003790 F0               [24] 1823 	movx	@dptr,a
                                   1824 ;	8051_i2c_eeprom.c:295: for(i=0;i<=7;i++)
      003791 7E 00            [12] 1825 	mov	r6,#0x00
      003793 7F 00            [12] 1826 	mov	r7,#0x00
      003795                       1827 00104$:
                                   1828 ;	8051_i2c_eeprom.c:297: SDA = (data & 0x80) ? 1 : 0;    //msb first
      003795 90 04 14         [24] 1829 	mov	dptr,#_i2c_write_data_65536_91
      003798 E0               [24] 1830 	movx	a,@dptr
      003799 FD               [12] 1831 	mov	r5,a
      00379A 23               [12] 1832 	rl	a
      00379B 54 01            [12] 1833 	anl	a,#0x01
      00379D 24 FF            [12] 1834 	add	a,#0xff
      00379F 92 94            [24] 1835 	mov	_P1_4,c
                                   1836 ;	8051_i2c_eeprom.c:298: i2c_delay();        // Setup time for data
      0037A1 C0 07            [24] 1837 	push	ar7
      0037A3 C0 06            [24] 1838 	push	ar6
      0037A5 C0 05            [24] 1839 	push	ar5
      0037A7 12 38 AF         [24] 1840 	lcall	_i2c_delay
                                   1841 ;	8051_i2c_eeprom.c:299: SCL=1;
                                   1842 ;	assignBit
      0037AA D2 93            [12] 1843 	setb	_P1_3
                                   1844 ;	8051_i2c_eeprom.c:300: i2c_delay();        // Hold time for clock
      0037AC 12 38 AF         [24] 1845 	lcall	_i2c_delay
      0037AF D0 05            [24] 1846 	pop	ar5
      0037B1 D0 06            [24] 1847 	pop	ar6
      0037B3 D0 07            [24] 1848 	pop	ar7
                                   1849 ;	8051_i2c_eeprom.c:301: SCL=0;
                                   1850 ;	assignBit
      0037B5 C2 93            [12] 1851 	clr	_P1_3
                                   1852 ;	8051_i2c_eeprom.c:302: data = data << 1;
      0037B7 ED               [12] 1853 	mov	a,r5
      0037B8 2D               [12] 1854 	add	a,r5
      0037B9 90 04 14         [24] 1855 	mov	dptr,#_i2c_write_data_65536_91
      0037BC F0               [24] 1856 	movx	@dptr,a
                                   1857 ;	8051_i2c_eeprom.c:295: for(i=0;i<=7;i++)
      0037BD 0E               [12] 1858 	inc	r6
      0037BE BE 00 01         [24] 1859 	cjne	r6,#0x00,00121$
      0037C1 0F               [12] 1860 	inc	r7
      0037C2                       1861 00121$:
      0037C2 C3               [12] 1862 	clr	c
      0037C3 74 07            [12] 1863 	mov	a,#0x07
      0037C5 9E               [12] 1864 	subb	a,r6
      0037C6 E4               [12] 1865 	clr	a
      0037C7 9F               [12] 1866 	subb	a,r7
      0037C8 50 CB            [24] 1867 	jnc	00104$
                                   1868 ;	8051_i2c_eeprom.c:306: SDA = 1;            // Release SDA for slave
                                   1869 ;	assignBit
      0037CA D2 94            [12] 1870 	setb	_P1_4
                                   1871 ;	8051_i2c_eeprom.c:307: SCL = 1;            // 9th clock pulse for ACK
                                   1872 ;	assignBit
      0037CC D2 93            [12] 1873 	setb	_P1_3
                                   1874 ;	8051_i2c_eeprom.c:308: i2c_delay();
      0037CE 12 38 AF         [24] 1875 	lcall	_i2c_delay
                                   1876 ;	8051_i2c_eeprom.c:309: if(SDA == 1)        // If SDA is still high, no ACK received
      0037D1 30 94 19         [24] 1877 	jnb	_P1_4,00103$
                                   1878 ;	8051_i2c_eeprom.c:312: printf("ACK DID NOT ARRIVE\n\r");
      0037D4 74 14            [12] 1879 	mov	a,#___str_32
      0037D6 C0 E0            [24] 1880 	push	acc
      0037D8 74 4D            [12] 1881 	mov	a,#(___str_32 >> 8)
      0037DA C0 E0            [24] 1882 	push	acc
      0037DC 74 80            [12] 1883 	mov	a,#0x80
      0037DE C0 E0            [24] 1884 	push	acc
      0037E0 12 39 CC         [24] 1885 	lcall	_printf
      0037E3 15 81            [12] 1886 	dec	sp
      0037E5 15 81            [12] 1887 	dec	sp
      0037E7 15 81            [12] 1888 	dec	sp
                                   1889 ;	8051_i2c_eeprom.c:313: return 0;       // Error
      0037E9 90 00 00         [24] 1890 	mov	dptr,#0x0000
      0037EC 22               [24] 1891 	ret
      0037ED                       1892 00103$:
                                   1893 ;	8051_i2c_eeprom.c:315: SCL = 0;
                                   1894 ;	assignBit
      0037ED C2 93            [12] 1895 	clr	_P1_3
                                   1896 ;	8051_i2c_eeprom.c:316: printf("Transmission successfull\n\r");
      0037EF 74 29            [12] 1897 	mov	a,#___str_33
      0037F1 C0 E0            [24] 1898 	push	acc
      0037F3 74 4D            [12] 1899 	mov	a,#(___str_33 >> 8)
      0037F5 C0 E0            [24] 1900 	push	acc
      0037F7 74 80            [12] 1901 	mov	a,#0x80
      0037F9 C0 E0            [24] 1902 	push	acc
      0037FB 12 39 CC         [24] 1903 	lcall	_printf
      0037FE 15 81            [12] 1904 	dec	sp
      003800 15 81            [12] 1905 	dec	sp
      003802 15 81            [12] 1906 	dec	sp
                                   1907 ;	8051_i2c_eeprom.c:317: return 1;           // Success
      003804 90 00 01         [24] 1908 	mov	dptr,#0x0001
                                   1909 ;	8051_i2c_eeprom.c:319: }
      003807 22               [24] 1910 	ret
                                   1911 ;------------------------------------------------------------
                                   1912 ;Allocation info for local variables in function 'i2c_read'
                                   1913 ;------------------------------------------------------------
                                   1914 ;ACK                       Allocated with name '_i2c_read_ACK_65536_96'
                                   1915 ;buff                      Allocated with name '_i2c_read_buff_65536_97'
                                   1916 ;i                         Allocated with name '_i2c_read_i_131072_98'
                                   1917 ;------------------------------------------------------------
                                   1918 ;	8051_i2c_eeprom.c:320: int i2c_read(int ACK)
                                   1919 ;	-----------------------------------------
                                   1920 ;	 function i2c_read
                                   1921 ;	-----------------------------------------
      003808                       1922 _i2c_read:
      003808 AF 83            [24] 1923 	mov	r7,dph
      00380A E5 82            [12] 1924 	mov	a,dpl
      00380C 90 04 15         [24] 1925 	mov	dptr,#_i2c_read_ACK_65536_96
      00380F F0               [24] 1926 	movx	@dptr,a
      003810 EF               [12] 1927 	mov	a,r7
      003811 A3               [24] 1928 	inc	dptr
      003812 F0               [24] 1929 	movx	@dptr,a
                                   1930 ;	8051_i2c_eeprom.c:322: unsigned char buff=0;
      003813 90 04 17         [24] 1931 	mov	dptr,#_i2c_read_buff_65536_97
      003816 E4               [12] 1932 	clr	a
      003817 F0               [24] 1933 	movx	@dptr,a
                                   1934 ;	8051_i2c_eeprom.c:323: SCL = 0;
                                   1935 ;	assignBit
      003818 C2 93            [12] 1936 	clr	_P1_3
                                   1937 ;	8051_i2c_eeprom.c:324: for(int i=0;i<8;i++)
      00381A 7E 00            [12] 1938 	mov	r6,#0x00
      00381C 7F 00            [12] 1939 	mov	r7,#0x00
      00381E                       1940 00103$:
      00381E C3               [12] 1941 	clr	c
      00381F EE               [12] 1942 	mov	a,r6
      003820 94 08            [12] 1943 	subb	a,#0x08
      003822 EF               [12] 1944 	mov	a,r7
      003823 64 80            [12] 1945 	xrl	a,#0x80
      003825 94 80            [12] 1946 	subb	a,#0x80
      003827 50 40            [24] 1947 	jnc	00101$
                                   1948 ;	8051_i2c_eeprom.c:326: SCL = 1;
                                   1949 ;	assignBit
      003829 D2 93            [12] 1950 	setb	_P1_3
                                   1951 ;	8051_i2c_eeprom.c:327: i2c_delay();
      00382B C0 07            [24] 1952 	push	ar7
      00382D C0 06            [24] 1953 	push	ar6
      00382F 12 38 AF         [24] 1954 	lcall	_i2c_delay
      003832 D0 06            [24] 1955 	pop	ar6
      003834 D0 07            [24] 1956 	pop	ar7
                                   1957 ;	8051_i2c_eeprom.c:328: buff |= (SDA << (7 - i));
      003836 A2 94            [12] 1958 	mov	c,_P1_4
      003838 E4               [12] 1959 	clr	a
      003839 33               [12] 1960 	rlc	a
      00383A FD               [12] 1961 	mov	r5,a
      00383B 8E 04            [24] 1962 	mov	ar4,r6
      00383D 74 07            [12] 1963 	mov	a,#0x07
      00383F C3               [12] 1964 	clr	c
      003840 9C               [12] 1965 	subb	a,r4
      003841 FC               [12] 1966 	mov	r4,a
      003842 8C F0            [24] 1967 	mov	b,r4
      003844 05 F0            [12] 1968 	inc	b
      003846 ED               [12] 1969 	mov	a,r5
      003847 80 02            [24] 1970 	sjmp	00119$
      003849                       1971 00117$:
      003849 25 E0            [12] 1972 	add	a,acc
      00384B                       1973 00119$:
      00384B D5 F0 FB         [24] 1974 	djnz	b,00117$
      00384E FC               [12] 1975 	mov	r4,a
      00384F 90 04 17         [24] 1976 	mov	dptr,#_i2c_read_buff_65536_97
      003852 E0               [24] 1977 	movx	a,@dptr
      003853 4C               [12] 1978 	orl	a,r4
      003854 F0               [24] 1979 	movx	@dptr,a
                                   1980 ;	8051_i2c_eeprom.c:329: i2c_delay();
      003855 C0 07            [24] 1981 	push	ar7
      003857 C0 06            [24] 1982 	push	ar6
      003859 12 38 AF         [24] 1983 	lcall	_i2c_delay
      00385C D0 06            [24] 1984 	pop	ar6
      00385E D0 07            [24] 1985 	pop	ar7
                                   1986 ;	8051_i2c_eeprom.c:330: SCL=0;
                                   1987 ;	assignBit
      003860 C2 93            [12] 1988 	clr	_P1_3
                                   1989 ;	8051_i2c_eeprom.c:324: for(int i=0;i<8;i++)
      003862 0E               [12] 1990 	inc	r6
      003863 BE 00 B8         [24] 1991 	cjne	r6,#0x00,00103$
      003866 0F               [12] 1992 	inc	r7
      003867 80 B5            [24] 1993 	sjmp	00103$
      003869                       1994 00101$:
                                   1995 ;	8051_i2c_eeprom.c:334: SDA = !ACK;         // ACK = 0, NACK = 1
      003869 90 04 15         [24] 1996 	mov	dptr,#_i2c_read_ACK_65536_96
      00386C E0               [24] 1997 	movx	a,@dptr
      00386D FE               [12] 1998 	mov	r6,a
      00386E A3               [24] 1999 	inc	dptr
      00386F E0               [24] 2000 	movx	a,@dptr
      003870 4E               [12] 2001 	orl	a,r6
      003871 B4 01 00         [24] 2002 	cjne	a,#0x01,00121$
      003874                       2003 00121$:
      003874 E4               [12] 2004 	clr	a
      003875 33               [12] 2005 	rlc	a
      003876 24 FF            [12] 2006 	add	a,#0xff
      003878 92 94            [24] 2007 	mov	_P1_4,c
                                   2008 ;	8051_i2c_eeprom.c:335: SCL = 1;
                                   2009 ;	assignBit
      00387A D2 93            [12] 2010 	setb	_P1_3
                                   2011 ;	8051_i2c_eeprom.c:336: i2c_delay();
      00387C 12 38 AF         [24] 2012 	lcall	_i2c_delay
                                   2013 ;	8051_i2c_eeprom.c:337: SCL = 0;
                                   2014 ;	assignBit
      00387F C2 93            [12] 2015 	clr	_P1_3
                                   2016 ;	8051_i2c_eeprom.c:339: return buff;
      003881 90 04 17         [24] 2017 	mov	dptr,#_i2c_read_buff_65536_97
      003884 E0               [24] 2018 	movx	a,@dptr
      003885 FF               [12] 2019 	mov	r7,a
      003886 7E 00            [12] 2020 	mov	r6,#0x00
      003888 8F 82            [24] 2021 	mov	dpl,r7
      00388A 8E 83            [24] 2022 	mov	dph,r6
                                   2023 ;	8051_i2c_eeprom.c:340: }
      00388C 22               [24] 2024 	ret
                                   2025 ;------------------------------------------------------------
                                   2026 ;Allocation info for local variables in function 'i2c_start'
                                   2027 ;------------------------------------------------------------
                                   2028 ;	8051_i2c_eeprom.c:341: void i2c_start(void)
                                   2029 ;	-----------------------------------------
                                   2030 ;	 function i2c_start
                                   2031 ;	-----------------------------------------
      00388D                       2032 _i2c_start:
                                   2033 ;	8051_i2c_eeprom.c:343: i2c_delay();
      00388D 12 38 AF         [24] 2034 	lcall	_i2c_delay
                                   2035 ;	8051_i2c_eeprom.c:344: SDA = 1;
                                   2036 ;	assignBit
      003890 D2 94            [12] 2037 	setb	_P1_4
                                   2038 ;	8051_i2c_eeprom.c:345: i2c_delay();
      003892 12 38 AF         [24] 2039 	lcall	_i2c_delay
                                   2040 ;	8051_i2c_eeprom.c:346: SCL = 1;
                                   2041 ;	assignBit
      003895 D2 93            [12] 2042 	setb	_P1_3
                                   2043 ;	8051_i2c_eeprom.c:347: i2c_delay();
      003897 12 38 AF         [24] 2044 	lcall	_i2c_delay
                                   2045 ;	8051_i2c_eeprom.c:348: SDA = 0;
                                   2046 ;	assignBit
      00389A C2 94            [12] 2047 	clr	_P1_4
                                   2048 ;	8051_i2c_eeprom.c:349: i2c_delay();
      00389C 12 38 AF         [24] 2049 	lcall	_i2c_delay
                                   2050 ;	8051_i2c_eeprom.c:350: SCL = 0;
                                   2051 ;	assignBit
      00389F C2 93            [12] 2052 	clr	_P1_3
                                   2053 ;	8051_i2c_eeprom.c:351: }
      0038A1 22               [24] 2054 	ret
                                   2055 ;------------------------------------------------------------
                                   2056 ;Allocation info for local variables in function 'i2c_stop'
                                   2057 ;------------------------------------------------------------
                                   2058 ;	8051_i2c_eeprom.c:353: void i2c_stop(void)
                                   2059 ;	-----------------------------------------
                                   2060 ;	 function i2c_stop
                                   2061 ;	-----------------------------------------
      0038A2                       2062 _i2c_stop:
                                   2063 ;	8051_i2c_eeprom.c:355: SDA = 0;
                                   2064 ;	assignBit
      0038A2 C2 94            [12] 2065 	clr	_P1_4
                                   2066 ;	8051_i2c_eeprom.c:356: i2c_delay();
      0038A4 12 38 AF         [24] 2067 	lcall	_i2c_delay
                                   2068 ;	8051_i2c_eeprom.c:357: SCL = 1;
                                   2069 ;	assignBit
      0038A7 D2 93            [12] 2070 	setb	_P1_3
                                   2071 ;	8051_i2c_eeprom.c:358: i2c_delay();
      0038A9 12 38 AF         [24] 2072 	lcall	_i2c_delay
                                   2073 ;	8051_i2c_eeprom.c:359: SDA = 1; 
                                   2074 ;	assignBit
      0038AC D2 94            [12] 2075 	setb	_P1_4
                                   2076 ;	8051_i2c_eeprom.c:360: }
      0038AE 22               [24] 2077 	ret
                                   2078 ;------------------------------------------------------------
                                   2079 ;Allocation info for local variables in function 'i2c_delay'
                                   2080 ;------------------------------------------------------------
                                   2081 ;i                         Allocated with name '_i2c_delay_i_131072_105'
                                   2082 ;------------------------------------------------------------
                                   2083 ;	8051_i2c_eeprom.c:362: void i2c_delay() 
                                   2084 ;	-----------------------------------------
                                   2085 ;	 function i2c_delay
                                   2086 ;	-----------------------------------------
      0038AF                       2087 _i2c_delay:
                                   2088 ;	8051_i2c_eeprom.c:370: for(int i = 0; i<500; i++);
      0038AF 7E 00            [12] 2089 	mov	r6,#0x00
      0038B1 7F 00            [12] 2090 	mov	r7,#0x00
      0038B3                       2091 00103$:
      0038B3 C3               [12] 2092 	clr	c
      0038B4 EE               [12] 2093 	mov	a,r6
      0038B5 94 F4            [12] 2094 	subb	a,#0xf4
      0038B7 EF               [12] 2095 	mov	a,r7
      0038B8 64 80            [12] 2096 	xrl	a,#0x80
      0038BA 94 81            [12] 2097 	subb	a,#0x81
      0038BC 50 07            [24] 2098 	jnc	00105$
      0038BE 0E               [12] 2099 	inc	r6
      0038BF BE 00 F1         [24] 2100 	cjne	r6,#0x00,00103$
      0038C2 0F               [12] 2101 	inc	r7
      0038C3 80 EE            [24] 2102 	sjmp	00103$
      0038C5                       2103 00105$:
                                   2104 ;	8051_i2c_eeprom.c:371: }
      0038C5 22               [24] 2105 	ret
                                   2106 ;------------------------------------------------------------
                                   2107 ;Allocation info for local variables in function 'test_function'
                                   2108 ;------------------------------------------------------------
                                   2109 ;test_data                 Allocated with name '_test_function_test_data_65537_107'
                                   2110 ;address                   Allocated with name '_test_function_address_65537_107'
                                   2111 ;i                         Allocated with name '_test_function_i_131073_108'
                                   2112 ;read_data                 Allocated with name '_test_function_read_data_65538_110'
                                   2113 ;------------------------------------------------------------
                                   2114 ;	8051_i2c_eeprom.c:373: void test_function()
                                   2115 ;	-----------------------------------------
                                   2116 ;	 function test_function
                                   2117 ;	-----------------------------------------
      0038C6                       2118 _test_function:
                                   2119 ;	8051_i2c_eeprom.c:375: i2c_start();
      0038C6 12 38 8D         [24] 2120 	lcall	_i2c_start
                                   2121 ;	8051_i2c_eeprom.c:376: i2c_delay();
      0038C9 12 38 AF         [24] 2122 	lcall	_i2c_delay
                                   2123 ;	8051_i2c_eeprom.c:382: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      0038CC 74 02            [12] 2124 	mov	a,#0x02
      0038CE C0 E0            [24] 2125 	push	acc
      0038D0 E4               [12] 2126 	clr	a
      0038D1 C0 E0            [24] 2127 	push	acc
      0038D3 74 26            [12] 2128 	mov	a,#0x26
      0038D5 C0 E0            [24] 2129 	push	acc
      0038D7 E4               [12] 2130 	clr	a
      0038D8 C0 E0            [24] 2131 	push	acc
      0038DA 74 44            [12] 2132 	mov	a,#___str_34
      0038DC C0 E0            [24] 2133 	push	acc
      0038DE 74 4D            [12] 2134 	mov	a,#(___str_34 >> 8)
      0038E0 C0 E0            [24] 2135 	push	acc
      0038E2 74 80            [12] 2136 	mov	a,#0x80
      0038E4 C0 E0            [24] 2137 	push	acc
      0038E6 12 39 CC         [24] 2138 	lcall	_printf
      0038E9 E5 81            [12] 2139 	mov	a,sp
      0038EB 24 F9            [12] 2140 	add	a,#0xf9
      0038ED F5 81            [12] 2141 	mov	sp,a
                                   2142 ;	8051_i2c_eeprom.c:383: eeprom_write(address, test_data);
      0038EF 90 04 0F         [24] 2143 	mov	dptr,#_eeprom_write_PARM_2
      0038F2 74 26            [12] 2144 	mov	a,#0x26
      0038F4 F0               [24] 2145 	movx	@dptr,a
      0038F5 90 00 02         [24] 2146 	mov	dptr,#0x0002
      0038F8 12 35 A4         [24] 2147 	lcall	_eeprom_write
                                   2148 ;	8051_i2c_eeprom.c:384: i2c_stop();
      0038FB 12 38 A2         [24] 2149 	lcall	_i2c_stop
                                   2150 ;	8051_i2c_eeprom.c:386: for(int i = 0; i<100; i++)
      0038FE 7E 00            [12] 2151 	mov	r6,#0x00
      003900 7F 00            [12] 2152 	mov	r7,#0x00
      003902                       2153 00106$:
      003902 C3               [12] 2154 	clr	c
      003903 EE               [12] 2155 	mov	a,r6
      003904 94 64            [12] 2156 	subb	a,#0x64
      003906 EF               [12] 2157 	mov	a,r7
      003907 64 80            [12] 2158 	xrl	a,#0x80
      003909 94 80            [12] 2159 	subb	a,#0x80
      00390B 50 12            [24] 2160 	jnc	00101$
                                   2161 ;	8051_i2c_eeprom.c:388: i2c_delay();
      00390D C0 07            [24] 2162 	push	ar7
      00390F C0 06            [24] 2163 	push	ar6
      003911 12 38 AF         [24] 2164 	lcall	_i2c_delay
      003914 D0 06            [24] 2165 	pop	ar6
      003916 D0 07            [24] 2166 	pop	ar7
                                   2167 ;	8051_i2c_eeprom.c:386: for(int i = 0; i<100; i++)
      003918 0E               [12] 2168 	inc	r6
      003919 BE 00 E6         [24] 2169 	cjne	r6,#0x00,00106$
      00391C 0F               [12] 2170 	inc	r7
      00391D 80 E3            [24] 2171 	sjmp	00106$
      00391F                       2172 00101$:
                                   2173 ;	8051_i2c_eeprom.c:392: unsigned char read_data = eeprom_read(address);
      00391F 90 00 02         [24] 2174 	mov	dptr,#0x0002
      003922 12 36 DD         [24] 2175 	lcall	_eeprom_read
      003925 AE 82            [24] 2176 	mov	r6,dpl
                                   2177 ;	8051_i2c_eeprom.c:393: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      003927 8E 05            [24] 2178 	mov	ar5,r6
      003929 7F 00            [12] 2179 	mov	r7,#0x00
      00392B C0 06            [24] 2180 	push	ar6
      00392D C0 05            [24] 2181 	push	ar5
      00392F C0 07            [24] 2182 	push	ar7
      003931 74 02            [12] 2183 	mov	a,#0x02
      003933 C0 E0            [24] 2184 	push	acc
      003935 E4               [12] 2185 	clr	a
      003936 C0 E0            [24] 2186 	push	acc
      003938 74 6C            [12] 2187 	mov	a,#___str_35
      00393A C0 E0            [24] 2188 	push	acc
      00393C 74 4D            [12] 2189 	mov	a,#(___str_35 >> 8)
      00393E C0 E0            [24] 2190 	push	acc
      003940 74 80            [12] 2191 	mov	a,#0x80
      003942 C0 E0            [24] 2192 	push	acc
      003944 12 39 CC         [24] 2193 	lcall	_printf
      003947 E5 81            [12] 2194 	mov	a,sp
      003949 24 F9            [12] 2195 	add	a,#0xf9
      00394B F5 81            [12] 2196 	mov	sp,a
      00394D D0 06            [24] 2197 	pop	ar6
                                   2198 ;	8051_i2c_eeprom.c:396: if(read_data == test_data) {
      00394F BE 26 16         [24] 2199 	cjne	r6,#0x26,00103$
                                   2200 ;	8051_i2c_eeprom.c:397: printf("MATCH - Write/Read successful!\n\r");
      003952 74 94            [12] 2201 	mov	a,#___str_36
      003954 C0 E0            [24] 2202 	push	acc
      003956 74 4D            [12] 2203 	mov	a,#(___str_36 >> 8)
      003958 C0 E0            [24] 2204 	push	acc
      00395A 74 80            [12] 2205 	mov	a,#0x80
      00395C C0 E0            [24] 2206 	push	acc
      00395E 12 39 CC         [24] 2207 	lcall	_printf
      003961 15 81            [12] 2208 	dec	sp
      003963 15 81            [12] 2209 	dec	sp
      003965 15 81            [12] 2210 	dec	sp
      003967 22               [24] 2211 	ret
      003968                       2212 00103$:
                                   2213 ;	8051_i2c_eeprom.c:399: printf("ERROR - Data mismatch!\n\r");
      003968 74 B5            [12] 2214 	mov	a,#___str_37
      00396A C0 E0            [24] 2215 	push	acc
      00396C 74 4D            [12] 2216 	mov	a,#(___str_37 >> 8)
      00396E C0 E0            [24] 2217 	push	acc
      003970 74 80            [12] 2218 	mov	a,#0x80
      003972 C0 E0            [24] 2219 	push	acc
      003974 12 39 CC         [24] 2220 	lcall	_printf
      003977 15 81            [12] 2221 	dec	sp
      003979 15 81            [12] 2222 	dec	sp
      00397B 15 81            [12] 2223 	dec	sp
                                   2224 ;	8051_i2c_eeprom.c:403: }
      00397D 22               [24] 2225 	ret
                                   2226 	.area CSEG    (CODE)
                                   2227 	.area CONST   (CODE)
                                   2228 	.area CONST   (CODE)
      00442E                       2229 ___str_0:
      00442E 0A                    2230 	.db 0x0a
      00442F E2                    2231 	.db 0xe2
      004430 95                    2232 	.db 0x95
      004431 94                    2233 	.db 0x94
      004432 E2                    2234 	.db 0xe2
      004433 95                    2235 	.db 0x95
      004434 90                    2236 	.db 0x90
      004435 E2                    2237 	.db 0xe2
      004436 95                    2238 	.db 0x95
      004437 90                    2239 	.db 0x90
      004438 E2                    2240 	.db 0xe2
      004439 95                    2241 	.db 0x95
      00443A 90                    2242 	.db 0x90
      00443B E2                    2243 	.db 0xe2
      00443C 95                    2244 	.db 0x95
      00443D 90                    2245 	.db 0x90
      00443E E2                    2246 	.db 0xe2
      00443F 95                    2247 	.db 0x95
      004440 90                    2248 	.db 0x90
      004441 E2                    2249 	.db 0xe2
      004442 95                    2250 	.db 0x95
      004443 90                    2251 	.db 0x90
      004444 E2                    2252 	.db 0xe2
      004445 95                    2253 	.db 0x95
      004446 90                    2254 	.db 0x90
      004447 E2                    2255 	.db 0xe2
      004448 95                    2256 	.db 0x95
      004449 90                    2257 	.db 0x90
      00444A E2                    2258 	.db 0xe2
      00444B 95                    2259 	.db 0x95
      00444C 90                    2260 	.db 0x90
      00444D E2                    2261 	.db 0xe2
      00444E 95                    2262 	.db 0x95
      00444F 90                    2263 	.db 0x90
      004450 E2                    2264 	.db 0xe2
      004451 95                    2265 	.db 0x95
      004452 90                    2266 	.db 0x90
      004453 E2                    2267 	.db 0xe2
      004454 95                    2268 	.db 0x95
      004455 90                    2269 	.db 0x90
      004456 E2                    2270 	.db 0xe2
      004457 95                    2271 	.db 0x95
      004458 90                    2272 	.db 0x90
      004459 E2                    2273 	.db 0xe2
      00445A 95                    2274 	.db 0x95
      00445B 90                    2275 	.db 0x90
      00445C E2                    2276 	.db 0xe2
      00445D 95                    2277 	.db 0x95
      00445E 90                    2278 	.db 0x90
      00445F E2                    2279 	.db 0xe2
      004460 95                    2280 	.db 0x95
      004461 90                    2281 	.db 0x90
      004462 E2                    2282 	.db 0xe2
      004463 95                    2283 	.db 0x95
      004464 90                    2284 	.db 0x90
      004465 E2                    2285 	.db 0xe2
      004466 95                    2286 	.db 0x95
      004467 90                    2287 	.db 0x90
      004468 E2                    2288 	.db 0xe2
      004469 95                    2289 	.db 0x95
      00446A 90                    2290 	.db 0x90
      00446B E2                    2291 	.db 0xe2
      00446C 95                    2292 	.db 0x95
      00446D 90                    2293 	.db 0x90
      00446E E2                    2294 	.db 0xe2
      00446F 95                    2295 	.db 0x95
      004470 90                    2296 	.db 0x90
      004471 E2                    2297 	.db 0xe2
      004472 95                    2298 	.db 0x95
      004473 90                    2299 	.db 0x90
      004474 E2                    2300 	.db 0xe2
      004475 95                    2301 	.db 0x95
      004476 90                    2302 	.db 0x90
      004477 E2                    2303 	.db 0xe2
      004478 95                    2304 	.db 0x95
      004479 90                    2305 	.db 0x90
      00447A E2                    2306 	.db 0xe2
      00447B 95                    2307 	.db 0x95
      00447C 90                    2308 	.db 0x90
      00447D E2                    2309 	.db 0xe2
      00447E 95                    2310 	.db 0x95
      00447F 90                    2311 	.db 0x90
      004480 E2                    2312 	.db 0xe2
      004481 95                    2313 	.db 0x95
      004482 90                    2314 	.db 0x90
      004483 E2                    2315 	.db 0xe2
      004484 95                    2316 	.db 0x95
      004485 90                    2317 	.db 0x90
      004486 E2                    2318 	.db 0xe2
      004487 95                    2319 	.db 0x95
      004488 90                    2320 	.db 0x90
      004489 E2                    2321 	.db 0xe2
      00448A 95                    2322 	.db 0x95
      00448B 90                    2323 	.db 0x90
      00448C E2                    2324 	.db 0xe2
      00448D 95                    2325 	.db 0x95
      00448E 90                    2326 	.db 0x90
      00448F E2                    2327 	.db 0xe2
      004490 95                    2328 	.db 0x95
      004491 90                    2329 	.db 0x90
      004492 E2                    2330 	.db 0xe2
      004493 95                    2331 	.db 0x95
      004494 90                    2332 	.db 0x90
      004495 E2                    2333 	.db 0xe2
      004496 95                    2334 	.db 0x95
      004497 90                    2335 	.db 0x90
      004498 E2                    2336 	.db 0xe2
      004499 95                    2337 	.db 0x95
      00449A 90                    2338 	.db 0x90
      00449B E2                    2339 	.db 0xe2
      00449C 95                    2340 	.db 0x95
      00449D 90                    2341 	.db 0x90
      00449E E2                    2342 	.db 0xe2
      00449F 95                    2343 	.db 0x95
      0044A0 90                    2344 	.db 0x90
      0044A1 E2                    2345 	.db 0xe2
      0044A2 95                    2346 	.db 0x95
      0044A3 90                    2347 	.db 0x90
      0044A4 E2                    2348 	.db 0xe2
      0044A5 95                    2349 	.db 0x95
      0044A6 90                    2350 	.db 0x90
      0044A7 E2                    2351 	.db 0xe2
      0044A8 95                    2352 	.db 0x95
      0044A9 90                    2353 	.db 0x90
      0044AA E2                    2354 	.db 0xe2
      0044AB 95                    2355 	.db 0x95
      0044AC 90                    2356 	.db 0x90
      0044AD E2                    2357 	.db 0xe2
      0044AE 95                    2358 	.db 0x95
      0044AF 90                    2359 	.db 0x90
      0044B0 E2                    2360 	.db 0xe2
      0044B1 95                    2361 	.db 0x95
      0044B2 90                    2362 	.db 0x90
      0044B3 E2                    2363 	.db 0xe2
      0044B4 95                    2364 	.db 0x95
      0044B5 90                    2365 	.db 0x90
      0044B6 E2                    2366 	.db 0xe2
      0044B7 95                    2367 	.db 0x95
      0044B8 90                    2368 	.db 0x90
      0044B9 E2                    2369 	.db 0xe2
      0044BA 95                    2370 	.db 0x95
      0044BB 90                    2371 	.db 0x90
      0044BC E2                    2372 	.db 0xe2
      0044BD 95                    2373 	.db 0x95
      0044BE 90                    2374 	.db 0x90
      0044BF E2                    2375 	.db 0xe2
      0044C0 95                    2376 	.db 0x95
      0044C1 90                    2377 	.db 0x90
      0044C2 E2                    2378 	.db 0xe2
      0044C3 95                    2379 	.db 0x95
      0044C4 90                    2380 	.db 0x90
      0044C5 E2                    2381 	.db 0xe2
      0044C6 95                    2382 	.db 0x95
      0044C7 90                    2383 	.db 0x90
      0044C8 E2                    2384 	.db 0xe2
      0044C9 95                    2385 	.db 0x95
      0044CA 90                    2386 	.db 0x90
      0044CB E2                    2387 	.db 0xe2
      0044CC 95                    2388 	.db 0x95
      0044CD 90                    2389 	.db 0x90
      0044CE E2                    2390 	.db 0xe2
      0044CF 95                    2391 	.db 0x95
      0044D0 90                    2392 	.db 0x90
      0044D1 E2                    2393 	.db 0xe2
      0044D2 95                    2394 	.db 0x95
      0044D3 90                    2395 	.db 0x90
      0044D4 E2                    2396 	.db 0xe2
      0044D5 95                    2397 	.db 0x95
      0044D6 90                    2398 	.db 0x90
      0044D7 E2                    2399 	.db 0xe2
      0044D8 95                    2400 	.db 0x95
      0044D9 90                    2401 	.db 0x90
      0044DA E2                    2402 	.db 0xe2
      0044DB 95                    2403 	.db 0x95
      0044DC 97                    2404 	.db 0x97
      0044DD 0A                    2405 	.db 0x0a
      0044DE 0D                    2406 	.db 0x0d
      0044DF 00                    2407 	.db 0x00
                                   2408 	.area CSEG    (CODE)
                                   2409 	.area CONST   (CODE)
      0044E0                       2410 ___str_1:
      0044E0 E2                    2411 	.db 0xe2
      0044E1 95                    2412 	.db 0x95
      0044E2 91                    2413 	.db 0x91
      0044E3 20 20 20 20 20 20 20  2414 	.ascii "           I2C Memory Management System v1.0             "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
             20
      00451C E2                    2415 	.db 0xe2
      00451D 95                    2416 	.db 0x95
      00451E 91                    2417 	.db 0x91
      00451F 0A                    2418 	.db 0x0a
      004520 0D                    2419 	.db 0x0d
      004521 00                    2420 	.db 0x00
                                   2421 	.area CSEG    (CODE)
                                   2422 	.area CONST   (CODE)
      004522                       2423 ___str_2:
      004522 E2                    2424 	.db 0xe2
      004523 95                    2425 	.db 0x95
      004524 9A                    2426 	.db 0x9a
      004525 E2                    2427 	.db 0xe2
      004526 95                    2428 	.db 0x95
      004527 90                    2429 	.db 0x90
      004528 E2                    2430 	.db 0xe2
      004529 95                    2431 	.db 0x95
      00452A 90                    2432 	.db 0x90
      00452B E2                    2433 	.db 0xe2
      00452C 95                    2434 	.db 0x95
      00452D 90                    2435 	.db 0x90
      00452E E2                    2436 	.db 0xe2
      00452F 95                    2437 	.db 0x95
      004530 90                    2438 	.db 0x90
      004531 E2                    2439 	.db 0xe2
      004532 95                    2440 	.db 0x95
      004533 90                    2441 	.db 0x90
      004534 E2                    2442 	.db 0xe2
      004535 95                    2443 	.db 0x95
      004536 90                    2444 	.db 0x90
      004537 E2                    2445 	.db 0xe2
      004538 95                    2446 	.db 0x95
      004539 90                    2447 	.db 0x90
      00453A E2                    2448 	.db 0xe2
      00453B 95                    2449 	.db 0x95
      00453C 90                    2450 	.db 0x90
      00453D E2                    2451 	.db 0xe2
      00453E 95                    2452 	.db 0x95
      00453F 90                    2453 	.db 0x90
      004540 E2                    2454 	.db 0xe2
      004541 95                    2455 	.db 0x95
      004542 90                    2456 	.db 0x90
      004543 E2                    2457 	.db 0xe2
      004544 95                    2458 	.db 0x95
      004545 90                    2459 	.db 0x90
      004546 E2                    2460 	.db 0xe2
      004547 95                    2461 	.db 0x95
      004548 90                    2462 	.db 0x90
      004549 E2                    2463 	.db 0xe2
      00454A 95                    2464 	.db 0x95
      00454B 90                    2465 	.db 0x90
      00454C E2                    2466 	.db 0xe2
      00454D 95                    2467 	.db 0x95
      00454E 90                    2468 	.db 0x90
      00454F E2                    2469 	.db 0xe2
      004550 95                    2470 	.db 0x95
      004551 90                    2471 	.db 0x90
      004552 E2                    2472 	.db 0xe2
      004553 95                    2473 	.db 0x95
      004554 90                    2474 	.db 0x90
      004555 E2                    2475 	.db 0xe2
      004556 95                    2476 	.db 0x95
      004557 90                    2477 	.db 0x90
      004558 E2                    2478 	.db 0xe2
      004559 95                    2479 	.db 0x95
      00455A 90                    2480 	.db 0x90
      00455B E2                    2481 	.db 0xe2
      00455C 95                    2482 	.db 0x95
      00455D 90                    2483 	.db 0x90
      00455E E2                    2484 	.db 0xe2
      00455F 95                    2485 	.db 0x95
      004560 90                    2486 	.db 0x90
      004561 E2                    2487 	.db 0xe2
      004562 95                    2488 	.db 0x95
      004563 90                    2489 	.db 0x90
      004564 E2                    2490 	.db 0xe2
      004565 95                    2491 	.db 0x95
      004566 90                    2492 	.db 0x90
      004567 E2                    2493 	.db 0xe2
      004568 95                    2494 	.db 0x95
      004569 90                    2495 	.db 0x90
      00456A E2                    2496 	.db 0xe2
      00456B 95                    2497 	.db 0x95
      00456C 90                    2498 	.db 0x90
      00456D E2                    2499 	.db 0xe2
      00456E 95                    2500 	.db 0x95
      00456F 90                    2501 	.db 0x90
      004570 E2                    2502 	.db 0xe2
      004571 95                    2503 	.db 0x95
      004572 90                    2504 	.db 0x90
      004573 E2                    2505 	.db 0xe2
      004574 95                    2506 	.db 0x95
      004575 90                    2507 	.db 0x90
      004576 E2                    2508 	.db 0xe2
      004577 95                    2509 	.db 0x95
      004578 90                    2510 	.db 0x90
      004579 E2                    2511 	.db 0xe2
      00457A 95                    2512 	.db 0x95
      00457B 90                    2513 	.db 0x90
      00457C E2                    2514 	.db 0xe2
      00457D 95                    2515 	.db 0x95
      00457E 90                    2516 	.db 0x90
      00457F E2                    2517 	.db 0xe2
      004580 95                    2518 	.db 0x95
      004581 90                    2519 	.db 0x90
      004582 E2                    2520 	.db 0xe2
      004583 95                    2521 	.db 0x95
      004584 90                    2522 	.db 0x90
      004585 E2                    2523 	.db 0xe2
      004586 95                    2524 	.db 0x95
      004587 90                    2525 	.db 0x90
      004588 E2                    2526 	.db 0xe2
      004589 95                    2527 	.db 0x95
      00458A 90                    2528 	.db 0x90
      00458B E2                    2529 	.db 0xe2
      00458C 95                    2530 	.db 0x95
      00458D 90                    2531 	.db 0x90
      00458E E2                    2532 	.db 0xe2
      00458F 95                    2533 	.db 0x95
      004590 90                    2534 	.db 0x90
      004591 E2                    2535 	.db 0xe2
      004592 95                    2536 	.db 0x95
      004593 90                    2537 	.db 0x90
      004594 E2                    2538 	.db 0xe2
      004595 95                    2539 	.db 0x95
      004596 90                    2540 	.db 0x90
      004597 E2                    2541 	.db 0xe2
      004598 95                    2542 	.db 0x95
      004599 90                    2543 	.db 0x90
      00459A E2                    2544 	.db 0xe2
      00459B 95                    2545 	.db 0x95
      00459C 90                    2546 	.db 0x90
      00459D E2                    2547 	.db 0xe2
      00459E 95                    2548 	.db 0x95
      00459F 90                    2549 	.db 0x90
      0045A0 E2                    2550 	.db 0xe2
      0045A1 95                    2551 	.db 0x95
      0045A2 90                    2552 	.db 0x90
      0045A3 E2                    2553 	.db 0xe2
      0045A4 95                    2554 	.db 0x95
      0045A5 90                    2555 	.db 0x90
      0045A6 E2                    2556 	.db 0xe2
      0045A7 95                    2557 	.db 0x95
      0045A8 90                    2558 	.db 0x90
      0045A9 E2                    2559 	.db 0xe2
      0045AA 95                    2560 	.db 0x95
      0045AB 90                    2561 	.db 0x90
      0045AC E2                    2562 	.db 0xe2
      0045AD 95                    2563 	.db 0x95
      0045AE 90                    2564 	.db 0x90
      0045AF E2                    2565 	.db 0xe2
      0045B0 95                    2566 	.db 0x95
      0045B1 90                    2567 	.db 0x90
      0045B2 E2                    2568 	.db 0xe2
      0045B3 95                    2569 	.db 0x95
      0045B4 90                    2570 	.db 0x90
      0045B5 E2                    2571 	.db 0xe2
      0045B6 95                    2572 	.db 0x95
      0045B7 90                    2573 	.db 0x90
      0045B8 E2                    2574 	.db 0xe2
      0045B9 95                    2575 	.db 0x95
      0045BA 90                    2576 	.db 0x90
      0045BB E2                    2577 	.db 0xe2
      0045BC 95                    2578 	.db 0x95
      0045BD 90                    2579 	.db 0x90
      0045BE E2                    2580 	.db 0xe2
      0045BF 95                    2581 	.db 0x95
      0045C0 90                    2582 	.db 0x90
      0045C1 E2                    2583 	.db 0xe2
      0045C2 95                    2584 	.db 0x95
      0045C3 90                    2585 	.db 0x90
      0045C4 E2                    2586 	.db 0xe2
      0045C5 95                    2587 	.db 0x95
      0045C6 90                    2588 	.db 0x90
      0045C7 E2                    2589 	.db 0xe2
      0045C8 95                    2590 	.db 0x95
      0045C9 90                    2591 	.db 0x90
      0045CA E2                    2592 	.db 0xe2
      0045CB 95                    2593 	.db 0x95
      0045CC 90                    2594 	.db 0x90
      0045CD E2                    2595 	.db 0xe2
      0045CE 95                    2596 	.db 0x95
      0045CF 9D                    2597 	.db 0x9d
      0045D0 0A                    2598 	.db 0x0a
      0045D1 0D                    2599 	.db 0x0d
      0045D2 00                    2600 	.db 0x00
                                   2601 	.area CSEG    (CODE)
                                   2602 	.area CONST   (CODE)
      0045D3                       2603 ___str_3:
      0045D3 0A                    2604 	.db 0x0a
      0045D4 0D                    2605 	.db 0x0d
      0045D5 E2                    2606 	.db 0xe2
      0045D6 94                    2607 	.db 0x94
      0045D7 8C                    2608 	.db 0x8c
      0045D8 E2                    2609 	.db 0xe2
      0045D9 94                    2610 	.db 0x94
      0045DA 80                    2611 	.db 0x80
      0045DB E2                    2612 	.db 0xe2
      0045DC 94                    2613 	.db 0x94
      0045DD 80                    2614 	.db 0x80
      0045DE E2                    2615 	.db 0xe2
      0045DF 94                    2616 	.db 0x94
      0045E0 80                    2617 	.db 0x80
      0045E1 E2                    2618 	.db 0xe2
      0045E2 94                    2619 	.db 0x94
      0045E3 80                    2620 	.db 0x80
      0045E4 E2                    2621 	.db 0xe2
      0045E5 94                    2622 	.db 0x94
      0045E6 80                    2623 	.db 0x80
      0045E7 E2                    2624 	.db 0xe2
      0045E8 94                    2625 	.db 0x94
      0045E9 80                    2626 	.db 0x80
      0045EA E2                    2627 	.db 0xe2
      0045EB 94                    2628 	.db 0x94
      0045EC 80                    2629 	.db 0x80
      0045ED E2                    2630 	.db 0xe2
      0045EE 94                    2631 	.db 0x94
      0045EF 80                    2632 	.db 0x80
      0045F0 E2                    2633 	.db 0xe2
      0045F1 94                    2634 	.db 0x94
      0045F2 80                    2635 	.db 0x80
      0045F3 E2                    2636 	.db 0xe2
      0045F4 94                    2637 	.db 0x94
      0045F5 80                    2638 	.db 0x80
      0045F6 E2                    2639 	.db 0xe2
      0045F7 94                    2640 	.db 0x94
      0045F8 80                    2641 	.db 0x80
      0045F9 E2                    2642 	.db 0xe2
      0045FA 94                    2643 	.db 0x94
      0045FB 80                    2644 	.db 0x80
      0045FC E2                    2645 	.db 0xe2
      0045FD 94                    2646 	.db 0x94
      0045FE AC                    2647 	.db 0xac
      0045FF E2                    2648 	.db 0xe2
      004600 94                    2649 	.db 0x94
      004601 80                    2650 	.db 0x80
      004602 E2                    2651 	.db 0xe2
      004603 94                    2652 	.db 0x94
      004604 80                    2653 	.db 0x80
      004605 E2                    2654 	.db 0xe2
      004606 94                    2655 	.db 0x94
      004607 80                    2656 	.db 0x80
      004608 E2                    2657 	.db 0xe2
      004609 94                    2658 	.db 0x94
      00460A 80                    2659 	.db 0x80
      00460B E2                    2660 	.db 0xe2
      00460C 94                    2661 	.db 0x94
      00460D 80                    2662 	.db 0x80
      00460E E2                    2663 	.db 0xe2
      00460F 94                    2664 	.db 0x94
      004610 80                    2665 	.db 0x80
      004611 E2                    2666 	.db 0xe2
      004612 94                    2667 	.db 0x94
      004613 80                    2668 	.db 0x80
      004614 E2                    2669 	.db 0xe2
      004615 94                    2670 	.db 0x94
      004616 80                    2671 	.db 0x80
      004617 E2                    2672 	.db 0xe2
      004618 94                    2673 	.db 0x94
      004619 80                    2674 	.db 0x80
      00461A E2                    2675 	.db 0xe2
      00461B 94                    2676 	.db 0x94
      00461C 80                    2677 	.db 0x80
      00461D E2                    2678 	.db 0xe2
      00461E 94                    2679 	.db 0x94
      00461F 80                    2680 	.db 0x80
      004620 E2                    2681 	.db 0xe2
      004621 94                    2682 	.db 0x94
      004622 80                    2683 	.db 0x80
      004623 E2                    2684 	.db 0xe2
      004624 94                    2685 	.db 0x94
      004625 80                    2686 	.db 0x80
      004626 E2                    2687 	.db 0xe2
      004627 94                    2688 	.db 0x94
      004628 80                    2689 	.db 0x80
      004629 E2                    2690 	.db 0xe2
      00462A 94                    2691 	.db 0x94
      00462B 80                    2692 	.db 0x80
      00462C E2                    2693 	.db 0xe2
      00462D 94                    2694 	.db 0x94
      00462E 80                    2695 	.db 0x80
      00462F E2                    2696 	.db 0xe2
      004630 94                    2697 	.db 0x94
      004631 80                    2698 	.db 0x80
      004632 E2                    2699 	.db 0xe2
      004633 94                    2700 	.db 0x94
      004634 80                    2701 	.db 0x80
      004635 E2                    2702 	.db 0xe2
      004636 94                    2703 	.db 0x94
      004637 80                    2704 	.db 0x80
      004638 E2                    2705 	.db 0xe2
      004639 94                    2706 	.db 0x94
      00463A 80                    2707 	.db 0x80
      00463B E2                    2708 	.db 0xe2
      00463C 94                    2709 	.db 0x94
      00463D 80                    2710 	.db 0x80
      00463E E2                    2711 	.db 0xe2
      00463F 94                    2712 	.db 0x94
      004640 80                    2713 	.db 0x80
      004641 E2                    2714 	.db 0xe2
      004642 94                    2715 	.db 0x94
      004643 80                    2716 	.db 0x80
      004644 E2                    2717 	.db 0xe2
      004645 94                    2718 	.db 0x94
      004646 80                    2719 	.db 0x80
      004647 E2                    2720 	.db 0xe2
      004648 94                    2721 	.db 0x94
      004649 80                    2722 	.db 0x80
      00464A E2                    2723 	.db 0xe2
      00464B 94                    2724 	.db 0x94
      00464C 80                    2725 	.db 0x80
      00464D E2                    2726 	.db 0xe2
      00464E 94                    2727 	.db 0x94
      00464F 80                    2728 	.db 0x80
      004650 E2                    2729 	.db 0xe2
      004651 94                    2730 	.db 0x94
      004652 80                    2731 	.db 0x80
      004653 E2                    2732 	.db 0xe2
      004654 94                    2733 	.db 0x94
      004655 80                    2734 	.db 0x80
      004656 E2                    2735 	.db 0xe2
      004657 94                    2736 	.db 0x94
      004658 80                    2737 	.db 0x80
      004659 E2                    2738 	.db 0xe2
      00465A 94                    2739 	.db 0x94
      00465B 80                    2740 	.db 0x80
      00465C E2                    2741 	.db 0xe2
      00465D 94                    2742 	.db 0x94
      00465E 80                    2743 	.db 0x80
      00465F E2                    2744 	.db 0xe2
      004660 94                    2745 	.db 0x94
      004661 80                    2746 	.db 0x80
      004662 E2                    2747 	.db 0xe2
      004663 94                    2748 	.db 0x94
      004664 80                    2749 	.db 0x80
      004665 E2                    2750 	.db 0xe2
      004666 94                    2751 	.db 0x94
      004667 80                    2752 	.db 0x80
      004668 E2                    2753 	.db 0xe2
      004669 94                    2754 	.db 0x94
      00466A 80                    2755 	.db 0x80
      00466B E2                    2756 	.db 0xe2
      00466C 94                    2757 	.db 0x94
      00466D 80                    2758 	.db 0x80
      00466E E2                    2759 	.db 0xe2
      00466F 94                    2760 	.db 0x94
      004670 80                    2761 	.db 0x80
      004671 E2                    2762 	.db 0xe2
      004672 94                    2763 	.db 0x94
      004673 80                    2764 	.db 0x80
      004674 E2                    2765 	.db 0xe2
      004675 94                    2766 	.db 0x94
      004676 80                    2767 	.db 0x80
      004677 E2                    2768 	.db 0xe2
      004678 94                    2769 	.db 0x94
      004679 80                    2770 	.db 0x80
      00467A E2                    2771 	.db 0xe2
      00467B 94                    2772 	.db 0x94
      00467C 80                    2773 	.db 0x80
      00467D E2                    2774 	.db 0xe2
      00467E 94                    2775 	.db 0x94
      00467F 80                    2776 	.db 0x80
      004680 E2                    2777 	.db 0xe2
      004681 94                    2778 	.db 0x94
      004682 80                    2779 	.db 0x80
      004683 E2                    2780 	.db 0xe2
      004684 94                    2781 	.db 0x94
      004685 90                    2782 	.db 0x90
      004686 0A                    2783 	.db 0x0a
      004687 0D                    2784 	.db 0x0d
      004688 00                    2785 	.db 0x00
                                   2786 	.area CSEG    (CODE)
                                   2787 	.area CONST   (CODE)
      004689                       2788 ___str_4:
      004689 E2                    2789 	.db 0xe2
      00468A 94                    2790 	.db 0x94
      00468B 82                    2791 	.db 0x82
      00468C 20 20 43 6F 6D 6D 61  2792 	.ascii "  Command   "
             6E 64 20 20 20
      004698 E2                    2793 	.db 0xe2
      004699 94                    2794 	.db 0x94
      00469A 82                    2795 	.db 0x82
      00469B 20 20 20 20 20 20 20  2796 	.ascii "               Description                   "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20
      0046C8 E2                    2797 	.db 0xe2
      0046C9 94                    2798 	.db 0x94
      0046CA 82                    2799 	.db 0x82
      0046CB 0A                    2800 	.db 0x0a
      0046CC 0D                    2801 	.db 0x0d
      0046CD 00                    2802 	.db 0x00
                                   2803 	.area CSEG    (CODE)
                                   2804 	.area CONST   (CODE)
      0046CE                       2805 ___str_5:
      0046CE E2                    2806 	.db 0xe2
      0046CF 94                    2807 	.db 0x94
      0046D0 9C                    2808 	.db 0x9c
      0046D1 E2                    2809 	.db 0xe2
      0046D2 94                    2810 	.db 0x94
      0046D3 80                    2811 	.db 0x80
      0046D4 E2                    2812 	.db 0xe2
      0046D5 94                    2813 	.db 0x94
      0046D6 80                    2814 	.db 0x80
      0046D7 E2                    2815 	.db 0xe2
      0046D8 94                    2816 	.db 0x94
      0046D9 80                    2817 	.db 0x80
      0046DA E2                    2818 	.db 0xe2
      0046DB 94                    2819 	.db 0x94
      0046DC 80                    2820 	.db 0x80
      0046DD E2                    2821 	.db 0xe2
      0046DE 94                    2822 	.db 0x94
      0046DF 80                    2823 	.db 0x80
      0046E0 E2                    2824 	.db 0xe2
      0046E1 94                    2825 	.db 0x94
      0046E2 80                    2826 	.db 0x80
      0046E3 E2                    2827 	.db 0xe2
      0046E4 94                    2828 	.db 0x94
      0046E5 80                    2829 	.db 0x80
      0046E6 E2                    2830 	.db 0xe2
      0046E7 94                    2831 	.db 0x94
      0046E8 80                    2832 	.db 0x80
      0046E9 E2                    2833 	.db 0xe2
      0046EA 94                    2834 	.db 0x94
      0046EB 80                    2835 	.db 0x80
      0046EC E2                    2836 	.db 0xe2
      0046ED 94                    2837 	.db 0x94
      0046EE 80                    2838 	.db 0x80
      0046EF E2                    2839 	.db 0xe2
      0046F0 94                    2840 	.db 0x94
      0046F1 80                    2841 	.db 0x80
      0046F2 E2                    2842 	.db 0xe2
      0046F3 94                    2843 	.db 0x94
      0046F4 80                    2844 	.db 0x80
      0046F5 E2                    2845 	.db 0xe2
      0046F6 94                    2846 	.db 0x94
      0046F7 BC                    2847 	.db 0xbc
      0046F8 E2                    2848 	.db 0xe2
      0046F9 94                    2849 	.db 0x94
      0046FA 80                    2850 	.db 0x80
      0046FB E2                    2851 	.db 0xe2
      0046FC 94                    2852 	.db 0x94
      0046FD 80                    2853 	.db 0x80
      0046FE E2                    2854 	.db 0xe2
      0046FF 94                    2855 	.db 0x94
      004700 80                    2856 	.db 0x80
      004701 E2                    2857 	.db 0xe2
      004702 94                    2858 	.db 0x94
      004703 80                    2859 	.db 0x80
      004704 E2                    2860 	.db 0xe2
      004705 94                    2861 	.db 0x94
      004706 80                    2862 	.db 0x80
      004707 E2                    2863 	.db 0xe2
      004708 94                    2864 	.db 0x94
      004709 80                    2865 	.db 0x80
      00470A E2                    2866 	.db 0xe2
      00470B 94                    2867 	.db 0x94
      00470C 80                    2868 	.db 0x80
      00470D E2                    2869 	.db 0xe2
      00470E 94                    2870 	.db 0x94
      00470F 80                    2871 	.db 0x80
      004710 E2                    2872 	.db 0xe2
      004711 94                    2873 	.db 0x94
      004712 80                    2874 	.db 0x80
      004713 E2                    2875 	.db 0xe2
      004714 94                    2876 	.db 0x94
      004715 80                    2877 	.db 0x80
      004716 E2                    2878 	.db 0xe2
      004717 94                    2879 	.db 0x94
      004718 80                    2880 	.db 0x80
      004719 E2                    2881 	.db 0xe2
      00471A 94                    2882 	.db 0x94
      00471B 80                    2883 	.db 0x80
      00471C E2                    2884 	.db 0xe2
      00471D 94                    2885 	.db 0x94
      00471E 80                    2886 	.db 0x80
      00471F E2                    2887 	.db 0xe2
      004720 94                    2888 	.db 0x94
      004721 80                    2889 	.db 0x80
      004722 E2                    2890 	.db 0xe2
      004723 94                    2891 	.db 0x94
      004724 80                    2892 	.db 0x80
      004725 E2                    2893 	.db 0xe2
      004726 94                    2894 	.db 0x94
      004727 80                    2895 	.db 0x80
      004728 E2                    2896 	.db 0xe2
      004729 94                    2897 	.db 0x94
      00472A 80                    2898 	.db 0x80
      00472B E2                    2899 	.db 0xe2
      00472C 94                    2900 	.db 0x94
      00472D 80                    2901 	.db 0x80
      00472E E2                    2902 	.db 0xe2
      00472F 94                    2903 	.db 0x94
      004730 80                    2904 	.db 0x80
      004731 E2                    2905 	.db 0xe2
      004732 94                    2906 	.db 0x94
      004733 80                    2907 	.db 0x80
      004734 E2                    2908 	.db 0xe2
      004735 94                    2909 	.db 0x94
      004736 80                    2910 	.db 0x80
      004737 E2                    2911 	.db 0xe2
      004738 94                    2912 	.db 0x94
      004739 80                    2913 	.db 0x80
      00473A E2                    2914 	.db 0xe2
      00473B 94                    2915 	.db 0x94
      00473C 80                    2916 	.db 0x80
      00473D E2                    2917 	.db 0xe2
      00473E 94                    2918 	.db 0x94
      00473F 80                    2919 	.db 0x80
      004740 E2                    2920 	.db 0xe2
      004741 94                    2921 	.db 0x94
      004742 80                    2922 	.db 0x80
      004743 E2                    2923 	.db 0xe2
      004744 94                    2924 	.db 0x94
      004745 80                    2925 	.db 0x80
      004746 E2                    2926 	.db 0xe2
      004747 94                    2927 	.db 0x94
      004748 80                    2928 	.db 0x80
      004749 E2                    2929 	.db 0xe2
      00474A 94                    2930 	.db 0x94
      00474B 80                    2931 	.db 0x80
      00474C E2                    2932 	.db 0xe2
      00474D 94                    2933 	.db 0x94
      00474E 80                    2934 	.db 0x80
      00474F E2                    2935 	.db 0xe2
      004750 94                    2936 	.db 0x94
      004751 80                    2937 	.db 0x80
      004752 E2                    2938 	.db 0xe2
      004753 94                    2939 	.db 0x94
      004754 80                    2940 	.db 0x80
      004755 E2                    2941 	.db 0xe2
      004756 94                    2942 	.db 0x94
      004757 80                    2943 	.db 0x80
      004758 E2                    2944 	.db 0xe2
      004759 94                    2945 	.db 0x94
      00475A 80                    2946 	.db 0x80
      00475B E2                    2947 	.db 0xe2
      00475C 94                    2948 	.db 0x94
      00475D 80                    2949 	.db 0x80
      00475E E2                    2950 	.db 0xe2
      00475F 94                    2951 	.db 0x94
      004760 80                    2952 	.db 0x80
      004761 E2                    2953 	.db 0xe2
      004762 94                    2954 	.db 0x94
      004763 80                    2955 	.db 0x80
      004764 E2                    2956 	.db 0xe2
      004765 94                    2957 	.db 0x94
      004766 80                    2958 	.db 0x80
      004767 E2                    2959 	.db 0xe2
      004768 94                    2960 	.db 0x94
      004769 80                    2961 	.db 0x80
      00476A E2                    2962 	.db 0xe2
      00476B 94                    2963 	.db 0x94
      00476C 80                    2964 	.db 0x80
      00476D E2                    2965 	.db 0xe2
      00476E 94                    2966 	.db 0x94
      00476F 80                    2967 	.db 0x80
      004770 E2                    2968 	.db 0xe2
      004771 94                    2969 	.db 0x94
      004772 80                    2970 	.db 0x80
      004773 E2                    2971 	.db 0xe2
      004774 94                    2972 	.db 0x94
      004775 80                    2973 	.db 0x80
      004776 E2                    2974 	.db 0xe2
      004777 94                    2975 	.db 0x94
      004778 80                    2976 	.db 0x80
      004779 E2                    2977 	.db 0xe2
      00477A 94                    2978 	.db 0x94
      00477B 80                    2979 	.db 0x80
      00477C E2                    2980 	.db 0xe2
      00477D 94                    2981 	.db 0x94
      00477E A4                    2982 	.db 0xa4
      00477F 0A                    2983 	.db 0x0a
      004780 0D                    2984 	.db 0x0d
      004781 00                    2985 	.db 0x00
                                   2986 	.area CSEG    (CODE)
                                   2987 	.area CONST   (CODE)
      004782                       2988 ___str_6:
      004782 E2                    2989 	.db 0xe2
      004783 94                    2990 	.db 0x94
      004784 82                    2991 	.db 0x82
      004785 20 20 20 20 20 52 20  2992 	.ascii "     R      "
             20 20 20 20 20
      004791 E2                    2993 	.db 0xe2
      004792 94                    2994 	.db 0x94
      004793 82                    2995 	.db 0x82
      004794 20 52 65 61 64 20 66  2996 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0047C0 E2                    2997 	.db 0xe2
      0047C1 94                    2998 	.db 0x94
      0047C2 82                    2999 	.db 0x82
      0047C3 0A                    3000 	.db 0x0a
      0047C4 0D                    3001 	.db 0x0d
      0047C5 00                    3002 	.db 0x00
                                   3003 	.area CSEG    (CODE)
                                   3004 	.area CONST   (CODE)
      0047C6                       3005 ___str_7:
      0047C6 E2                    3006 	.db 0xe2
      0047C7 94                    3007 	.db 0x94
      0047C8 82                    3008 	.db 0x82
      0047C9 20 20 20 20 20 57 20  3009 	.ascii "     W      "
             20 20 20 20 20
      0047D5 E2                    3010 	.db 0xe2
      0047D6 94                    3011 	.db 0x94
      0047D7 82                    3012 	.db 0x82
      0047D8 20 57 72 69 74 65 20  3013 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004804 E2                    3014 	.db 0xe2
      004805 94                    3015 	.db 0x94
      004806 82                    3016 	.db 0x82
      004807 0A                    3017 	.db 0x0a
      004808 0D                    3018 	.db 0x0d
      004809 00                    3019 	.db 0x00
                                   3020 	.area CSEG    (CODE)
                                   3021 	.area CONST   (CODE)
      00480A                       3022 ___str_8:
      00480A E2                    3023 	.db 0xe2
      00480B 94                    3024 	.db 0x94
      00480C 82                    3025 	.db 0x82
      00480D 20 20 20 20 20 48 20  3026 	.ascii "     H      "
             20 20 20 20 20
      004819 E2                    3027 	.db 0xe2
      00481A 94                    3028 	.db 0x94
      00481B 82                    3029 	.db 0x82
      00481C 20 44 69 73 70 6C 61  3030 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004848 E2                    3031 	.db 0xe2
      004849 94                    3032 	.db 0x94
      00484A 82                    3033 	.db 0x82
      00484B 0A                    3034 	.db 0x0a
      00484C 0D                    3035 	.db 0x0d
      00484D 00                    3036 	.db 0x00
                                   3037 	.area CSEG    (CODE)
                                   3038 	.area CONST   (CODE)
      00484E                       3039 ___str_9:
      00484E E2                    3040 	.db 0xe2
      00484F 94                    3041 	.db 0x94
      004850 82                    3042 	.db 0x82
      004851 20 20 20 20 20 58 20  3043 	.ascii "     X      "
             20 20 20 20 20
      00485D E2                    3044 	.db 0xe2
      00485E 94                    3045 	.db 0x94
      00485F 82                    3046 	.db 0x82
      004860 20 52 65 73 65 74 20  3047 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      00488C E2                    3048 	.db 0xe2
      00488D 94                    3049 	.db 0x94
      00488E 82                    3050 	.db 0x82
      00488F 0A                    3051 	.db 0x0a
      004890 0D                    3052 	.db 0x0d
      004891 00                    3053 	.db 0x00
                                   3054 	.area CSEG    (CODE)
                                   3055 	.area CONST   (CODE)
      004892                       3056 ___str_10:
      004892 E2                    3057 	.db 0xe2
      004893 94                    3058 	.db 0x94
      004894 82                    3059 	.db 0x82
      004895 20 20 20 20 20 3F 20  3060 	.ascii "     ?      "
             20 20 20 20 20
      0048A1 E2                    3061 	.db 0xe2
      0048A2 94                    3062 	.db 0x94
      0048A3 82                    3063 	.db 0x82
      0048A4 20 44 69 73 70 6C 61  3064 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0048D0 E2                    3065 	.db 0xe2
      0048D1 94                    3066 	.db 0x94
      0048D2 82                    3067 	.db 0x82
      0048D3 0A                    3068 	.db 0x0a
      0048D4 0D                    3069 	.db 0x0d
      0048D5 00                    3070 	.db 0x00
                                   3071 	.area CSEG    (CODE)
                                   3072 	.area CONST   (CODE)
      0048D6                       3073 ___str_11:
      0048D6 E2                    3074 	.db 0xe2
      0048D7 94                    3075 	.db 0x94
      0048D8 82                    3076 	.db 0x82
      0048D9 20 20 20 20 20 51 20  3077 	.ascii "     Q      "
             20 20 20 20 20
      0048E5 E2                    3078 	.db 0xe2
      0048E6 94                    3079 	.db 0x94
      0048E7 82                    3080 	.db 0x82
      0048E8 20 51 75 69 74 20 70  3081 	.ascii " Quit program                              "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20
      004913 E2                    3082 	.db 0xe2
      004914 94                    3083 	.db 0x94
      004915 82                    3084 	.db 0x82
      004916 0A                    3085 	.db 0x0a
      004917 0D                    3086 	.db 0x0d
      004918 00                    3087 	.db 0x00
                                   3088 	.area CSEG    (CODE)
                                   3089 	.area CONST   (CODE)
      004919                       3090 ___str_12:
      004919 E2                    3091 	.db 0xe2
      00491A 94                    3092 	.db 0x94
      00491B 94                    3093 	.db 0x94
      00491C E2                    3094 	.db 0xe2
      00491D 94                    3095 	.db 0x94
      00491E 80                    3096 	.db 0x80
      00491F E2                    3097 	.db 0xe2
      004920 94                    3098 	.db 0x94
      004921 80                    3099 	.db 0x80
      004922 E2                    3100 	.db 0xe2
      004923 94                    3101 	.db 0x94
      004924 80                    3102 	.db 0x80
      004925 E2                    3103 	.db 0xe2
      004926 94                    3104 	.db 0x94
      004927 80                    3105 	.db 0x80
      004928 E2                    3106 	.db 0xe2
      004929 94                    3107 	.db 0x94
      00492A 80                    3108 	.db 0x80
      00492B E2                    3109 	.db 0xe2
      00492C 94                    3110 	.db 0x94
      00492D 80                    3111 	.db 0x80
      00492E E2                    3112 	.db 0xe2
      00492F 94                    3113 	.db 0x94
      004930 80                    3114 	.db 0x80
      004931 E2                    3115 	.db 0xe2
      004932 94                    3116 	.db 0x94
      004933 80                    3117 	.db 0x80
      004934 E2                    3118 	.db 0xe2
      004935 94                    3119 	.db 0x94
      004936 80                    3120 	.db 0x80
      004937 E2                    3121 	.db 0xe2
      004938 94                    3122 	.db 0x94
      004939 80                    3123 	.db 0x80
      00493A E2                    3124 	.db 0xe2
      00493B 94                    3125 	.db 0x94
      00493C 80                    3126 	.db 0x80
      00493D E2                    3127 	.db 0xe2
      00493E 94                    3128 	.db 0x94
      00493F 80                    3129 	.db 0x80
      004940 E2                    3130 	.db 0xe2
      004941 94                    3131 	.db 0x94
      004942 B4                    3132 	.db 0xb4
      004943 E2                    3133 	.db 0xe2
      004944 94                    3134 	.db 0x94
      004945 80                    3135 	.db 0x80
      004946 E2                    3136 	.db 0xe2
      004947 94                    3137 	.db 0x94
      004948 80                    3138 	.db 0x80
      004949 E2                    3139 	.db 0xe2
      00494A 94                    3140 	.db 0x94
      00494B 80                    3141 	.db 0x80
      00494C E2                    3142 	.db 0xe2
      00494D 94                    3143 	.db 0x94
      00494E 80                    3144 	.db 0x80
      00494F E2                    3145 	.db 0xe2
      004950 94                    3146 	.db 0x94
      004951 80                    3147 	.db 0x80
      004952 E2                    3148 	.db 0xe2
      004953 94                    3149 	.db 0x94
      004954 80                    3150 	.db 0x80
      004955 E2                    3151 	.db 0xe2
      004956 94                    3152 	.db 0x94
      004957 80                    3153 	.db 0x80
      004958 E2                    3154 	.db 0xe2
      004959 94                    3155 	.db 0x94
      00495A 80                    3156 	.db 0x80
      00495B E2                    3157 	.db 0xe2
      00495C 94                    3158 	.db 0x94
      00495D 80                    3159 	.db 0x80
      00495E E2                    3160 	.db 0xe2
      00495F 94                    3161 	.db 0x94
      004960 80                    3162 	.db 0x80
      004961 E2                    3163 	.db 0xe2
      004962 94                    3164 	.db 0x94
      004963 80                    3165 	.db 0x80
      004964 E2                    3166 	.db 0xe2
      004965 94                    3167 	.db 0x94
      004966 80                    3168 	.db 0x80
      004967 E2                    3169 	.db 0xe2
      004968 94                    3170 	.db 0x94
      004969 80                    3171 	.db 0x80
      00496A E2                    3172 	.db 0xe2
      00496B 94                    3173 	.db 0x94
      00496C 80                    3174 	.db 0x80
      00496D E2                    3175 	.db 0xe2
      00496E 94                    3176 	.db 0x94
      00496F 80                    3177 	.db 0x80
      004970 E2                    3178 	.db 0xe2
      004971 94                    3179 	.db 0x94
      004972 80                    3180 	.db 0x80
      004973 E2                    3181 	.db 0xe2
      004974 94                    3182 	.db 0x94
      004975 80                    3183 	.db 0x80
      004976 E2                    3184 	.db 0xe2
      004977 94                    3185 	.db 0x94
      004978 80                    3186 	.db 0x80
      004979 E2                    3187 	.db 0xe2
      00497A 94                    3188 	.db 0x94
      00497B 80                    3189 	.db 0x80
      00497C E2                    3190 	.db 0xe2
      00497D 94                    3191 	.db 0x94
      00497E 80                    3192 	.db 0x80
      00497F E2                    3193 	.db 0xe2
      004980 94                    3194 	.db 0x94
      004981 80                    3195 	.db 0x80
      004982 E2                    3196 	.db 0xe2
      004983 94                    3197 	.db 0x94
      004984 80                    3198 	.db 0x80
      004985 E2                    3199 	.db 0xe2
      004986 94                    3200 	.db 0x94
      004987 80                    3201 	.db 0x80
      004988 E2                    3202 	.db 0xe2
      004989 94                    3203 	.db 0x94
      00498A 80                    3204 	.db 0x80
      00498B E2                    3205 	.db 0xe2
      00498C 94                    3206 	.db 0x94
      00498D 80                    3207 	.db 0x80
      00498E E2                    3208 	.db 0xe2
      00498F 94                    3209 	.db 0x94
      004990 80                    3210 	.db 0x80
      004991 E2                    3211 	.db 0xe2
      004992 94                    3212 	.db 0x94
      004993 80                    3213 	.db 0x80
      004994 E2                    3214 	.db 0xe2
      004995 94                    3215 	.db 0x94
      004996 80                    3216 	.db 0x80
      004997 E2                    3217 	.db 0xe2
      004998 94                    3218 	.db 0x94
      004999 80                    3219 	.db 0x80
      00499A E2                    3220 	.db 0xe2
      00499B 94                    3221 	.db 0x94
      00499C 80                    3222 	.db 0x80
      00499D E2                    3223 	.db 0xe2
      00499E 94                    3224 	.db 0x94
      00499F 80                    3225 	.db 0x80
      0049A0 E2                    3226 	.db 0xe2
      0049A1 94                    3227 	.db 0x94
      0049A2 80                    3228 	.db 0x80
      0049A3 E2                    3229 	.db 0xe2
      0049A4 94                    3230 	.db 0x94
      0049A5 80                    3231 	.db 0x80
      0049A6 E2                    3232 	.db 0xe2
      0049A7 94                    3233 	.db 0x94
      0049A8 80                    3234 	.db 0x80
      0049A9 E2                    3235 	.db 0xe2
      0049AA 94                    3236 	.db 0x94
      0049AB 80                    3237 	.db 0x80
      0049AC E2                    3238 	.db 0xe2
      0049AD 94                    3239 	.db 0x94
      0049AE 80                    3240 	.db 0x80
      0049AF E2                    3241 	.db 0xe2
      0049B0 94                    3242 	.db 0x94
      0049B1 80                    3243 	.db 0x80
      0049B2 E2                    3244 	.db 0xe2
      0049B3 94                    3245 	.db 0x94
      0049B4 80                    3246 	.db 0x80
      0049B5 E2                    3247 	.db 0xe2
      0049B6 94                    3248 	.db 0x94
      0049B7 80                    3249 	.db 0x80
      0049B8 E2                    3250 	.db 0xe2
      0049B9 94                    3251 	.db 0x94
      0049BA 80                    3252 	.db 0x80
      0049BB E2                    3253 	.db 0xe2
      0049BC 94                    3254 	.db 0x94
      0049BD 80                    3255 	.db 0x80
      0049BE E2                    3256 	.db 0xe2
      0049BF 94                    3257 	.db 0x94
      0049C0 80                    3258 	.db 0x80
      0049C1 E2                    3259 	.db 0xe2
      0049C2 94                    3260 	.db 0x94
      0049C3 80                    3261 	.db 0x80
      0049C4 E2                    3262 	.db 0xe2
      0049C5 94                    3263 	.db 0x94
      0049C6 80                    3264 	.db 0x80
      0049C7 E2                    3265 	.db 0xe2
      0049C8 94                    3266 	.db 0x94
      0049C9 98                    3267 	.db 0x98
      0049CA 0A                    3268 	.db 0x0a
      0049CB 0D                    3269 	.db 0x0d
      0049CC 00                    3270 	.db 0x00
                                   3271 	.area CSEG    (CODE)
                                   3272 	.area CONST   (CODE)
      0049CD                       3273 ___str_13:
      0049CD 24 20 25 63           3274 	.ascii "$ %c"
      0049D1 0A                    3275 	.db 0x0a
      0049D2 0D                    3276 	.db 0x0d
      0049D3 00                    3277 	.db 0x00
                                   3278 	.area CSEG    (CODE)
                                   3279 	.area CONST   (CODE)
      0049D4                       3280 ___str_14:
      0049D4 0A                    3281 	.db 0x0a
      0049D5 E2                    3282 	.db 0xe2
      0049D6 94                    3283 	.db 0x94
      0049D7 8C                    3284 	.db 0x8c
      0049D8 E2                    3285 	.db 0xe2
      0049D9 94                    3286 	.db 0x94
      0049DA 80                    3287 	.db 0x80
      0049DB E2                    3288 	.db 0xe2
      0049DC 94                    3289 	.db 0x94
      0049DD 80                    3290 	.db 0x80
      0049DE E2                    3291 	.db 0xe2
      0049DF 94                    3292 	.db 0x94
      0049E0 80                    3293 	.db 0x80
      0049E1 E2                    3294 	.db 0xe2
      0049E2 94                    3295 	.db 0x94
      0049E3 80                    3296 	.db 0x80
      0049E4 E2                    3297 	.db 0xe2
      0049E5 94                    3298 	.db 0x94
      0049E6 80                    3299 	.db 0x80
      0049E7 E2                    3300 	.db 0xe2
      0049E8 94                    3301 	.db 0x94
      0049E9 80                    3302 	.db 0x80
      0049EA E2                    3303 	.db 0xe2
      0049EB 94                    3304 	.db 0x94
      0049EC 80                    3305 	.db 0x80
      0049ED E2                    3306 	.db 0xe2
      0049EE 94                    3307 	.db 0x94
      0049EF 80                    3308 	.db 0x80
      0049F0 E2                    3309 	.db 0xe2
      0049F1 94                    3310 	.db 0x94
      0049F2 80                    3311 	.db 0x80
      0049F3 E2                    3312 	.db 0xe2
      0049F4 94                    3313 	.db 0x94
      0049F5 80                    3314 	.db 0x80
      0049F6 E2                    3315 	.db 0xe2
      0049F7 94                    3316 	.db 0x94
      0049F8 80                    3317 	.db 0x80
      0049F9 E2                    3318 	.db 0xe2
      0049FA 94                    3319 	.db 0x94
      0049FB 80                    3320 	.db 0x80
      0049FC E2                    3321 	.db 0xe2
      0049FD 94                    3322 	.db 0x94
      0049FE 80                    3323 	.db 0x80
      0049FF E2                    3324 	.db 0xe2
      004A00 94                    3325 	.db 0x94
      004A01 80                    3326 	.db 0x80
      004A02 E2                    3327 	.db 0xe2
      004A03 94                    3328 	.db 0x94
      004A04 80                    3329 	.db 0x80
      004A05 20 57 52 49 54 45 20  3330 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      004A16 E2                    3331 	.db 0xe2
      004A17 94                    3332 	.db 0x94
      004A18 80                    3333 	.db 0x80
      004A19 E2                    3334 	.db 0xe2
      004A1A 94                    3335 	.db 0x94
      004A1B 80                    3336 	.db 0x80
      004A1C E2                    3337 	.db 0xe2
      004A1D 94                    3338 	.db 0x94
      004A1E 80                    3339 	.db 0x80
      004A1F E2                    3340 	.db 0xe2
      004A20 94                    3341 	.db 0x94
      004A21 80                    3342 	.db 0x80
      004A22 E2                    3343 	.db 0xe2
      004A23 94                    3344 	.db 0x94
      004A24 80                    3345 	.db 0x80
      004A25 E2                    3346 	.db 0xe2
      004A26 94                    3347 	.db 0x94
      004A27 80                    3348 	.db 0x80
      004A28 E2                    3349 	.db 0xe2
      004A29 94                    3350 	.db 0x94
      004A2A 80                    3351 	.db 0x80
      004A2B E2                    3352 	.db 0xe2
      004A2C 94                    3353 	.db 0x94
      004A2D 80                    3354 	.db 0x80
      004A2E E2                    3355 	.db 0xe2
      004A2F 94                    3356 	.db 0x94
      004A30 80                    3357 	.db 0x80
      004A31 E2                    3358 	.db 0xe2
      004A32 94                    3359 	.db 0x94
      004A33 80                    3360 	.db 0x80
      004A34 E2                    3361 	.db 0xe2
      004A35 94                    3362 	.db 0x94
      004A36 80                    3363 	.db 0x80
      004A37 E2                    3364 	.db 0xe2
      004A38 94                    3365 	.db 0x94
      004A39 80                    3366 	.db 0x80
      004A3A E2                    3367 	.db 0xe2
      004A3B 94                    3368 	.db 0x94
      004A3C 80                    3369 	.db 0x80
      004A3D E2                    3370 	.db 0xe2
      004A3E 94                    3371 	.db 0x94
      004A3F 80                    3372 	.db 0x80
      004A40 E2                    3373 	.db 0xe2
      004A41 94                    3374 	.db 0x94
      004A42 90                    3375 	.db 0x90
      004A43 0A                    3376 	.db 0x0a
      004A44 0D                    3377 	.db 0x0d
      004A45 00                    3378 	.db 0x00
                                   3379 	.area CSEG    (CODE)
                                   3380 	.area CONST   (CODE)
      004A46                       3381 ___str_15:
      004A46 7C 20 57 72 69 74 69  3382 	.ascii "| Writing at Address %d Data %c          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             25 64 20 44 61 74 61
             20 25 63 20 20 20 20
             20 20 20 20 20 20 7C
      004A70 0A                    3383 	.db 0x0a
      004A71 0D                    3384 	.db 0x0d
      004A72 00                    3385 	.db 0x00
                                   3386 	.area CSEG    (CODE)
                                   3387 	.area CONST   (CODE)
      004A73                       3388 ___str_16:
      004A73 49 4E 56 41 4C 49 44  3389 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      004A80 0A                    3390 	.db 0x0a
      004A81 0D                    3391 	.db 0x0d
      004A82 00                    3392 	.db 0x00
                                   3393 	.area CSEG    (CODE)
                                   3394 	.area CONST   (CODE)
      004A83                       3395 ___str_17:
      004A83 E2                    3396 	.db 0xe2
      004A84 94                    3397 	.db 0x94
      004A85 82                    3398 	.db 0x82
      004A86 20 45 6E 74 65 72 20  3399 	.ascii " Enter address (hex, up to 3 characters): "
             61 64 64 72 65 73 73
             20 28 68 65 78 2C 20
             75 70 20 74 6F 20 33
             20 63 68 61 72 61 63
             74 65 72 73 29 3A 20
      004AB0 0A                    3400 	.db 0x0a
      004AB1 0D                    3401 	.db 0x0d
      004AB2 7C                    3402 	.ascii "|"
      004AB3 00                    3403 	.db 0x00
                                   3404 	.area CSEG    (CODE)
                                   3405 	.area CONST   (CODE)
      004AB4                       3406 ___str_18:
      004AB4 24 20                 3407 	.ascii "$ "
      004AB6 00                    3408 	.db 0x00
                                   3409 	.area CSEG    (CODE)
                                   3410 	.area CONST   (CODE)
      004AB7                       3411 ___str_19:
      004AB7 0A                    3412 	.db 0x0a
      004AB8 0D                    3413 	.db 0x0d
      004AB9 E2                    3414 	.db 0xe2
      004ABA 94                    3415 	.db 0x94
      004ABB 82                    3416 	.db 0x82
      004ABC 20 45 6E 74 65 72 65  3417 	.ascii " Entered address: 0x%03X"
             64 20 61 64 64 72 65
             73 73 3A 20 30 78 25
             30 33 58
      004AD4 0A                    3418 	.db 0x0a
      004AD5 0D                    3419 	.db 0x0d
      004AD6 00                    3420 	.db 0x00
                                   3421 	.area CSEG    (CODE)
                                   3422 	.area CONST   (CODE)
      004AD7                       3423 ___str_20:
      004AD7 41 64 64 72 65 73 73  3424 	.ascii "Address out of Range"
             20 6F 75 74 20 6F 66
             20 52 61 6E 67 65
      004AEB 0A                    3425 	.db 0x0a
      004AEC 0D                    3426 	.db 0x0d
      004AED 00                    3427 	.db 0x00
                                   3428 	.area CSEG    (CODE)
                                   3429 	.area CONST   (CODE)
      004AEE                       3430 ___str_21:
      004AEE E2                    3431 	.db 0xe2
      004AEF 94                    3432 	.db 0x94
      004AF0 82                    3433 	.db 0x82
      004AF1 20 45 6E 74 65 72 20  3434 	.ascii " Enter data (hex, up to 2 characters): "
             64 61 74 61 20 28 68
             65 78 2C 20 75 70 20
             74 6F 20 32 20 63 68
             61 72 61 63 74 65 72
             73 29 3A 20
      004B18 0A                    3435 	.db 0x0a
      004B19 0D                    3436 	.db 0x0d
      004B1A 7C                    3437 	.ascii "|"
      004B1B 00                    3438 	.db 0x00
                                   3439 	.area CSEG    (CODE)
                                   3440 	.area CONST   (CODE)
      004B1C                       3441 ___str_22:
      004B1C 0A                    3442 	.db 0x0a
      004B1D 0D                    3443 	.db 0x0d
      004B1E E2                    3444 	.db 0xe2
      004B1F 94                    3445 	.db 0x94
      004B20 82                    3446 	.db 0x82
      004B21 20 45 6E 74 65 72 65  3447 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      004B36 0A                    3448 	.db 0x0a
      004B37 0D                    3449 	.db 0x0d
      004B38 00                    3450 	.db 0x00
                                   3451 	.area CSEG    (CODE)
                                   3452 	.area CONST   (CODE)
      004B39                       3453 ___str_23:
      004B39 44 61 74 61 20 6F 75  3454 	.ascii "Data out of Range"
             74 20 6F 66 20 52 61
             6E 67 65
      004B4A 0A                    3455 	.db 0x0a
      004B4B 0D                    3456 	.db 0x0d
      004B4C 00                    3457 	.db 0x00
                                   3458 	.area CSEG    (CODE)
                                   3459 	.area CONST   (CODE)
      004B4D                       3460 ___str_24:
      004B4D 45 72 72 6F 72 3A 20  3461 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      004B75 0A                    3462 	.db 0x0a
      004B76 0D                    3463 	.db 0x0d
      004B77 00                    3464 	.db 0x00
                                   3465 	.area CSEG    (CODE)
                                   3466 	.area CONST   (CODE)
      004B78                       3467 ___str_25:
      004B78 45 72 72 6F 72 3A 20  3468 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      004B98 0A                    3469 	.db 0x0a
      004B99 0D                    3470 	.db 0x0d
      004B9A 00                    3471 	.db 0x00
                                   3472 	.area CSEG    (CODE)
                                   3473 	.area CONST   (CODE)
      004B9B                       3474 ___str_26:
      004B9B 45 72 72 6F 72 3A 20  3475 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      004BB1 0A                    3476 	.db 0x0a
      004BB2 0D                    3477 	.db 0x0d
      004BB3 00                    3478 	.db 0x00
                                   3479 	.area CSEG    (CODE)
                                   3480 	.area CONST   (CODE)
      004BB4                       3481 ___str_27:
      004BB4 7C 20 57 72 69 74 69  3482 	.ascii "| Writing at Address 0x%02X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 32 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      004BE6 0A                    3483 	.db 0x0a
      004BE7 0D                    3484 	.db 0x0d
      004BE8 00                    3485 	.db 0x00
                                   3486 	.area CSEG    (CODE)
                                   3487 	.area CONST   (CODE)
      004BE9                       3488 ___str_28:
      004BE9 E2                    3489 	.db 0xe2
      004BEA 94                    3490 	.db 0x94
      004BEB 82                    3491 	.db 0x82
      004BEC 20 57 72 69 74 65 20  3492 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      004C1B E2                    3493 	.db 0xe2
      004C1C 94                    3494 	.db 0x94
      004C1D 82                    3495 	.db 0x82
      004C1E 0A                    3496 	.db 0x0a
      004C1F 00                    3497 	.db 0x00
                                   3498 	.area CSEG    (CODE)
                                   3499 	.area CONST   (CODE)
      004C20                       3500 ___str_29:
      004C20 E2                    3501 	.db 0xe2
      004C21 94                    3502 	.db 0x94
      004C22 94                    3503 	.db 0x94
      004C23 E2                    3504 	.db 0xe2
      004C24 94                    3505 	.db 0x94
      004C25 80                    3506 	.db 0x80
      004C26 E2                    3507 	.db 0xe2
      004C27 94                    3508 	.db 0x94
      004C28 80                    3509 	.db 0x80
      004C29 E2                    3510 	.db 0xe2
      004C2A 94                    3511 	.db 0x94
      004C2B 80                    3512 	.db 0x80
      004C2C E2                    3513 	.db 0xe2
      004C2D 94                    3514 	.db 0x94
      004C2E 80                    3515 	.db 0x80
      004C2F E2                    3516 	.db 0xe2
      004C30 94                    3517 	.db 0x94
      004C31 80                    3518 	.db 0x80
      004C32 E2                    3519 	.db 0xe2
      004C33 94                    3520 	.db 0x94
      004C34 80                    3521 	.db 0x80
      004C35 E2                    3522 	.db 0xe2
      004C36 94                    3523 	.db 0x94
      004C37 80                    3524 	.db 0x80
      004C38 E2                    3525 	.db 0xe2
      004C39 94                    3526 	.db 0x94
      004C3A 80                    3527 	.db 0x80
      004C3B E2                    3528 	.db 0xe2
      004C3C 94                    3529 	.db 0x94
      004C3D 80                    3530 	.db 0x80
      004C3E E2                    3531 	.db 0xe2
      004C3F 94                    3532 	.db 0x94
      004C40 80                    3533 	.db 0x80
      004C41 E2                    3534 	.db 0xe2
      004C42 94                    3535 	.db 0x94
      004C43 80                    3536 	.db 0x80
      004C44 E2                    3537 	.db 0xe2
      004C45 94                    3538 	.db 0x94
      004C46 80                    3539 	.db 0x80
      004C47 E2                    3540 	.db 0xe2
      004C48 94                    3541 	.db 0x94
      004C49 80                    3542 	.db 0x80
      004C4A E2                    3543 	.db 0xe2
      004C4B 94                    3544 	.db 0x94
      004C4C 80                    3545 	.db 0x80
      004C4D E2                    3546 	.db 0xe2
      004C4E 94                    3547 	.db 0x94
      004C4F 80                    3548 	.db 0x80
      004C50 E2                    3549 	.db 0xe2
      004C51 94                    3550 	.db 0x94
      004C52 80                    3551 	.db 0x80
      004C53 E2                    3552 	.db 0xe2
      004C54 94                    3553 	.db 0x94
      004C55 80                    3554 	.db 0x80
      004C56 E2                    3555 	.db 0xe2
      004C57 94                    3556 	.db 0x94
      004C58 80                    3557 	.db 0x80
      004C59 E2                    3558 	.db 0xe2
      004C5A 94                    3559 	.db 0x94
      004C5B 80                    3560 	.db 0x80
      004C5C E2                    3561 	.db 0xe2
      004C5D 94                    3562 	.db 0x94
      004C5E 80                    3563 	.db 0x80
      004C5F E2                    3564 	.db 0xe2
      004C60 94                    3565 	.db 0x94
      004C61 80                    3566 	.db 0x80
      004C62 E2                    3567 	.db 0xe2
      004C63 94                    3568 	.db 0x94
      004C64 80                    3569 	.db 0x80
      004C65 E2                    3570 	.db 0xe2
      004C66 94                    3571 	.db 0x94
      004C67 80                    3572 	.db 0x80
      004C68 E2                    3573 	.db 0xe2
      004C69 94                    3574 	.db 0x94
      004C6A 80                    3575 	.db 0x80
      004C6B E2                    3576 	.db 0xe2
      004C6C 94                    3577 	.db 0x94
      004C6D 80                    3578 	.db 0x80
      004C6E E2                    3579 	.db 0xe2
      004C6F 94                    3580 	.db 0x94
      004C70 80                    3581 	.db 0x80
      004C71 E2                    3582 	.db 0xe2
      004C72 94                    3583 	.db 0x94
      004C73 80                    3584 	.db 0x80
      004C74 E2                    3585 	.db 0xe2
      004C75 94                    3586 	.db 0x94
      004C76 80                    3587 	.db 0x80
      004C77 E2                    3588 	.db 0xe2
      004C78 94                    3589 	.db 0x94
      004C79 80                    3590 	.db 0x80
      004C7A E2                    3591 	.db 0xe2
      004C7B 94                    3592 	.db 0x94
      004C7C 80                    3593 	.db 0x80
      004C7D E2                    3594 	.db 0xe2
      004C7E 94                    3595 	.db 0x94
      004C7F 80                    3596 	.db 0x80
      004C80 E2                    3597 	.db 0xe2
      004C81 94                    3598 	.db 0x94
      004C82 80                    3599 	.db 0x80
      004C83 E2                    3600 	.db 0xe2
      004C84 94                    3601 	.db 0x94
      004C85 80                    3602 	.db 0x80
      004C86 E2                    3603 	.db 0xe2
      004C87 94                    3604 	.db 0x94
      004C88 80                    3605 	.db 0x80
      004C89 E2                    3606 	.db 0xe2
      004C8A 94                    3607 	.db 0x94
      004C8B 80                    3608 	.db 0x80
      004C8C E2                    3609 	.db 0xe2
      004C8D 94                    3610 	.db 0x94
      004C8E 80                    3611 	.db 0x80
      004C8F E2                    3612 	.db 0xe2
      004C90 94                    3613 	.db 0x94
      004C91 80                    3614 	.db 0x80
      004C92 E2                    3615 	.db 0xe2
      004C93 94                    3616 	.db 0x94
      004C94 80                    3617 	.db 0x80
      004C95 E2                    3618 	.db 0xe2
      004C96 94                    3619 	.db 0x94
      004C97 80                    3620 	.db 0x80
      004C98 E2                    3621 	.db 0xe2
      004C99 94                    3622 	.db 0x94
      004C9A 80                    3623 	.db 0x80
      004C9B E2                    3624 	.db 0xe2
      004C9C 94                    3625 	.db 0x94
      004C9D 80                    3626 	.db 0x80
      004C9E E2                    3627 	.db 0xe2
      004C9F 94                    3628 	.db 0x94
      004CA0 80                    3629 	.db 0x80
      004CA1 E2                    3630 	.db 0xe2
      004CA2 94                    3631 	.db 0x94
      004CA3 80                    3632 	.db 0x80
      004CA4 E2                    3633 	.db 0xe2
      004CA5 94                    3634 	.db 0x94
      004CA6 80                    3635 	.db 0x80
      004CA7 E2                    3636 	.db 0xe2
      004CA8 94                    3637 	.db 0x94
      004CA9 80                    3638 	.db 0x80
      004CAA E2                    3639 	.db 0xe2
      004CAB 94                    3640 	.db 0x94
      004CAC 80                    3641 	.db 0x80
      004CAD E2                    3642 	.db 0xe2
      004CAE 94                    3643 	.db 0x94
      004CAF 80                    3644 	.db 0x80
      004CB0 E2                    3645 	.db 0xe2
      004CB1 94                    3646 	.db 0x94
      004CB2 98                    3647 	.db 0x98
      004CB3 0A                    3648 	.db 0x0a
      004CB4 00                    3649 	.db 0x00
                                   3650 	.area CSEG    (CODE)
                                   3651 	.area CONST   (CODE)
      004CB5                       3652 ___str_30:
      004CB5 45 72 72 6F 72 3A 20  3653 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      004CE2 0A                    3654 	.db 0x0a
      004CE3 0D                    3655 	.db 0x0d
      004CE4 00                    3656 	.db 0x00
                                   3657 	.area CSEG    (CODE)
                                   3658 	.area CONST   (CODE)
      004CE5                       3659 ___str_31:
      004CE5 45 72 72 6F 72 3A 20  3660 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      004D11 0A                    3661 	.db 0x0a
      004D12 0D                    3662 	.db 0x0d
      004D13 00                    3663 	.db 0x00
                                   3664 	.area CSEG    (CODE)
                                   3665 	.area CONST   (CODE)
      004D14                       3666 ___str_32:
      004D14 41 43 4B 20 44 49 44  3667 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      004D26 0A                    3668 	.db 0x0a
      004D27 0D                    3669 	.db 0x0d
      004D28 00                    3670 	.db 0x00
                                   3671 	.area CSEG    (CODE)
                                   3672 	.area CONST   (CODE)
      004D29                       3673 ___str_33:
      004D29 54 72 61 6E 73 6D 69  3674 	.ascii "Transmission successfull"
             73 73 69 6F 6E 20 73
             75 63 63 65 73 73 66
             75 6C 6C
      004D41 0A                    3675 	.db 0x0a
      004D42 0D                    3676 	.db 0x0d
      004D43 00                    3677 	.db 0x00
                                   3678 	.area CSEG    (CODE)
                                   3679 	.area CONST   (CODE)
      004D44                       3680 ___str_34:
      004D44 57 72 69 74 69 6E 67  3681 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      004D69 0A                    3682 	.db 0x0a
      004D6A 0D                    3683 	.db 0x0d
      004D6B 00                    3684 	.db 0x00
                                   3685 	.area CSEG    (CODE)
                                   3686 	.area CONST   (CODE)
      004D6C                       3687 ___str_35:
      004D6C 52 65 61 64 20 62 61  3688 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      004D91 0A                    3689 	.db 0x0a
      004D92 0D                    3690 	.db 0x0d
      004D93 00                    3691 	.db 0x00
                                   3692 	.area CSEG    (CODE)
                                   3693 	.area CONST   (CODE)
      004D94                       3694 ___str_36:
      004D94 4D 41 54 43 48 20 2D  3695 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      004DB2 0A                    3696 	.db 0x0a
      004DB3 0D                    3697 	.db 0x0d
      004DB4 00                    3698 	.db 0x00
                                   3699 	.area CSEG    (CODE)
                                   3700 	.area CONST   (CODE)
      004DB5                       3701 ___str_37:
      004DB5 45 52 52 4F 52 20 2D  3702 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      004DCB 0A                    3703 	.db 0x0a
      004DCC 0D                    3704 	.db 0x0d
      004DCD 00                    3705 	.db 0x00
                                   3706 	.area CSEG    (CODE)
                                   3707 	.area XINIT   (CODE)
                                   3708 	.area CABS    (ABS,CODE)
