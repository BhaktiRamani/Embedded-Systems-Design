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
                                    214 	.globl _eeprom_hex_dump_PARM_2
                                    215 	.globl _eeprom_write_PARM_2
                                    216 	.globl _ACK
                                    217 	.globl _take_address
                                    218 	.globl _take_data
                                    219 	.globl _eeprom_write
                                    220 	.globl _eeprom_read
                                    221 	.globl _i2c_write
                                    222 	.globl _i2c_read
                                    223 	.globl _i2c_start
                                    224 	.globl _eeprom_hex_dump
                                    225 	.globl _i2c_stop
                                    226 	.globl _eeprom_reset
                                    227 	.globl _i2c_delay
                                    228 ;--------------------------------------------------------
                                    229 ; special function registers
                                    230 ;--------------------------------------------------------
                                    231 	.area RSEG    (ABS,DATA)
      000000                        232 	.org 0x0000
                           000080   233 _P0	=	0x0080
                           000081   234 _SP	=	0x0081
                           000082   235 _DPL	=	0x0082
                           000083   236 _DPH	=	0x0083
                           000087   237 _PCON	=	0x0087
                           000088   238 _TCON	=	0x0088
                           000089   239 _TMOD	=	0x0089
                           00008A   240 _TL0	=	0x008a
                           00008B   241 _TL1	=	0x008b
                           00008C   242 _TH0	=	0x008c
                           00008D   243 _TH1	=	0x008d
                           000090   244 _P1	=	0x0090
                           000098   245 _SCON	=	0x0098
                           000099   246 _SBUF	=	0x0099
                           0000A0   247 _P2	=	0x00a0
                           0000A8   248 _IE	=	0x00a8
                           0000B0   249 _P3	=	0x00b0
                           0000B8   250 _IP	=	0x00b8
                           0000D0   251 _PSW	=	0x00d0
                           0000E0   252 _ACC	=	0x00e0
                           0000F0   253 _B	=	0x00f0
                           0000C8   254 _T2CON	=	0x00c8
                           0000CA   255 _RCAP2L	=	0x00ca
                           0000CB   256 _RCAP2H	=	0x00cb
                           0000CC   257 _TL2	=	0x00cc
                           0000CD   258 _TH2	=	0x00cd
                           00008E   259 _AUXR	=	0x008e
                           0000A2   260 _AUXR1	=	0x00a2
                           000097   261 _CKRL	=	0x0097
                           00008F   262 _CKCON0	=	0x008f
                           0000AF   263 _CKCON1	=	0x00af
                           0000FA   264 _CCAP0H	=	0x00fa
                           0000FB   265 _CCAP1H	=	0x00fb
                           0000FC   266 _CCAP2H	=	0x00fc
                           0000FD   267 _CCAP3H	=	0x00fd
                           0000FE   268 _CCAP4H	=	0x00fe
                           0000EA   269 _CCAP0L	=	0x00ea
                           0000EB   270 _CCAP1L	=	0x00eb
                           0000EC   271 _CCAP2L	=	0x00ec
                           0000ED   272 _CCAP3L	=	0x00ed
                           0000EE   273 _CCAP4L	=	0x00ee
                           0000DA   274 _CCAPM0	=	0x00da
                           0000DB   275 _CCAPM1	=	0x00db
                           0000DC   276 _CCAPM2	=	0x00dc
                           0000DD   277 _CCAPM3	=	0x00dd
                           0000DE   278 _CCAPM4	=	0x00de
                           0000D8   279 _CCON	=	0x00d8
                           0000F9   280 _CH	=	0x00f9
                           0000E9   281 _CL	=	0x00e9
                           0000D9   282 _CMOD	=	0x00d9
                           0000A8   283 _IEN0	=	0x00a8
                           0000B1   284 _IEN1	=	0x00b1
                           0000B8   285 _IPL0	=	0x00b8
                           0000B7   286 _IPH0	=	0x00b7
                           0000B2   287 _IPL1	=	0x00b2
                           0000B3   288 _IPH1	=	0x00b3
                           0000C0   289 _P4	=	0x00c0
                           0000E8   290 _P5	=	0x00e8
                           0000A6   291 _WDTRST	=	0x00a6
                           0000A7   292 _WDTPRG	=	0x00a7
                           0000A9   293 _SADDR	=	0x00a9
                           0000B9   294 _SADEN	=	0x00b9
                           0000C3   295 _SPCON	=	0x00c3
                           0000C4   296 _SPSTA	=	0x00c4
                           0000C5   297 _SPDAT	=	0x00c5
                           0000C9   298 _T2MOD	=	0x00c9
                           00009B   299 _BDRCON	=	0x009b
                           00009A   300 _BRL	=	0x009a
                           00009C   301 _KBLS	=	0x009c
                           00009D   302 _KBE	=	0x009d
                           00009E   303 _KBF	=	0x009e
                           0000D2   304 _EECON	=	0x00d2
                                    305 ;--------------------------------------------------------
                                    306 ; special function bits
                                    307 ;--------------------------------------------------------
                                    308 	.area RSEG    (ABS,DATA)
      000000                        309 	.org 0x0000
                           000080   310 _P0_0	=	0x0080
                           000081   311 _P0_1	=	0x0081
                           000082   312 _P0_2	=	0x0082
                           000083   313 _P0_3	=	0x0083
                           000084   314 _P0_4	=	0x0084
                           000085   315 _P0_5	=	0x0085
                           000086   316 _P0_6	=	0x0086
                           000087   317 _P0_7	=	0x0087
                           000088   318 _IT0	=	0x0088
                           000089   319 _IE0	=	0x0089
                           00008A   320 _IT1	=	0x008a
                           00008B   321 _IE1	=	0x008b
                           00008C   322 _TR0	=	0x008c
                           00008D   323 _TF0	=	0x008d
                           00008E   324 _TR1	=	0x008e
                           00008F   325 _TF1	=	0x008f
                           000090   326 _P1_0	=	0x0090
                           000091   327 _P1_1	=	0x0091
                           000092   328 _P1_2	=	0x0092
                           000093   329 _P1_3	=	0x0093
                           000094   330 _P1_4	=	0x0094
                           000095   331 _P1_5	=	0x0095
                           000096   332 _P1_6	=	0x0096
                           000097   333 _P1_7	=	0x0097
                           000098   334 _RI	=	0x0098
                           000099   335 _TI	=	0x0099
                           00009A   336 _RB8	=	0x009a
                           00009B   337 _TB8	=	0x009b
                           00009C   338 _REN	=	0x009c
                           00009D   339 _SM2	=	0x009d
                           00009E   340 _SM1	=	0x009e
                           00009F   341 _SM0	=	0x009f
                           0000A0   342 _P2_0	=	0x00a0
                           0000A1   343 _P2_1	=	0x00a1
                           0000A2   344 _P2_2	=	0x00a2
                           0000A3   345 _P2_3	=	0x00a3
                           0000A4   346 _P2_4	=	0x00a4
                           0000A5   347 _P2_5	=	0x00a5
                           0000A6   348 _P2_6	=	0x00a6
                           0000A7   349 _P2_7	=	0x00a7
                           0000A8   350 _EX0	=	0x00a8
                           0000A9   351 _ET0	=	0x00a9
                           0000AA   352 _EX1	=	0x00aa
                           0000AB   353 _ET1	=	0x00ab
                           0000AC   354 _ES	=	0x00ac
                           0000AF   355 _EA	=	0x00af
                           0000B0   356 _P3_0	=	0x00b0
                           0000B1   357 _P3_1	=	0x00b1
                           0000B2   358 _P3_2	=	0x00b2
                           0000B3   359 _P3_3	=	0x00b3
                           0000B4   360 _P3_4	=	0x00b4
                           0000B5   361 _P3_5	=	0x00b5
                           0000B6   362 _P3_6	=	0x00b6
                           0000B7   363 _P3_7	=	0x00b7
                           0000B0   364 _RXD	=	0x00b0
                           0000B1   365 _TXD	=	0x00b1
                           0000B2   366 _INT0	=	0x00b2
                           0000B3   367 _INT1	=	0x00b3
                           0000B4   368 _T0	=	0x00b4
                           0000B5   369 _T1	=	0x00b5
                           0000B6   370 _WR	=	0x00b6
                           0000B7   371 _RD	=	0x00b7
                           0000B8   372 _PX0	=	0x00b8
                           0000B9   373 _PT0	=	0x00b9
                           0000BA   374 _PX1	=	0x00ba
                           0000BB   375 _PT1	=	0x00bb
                           0000BC   376 _PS	=	0x00bc
                           0000D0   377 _P	=	0x00d0
                           0000D1   378 _F1	=	0x00d1
                           0000D2   379 _OV	=	0x00d2
                           0000D3   380 _RS0	=	0x00d3
                           0000D4   381 _RS1	=	0x00d4
                           0000D5   382 _F0	=	0x00d5
                           0000D6   383 _AC	=	0x00d6
                           0000D7   384 _CY	=	0x00d7
                           0000AD   385 _ET2	=	0x00ad
                           0000BD   386 _PT2	=	0x00bd
                           0000C8   387 _T2CON_0	=	0x00c8
                           0000C9   388 _T2CON_1	=	0x00c9
                           0000CA   389 _T2CON_2	=	0x00ca
                           0000CB   390 _T2CON_3	=	0x00cb
                           0000CC   391 _T2CON_4	=	0x00cc
                           0000CD   392 _T2CON_5	=	0x00cd
                           0000CE   393 _T2CON_6	=	0x00ce
                           0000CF   394 _T2CON_7	=	0x00cf
                           0000C8   395 _CP_RL2	=	0x00c8
                           0000C9   396 _C_T2	=	0x00c9
                           0000CA   397 _TR2	=	0x00ca
                           0000CB   398 _EXEN2	=	0x00cb
                           0000CC   399 _TCLK	=	0x00cc
                           0000CD   400 _RCLK	=	0x00cd
                           0000CE   401 _EXF2	=	0x00ce
                           0000CF   402 _TF2	=	0x00cf
                           0000DF   403 _CF	=	0x00df
                           0000DE   404 _CR	=	0x00de
                           0000DC   405 _CCF4	=	0x00dc
                           0000DB   406 _CCF3	=	0x00db
                           0000DA   407 _CCF2	=	0x00da
                           0000D9   408 _CCF1	=	0x00d9
                           0000D8   409 _CCF0	=	0x00d8
                           0000AE   410 _EC	=	0x00ae
                           0000BE   411 _PPCL	=	0x00be
                           0000BD   412 _PT2L	=	0x00bd
                           0000BC   413 _PSL	=	0x00bc
                           0000BB   414 _PT1L	=	0x00bb
                           0000BA   415 _PX1L	=	0x00ba
                           0000B9   416 _PT0L	=	0x00b9
                           0000B8   417 _PX0L	=	0x00b8
                           0000C0   418 _P4_0	=	0x00c0
                           0000C1   419 _P4_1	=	0x00c1
                           0000C2   420 _P4_2	=	0x00c2
                           0000C3   421 _P4_3	=	0x00c3
                           0000C4   422 _P4_4	=	0x00c4
                           0000C5   423 _P4_5	=	0x00c5
                           0000C6   424 _P4_6	=	0x00c6
                           0000C7   425 _P4_7	=	0x00c7
                           0000E8   426 _P5_0	=	0x00e8
                           0000E9   427 _P5_1	=	0x00e9
                           0000EA   428 _P5_2	=	0x00ea
                           0000EB   429 _P5_3	=	0x00eb
                           0000EC   430 _P5_4	=	0x00ec
                           0000ED   431 _P5_5	=	0x00ed
                           0000EE   432 _P5_6	=	0x00ee
                           0000EF   433 _P5_7	=	0x00ef
                                    434 ;--------------------------------------------------------
                                    435 ; overlayable register banks
                                    436 ;--------------------------------------------------------
                                    437 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        438 	.ds 8
                                    439 ;--------------------------------------------------------
                                    440 ; internal ram data
                                    441 ;--------------------------------------------------------
                                    442 	.area DSEG    (DATA)
      000008                        443 _eeprom_hex_dump_sloc0_1_0:
      000008                        444 	.ds 3
                                    445 ;--------------------------------------------------------
                                    446 ; overlayable items in internal ram 
                                    447 ;--------------------------------------------------------
                                    448 ;--------------------------------------------------------
                                    449 ; Stack segment in internal ram 
                                    450 ;--------------------------------------------------------
                                    451 	.area	SSEG
      000017                        452 __start__stack:
      000017                        453 	.ds	1
                                    454 
                                    455 ;--------------------------------------------------------
                                    456 ; indirectly addressable internal ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area ISEG    (DATA)
                                    459 ;--------------------------------------------------------
                                    460 ; absolute internal ram data
                                    461 ;--------------------------------------------------------
                                    462 	.area IABS    (ABS,DATA)
                                    463 	.area IABS    (ABS,DATA)
                                    464 ;--------------------------------------------------------
                                    465 ; bit data
                                    466 ;--------------------------------------------------------
                                    467 	.area BSEG    (BIT)
                                    468 ;--------------------------------------------------------
                                    469 ; paged external ram data
                                    470 ;--------------------------------------------------------
                                    471 	.area PSEG    (PAG,XDATA)
                                    472 ;--------------------------------------------------------
                                    473 ; external ram data
                                    474 ;--------------------------------------------------------
                                    475 	.area XSEG    (XDATA)
      000400                        476 _ACK::
      000400                        477 	.ds 2
      000402                        478 _putchar_charToSend_65536_49:
      000402                        479 	.ds 2
      000404                        480 _take_address_input_65537_69:
      000404                        481 	.ds 4
      000408                        482 _take_address_address_65538_73:
      000408                        483 	.ds 2
      00040A                        484 _take_data_input_65537_79:
      00040A                        485 	.ds 4
      00040E                        486 _take_data_data_65538_83:
      00040E                        487 	.ds 1
      00040F                        488 _eeprom_write_PARM_2:
      00040F                        489 	.ds 1
      000410                        490 _eeprom_write_address_65536_87:
      000410                        491 	.ds 2
      000412                        492 _eeprom_read_address_65536_94:
      000412                        493 	.ds 2
      000414                        494 _i2c_write_data_65536_99:
      000414                        495 	.ds 1
      000415                        496 _i2c_read_ACK_65536_104:
      000415                        497 	.ds 2
      000417                        498 _i2c_read_buff_65536_105:
      000417                        499 	.ds 1
      000418                        500 _eeprom_hex_dump_PARM_2:
      000418                        501 	.ds 2
      00041A                        502 _eeprom_hex_dump_start_location_65536_110:
      00041A                        503 	.ds 2
      00041C                        504 _eeprom_hex_dump_offset_65536_111:
      00041C                        505 	.ds 2
                                    506 ;--------------------------------------------------------
                                    507 ; absolute external ram data
                                    508 ;--------------------------------------------------------
                                    509 	.area XABS    (ABS,XDATA)
                                    510 ;--------------------------------------------------------
                                    511 ; external initialized ram data
                                    512 ;--------------------------------------------------------
                                    513 	.area XISEG   (XDATA)
      000457                        514 _address_range_flag:
      000457                        515 	.ds 2
      000459                        516 _data_range_flag:
      000459                        517 	.ds 2
      00045B                        518 _block:
      00045B                        519 	.ds 2
                                    520 	.area HOME    (CODE)
                                    521 	.area GSINIT0 (CODE)
                                    522 	.area GSINIT1 (CODE)
                                    523 	.area GSINIT2 (CODE)
                                    524 	.area GSINIT3 (CODE)
                                    525 	.area GSINIT4 (CODE)
                                    526 	.area GSINIT5 (CODE)
                                    527 	.area GSINIT  (CODE)
                                    528 	.area GSFINAL (CODE)
                                    529 	.area CSEG    (CODE)
                                    530 ;--------------------------------------------------------
                                    531 ; interrupt vector 
                                    532 ;--------------------------------------------------------
                                    533 	.area HOME    (CODE)
      003000                        534 __interrupt_vect:
      003000 02 30 06         [24]  535 	ljmp	__sdcc_gsinit_startup
                                    536 ;--------------------------------------------------------
                                    537 ; global & static initialisations
                                    538 ;--------------------------------------------------------
                                    539 	.area HOME    (CODE)
                                    540 	.area GSINIT  (CODE)
                                    541 	.area GSFINAL (CODE)
                                    542 	.area GSINIT  (CODE)
                                    543 	.globl __sdcc_gsinit_startup
                                    544 	.globl __sdcc_program_startup
                                    545 	.globl __start__stack
                                    546 	.globl __mcs51_genXINIT
                                    547 	.globl __mcs51_genXRAMCLEAR
                                    548 	.globl __mcs51_genRAMCLEAR
                                    549 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  550 	ljmp	__sdcc_program_startup
                                    551 ;--------------------------------------------------------
                                    552 ; Home
                                    553 ;--------------------------------------------------------
                                    554 	.area HOME    (CODE)
                                    555 	.area HOME    (CODE)
      003003                        556 __sdcc_program_startup:
      003003 02 31 A2         [24]  557 	ljmp	_main
                                    558 ;	return from main will return to caller
                                    559 ;--------------------------------------------------------
                                    560 ; code
                                    561 ;--------------------------------------------------------
                                    562 	.area CSEG    (CODE)
                                    563 ;------------------------------------------------------------
                                    564 ;Allocation info for local variables in function 'putchar'
                                    565 ;------------------------------------------------------------
                                    566 ;charToSend                Allocated with name '_putchar_charToSend_65536_49'
                                    567 ;------------------------------------------------------------
                                    568 ;	8051_i2c_eeprom.c:33: int putchar(int charToSend) {
                                    569 ;	-----------------------------------------
                                    570 ;	 function putchar
                                    571 ;	-----------------------------------------
      003062                        572 _putchar:
                           000007   573 	ar7 = 0x07
                           000006   574 	ar6 = 0x06
                           000005   575 	ar5 = 0x05
                           000004   576 	ar4 = 0x04
                           000003   577 	ar3 = 0x03
                           000002   578 	ar2 = 0x02
                           000001   579 	ar1 = 0x01
                           000000   580 	ar0 = 0x00
      003062 AF 83            [24]  581 	mov	r7,dph
      003064 E5 82            [12]  582 	mov	a,dpl
      003066 90 04 02         [24]  583 	mov	dptr,#_putchar_charToSend_65536_49
      003069 F0               [24]  584 	movx	@dptr,a
      00306A EF               [12]  585 	mov	a,r7
      00306B A3               [24]  586 	inc	dptr
      00306C F0               [24]  587 	movx	@dptr,a
                                    588 ;	8051_i2c_eeprom.c:34: SBUF = charToSend;  // Send character to serial buffer
      00306D 90 04 02         [24]  589 	mov	dptr,#_putchar_charToSend_65536_49
      003070 E0               [24]  590 	movx	a,@dptr
      003071 FE               [12]  591 	mov	r6,a
      003072 A3               [24]  592 	inc	dptr
      003073 E0               [24]  593 	movx	a,@dptr
      003074 FF               [12]  594 	mov	r7,a
      003075 8E 99            [24]  595 	mov	_SBUF,r6
                                    596 ;	8051_i2c_eeprom.c:35: while (!TI);        // Wait for transmission to complete
      003077                        597 00101$:
                                    598 ;	8051_i2c_eeprom.c:36: TI = 0;            // Clear transmission interrupt flag
                                    599 ;	assignBit
      003077 10 99 02         [24]  600 	jbc	_TI,00114$
      00307A 80 FB            [24]  601 	sjmp	00101$
      00307C                        602 00114$:
                                    603 ;	8051_i2c_eeprom.c:37: return charToSend;
      00307C 8E 82            [24]  604 	mov	dpl,r6
      00307E 8F 83            [24]  605 	mov	dph,r7
                                    606 ;	8051_i2c_eeprom.c:38: }
      003080 22               [24]  607 	ret
                                    608 ;------------------------------------------------------------
                                    609 ;Allocation info for local variables in function 'getchar'
                                    610 ;------------------------------------------------------------
                                    611 ;	8051_i2c_eeprom.c:40: int getchar(void) 
                                    612 ;	-----------------------------------------
                                    613 ;	 function getchar
                                    614 ;	-----------------------------------------
      003081                        615 _getchar:
                                    616 ;	8051_i2c_eeprom.c:42: while (!RI);        // Wait for reception to complete
      003081                        617 00101$:
                                    618 ;	8051_i2c_eeprom.c:43: RI = 0;            // Clear reception interrupt flag
                                    619 ;	assignBit
      003081 10 98 02         [24]  620 	jbc	_RI,00114$
      003084 80 FB            [24]  621 	sjmp	00101$
      003086                        622 00114$:
                                    623 ;	8051_i2c_eeprom.c:44: return SBUF;       // Return received character
      003086 AE 99            [24]  624 	mov	r6,_SBUF
      003088 7F 00            [12]  625 	mov	r7,#0x00
      00308A 8E 82            [24]  626 	mov	dpl,r6
      00308C 8F 83            [24]  627 	mov	dph,r7
                                    628 ;	8051_i2c_eeprom.c:45: }
      00308E 22               [24]  629 	ret
                                    630 ;------------------------------------------------------------
                                    631 ;Allocation info for local variables in function 'ui'
                                    632 ;------------------------------------------------------------
                                    633 ;	8051_i2c_eeprom.c:47: void ui()
                                    634 ;	-----------------------------------------
                                    635 ;	 function ui
                                    636 ;	-----------------------------------------
      00308F                        637 _ui:
                                    638 ;	8051_i2c_eeprom.c:49: printf("\n╔════════════════════════════════════════════════════════╗\n\r");
      00308F 74 92            [12]  639 	mov	a,#___str_0
      003091 C0 E0            [24]  640 	push	acc
      003093 74 47            [12]  641 	mov	a,#(___str_0 >> 8)
      003095 C0 E0            [24]  642 	push	acc
      003097 74 80            [12]  643 	mov	a,#0x80
      003099 C0 E0            [24]  644 	push	acc
      00309B 12 3D 30         [24]  645 	lcall	_printf
      00309E 15 81            [12]  646 	dec	sp
      0030A0 15 81            [12]  647 	dec	sp
      0030A2 15 81            [12]  648 	dec	sp
                                    649 ;	8051_i2c_eeprom.c:50: printf("║           I2C Memory Management System v1.0            ║\n\r");
      0030A4 74 44            [12]  650 	mov	a,#___str_1
      0030A6 C0 E0            [24]  651 	push	acc
      0030A8 74 48            [12]  652 	mov	a,#(___str_1 >> 8)
      0030AA C0 E0            [24]  653 	push	acc
      0030AC 74 80            [12]  654 	mov	a,#0x80
      0030AE C0 E0            [24]  655 	push	acc
      0030B0 12 3D 30         [24]  656 	lcall	_printf
      0030B3 15 81            [12]  657 	dec	sp
      0030B5 15 81            [12]  658 	dec	sp
      0030B7 15 81            [12]  659 	dec	sp
                                    660 ;	8051_i2c_eeprom.c:51: printf("╚════════════════════════════════════════════════════════╝\n\r");
      0030B9 74 85            [12]  661 	mov	a,#___str_2
      0030BB C0 E0            [24]  662 	push	acc
      0030BD 74 48            [12]  663 	mov	a,#(___str_2 >> 8)
      0030BF C0 E0            [24]  664 	push	acc
      0030C1 74 80            [12]  665 	mov	a,#0x80
      0030C3 C0 E0            [24]  666 	push	acc
      0030C5 12 3D 30         [24]  667 	lcall	_printf
      0030C8 15 81            [12]  668 	dec	sp
      0030CA 15 81            [12]  669 	dec	sp
      0030CC 15 81            [12]  670 	dec	sp
                                    671 ;	8051_i2c_eeprom.c:53: }
      0030CE 22               [24]  672 	ret
                                    673 ;------------------------------------------------------------
                                    674 ;Allocation info for local variables in function 'command_menu'
                                    675 ;------------------------------------------------------------
                                    676 ;	8051_i2c_eeprom.c:55: void command_menu()
                                    677 ;	-----------------------------------------
                                    678 ;	 function command_menu
                                    679 ;	-----------------------------------------
      0030CF                        680 _command_menu:
                                    681 ;	8051_i2c_eeprom.c:57: printf("\n\r┌────────────┬────────────────────────────────────────────┐\n\r");
      0030CF 74 36            [12]  682 	mov	a,#___str_3
      0030D1 C0 E0            [24]  683 	push	acc
      0030D3 74 49            [12]  684 	mov	a,#(___str_3 >> 8)
      0030D5 C0 E0            [24]  685 	push	acc
      0030D7 74 80            [12]  686 	mov	a,#0x80
      0030D9 C0 E0            [24]  687 	push	acc
      0030DB 12 3D 30         [24]  688 	lcall	_printf
      0030DE 15 81            [12]  689 	dec	sp
      0030E0 15 81            [12]  690 	dec	sp
      0030E2 15 81            [12]  691 	dec	sp
                                    692 ;	8051_i2c_eeprom.c:58: printf("│  Command   │               Description                  │\n\r");
      0030E4 74 EC            [12]  693 	mov	a,#___str_4
      0030E6 C0 E0            [24]  694 	push	acc
      0030E8 74 49            [12]  695 	mov	a,#(___str_4 >> 8)
      0030EA C0 E0            [24]  696 	push	acc
      0030EC 74 80            [12]  697 	mov	a,#0x80
      0030EE C0 E0            [24]  698 	push	acc
      0030F0 12 3D 30         [24]  699 	lcall	_printf
      0030F3 15 81            [12]  700 	dec	sp
      0030F5 15 81            [12]  701 	dec	sp
      0030F7 15 81            [12]  702 	dec	sp
                                    703 ;	8051_i2c_eeprom.c:59: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      0030F9 74 30            [12]  704 	mov	a,#___str_5
      0030FB C0 E0            [24]  705 	push	acc
      0030FD 74 4A            [12]  706 	mov	a,#(___str_5 >> 8)
      0030FF C0 E0            [24]  707 	push	acc
      003101 74 80            [12]  708 	mov	a,#0x80
      003103 C0 E0            [24]  709 	push	acc
      003105 12 3D 30         [24]  710 	lcall	_printf
      003108 15 81            [12]  711 	dec	sp
      00310A 15 81            [12]  712 	dec	sp
      00310C 15 81            [12]  713 	dec	sp
                                    714 ;	8051_i2c_eeprom.c:60: printf("│     R      │ Read from address                          │\n\r");
      00310E 74 E4            [12]  715 	mov	a,#___str_6
      003110 C0 E0            [24]  716 	push	acc
      003112 74 4A            [12]  717 	mov	a,#(___str_6 >> 8)
      003114 C0 E0            [24]  718 	push	acc
      003116 74 80            [12]  719 	mov	a,#0x80
      003118 C0 E0            [24]  720 	push	acc
      00311A 12 3D 30         [24]  721 	lcall	_printf
      00311D 15 81            [12]  722 	dec	sp
      00311F 15 81            [12]  723 	dec	sp
      003121 15 81            [12]  724 	dec	sp
                                    725 ;	8051_i2c_eeprom.c:61: printf("│     W      │ Write data to address                      │\n\r");
      003123 74 28            [12]  726 	mov	a,#___str_7
      003125 C0 E0            [24]  727 	push	acc
      003127 74 4B            [12]  728 	mov	a,#(___str_7 >> 8)
      003129 C0 E0            [24]  729 	push	acc
      00312B 74 80            [12]  730 	mov	a,#0x80
      00312D C0 E0            [24]  731 	push	acc
      00312F 12 3D 30         [24]  732 	lcall	_printf
      003132 15 81            [12]  733 	dec	sp
      003134 15 81            [12]  734 	dec	sp
      003136 15 81            [12]  735 	dec	sp
                                    736 ;	8051_i2c_eeprom.c:62: printf("│     H      │ Display hex dump                           │\n\r");
      003138 74 6C            [12]  737 	mov	a,#___str_8
      00313A C0 E0            [24]  738 	push	acc
      00313C 74 4B            [12]  739 	mov	a,#(___str_8 >> 8)
      00313E C0 E0            [24]  740 	push	acc
      003140 74 80            [12]  741 	mov	a,#0x80
      003142 C0 E0            [24]  742 	push	acc
      003144 12 3D 30         [24]  743 	lcall	_printf
      003147 15 81            [12]  744 	dec	sp
      003149 15 81            [12]  745 	dec	sp
      00314B 15 81            [12]  746 	dec	sp
                                    747 ;	8051_i2c_eeprom.c:63: printf("│     X      │ Reset memory system                        │\n\r");
      00314D 74 B0            [12]  748 	mov	a,#___str_9
      00314F C0 E0            [24]  749 	push	acc
      003151 74 4B            [12]  750 	mov	a,#(___str_9 >> 8)
      003153 C0 E0            [24]  751 	push	acc
      003155 74 80            [12]  752 	mov	a,#0x80
      003157 C0 E0            [24]  753 	push	acc
      003159 12 3D 30         [24]  754 	lcall	_printf
      00315C 15 81            [12]  755 	dec	sp
      00315E 15 81            [12]  756 	dec	sp
      003160 15 81            [12]  757 	dec	sp
                                    758 ;	8051_i2c_eeprom.c:64: printf("│     ?      │ Display this help menu                     │\n\r");
      003162 74 F4            [12]  759 	mov	a,#___str_10
      003164 C0 E0            [24]  760 	push	acc
      003166 74 4B            [12]  761 	mov	a,#(___str_10 >> 8)
      003168 C0 E0            [24]  762 	push	acc
      00316A 74 80            [12]  763 	mov	a,#0x80
      00316C C0 E0            [24]  764 	push	acc
      00316E 12 3D 30         [24]  765 	lcall	_printf
      003171 15 81            [12]  766 	dec	sp
      003173 15 81            [12]  767 	dec	sp
      003175 15 81            [12]  768 	dec	sp
                                    769 ;	8051_i2c_eeprom.c:65: printf("│     Q      │ Quit program                               │\n\r");
      003177 74 38            [12]  770 	mov	a,#___str_11
      003179 C0 E0            [24]  771 	push	acc
      00317B 74 4C            [12]  772 	mov	a,#(___str_11 >> 8)
      00317D C0 E0            [24]  773 	push	acc
      00317F 74 80            [12]  774 	mov	a,#0x80
      003181 C0 E0            [24]  775 	push	acc
      003183 12 3D 30         [24]  776 	lcall	_printf
      003186 15 81            [12]  777 	dec	sp
      003188 15 81            [12]  778 	dec	sp
      00318A 15 81            [12]  779 	dec	sp
                                    780 ;	8051_i2c_eeprom.c:66: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      00318C 74 7C            [12]  781 	mov	a,#___str_12
      00318E C0 E0            [24]  782 	push	acc
      003190 74 4C            [12]  783 	mov	a,#(___str_12 >> 8)
      003192 C0 E0            [24]  784 	push	acc
      003194 74 80            [12]  785 	mov	a,#0x80
      003196 C0 E0            [24]  786 	push	acc
      003198 12 3D 30         [24]  787 	lcall	_printf
      00319B 15 81            [12]  788 	dec	sp
      00319D 15 81            [12]  789 	dec	sp
      00319F 15 81            [12]  790 	dec	sp
                                    791 ;	8051_i2c_eeprom.c:69: }
      0031A1 22               [24]  792 	ret
                                    793 ;------------------------------------------------------------
                                    794 ;Allocation info for local variables in function 'main'
                                    795 ;------------------------------------------------------------
                                    796 ;user_input                Allocated with name '_main_user_input_131072_56'
                                    797 ;addr                      Allocated with name '_main_addr_262145_59'
                                    798 ;data                      Allocated with name '_main_data_262146_61'
                                    799 ;addr                      Allocated with name '_main_addr_262145_64'
                                    800 ;start_add                 Allocated with name '_main_start_add_196609_66'
                                    801 ;end_add                   Allocated with name '_main_end_add_196610_67'
                                    802 ;------------------------------------------------------------
                                    803 ;	8051_i2c_eeprom.c:70: int main()
                                    804 ;	-----------------------------------------
                                    805 ;	 function main
                                    806 ;	-----------------------------------------
      0031A2                        807 _main:
                                    808 ;	8051_i2c_eeprom.c:73: P1 &= ~(1<<3);  // Set P1.3 as output
      0031A2 53 90 F7         [24]  809 	anl	_P1,#0xf7
                                    810 ;	8051_i2c_eeprom.c:74: P1 &= ~(1<<4);  // Set P1.4 as output
      0031A5 53 90 EF         [24]  811 	anl	_P1,#0xef
                                    812 ;	8051_i2c_eeprom.c:75: ui();
      0031A8 12 30 8F         [24]  813 	lcall	_ui
                                    814 ;	8051_i2c_eeprom.c:76: command_menu();
      0031AB 12 30 CF         [24]  815 	lcall	_command_menu
                                    816 ;	8051_i2c_eeprom.c:77: i2c_start();
      0031AE 12 3A 00         [24]  817 	lcall	_i2c_start
                                    818 ;	8051_i2c_eeprom.c:78: while(1)
      0031B1                        819 00115$:
                                    820 ;	8051_i2c_eeprom.c:80: char user_input = getchar();
      0031B1 12 30 81         [24]  821 	lcall	_getchar
      0031B4 AE 82            [24]  822 	mov	r6,dpl
                                    823 ;	8051_i2c_eeprom.c:81: printf("| $ %c\n\r", user_input);
      0031B6 8E 05            [24]  824 	mov	ar5,r6
      0031B8 7F 00            [12]  825 	mov	r7,#0x00
      0031BA C0 06            [24]  826 	push	ar6
      0031BC C0 05            [24]  827 	push	ar5
      0031BE C0 07            [24]  828 	push	ar7
      0031C0 74 30            [12]  829 	mov	a,#___str_13
      0031C2 C0 E0            [24]  830 	push	acc
      0031C4 74 4D            [12]  831 	mov	a,#(___str_13 >> 8)
      0031C6 C0 E0            [24]  832 	push	acc
      0031C8 74 80            [12]  833 	mov	a,#0x80
      0031CA C0 E0            [24]  834 	push	acc
      0031CC 12 3D 30         [24]  835 	lcall	_printf
      0031CF E5 81            [12]  836 	mov	a,sp
      0031D1 24 FB            [12]  837 	add	a,#0xfb
      0031D3 F5 81            [12]  838 	mov	sp,a
                                    839 ;	8051_i2c_eeprom.c:82: printf("\n\r");
      0031D5 74 39            [12]  840 	mov	a,#___str_14
      0031D7 C0 E0            [24]  841 	push	acc
      0031D9 74 4D            [12]  842 	mov	a,#(___str_14 >> 8)
      0031DB C0 E0            [24]  843 	push	acc
      0031DD 74 80            [12]  844 	mov	a,#0x80
      0031DF C0 E0            [24]  845 	push	acc
      0031E1 12 3D 30         [24]  846 	lcall	_printf
      0031E4 15 81            [12]  847 	dec	sp
      0031E6 15 81            [12]  848 	dec	sp
      0031E8 15 81            [12]  849 	dec	sp
      0031EA D0 06            [24]  850 	pop	ar6
                                    851 ;	8051_i2c_eeprom.c:83: switch(user_input)
      0031EC BE 3F 03         [24]  852 	cjne	r6,#0x3f,00155$
      0031EF 02 32 F4         [24]  853 	ljmp	00109$
      0031F2                        854 00155$:
      0031F2 BE 48 03         [24]  855 	cjne	r6,#0x48,00156$
      0031F5 02 33 15         [24]  856 	ljmp	00111$
      0031F8                        857 00156$:
      0031F8 BE 52 03         [24]  858 	cjne	r6,#0x52,00157$
      0031FB 02 32 95         [24]  859 	ljmp	00106$
      0031FE                        860 00157$:
      0031FE BE 57 02         [24]  861 	cjne	r6,#0x57,00158$
      003201 80 09            [24]  862 	sjmp	00101$
      003203                        863 00158$:
      003203 BE 58 03         [24]  864 	cjne	r6,#0x58,00159$
      003206 02 32 FA         [24]  865 	ljmp	00110$
      003209                        866 00159$:
      003209 02 33 4F         [24]  867 	ljmp	00112$
                                    868 ;	8051_i2c_eeprom.c:85: case 'W':
      00320C                        869 00101$:
                                    870 ;	8051_i2c_eeprom.c:87: printf("\n┌─────────────── WRITE OPERATION ──────────────┐\n\r");
      00320C 74 3C            [12]  871 	mov	a,#___str_15
      00320E C0 E0            [24]  872 	push	acc
      003210 74 4D            [12]  873 	mov	a,#(___str_15 >> 8)
      003212 C0 E0            [24]  874 	push	acc
      003214 74 80            [12]  875 	mov	a,#0x80
      003216 C0 E0            [24]  876 	push	acc
      003218 12 3D 30         [24]  877 	lcall	_printf
      00321B 15 81            [12]  878 	dec	sp
      00321D 15 81            [12]  879 	dec	sp
      00321F 15 81            [12]  880 	dec	sp
                                    881 ;	8051_i2c_eeprom.c:89: addr = take_address();
      003221 12 33 67         [24]  882 	lcall	_take_address
      003224 AE 82            [24]  883 	mov	r6,dpl
      003226 AF 83            [24]  884 	mov	r7,dph
                                    885 ;	8051_i2c_eeprom.c:90: if(!address_range_flag) 
      003228 90 04 57         [24]  886 	mov	dptr,#_address_range_flag
      00322B E0               [24]  887 	movx	a,@dptr
      00322C F5 F0            [12]  888 	mov	b,a
      00322E A3               [24]  889 	inc	dptr
      00322F E0               [24]  890 	movx	a,@dptr
      003230 45 F0            [12]  891 	orl	a,b
      003232 70 0C            [24]  892 	jnz	00103$
                                    893 ;	8051_i2c_eeprom.c:92: address_range_flag = 1;
      003234 90 04 57         [24]  894 	mov	dptr,#_address_range_flag
      003237 74 01            [12]  895 	mov	a,#0x01
      003239 F0               [24]  896 	movx	@dptr,a
      00323A E4               [12]  897 	clr	a
      00323B A3               [24]  898 	inc	dptr
      00323C F0               [24]  899 	movx	@dptr,a
                                    900 ;	8051_i2c_eeprom.c:93: break;
      00323D 02 31 B1         [24]  901 	ljmp	00115$
      003240                        902 00103$:
                                    903 ;	8051_i2c_eeprom.c:96: data = take_data();
      003240 C0 07            [24]  904 	push	ar7
      003242 C0 06            [24]  905 	push	ar6
      003244 12 35 80         [24]  906 	lcall	_take_data
      003247 AD 82            [24]  907 	mov	r5,dpl
      003249 D0 06            [24]  908 	pop	ar6
      00324B D0 07            [24]  909 	pop	ar7
                                    910 ;	8051_i2c_eeprom.c:97: if(!data_range_flag) 
      00324D 90 04 59         [24]  911 	mov	dptr,#_data_range_flag
      003250 E0               [24]  912 	movx	a,@dptr
      003251 F5 F0            [12]  913 	mov	b,a
      003253 A3               [24]  914 	inc	dptr
      003254 E0               [24]  915 	movx	a,@dptr
      003255 45 F0            [12]  916 	orl	a,b
      003257 70 0C            [24]  917 	jnz	00105$
                                    918 ;	8051_i2c_eeprom.c:99: data_range_flag = 1;
      003259 90 04 59         [24]  919 	mov	dptr,#_data_range_flag
      00325C 74 01            [12]  920 	mov	a,#0x01
      00325E F0               [24]  921 	movx	@dptr,a
      00325F E4               [12]  922 	clr	a
      003260 A3               [24]  923 	inc	dptr
      003261 F0               [24]  924 	movx	@dptr,a
                                    925 ;	8051_i2c_eeprom.c:100: break;
      003262 02 31 B1         [24]  926 	ljmp	00115$
      003265                        927 00105$:
                                    928 ;	8051_i2c_eeprom.c:102: printf("check point 1 \n\r");
      003265 C0 07            [24]  929 	push	ar7
      003267 C0 06            [24]  930 	push	ar6
      003269 C0 05            [24]  931 	push	ar5
      00326B 74 AE            [12]  932 	mov	a,#___str_16
      00326D C0 E0            [24]  933 	push	acc
      00326F 74 4D            [12]  934 	mov	a,#(___str_16 >> 8)
      003271 C0 E0            [24]  935 	push	acc
      003273 74 80            [12]  936 	mov	a,#0x80
      003275 C0 E0            [24]  937 	push	acc
      003277 12 3D 30         [24]  938 	lcall	_printf
      00327A 15 81            [12]  939 	dec	sp
      00327C 15 81            [12]  940 	dec	sp
      00327E 15 81            [12]  941 	dec	sp
      003280 D0 05            [24]  942 	pop	ar5
      003282 D0 06            [24]  943 	pop	ar6
      003284 D0 07            [24]  944 	pop	ar7
                                    945 ;	8051_i2c_eeprom.c:103: eeprom_write(addr, data);
      003286 90 04 0F         [24]  946 	mov	dptr,#_eeprom_write_PARM_2
      003289 ED               [12]  947 	mov	a,r5
      00328A F0               [24]  948 	movx	@dptr,a
      00328B 8E 82            [24]  949 	mov	dpl,r6
      00328D 8F 83            [24]  950 	mov	dph,r7
      00328F 12 36 F9         [24]  951 	lcall	_eeprom_write
                                    952 ;	8051_i2c_eeprom.c:104: break;
      003292 02 31 B1         [24]  953 	ljmp	00115$
                                    954 ;	8051_i2c_eeprom.c:106: case 'R':
      003295                        955 00106$:
                                    956 ;	8051_i2c_eeprom.c:108: printf("\n┌─────────────── READ OPERATION ───────────────┐\n\r");
      003295 74 BF            [12]  957 	mov	a,#___str_17
      003297 C0 E0            [24]  958 	push	acc
      003299 74 4D            [12]  959 	mov	a,#(___str_17 >> 8)
      00329B C0 E0            [24]  960 	push	acc
      00329D 74 80            [12]  961 	mov	a,#0x80
      00329F C0 E0            [24]  962 	push	acc
      0032A1 12 3D 30         [24]  963 	lcall	_printf
      0032A4 15 81            [12]  964 	dec	sp
      0032A6 15 81            [12]  965 	dec	sp
      0032A8 15 81            [12]  966 	dec	sp
                                    967 ;	8051_i2c_eeprom.c:110: addr = take_address(); 
      0032AA 12 33 67         [24]  968 	lcall	_take_address
      0032AD AE 82            [24]  969 	mov	r6,dpl
      0032AF AF 83            [24]  970 	mov	r7,dph
                                    971 ;	8051_i2c_eeprom.c:111: if(!address_range_flag) 
      0032B1 90 04 57         [24]  972 	mov	dptr,#_address_range_flag
      0032B4 E0               [24]  973 	movx	a,@dptr
      0032B5 F5 F0            [12]  974 	mov	b,a
      0032B7 A3               [24]  975 	inc	dptr
      0032B8 E0               [24]  976 	movx	a,@dptr
      0032B9 45 F0            [12]  977 	orl	a,b
      0032BB 70 0C            [24]  978 	jnz	00108$
                                    979 ;	8051_i2c_eeprom.c:113: address_range_flag = 1;
      0032BD 90 04 57         [24]  980 	mov	dptr,#_address_range_flag
      0032C0 74 01            [12]  981 	mov	a,#0x01
      0032C2 F0               [24]  982 	movx	@dptr,a
      0032C3 E4               [12]  983 	clr	a
      0032C4 A3               [24]  984 	inc	dptr
      0032C5 F0               [24]  985 	movx	@dptr,a
                                    986 ;	8051_i2c_eeprom.c:114: break;
      0032C6 02 31 B1         [24]  987 	ljmp	00115$
      0032C9                        988 00108$:
                                    989 ;	8051_i2c_eeprom.c:116: printf("| Reading from Address 0x%03X           |\n\r", addr);
      0032C9 C0 07            [24]  990 	push	ar7
      0032CB C0 06            [24]  991 	push	ar6
      0032CD C0 06            [24]  992 	push	ar6
      0032CF C0 07            [24]  993 	push	ar7
      0032D1 74 33            [12]  994 	mov	a,#___str_18
      0032D3 C0 E0            [24]  995 	push	acc
      0032D5 74 4E            [12]  996 	mov	a,#(___str_18 >> 8)
      0032D7 C0 E0            [24]  997 	push	acc
      0032D9 74 80            [12]  998 	mov	a,#0x80
      0032DB C0 E0            [24]  999 	push	acc
      0032DD 12 3D 30         [24] 1000 	lcall	_printf
      0032E0 E5 81            [12] 1001 	mov	a,sp
      0032E2 24 FB            [12] 1002 	add	a,#0xfb
      0032E4 F5 81            [12] 1003 	mov	sp,a
      0032E6 D0 06            [24] 1004 	pop	ar6
      0032E8 D0 07            [24] 1005 	pop	ar7
                                   1006 ;	8051_i2c_eeprom.c:117: eeprom_read(addr);
      0032EA 8E 82            [24] 1007 	mov	dpl,r6
      0032EC 8F 83            [24] 1008 	mov	dph,r7
      0032EE 12 38 3B         [24] 1009 	lcall	_eeprom_read
                                   1010 ;	8051_i2c_eeprom.c:118: break;
      0032F1 02 31 B1         [24] 1011 	ljmp	00115$
                                   1012 ;	8051_i2c_eeprom.c:121: case '?':
      0032F4                       1013 00109$:
                                   1014 ;	8051_i2c_eeprom.c:122: command_menu();
      0032F4 12 30 CF         [24] 1015 	lcall	_command_menu
                                   1016 ;	8051_i2c_eeprom.c:123: break;
      0032F7 02 31 B1         [24] 1017 	ljmp	00115$
                                   1018 ;	8051_i2c_eeprom.c:125: case 'X':
      0032FA                       1019 00110$:
                                   1020 ;	8051_i2c_eeprom.c:126: printf("\n┌─────────────── RESET OPERATION ───────────┐\n\r");
      0032FA 74 5F            [12] 1021 	mov	a,#___str_19
      0032FC C0 E0            [24] 1022 	push	acc
      0032FE 74 4E            [12] 1023 	mov	a,#(___str_19 >> 8)
      003300 C0 E0            [24] 1024 	push	acc
      003302 74 80            [12] 1025 	mov	a,#0x80
      003304 C0 E0            [24] 1026 	push	acc
      003306 12 3D 30         [24] 1027 	lcall	_printf
      003309 15 81            [12] 1028 	dec	sp
      00330B 15 81            [12] 1029 	dec	sp
      00330D 15 81            [12] 1030 	dec	sp
                                   1031 ;	8051_i2c_eeprom.c:127: eeprom_reset();
      00330F 12 3B E7         [24] 1032 	lcall	_eeprom_reset
                                   1033 ;	8051_i2c_eeprom.c:128: break;
      003312 02 31 B1         [24] 1034 	ljmp	00115$
                                   1035 ;	8051_i2c_eeprom.c:130: case 'H':
      003315                       1036 00111$:
                                   1037 ;	8051_i2c_eeprom.c:131: printf("\n┌───────────── HEX DUMP OPERATION ───────────────┐\n\r");
      003315 74 C8            [12] 1038 	mov	a,#___str_20
      003317 C0 E0            [24] 1039 	push	acc
      003319 74 4E            [12] 1040 	mov	a,#(___str_20 >> 8)
      00331B C0 E0            [24] 1041 	push	acc
      00331D 74 80            [12] 1042 	mov	a,#0x80
      00331F C0 E0            [24] 1043 	push	acc
      003321 12 3D 30         [24] 1044 	lcall	_printf
      003324 15 81            [12] 1045 	dec	sp
      003326 15 81            [12] 1046 	dec	sp
      003328 15 81            [12] 1047 	dec	sp
                                   1048 ;	8051_i2c_eeprom.c:133: start_add = take_address(); 
      00332A 12 33 67         [24] 1049 	lcall	_take_address
      00332D AE 82            [24] 1050 	mov	r6,dpl
      00332F AF 83            [24] 1051 	mov	r7,dph
                                   1052 ;	8051_i2c_eeprom.c:135: end_add = take_address(); 
      003331 C0 07            [24] 1053 	push	ar7
      003333 C0 06            [24] 1054 	push	ar6
      003335 12 33 67         [24] 1055 	lcall	_take_address
      003338 AC 82            [24] 1056 	mov	r4,dpl
      00333A AD 83            [24] 1057 	mov	r5,dph
      00333C D0 06            [24] 1058 	pop	ar6
      00333E D0 07            [24] 1059 	pop	ar7
                                   1060 ;	8051_i2c_eeprom.c:136: eeprom_hex_dump(start_add, end_add );
      003340 90 04 18         [24] 1061 	mov	dptr,#_eeprom_hex_dump_PARM_2
      003343 EC               [12] 1062 	mov	a,r4
      003344 F0               [24] 1063 	movx	@dptr,a
      003345 ED               [12] 1064 	mov	a,r5
      003346 A3               [24] 1065 	inc	dptr
      003347 F0               [24] 1066 	movx	@dptr,a
      003348 8E 82            [24] 1067 	mov	dpl,r6
      00334A 8F 83            [24] 1068 	mov	dph,r7
      00334C 12 3A 15         [24] 1069 	lcall	_eeprom_hex_dump
                                   1070 ;	8051_i2c_eeprom.c:138: default:
      00334F                       1071 00112$:
                                   1072 ;	8051_i2c_eeprom.c:139: printf("INVALID INPUT\n\r");
      00334F 74 3A            [12] 1073 	mov	a,#___str_21
      003351 C0 E0            [24] 1074 	push	acc
      003353 74 4F            [12] 1075 	mov	a,#(___str_21 >> 8)
      003355 C0 E0            [24] 1076 	push	acc
      003357 74 80            [12] 1077 	mov	a,#0x80
      003359 C0 E0            [24] 1078 	push	acc
      00335B 12 3D 30         [24] 1079 	lcall	_printf
      00335E 15 81            [12] 1080 	dec	sp
      003360 15 81            [12] 1081 	dec	sp
      003362 15 81            [12] 1082 	dec	sp
                                   1083 ;	8051_i2c_eeprom.c:141: }
                                   1084 ;	8051_i2c_eeprom.c:144: }
      003364 02 31 B1         [24] 1085 	ljmp	00115$
                                   1086 ;------------------------------------------------------------
                                   1087 ;Allocation info for local variables in function 'take_address'
                                   1088 ;------------------------------------------------------------
                                   1089 ;input                     Allocated with name '_take_address_input_65537_69'
                                   1090 ;i                         Allocated with name '_take_address_i_65537_69'
                                   1091 ;c                         Allocated with name '_take_address_c_65537_69'
                                   1092 ;address                   Allocated with name '_take_address_address_65538_73'
                                   1093 ;block                     Allocated with name '_take_address_block_65539_77'
                                   1094 ;------------------------------------------------------------
                                   1095 ;	8051_i2c_eeprom.c:146: unsigned int take_address() 
                                   1096 ;	-----------------------------------------
                                   1097 ;	 function take_address
                                   1098 ;	-----------------------------------------
      003367                       1099 _take_address:
                                   1100 ;	8051_i2c_eeprom.c:148: printf("│ Enter address (hex, up to 3 characters): \n\r|");
      003367 74 4A            [12] 1101 	mov	a,#___str_22
      003369 C0 E0            [24] 1102 	push	acc
      00336B 74 4F            [12] 1103 	mov	a,#(___str_22 >> 8)
      00336D C0 E0            [24] 1104 	push	acc
      00336F 74 80            [12] 1105 	mov	a,#0x80
      003371 C0 E0            [24] 1106 	push	acc
      003373 12 3D 30         [24] 1107 	lcall	_printf
      003376 15 81            [12] 1108 	dec	sp
      003378 15 81            [12] 1109 	dec	sp
      00337A 15 81            [12] 1110 	dec	sp
                                   1111 ;	8051_i2c_eeprom.c:149: char input[4] = {0};  // Array for 3 hex chars + null terminator
      00337C 90 04 04         [24] 1112 	mov	dptr,#_take_address_input_65537_69
      00337F E4               [12] 1113 	clr	a
      003380 F0               [24] 1114 	movx	@dptr,a
      003381 90 04 05         [24] 1115 	mov	dptr,#(_take_address_input_65537_69 + 0x0001)
      003384 F0               [24] 1116 	movx	@dptr,a
      003385 90 04 06         [24] 1117 	mov	dptr,#(_take_address_input_65537_69 + 0x0002)
      003388 F0               [24] 1118 	movx	@dptr,a
      003389 90 04 07         [24] 1119 	mov	dptr,#(_take_address_input_65537_69 + 0x0003)
      00338C F0               [24] 1120 	movx	@dptr,a
                                   1121 ;	8051_i2c_eeprom.c:153: printf("| $ ");
      00338D 74 7B            [12] 1122 	mov	a,#___str_23
      00338F C0 E0            [24] 1123 	push	acc
      003391 74 4F            [12] 1124 	mov	a,#(___str_23 >> 8)
      003393 C0 E0            [24] 1125 	push	acc
      003395 74 80            [12] 1126 	mov	a,#0x80
      003397 C0 E0            [24] 1127 	push	acc
      003399 12 3D 30         [24] 1128 	lcall	_printf
      00339C 15 81            [12] 1129 	dec	sp
      00339E 15 81            [12] 1130 	dec	sp
      0033A0 15 81            [12] 1131 	dec	sp
                                   1132 ;	8051_i2c_eeprom.c:155: while (i < 3) {
      0033A2 7E 00            [12] 1133 	mov	r6,#0x00
      0033A4 7F 00            [12] 1134 	mov	r7,#0x00
      0033A6                       1135 00111$:
      0033A6 C3               [12] 1136 	clr	c
      0033A7 EE               [12] 1137 	mov	a,r6
      0033A8 94 03            [12] 1138 	subb	a,#0x03
      0033AA EF               [12] 1139 	mov	a,r7
      0033AB 64 80            [12] 1140 	xrl	a,#0x80
      0033AD 94 80            [12] 1141 	subb	a,#0x80
      0033AF 50 5B            [24] 1142 	jnc	00113$
                                   1143 ;	8051_i2c_eeprom.c:157: c = getchar();
      0033B1 C0 07            [24] 1144 	push	ar7
      0033B3 C0 06            [24] 1145 	push	ar6
      0033B5 12 30 81         [24] 1146 	lcall	_getchar
      0033B8 AC 82            [24] 1147 	mov	r4,dpl
      0033BA AD 83            [24] 1148 	mov	r5,dph
      0033BC D0 06            [24] 1149 	pop	ar6
      0033BE D0 07            [24] 1150 	pop	ar7
                                   1151 ;	8051_i2c_eeprom.c:160: if (c == '\r' || c == '\n') {
      0033C0 BC 0D 02         [24] 1152 	cjne	r4,#0x0d,00200$
      0033C3 80 47            [24] 1153 	sjmp	00113$
      0033C5                       1154 00200$:
      0033C5 BC 0A 02         [24] 1155 	cjne	r4,#0x0a,00201$
      0033C8 80 42            [24] 1156 	sjmp	00113$
      0033CA                       1157 00201$:
                                   1158 ;	8051_i2c_eeprom.c:165: if ((c >= '0' && c <= '9') || 
      0033CA BC 30 00         [24] 1159 	cjne	r4,#0x30,00202$
      0033CD                       1160 00202$:
      0033CD 40 05            [24] 1161 	jc	00108$
      0033CF EC               [12] 1162 	mov	a,r4
      0033D0 24 C6            [12] 1163 	add	a,#0xff - 0x39
      0033D2 50 14            [24] 1164 	jnc	00104$
      0033D4                       1165 00108$:
                                   1166 ;	8051_i2c_eeprom.c:166: (c >= 'a' && c <= 'f') || 
      0033D4 BC 61 00         [24] 1167 	cjne	r4,#0x61,00205$
      0033D7                       1168 00205$:
      0033D7 40 05            [24] 1169 	jc	00110$
      0033D9 EC               [12] 1170 	mov	a,r4
      0033DA 24 99            [12] 1171 	add	a,#0xff - 0x66
      0033DC 50 0A            [24] 1172 	jnc	00104$
      0033DE                       1173 00110$:
                                   1174 ;	8051_i2c_eeprom.c:167: (c >= 'A' && c <= 'F')) {
      0033DE BC 41 00         [24] 1175 	cjne	r4,#0x41,00208$
      0033E1                       1176 00208$:
      0033E1 40 C3            [24] 1177 	jc	00111$
      0033E3 EC               [12] 1178 	mov	a,r4
      0033E4 24 B9            [12] 1179 	add	a,#0xff - 0x46
      0033E6 40 BE            [24] 1180 	jc	00111$
      0033E8                       1181 00104$:
                                   1182 ;	8051_i2c_eeprom.c:169: input[i] = c;
      0033E8 EE               [12] 1183 	mov	a,r6
      0033E9 24 04            [12] 1184 	add	a,#_take_address_input_65537_69
      0033EB F5 82            [12] 1185 	mov	dpl,a
      0033ED EF               [12] 1186 	mov	a,r7
      0033EE 34 04            [12] 1187 	addc	a,#(_take_address_input_65537_69 >> 8)
      0033F0 F5 83            [12] 1188 	mov	dph,a
      0033F2 EC               [12] 1189 	mov	a,r4
      0033F3 F0               [24] 1190 	movx	@dptr,a
                                   1191 ;	8051_i2c_eeprom.c:170: putchar(c);  // Echo character back
      0033F4 7D 00            [12] 1192 	mov	r5,#0x00
      0033F6 8C 82            [24] 1193 	mov	dpl,r4
      0033F8 8D 83            [24] 1194 	mov	dph,r5
      0033FA C0 07            [24] 1195 	push	ar7
      0033FC C0 06            [24] 1196 	push	ar6
      0033FE 12 30 62         [24] 1197 	lcall	_putchar
      003401 D0 06            [24] 1198 	pop	ar6
      003403 D0 07            [24] 1199 	pop	ar7
                                   1200 ;	8051_i2c_eeprom.c:171: i++;
      003405 0E               [12] 1201 	inc	r6
      003406 BE 00 9D         [24] 1202 	cjne	r6,#0x00,00111$
      003409 0F               [12] 1203 	inc	r7
      00340A 80 9A            [24] 1204 	sjmp	00111$
      00340C                       1205 00113$:
                                   1206 ;	8051_i2c_eeprom.c:175: input[i] = '\0';  // Null-terminate the string
      00340C EE               [12] 1207 	mov	a,r6
      00340D 24 04            [12] 1208 	add	a,#_take_address_input_65537_69
      00340F F5 82            [12] 1209 	mov	dpl,a
      003411 EF               [12] 1210 	mov	a,r7
      003412 34 04            [12] 1211 	addc	a,#(_take_address_input_65537_69 >> 8)
      003414 F5 83            [12] 1212 	mov	dph,a
      003416 E4               [12] 1213 	clr	a
      003417 F0               [24] 1214 	movx	@dptr,a
                                   1215 ;	8051_i2c_eeprom.c:178: unsigned int address = 0;
      003418 90 04 08         [24] 1216 	mov	dptr,#_take_address_address_65538_73
      00341B F0               [24] 1217 	movx	@dptr,a
      00341C A3               [24] 1218 	inc	dptr
      00341D F0               [24] 1219 	movx	@dptr,a
                                   1220 ;	8051_i2c_eeprom.c:179: for(i = 0; input[i] != '\0'; i++) {
      00341E 7E 00            [12] 1221 	mov	r6,#0x00
      003420 7F 00            [12] 1222 	mov	r7,#0x00
      003422                       1223 00129$:
      003422 EE               [12] 1224 	mov	a,r6
      003423 24 04            [12] 1225 	add	a,#_take_address_input_65537_69
      003425 F5 82            [12] 1226 	mov	dpl,a
      003427 EF               [12] 1227 	mov	a,r7
      003428 34 04            [12] 1228 	addc	a,#(_take_address_input_65537_69 >> 8)
      00342A F5 83            [12] 1229 	mov	dph,a
      00342C E0               [24] 1230 	movx	a,@dptr
      00342D FD               [12] 1231 	mov	r5,a
      00342E 70 03            [24] 1232 	jnz	00212$
      003430 02 34 DB         [24] 1233 	ljmp	00125$
      003433                       1234 00212$:
                                   1235 ;	8051_i2c_eeprom.c:180: address = address * 16;
      003433 90 04 08         [24] 1236 	mov	dptr,#_take_address_address_65538_73
      003436 E0               [24] 1237 	movx	a,@dptr
      003437 FB               [12] 1238 	mov	r3,a
      003438 A3               [24] 1239 	inc	dptr
      003439 E0               [24] 1240 	movx	a,@dptr
      00343A C4               [12] 1241 	swap	a
      00343B 54 F0            [12] 1242 	anl	a,#0xf0
      00343D CB               [12] 1243 	xch	a,r3
      00343E C4               [12] 1244 	swap	a
      00343F CB               [12] 1245 	xch	a,r3
      003440 6B               [12] 1246 	xrl	a,r3
      003441 CB               [12] 1247 	xch	a,r3
      003442 54 F0            [12] 1248 	anl	a,#0xf0
      003444 CB               [12] 1249 	xch	a,r3
      003445 6B               [12] 1250 	xrl	a,r3
      003446 FC               [12] 1251 	mov	r4,a
      003447 90 04 08         [24] 1252 	mov	dptr,#_take_address_address_65538_73
      00344A EB               [12] 1253 	mov	a,r3
      00344B F0               [24] 1254 	movx	@dptr,a
      00344C EC               [12] 1255 	mov	a,r4
      00344D A3               [24] 1256 	inc	dptr
      00344E F0               [24] 1257 	movx	@dptr,a
                                   1258 ;	8051_i2c_eeprom.c:181: if(input[i] >= '0' && input[i] <= '9')
      00344F BD 30 00         [24] 1259 	cjne	r5,#0x30,00213$
      003452                       1260 00213$:
      003452 40 23            [24] 1261 	jc	00122$
      003454 ED               [12] 1262 	mov	a,r5
      003455 24 C6            [12] 1263 	add	a,#0xff - 0x39
      003457 40 1E            [24] 1264 	jc	00122$
                                   1265 ;	8051_i2c_eeprom.c:182: address += input[i] - '0';
      003459 7C 00            [12] 1266 	mov	r4,#0x00
      00345B ED               [12] 1267 	mov	a,r5
      00345C 24 D0            [12] 1268 	add	a,#0xd0
      00345E FD               [12] 1269 	mov	r5,a
      00345F EC               [12] 1270 	mov	a,r4
      003460 34 FF            [12] 1271 	addc	a,#0xff
      003462 FC               [12] 1272 	mov	r4,a
      003463 90 04 08         [24] 1273 	mov	dptr,#_take_address_address_65538_73
      003466 E0               [24] 1274 	movx	a,@dptr
      003467 FA               [12] 1275 	mov	r2,a
      003468 A3               [24] 1276 	inc	dptr
      003469 E0               [24] 1277 	movx	a,@dptr
      00346A FB               [12] 1278 	mov	r3,a
      00346B 90 04 08         [24] 1279 	mov	dptr,#_take_address_address_65538_73
      00346E ED               [12] 1280 	mov	a,r5
      00346F 2A               [12] 1281 	add	a,r2
      003470 F0               [24] 1282 	movx	@dptr,a
      003471 EC               [12] 1283 	mov	a,r4
      003472 3B               [12] 1284 	addc	a,r3
      003473 A3               [24] 1285 	inc	dptr
      003474 F0               [24] 1286 	movx	@dptr,a
      003475 80 5C            [24] 1287 	sjmp	00130$
      003477                       1288 00122$:
                                   1289 ;	8051_i2c_eeprom.c:183: else if(input[i] >= 'A' && input[i] <= 'F')
      003477 EE               [12] 1290 	mov	a,r6
      003478 24 04            [12] 1291 	add	a,#_take_address_input_65537_69
      00347A F5 82            [12] 1292 	mov	dpl,a
      00347C EF               [12] 1293 	mov	a,r7
      00347D 34 04            [12] 1294 	addc	a,#(_take_address_input_65537_69 >> 8)
      00347F F5 83            [12] 1295 	mov	dph,a
      003481 E0               [24] 1296 	movx	a,@dptr
      003482 FD               [12] 1297 	mov	r5,a
      003483 BD 41 00         [24] 1298 	cjne	r5,#0x41,00216$
      003486                       1299 00216$:
      003486 40 25            [24] 1300 	jc	00118$
      003488 ED               [12] 1301 	mov	a,r5
      003489 24 B9            [12] 1302 	add	a,#0xff - 0x46
      00348B 40 20            [24] 1303 	jc	00118$
                                   1304 ;	8051_i2c_eeprom.c:184: address += input[i] - 'A' + 10;
      00348D 8D 03            [24] 1305 	mov	ar3,r5
      00348F 7C 00            [12] 1306 	mov	r4,#0x00
      003491 74 C9            [12] 1307 	mov	a,#0xc9
      003493 2B               [12] 1308 	add	a,r3
      003494 FB               [12] 1309 	mov	r3,a
      003495 74 FF            [12] 1310 	mov	a,#0xff
      003497 3C               [12] 1311 	addc	a,r4
      003498 FC               [12] 1312 	mov	r4,a
      003499 90 04 08         [24] 1313 	mov	dptr,#_take_address_address_65538_73
      00349C E0               [24] 1314 	movx	a,@dptr
      00349D F9               [12] 1315 	mov	r1,a
      00349E A3               [24] 1316 	inc	dptr
      00349F E0               [24] 1317 	movx	a,@dptr
      0034A0 FA               [12] 1318 	mov	r2,a
      0034A1 90 04 08         [24] 1319 	mov	dptr,#_take_address_address_65538_73
      0034A4 EB               [12] 1320 	mov	a,r3
      0034A5 29               [12] 1321 	add	a,r1
      0034A6 F0               [24] 1322 	movx	@dptr,a
      0034A7 EC               [12] 1323 	mov	a,r4
      0034A8 3A               [12] 1324 	addc	a,r2
      0034A9 A3               [24] 1325 	inc	dptr
      0034AA F0               [24] 1326 	movx	@dptr,a
      0034AB 80 26            [24] 1327 	sjmp	00130$
      0034AD                       1328 00118$:
                                   1329 ;	8051_i2c_eeprom.c:185: else if(input[i] >= 'a' && input[i] <= 'f')
      0034AD BD 61 00         [24] 1330 	cjne	r5,#0x61,00219$
      0034B0                       1331 00219$:
      0034B0 40 21            [24] 1332 	jc	00130$
      0034B2 ED               [12] 1333 	mov	a,r5
      0034B3 24 99            [12] 1334 	add	a,#0xff - 0x66
      0034B5 40 1C            [24] 1335 	jc	00130$
                                   1336 ;	8051_i2c_eeprom.c:186: address += input[i] - 'a' + 10;
      0034B7 7C 00            [12] 1337 	mov	r4,#0x00
      0034B9 74 A9            [12] 1338 	mov	a,#0xa9
      0034BB 2D               [12] 1339 	add	a,r5
      0034BC FD               [12] 1340 	mov	r5,a
      0034BD 74 FF            [12] 1341 	mov	a,#0xff
      0034BF 3C               [12] 1342 	addc	a,r4
      0034C0 FC               [12] 1343 	mov	r4,a
      0034C1 90 04 08         [24] 1344 	mov	dptr,#_take_address_address_65538_73
      0034C4 E0               [24] 1345 	movx	a,@dptr
      0034C5 FA               [12] 1346 	mov	r2,a
      0034C6 A3               [24] 1347 	inc	dptr
      0034C7 E0               [24] 1348 	movx	a,@dptr
      0034C8 FB               [12] 1349 	mov	r3,a
      0034C9 90 04 08         [24] 1350 	mov	dptr,#_take_address_address_65538_73
      0034CC ED               [12] 1351 	mov	a,r5
      0034CD 2A               [12] 1352 	add	a,r2
      0034CE F0               [24] 1353 	movx	@dptr,a
      0034CF EC               [12] 1354 	mov	a,r4
      0034D0 3B               [12] 1355 	addc	a,r3
      0034D1 A3               [24] 1356 	inc	dptr
      0034D2 F0               [24] 1357 	movx	@dptr,a
      0034D3                       1358 00130$:
                                   1359 ;	8051_i2c_eeprom.c:179: for(i = 0; input[i] != '\0'; i++) {
      0034D3 0E               [12] 1360 	inc	r6
      0034D4 BE 00 01         [24] 1361 	cjne	r6,#0x00,00222$
      0034D7 0F               [12] 1362 	inc	r7
      0034D8                       1363 00222$:
      0034D8 02 34 22         [24] 1364 	ljmp	00129$
      0034DB                       1365 00125$:
                                   1366 ;	8051_i2c_eeprom.c:189: printf("\n\r│ Entered address: 0x%03X\n\r", address);
      0034DB 90 04 08         [24] 1367 	mov	dptr,#_take_address_address_65538_73
      0034DE E0               [24] 1368 	movx	a,@dptr
      0034DF FE               [12] 1369 	mov	r6,a
      0034E0 A3               [24] 1370 	inc	dptr
      0034E1 E0               [24] 1371 	movx	a,@dptr
      0034E2 FF               [12] 1372 	mov	r7,a
      0034E3 C0 07            [24] 1373 	push	ar7
      0034E5 C0 06            [24] 1374 	push	ar6
      0034E7 C0 06            [24] 1375 	push	ar6
      0034E9 C0 07            [24] 1376 	push	ar7
      0034EB 74 80            [12] 1377 	mov	a,#___str_24
      0034ED C0 E0            [24] 1378 	push	acc
      0034EF 74 4F            [12] 1379 	mov	a,#(___str_24 >> 8)
      0034F1 C0 E0            [24] 1380 	push	acc
      0034F3 74 80            [12] 1381 	mov	a,#0x80
      0034F5 C0 E0            [24] 1382 	push	acc
      0034F7 12 3D 30         [24] 1383 	lcall	_printf
      0034FA E5 81            [12] 1384 	mov	a,sp
      0034FC 24 FB            [12] 1385 	add	a,#0xfb
      0034FE F5 81            [12] 1386 	mov	sp,a
      003500 D0 06            [24] 1387 	pop	ar6
      003502 D0 07            [24] 1388 	pop	ar7
                                   1389 ;	8051_i2c_eeprom.c:190: if(address > 0x7ff) 
      003504 C3               [12] 1390 	clr	c
      003505 74 FF            [12] 1391 	mov	a,#0xff
      003507 9E               [12] 1392 	subb	a,r6
      003508 74 07            [12] 1393 	mov	a,#0x07
      00350A 9F               [12] 1394 	subb	a,r7
      00350B 50 5F            [24] 1395 	jnc	00127$
                                   1396 ;	8051_i2c_eeprom.c:192: printf("╔══════════════════════════════════════════╗\n\r");
      00350D 74 A0            [12] 1397 	mov	a,#___str_25
      00350F C0 E0            [24] 1398 	push	acc
      003511 74 4F            [12] 1399 	mov	a,#(___str_25 >> 8)
      003513 C0 E0            [24] 1400 	push	acc
      003515 74 80            [12] 1401 	mov	a,#0x80
      003517 C0 E0            [24] 1402 	push	acc
      003519 12 3D 30         [24] 1403 	lcall	_printf
      00351C 15 81            [12] 1404 	dec	sp
      00351E 15 81            [12] 1405 	dec	sp
      003520 15 81            [12] 1406 	dec	sp
                                   1407 ;	8051_i2c_eeprom.c:193: printf("║       ! ADDRESS OUT OF RANGE !         ║\n\r");
      003522 74 27            [12] 1408 	mov	a,#___str_26
      003524 C0 E0            [24] 1409 	push	acc
      003526 74 50            [12] 1410 	mov	a,#(___str_26 >> 8)
      003528 C0 E0            [24] 1411 	push	acc
      00352A 74 80            [12] 1412 	mov	a,#0x80
      00352C C0 E0            [24] 1413 	push	acc
      00352E 12 3D 30         [24] 1414 	lcall	_printf
      003531 15 81            [12] 1415 	dec	sp
      003533 15 81            [12] 1416 	dec	sp
      003535 15 81            [12] 1417 	dec	sp
                                   1418 ;	8051_i2c_eeprom.c:194: printf("║     Please Enter Valid Address         ║\n\r");
      003537 74 58            [12] 1419 	mov	a,#___str_27
      003539 C0 E0            [24] 1420 	push	acc
      00353B 74 50            [12] 1421 	mov	a,#(___str_27 >> 8)
      00353D C0 E0            [24] 1422 	push	acc
      00353F 74 80            [12] 1423 	mov	a,#0x80
      003541 C0 E0            [24] 1424 	push	acc
      003543 12 3D 30         [24] 1425 	lcall	_printf
      003546 15 81            [12] 1426 	dec	sp
      003548 15 81            [12] 1427 	dec	sp
      00354A 15 81            [12] 1428 	dec	sp
                                   1429 ;	8051_i2c_eeprom.c:195: printf("╚══════════════════════════════════════════╝\n\r");
      00354C 74 89            [12] 1430 	mov	a,#___str_28
      00354E C0 E0            [24] 1431 	push	acc
      003550 74 50            [12] 1432 	mov	a,#(___str_28 >> 8)
      003552 C0 E0            [24] 1433 	push	acc
      003554 74 80            [12] 1434 	mov	a,#0x80
      003556 C0 E0            [24] 1435 	push	acc
      003558 12 3D 30         [24] 1436 	lcall	_printf
      00355B 15 81            [12] 1437 	dec	sp
      00355D 15 81            [12] 1438 	dec	sp
      00355F 15 81            [12] 1439 	dec	sp
                                   1440 ;	8051_i2c_eeprom.c:196: address_range_flag = 0;
      003561 90 04 57         [24] 1441 	mov	dptr,#_address_range_flag
      003564 E4               [12] 1442 	clr	a
      003565 F0               [24] 1443 	movx	@dptr,a
      003566 A3               [24] 1444 	inc	dptr
      003567 F0               [24] 1445 	movx	@dptr,a
                                   1446 ;	8051_i2c_eeprom.c:197: return 0;
      003568 90 00 00         [24] 1447 	mov	dptr,#0x0000
      00356B 22               [24] 1448 	ret
      00356C                       1449 00127$:
                                   1450 ;	8051_i2c_eeprom.c:201: address = address%256;     //word address
      00356C 90 04 08         [24] 1451 	mov	dptr,#_take_address_address_65538_73
      00356F EE               [12] 1452 	mov	a,r6
      003570 F0               [24] 1453 	movx	@dptr,a
      003571 E4               [12] 1454 	clr	a
      003572 A3               [24] 1455 	inc	dptr
      003573 F0               [24] 1456 	movx	@dptr,a
                                   1457 ;	8051_i2c_eeprom.c:204: return address;
      003574 90 04 08         [24] 1458 	mov	dptr,#_take_address_address_65538_73
      003577 E0               [24] 1459 	movx	a,@dptr
      003578 FE               [12] 1460 	mov	r6,a
      003579 A3               [24] 1461 	inc	dptr
      00357A E0               [24] 1462 	movx	a,@dptr
                                   1463 ;	8051_i2c_eeprom.c:205: }
      00357B 8E 82            [24] 1464 	mov	dpl,r6
      00357D F5 83            [12] 1465 	mov	dph,a
      00357F 22               [24] 1466 	ret
                                   1467 ;------------------------------------------------------------
                                   1468 ;Allocation info for local variables in function 'take_data'
                                   1469 ;------------------------------------------------------------
                                   1470 ;input                     Allocated with name '_take_data_input_65537_79'
                                   1471 ;i                         Allocated with name '_take_data_i_65537_79'
                                   1472 ;c                         Allocated with name '_take_data_c_65537_79'
                                   1473 ;data                      Allocated with name '_take_data_data_65538_83'
                                   1474 ;------------------------------------------------------------
                                   1475 ;	8051_i2c_eeprom.c:207: unsigned char take_data()
                                   1476 ;	-----------------------------------------
                                   1477 ;	 function take_data
                                   1478 ;	-----------------------------------------
      003580                       1479 _take_data:
                                   1480 ;	8051_i2c_eeprom.c:209: printf("│ Enter data (hex, up to 2 characters): \n\r|");
      003580 74 10            [12] 1481 	mov	a,#___str_29
      003582 C0 E0            [24] 1482 	push	acc
      003584 74 51            [12] 1483 	mov	a,#(___str_29 >> 8)
      003586 C0 E0            [24] 1484 	push	acc
      003588 74 80            [12] 1485 	mov	a,#0x80
      00358A C0 E0            [24] 1486 	push	acc
      00358C 12 3D 30         [24] 1487 	lcall	_printf
      00358F 15 81            [12] 1488 	dec	sp
      003591 15 81            [12] 1489 	dec	sp
      003593 15 81            [12] 1490 	dec	sp
                                   1491 ;	8051_i2c_eeprom.c:210: char input[4] = {0};  // Array for 3 hex chars + null terminator
      003595 90 04 0A         [24] 1492 	mov	dptr,#_take_data_input_65537_79
      003598 E4               [12] 1493 	clr	a
      003599 F0               [24] 1494 	movx	@dptr,a
      00359A 90 04 0B         [24] 1495 	mov	dptr,#(_take_data_input_65537_79 + 0x0001)
      00359D F0               [24] 1496 	movx	@dptr,a
      00359E 90 04 0C         [24] 1497 	mov	dptr,#(_take_data_input_65537_79 + 0x0002)
      0035A1 F0               [24] 1498 	movx	@dptr,a
      0035A2 90 04 0D         [24] 1499 	mov	dptr,#(_take_data_input_65537_79 + 0x0003)
      0035A5 F0               [24] 1500 	movx	@dptr,a
                                   1501 ;	8051_i2c_eeprom.c:214: printf("$ ");
      0035A6 74 3E            [12] 1502 	mov	a,#___str_30
      0035A8 C0 E0            [24] 1503 	push	acc
      0035AA 74 51            [12] 1504 	mov	a,#(___str_30 >> 8)
      0035AC C0 E0            [24] 1505 	push	acc
      0035AE 74 80            [12] 1506 	mov	a,#0x80
      0035B0 C0 E0            [24] 1507 	push	acc
      0035B2 12 3D 30         [24] 1508 	lcall	_printf
      0035B5 15 81            [12] 1509 	dec	sp
      0035B7 15 81            [12] 1510 	dec	sp
      0035B9 15 81            [12] 1511 	dec	sp
                                   1512 ;	8051_i2c_eeprom.c:216: while (i < 3) {
      0035BB 7E 00            [12] 1513 	mov	r6,#0x00
      0035BD 7F 00            [12] 1514 	mov	r7,#0x00
      0035BF                       1515 00111$:
      0035BF C3               [12] 1516 	clr	c
      0035C0 EE               [12] 1517 	mov	a,r6
      0035C1 94 03            [12] 1518 	subb	a,#0x03
      0035C3 EF               [12] 1519 	mov	a,r7
      0035C4 64 80            [12] 1520 	xrl	a,#0x80
      0035C6 94 80            [12] 1521 	subb	a,#0x80
      0035C8 50 5B            [24] 1522 	jnc	00113$
                                   1523 ;	8051_i2c_eeprom.c:218: c = getchar();
      0035CA C0 07            [24] 1524 	push	ar7
      0035CC C0 06            [24] 1525 	push	ar6
      0035CE 12 30 81         [24] 1526 	lcall	_getchar
      0035D1 AC 82            [24] 1527 	mov	r4,dpl
      0035D3 AD 83            [24] 1528 	mov	r5,dph
      0035D5 D0 06            [24] 1529 	pop	ar6
      0035D7 D0 07            [24] 1530 	pop	ar7
                                   1531 ;	8051_i2c_eeprom.c:221: if (c == '\r' || c == '\n') {
      0035D9 BC 0D 02         [24] 1532 	cjne	r4,#0x0d,00200$
      0035DC 80 47            [24] 1533 	sjmp	00113$
      0035DE                       1534 00200$:
      0035DE BC 0A 02         [24] 1535 	cjne	r4,#0x0a,00201$
      0035E1 80 42            [24] 1536 	sjmp	00113$
      0035E3                       1537 00201$:
                                   1538 ;	8051_i2c_eeprom.c:226: if ((c >= '0' && c <= '9') ||
      0035E3 BC 30 00         [24] 1539 	cjne	r4,#0x30,00202$
      0035E6                       1540 00202$:
      0035E6 40 05            [24] 1541 	jc	00108$
      0035E8 EC               [12] 1542 	mov	a,r4
      0035E9 24 C6            [12] 1543 	add	a,#0xff - 0x39
      0035EB 50 14            [24] 1544 	jnc	00104$
      0035ED                       1545 00108$:
                                   1546 ;	8051_i2c_eeprom.c:227: (c >= 'a' && c <= 'f') ||
      0035ED BC 61 00         [24] 1547 	cjne	r4,#0x61,00205$
      0035F0                       1548 00205$:
      0035F0 40 05            [24] 1549 	jc	00110$
      0035F2 EC               [12] 1550 	mov	a,r4
      0035F3 24 99            [12] 1551 	add	a,#0xff - 0x66
      0035F5 50 0A            [24] 1552 	jnc	00104$
      0035F7                       1553 00110$:
                                   1554 ;	8051_i2c_eeprom.c:228: (c >= 'A' && c <= 'F')) {
      0035F7 BC 41 00         [24] 1555 	cjne	r4,#0x41,00208$
      0035FA                       1556 00208$:
      0035FA 40 C3            [24] 1557 	jc	00111$
      0035FC EC               [12] 1558 	mov	a,r4
      0035FD 24 B9            [12] 1559 	add	a,#0xff - 0x46
      0035FF 40 BE            [24] 1560 	jc	00111$
      003601                       1561 00104$:
                                   1562 ;	8051_i2c_eeprom.c:230: input[i] = c;
      003601 EE               [12] 1563 	mov	a,r6
      003602 24 0A            [12] 1564 	add	a,#_take_data_input_65537_79
      003604 F5 82            [12] 1565 	mov	dpl,a
      003606 EF               [12] 1566 	mov	a,r7
      003607 34 04            [12] 1567 	addc	a,#(_take_data_input_65537_79 >> 8)
      003609 F5 83            [12] 1568 	mov	dph,a
      00360B EC               [12] 1569 	mov	a,r4
      00360C F0               [24] 1570 	movx	@dptr,a
                                   1571 ;	8051_i2c_eeprom.c:231: putchar(c);  // Echo character back
      00360D 7D 00            [12] 1572 	mov	r5,#0x00
      00360F 8C 82            [24] 1573 	mov	dpl,r4
      003611 8D 83            [24] 1574 	mov	dph,r5
      003613 C0 07            [24] 1575 	push	ar7
      003615 C0 06            [24] 1576 	push	ar6
      003617 12 30 62         [24] 1577 	lcall	_putchar
      00361A D0 06            [24] 1578 	pop	ar6
      00361C D0 07            [24] 1579 	pop	ar7
                                   1580 ;	8051_i2c_eeprom.c:232: i++;
      00361E 0E               [12] 1581 	inc	r6
      00361F BE 00 9D         [24] 1582 	cjne	r6,#0x00,00111$
      003622 0F               [12] 1583 	inc	r7
      003623 80 9A            [24] 1584 	sjmp	00111$
      003625                       1585 00113$:
                                   1586 ;	8051_i2c_eeprom.c:236: input[i] = '\0';  // Null-terminate the string
      003625 EE               [12] 1587 	mov	a,r6
      003626 24 0A            [12] 1588 	add	a,#_take_data_input_65537_79
      003628 F5 82            [12] 1589 	mov	dpl,a
      00362A EF               [12] 1590 	mov	a,r7
      00362B 34 04            [12] 1591 	addc	a,#(_take_data_input_65537_79 >> 8)
      00362D F5 83            [12] 1592 	mov	dph,a
      00362F E4               [12] 1593 	clr	a
      003630 F0               [24] 1594 	movx	@dptr,a
                                   1595 ;	8051_i2c_eeprom.c:239: unsigned char data = 0;
      003631 90 04 0E         [24] 1596 	mov	dptr,#_take_data_data_65538_83
      003634 F0               [24] 1597 	movx	@dptr,a
                                   1598 ;	8051_i2c_eeprom.c:240: for (i = 0; input[i] != '\0'; i++) {
      003635 7E 00            [12] 1599 	mov	r6,#0x00
      003637 7F 00            [12] 1600 	mov	r7,#0x00
      003639                       1601 00129$:
      003639 EE               [12] 1602 	mov	a,r6
      00363A 24 0A            [12] 1603 	add	a,#_take_data_input_65537_79
      00363C F5 82            [12] 1604 	mov	dpl,a
      00363E EF               [12] 1605 	mov	a,r7
      00363F 34 04            [12] 1606 	addc	a,#(_take_data_input_65537_79 >> 8)
      003641 F5 83            [12] 1607 	mov	dph,a
      003643 E0               [24] 1608 	movx	a,@dptr
      003644 FD               [12] 1609 	mov	r5,a
      003645 70 03            [24] 1610 	jnz	00212$
      003647 02 36 AC         [24] 1611 	ljmp	00125$
      00364A                       1612 00212$:
                                   1613 ;	8051_i2c_eeprom.c:241: data = data * 16;
      00364A 90 04 0E         [24] 1614 	mov	dptr,#_take_data_data_65538_83
      00364D E0               [24] 1615 	movx	a,@dptr
      00364E C4               [12] 1616 	swap	a
      00364F 54 F0            [12] 1617 	anl	a,#0xf0
      003651 FC               [12] 1618 	mov	r4,a
      003652 F0               [24] 1619 	movx	@dptr,a
                                   1620 ;	8051_i2c_eeprom.c:242: if (input[i] >= '0' && input[i] <= '9')
      003653 BD 30 00         [24] 1621 	cjne	r5,#0x30,00213$
      003656                       1622 00213$:
      003656 40 12            [24] 1623 	jc	00122$
      003658 ED               [12] 1624 	mov	a,r5
      003659 24 C6            [12] 1625 	add	a,#0xff - 0x39
      00365B 40 0D            [24] 1626 	jc	00122$
                                   1627 ;	8051_i2c_eeprom.c:243: data += input[i] - '0';
      00365D ED               [12] 1628 	mov	a,r5
      00365E 24 D0            [12] 1629 	add	a,#0xd0
      003660 FD               [12] 1630 	mov	r5,a
      003661 90 04 0E         [24] 1631 	mov	dptr,#_take_data_data_65538_83
      003664 E0               [24] 1632 	movx	a,@dptr
      003665 FC               [12] 1633 	mov	r4,a
      003666 2D               [12] 1634 	add	a,r5
      003667 F0               [24] 1635 	movx	@dptr,a
      003668 80 3A            [24] 1636 	sjmp	00130$
      00366A                       1637 00122$:
                                   1638 ;	8051_i2c_eeprom.c:244: else if (input[i] >= 'A' && input[i] <= 'F')
      00366A EE               [12] 1639 	mov	a,r6
      00366B 24 0A            [12] 1640 	add	a,#_take_data_input_65537_79
      00366D F5 82            [12] 1641 	mov	dpl,a
      00366F EF               [12] 1642 	mov	a,r7
      003670 34 04            [12] 1643 	addc	a,#(_take_data_input_65537_79 >> 8)
      003672 F5 83            [12] 1644 	mov	dph,a
      003674 E0               [24] 1645 	movx	a,@dptr
      003675 FD               [12] 1646 	mov	r5,a
      003676 BD 41 00         [24] 1647 	cjne	r5,#0x41,00216$
      003679                       1648 00216$:
      003679 40 14            [24] 1649 	jc	00118$
      00367B ED               [12] 1650 	mov	a,r5
      00367C 24 B9            [12] 1651 	add	a,#0xff - 0x46
      00367E 40 0F            [24] 1652 	jc	00118$
                                   1653 ;	8051_i2c_eeprom.c:245: data += input[i] - 'A' + 10;
      003680 8D 04            [24] 1654 	mov	ar4,r5
      003682 74 C9            [12] 1655 	mov	a,#0xc9
      003684 2C               [12] 1656 	add	a,r4
      003685 FC               [12] 1657 	mov	r4,a
      003686 90 04 0E         [24] 1658 	mov	dptr,#_take_data_data_65538_83
      003689 E0               [24] 1659 	movx	a,@dptr
      00368A FB               [12] 1660 	mov	r3,a
      00368B 2C               [12] 1661 	add	a,r4
      00368C F0               [24] 1662 	movx	@dptr,a
      00368D 80 15            [24] 1663 	sjmp	00130$
      00368F                       1664 00118$:
                                   1665 ;	8051_i2c_eeprom.c:246: else if (input[i] >= 'a' && input[i] <= 'f')
      00368F BD 61 00         [24] 1666 	cjne	r5,#0x61,00219$
      003692                       1667 00219$:
      003692 40 10            [24] 1668 	jc	00130$
      003694 ED               [12] 1669 	mov	a,r5
      003695 24 99            [12] 1670 	add	a,#0xff - 0x66
      003697 40 0B            [24] 1671 	jc	00130$
                                   1672 ;	8051_i2c_eeprom.c:247: data += input[i] - 'a' + 10;
      003699 74 A9            [12] 1673 	mov	a,#0xa9
      00369B 2D               [12] 1674 	add	a,r5
      00369C FD               [12] 1675 	mov	r5,a
      00369D 90 04 0E         [24] 1676 	mov	dptr,#_take_data_data_65538_83
      0036A0 E0               [24] 1677 	movx	a,@dptr
      0036A1 FC               [12] 1678 	mov	r4,a
      0036A2 2D               [12] 1679 	add	a,r5
      0036A3 F0               [24] 1680 	movx	@dptr,a
      0036A4                       1681 00130$:
                                   1682 ;	8051_i2c_eeprom.c:240: for (i = 0; input[i] != '\0'; i++) {
      0036A4 0E               [12] 1683 	inc	r6
      0036A5 BE 00 01         [24] 1684 	cjne	r6,#0x00,00222$
      0036A8 0F               [12] 1685 	inc	r7
      0036A9                       1686 00222$:
      0036A9 02 36 39         [24] 1687 	ljmp	00129$
      0036AC                       1688 00125$:
                                   1689 ;	8051_i2c_eeprom.c:250: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      0036AC 90 04 0E         [24] 1690 	mov	dptr,#_take_data_data_65538_83
      0036AF E0               [24] 1691 	movx	a,@dptr
      0036B0 FF               [12] 1692 	mov	r7,a
      0036B1 FD               [12] 1693 	mov	r5,a
      0036B2 7E 00            [12] 1694 	mov	r6,#0x00
      0036B4 C0 07            [24] 1695 	push	ar7
      0036B6 C0 05            [24] 1696 	push	ar5
      0036B8 C0 06            [24] 1697 	push	ar6
      0036BA 74 41            [12] 1698 	mov	a,#___str_31
      0036BC C0 E0            [24] 1699 	push	acc
      0036BE 74 51            [12] 1700 	mov	a,#(___str_31 >> 8)
      0036C0 C0 E0            [24] 1701 	push	acc
      0036C2 74 80            [12] 1702 	mov	a,#0x80
      0036C4 C0 E0            [24] 1703 	push	acc
      0036C6 12 3D 30         [24] 1704 	lcall	_printf
      0036C9 E5 81            [12] 1705 	mov	a,sp
      0036CB 24 FB            [12] 1706 	add	a,#0xfb
      0036CD F5 81            [12] 1707 	mov	sp,a
      0036CF D0 07            [24] 1708 	pop	ar7
                                   1709 ;	8051_i2c_eeprom.c:251: if(data > 0xfe)
      0036D1 EF               [12] 1710 	mov	a,r7
      0036D2 24 01            [12] 1711 	add	a,#0xff - 0xfe
      0036D4 50 20            [24] 1712 	jnc	00127$
                                   1713 ;	8051_i2c_eeprom.c:253: printf("Data out of Range\n\r");
      0036D6 74 5E            [12] 1714 	mov	a,#___str_32
      0036D8 C0 E0            [24] 1715 	push	acc
      0036DA 74 51            [12] 1716 	mov	a,#(___str_32 >> 8)
      0036DC C0 E0            [24] 1717 	push	acc
      0036DE 74 80            [12] 1718 	mov	a,#0x80
      0036E0 C0 E0            [24] 1719 	push	acc
      0036E2 12 3D 30         [24] 1720 	lcall	_printf
      0036E5 15 81            [12] 1721 	dec	sp
      0036E7 15 81            [12] 1722 	dec	sp
      0036E9 15 81            [12] 1723 	dec	sp
                                   1724 ;	8051_i2c_eeprom.c:254: data_range_flag = 0;
      0036EB 90 04 59         [24] 1725 	mov	dptr,#_data_range_flag
      0036EE E4               [12] 1726 	clr	a
      0036EF F0               [24] 1727 	movx	@dptr,a
      0036F0 A3               [24] 1728 	inc	dptr
      0036F1 F0               [24] 1729 	movx	@dptr,a
                                   1730 ;	8051_i2c_eeprom.c:255: return 0;
      0036F2 75 82 00         [24] 1731 	mov	dpl,#0x00
      0036F5 22               [24] 1732 	ret
      0036F6                       1733 00127$:
                                   1734 ;	8051_i2c_eeprom.c:257: return data;
      0036F6 8F 82            [24] 1735 	mov	dpl,r7
                                   1736 ;	8051_i2c_eeprom.c:259: }
      0036F8 22               [24] 1737 	ret
                                   1738 ;------------------------------------------------------------
                                   1739 ;Allocation info for local variables in function 'eeprom_write'
                                   1740 ;------------------------------------------------------------
                                   1741 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                   1742 ;address                   Allocated with name '_eeprom_write_address_65536_87'
                                   1743 ;i                         Allocated with name '_eeprom_write_i_131072_92'
                                   1744 ;------------------------------------------------------------
                                   1745 ;	8051_i2c_eeprom.c:261: int eeprom_write(unsigned int address, unsigned char data) 
                                   1746 ;	-----------------------------------------
                                   1747 ;	 function eeprom_write
                                   1748 ;	-----------------------------------------
      0036F9                       1749 _eeprom_write:
      0036F9 AF 83            [24] 1750 	mov	r7,dph
      0036FB E5 82            [12] 1751 	mov	a,dpl
      0036FD 90 04 10         [24] 1752 	mov	dptr,#_eeprom_write_address_65536_87
      003700 F0               [24] 1753 	movx	@dptr,a
      003701 EF               [12] 1754 	mov	a,r7
      003702 A3               [24] 1755 	inc	dptr
      003703 F0               [24] 1756 	movx	@dptr,a
                                   1757 ;	8051_i2c_eeprom.c:267: i2c_start();
      003704 12 3A 00         [24] 1758 	lcall	_i2c_start
                                   1759 ;	8051_i2c_eeprom.c:270: if(!i2c_write(EEPROM_ID | block | WRITE)) {
      003707 90 04 5B         [24] 1760 	mov	dptr,#_block
      00370A E0               [24] 1761 	movx	a,@dptr
      00370B FE               [12] 1762 	mov	r6,a
      00370C A3               [24] 1763 	inc	dptr
      00370D E0               [24] 1764 	movx	a,@dptr
      00370E 43 06 A0         [24] 1765 	orl	ar6,#0xa0
      003711 8E 82            [24] 1766 	mov	dpl,r6
      003713 12 39 13         [24] 1767 	lcall	_i2c_write
      003716 E5 82            [12] 1768 	mov	a,dpl
      003718 85 83 F0         [24] 1769 	mov	b,dph
      00371B 45 F0            [12] 1770 	orl	a,b
      00371D 70 1C            [24] 1771 	jnz	00102$
                                   1772 ;	8051_i2c_eeprom.c:271: printf("Error: No ACK for device address (write)\n\r");
      00371F 74 72            [12] 1773 	mov	a,#___str_33
      003721 C0 E0            [24] 1774 	push	acc
      003723 74 51            [12] 1775 	mov	a,#(___str_33 >> 8)
      003725 C0 E0            [24] 1776 	push	acc
      003727 74 80            [12] 1777 	mov	a,#0x80
      003729 C0 E0            [24] 1778 	push	acc
      00372B 12 3D 30         [24] 1779 	lcall	_printf
      00372E 15 81            [12] 1780 	dec	sp
      003730 15 81            [12] 1781 	dec	sp
      003732 15 81            [12] 1782 	dec	sp
                                   1783 ;	8051_i2c_eeprom.c:272: i2c_stop();
      003734 12 3B DA         [24] 1784 	lcall	_i2c_stop
                                   1785 ;	8051_i2c_eeprom.c:273: return 0;
      003737 90 00 00         [24] 1786 	mov	dptr,#0x0000
      00373A 22               [24] 1787 	ret
      00373B                       1788 00102$:
                                   1789 ;	8051_i2c_eeprom.c:277: if(!i2c_write((unsigned char)address)) {
      00373B 90 04 10         [24] 1790 	mov	dptr,#_eeprom_write_address_65536_87
      00373E E0               [24] 1791 	movx	a,@dptr
      00373F FE               [12] 1792 	mov	r6,a
      003740 A3               [24] 1793 	inc	dptr
      003741 E0               [24] 1794 	movx	a,@dptr
      003742 FF               [12] 1795 	mov	r7,a
      003743 8E 05            [24] 1796 	mov	ar5,r6
      003745 8D 82            [24] 1797 	mov	dpl,r5
      003747 C0 07            [24] 1798 	push	ar7
      003749 C0 06            [24] 1799 	push	ar6
      00374B 12 39 13         [24] 1800 	lcall	_i2c_write
      00374E E5 82            [12] 1801 	mov	a,dpl
      003750 85 83 F0         [24] 1802 	mov	b,dph
      003753 D0 06            [24] 1803 	pop	ar6
      003755 D0 07            [24] 1804 	pop	ar7
      003757 45 F0            [12] 1805 	orl	a,b
      003759 70 1C            [24] 1806 	jnz	00104$
                                   1807 ;	8051_i2c_eeprom.c:278: printf("Error: No ACK for memory address\n\r");
      00375B 74 9D            [12] 1808 	mov	a,#___str_34
      00375D C0 E0            [24] 1809 	push	acc
      00375F 74 51            [12] 1810 	mov	a,#(___str_34 >> 8)
      003761 C0 E0            [24] 1811 	push	acc
      003763 74 80            [12] 1812 	mov	a,#0x80
      003765 C0 E0            [24] 1813 	push	acc
      003767 12 3D 30         [24] 1814 	lcall	_printf
      00376A 15 81            [12] 1815 	dec	sp
      00376C 15 81            [12] 1816 	dec	sp
      00376E 15 81            [12] 1817 	dec	sp
                                   1818 ;	8051_i2c_eeprom.c:279: i2c_stop();
      003770 12 3B DA         [24] 1819 	lcall	_i2c_stop
                                   1820 ;	8051_i2c_eeprom.c:280: return 0;
      003773 90 00 00         [24] 1821 	mov	dptr,#0x0000
      003776 22               [24] 1822 	ret
      003777                       1823 00104$:
                                   1824 ;	8051_i2c_eeprom.c:284: if(!i2c_write(data)) {
      003777 90 04 0F         [24] 1825 	mov	dptr,#_eeprom_write_PARM_2
      00377A E0               [24] 1826 	movx	a,@dptr
      00377B FD               [12] 1827 	mov	r5,a
      00377C F5 82            [12] 1828 	mov	dpl,a
      00377E C0 07            [24] 1829 	push	ar7
      003780 C0 06            [24] 1830 	push	ar6
      003782 C0 05            [24] 1831 	push	ar5
      003784 12 39 13         [24] 1832 	lcall	_i2c_write
      003787 E5 82            [12] 1833 	mov	a,dpl
      003789 85 83 F0         [24] 1834 	mov	b,dph
      00378C D0 05            [24] 1835 	pop	ar5
      00378E D0 06            [24] 1836 	pop	ar6
      003790 D0 07            [24] 1837 	pop	ar7
      003792 45 F0            [12] 1838 	orl	a,b
      003794 70 1C            [24] 1839 	jnz	00106$
                                   1840 ;	8051_i2c_eeprom.c:285: printf("Error: No ACK for data\n\r");
      003796 74 C0            [12] 1841 	mov	a,#___str_35
      003798 C0 E0            [24] 1842 	push	acc
      00379A 74 51            [12] 1843 	mov	a,#(___str_35 >> 8)
      00379C C0 E0            [24] 1844 	push	acc
      00379E 74 80            [12] 1845 	mov	a,#0x80
      0037A0 C0 E0            [24] 1846 	push	acc
      0037A2 12 3D 30         [24] 1847 	lcall	_printf
      0037A5 15 81            [12] 1848 	dec	sp
      0037A7 15 81            [12] 1849 	dec	sp
      0037A9 15 81            [12] 1850 	dec	sp
                                   1851 ;	8051_i2c_eeprom.c:286: i2c_stop();
      0037AB 12 3B DA         [24] 1852 	lcall	_i2c_stop
                                   1853 ;	8051_i2c_eeprom.c:287: return 0;
      0037AE 90 00 00         [24] 1854 	mov	dptr,#0x0000
      0037B1 22               [24] 1855 	ret
      0037B2                       1856 00106$:
                                   1857 ;	8051_i2c_eeprom.c:290: i2c_stop();
      0037B2 C0 07            [24] 1858 	push	ar7
      0037B4 C0 06            [24] 1859 	push	ar6
      0037B6 C0 05            [24] 1860 	push	ar5
      0037B8 12 3B DA         [24] 1861 	lcall	_i2c_stop
      0037BB D0 05            [24] 1862 	pop	ar5
      0037BD D0 06            [24] 1863 	pop	ar6
      0037BF D0 07            [24] 1864 	pop	ar7
                                   1865 ;	8051_i2c_eeprom.c:292: for(int i = 0; i<10; i++)
      0037C1 7B 00            [12] 1866 	mov	r3,#0x00
      0037C3 7C 00            [12] 1867 	mov	r4,#0x00
      0037C5                       1868 00109$:
      0037C5 C3               [12] 1869 	clr	c
      0037C6 EB               [12] 1870 	mov	a,r3
      0037C7 94 0A            [12] 1871 	subb	a,#0x0a
      0037C9 EC               [12] 1872 	mov	a,r4
      0037CA 64 80            [12] 1873 	xrl	a,#0x80
      0037CC 94 80            [12] 1874 	subb	a,#0x80
      0037CE 50 1E            [24] 1875 	jnc	00107$
                                   1876 ;	8051_i2c_eeprom.c:294: i2c_delay();
      0037D0 C0 07            [24] 1877 	push	ar7
      0037D2 C0 06            [24] 1878 	push	ar6
      0037D4 C0 05            [24] 1879 	push	ar5
      0037D6 C0 04            [24] 1880 	push	ar4
      0037D8 C0 03            [24] 1881 	push	ar3
      0037DA 12 3C 13         [24] 1882 	lcall	_i2c_delay
      0037DD D0 03            [24] 1883 	pop	ar3
      0037DF D0 04            [24] 1884 	pop	ar4
      0037E1 D0 05            [24] 1885 	pop	ar5
      0037E3 D0 06            [24] 1886 	pop	ar6
      0037E5 D0 07            [24] 1887 	pop	ar7
                                   1888 ;	8051_i2c_eeprom.c:292: for(int i = 0; i<10; i++)
      0037E7 0B               [12] 1889 	inc	r3
      0037E8 BB 00 DA         [24] 1890 	cjne	r3,#0x00,00109$
      0037EB 0C               [12] 1891 	inc	r4
      0037EC 80 D7            [24] 1892 	sjmp	00109$
      0037EE                       1893 00107$:
                                   1894 ;	8051_i2c_eeprom.c:297: printf("| Writing at Address 0x%03X Data 0x%02X          |\n\r", address, data);
      0037EE 7C 00            [12] 1895 	mov	r4,#0x00
      0037F0 C0 05            [24] 1896 	push	ar5
      0037F2 C0 04            [24] 1897 	push	ar4
      0037F4 C0 06            [24] 1898 	push	ar6
      0037F6 C0 07            [24] 1899 	push	ar7
      0037F8 74 D9            [12] 1900 	mov	a,#___str_36
      0037FA C0 E0            [24] 1901 	push	acc
      0037FC 74 51            [12] 1902 	mov	a,#(___str_36 >> 8)
      0037FE C0 E0            [24] 1903 	push	acc
      003800 74 80            [12] 1904 	mov	a,#0x80
      003802 C0 E0            [24] 1905 	push	acc
      003804 12 3D 30         [24] 1906 	lcall	_printf
      003807 E5 81            [12] 1907 	mov	a,sp
      003809 24 F9            [12] 1908 	add	a,#0xf9
      00380B F5 81            [12] 1909 	mov	sp,a
                                   1910 ;	8051_i2c_eeprom.c:298: printf("│ Write successful!                             │\n\r");
      00380D 74 0E            [12] 1911 	mov	a,#___str_37
      00380F C0 E0            [24] 1912 	push	acc
      003811 74 52            [12] 1913 	mov	a,#(___str_37 >> 8)
      003813 C0 E0            [24] 1914 	push	acc
      003815 74 80            [12] 1915 	mov	a,#0x80
      003817 C0 E0            [24] 1916 	push	acc
      003819 12 3D 30         [24] 1917 	lcall	_printf
      00381C 15 81            [12] 1918 	dec	sp
      00381E 15 81            [12] 1919 	dec	sp
      003820 15 81            [12] 1920 	dec	sp
                                   1921 ;	8051_i2c_eeprom.c:299: printf("└───────────────────────────────────────────────┘\n\r");
      003822 74 46            [12] 1922 	mov	a,#___str_38
      003824 C0 E0            [24] 1923 	push	acc
      003826 74 52            [12] 1924 	mov	a,#(___str_38 >> 8)
      003828 C0 E0            [24] 1925 	push	acc
      00382A 74 80            [12] 1926 	mov	a,#0x80
      00382C C0 E0            [24] 1927 	push	acc
      00382E 12 3D 30         [24] 1928 	lcall	_printf
      003831 15 81            [12] 1929 	dec	sp
      003833 15 81            [12] 1930 	dec	sp
      003835 15 81            [12] 1931 	dec	sp
                                   1932 ;	8051_i2c_eeprom.c:300: return 1;  // Success
      003837 90 00 01         [24] 1933 	mov	dptr,#0x0001
                                   1934 ;	8051_i2c_eeprom.c:310: }
      00383A 22               [24] 1935 	ret
                                   1936 ;------------------------------------------------------------
                                   1937 ;Allocation info for local variables in function 'eeprom_read'
                                   1938 ;------------------------------------------------------------
                                   1939 ;address                   Allocated with name '_eeprom_read_address_65536_94'
                                   1940 ;result                    Allocated with name '_eeprom_read_result_65536_95'
                                   1941 ;------------------------------------------------------------
                                   1942 ;	8051_i2c_eeprom.c:311: int eeprom_read(unsigned int address)
                                   1943 ;	-----------------------------------------
                                   1944 ;	 function eeprom_read
                                   1945 ;	-----------------------------------------
      00383B                       1946 _eeprom_read:
      00383B AF 83            [24] 1947 	mov	r7,dph
      00383D E5 82            [12] 1948 	mov	a,dpl
      00383F 90 04 12         [24] 1949 	mov	dptr,#_eeprom_read_address_65536_94
      003842 F0               [24] 1950 	movx	@dptr,a
      003843 EF               [12] 1951 	mov	a,r7
      003844 A3               [24] 1952 	inc	dptr
      003845 F0               [24] 1953 	movx	@dptr,a
                                   1954 ;	8051_i2c_eeprom.c:317: i2c_start();
      003846 12 3A 00         [24] 1955 	lcall	_i2c_start
                                   1956 ;	8051_i2c_eeprom.c:320: if(!i2c_write(EEPROM_ID | WRITE)) {
      003849 75 82 A0         [24] 1957 	mov	dpl,#0xa0
      00384C 12 39 13         [24] 1958 	lcall	_i2c_write
      00384F E5 82            [12] 1959 	mov	a,dpl
      003851 85 83 F0         [24] 1960 	mov	b,dph
      003854 45 F0            [12] 1961 	orl	a,b
      003856 70 1C            [24] 1962 	jnz	00102$
                                   1963 ;	8051_i2c_eeprom.c:321: printf("Error: No ACK for device address (write mode)\n\r");
      003858 74 DC            [12] 1964 	mov	a,#___str_39
      00385A C0 E0            [24] 1965 	push	acc
      00385C 74 52            [12] 1966 	mov	a,#(___str_39 >> 8)
      00385E C0 E0            [24] 1967 	push	acc
      003860 74 80            [12] 1968 	mov	a,#0x80
      003862 C0 E0            [24] 1969 	push	acc
      003864 12 3D 30         [24] 1970 	lcall	_printf
      003867 15 81            [12] 1971 	dec	sp
      003869 15 81            [12] 1972 	dec	sp
      00386B 15 81            [12] 1973 	dec	sp
                                   1974 ;	8051_i2c_eeprom.c:322: i2c_stop();
      00386D 12 3B DA         [24] 1975 	lcall	_i2c_stop
                                   1976 ;	8051_i2c_eeprom.c:323: return -1;
      003870 90 FF FF         [24] 1977 	mov	dptr,#0xffff
      003873 22               [24] 1978 	ret
      003874                       1979 00102$:
                                   1980 ;	8051_i2c_eeprom.c:327: if(!i2c_write((unsigned char)address)) {
      003874 90 04 12         [24] 1981 	mov	dptr,#_eeprom_read_address_65536_94
      003877 E0               [24] 1982 	movx	a,@dptr
      003878 FE               [12] 1983 	mov	r6,a
      003879 A3               [24] 1984 	inc	dptr
      00387A E0               [24] 1985 	movx	a,@dptr
      00387B 8E 82            [24] 1986 	mov	dpl,r6
      00387D 12 39 13         [24] 1987 	lcall	_i2c_write
      003880 E5 82            [12] 1988 	mov	a,dpl
      003882 85 83 F0         [24] 1989 	mov	b,dph
      003885 45 F0            [12] 1990 	orl	a,b
      003887 70 1C            [24] 1991 	jnz	00104$
                                   1992 ;	8051_i2c_eeprom.c:328: printf("Error: No ACK for memory address\n\r");
      003889 74 9D            [12] 1993 	mov	a,#___str_34
      00388B C0 E0            [24] 1994 	push	acc
      00388D 74 51            [12] 1995 	mov	a,#(___str_34 >> 8)
      00388F C0 E0            [24] 1996 	push	acc
      003891 74 80            [12] 1997 	mov	a,#0x80
      003893 C0 E0            [24] 1998 	push	acc
      003895 12 3D 30         [24] 1999 	lcall	_printf
      003898 15 81            [12] 2000 	dec	sp
      00389A 15 81            [12] 2001 	dec	sp
      00389C 15 81            [12] 2002 	dec	sp
                                   2003 ;	8051_i2c_eeprom.c:329: i2c_stop();
      00389E 12 3B DA         [24] 2004 	lcall	_i2c_stop
                                   2005 ;	8051_i2c_eeprom.c:330: return -1;
      0038A1 90 FF FF         [24] 2006 	mov	dptr,#0xffff
      0038A4 22               [24] 2007 	ret
      0038A5                       2008 00104$:
                                   2009 ;	8051_i2c_eeprom.c:334: i2c_start();
      0038A5 12 3A 00         [24] 2010 	lcall	_i2c_start
                                   2011 ;	8051_i2c_eeprom.c:337: if(!i2c_write(EEPROM_ID | READ)) {
      0038A8 75 82 A1         [24] 2012 	mov	dpl,#0xa1
      0038AB 12 39 13         [24] 2013 	lcall	_i2c_write
      0038AE E5 82            [12] 2014 	mov	a,dpl
      0038B0 85 83 F0         [24] 2015 	mov	b,dph
      0038B3 45 F0            [12] 2016 	orl	a,b
      0038B5 70 1C            [24] 2017 	jnz	00106$
                                   2018 ;	8051_i2c_eeprom.c:338: printf("Error: No ACK for device address (read mode)\n\r");
      0038B7 74 0C            [12] 2019 	mov	a,#___str_40
      0038B9 C0 E0            [24] 2020 	push	acc
      0038BB 74 53            [12] 2021 	mov	a,#(___str_40 >> 8)
      0038BD C0 E0            [24] 2022 	push	acc
      0038BF 74 80            [12] 2023 	mov	a,#0x80
      0038C1 C0 E0            [24] 2024 	push	acc
      0038C3 12 3D 30         [24] 2025 	lcall	_printf
      0038C6 15 81            [12] 2026 	dec	sp
      0038C8 15 81            [12] 2027 	dec	sp
      0038CA 15 81            [12] 2028 	dec	sp
                                   2029 ;	8051_i2c_eeprom.c:339: i2c_stop();
      0038CC 12 3B DA         [24] 2030 	lcall	_i2c_stop
                                   2031 ;	8051_i2c_eeprom.c:340: return -1;
      0038CF 90 FF FF         [24] 2032 	mov	dptr,#0xffff
      0038D2 22               [24] 2033 	ret
      0038D3                       2034 00106$:
                                   2035 ;	8051_i2c_eeprom.c:344: result = i2c_read(0);  // 0 means send NACK
      0038D3 90 00 00         [24] 2036 	mov	dptr,#0x0000
      0038D6 12 39 7B         [24] 2037 	lcall	_i2c_read
      0038D9 AE 82            [24] 2038 	mov	r6,dpl
                                   2039 ;	8051_i2c_eeprom.c:347: printf("│ Read successful!                 │\n\r");
      0038DB C0 06            [24] 2040 	push	ar6
      0038DD 74 3B            [12] 2041 	mov	a,#___str_41
      0038DF C0 E0            [24] 2042 	push	acc
      0038E1 74 53            [12] 2043 	mov	a,#(___str_41 >> 8)
      0038E3 C0 E0            [24] 2044 	push	acc
      0038E5 74 80            [12] 2045 	mov	a,#0x80
      0038E7 C0 E0            [24] 2046 	push	acc
      0038E9 12 3D 30         [24] 2047 	lcall	_printf
      0038EC 15 81            [12] 2048 	dec	sp
      0038EE 15 81            [12] 2049 	dec	sp
      0038F0 15 81            [12] 2050 	dec	sp
                                   2051 ;	8051_i2c_eeprom.c:348: printf("└───────────────────────────────────────────────┘\n\r");
      0038F2 74 46            [12] 2052 	mov	a,#___str_38
      0038F4 C0 E0            [24] 2053 	push	acc
      0038F6 74 52            [12] 2054 	mov	a,#(___str_38 >> 8)
      0038F8 C0 E0            [24] 2055 	push	acc
      0038FA 74 80            [12] 2056 	mov	a,#0x80
      0038FC C0 E0            [24] 2057 	push	acc
      0038FE 12 3D 30         [24] 2058 	lcall	_printf
      003901 15 81            [12] 2059 	dec	sp
      003903 15 81            [12] 2060 	dec	sp
      003905 15 81            [12] 2061 	dec	sp
                                   2062 ;	8051_i2c_eeprom.c:349: i2c_stop();
      003907 12 3B DA         [24] 2063 	lcall	_i2c_stop
      00390A D0 06            [24] 2064 	pop	ar6
                                   2065 ;	8051_i2c_eeprom.c:350: return result;
      00390C 7F 00            [12] 2066 	mov	r7,#0x00
      00390E 8E 82            [24] 2067 	mov	dpl,r6
      003910 8F 83            [24] 2068 	mov	dph,r7
                                   2069 ;	8051_i2c_eeprom.c:351: }
      003912 22               [24] 2070 	ret
                                   2071 ;------------------------------------------------------------
                                   2072 ;Allocation info for local variables in function 'i2c_write'
                                   2073 ;------------------------------------------------------------
                                   2074 ;data                      Allocated with name '_i2c_write_data_65536_99'
                                   2075 ;i                         Allocated with name '_i2c_write_i_65536_100'
                                   2076 ;------------------------------------------------------------
                                   2077 ;	8051_i2c_eeprom.c:354: int i2c_write(unsigned char data)
                                   2078 ;	-----------------------------------------
                                   2079 ;	 function i2c_write
                                   2080 ;	-----------------------------------------
      003913                       2081 _i2c_write:
      003913 E5 82            [12] 2082 	mov	a,dpl
      003915 90 04 14         [24] 2083 	mov	dptr,#_i2c_write_data_65536_99
      003918 F0               [24] 2084 	movx	@dptr,a
                                   2085 ;	8051_i2c_eeprom.c:358: for(i=0;i<=7;i++)
      003919 7E 00            [12] 2086 	mov	r6,#0x00
      00391B 7F 00            [12] 2087 	mov	r7,#0x00
      00391D                       2088 00104$:
                                   2089 ;	8051_i2c_eeprom.c:360: SDA = (data & 0x80) ? 1 : 0;    //msb first
      00391D 90 04 14         [24] 2090 	mov	dptr,#_i2c_write_data_65536_99
      003920 E0               [24] 2091 	movx	a,@dptr
      003921 FD               [12] 2092 	mov	r5,a
      003922 23               [12] 2093 	rl	a
      003923 54 01            [12] 2094 	anl	a,#0x01
      003925 24 FF            [12] 2095 	add	a,#0xff
      003927 92 94            [24] 2096 	mov	_P1_4,c
                                   2097 ;	8051_i2c_eeprom.c:361: i2c_delay();        // Setup time for data
      003929 C0 07            [24] 2098 	push	ar7
      00392B C0 06            [24] 2099 	push	ar6
      00392D C0 05            [24] 2100 	push	ar5
      00392F 12 3C 13         [24] 2101 	lcall	_i2c_delay
                                   2102 ;	8051_i2c_eeprom.c:362: SCL=1;
                                   2103 ;	assignBit
      003932 D2 93            [12] 2104 	setb	_P1_3
                                   2105 ;	8051_i2c_eeprom.c:363: i2c_delay();        // Hold time for clock
      003934 12 3C 13         [24] 2106 	lcall	_i2c_delay
      003937 D0 05            [24] 2107 	pop	ar5
      003939 D0 06            [24] 2108 	pop	ar6
      00393B D0 07            [24] 2109 	pop	ar7
                                   2110 ;	8051_i2c_eeprom.c:364: SCL=0;
                                   2111 ;	assignBit
      00393D C2 93            [12] 2112 	clr	_P1_3
                                   2113 ;	8051_i2c_eeprom.c:365: data = data << 1;
      00393F ED               [12] 2114 	mov	a,r5
      003940 2D               [12] 2115 	add	a,r5
      003941 90 04 14         [24] 2116 	mov	dptr,#_i2c_write_data_65536_99
      003944 F0               [24] 2117 	movx	@dptr,a
                                   2118 ;	8051_i2c_eeprom.c:358: for(i=0;i<=7;i++)
      003945 0E               [12] 2119 	inc	r6
      003946 BE 00 01         [24] 2120 	cjne	r6,#0x00,00121$
      003949 0F               [12] 2121 	inc	r7
      00394A                       2122 00121$:
      00394A C3               [12] 2123 	clr	c
      00394B 74 07            [12] 2124 	mov	a,#0x07
      00394D 9E               [12] 2125 	subb	a,r6
      00394E E4               [12] 2126 	clr	a
      00394F 9F               [12] 2127 	subb	a,r7
      003950 50 CB            [24] 2128 	jnc	00104$
                                   2129 ;	8051_i2c_eeprom.c:369: SDA = 1;            // Release SDA for slave
                                   2130 ;	assignBit
      003952 D2 94            [12] 2131 	setb	_P1_4
                                   2132 ;	8051_i2c_eeprom.c:370: SCL = 1;            // 9th clock pulse for ACK
                                   2133 ;	assignBit
      003954 D2 93            [12] 2134 	setb	_P1_3
                                   2135 ;	8051_i2c_eeprom.c:371: i2c_delay();
      003956 12 3C 13         [24] 2136 	lcall	_i2c_delay
                                   2137 ;	8051_i2c_eeprom.c:372: if(SDA == 1)        // If SDA is still high, no ACK received
      003959 30 94 19         [24] 2138 	jnb	_P1_4,00103$
                                   2139 ;	8051_i2c_eeprom.c:375: printf("ACK DID NOT ARRIVE\n\r");
      00395C 74 66            [12] 2140 	mov	a,#___str_42
      00395E C0 E0            [24] 2141 	push	acc
      003960 74 53            [12] 2142 	mov	a,#(___str_42 >> 8)
      003962 C0 E0            [24] 2143 	push	acc
      003964 74 80            [12] 2144 	mov	a,#0x80
      003966 C0 E0            [24] 2145 	push	acc
      003968 12 3D 30         [24] 2146 	lcall	_printf
      00396B 15 81            [12] 2147 	dec	sp
      00396D 15 81            [12] 2148 	dec	sp
      00396F 15 81            [12] 2149 	dec	sp
                                   2150 ;	8051_i2c_eeprom.c:376: return 0;       // Error
      003971 90 00 00         [24] 2151 	mov	dptr,#0x0000
      003974 22               [24] 2152 	ret
      003975                       2153 00103$:
                                   2154 ;	8051_i2c_eeprom.c:378: SCL = 0;
                                   2155 ;	assignBit
      003975 C2 93            [12] 2156 	clr	_P1_3
                                   2157 ;	8051_i2c_eeprom.c:380: return 1;           // Success
      003977 90 00 01         [24] 2158 	mov	dptr,#0x0001
                                   2159 ;	8051_i2c_eeprom.c:382: }
      00397A 22               [24] 2160 	ret
                                   2161 ;------------------------------------------------------------
                                   2162 ;Allocation info for local variables in function 'i2c_read'
                                   2163 ;------------------------------------------------------------
                                   2164 ;ACK                       Allocated with name '_i2c_read_ACK_65536_104'
                                   2165 ;buff                      Allocated with name '_i2c_read_buff_65536_105'
                                   2166 ;i                         Allocated with name '_i2c_read_i_131072_106'
                                   2167 ;------------------------------------------------------------
                                   2168 ;	8051_i2c_eeprom.c:383: int i2c_read(int ACK)
                                   2169 ;	-----------------------------------------
                                   2170 ;	 function i2c_read
                                   2171 ;	-----------------------------------------
      00397B                       2172 _i2c_read:
      00397B AF 83            [24] 2173 	mov	r7,dph
      00397D E5 82            [12] 2174 	mov	a,dpl
      00397F 90 04 15         [24] 2175 	mov	dptr,#_i2c_read_ACK_65536_104
      003982 F0               [24] 2176 	movx	@dptr,a
      003983 EF               [12] 2177 	mov	a,r7
      003984 A3               [24] 2178 	inc	dptr
      003985 F0               [24] 2179 	movx	@dptr,a
                                   2180 ;	8051_i2c_eeprom.c:385: unsigned char buff=0;
      003986 90 04 17         [24] 2181 	mov	dptr,#_i2c_read_buff_65536_105
      003989 E4               [12] 2182 	clr	a
      00398A F0               [24] 2183 	movx	@dptr,a
                                   2184 ;	8051_i2c_eeprom.c:386: SCL = 0;
                                   2185 ;	assignBit
      00398B C2 93            [12] 2186 	clr	_P1_3
                                   2187 ;	8051_i2c_eeprom.c:387: for(int i=0;i<8;i++)
      00398D 7E 00            [12] 2188 	mov	r6,#0x00
      00398F 7F 00            [12] 2189 	mov	r7,#0x00
      003991                       2190 00103$:
      003991 C3               [12] 2191 	clr	c
      003992 EE               [12] 2192 	mov	a,r6
      003993 94 08            [12] 2193 	subb	a,#0x08
      003995 EF               [12] 2194 	mov	a,r7
      003996 64 80            [12] 2195 	xrl	a,#0x80
      003998 94 80            [12] 2196 	subb	a,#0x80
      00399A 50 40            [24] 2197 	jnc	00101$
                                   2198 ;	8051_i2c_eeprom.c:389: SCL = 1;
                                   2199 ;	assignBit
      00399C D2 93            [12] 2200 	setb	_P1_3
                                   2201 ;	8051_i2c_eeprom.c:390: i2c_delay();
      00399E C0 07            [24] 2202 	push	ar7
      0039A0 C0 06            [24] 2203 	push	ar6
      0039A2 12 3C 13         [24] 2204 	lcall	_i2c_delay
      0039A5 D0 06            [24] 2205 	pop	ar6
      0039A7 D0 07            [24] 2206 	pop	ar7
                                   2207 ;	8051_i2c_eeprom.c:391: buff |= (SDA << (7 - i));
      0039A9 A2 94            [12] 2208 	mov	c,_P1_4
      0039AB E4               [12] 2209 	clr	a
      0039AC 33               [12] 2210 	rlc	a
      0039AD FD               [12] 2211 	mov	r5,a
      0039AE 8E 04            [24] 2212 	mov	ar4,r6
      0039B0 74 07            [12] 2213 	mov	a,#0x07
      0039B2 C3               [12] 2214 	clr	c
      0039B3 9C               [12] 2215 	subb	a,r4
      0039B4 FC               [12] 2216 	mov	r4,a
      0039B5 8C F0            [24] 2217 	mov	b,r4
      0039B7 05 F0            [12] 2218 	inc	b
      0039B9 ED               [12] 2219 	mov	a,r5
      0039BA 80 02            [24] 2220 	sjmp	00119$
      0039BC                       2221 00117$:
      0039BC 25 E0            [12] 2222 	add	a,acc
      0039BE                       2223 00119$:
      0039BE D5 F0 FB         [24] 2224 	djnz	b,00117$
      0039C1 FC               [12] 2225 	mov	r4,a
      0039C2 90 04 17         [24] 2226 	mov	dptr,#_i2c_read_buff_65536_105
      0039C5 E0               [24] 2227 	movx	a,@dptr
      0039C6 4C               [12] 2228 	orl	a,r4
      0039C7 F0               [24] 2229 	movx	@dptr,a
                                   2230 ;	8051_i2c_eeprom.c:392: i2c_delay();
      0039C8 C0 07            [24] 2231 	push	ar7
      0039CA C0 06            [24] 2232 	push	ar6
      0039CC 12 3C 13         [24] 2233 	lcall	_i2c_delay
      0039CF D0 06            [24] 2234 	pop	ar6
      0039D1 D0 07            [24] 2235 	pop	ar7
                                   2236 ;	8051_i2c_eeprom.c:393: SCL=0;
                                   2237 ;	assignBit
      0039D3 C2 93            [12] 2238 	clr	_P1_3
                                   2239 ;	8051_i2c_eeprom.c:387: for(int i=0;i<8;i++)
      0039D5 0E               [12] 2240 	inc	r6
      0039D6 BE 00 B8         [24] 2241 	cjne	r6,#0x00,00103$
      0039D9 0F               [12] 2242 	inc	r7
      0039DA 80 B5            [24] 2243 	sjmp	00103$
      0039DC                       2244 00101$:
                                   2245 ;	8051_i2c_eeprom.c:397: SDA = !ACK;         // ACK = 0, NACK = 1
      0039DC 90 04 15         [24] 2246 	mov	dptr,#_i2c_read_ACK_65536_104
      0039DF E0               [24] 2247 	movx	a,@dptr
      0039E0 FE               [12] 2248 	mov	r6,a
      0039E1 A3               [24] 2249 	inc	dptr
      0039E2 E0               [24] 2250 	movx	a,@dptr
      0039E3 4E               [12] 2251 	orl	a,r6
      0039E4 B4 01 00         [24] 2252 	cjne	a,#0x01,00121$
      0039E7                       2253 00121$:
      0039E7 E4               [12] 2254 	clr	a
      0039E8 33               [12] 2255 	rlc	a
      0039E9 24 FF            [12] 2256 	add	a,#0xff
      0039EB 92 94            [24] 2257 	mov	_P1_4,c
                                   2258 ;	8051_i2c_eeprom.c:398: SCL = 1;
                                   2259 ;	assignBit
      0039ED D2 93            [12] 2260 	setb	_P1_3
                                   2261 ;	8051_i2c_eeprom.c:399: i2c_delay();
      0039EF 12 3C 13         [24] 2262 	lcall	_i2c_delay
                                   2263 ;	8051_i2c_eeprom.c:400: SCL = 0;
                                   2264 ;	assignBit
      0039F2 C2 93            [12] 2265 	clr	_P1_3
                                   2266 ;	8051_i2c_eeprom.c:402: return buff;
      0039F4 90 04 17         [24] 2267 	mov	dptr,#_i2c_read_buff_65536_105
      0039F7 E0               [24] 2268 	movx	a,@dptr
      0039F8 FF               [12] 2269 	mov	r7,a
      0039F9 7E 00            [12] 2270 	mov	r6,#0x00
      0039FB 8F 82            [24] 2271 	mov	dpl,r7
      0039FD 8E 83            [24] 2272 	mov	dph,r6
                                   2273 ;	8051_i2c_eeprom.c:403: }
      0039FF 22               [24] 2274 	ret
                                   2275 ;------------------------------------------------------------
                                   2276 ;Allocation info for local variables in function 'i2c_start'
                                   2277 ;------------------------------------------------------------
                                   2278 ;	8051_i2c_eeprom.c:404: void i2c_start(void)
                                   2279 ;	-----------------------------------------
                                   2280 ;	 function i2c_start
                                   2281 ;	-----------------------------------------
      003A00                       2282 _i2c_start:
                                   2283 ;	8051_i2c_eeprom.c:406: i2c_delay();
      003A00 12 3C 13         [24] 2284 	lcall	_i2c_delay
                                   2285 ;	8051_i2c_eeprom.c:407: SDA = 1;
                                   2286 ;	assignBit
      003A03 D2 94            [12] 2287 	setb	_P1_4
                                   2288 ;	8051_i2c_eeprom.c:408: i2c_delay();
      003A05 12 3C 13         [24] 2289 	lcall	_i2c_delay
                                   2290 ;	8051_i2c_eeprom.c:409: SCL = 1;
                                   2291 ;	assignBit
      003A08 D2 93            [12] 2292 	setb	_P1_3
                                   2293 ;	8051_i2c_eeprom.c:410: i2c_delay();
      003A0A 12 3C 13         [24] 2294 	lcall	_i2c_delay
                                   2295 ;	8051_i2c_eeprom.c:411: SDA = 0;
                                   2296 ;	assignBit
      003A0D C2 94            [12] 2297 	clr	_P1_4
                                   2298 ;	8051_i2c_eeprom.c:412: i2c_delay();
      003A0F 12 3C 13         [24] 2299 	lcall	_i2c_delay
                                   2300 ;	8051_i2c_eeprom.c:413: SCL = 0;
                                   2301 ;	assignBit
      003A12 C2 93            [12] 2302 	clr	_P1_3
                                   2303 ;	8051_i2c_eeprom.c:414: }
      003A14 22               [24] 2304 	ret
                                   2305 ;------------------------------------------------------------
                                   2306 ;Allocation info for local variables in function 'eeprom_hex_dump'
                                   2307 ;------------------------------------------------------------
                                   2308 ;sloc0                     Allocated with name '_eeprom_hex_dump_sloc0_1_0'
                                   2309 ;end_location              Allocated with name '_eeprom_hex_dump_PARM_2'
                                   2310 ;start_location            Allocated with name '_eeprom_hex_dump_start_location_65536_110'
                                   2311 ;ptr                       Allocated with name '_eeprom_hex_dump_ptr_65536_111'
                                   2312 ;offset                    Allocated with name '_eeprom_hex_dump_offset_65536_111'
                                   2313 ;total_bytes               Allocated with name '_eeprom_hex_dump_total_bytes_65536_111'
                                   2314 ;i                         Allocated with name '_eeprom_hex_dump_i_196608_113'
                                   2315 ;i                         Allocated with name '_eeprom_hex_dump_i_196608_115'
                                   2316 ;------------------------------------------------------------
                                   2317 ;	8051_i2c_eeprom.c:415: void eeprom_hex_dump(unsigned int start_location, unsigned int end_location) {
                                   2318 ;	-----------------------------------------
                                   2319 ;	 function eeprom_hex_dump
                                   2320 ;	-----------------------------------------
      003A15                       2321 _eeprom_hex_dump:
      003A15 AF 83            [24] 2322 	mov	r7,dph
      003A17 E5 82            [12] 2323 	mov	a,dpl
      003A19 90 04 1A         [24] 2324 	mov	dptr,#_eeprom_hex_dump_start_location_65536_110
      003A1C F0               [24] 2325 	movx	@dptr,a
      003A1D EF               [12] 2326 	mov	a,r7
      003A1E A3               [24] 2327 	inc	dptr
      003A1F F0               [24] 2328 	movx	@dptr,a
                                   2329 ;	8051_i2c_eeprom.c:416: uint8_t *ptr = (uint8_t *)start_location;
      003A20 90 04 1A         [24] 2330 	mov	dptr,#_eeprom_hex_dump_start_location_65536_110
      003A23 E0               [24] 2331 	movx	a,@dptr
      003A24 FE               [12] 2332 	mov	r6,a
      003A25 A3               [24] 2333 	inc	dptr
      003A26 E0               [24] 2334 	movx	a,@dptr
      003A27 FD               [12] 2335 	mov	r5,a
      003A28 7F 00            [12] 2336 	mov	r7,#0x00
                                   2337 ;	8051_i2c_eeprom.c:417: uint16_t offset = 0;
      003A2A 90 04 1C         [24] 2338 	mov	dptr,#_eeprom_hex_dump_offset_65536_111
      003A2D E4               [12] 2339 	clr	a
      003A2E F0               [24] 2340 	movx	@dptr,a
      003A2F A3               [24] 2341 	inc	dptr
      003A30 F0               [24] 2342 	movx	@dptr,a
                                   2343 ;	8051_i2c_eeprom.c:420: while ((unsigned int)ptr < end_location) {
      003A31 90 04 18         [24] 2344 	mov	dptr,#_eeprom_hex_dump_PARM_2
      003A34 E0               [24] 2345 	movx	a,@dptr
      003A35 FB               [12] 2346 	mov	r3,a
      003A36 A3               [24] 2347 	inc	dptr
      003A37 E0               [24] 2348 	movx	a,@dptr
      003A38 FC               [12] 2349 	mov	r4,a
      003A39                       2350 00103$:
      003A39 8E 00            [24] 2351 	mov	ar0,r6
      003A3B 8D 01            [24] 2352 	mov	ar1,r5
      003A3D 8F 02            [24] 2353 	mov	ar2,r7
      003A3F C3               [12] 2354 	clr	c
      003A40 E8               [12] 2355 	mov	a,r0
      003A41 9B               [12] 2356 	subb	a,r3
      003A42 E9               [12] 2357 	mov	a,r1
      003A43 9C               [12] 2358 	subb	a,r4
      003A44 40 03            [24] 2359 	jc	00146$
      003A46 02 3B 9A         [24] 2360 	ljmp	00105$
      003A49                       2361 00146$:
                                   2362 ;	8051_i2c_eeprom.c:422: printf("\n\r| %04X      |", (unsigned int)ptr);
      003A49 8E 00            [24] 2363 	mov	ar0,r6
      003A4B 8D 01            [24] 2364 	mov	ar1,r5
      003A4D 8F 02            [24] 2365 	mov	ar2,r7
      003A4F C0 07            [24] 2366 	push	ar7
      003A51 C0 06            [24] 2367 	push	ar6
      003A53 C0 05            [24] 2368 	push	ar5
      003A55 C0 04            [24] 2369 	push	ar4
      003A57 C0 03            [24] 2370 	push	ar3
      003A59 C0 00            [24] 2371 	push	ar0
      003A5B C0 01            [24] 2372 	push	ar1
      003A5D 74 7B            [12] 2373 	mov	a,#___str_43
      003A5F C0 E0            [24] 2374 	push	acc
      003A61 74 53            [12] 2375 	mov	a,#(___str_43 >> 8)
      003A63 C0 E0            [24] 2376 	push	acc
      003A65 74 80            [12] 2377 	mov	a,#0x80
      003A67 C0 E0            [24] 2378 	push	acc
      003A69 12 3D 30         [24] 2379 	lcall	_printf
      003A6C E5 81            [12] 2380 	mov	a,sp
      003A6E 24 FB            [12] 2381 	add	a,#0xfb
      003A70 F5 81            [12] 2382 	mov	sp,a
      003A72 D0 03            [24] 2383 	pop	ar3
      003A74 D0 04            [24] 2384 	pop	ar4
      003A76 D0 05            [24] 2385 	pop	ar5
      003A78 D0 06            [24] 2386 	pop	ar6
      003A7A D0 07            [24] 2387 	pop	ar7
                                   2388 ;	8051_i2c_eeprom.c:425: for (int i = 0; i < 16 && ((unsigned int)(ptr + i)) < end_location; i++) {
      003A7C 79 00            [12] 2389 	mov	r1,#0x00
      003A7E 7A 00            [12] 2390 	mov	r2,#0x00
      003A80                       2391 00108$:
      003A80 C3               [12] 2392 	clr	c
      003A81 E9               [12] 2393 	mov	a,r1
      003A82 94 10            [12] 2394 	subb	a,#0x10
      003A84 EA               [12] 2395 	mov	a,r2
      003A85 64 80            [12] 2396 	xrl	a,#0x80
      003A87 94 80            [12] 2397 	subb	a,#0x80
      003A89 50 75            [24] 2398 	jnc	00101$
      003A8B E9               [12] 2399 	mov	a,r1
      003A8C 2E               [12] 2400 	add	a,r6
      003A8D F5 08            [12] 2401 	mov	_eeprom_hex_dump_sloc0_1_0,a
      003A8F EA               [12] 2402 	mov	a,r2
      003A90 3D               [12] 2403 	addc	a,r5
      003A91 F5 09            [12] 2404 	mov	(_eeprom_hex_dump_sloc0_1_0 + 1),a
      003A93 8F 0A            [24] 2405 	mov	(_eeprom_hex_dump_sloc0_1_0 + 2),r7
      003A95 C0 06            [24] 2406 	push	ar6
      003A97 C0 05            [24] 2407 	push	ar5
      003A99 C0 07            [24] 2408 	push	ar7
      003A9B A8 08            [24] 2409 	mov	r0,_eeprom_hex_dump_sloc0_1_0
      003A9D AF 09            [24] 2410 	mov	r7,(_eeprom_hex_dump_sloc0_1_0 + 1)
      003A9F C3               [12] 2411 	clr	c
      003AA0 E8               [12] 2412 	mov	a,r0
      003AA1 9B               [12] 2413 	subb	a,r3
      003AA2 EF               [12] 2414 	mov	a,r7
      003AA3 9C               [12] 2415 	subb	a,r4
      003AA4 D0 07            [24] 2416 	pop	ar7
      003AA6 D0 05            [24] 2417 	pop	ar5
      003AA8 D0 06            [24] 2418 	pop	ar6
      003AAA 50 54            [24] 2419 	jnc	00101$
                                   2420 ;	8051_i2c_eeprom.c:426: printf(" %02X", ptr[i]);
      003AAC C0 03            [24] 2421 	push	ar3
      003AAE C0 04            [24] 2422 	push	ar4
      003AB0 85 08 82         [24] 2423 	mov	dpl,_eeprom_hex_dump_sloc0_1_0
      003AB3 85 09 83         [24] 2424 	mov	dph,(_eeprom_hex_dump_sloc0_1_0 + 1)
      003AB6 85 0A F0         [24] 2425 	mov	b,(_eeprom_hex_dump_sloc0_1_0 + 2)
      003AB9 12 47 72         [24] 2426 	lcall	__gptrget
      003ABC F8               [12] 2427 	mov	r0,a
      003ABD 7C 00            [12] 2428 	mov	r4,#0x00
      003ABF C0 07            [24] 2429 	push	ar7
      003AC1 C0 06            [24] 2430 	push	ar6
      003AC3 C0 05            [24] 2431 	push	ar5
      003AC5 C0 04            [24] 2432 	push	ar4
      003AC7 C0 03            [24] 2433 	push	ar3
      003AC9 C0 02            [24] 2434 	push	ar2
      003ACB C0 01            [24] 2435 	push	ar1
      003ACD C0 00            [24] 2436 	push	ar0
      003ACF C0 04            [24] 2437 	push	ar4
      003AD1 74 8B            [12] 2438 	mov	a,#___str_44
      003AD3 C0 E0            [24] 2439 	push	acc
      003AD5 74 53            [12] 2440 	mov	a,#(___str_44 >> 8)
      003AD7 C0 E0            [24] 2441 	push	acc
      003AD9 74 80            [12] 2442 	mov	a,#0x80
      003ADB C0 E0            [24] 2443 	push	acc
      003ADD 12 3D 30         [24] 2444 	lcall	_printf
      003AE0 E5 81            [12] 2445 	mov	a,sp
      003AE2 24 FB            [12] 2446 	add	a,#0xfb
      003AE4 F5 81            [12] 2447 	mov	sp,a
      003AE6 D0 01            [24] 2448 	pop	ar1
      003AE8 D0 02            [24] 2449 	pop	ar2
      003AEA D0 03            [24] 2450 	pop	ar3
      003AEC D0 04            [24] 2451 	pop	ar4
      003AEE D0 05            [24] 2452 	pop	ar5
      003AF0 D0 06            [24] 2453 	pop	ar6
      003AF2 D0 07            [24] 2454 	pop	ar7
                                   2455 ;	8051_i2c_eeprom.c:425: for (int i = 0; i < 16 && ((unsigned int)(ptr + i)) < end_location; i++) {
      003AF4 09               [12] 2456 	inc	r1
      003AF5 B9 00 01         [24] 2457 	cjne	r1,#0x00,00149$
      003AF8 0A               [12] 2458 	inc	r2
      003AF9                       2459 00149$:
      003AF9 D0 04            [24] 2460 	pop	ar4
      003AFB D0 03            [24] 2461 	pop	ar3
      003AFD 02 3A 80         [24] 2462 	ljmp	00108$
      003B00                       2463 00101$:
                                   2464 ;	8051_i2c_eeprom.c:430: for (int i = (end_location - (unsigned int)ptr); i < 16; i++) {
      003B00 8E 00            [24] 2465 	mov	ar0,r6
      003B02 8D 01            [24] 2466 	mov	ar1,r5
      003B04 8F 02            [24] 2467 	mov	ar2,r7
      003B06 EB               [12] 2468 	mov	a,r3
      003B07 C3               [12] 2469 	clr	c
      003B08 98               [12] 2470 	subb	a,r0
      003B09 FA               [12] 2471 	mov	r2,a
      003B0A EC               [12] 2472 	mov	a,r4
      003B0B 99               [12] 2473 	subb	a,r1
      003B0C F9               [12] 2474 	mov	r1,a
      003B0D                       2475 00111$:
      003B0D C3               [12] 2476 	clr	c
      003B0E EA               [12] 2477 	mov	a,r2
      003B0F 94 10            [12] 2478 	subb	a,#0x10
      003B11 E9               [12] 2479 	mov	a,r1
      003B12 64 80            [12] 2480 	xrl	a,#0x80
      003B14 94 80            [12] 2481 	subb	a,#0x80
      003B16 50 38            [24] 2482 	jnc	00102$
                                   2483 ;	8051_i2c_eeprom.c:431: printf("   ");
      003B18 C0 07            [24] 2484 	push	ar7
      003B1A C0 06            [24] 2485 	push	ar6
      003B1C C0 05            [24] 2486 	push	ar5
      003B1E C0 04            [24] 2487 	push	ar4
      003B20 C0 03            [24] 2488 	push	ar3
      003B22 C0 02            [24] 2489 	push	ar2
      003B24 C0 01            [24] 2490 	push	ar1
      003B26 74 91            [12] 2491 	mov	a,#___str_45
      003B28 C0 E0            [24] 2492 	push	acc
      003B2A 74 53            [12] 2493 	mov	a,#(___str_45 >> 8)
      003B2C C0 E0            [24] 2494 	push	acc
      003B2E 74 80            [12] 2495 	mov	a,#0x80
      003B30 C0 E0            [24] 2496 	push	acc
      003B32 12 3D 30         [24] 2497 	lcall	_printf
      003B35 15 81            [12] 2498 	dec	sp
      003B37 15 81            [12] 2499 	dec	sp
      003B39 15 81            [12] 2500 	dec	sp
      003B3B D0 01            [24] 2501 	pop	ar1
      003B3D D0 02            [24] 2502 	pop	ar2
      003B3F D0 03            [24] 2503 	pop	ar3
      003B41 D0 04            [24] 2504 	pop	ar4
      003B43 D0 05            [24] 2505 	pop	ar5
      003B45 D0 06            [24] 2506 	pop	ar6
      003B47 D0 07            [24] 2507 	pop	ar7
                                   2508 ;	8051_i2c_eeprom.c:430: for (int i = (end_location - (unsigned int)ptr); i < 16; i++) {
      003B49 0A               [12] 2509 	inc	r2
      003B4A BA 00 C0         [24] 2510 	cjne	r2,#0x00,00111$
      003B4D 09               [12] 2511 	inc	r1
      003B4E 80 BD            [24] 2512 	sjmp	00111$
      003B50                       2513 00102$:
                                   2514 ;	8051_i2c_eeprom.c:434: printf(" |");
      003B50 C0 07            [24] 2515 	push	ar7
      003B52 C0 06            [24] 2516 	push	ar6
      003B54 C0 05            [24] 2517 	push	ar5
      003B56 C0 04            [24] 2518 	push	ar4
      003B58 C0 03            [24] 2519 	push	ar3
      003B5A 74 95            [12] 2520 	mov	a,#___str_46
      003B5C C0 E0            [24] 2521 	push	acc
      003B5E 74 53            [12] 2522 	mov	a,#(___str_46 >> 8)
      003B60 C0 E0            [24] 2523 	push	acc
      003B62 74 80            [12] 2524 	mov	a,#0x80
      003B64 C0 E0            [24] 2525 	push	acc
      003B66 12 3D 30         [24] 2526 	lcall	_printf
      003B69 15 81            [12] 2527 	dec	sp
      003B6B 15 81            [12] 2528 	dec	sp
      003B6D 15 81            [12] 2529 	dec	sp
      003B6F D0 03            [24] 2530 	pop	ar3
      003B71 D0 04            [24] 2531 	pop	ar4
      003B73 D0 05            [24] 2532 	pop	ar5
      003B75 D0 06            [24] 2533 	pop	ar6
      003B77 D0 07            [24] 2534 	pop	ar7
                                   2535 ;	8051_i2c_eeprom.c:435: ptr += 16;
      003B79 74 10            [12] 2536 	mov	a,#0x10
      003B7B 2E               [12] 2537 	add	a,r6
      003B7C FE               [12] 2538 	mov	r6,a
      003B7D E4               [12] 2539 	clr	a
      003B7E 3D               [12] 2540 	addc	a,r5
      003B7F FD               [12] 2541 	mov	r5,a
                                   2542 ;	8051_i2c_eeprom.c:436: offset += 16;
      003B80 90 04 1C         [24] 2543 	mov	dptr,#_eeprom_hex_dump_offset_65536_111
      003B83 E0               [24] 2544 	movx	a,@dptr
      003B84 F9               [12] 2545 	mov	r1,a
      003B85 A3               [24] 2546 	inc	dptr
      003B86 E0               [24] 2547 	movx	a,@dptr
      003B87 FA               [12] 2548 	mov	r2,a
      003B88 74 10            [12] 2549 	mov	a,#0x10
      003B8A 29               [12] 2550 	add	a,r1
      003B8B F9               [12] 2551 	mov	r1,a
      003B8C E4               [12] 2552 	clr	a
      003B8D 3A               [12] 2553 	addc	a,r2
      003B8E FA               [12] 2554 	mov	r2,a
      003B8F 90 04 1C         [24] 2555 	mov	dptr,#_eeprom_hex_dump_offset_65536_111
      003B92 E9               [12] 2556 	mov	a,r1
      003B93 F0               [24] 2557 	movx	@dptr,a
      003B94 EA               [12] 2558 	mov	a,r2
      003B95 A3               [24] 2559 	inc	dptr
      003B96 F0               [24] 2560 	movx	@dptr,a
      003B97 02 3A 39         [24] 2561 	ljmp	00103$
      003B9A                       2562 00105$:
                                   2563 ;	8051_i2c_eeprom.c:438: printf("│ Hex Dump successful!                 │\n\r");
      003B9A 74 98            [12] 2564 	mov	a,#___str_47
      003B9C C0 E0            [24] 2565 	push	acc
      003B9E 74 53            [12] 2566 	mov	a,#(___str_47 >> 8)
      003BA0 C0 E0            [24] 2567 	push	acc
      003BA2 74 80            [12] 2568 	mov	a,#0x80
      003BA4 C0 E0            [24] 2569 	push	acc
      003BA6 12 3D 30         [24] 2570 	lcall	_printf
      003BA9 15 81            [12] 2571 	dec	sp
      003BAB 15 81            [12] 2572 	dec	sp
      003BAD 15 81            [12] 2573 	dec	sp
                                   2574 ;	8051_i2c_eeprom.c:439: printf("└───────────────────────────────────────────────┘\n\r");
      003BAF 74 46            [12] 2575 	mov	a,#___str_38
      003BB1 C0 E0            [24] 2576 	push	acc
      003BB3 74 52            [12] 2577 	mov	a,#(___str_38 >> 8)
      003BB5 C0 E0            [24] 2578 	push	acc
      003BB7 74 80            [12] 2579 	mov	a,#0x80
      003BB9 C0 E0            [24] 2580 	push	acc
      003BBB 12 3D 30         [24] 2581 	lcall	_printf
      003BBE 15 81            [12] 2582 	dec	sp
      003BC0 15 81            [12] 2583 	dec	sp
      003BC2 15 81            [12] 2584 	dec	sp
                                   2585 ;	8051_i2c_eeprom.c:440: printf("\n");
      003BC4 74 C7            [12] 2586 	mov	a,#___str_48
      003BC6 C0 E0            [24] 2587 	push	acc
      003BC8 74 53            [12] 2588 	mov	a,#(___str_48 >> 8)
      003BCA C0 E0            [24] 2589 	push	acc
      003BCC 74 80            [12] 2590 	mov	a,#0x80
      003BCE C0 E0            [24] 2591 	push	acc
      003BD0 12 3D 30         [24] 2592 	lcall	_printf
      003BD3 15 81            [12] 2593 	dec	sp
      003BD5 15 81            [12] 2594 	dec	sp
      003BD7 15 81            [12] 2595 	dec	sp
                                   2596 ;	8051_i2c_eeprom.c:441: }
      003BD9 22               [24] 2597 	ret
                                   2598 ;------------------------------------------------------------
                                   2599 ;Allocation info for local variables in function 'i2c_stop'
                                   2600 ;------------------------------------------------------------
                                   2601 ;	8051_i2c_eeprom.c:443: void i2c_stop(void)
                                   2602 ;	-----------------------------------------
                                   2603 ;	 function i2c_stop
                                   2604 ;	-----------------------------------------
      003BDA                       2605 _i2c_stop:
                                   2606 ;	8051_i2c_eeprom.c:445: SDA = 0;
                                   2607 ;	assignBit
      003BDA C2 94            [12] 2608 	clr	_P1_4
                                   2609 ;	8051_i2c_eeprom.c:446: i2c_delay();
      003BDC 12 3C 13         [24] 2610 	lcall	_i2c_delay
                                   2611 ;	8051_i2c_eeprom.c:447: SCL = 1;
                                   2612 ;	assignBit
      003BDF D2 93            [12] 2613 	setb	_P1_3
                                   2614 ;	8051_i2c_eeprom.c:448: i2c_delay();
      003BE1 12 3C 13         [24] 2615 	lcall	_i2c_delay
                                   2616 ;	8051_i2c_eeprom.c:449: SDA = 1; 
                                   2617 ;	assignBit
      003BE4 D2 94            [12] 2618 	setb	_P1_4
                                   2619 ;	8051_i2c_eeprom.c:450: }
      003BE6 22               [24] 2620 	ret
                                   2621 ;------------------------------------------------------------
                                   2622 ;Allocation info for local variables in function 'eeprom_reset'
                                   2623 ;------------------------------------------------------------
                                   2624 ;i                         Allocated with name '_eeprom_reset_i_131072_120'
                                   2625 ;------------------------------------------------------------
                                   2626 ;	8051_i2c_eeprom.c:452: void eeprom_reset()
                                   2627 ;	-----------------------------------------
                                   2628 ;	 function eeprom_reset
                                   2629 ;	-----------------------------------------
      003BE7                       2630 _eeprom_reset:
                                   2631 ;	8051_i2c_eeprom.c:454: i2c_start();
      003BE7 12 3A 00         [24] 2632 	lcall	_i2c_start
                                   2633 ;	8051_i2c_eeprom.c:455: SDA = 0;
                                   2634 ;	assignBit
      003BEA C2 94            [12] 2635 	clr	_P1_4
                                   2636 ;	8051_i2c_eeprom.c:456: SDA = 1;
                                   2637 ;	assignBit
      003BEC D2 94            [12] 2638 	setb	_P1_4
                                   2639 ;	8051_i2c_eeprom.c:457: for(int i = 0; i<10; i++)
      003BEE 7E 00            [12] 2640 	mov	r6,#0x00
      003BF0 7F 00            [12] 2641 	mov	r7,#0x00
      003BF2                       2642 00103$:
      003BF2 C3               [12] 2643 	clr	c
      003BF3 EE               [12] 2644 	mov	a,r6
      003BF4 94 0A            [12] 2645 	subb	a,#0x0a
      003BF6 EF               [12] 2646 	mov	a,r7
      003BF7 64 80            [12] 2647 	xrl	a,#0x80
      003BF9 94 80            [12] 2648 	subb	a,#0x80
      003BFB 50 0B            [24] 2649 	jnc	00101$
                                   2650 ;	8051_i2c_eeprom.c:459: SCL = 0;
                                   2651 ;	assignBit
      003BFD C2 93            [12] 2652 	clr	_P1_3
                                   2653 ;	8051_i2c_eeprom.c:460: SCL = 1;
                                   2654 ;	assignBit
      003BFF D2 93            [12] 2655 	setb	_P1_3
                                   2656 ;	8051_i2c_eeprom.c:457: for(int i = 0; i<10; i++)
      003C01 0E               [12] 2657 	inc	r6
      003C02 BE 00 ED         [24] 2658 	cjne	r6,#0x00,00103$
      003C05 0F               [12] 2659 	inc	r7
      003C06 80 EA            [24] 2660 	sjmp	00103$
      003C08                       2661 00101$:
                                   2662 ;	8051_i2c_eeprom.c:462: i2c_start();
      003C08 12 3A 00         [24] 2663 	lcall	_i2c_start
                                   2664 ;	8051_i2c_eeprom.c:463: SDA = 0;
                                   2665 ;	assignBit
      003C0B C2 94            [12] 2666 	clr	_P1_4
                                   2667 ;	8051_i2c_eeprom.c:464: i2c_stop();
      003C0D 12 3B DA         [24] 2668 	lcall	_i2c_stop
                                   2669 ;	8051_i2c_eeprom.c:465: SDA = 1;
                                   2670 ;	assignBit
      003C10 D2 94            [12] 2671 	setb	_P1_4
                                   2672 ;	8051_i2c_eeprom.c:466: }
      003C12 22               [24] 2673 	ret
                                   2674 ;------------------------------------------------------------
                                   2675 ;Allocation info for local variables in function 'i2c_delay'
                                   2676 ;------------------------------------------------------------
                                   2677 ;i                         Allocated with name '_i2c_delay_i_131072_123'
                                   2678 ;------------------------------------------------------------
                                   2679 ;	8051_i2c_eeprom.c:467: void i2c_delay() 
                                   2680 ;	-----------------------------------------
                                   2681 ;	 function i2c_delay
                                   2682 ;	-----------------------------------------
      003C13                       2683 _i2c_delay:
                                   2684 ;	8051_i2c_eeprom.c:475: for(int i = 0; i<500; i++);
      003C13 7E 00            [12] 2685 	mov	r6,#0x00
      003C15 7F 00            [12] 2686 	mov	r7,#0x00
      003C17                       2687 00103$:
      003C17 C3               [12] 2688 	clr	c
      003C18 EE               [12] 2689 	mov	a,r6
      003C19 94 F4            [12] 2690 	subb	a,#0xf4
      003C1B EF               [12] 2691 	mov	a,r7
      003C1C 64 80            [12] 2692 	xrl	a,#0x80
      003C1E 94 81            [12] 2693 	subb	a,#0x81
      003C20 50 07            [24] 2694 	jnc	00105$
      003C22 0E               [12] 2695 	inc	r6
      003C23 BE 00 F1         [24] 2696 	cjne	r6,#0x00,00103$
      003C26 0F               [12] 2697 	inc	r7
      003C27 80 EE            [24] 2698 	sjmp	00103$
      003C29                       2699 00105$:
                                   2700 ;	8051_i2c_eeprom.c:476: }
      003C29 22               [24] 2701 	ret
                                   2702 ;------------------------------------------------------------
                                   2703 ;Allocation info for local variables in function 'test_function'
                                   2704 ;------------------------------------------------------------
                                   2705 ;test_data                 Allocated with name '_test_function_test_data_65537_125'
                                   2706 ;address                   Allocated with name '_test_function_address_65537_125'
                                   2707 ;i                         Allocated with name '_test_function_i_131073_126'
                                   2708 ;read_data                 Allocated with name '_test_function_read_data_65538_128'
                                   2709 ;------------------------------------------------------------
                                   2710 ;	8051_i2c_eeprom.c:478: void test_function()
                                   2711 ;	-----------------------------------------
                                   2712 ;	 function test_function
                                   2713 ;	-----------------------------------------
      003C2A                       2714 _test_function:
                                   2715 ;	8051_i2c_eeprom.c:480: i2c_start();
      003C2A 12 3A 00         [24] 2716 	lcall	_i2c_start
                                   2717 ;	8051_i2c_eeprom.c:481: i2c_delay();
      003C2D 12 3C 13         [24] 2718 	lcall	_i2c_delay
                                   2719 ;	8051_i2c_eeprom.c:487: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      003C30 74 02            [12] 2720 	mov	a,#0x02
      003C32 C0 E0            [24] 2721 	push	acc
      003C34 E4               [12] 2722 	clr	a
      003C35 C0 E0            [24] 2723 	push	acc
      003C37 74 26            [12] 2724 	mov	a,#0x26
      003C39 C0 E0            [24] 2725 	push	acc
      003C3B E4               [12] 2726 	clr	a
      003C3C C0 E0            [24] 2727 	push	acc
      003C3E 74 C9            [12] 2728 	mov	a,#___str_49
      003C40 C0 E0            [24] 2729 	push	acc
      003C42 74 53            [12] 2730 	mov	a,#(___str_49 >> 8)
      003C44 C0 E0            [24] 2731 	push	acc
      003C46 74 80            [12] 2732 	mov	a,#0x80
      003C48 C0 E0            [24] 2733 	push	acc
      003C4A 12 3D 30         [24] 2734 	lcall	_printf
      003C4D E5 81            [12] 2735 	mov	a,sp
      003C4F 24 F9            [12] 2736 	add	a,#0xf9
      003C51 F5 81            [12] 2737 	mov	sp,a
                                   2738 ;	8051_i2c_eeprom.c:488: eeprom_write(address, test_data);
      003C53 90 04 0F         [24] 2739 	mov	dptr,#_eeprom_write_PARM_2
      003C56 74 26            [12] 2740 	mov	a,#0x26
      003C58 F0               [24] 2741 	movx	@dptr,a
      003C59 90 00 02         [24] 2742 	mov	dptr,#0x0002
      003C5C 12 36 F9         [24] 2743 	lcall	_eeprom_write
                                   2744 ;	8051_i2c_eeprom.c:489: i2c_stop();
      003C5F 12 3B DA         [24] 2745 	lcall	_i2c_stop
                                   2746 ;	8051_i2c_eeprom.c:491: for(int i = 0; i<100; i++)
      003C62 7E 00            [12] 2747 	mov	r6,#0x00
      003C64 7F 00            [12] 2748 	mov	r7,#0x00
      003C66                       2749 00106$:
      003C66 C3               [12] 2750 	clr	c
      003C67 EE               [12] 2751 	mov	a,r6
      003C68 94 64            [12] 2752 	subb	a,#0x64
      003C6A EF               [12] 2753 	mov	a,r7
      003C6B 64 80            [12] 2754 	xrl	a,#0x80
      003C6D 94 80            [12] 2755 	subb	a,#0x80
      003C6F 50 12            [24] 2756 	jnc	00101$
                                   2757 ;	8051_i2c_eeprom.c:493: i2c_delay();
      003C71 C0 07            [24] 2758 	push	ar7
      003C73 C0 06            [24] 2759 	push	ar6
      003C75 12 3C 13         [24] 2760 	lcall	_i2c_delay
      003C78 D0 06            [24] 2761 	pop	ar6
      003C7A D0 07            [24] 2762 	pop	ar7
                                   2763 ;	8051_i2c_eeprom.c:491: for(int i = 0; i<100; i++)
      003C7C 0E               [12] 2764 	inc	r6
      003C7D BE 00 E6         [24] 2765 	cjne	r6,#0x00,00106$
      003C80 0F               [12] 2766 	inc	r7
      003C81 80 E3            [24] 2767 	sjmp	00106$
      003C83                       2768 00101$:
                                   2769 ;	8051_i2c_eeprom.c:497: unsigned char read_data = eeprom_read(address);
      003C83 90 00 02         [24] 2770 	mov	dptr,#0x0002
      003C86 12 38 3B         [24] 2771 	lcall	_eeprom_read
      003C89 AE 82            [24] 2772 	mov	r6,dpl
                                   2773 ;	8051_i2c_eeprom.c:498: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      003C8B 8E 05            [24] 2774 	mov	ar5,r6
      003C8D 7F 00            [12] 2775 	mov	r7,#0x00
      003C8F C0 06            [24] 2776 	push	ar6
      003C91 C0 05            [24] 2777 	push	ar5
      003C93 C0 07            [24] 2778 	push	ar7
      003C95 74 02            [12] 2779 	mov	a,#0x02
      003C97 C0 E0            [24] 2780 	push	acc
      003C99 E4               [12] 2781 	clr	a
      003C9A C0 E0            [24] 2782 	push	acc
      003C9C 74 F1            [12] 2783 	mov	a,#___str_50
      003C9E C0 E0            [24] 2784 	push	acc
      003CA0 74 53            [12] 2785 	mov	a,#(___str_50 >> 8)
      003CA2 C0 E0            [24] 2786 	push	acc
      003CA4 74 80            [12] 2787 	mov	a,#0x80
      003CA6 C0 E0            [24] 2788 	push	acc
      003CA8 12 3D 30         [24] 2789 	lcall	_printf
      003CAB E5 81            [12] 2790 	mov	a,sp
      003CAD 24 F9            [12] 2791 	add	a,#0xf9
      003CAF F5 81            [12] 2792 	mov	sp,a
      003CB1 D0 06            [24] 2793 	pop	ar6
                                   2794 ;	8051_i2c_eeprom.c:501: if(read_data == test_data) {
      003CB3 BE 26 16         [24] 2795 	cjne	r6,#0x26,00103$
                                   2796 ;	8051_i2c_eeprom.c:502: printf("MATCH - Write/Read successful!\n\r");
      003CB6 74 19            [12] 2797 	mov	a,#___str_51
      003CB8 C0 E0            [24] 2798 	push	acc
      003CBA 74 54            [12] 2799 	mov	a,#(___str_51 >> 8)
      003CBC C0 E0            [24] 2800 	push	acc
      003CBE 74 80            [12] 2801 	mov	a,#0x80
      003CC0 C0 E0            [24] 2802 	push	acc
      003CC2 12 3D 30         [24] 2803 	lcall	_printf
      003CC5 15 81            [12] 2804 	dec	sp
      003CC7 15 81            [12] 2805 	dec	sp
      003CC9 15 81            [12] 2806 	dec	sp
      003CCB 22               [24] 2807 	ret
      003CCC                       2808 00103$:
                                   2809 ;	8051_i2c_eeprom.c:504: printf("ERROR - Data mismatch!\n\r");
      003CCC 74 3A            [12] 2810 	mov	a,#___str_52
      003CCE C0 E0            [24] 2811 	push	acc
      003CD0 74 54            [12] 2812 	mov	a,#(___str_52 >> 8)
      003CD2 C0 E0            [24] 2813 	push	acc
      003CD4 74 80            [12] 2814 	mov	a,#0x80
      003CD6 C0 E0            [24] 2815 	push	acc
      003CD8 12 3D 30         [24] 2816 	lcall	_printf
      003CDB 15 81            [12] 2817 	dec	sp
      003CDD 15 81            [12] 2818 	dec	sp
      003CDF 15 81            [12] 2819 	dec	sp
                                   2820 ;	8051_i2c_eeprom.c:508: }
      003CE1 22               [24] 2821 	ret
                                   2822 	.area CSEG    (CODE)
                                   2823 	.area CONST   (CODE)
                                   2824 	.area CONST   (CODE)
      004792                       2825 ___str_0:
      004792 0A                    2826 	.db 0x0a
      004793 E2                    2827 	.db 0xe2
      004794 95                    2828 	.db 0x95
      004795 94                    2829 	.db 0x94
      004796 E2                    2830 	.db 0xe2
      004797 95                    2831 	.db 0x95
      004798 90                    2832 	.db 0x90
      004799 E2                    2833 	.db 0xe2
      00479A 95                    2834 	.db 0x95
      00479B 90                    2835 	.db 0x90
      00479C E2                    2836 	.db 0xe2
      00479D 95                    2837 	.db 0x95
      00479E 90                    2838 	.db 0x90
      00479F E2                    2839 	.db 0xe2
      0047A0 95                    2840 	.db 0x95
      0047A1 90                    2841 	.db 0x90
      0047A2 E2                    2842 	.db 0xe2
      0047A3 95                    2843 	.db 0x95
      0047A4 90                    2844 	.db 0x90
      0047A5 E2                    2845 	.db 0xe2
      0047A6 95                    2846 	.db 0x95
      0047A7 90                    2847 	.db 0x90
      0047A8 E2                    2848 	.db 0xe2
      0047A9 95                    2849 	.db 0x95
      0047AA 90                    2850 	.db 0x90
      0047AB E2                    2851 	.db 0xe2
      0047AC 95                    2852 	.db 0x95
      0047AD 90                    2853 	.db 0x90
      0047AE E2                    2854 	.db 0xe2
      0047AF 95                    2855 	.db 0x95
      0047B0 90                    2856 	.db 0x90
      0047B1 E2                    2857 	.db 0xe2
      0047B2 95                    2858 	.db 0x95
      0047B3 90                    2859 	.db 0x90
      0047B4 E2                    2860 	.db 0xe2
      0047B5 95                    2861 	.db 0x95
      0047B6 90                    2862 	.db 0x90
      0047B7 E2                    2863 	.db 0xe2
      0047B8 95                    2864 	.db 0x95
      0047B9 90                    2865 	.db 0x90
      0047BA E2                    2866 	.db 0xe2
      0047BB 95                    2867 	.db 0x95
      0047BC 90                    2868 	.db 0x90
      0047BD E2                    2869 	.db 0xe2
      0047BE 95                    2870 	.db 0x95
      0047BF 90                    2871 	.db 0x90
      0047C0 E2                    2872 	.db 0xe2
      0047C1 95                    2873 	.db 0x95
      0047C2 90                    2874 	.db 0x90
      0047C3 E2                    2875 	.db 0xe2
      0047C4 95                    2876 	.db 0x95
      0047C5 90                    2877 	.db 0x90
      0047C6 E2                    2878 	.db 0xe2
      0047C7 95                    2879 	.db 0x95
      0047C8 90                    2880 	.db 0x90
      0047C9 E2                    2881 	.db 0xe2
      0047CA 95                    2882 	.db 0x95
      0047CB 90                    2883 	.db 0x90
      0047CC E2                    2884 	.db 0xe2
      0047CD 95                    2885 	.db 0x95
      0047CE 90                    2886 	.db 0x90
      0047CF E2                    2887 	.db 0xe2
      0047D0 95                    2888 	.db 0x95
      0047D1 90                    2889 	.db 0x90
      0047D2 E2                    2890 	.db 0xe2
      0047D3 95                    2891 	.db 0x95
      0047D4 90                    2892 	.db 0x90
      0047D5 E2                    2893 	.db 0xe2
      0047D6 95                    2894 	.db 0x95
      0047D7 90                    2895 	.db 0x90
      0047D8 E2                    2896 	.db 0xe2
      0047D9 95                    2897 	.db 0x95
      0047DA 90                    2898 	.db 0x90
      0047DB E2                    2899 	.db 0xe2
      0047DC 95                    2900 	.db 0x95
      0047DD 90                    2901 	.db 0x90
      0047DE E2                    2902 	.db 0xe2
      0047DF 95                    2903 	.db 0x95
      0047E0 90                    2904 	.db 0x90
      0047E1 E2                    2905 	.db 0xe2
      0047E2 95                    2906 	.db 0x95
      0047E3 90                    2907 	.db 0x90
      0047E4 E2                    2908 	.db 0xe2
      0047E5 95                    2909 	.db 0x95
      0047E6 90                    2910 	.db 0x90
      0047E7 E2                    2911 	.db 0xe2
      0047E8 95                    2912 	.db 0x95
      0047E9 90                    2913 	.db 0x90
      0047EA E2                    2914 	.db 0xe2
      0047EB 95                    2915 	.db 0x95
      0047EC 90                    2916 	.db 0x90
      0047ED E2                    2917 	.db 0xe2
      0047EE 95                    2918 	.db 0x95
      0047EF 90                    2919 	.db 0x90
      0047F0 E2                    2920 	.db 0xe2
      0047F1 95                    2921 	.db 0x95
      0047F2 90                    2922 	.db 0x90
      0047F3 E2                    2923 	.db 0xe2
      0047F4 95                    2924 	.db 0x95
      0047F5 90                    2925 	.db 0x90
      0047F6 E2                    2926 	.db 0xe2
      0047F7 95                    2927 	.db 0x95
      0047F8 90                    2928 	.db 0x90
      0047F9 E2                    2929 	.db 0xe2
      0047FA 95                    2930 	.db 0x95
      0047FB 90                    2931 	.db 0x90
      0047FC E2                    2932 	.db 0xe2
      0047FD 95                    2933 	.db 0x95
      0047FE 90                    2934 	.db 0x90
      0047FF E2                    2935 	.db 0xe2
      004800 95                    2936 	.db 0x95
      004801 90                    2937 	.db 0x90
      004802 E2                    2938 	.db 0xe2
      004803 95                    2939 	.db 0x95
      004804 90                    2940 	.db 0x90
      004805 E2                    2941 	.db 0xe2
      004806 95                    2942 	.db 0x95
      004807 90                    2943 	.db 0x90
      004808 E2                    2944 	.db 0xe2
      004809 95                    2945 	.db 0x95
      00480A 90                    2946 	.db 0x90
      00480B E2                    2947 	.db 0xe2
      00480C 95                    2948 	.db 0x95
      00480D 90                    2949 	.db 0x90
      00480E E2                    2950 	.db 0xe2
      00480F 95                    2951 	.db 0x95
      004810 90                    2952 	.db 0x90
      004811 E2                    2953 	.db 0xe2
      004812 95                    2954 	.db 0x95
      004813 90                    2955 	.db 0x90
      004814 E2                    2956 	.db 0xe2
      004815 95                    2957 	.db 0x95
      004816 90                    2958 	.db 0x90
      004817 E2                    2959 	.db 0xe2
      004818 95                    2960 	.db 0x95
      004819 90                    2961 	.db 0x90
      00481A E2                    2962 	.db 0xe2
      00481B 95                    2963 	.db 0x95
      00481C 90                    2964 	.db 0x90
      00481D E2                    2965 	.db 0xe2
      00481E 95                    2966 	.db 0x95
      00481F 90                    2967 	.db 0x90
      004820 E2                    2968 	.db 0xe2
      004821 95                    2969 	.db 0x95
      004822 90                    2970 	.db 0x90
      004823 E2                    2971 	.db 0xe2
      004824 95                    2972 	.db 0x95
      004825 90                    2973 	.db 0x90
      004826 E2                    2974 	.db 0xe2
      004827 95                    2975 	.db 0x95
      004828 90                    2976 	.db 0x90
      004829 E2                    2977 	.db 0xe2
      00482A 95                    2978 	.db 0x95
      00482B 90                    2979 	.db 0x90
      00482C E2                    2980 	.db 0xe2
      00482D 95                    2981 	.db 0x95
      00482E 90                    2982 	.db 0x90
      00482F E2                    2983 	.db 0xe2
      004830 95                    2984 	.db 0x95
      004831 90                    2985 	.db 0x90
      004832 E2                    2986 	.db 0xe2
      004833 95                    2987 	.db 0x95
      004834 90                    2988 	.db 0x90
      004835 E2                    2989 	.db 0xe2
      004836 95                    2990 	.db 0x95
      004837 90                    2991 	.db 0x90
      004838 E2                    2992 	.db 0xe2
      004839 95                    2993 	.db 0x95
      00483A 90                    2994 	.db 0x90
      00483B E2                    2995 	.db 0xe2
      00483C 95                    2996 	.db 0x95
      00483D 90                    2997 	.db 0x90
      00483E E2                    2998 	.db 0xe2
      00483F 95                    2999 	.db 0x95
      004840 97                    3000 	.db 0x97
      004841 0A                    3001 	.db 0x0a
      004842 0D                    3002 	.db 0x0d
      004843 00                    3003 	.db 0x00
                                   3004 	.area CSEG    (CODE)
                                   3005 	.area CONST   (CODE)
      004844                       3006 ___str_1:
      004844 E2                    3007 	.db 0xe2
      004845 95                    3008 	.db 0x95
      004846 91                    3009 	.db 0x91
      004847 20 20 20 20 20 20 20  3010 	.ascii "           I2C Memory Management System v1.0            "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
      00487F E2                    3011 	.db 0xe2
      004880 95                    3012 	.db 0x95
      004881 91                    3013 	.db 0x91
      004882 0A                    3014 	.db 0x0a
      004883 0D                    3015 	.db 0x0d
      004884 00                    3016 	.db 0x00
                                   3017 	.area CSEG    (CODE)
                                   3018 	.area CONST   (CODE)
      004885                       3019 ___str_2:
      004885 E2                    3020 	.db 0xe2
      004886 95                    3021 	.db 0x95
      004887 9A                    3022 	.db 0x9a
      004888 E2                    3023 	.db 0xe2
      004889 95                    3024 	.db 0x95
      00488A 90                    3025 	.db 0x90
      00488B E2                    3026 	.db 0xe2
      00488C 95                    3027 	.db 0x95
      00488D 90                    3028 	.db 0x90
      00488E E2                    3029 	.db 0xe2
      00488F 95                    3030 	.db 0x95
      004890 90                    3031 	.db 0x90
      004891 E2                    3032 	.db 0xe2
      004892 95                    3033 	.db 0x95
      004893 90                    3034 	.db 0x90
      004894 E2                    3035 	.db 0xe2
      004895 95                    3036 	.db 0x95
      004896 90                    3037 	.db 0x90
      004897 E2                    3038 	.db 0xe2
      004898 95                    3039 	.db 0x95
      004899 90                    3040 	.db 0x90
      00489A E2                    3041 	.db 0xe2
      00489B 95                    3042 	.db 0x95
      00489C 90                    3043 	.db 0x90
      00489D E2                    3044 	.db 0xe2
      00489E 95                    3045 	.db 0x95
      00489F 90                    3046 	.db 0x90
      0048A0 E2                    3047 	.db 0xe2
      0048A1 95                    3048 	.db 0x95
      0048A2 90                    3049 	.db 0x90
      0048A3 E2                    3050 	.db 0xe2
      0048A4 95                    3051 	.db 0x95
      0048A5 90                    3052 	.db 0x90
      0048A6 E2                    3053 	.db 0xe2
      0048A7 95                    3054 	.db 0x95
      0048A8 90                    3055 	.db 0x90
      0048A9 E2                    3056 	.db 0xe2
      0048AA 95                    3057 	.db 0x95
      0048AB 90                    3058 	.db 0x90
      0048AC E2                    3059 	.db 0xe2
      0048AD 95                    3060 	.db 0x95
      0048AE 90                    3061 	.db 0x90
      0048AF E2                    3062 	.db 0xe2
      0048B0 95                    3063 	.db 0x95
      0048B1 90                    3064 	.db 0x90
      0048B2 E2                    3065 	.db 0xe2
      0048B3 95                    3066 	.db 0x95
      0048B4 90                    3067 	.db 0x90
      0048B5 E2                    3068 	.db 0xe2
      0048B6 95                    3069 	.db 0x95
      0048B7 90                    3070 	.db 0x90
      0048B8 E2                    3071 	.db 0xe2
      0048B9 95                    3072 	.db 0x95
      0048BA 90                    3073 	.db 0x90
      0048BB E2                    3074 	.db 0xe2
      0048BC 95                    3075 	.db 0x95
      0048BD 90                    3076 	.db 0x90
      0048BE E2                    3077 	.db 0xe2
      0048BF 95                    3078 	.db 0x95
      0048C0 90                    3079 	.db 0x90
      0048C1 E2                    3080 	.db 0xe2
      0048C2 95                    3081 	.db 0x95
      0048C3 90                    3082 	.db 0x90
      0048C4 E2                    3083 	.db 0xe2
      0048C5 95                    3084 	.db 0x95
      0048C6 90                    3085 	.db 0x90
      0048C7 E2                    3086 	.db 0xe2
      0048C8 95                    3087 	.db 0x95
      0048C9 90                    3088 	.db 0x90
      0048CA E2                    3089 	.db 0xe2
      0048CB 95                    3090 	.db 0x95
      0048CC 90                    3091 	.db 0x90
      0048CD E2                    3092 	.db 0xe2
      0048CE 95                    3093 	.db 0x95
      0048CF 90                    3094 	.db 0x90
      0048D0 E2                    3095 	.db 0xe2
      0048D1 95                    3096 	.db 0x95
      0048D2 90                    3097 	.db 0x90
      0048D3 E2                    3098 	.db 0xe2
      0048D4 95                    3099 	.db 0x95
      0048D5 90                    3100 	.db 0x90
      0048D6 E2                    3101 	.db 0xe2
      0048D7 95                    3102 	.db 0x95
      0048D8 90                    3103 	.db 0x90
      0048D9 E2                    3104 	.db 0xe2
      0048DA 95                    3105 	.db 0x95
      0048DB 90                    3106 	.db 0x90
      0048DC E2                    3107 	.db 0xe2
      0048DD 95                    3108 	.db 0x95
      0048DE 90                    3109 	.db 0x90
      0048DF E2                    3110 	.db 0xe2
      0048E0 95                    3111 	.db 0x95
      0048E1 90                    3112 	.db 0x90
      0048E2 E2                    3113 	.db 0xe2
      0048E3 95                    3114 	.db 0x95
      0048E4 90                    3115 	.db 0x90
      0048E5 E2                    3116 	.db 0xe2
      0048E6 95                    3117 	.db 0x95
      0048E7 90                    3118 	.db 0x90
      0048E8 E2                    3119 	.db 0xe2
      0048E9 95                    3120 	.db 0x95
      0048EA 90                    3121 	.db 0x90
      0048EB E2                    3122 	.db 0xe2
      0048EC 95                    3123 	.db 0x95
      0048ED 90                    3124 	.db 0x90
      0048EE E2                    3125 	.db 0xe2
      0048EF 95                    3126 	.db 0x95
      0048F0 90                    3127 	.db 0x90
      0048F1 E2                    3128 	.db 0xe2
      0048F2 95                    3129 	.db 0x95
      0048F3 90                    3130 	.db 0x90
      0048F4 E2                    3131 	.db 0xe2
      0048F5 95                    3132 	.db 0x95
      0048F6 90                    3133 	.db 0x90
      0048F7 E2                    3134 	.db 0xe2
      0048F8 95                    3135 	.db 0x95
      0048F9 90                    3136 	.db 0x90
      0048FA E2                    3137 	.db 0xe2
      0048FB 95                    3138 	.db 0x95
      0048FC 90                    3139 	.db 0x90
      0048FD E2                    3140 	.db 0xe2
      0048FE 95                    3141 	.db 0x95
      0048FF 90                    3142 	.db 0x90
      004900 E2                    3143 	.db 0xe2
      004901 95                    3144 	.db 0x95
      004902 90                    3145 	.db 0x90
      004903 E2                    3146 	.db 0xe2
      004904 95                    3147 	.db 0x95
      004905 90                    3148 	.db 0x90
      004906 E2                    3149 	.db 0xe2
      004907 95                    3150 	.db 0x95
      004908 90                    3151 	.db 0x90
      004909 E2                    3152 	.db 0xe2
      00490A 95                    3153 	.db 0x95
      00490B 90                    3154 	.db 0x90
      00490C E2                    3155 	.db 0xe2
      00490D 95                    3156 	.db 0x95
      00490E 90                    3157 	.db 0x90
      00490F E2                    3158 	.db 0xe2
      004910 95                    3159 	.db 0x95
      004911 90                    3160 	.db 0x90
      004912 E2                    3161 	.db 0xe2
      004913 95                    3162 	.db 0x95
      004914 90                    3163 	.db 0x90
      004915 E2                    3164 	.db 0xe2
      004916 95                    3165 	.db 0x95
      004917 90                    3166 	.db 0x90
      004918 E2                    3167 	.db 0xe2
      004919 95                    3168 	.db 0x95
      00491A 90                    3169 	.db 0x90
      00491B E2                    3170 	.db 0xe2
      00491C 95                    3171 	.db 0x95
      00491D 90                    3172 	.db 0x90
      00491E E2                    3173 	.db 0xe2
      00491F 95                    3174 	.db 0x95
      004920 90                    3175 	.db 0x90
      004921 E2                    3176 	.db 0xe2
      004922 95                    3177 	.db 0x95
      004923 90                    3178 	.db 0x90
      004924 E2                    3179 	.db 0xe2
      004925 95                    3180 	.db 0x95
      004926 90                    3181 	.db 0x90
      004927 E2                    3182 	.db 0xe2
      004928 95                    3183 	.db 0x95
      004929 90                    3184 	.db 0x90
      00492A E2                    3185 	.db 0xe2
      00492B 95                    3186 	.db 0x95
      00492C 90                    3187 	.db 0x90
      00492D E2                    3188 	.db 0xe2
      00492E 95                    3189 	.db 0x95
      00492F 90                    3190 	.db 0x90
      004930 E2                    3191 	.db 0xe2
      004931 95                    3192 	.db 0x95
      004932 9D                    3193 	.db 0x9d
      004933 0A                    3194 	.db 0x0a
      004934 0D                    3195 	.db 0x0d
      004935 00                    3196 	.db 0x00
                                   3197 	.area CSEG    (CODE)
                                   3198 	.area CONST   (CODE)
      004936                       3199 ___str_3:
      004936 0A                    3200 	.db 0x0a
      004937 0D                    3201 	.db 0x0d
      004938 E2                    3202 	.db 0xe2
      004939 94                    3203 	.db 0x94
      00493A 8C                    3204 	.db 0x8c
      00493B E2                    3205 	.db 0xe2
      00493C 94                    3206 	.db 0x94
      00493D 80                    3207 	.db 0x80
      00493E E2                    3208 	.db 0xe2
      00493F 94                    3209 	.db 0x94
      004940 80                    3210 	.db 0x80
      004941 E2                    3211 	.db 0xe2
      004942 94                    3212 	.db 0x94
      004943 80                    3213 	.db 0x80
      004944 E2                    3214 	.db 0xe2
      004945 94                    3215 	.db 0x94
      004946 80                    3216 	.db 0x80
      004947 E2                    3217 	.db 0xe2
      004948 94                    3218 	.db 0x94
      004949 80                    3219 	.db 0x80
      00494A E2                    3220 	.db 0xe2
      00494B 94                    3221 	.db 0x94
      00494C 80                    3222 	.db 0x80
      00494D E2                    3223 	.db 0xe2
      00494E 94                    3224 	.db 0x94
      00494F 80                    3225 	.db 0x80
      004950 E2                    3226 	.db 0xe2
      004951 94                    3227 	.db 0x94
      004952 80                    3228 	.db 0x80
      004953 E2                    3229 	.db 0xe2
      004954 94                    3230 	.db 0x94
      004955 80                    3231 	.db 0x80
      004956 E2                    3232 	.db 0xe2
      004957 94                    3233 	.db 0x94
      004958 80                    3234 	.db 0x80
      004959 E2                    3235 	.db 0xe2
      00495A 94                    3236 	.db 0x94
      00495B 80                    3237 	.db 0x80
      00495C E2                    3238 	.db 0xe2
      00495D 94                    3239 	.db 0x94
      00495E 80                    3240 	.db 0x80
      00495F E2                    3241 	.db 0xe2
      004960 94                    3242 	.db 0x94
      004961 AC                    3243 	.db 0xac
      004962 E2                    3244 	.db 0xe2
      004963 94                    3245 	.db 0x94
      004964 80                    3246 	.db 0x80
      004965 E2                    3247 	.db 0xe2
      004966 94                    3248 	.db 0x94
      004967 80                    3249 	.db 0x80
      004968 E2                    3250 	.db 0xe2
      004969 94                    3251 	.db 0x94
      00496A 80                    3252 	.db 0x80
      00496B E2                    3253 	.db 0xe2
      00496C 94                    3254 	.db 0x94
      00496D 80                    3255 	.db 0x80
      00496E E2                    3256 	.db 0xe2
      00496F 94                    3257 	.db 0x94
      004970 80                    3258 	.db 0x80
      004971 E2                    3259 	.db 0xe2
      004972 94                    3260 	.db 0x94
      004973 80                    3261 	.db 0x80
      004974 E2                    3262 	.db 0xe2
      004975 94                    3263 	.db 0x94
      004976 80                    3264 	.db 0x80
      004977 E2                    3265 	.db 0xe2
      004978 94                    3266 	.db 0x94
      004979 80                    3267 	.db 0x80
      00497A E2                    3268 	.db 0xe2
      00497B 94                    3269 	.db 0x94
      00497C 80                    3270 	.db 0x80
      00497D E2                    3271 	.db 0xe2
      00497E 94                    3272 	.db 0x94
      00497F 80                    3273 	.db 0x80
      004980 E2                    3274 	.db 0xe2
      004981 94                    3275 	.db 0x94
      004982 80                    3276 	.db 0x80
      004983 E2                    3277 	.db 0xe2
      004984 94                    3278 	.db 0x94
      004985 80                    3279 	.db 0x80
      004986 E2                    3280 	.db 0xe2
      004987 94                    3281 	.db 0x94
      004988 80                    3282 	.db 0x80
      004989 E2                    3283 	.db 0xe2
      00498A 94                    3284 	.db 0x94
      00498B 80                    3285 	.db 0x80
      00498C E2                    3286 	.db 0xe2
      00498D 94                    3287 	.db 0x94
      00498E 80                    3288 	.db 0x80
      00498F E2                    3289 	.db 0xe2
      004990 94                    3290 	.db 0x94
      004991 80                    3291 	.db 0x80
      004992 E2                    3292 	.db 0xe2
      004993 94                    3293 	.db 0x94
      004994 80                    3294 	.db 0x80
      004995 E2                    3295 	.db 0xe2
      004996 94                    3296 	.db 0x94
      004997 80                    3297 	.db 0x80
      004998 E2                    3298 	.db 0xe2
      004999 94                    3299 	.db 0x94
      00499A 80                    3300 	.db 0x80
      00499B E2                    3301 	.db 0xe2
      00499C 94                    3302 	.db 0x94
      00499D 80                    3303 	.db 0x80
      00499E E2                    3304 	.db 0xe2
      00499F 94                    3305 	.db 0x94
      0049A0 80                    3306 	.db 0x80
      0049A1 E2                    3307 	.db 0xe2
      0049A2 94                    3308 	.db 0x94
      0049A3 80                    3309 	.db 0x80
      0049A4 E2                    3310 	.db 0xe2
      0049A5 94                    3311 	.db 0x94
      0049A6 80                    3312 	.db 0x80
      0049A7 E2                    3313 	.db 0xe2
      0049A8 94                    3314 	.db 0x94
      0049A9 80                    3315 	.db 0x80
      0049AA E2                    3316 	.db 0xe2
      0049AB 94                    3317 	.db 0x94
      0049AC 80                    3318 	.db 0x80
      0049AD E2                    3319 	.db 0xe2
      0049AE 94                    3320 	.db 0x94
      0049AF 80                    3321 	.db 0x80
      0049B0 E2                    3322 	.db 0xe2
      0049B1 94                    3323 	.db 0x94
      0049B2 80                    3324 	.db 0x80
      0049B3 E2                    3325 	.db 0xe2
      0049B4 94                    3326 	.db 0x94
      0049B5 80                    3327 	.db 0x80
      0049B6 E2                    3328 	.db 0xe2
      0049B7 94                    3329 	.db 0x94
      0049B8 80                    3330 	.db 0x80
      0049B9 E2                    3331 	.db 0xe2
      0049BA 94                    3332 	.db 0x94
      0049BB 80                    3333 	.db 0x80
      0049BC E2                    3334 	.db 0xe2
      0049BD 94                    3335 	.db 0x94
      0049BE 80                    3336 	.db 0x80
      0049BF E2                    3337 	.db 0xe2
      0049C0 94                    3338 	.db 0x94
      0049C1 80                    3339 	.db 0x80
      0049C2 E2                    3340 	.db 0xe2
      0049C3 94                    3341 	.db 0x94
      0049C4 80                    3342 	.db 0x80
      0049C5 E2                    3343 	.db 0xe2
      0049C6 94                    3344 	.db 0x94
      0049C7 80                    3345 	.db 0x80
      0049C8 E2                    3346 	.db 0xe2
      0049C9 94                    3347 	.db 0x94
      0049CA 80                    3348 	.db 0x80
      0049CB E2                    3349 	.db 0xe2
      0049CC 94                    3350 	.db 0x94
      0049CD 80                    3351 	.db 0x80
      0049CE E2                    3352 	.db 0xe2
      0049CF 94                    3353 	.db 0x94
      0049D0 80                    3354 	.db 0x80
      0049D1 E2                    3355 	.db 0xe2
      0049D2 94                    3356 	.db 0x94
      0049D3 80                    3357 	.db 0x80
      0049D4 E2                    3358 	.db 0xe2
      0049D5 94                    3359 	.db 0x94
      0049D6 80                    3360 	.db 0x80
      0049D7 E2                    3361 	.db 0xe2
      0049D8 94                    3362 	.db 0x94
      0049D9 80                    3363 	.db 0x80
      0049DA E2                    3364 	.db 0xe2
      0049DB 94                    3365 	.db 0x94
      0049DC 80                    3366 	.db 0x80
      0049DD E2                    3367 	.db 0xe2
      0049DE 94                    3368 	.db 0x94
      0049DF 80                    3369 	.db 0x80
      0049E0 E2                    3370 	.db 0xe2
      0049E1 94                    3371 	.db 0x94
      0049E2 80                    3372 	.db 0x80
      0049E3 E2                    3373 	.db 0xe2
      0049E4 94                    3374 	.db 0x94
      0049E5 80                    3375 	.db 0x80
      0049E6 E2                    3376 	.db 0xe2
      0049E7 94                    3377 	.db 0x94
      0049E8 90                    3378 	.db 0x90
      0049E9 0A                    3379 	.db 0x0a
      0049EA 0D                    3380 	.db 0x0d
      0049EB 00                    3381 	.db 0x00
                                   3382 	.area CSEG    (CODE)
                                   3383 	.area CONST   (CODE)
      0049EC                       3384 ___str_4:
      0049EC E2                    3385 	.db 0xe2
      0049ED 94                    3386 	.db 0x94
      0049EE 82                    3387 	.db 0x82
      0049EF 20 20 43 6F 6D 6D 61  3388 	.ascii "  Command   "
             6E 64 20 20 20
      0049FB E2                    3389 	.db 0xe2
      0049FC 94                    3390 	.db 0x94
      0049FD 82                    3391 	.db 0x82
      0049FE 20 20 20 20 20 20 20  3392 	.ascii "               Description                  "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004A2A E2                    3393 	.db 0xe2
      004A2B 94                    3394 	.db 0x94
      004A2C 82                    3395 	.db 0x82
      004A2D 0A                    3396 	.db 0x0a
      004A2E 0D                    3397 	.db 0x0d
      004A2F 00                    3398 	.db 0x00
                                   3399 	.area CSEG    (CODE)
                                   3400 	.area CONST   (CODE)
      004A30                       3401 ___str_5:
      004A30 E2                    3402 	.db 0xe2
      004A31 94                    3403 	.db 0x94
      004A32 9C                    3404 	.db 0x9c
      004A33 E2                    3405 	.db 0xe2
      004A34 94                    3406 	.db 0x94
      004A35 80                    3407 	.db 0x80
      004A36 E2                    3408 	.db 0xe2
      004A37 94                    3409 	.db 0x94
      004A38 80                    3410 	.db 0x80
      004A39 E2                    3411 	.db 0xe2
      004A3A 94                    3412 	.db 0x94
      004A3B 80                    3413 	.db 0x80
      004A3C E2                    3414 	.db 0xe2
      004A3D 94                    3415 	.db 0x94
      004A3E 80                    3416 	.db 0x80
      004A3F E2                    3417 	.db 0xe2
      004A40 94                    3418 	.db 0x94
      004A41 80                    3419 	.db 0x80
      004A42 E2                    3420 	.db 0xe2
      004A43 94                    3421 	.db 0x94
      004A44 80                    3422 	.db 0x80
      004A45 E2                    3423 	.db 0xe2
      004A46 94                    3424 	.db 0x94
      004A47 80                    3425 	.db 0x80
      004A48 E2                    3426 	.db 0xe2
      004A49 94                    3427 	.db 0x94
      004A4A 80                    3428 	.db 0x80
      004A4B E2                    3429 	.db 0xe2
      004A4C 94                    3430 	.db 0x94
      004A4D 80                    3431 	.db 0x80
      004A4E E2                    3432 	.db 0xe2
      004A4F 94                    3433 	.db 0x94
      004A50 80                    3434 	.db 0x80
      004A51 E2                    3435 	.db 0xe2
      004A52 94                    3436 	.db 0x94
      004A53 80                    3437 	.db 0x80
      004A54 E2                    3438 	.db 0xe2
      004A55 94                    3439 	.db 0x94
      004A56 80                    3440 	.db 0x80
      004A57 E2                    3441 	.db 0xe2
      004A58 94                    3442 	.db 0x94
      004A59 BC                    3443 	.db 0xbc
      004A5A E2                    3444 	.db 0xe2
      004A5B 94                    3445 	.db 0x94
      004A5C 80                    3446 	.db 0x80
      004A5D E2                    3447 	.db 0xe2
      004A5E 94                    3448 	.db 0x94
      004A5F 80                    3449 	.db 0x80
      004A60 E2                    3450 	.db 0xe2
      004A61 94                    3451 	.db 0x94
      004A62 80                    3452 	.db 0x80
      004A63 E2                    3453 	.db 0xe2
      004A64 94                    3454 	.db 0x94
      004A65 80                    3455 	.db 0x80
      004A66 E2                    3456 	.db 0xe2
      004A67 94                    3457 	.db 0x94
      004A68 80                    3458 	.db 0x80
      004A69 E2                    3459 	.db 0xe2
      004A6A 94                    3460 	.db 0x94
      004A6B 80                    3461 	.db 0x80
      004A6C E2                    3462 	.db 0xe2
      004A6D 94                    3463 	.db 0x94
      004A6E 80                    3464 	.db 0x80
      004A6F E2                    3465 	.db 0xe2
      004A70 94                    3466 	.db 0x94
      004A71 80                    3467 	.db 0x80
      004A72 E2                    3468 	.db 0xe2
      004A73 94                    3469 	.db 0x94
      004A74 80                    3470 	.db 0x80
      004A75 E2                    3471 	.db 0xe2
      004A76 94                    3472 	.db 0x94
      004A77 80                    3473 	.db 0x80
      004A78 E2                    3474 	.db 0xe2
      004A79 94                    3475 	.db 0x94
      004A7A 80                    3476 	.db 0x80
      004A7B E2                    3477 	.db 0xe2
      004A7C 94                    3478 	.db 0x94
      004A7D 80                    3479 	.db 0x80
      004A7E E2                    3480 	.db 0xe2
      004A7F 94                    3481 	.db 0x94
      004A80 80                    3482 	.db 0x80
      004A81 E2                    3483 	.db 0xe2
      004A82 94                    3484 	.db 0x94
      004A83 80                    3485 	.db 0x80
      004A84 E2                    3486 	.db 0xe2
      004A85 94                    3487 	.db 0x94
      004A86 80                    3488 	.db 0x80
      004A87 E2                    3489 	.db 0xe2
      004A88 94                    3490 	.db 0x94
      004A89 80                    3491 	.db 0x80
      004A8A E2                    3492 	.db 0xe2
      004A8B 94                    3493 	.db 0x94
      004A8C 80                    3494 	.db 0x80
      004A8D E2                    3495 	.db 0xe2
      004A8E 94                    3496 	.db 0x94
      004A8F 80                    3497 	.db 0x80
      004A90 E2                    3498 	.db 0xe2
      004A91 94                    3499 	.db 0x94
      004A92 80                    3500 	.db 0x80
      004A93 E2                    3501 	.db 0xe2
      004A94 94                    3502 	.db 0x94
      004A95 80                    3503 	.db 0x80
      004A96 E2                    3504 	.db 0xe2
      004A97 94                    3505 	.db 0x94
      004A98 80                    3506 	.db 0x80
      004A99 E2                    3507 	.db 0xe2
      004A9A 94                    3508 	.db 0x94
      004A9B 80                    3509 	.db 0x80
      004A9C E2                    3510 	.db 0xe2
      004A9D 94                    3511 	.db 0x94
      004A9E 80                    3512 	.db 0x80
      004A9F E2                    3513 	.db 0xe2
      004AA0 94                    3514 	.db 0x94
      004AA1 80                    3515 	.db 0x80
      004AA2 E2                    3516 	.db 0xe2
      004AA3 94                    3517 	.db 0x94
      004AA4 80                    3518 	.db 0x80
      004AA5 E2                    3519 	.db 0xe2
      004AA6 94                    3520 	.db 0x94
      004AA7 80                    3521 	.db 0x80
      004AA8 E2                    3522 	.db 0xe2
      004AA9 94                    3523 	.db 0x94
      004AAA 80                    3524 	.db 0x80
      004AAB E2                    3525 	.db 0xe2
      004AAC 94                    3526 	.db 0x94
      004AAD 80                    3527 	.db 0x80
      004AAE E2                    3528 	.db 0xe2
      004AAF 94                    3529 	.db 0x94
      004AB0 80                    3530 	.db 0x80
      004AB1 E2                    3531 	.db 0xe2
      004AB2 94                    3532 	.db 0x94
      004AB3 80                    3533 	.db 0x80
      004AB4 E2                    3534 	.db 0xe2
      004AB5 94                    3535 	.db 0x94
      004AB6 80                    3536 	.db 0x80
      004AB7 E2                    3537 	.db 0xe2
      004AB8 94                    3538 	.db 0x94
      004AB9 80                    3539 	.db 0x80
      004ABA E2                    3540 	.db 0xe2
      004ABB 94                    3541 	.db 0x94
      004ABC 80                    3542 	.db 0x80
      004ABD E2                    3543 	.db 0xe2
      004ABE 94                    3544 	.db 0x94
      004ABF 80                    3545 	.db 0x80
      004AC0 E2                    3546 	.db 0xe2
      004AC1 94                    3547 	.db 0x94
      004AC2 80                    3548 	.db 0x80
      004AC3 E2                    3549 	.db 0xe2
      004AC4 94                    3550 	.db 0x94
      004AC5 80                    3551 	.db 0x80
      004AC6 E2                    3552 	.db 0xe2
      004AC7 94                    3553 	.db 0x94
      004AC8 80                    3554 	.db 0x80
      004AC9 E2                    3555 	.db 0xe2
      004ACA 94                    3556 	.db 0x94
      004ACB 80                    3557 	.db 0x80
      004ACC E2                    3558 	.db 0xe2
      004ACD 94                    3559 	.db 0x94
      004ACE 80                    3560 	.db 0x80
      004ACF E2                    3561 	.db 0xe2
      004AD0 94                    3562 	.db 0x94
      004AD1 80                    3563 	.db 0x80
      004AD2 E2                    3564 	.db 0xe2
      004AD3 94                    3565 	.db 0x94
      004AD4 80                    3566 	.db 0x80
      004AD5 E2                    3567 	.db 0xe2
      004AD6 94                    3568 	.db 0x94
      004AD7 80                    3569 	.db 0x80
      004AD8 E2                    3570 	.db 0xe2
      004AD9 94                    3571 	.db 0x94
      004ADA 80                    3572 	.db 0x80
      004ADB E2                    3573 	.db 0xe2
      004ADC 94                    3574 	.db 0x94
      004ADD 80                    3575 	.db 0x80
      004ADE E2                    3576 	.db 0xe2
      004ADF 94                    3577 	.db 0x94
      004AE0 A4                    3578 	.db 0xa4
      004AE1 0A                    3579 	.db 0x0a
      004AE2 0D                    3580 	.db 0x0d
      004AE3 00                    3581 	.db 0x00
                                   3582 	.area CSEG    (CODE)
                                   3583 	.area CONST   (CODE)
      004AE4                       3584 ___str_6:
      004AE4 E2                    3585 	.db 0xe2
      004AE5 94                    3586 	.db 0x94
      004AE6 82                    3587 	.db 0x82
      004AE7 20 20 20 20 20 52 20  3588 	.ascii "     R      "
             20 20 20 20 20
      004AF3 E2                    3589 	.db 0xe2
      004AF4 94                    3590 	.db 0x94
      004AF5 82                    3591 	.db 0x82
      004AF6 20 52 65 61 64 20 66  3592 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004B22 E2                    3593 	.db 0xe2
      004B23 94                    3594 	.db 0x94
      004B24 82                    3595 	.db 0x82
      004B25 0A                    3596 	.db 0x0a
      004B26 0D                    3597 	.db 0x0d
      004B27 00                    3598 	.db 0x00
                                   3599 	.area CSEG    (CODE)
                                   3600 	.area CONST   (CODE)
      004B28                       3601 ___str_7:
      004B28 E2                    3602 	.db 0xe2
      004B29 94                    3603 	.db 0x94
      004B2A 82                    3604 	.db 0x82
      004B2B 20 20 20 20 20 57 20  3605 	.ascii "     W      "
             20 20 20 20 20
      004B37 E2                    3606 	.db 0xe2
      004B38 94                    3607 	.db 0x94
      004B39 82                    3608 	.db 0x82
      004B3A 20 57 72 69 74 65 20  3609 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004B66 E2                    3610 	.db 0xe2
      004B67 94                    3611 	.db 0x94
      004B68 82                    3612 	.db 0x82
      004B69 0A                    3613 	.db 0x0a
      004B6A 0D                    3614 	.db 0x0d
      004B6B 00                    3615 	.db 0x00
                                   3616 	.area CSEG    (CODE)
                                   3617 	.area CONST   (CODE)
      004B6C                       3618 ___str_8:
      004B6C E2                    3619 	.db 0xe2
      004B6D 94                    3620 	.db 0x94
      004B6E 82                    3621 	.db 0x82
      004B6F 20 20 20 20 20 48 20  3622 	.ascii "     H      "
             20 20 20 20 20
      004B7B E2                    3623 	.db 0xe2
      004B7C 94                    3624 	.db 0x94
      004B7D 82                    3625 	.db 0x82
      004B7E 20 44 69 73 70 6C 61  3626 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004BAA E2                    3627 	.db 0xe2
      004BAB 94                    3628 	.db 0x94
      004BAC 82                    3629 	.db 0x82
      004BAD 0A                    3630 	.db 0x0a
      004BAE 0D                    3631 	.db 0x0d
      004BAF 00                    3632 	.db 0x00
                                   3633 	.area CSEG    (CODE)
                                   3634 	.area CONST   (CODE)
      004BB0                       3635 ___str_9:
      004BB0 E2                    3636 	.db 0xe2
      004BB1 94                    3637 	.db 0x94
      004BB2 82                    3638 	.db 0x82
      004BB3 20 20 20 20 20 58 20  3639 	.ascii "     X      "
             20 20 20 20 20
      004BBF E2                    3640 	.db 0xe2
      004BC0 94                    3641 	.db 0x94
      004BC1 82                    3642 	.db 0x82
      004BC2 20 52 65 73 65 74 20  3643 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004BEE E2                    3644 	.db 0xe2
      004BEF 94                    3645 	.db 0x94
      004BF0 82                    3646 	.db 0x82
      004BF1 0A                    3647 	.db 0x0a
      004BF2 0D                    3648 	.db 0x0d
      004BF3 00                    3649 	.db 0x00
                                   3650 	.area CSEG    (CODE)
                                   3651 	.area CONST   (CODE)
      004BF4                       3652 ___str_10:
      004BF4 E2                    3653 	.db 0xe2
      004BF5 94                    3654 	.db 0x94
      004BF6 82                    3655 	.db 0x82
      004BF7 20 20 20 20 20 3F 20  3656 	.ascii "     ?      "
             20 20 20 20 20
      004C03 E2                    3657 	.db 0xe2
      004C04 94                    3658 	.db 0x94
      004C05 82                    3659 	.db 0x82
      004C06 20 44 69 73 70 6C 61  3660 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004C32 E2                    3661 	.db 0xe2
      004C33 94                    3662 	.db 0x94
      004C34 82                    3663 	.db 0x82
      004C35 0A                    3664 	.db 0x0a
      004C36 0D                    3665 	.db 0x0d
      004C37 00                    3666 	.db 0x00
                                   3667 	.area CSEG    (CODE)
                                   3668 	.area CONST   (CODE)
      004C38                       3669 ___str_11:
      004C38 E2                    3670 	.db 0xe2
      004C39 94                    3671 	.db 0x94
      004C3A 82                    3672 	.db 0x82
      004C3B 20 20 20 20 20 51 20  3673 	.ascii "     Q      "
             20 20 20 20 20
      004C47 E2                    3674 	.db 0xe2
      004C48 94                    3675 	.db 0x94
      004C49 82                    3676 	.db 0x82
      004C4A 20 51 75 69 74 20 70  3677 	.ascii " Quit program                               "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004C76 E2                    3678 	.db 0xe2
      004C77 94                    3679 	.db 0x94
      004C78 82                    3680 	.db 0x82
      004C79 0A                    3681 	.db 0x0a
      004C7A 0D                    3682 	.db 0x0d
      004C7B 00                    3683 	.db 0x00
                                   3684 	.area CSEG    (CODE)
                                   3685 	.area CONST   (CODE)
      004C7C                       3686 ___str_12:
      004C7C E2                    3687 	.db 0xe2
      004C7D 94                    3688 	.db 0x94
      004C7E 94                    3689 	.db 0x94
      004C7F E2                    3690 	.db 0xe2
      004C80 94                    3691 	.db 0x94
      004C81 80                    3692 	.db 0x80
      004C82 E2                    3693 	.db 0xe2
      004C83 94                    3694 	.db 0x94
      004C84 80                    3695 	.db 0x80
      004C85 E2                    3696 	.db 0xe2
      004C86 94                    3697 	.db 0x94
      004C87 80                    3698 	.db 0x80
      004C88 E2                    3699 	.db 0xe2
      004C89 94                    3700 	.db 0x94
      004C8A 80                    3701 	.db 0x80
      004C8B E2                    3702 	.db 0xe2
      004C8C 94                    3703 	.db 0x94
      004C8D 80                    3704 	.db 0x80
      004C8E E2                    3705 	.db 0xe2
      004C8F 94                    3706 	.db 0x94
      004C90 80                    3707 	.db 0x80
      004C91 E2                    3708 	.db 0xe2
      004C92 94                    3709 	.db 0x94
      004C93 80                    3710 	.db 0x80
      004C94 E2                    3711 	.db 0xe2
      004C95 94                    3712 	.db 0x94
      004C96 80                    3713 	.db 0x80
      004C97 E2                    3714 	.db 0xe2
      004C98 94                    3715 	.db 0x94
      004C99 80                    3716 	.db 0x80
      004C9A E2                    3717 	.db 0xe2
      004C9B 94                    3718 	.db 0x94
      004C9C 80                    3719 	.db 0x80
      004C9D E2                    3720 	.db 0xe2
      004C9E 94                    3721 	.db 0x94
      004C9F 80                    3722 	.db 0x80
      004CA0 E2                    3723 	.db 0xe2
      004CA1 94                    3724 	.db 0x94
      004CA2 80                    3725 	.db 0x80
      004CA3 E2                    3726 	.db 0xe2
      004CA4 94                    3727 	.db 0x94
      004CA5 B4                    3728 	.db 0xb4
      004CA6 E2                    3729 	.db 0xe2
      004CA7 94                    3730 	.db 0x94
      004CA8 80                    3731 	.db 0x80
      004CA9 E2                    3732 	.db 0xe2
      004CAA 94                    3733 	.db 0x94
      004CAB 80                    3734 	.db 0x80
      004CAC E2                    3735 	.db 0xe2
      004CAD 94                    3736 	.db 0x94
      004CAE 80                    3737 	.db 0x80
      004CAF E2                    3738 	.db 0xe2
      004CB0 94                    3739 	.db 0x94
      004CB1 80                    3740 	.db 0x80
      004CB2 E2                    3741 	.db 0xe2
      004CB3 94                    3742 	.db 0x94
      004CB4 80                    3743 	.db 0x80
      004CB5 E2                    3744 	.db 0xe2
      004CB6 94                    3745 	.db 0x94
      004CB7 80                    3746 	.db 0x80
      004CB8 E2                    3747 	.db 0xe2
      004CB9 94                    3748 	.db 0x94
      004CBA 80                    3749 	.db 0x80
      004CBB E2                    3750 	.db 0xe2
      004CBC 94                    3751 	.db 0x94
      004CBD 80                    3752 	.db 0x80
      004CBE E2                    3753 	.db 0xe2
      004CBF 94                    3754 	.db 0x94
      004CC0 80                    3755 	.db 0x80
      004CC1 E2                    3756 	.db 0xe2
      004CC2 94                    3757 	.db 0x94
      004CC3 80                    3758 	.db 0x80
      004CC4 E2                    3759 	.db 0xe2
      004CC5 94                    3760 	.db 0x94
      004CC6 80                    3761 	.db 0x80
      004CC7 E2                    3762 	.db 0xe2
      004CC8 94                    3763 	.db 0x94
      004CC9 80                    3764 	.db 0x80
      004CCA E2                    3765 	.db 0xe2
      004CCB 94                    3766 	.db 0x94
      004CCC 80                    3767 	.db 0x80
      004CCD E2                    3768 	.db 0xe2
      004CCE 94                    3769 	.db 0x94
      004CCF 80                    3770 	.db 0x80
      004CD0 E2                    3771 	.db 0xe2
      004CD1 94                    3772 	.db 0x94
      004CD2 80                    3773 	.db 0x80
      004CD3 E2                    3774 	.db 0xe2
      004CD4 94                    3775 	.db 0x94
      004CD5 80                    3776 	.db 0x80
      004CD6 E2                    3777 	.db 0xe2
      004CD7 94                    3778 	.db 0x94
      004CD8 80                    3779 	.db 0x80
      004CD9 E2                    3780 	.db 0xe2
      004CDA 94                    3781 	.db 0x94
      004CDB 80                    3782 	.db 0x80
      004CDC E2                    3783 	.db 0xe2
      004CDD 94                    3784 	.db 0x94
      004CDE 80                    3785 	.db 0x80
      004CDF E2                    3786 	.db 0xe2
      004CE0 94                    3787 	.db 0x94
      004CE1 80                    3788 	.db 0x80
      004CE2 E2                    3789 	.db 0xe2
      004CE3 94                    3790 	.db 0x94
      004CE4 80                    3791 	.db 0x80
      004CE5 E2                    3792 	.db 0xe2
      004CE6 94                    3793 	.db 0x94
      004CE7 80                    3794 	.db 0x80
      004CE8 E2                    3795 	.db 0xe2
      004CE9 94                    3796 	.db 0x94
      004CEA 80                    3797 	.db 0x80
      004CEB E2                    3798 	.db 0xe2
      004CEC 94                    3799 	.db 0x94
      004CED 80                    3800 	.db 0x80
      004CEE E2                    3801 	.db 0xe2
      004CEF 94                    3802 	.db 0x94
      004CF0 80                    3803 	.db 0x80
      004CF1 E2                    3804 	.db 0xe2
      004CF2 94                    3805 	.db 0x94
      004CF3 80                    3806 	.db 0x80
      004CF4 E2                    3807 	.db 0xe2
      004CF5 94                    3808 	.db 0x94
      004CF6 80                    3809 	.db 0x80
      004CF7 E2                    3810 	.db 0xe2
      004CF8 94                    3811 	.db 0x94
      004CF9 80                    3812 	.db 0x80
      004CFA E2                    3813 	.db 0xe2
      004CFB 94                    3814 	.db 0x94
      004CFC 80                    3815 	.db 0x80
      004CFD E2                    3816 	.db 0xe2
      004CFE 94                    3817 	.db 0x94
      004CFF 80                    3818 	.db 0x80
      004D00 E2                    3819 	.db 0xe2
      004D01 94                    3820 	.db 0x94
      004D02 80                    3821 	.db 0x80
      004D03 E2                    3822 	.db 0xe2
      004D04 94                    3823 	.db 0x94
      004D05 80                    3824 	.db 0x80
      004D06 E2                    3825 	.db 0xe2
      004D07 94                    3826 	.db 0x94
      004D08 80                    3827 	.db 0x80
      004D09 E2                    3828 	.db 0xe2
      004D0A 94                    3829 	.db 0x94
      004D0B 80                    3830 	.db 0x80
      004D0C E2                    3831 	.db 0xe2
      004D0D 94                    3832 	.db 0x94
      004D0E 80                    3833 	.db 0x80
      004D0F E2                    3834 	.db 0xe2
      004D10 94                    3835 	.db 0x94
      004D11 80                    3836 	.db 0x80
      004D12 E2                    3837 	.db 0xe2
      004D13 94                    3838 	.db 0x94
      004D14 80                    3839 	.db 0x80
      004D15 E2                    3840 	.db 0xe2
      004D16 94                    3841 	.db 0x94
      004D17 80                    3842 	.db 0x80
      004D18 E2                    3843 	.db 0xe2
      004D19 94                    3844 	.db 0x94
      004D1A 80                    3845 	.db 0x80
      004D1B E2                    3846 	.db 0xe2
      004D1C 94                    3847 	.db 0x94
      004D1D 80                    3848 	.db 0x80
      004D1E E2                    3849 	.db 0xe2
      004D1F 94                    3850 	.db 0x94
      004D20 80                    3851 	.db 0x80
      004D21 E2                    3852 	.db 0xe2
      004D22 94                    3853 	.db 0x94
      004D23 80                    3854 	.db 0x80
      004D24 E2                    3855 	.db 0xe2
      004D25 94                    3856 	.db 0x94
      004D26 80                    3857 	.db 0x80
      004D27 E2                    3858 	.db 0xe2
      004D28 94                    3859 	.db 0x94
      004D29 80                    3860 	.db 0x80
      004D2A E2                    3861 	.db 0xe2
      004D2B 94                    3862 	.db 0x94
      004D2C 98                    3863 	.db 0x98
      004D2D 0A                    3864 	.db 0x0a
      004D2E 0D                    3865 	.db 0x0d
      004D2F 00                    3866 	.db 0x00
                                   3867 	.area CSEG    (CODE)
                                   3868 	.area CONST   (CODE)
      004D30                       3869 ___str_13:
      004D30 7C 20 24 20 25 63     3870 	.ascii "| $ %c"
      004D36 0A                    3871 	.db 0x0a
      004D37 0D                    3872 	.db 0x0d
      004D38 00                    3873 	.db 0x00
                                   3874 	.area CSEG    (CODE)
                                   3875 	.area CONST   (CODE)
      004D39                       3876 ___str_14:
      004D39 0A                    3877 	.db 0x0a
      004D3A 0D                    3878 	.db 0x0d
      004D3B 00                    3879 	.db 0x00
                                   3880 	.area CSEG    (CODE)
                                   3881 	.area CONST   (CODE)
      004D3C                       3882 ___str_15:
      004D3C 0A                    3883 	.db 0x0a
      004D3D E2                    3884 	.db 0xe2
      004D3E 94                    3885 	.db 0x94
      004D3F 8C                    3886 	.db 0x8c
      004D40 E2                    3887 	.db 0xe2
      004D41 94                    3888 	.db 0x94
      004D42 80                    3889 	.db 0x80
      004D43 E2                    3890 	.db 0xe2
      004D44 94                    3891 	.db 0x94
      004D45 80                    3892 	.db 0x80
      004D46 E2                    3893 	.db 0xe2
      004D47 94                    3894 	.db 0x94
      004D48 80                    3895 	.db 0x80
      004D49 E2                    3896 	.db 0xe2
      004D4A 94                    3897 	.db 0x94
      004D4B 80                    3898 	.db 0x80
      004D4C E2                    3899 	.db 0xe2
      004D4D 94                    3900 	.db 0x94
      004D4E 80                    3901 	.db 0x80
      004D4F E2                    3902 	.db 0xe2
      004D50 94                    3903 	.db 0x94
      004D51 80                    3904 	.db 0x80
      004D52 E2                    3905 	.db 0xe2
      004D53 94                    3906 	.db 0x94
      004D54 80                    3907 	.db 0x80
      004D55 E2                    3908 	.db 0xe2
      004D56 94                    3909 	.db 0x94
      004D57 80                    3910 	.db 0x80
      004D58 E2                    3911 	.db 0xe2
      004D59 94                    3912 	.db 0x94
      004D5A 80                    3913 	.db 0x80
      004D5B E2                    3914 	.db 0xe2
      004D5C 94                    3915 	.db 0x94
      004D5D 80                    3916 	.db 0x80
      004D5E E2                    3917 	.db 0xe2
      004D5F 94                    3918 	.db 0x94
      004D60 80                    3919 	.db 0x80
      004D61 E2                    3920 	.db 0xe2
      004D62 94                    3921 	.db 0x94
      004D63 80                    3922 	.db 0x80
      004D64 E2                    3923 	.db 0xe2
      004D65 94                    3924 	.db 0x94
      004D66 80                    3925 	.db 0x80
      004D67 E2                    3926 	.db 0xe2
      004D68 94                    3927 	.db 0x94
      004D69 80                    3928 	.db 0x80
      004D6A E2                    3929 	.db 0xe2
      004D6B 94                    3930 	.db 0x94
      004D6C 80                    3931 	.db 0x80
      004D6D 20 57 52 49 54 45 20  3932 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      004D7E E2                    3933 	.db 0xe2
      004D7F 94                    3934 	.db 0x94
      004D80 80                    3935 	.db 0x80
      004D81 E2                    3936 	.db 0xe2
      004D82 94                    3937 	.db 0x94
      004D83 80                    3938 	.db 0x80
      004D84 E2                    3939 	.db 0xe2
      004D85 94                    3940 	.db 0x94
      004D86 80                    3941 	.db 0x80
      004D87 E2                    3942 	.db 0xe2
      004D88 94                    3943 	.db 0x94
      004D89 80                    3944 	.db 0x80
      004D8A E2                    3945 	.db 0xe2
      004D8B 94                    3946 	.db 0x94
      004D8C 80                    3947 	.db 0x80
      004D8D E2                    3948 	.db 0xe2
      004D8E 94                    3949 	.db 0x94
      004D8F 80                    3950 	.db 0x80
      004D90 E2                    3951 	.db 0xe2
      004D91 94                    3952 	.db 0x94
      004D92 80                    3953 	.db 0x80
      004D93 E2                    3954 	.db 0xe2
      004D94 94                    3955 	.db 0x94
      004D95 80                    3956 	.db 0x80
      004D96 E2                    3957 	.db 0xe2
      004D97 94                    3958 	.db 0x94
      004D98 80                    3959 	.db 0x80
      004D99 E2                    3960 	.db 0xe2
      004D9A 94                    3961 	.db 0x94
      004D9B 80                    3962 	.db 0x80
      004D9C E2                    3963 	.db 0xe2
      004D9D 94                    3964 	.db 0x94
      004D9E 80                    3965 	.db 0x80
      004D9F E2                    3966 	.db 0xe2
      004DA0 94                    3967 	.db 0x94
      004DA1 80                    3968 	.db 0x80
      004DA2 E2                    3969 	.db 0xe2
      004DA3 94                    3970 	.db 0x94
      004DA4 80                    3971 	.db 0x80
      004DA5 E2                    3972 	.db 0xe2
      004DA6 94                    3973 	.db 0x94
      004DA7 80                    3974 	.db 0x80
      004DA8 E2                    3975 	.db 0xe2
      004DA9 94                    3976 	.db 0x94
      004DAA 90                    3977 	.db 0x90
      004DAB 0A                    3978 	.db 0x0a
      004DAC 0D                    3979 	.db 0x0d
      004DAD 00                    3980 	.db 0x00
                                   3981 	.area CSEG    (CODE)
                                   3982 	.area CONST   (CODE)
      004DAE                       3983 ___str_16:
      004DAE 63 68 65 63 6B 20 70  3984 	.ascii "check point 1 "
             6F 69 6E 74 20 31 20
      004DBC 0A                    3985 	.db 0x0a
      004DBD 0D                    3986 	.db 0x0d
      004DBE 00                    3987 	.db 0x00
                                   3988 	.area CSEG    (CODE)
                                   3989 	.area CONST   (CODE)
      004DBF                       3990 ___str_17:
      004DBF 0A                    3991 	.db 0x0a
      004DC0 E2                    3992 	.db 0xe2
      004DC1 94                    3993 	.db 0x94
      004DC2 8C                    3994 	.db 0x8c
      004DC3 E2                    3995 	.db 0xe2
      004DC4 94                    3996 	.db 0x94
      004DC5 80                    3997 	.db 0x80
      004DC6 E2                    3998 	.db 0xe2
      004DC7 94                    3999 	.db 0x94
      004DC8 80                    4000 	.db 0x80
      004DC9 E2                    4001 	.db 0xe2
      004DCA 94                    4002 	.db 0x94
      004DCB 80                    4003 	.db 0x80
      004DCC E2                    4004 	.db 0xe2
      004DCD 94                    4005 	.db 0x94
      004DCE 80                    4006 	.db 0x80
      004DCF E2                    4007 	.db 0xe2
      004DD0 94                    4008 	.db 0x94
      004DD1 80                    4009 	.db 0x80
      004DD2 E2                    4010 	.db 0xe2
      004DD3 94                    4011 	.db 0x94
      004DD4 80                    4012 	.db 0x80
      004DD5 E2                    4013 	.db 0xe2
      004DD6 94                    4014 	.db 0x94
      004DD7 80                    4015 	.db 0x80
      004DD8 E2                    4016 	.db 0xe2
      004DD9 94                    4017 	.db 0x94
      004DDA 80                    4018 	.db 0x80
      004DDB E2                    4019 	.db 0xe2
      004DDC 94                    4020 	.db 0x94
      004DDD 80                    4021 	.db 0x80
      004DDE E2                    4022 	.db 0xe2
      004DDF 94                    4023 	.db 0x94
      004DE0 80                    4024 	.db 0x80
      004DE1 E2                    4025 	.db 0xe2
      004DE2 94                    4026 	.db 0x94
      004DE3 80                    4027 	.db 0x80
      004DE4 E2                    4028 	.db 0xe2
      004DE5 94                    4029 	.db 0x94
      004DE6 80                    4030 	.db 0x80
      004DE7 E2                    4031 	.db 0xe2
      004DE8 94                    4032 	.db 0x94
      004DE9 80                    4033 	.db 0x80
      004DEA E2                    4034 	.db 0xe2
      004DEB 94                    4035 	.db 0x94
      004DEC 80                    4036 	.db 0x80
      004DED E2                    4037 	.db 0xe2
      004DEE 94                    4038 	.db 0x94
      004DEF 80                    4039 	.db 0x80
      004DF0 20 52 45 41 44 20 4F  4040 	.ascii " READ OPERATION "
             50 45 52 41 54 49 4F
             4E 20
      004E00 E2                    4041 	.db 0xe2
      004E01 94                    4042 	.db 0x94
      004E02 80                    4043 	.db 0x80
      004E03 E2                    4044 	.db 0xe2
      004E04 94                    4045 	.db 0x94
      004E05 80                    4046 	.db 0x80
      004E06 E2                    4047 	.db 0xe2
      004E07 94                    4048 	.db 0x94
      004E08 80                    4049 	.db 0x80
      004E09 E2                    4050 	.db 0xe2
      004E0A 94                    4051 	.db 0x94
      004E0B 80                    4052 	.db 0x80
      004E0C E2                    4053 	.db 0xe2
      004E0D 94                    4054 	.db 0x94
      004E0E 80                    4055 	.db 0x80
      004E0F E2                    4056 	.db 0xe2
      004E10 94                    4057 	.db 0x94
      004E11 80                    4058 	.db 0x80
      004E12 E2                    4059 	.db 0xe2
      004E13 94                    4060 	.db 0x94
      004E14 80                    4061 	.db 0x80
      004E15 E2                    4062 	.db 0xe2
      004E16 94                    4063 	.db 0x94
      004E17 80                    4064 	.db 0x80
      004E18 E2                    4065 	.db 0xe2
      004E19 94                    4066 	.db 0x94
      004E1A 80                    4067 	.db 0x80
      004E1B E2                    4068 	.db 0xe2
      004E1C 94                    4069 	.db 0x94
      004E1D 80                    4070 	.db 0x80
      004E1E E2                    4071 	.db 0xe2
      004E1F 94                    4072 	.db 0x94
      004E20 80                    4073 	.db 0x80
      004E21 E2                    4074 	.db 0xe2
      004E22 94                    4075 	.db 0x94
      004E23 80                    4076 	.db 0x80
      004E24 E2                    4077 	.db 0xe2
      004E25 94                    4078 	.db 0x94
      004E26 80                    4079 	.db 0x80
      004E27 E2                    4080 	.db 0xe2
      004E28 94                    4081 	.db 0x94
      004E29 80                    4082 	.db 0x80
      004E2A E2                    4083 	.db 0xe2
      004E2B 94                    4084 	.db 0x94
      004E2C 80                    4085 	.db 0x80
      004E2D E2                    4086 	.db 0xe2
      004E2E 94                    4087 	.db 0x94
      004E2F 90                    4088 	.db 0x90
      004E30 0A                    4089 	.db 0x0a
      004E31 0D                    4090 	.db 0x0d
      004E32 00                    4091 	.db 0x00
                                   4092 	.area CSEG    (CODE)
                                   4093 	.area CONST   (CODE)
      004E33                       4094 ___str_18:
      004E33 7C 20 52 65 61 64 69  4095 	.ascii "| Reading from Address 0x%03X           |"
             6E 67 20 66 72 6F 6D
             20 41 64 64 72 65 73
             73 20 30 78 25 30 33
             58 20 20 20 20 20 20
             20 20 20 20 20 7C
      004E5C 0A                    4096 	.db 0x0a
      004E5D 0D                    4097 	.db 0x0d
      004E5E 00                    4098 	.db 0x00
                                   4099 	.area CSEG    (CODE)
                                   4100 	.area CONST   (CODE)
      004E5F                       4101 ___str_19:
      004E5F 0A                    4102 	.db 0x0a
      004E60 E2                    4103 	.db 0xe2
      004E61 94                    4104 	.db 0x94
      004E62 8C                    4105 	.db 0x8c
      004E63 E2                    4106 	.db 0xe2
      004E64 94                    4107 	.db 0x94
      004E65 80                    4108 	.db 0x80
      004E66 E2                    4109 	.db 0xe2
      004E67 94                    4110 	.db 0x94
      004E68 80                    4111 	.db 0x80
      004E69 E2                    4112 	.db 0xe2
      004E6A 94                    4113 	.db 0x94
      004E6B 80                    4114 	.db 0x80
      004E6C E2                    4115 	.db 0xe2
      004E6D 94                    4116 	.db 0x94
      004E6E 80                    4117 	.db 0x80
      004E6F E2                    4118 	.db 0xe2
      004E70 94                    4119 	.db 0x94
      004E71 80                    4120 	.db 0x80
      004E72 E2                    4121 	.db 0xe2
      004E73 94                    4122 	.db 0x94
      004E74 80                    4123 	.db 0x80
      004E75 E2                    4124 	.db 0xe2
      004E76 94                    4125 	.db 0x94
      004E77 80                    4126 	.db 0x80
      004E78 E2                    4127 	.db 0xe2
      004E79 94                    4128 	.db 0x94
      004E7A 80                    4129 	.db 0x80
      004E7B E2                    4130 	.db 0xe2
      004E7C 94                    4131 	.db 0x94
      004E7D 80                    4132 	.db 0x80
      004E7E E2                    4133 	.db 0xe2
      004E7F 94                    4134 	.db 0x94
      004E80 80                    4135 	.db 0x80
      004E81 E2                    4136 	.db 0xe2
      004E82 94                    4137 	.db 0x94
      004E83 80                    4138 	.db 0x80
      004E84 E2                    4139 	.db 0xe2
      004E85 94                    4140 	.db 0x94
      004E86 80                    4141 	.db 0x80
      004E87 E2                    4142 	.db 0xe2
      004E88 94                    4143 	.db 0x94
      004E89 80                    4144 	.db 0x80
      004E8A E2                    4145 	.db 0xe2
      004E8B 94                    4146 	.db 0x94
      004E8C 80                    4147 	.db 0x80
      004E8D E2                    4148 	.db 0xe2
      004E8E 94                    4149 	.db 0x94
      004E8F 80                    4150 	.db 0x80
      004E90 20 52 45 53 45 54 20  4151 	.ascii " RESET OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      004EA1 E2                    4152 	.db 0xe2
      004EA2 94                    4153 	.db 0x94
      004EA3 80                    4154 	.db 0x80
      004EA4 E2                    4155 	.db 0xe2
      004EA5 94                    4156 	.db 0x94
      004EA6 80                    4157 	.db 0x80
      004EA7 E2                    4158 	.db 0xe2
      004EA8 94                    4159 	.db 0x94
      004EA9 80                    4160 	.db 0x80
      004EAA E2                    4161 	.db 0xe2
      004EAB 94                    4162 	.db 0x94
      004EAC 80                    4163 	.db 0x80
      004EAD E2                    4164 	.db 0xe2
      004EAE 94                    4165 	.db 0x94
      004EAF 80                    4166 	.db 0x80
      004EB0 E2                    4167 	.db 0xe2
      004EB1 94                    4168 	.db 0x94
      004EB2 80                    4169 	.db 0x80
      004EB3 E2                    4170 	.db 0xe2
      004EB4 94                    4171 	.db 0x94
      004EB5 80                    4172 	.db 0x80
      004EB6 E2                    4173 	.db 0xe2
      004EB7 94                    4174 	.db 0x94
      004EB8 80                    4175 	.db 0x80
      004EB9 E2                    4176 	.db 0xe2
      004EBA 94                    4177 	.db 0x94
      004EBB 80                    4178 	.db 0x80
      004EBC E2                    4179 	.db 0xe2
      004EBD 94                    4180 	.db 0x94
      004EBE 80                    4181 	.db 0x80
      004EBF E2                    4182 	.db 0xe2
      004EC0 94                    4183 	.db 0x94
      004EC1 80                    4184 	.db 0x80
      004EC2 E2                    4185 	.db 0xe2
      004EC3 94                    4186 	.db 0x94
      004EC4 90                    4187 	.db 0x90
      004EC5 0A                    4188 	.db 0x0a
      004EC6 0D                    4189 	.db 0x0d
      004EC7 00                    4190 	.db 0x00
                                   4191 	.area CSEG    (CODE)
                                   4192 	.area CONST   (CODE)
      004EC8                       4193 ___str_20:
      004EC8 0A                    4194 	.db 0x0a
      004EC9 E2                    4195 	.db 0xe2
      004ECA 94                    4196 	.db 0x94
      004ECB 8C                    4197 	.db 0x8c
      004ECC E2                    4198 	.db 0xe2
      004ECD 94                    4199 	.db 0x94
      004ECE 80                    4200 	.db 0x80
      004ECF E2                    4201 	.db 0xe2
      004ED0 94                    4202 	.db 0x94
      004ED1 80                    4203 	.db 0x80
      004ED2 E2                    4204 	.db 0xe2
      004ED3 94                    4205 	.db 0x94
      004ED4 80                    4206 	.db 0x80
      004ED5 E2                    4207 	.db 0xe2
      004ED6 94                    4208 	.db 0x94
      004ED7 80                    4209 	.db 0x80
      004ED8 E2                    4210 	.db 0xe2
      004ED9 94                    4211 	.db 0x94
      004EDA 80                    4212 	.db 0x80
      004EDB E2                    4213 	.db 0xe2
      004EDC 94                    4214 	.db 0x94
      004EDD 80                    4215 	.db 0x80
      004EDE E2                    4216 	.db 0xe2
      004EDF 94                    4217 	.db 0x94
      004EE0 80                    4218 	.db 0x80
      004EE1 E2                    4219 	.db 0xe2
      004EE2 94                    4220 	.db 0x94
      004EE3 80                    4221 	.db 0x80
      004EE4 E2                    4222 	.db 0xe2
      004EE5 94                    4223 	.db 0x94
      004EE6 80                    4224 	.db 0x80
      004EE7 E2                    4225 	.db 0xe2
      004EE8 94                    4226 	.db 0x94
      004EE9 80                    4227 	.db 0x80
      004EEA E2                    4228 	.db 0xe2
      004EEB 94                    4229 	.db 0x94
      004EEC 80                    4230 	.db 0x80
      004EED E2                    4231 	.db 0xe2
      004EEE 94                    4232 	.db 0x94
      004EEF 80                    4233 	.db 0x80
      004EF0 E2                    4234 	.db 0xe2
      004EF1 94                    4235 	.db 0x94
      004EF2 80                    4236 	.db 0x80
      004EF3 20 48 45 58 20 44 55  4237 	.ascii " HEX DUMP OPERATION "
             4D 50 20 4F 50 45 52
             41 54 49 4F 4E 20
      004F07 E2                    4238 	.db 0xe2
      004F08 94                    4239 	.db 0x94
      004F09 80                    4240 	.db 0x80
      004F0A E2                    4241 	.db 0xe2
      004F0B 94                    4242 	.db 0x94
      004F0C 80                    4243 	.db 0x80
      004F0D E2                    4244 	.db 0xe2
      004F0E 94                    4245 	.db 0x94
      004F0F 80                    4246 	.db 0x80
      004F10 E2                    4247 	.db 0xe2
      004F11 94                    4248 	.db 0x94
      004F12 80                    4249 	.db 0x80
      004F13 E2                    4250 	.db 0xe2
      004F14 94                    4251 	.db 0x94
      004F15 80                    4252 	.db 0x80
      004F16 E2                    4253 	.db 0xe2
      004F17 94                    4254 	.db 0x94
      004F18 80                    4255 	.db 0x80
      004F19 E2                    4256 	.db 0xe2
      004F1A 94                    4257 	.db 0x94
      004F1B 80                    4258 	.db 0x80
      004F1C E2                    4259 	.db 0xe2
      004F1D 94                    4260 	.db 0x94
      004F1E 80                    4261 	.db 0x80
      004F1F E2                    4262 	.db 0xe2
      004F20 94                    4263 	.db 0x94
      004F21 80                    4264 	.db 0x80
      004F22 E2                    4265 	.db 0xe2
      004F23 94                    4266 	.db 0x94
      004F24 80                    4267 	.db 0x80
      004F25 E2                    4268 	.db 0xe2
      004F26 94                    4269 	.db 0x94
      004F27 80                    4270 	.db 0x80
      004F28 E2                    4271 	.db 0xe2
      004F29 94                    4272 	.db 0x94
      004F2A 80                    4273 	.db 0x80
      004F2B E2                    4274 	.db 0xe2
      004F2C 94                    4275 	.db 0x94
      004F2D 80                    4276 	.db 0x80
      004F2E E2                    4277 	.db 0xe2
      004F2F 94                    4278 	.db 0x94
      004F30 80                    4279 	.db 0x80
      004F31 E2                    4280 	.db 0xe2
      004F32 94                    4281 	.db 0x94
      004F33 80                    4282 	.db 0x80
      004F34 E2                    4283 	.db 0xe2
      004F35 94                    4284 	.db 0x94
      004F36 90                    4285 	.db 0x90
      004F37 0A                    4286 	.db 0x0a
      004F38 0D                    4287 	.db 0x0d
      004F39 00                    4288 	.db 0x00
                                   4289 	.area CSEG    (CODE)
                                   4290 	.area CONST   (CODE)
      004F3A                       4291 ___str_21:
      004F3A 49 4E 56 41 4C 49 44  4292 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      004F47 0A                    4293 	.db 0x0a
      004F48 0D                    4294 	.db 0x0d
      004F49 00                    4295 	.db 0x00
                                   4296 	.area CSEG    (CODE)
                                   4297 	.area CONST   (CODE)
      004F4A                       4298 ___str_22:
      004F4A E2                    4299 	.db 0xe2
      004F4B 94                    4300 	.db 0x94
      004F4C 82                    4301 	.db 0x82
      004F4D 20 45 6E 74 65 72 20  4302 	.ascii " Enter address (hex, up to 3 characters): "
             61 64 64 72 65 73 73
             20 28 68 65 78 2C 20
             75 70 20 74 6F 20 33
             20 63 68 61 72 61 63
             74 65 72 73 29 3A 20
      004F77 0A                    4303 	.db 0x0a
      004F78 0D                    4304 	.db 0x0d
      004F79 7C                    4305 	.ascii "|"
      004F7A 00                    4306 	.db 0x00
                                   4307 	.area CSEG    (CODE)
                                   4308 	.area CONST   (CODE)
      004F7B                       4309 ___str_23:
      004F7B 7C 20 24 20           4310 	.ascii "| $ "
      004F7F 00                    4311 	.db 0x00
                                   4312 	.area CSEG    (CODE)
                                   4313 	.area CONST   (CODE)
      004F80                       4314 ___str_24:
      004F80 0A                    4315 	.db 0x0a
      004F81 0D                    4316 	.db 0x0d
      004F82 E2                    4317 	.db 0xe2
      004F83 94                    4318 	.db 0x94
      004F84 82                    4319 	.db 0x82
      004F85 20 45 6E 74 65 72 65  4320 	.ascii " Entered address: 0x%03X"
             64 20 61 64 64 72 65
             73 73 3A 20 30 78 25
             30 33 58
      004F9D 0A                    4321 	.db 0x0a
      004F9E 0D                    4322 	.db 0x0d
      004F9F 00                    4323 	.db 0x00
                                   4324 	.area CSEG    (CODE)
                                   4325 	.area CONST   (CODE)
      004FA0                       4326 ___str_25:
      004FA0 E2                    4327 	.db 0xe2
      004FA1 95                    4328 	.db 0x95
      004FA2 94                    4329 	.db 0x94
      004FA3 E2                    4330 	.db 0xe2
      004FA4 95                    4331 	.db 0x95
      004FA5 90                    4332 	.db 0x90
      004FA6 E2                    4333 	.db 0xe2
      004FA7 95                    4334 	.db 0x95
      004FA8 90                    4335 	.db 0x90
      004FA9 E2                    4336 	.db 0xe2
      004FAA 95                    4337 	.db 0x95
      004FAB 90                    4338 	.db 0x90
      004FAC E2                    4339 	.db 0xe2
      004FAD 95                    4340 	.db 0x95
      004FAE 90                    4341 	.db 0x90
      004FAF E2                    4342 	.db 0xe2
      004FB0 95                    4343 	.db 0x95
      004FB1 90                    4344 	.db 0x90
      004FB2 E2                    4345 	.db 0xe2
      004FB3 95                    4346 	.db 0x95
      004FB4 90                    4347 	.db 0x90
      004FB5 E2                    4348 	.db 0xe2
      004FB6 95                    4349 	.db 0x95
      004FB7 90                    4350 	.db 0x90
      004FB8 E2                    4351 	.db 0xe2
      004FB9 95                    4352 	.db 0x95
      004FBA 90                    4353 	.db 0x90
      004FBB E2                    4354 	.db 0xe2
      004FBC 95                    4355 	.db 0x95
      004FBD 90                    4356 	.db 0x90
      004FBE E2                    4357 	.db 0xe2
      004FBF 95                    4358 	.db 0x95
      004FC0 90                    4359 	.db 0x90
      004FC1 E2                    4360 	.db 0xe2
      004FC2 95                    4361 	.db 0x95
      004FC3 90                    4362 	.db 0x90
      004FC4 E2                    4363 	.db 0xe2
      004FC5 95                    4364 	.db 0x95
      004FC6 90                    4365 	.db 0x90
      004FC7 E2                    4366 	.db 0xe2
      004FC8 95                    4367 	.db 0x95
      004FC9 90                    4368 	.db 0x90
      004FCA E2                    4369 	.db 0xe2
      004FCB 95                    4370 	.db 0x95
      004FCC 90                    4371 	.db 0x90
      004FCD E2                    4372 	.db 0xe2
      004FCE 95                    4373 	.db 0x95
      004FCF 90                    4374 	.db 0x90
      004FD0 E2                    4375 	.db 0xe2
      004FD1 95                    4376 	.db 0x95
      004FD2 90                    4377 	.db 0x90
      004FD3 E2                    4378 	.db 0xe2
      004FD4 95                    4379 	.db 0x95
      004FD5 90                    4380 	.db 0x90
      004FD6 E2                    4381 	.db 0xe2
      004FD7 95                    4382 	.db 0x95
      004FD8 90                    4383 	.db 0x90
      004FD9 E2                    4384 	.db 0xe2
      004FDA 95                    4385 	.db 0x95
      004FDB 90                    4386 	.db 0x90
      004FDC E2                    4387 	.db 0xe2
      004FDD 95                    4388 	.db 0x95
      004FDE 90                    4389 	.db 0x90
      004FDF E2                    4390 	.db 0xe2
      004FE0 95                    4391 	.db 0x95
      004FE1 90                    4392 	.db 0x90
      004FE2 E2                    4393 	.db 0xe2
      004FE3 95                    4394 	.db 0x95
      004FE4 90                    4395 	.db 0x90
      004FE5 E2                    4396 	.db 0xe2
      004FE6 95                    4397 	.db 0x95
      004FE7 90                    4398 	.db 0x90
      004FE8 E2                    4399 	.db 0xe2
      004FE9 95                    4400 	.db 0x95
      004FEA 90                    4401 	.db 0x90
      004FEB E2                    4402 	.db 0xe2
      004FEC 95                    4403 	.db 0x95
      004FED 90                    4404 	.db 0x90
      004FEE E2                    4405 	.db 0xe2
      004FEF 95                    4406 	.db 0x95
      004FF0 90                    4407 	.db 0x90
      004FF1 E2                    4408 	.db 0xe2
      004FF2 95                    4409 	.db 0x95
      004FF3 90                    4410 	.db 0x90
      004FF4 E2                    4411 	.db 0xe2
      004FF5 95                    4412 	.db 0x95
      004FF6 90                    4413 	.db 0x90
      004FF7 E2                    4414 	.db 0xe2
      004FF8 95                    4415 	.db 0x95
      004FF9 90                    4416 	.db 0x90
      004FFA E2                    4417 	.db 0xe2
      004FFB 95                    4418 	.db 0x95
      004FFC 90                    4419 	.db 0x90
      004FFD E2                    4420 	.db 0xe2
      004FFE 95                    4421 	.db 0x95
      004FFF 90                    4422 	.db 0x90
      005000 E2                    4423 	.db 0xe2
      005001 95                    4424 	.db 0x95
      005002 90                    4425 	.db 0x90
      005003 E2                    4426 	.db 0xe2
      005004 95                    4427 	.db 0x95
      005005 90                    4428 	.db 0x90
      005006 E2                    4429 	.db 0xe2
      005007 95                    4430 	.db 0x95
      005008 90                    4431 	.db 0x90
      005009 E2                    4432 	.db 0xe2
      00500A 95                    4433 	.db 0x95
      00500B 90                    4434 	.db 0x90
      00500C E2                    4435 	.db 0xe2
      00500D 95                    4436 	.db 0x95
      00500E 90                    4437 	.db 0x90
      00500F E2                    4438 	.db 0xe2
      005010 95                    4439 	.db 0x95
      005011 90                    4440 	.db 0x90
      005012 E2                    4441 	.db 0xe2
      005013 95                    4442 	.db 0x95
      005014 90                    4443 	.db 0x90
      005015 E2                    4444 	.db 0xe2
      005016 95                    4445 	.db 0x95
      005017 90                    4446 	.db 0x90
      005018 E2                    4447 	.db 0xe2
      005019 95                    4448 	.db 0x95
      00501A 90                    4449 	.db 0x90
      00501B E2                    4450 	.db 0xe2
      00501C 95                    4451 	.db 0x95
      00501D 90                    4452 	.db 0x90
      00501E E2                    4453 	.db 0xe2
      00501F 95                    4454 	.db 0x95
      005020 90                    4455 	.db 0x90
      005021 E2                    4456 	.db 0xe2
      005022 95                    4457 	.db 0x95
      005023 97                    4458 	.db 0x97
      005024 0A                    4459 	.db 0x0a
      005025 0D                    4460 	.db 0x0d
      005026 00                    4461 	.db 0x00
                                   4462 	.area CSEG    (CODE)
                                   4463 	.area CONST   (CODE)
      005027                       4464 ___str_26:
      005027 E2                    4465 	.db 0xe2
      005028 95                    4466 	.db 0x95
      005029 91                    4467 	.db 0x91
      00502A 20 20 20 20 20 20 20  4468 	.ascii "       ! ADDRESS OUT OF RANGE !         "
             21 20 41 44 44 52 45
             53 53 20 4F 55 54 20
             4F 46 20 52 41 4E 47
             45 20 21 20 20 20 20
             20 20 20 20 20
      005052 E2                    4469 	.db 0xe2
      005053 95                    4470 	.db 0x95
      005054 91                    4471 	.db 0x91
      005055 0A                    4472 	.db 0x0a
      005056 0D                    4473 	.db 0x0d
      005057 00                    4474 	.db 0x00
                                   4475 	.area CSEG    (CODE)
                                   4476 	.area CONST   (CODE)
      005058                       4477 ___str_27:
      005058 E2                    4478 	.db 0xe2
      005059 95                    4479 	.db 0x95
      00505A 91                    4480 	.db 0x91
      00505B 20 20 20 20 20 50 6C  4481 	.ascii "     Please Enter Valid Address         "
             65 61 73 65 20 45 6E
             74 65 72 20 56 61 6C
             69 64 20 41 64 64 72
             65 73 73 20 20 20 20
             20 20 20 20 20
      005083 E2                    4482 	.db 0xe2
      005084 95                    4483 	.db 0x95
      005085 91                    4484 	.db 0x91
      005086 0A                    4485 	.db 0x0a
      005087 0D                    4486 	.db 0x0d
      005088 00                    4487 	.db 0x00
                                   4488 	.area CSEG    (CODE)
                                   4489 	.area CONST   (CODE)
      005089                       4490 ___str_28:
      005089 E2                    4491 	.db 0xe2
      00508A 95                    4492 	.db 0x95
      00508B 9A                    4493 	.db 0x9a
      00508C E2                    4494 	.db 0xe2
      00508D 95                    4495 	.db 0x95
      00508E 90                    4496 	.db 0x90
      00508F E2                    4497 	.db 0xe2
      005090 95                    4498 	.db 0x95
      005091 90                    4499 	.db 0x90
      005092 E2                    4500 	.db 0xe2
      005093 95                    4501 	.db 0x95
      005094 90                    4502 	.db 0x90
      005095 E2                    4503 	.db 0xe2
      005096 95                    4504 	.db 0x95
      005097 90                    4505 	.db 0x90
      005098 E2                    4506 	.db 0xe2
      005099 95                    4507 	.db 0x95
      00509A 90                    4508 	.db 0x90
      00509B E2                    4509 	.db 0xe2
      00509C 95                    4510 	.db 0x95
      00509D 90                    4511 	.db 0x90
      00509E E2                    4512 	.db 0xe2
      00509F 95                    4513 	.db 0x95
      0050A0 90                    4514 	.db 0x90
      0050A1 E2                    4515 	.db 0xe2
      0050A2 95                    4516 	.db 0x95
      0050A3 90                    4517 	.db 0x90
      0050A4 E2                    4518 	.db 0xe2
      0050A5 95                    4519 	.db 0x95
      0050A6 90                    4520 	.db 0x90
      0050A7 E2                    4521 	.db 0xe2
      0050A8 95                    4522 	.db 0x95
      0050A9 90                    4523 	.db 0x90
      0050AA E2                    4524 	.db 0xe2
      0050AB 95                    4525 	.db 0x95
      0050AC 90                    4526 	.db 0x90
      0050AD E2                    4527 	.db 0xe2
      0050AE 95                    4528 	.db 0x95
      0050AF 90                    4529 	.db 0x90
      0050B0 E2                    4530 	.db 0xe2
      0050B1 95                    4531 	.db 0x95
      0050B2 90                    4532 	.db 0x90
      0050B3 E2                    4533 	.db 0xe2
      0050B4 95                    4534 	.db 0x95
      0050B5 90                    4535 	.db 0x90
      0050B6 E2                    4536 	.db 0xe2
      0050B7 95                    4537 	.db 0x95
      0050B8 90                    4538 	.db 0x90
      0050B9 E2                    4539 	.db 0xe2
      0050BA 95                    4540 	.db 0x95
      0050BB 90                    4541 	.db 0x90
      0050BC E2                    4542 	.db 0xe2
      0050BD 95                    4543 	.db 0x95
      0050BE 90                    4544 	.db 0x90
      0050BF E2                    4545 	.db 0xe2
      0050C0 95                    4546 	.db 0x95
      0050C1 90                    4547 	.db 0x90
      0050C2 E2                    4548 	.db 0xe2
      0050C3 95                    4549 	.db 0x95
      0050C4 90                    4550 	.db 0x90
      0050C5 E2                    4551 	.db 0xe2
      0050C6 95                    4552 	.db 0x95
      0050C7 90                    4553 	.db 0x90
      0050C8 E2                    4554 	.db 0xe2
      0050C9 95                    4555 	.db 0x95
      0050CA 90                    4556 	.db 0x90
      0050CB E2                    4557 	.db 0xe2
      0050CC 95                    4558 	.db 0x95
      0050CD 90                    4559 	.db 0x90
      0050CE E2                    4560 	.db 0xe2
      0050CF 95                    4561 	.db 0x95
      0050D0 90                    4562 	.db 0x90
      0050D1 E2                    4563 	.db 0xe2
      0050D2 95                    4564 	.db 0x95
      0050D3 90                    4565 	.db 0x90
      0050D4 E2                    4566 	.db 0xe2
      0050D5 95                    4567 	.db 0x95
      0050D6 90                    4568 	.db 0x90
      0050D7 E2                    4569 	.db 0xe2
      0050D8 95                    4570 	.db 0x95
      0050D9 90                    4571 	.db 0x90
      0050DA E2                    4572 	.db 0xe2
      0050DB 95                    4573 	.db 0x95
      0050DC 90                    4574 	.db 0x90
      0050DD E2                    4575 	.db 0xe2
      0050DE 95                    4576 	.db 0x95
      0050DF 90                    4577 	.db 0x90
      0050E0 E2                    4578 	.db 0xe2
      0050E1 95                    4579 	.db 0x95
      0050E2 90                    4580 	.db 0x90
      0050E3 E2                    4581 	.db 0xe2
      0050E4 95                    4582 	.db 0x95
      0050E5 90                    4583 	.db 0x90
      0050E6 E2                    4584 	.db 0xe2
      0050E7 95                    4585 	.db 0x95
      0050E8 90                    4586 	.db 0x90
      0050E9 E2                    4587 	.db 0xe2
      0050EA 95                    4588 	.db 0x95
      0050EB 90                    4589 	.db 0x90
      0050EC E2                    4590 	.db 0xe2
      0050ED 95                    4591 	.db 0x95
      0050EE 90                    4592 	.db 0x90
      0050EF E2                    4593 	.db 0xe2
      0050F0 95                    4594 	.db 0x95
      0050F1 90                    4595 	.db 0x90
      0050F2 E2                    4596 	.db 0xe2
      0050F3 95                    4597 	.db 0x95
      0050F4 90                    4598 	.db 0x90
      0050F5 E2                    4599 	.db 0xe2
      0050F6 95                    4600 	.db 0x95
      0050F7 90                    4601 	.db 0x90
      0050F8 E2                    4602 	.db 0xe2
      0050F9 95                    4603 	.db 0x95
      0050FA 90                    4604 	.db 0x90
      0050FB E2                    4605 	.db 0xe2
      0050FC 95                    4606 	.db 0x95
      0050FD 90                    4607 	.db 0x90
      0050FE E2                    4608 	.db 0xe2
      0050FF 95                    4609 	.db 0x95
      005100 90                    4610 	.db 0x90
      005101 E2                    4611 	.db 0xe2
      005102 95                    4612 	.db 0x95
      005103 90                    4613 	.db 0x90
      005104 E2                    4614 	.db 0xe2
      005105 95                    4615 	.db 0x95
      005106 90                    4616 	.db 0x90
      005107 E2                    4617 	.db 0xe2
      005108 95                    4618 	.db 0x95
      005109 90                    4619 	.db 0x90
      00510A E2                    4620 	.db 0xe2
      00510B 95                    4621 	.db 0x95
      00510C 9D                    4622 	.db 0x9d
      00510D 0A                    4623 	.db 0x0a
      00510E 0D                    4624 	.db 0x0d
      00510F 00                    4625 	.db 0x00
                                   4626 	.area CSEG    (CODE)
                                   4627 	.area CONST   (CODE)
      005110                       4628 ___str_29:
      005110 E2                    4629 	.db 0xe2
      005111 94                    4630 	.db 0x94
      005112 82                    4631 	.db 0x82
      005113 20 45 6E 74 65 72 20  4632 	.ascii " Enter data (hex, up to 2 characters): "
             64 61 74 61 20 28 68
             65 78 2C 20 75 70 20
             74 6F 20 32 20 63 68
             61 72 61 63 74 65 72
             73 29 3A 20
      00513A 0A                    4633 	.db 0x0a
      00513B 0D                    4634 	.db 0x0d
      00513C 7C                    4635 	.ascii "|"
      00513D 00                    4636 	.db 0x00
                                   4637 	.area CSEG    (CODE)
                                   4638 	.area CONST   (CODE)
      00513E                       4639 ___str_30:
      00513E 24 20                 4640 	.ascii "$ "
      005140 00                    4641 	.db 0x00
                                   4642 	.area CSEG    (CODE)
                                   4643 	.area CONST   (CODE)
      005141                       4644 ___str_31:
      005141 0A                    4645 	.db 0x0a
      005142 0D                    4646 	.db 0x0d
      005143 E2                    4647 	.db 0xe2
      005144 94                    4648 	.db 0x94
      005145 82                    4649 	.db 0x82
      005146 20 45 6E 74 65 72 65  4650 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      00515B 0A                    4651 	.db 0x0a
      00515C 0D                    4652 	.db 0x0d
      00515D 00                    4653 	.db 0x00
                                   4654 	.area CSEG    (CODE)
                                   4655 	.area CONST   (CODE)
      00515E                       4656 ___str_32:
      00515E 44 61 74 61 20 6F 75  4657 	.ascii "Data out of Range"
             74 20 6F 66 20 52 61
             6E 67 65
      00516F 0A                    4658 	.db 0x0a
      005170 0D                    4659 	.db 0x0d
      005171 00                    4660 	.db 0x00
                                   4661 	.area CSEG    (CODE)
                                   4662 	.area CONST   (CODE)
      005172                       4663 ___str_33:
      005172 45 72 72 6F 72 3A 20  4664 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      00519A 0A                    4665 	.db 0x0a
      00519B 0D                    4666 	.db 0x0d
      00519C 00                    4667 	.db 0x00
                                   4668 	.area CSEG    (CODE)
                                   4669 	.area CONST   (CODE)
      00519D                       4670 ___str_34:
      00519D 45 72 72 6F 72 3A 20  4671 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      0051BD 0A                    4672 	.db 0x0a
      0051BE 0D                    4673 	.db 0x0d
      0051BF 00                    4674 	.db 0x00
                                   4675 	.area CSEG    (CODE)
                                   4676 	.area CONST   (CODE)
      0051C0                       4677 ___str_35:
      0051C0 45 72 72 6F 72 3A 20  4678 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      0051D6 0A                    4679 	.db 0x0a
      0051D7 0D                    4680 	.db 0x0d
      0051D8 00                    4681 	.db 0x00
                                   4682 	.area CSEG    (CODE)
                                   4683 	.area CONST   (CODE)
      0051D9                       4684 ___str_36:
      0051D9 7C 20 57 72 69 74 69  4685 	.ascii "| Writing at Address 0x%03X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 33 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      00520B 0A                    4686 	.db 0x0a
      00520C 0D                    4687 	.db 0x0d
      00520D 00                    4688 	.db 0x00
                                   4689 	.area CSEG    (CODE)
                                   4690 	.area CONST   (CODE)
      00520E                       4691 ___str_37:
      00520E E2                    4692 	.db 0xe2
      00520F 94                    4693 	.db 0x94
      005210 82                    4694 	.db 0x82
      005211 20 57 72 69 74 65 20  4695 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      005240 E2                    4696 	.db 0xe2
      005241 94                    4697 	.db 0x94
      005242 82                    4698 	.db 0x82
      005243 0A                    4699 	.db 0x0a
      005244 0D                    4700 	.db 0x0d
      005245 00                    4701 	.db 0x00
                                   4702 	.area CSEG    (CODE)
                                   4703 	.area CONST   (CODE)
      005246                       4704 ___str_38:
      005246 E2                    4705 	.db 0xe2
      005247 94                    4706 	.db 0x94
      005248 94                    4707 	.db 0x94
      005249 E2                    4708 	.db 0xe2
      00524A 94                    4709 	.db 0x94
      00524B 80                    4710 	.db 0x80
      00524C E2                    4711 	.db 0xe2
      00524D 94                    4712 	.db 0x94
      00524E 80                    4713 	.db 0x80
      00524F E2                    4714 	.db 0xe2
      005250 94                    4715 	.db 0x94
      005251 80                    4716 	.db 0x80
      005252 E2                    4717 	.db 0xe2
      005253 94                    4718 	.db 0x94
      005254 80                    4719 	.db 0x80
      005255 E2                    4720 	.db 0xe2
      005256 94                    4721 	.db 0x94
      005257 80                    4722 	.db 0x80
      005258 E2                    4723 	.db 0xe2
      005259 94                    4724 	.db 0x94
      00525A 80                    4725 	.db 0x80
      00525B E2                    4726 	.db 0xe2
      00525C 94                    4727 	.db 0x94
      00525D 80                    4728 	.db 0x80
      00525E E2                    4729 	.db 0xe2
      00525F 94                    4730 	.db 0x94
      005260 80                    4731 	.db 0x80
      005261 E2                    4732 	.db 0xe2
      005262 94                    4733 	.db 0x94
      005263 80                    4734 	.db 0x80
      005264 E2                    4735 	.db 0xe2
      005265 94                    4736 	.db 0x94
      005266 80                    4737 	.db 0x80
      005267 E2                    4738 	.db 0xe2
      005268 94                    4739 	.db 0x94
      005269 80                    4740 	.db 0x80
      00526A E2                    4741 	.db 0xe2
      00526B 94                    4742 	.db 0x94
      00526C 80                    4743 	.db 0x80
      00526D E2                    4744 	.db 0xe2
      00526E 94                    4745 	.db 0x94
      00526F 80                    4746 	.db 0x80
      005270 E2                    4747 	.db 0xe2
      005271 94                    4748 	.db 0x94
      005272 80                    4749 	.db 0x80
      005273 E2                    4750 	.db 0xe2
      005274 94                    4751 	.db 0x94
      005275 80                    4752 	.db 0x80
      005276 E2                    4753 	.db 0xe2
      005277 94                    4754 	.db 0x94
      005278 80                    4755 	.db 0x80
      005279 E2                    4756 	.db 0xe2
      00527A 94                    4757 	.db 0x94
      00527B 80                    4758 	.db 0x80
      00527C E2                    4759 	.db 0xe2
      00527D 94                    4760 	.db 0x94
      00527E 80                    4761 	.db 0x80
      00527F E2                    4762 	.db 0xe2
      005280 94                    4763 	.db 0x94
      005281 80                    4764 	.db 0x80
      005282 E2                    4765 	.db 0xe2
      005283 94                    4766 	.db 0x94
      005284 80                    4767 	.db 0x80
      005285 E2                    4768 	.db 0xe2
      005286 94                    4769 	.db 0x94
      005287 80                    4770 	.db 0x80
      005288 E2                    4771 	.db 0xe2
      005289 94                    4772 	.db 0x94
      00528A 80                    4773 	.db 0x80
      00528B E2                    4774 	.db 0xe2
      00528C 94                    4775 	.db 0x94
      00528D 80                    4776 	.db 0x80
      00528E E2                    4777 	.db 0xe2
      00528F 94                    4778 	.db 0x94
      005290 80                    4779 	.db 0x80
      005291 E2                    4780 	.db 0xe2
      005292 94                    4781 	.db 0x94
      005293 80                    4782 	.db 0x80
      005294 E2                    4783 	.db 0xe2
      005295 94                    4784 	.db 0x94
      005296 80                    4785 	.db 0x80
      005297 E2                    4786 	.db 0xe2
      005298 94                    4787 	.db 0x94
      005299 80                    4788 	.db 0x80
      00529A E2                    4789 	.db 0xe2
      00529B 94                    4790 	.db 0x94
      00529C 80                    4791 	.db 0x80
      00529D E2                    4792 	.db 0xe2
      00529E 94                    4793 	.db 0x94
      00529F 80                    4794 	.db 0x80
      0052A0 E2                    4795 	.db 0xe2
      0052A1 94                    4796 	.db 0x94
      0052A2 80                    4797 	.db 0x80
      0052A3 E2                    4798 	.db 0xe2
      0052A4 94                    4799 	.db 0x94
      0052A5 80                    4800 	.db 0x80
      0052A6 E2                    4801 	.db 0xe2
      0052A7 94                    4802 	.db 0x94
      0052A8 80                    4803 	.db 0x80
      0052A9 E2                    4804 	.db 0xe2
      0052AA 94                    4805 	.db 0x94
      0052AB 80                    4806 	.db 0x80
      0052AC E2                    4807 	.db 0xe2
      0052AD 94                    4808 	.db 0x94
      0052AE 80                    4809 	.db 0x80
      0052AF E2                    4810 	.db 0xe2
      0052B0 94                    4811 	.db 0x94
      0052B1 80                    4812 	.db 0x80
      0052B2 E2                    4813 	.db 0xe2
      0052B3 94                    4814 	.db 0x94
      0052B4 80                    4815 	.db 0x80
      0052B5 E2                    4816 	.db 0xe2
      0052B6 94                    4817 	.db 0x94
      0052B7 80                    4818 	.db 0x80
      0052B8 E2                    4819 	.db 0xe2
      0052B9 94                    4820 	.db 0x94
      0052BA 80                    4821 	.db 0x80
      0052BB E2                    4822 	.db 0xe2
      0052BC 94                    4823 	.db 0x94
      0052BD 80                    4824 	.db 0x80
      0052BE E2                    4825 	.db 0xe2
      0052BF 94                    4826 	.db 0x94
      0052C0 80                    4827 	.db 0x80
      0052C1 E2                    4828 	.db 0xe2
      0052C2 94                    4829 	.db 0x94
      0052C3 80                    4830 	.db 0x80
      0052C4 E2                    4831 	.db 0xe2
      0052C5 94                    4832 	.db 0x94
      0052C6 80                    4833 	.db 0x80
      0052C7 E2                    4834 	.db 0xe2
      0052C8 94                    4835 	.db 0x94
      0052C9 80                    4836 	.db 0x80
      0052CA E2                    4837 	.db 0xe2
      0052CB 94                    4838 	.db 0x94
      0052CC 80                    4839 	.db 0x80
      0052CD E2                    4840 	.db 0xe2
      0052CE 94                    4841 	.db 0x94
      0052CF 80                    4842 	.db 0x80
      0052D0 E2                    4843 	.db 0xe2
      0052D1 94                    4844 	.db 0x94
      0052D2 80                    4845 	.db 0x80
      0052D3 E2                    4846 	.db 0xe2
      0052D4 94                    4847 	.db 0x94
      0052D5 80                    4848 	.db 0x80
      0052D6 E2                    4849 	.db 0xe2
      0052D7 94                    4850 	.db 0x94
      0052D8 98                    4851 	.db 0x98
      0052D9 0A                    4852 	.db 0x0a
      0052DA 0D                    4853 	.db 0x0d
      0052DB 00                    4854 	.db 0x00
                                   4855 	.area CSEG    (CODE)
                                   4856 	.area CONST   (CODE)
      0052DC                       4857 ___str_39:
      0052DC 45 72 72 6F 72 3A 20  4858 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      005309 0A                    4859 	.db 0x0a
      00530A 0D                    4860 	.db 0x0d
      00530B 00                    4861 	.db 0x00
                                   4862 	.area CSEG    (CODE)
                                   4863 	.area CONST   (CODE)
      00530C                       4864 ___str_40:
      00530C 45 72 72 6F 72 3A 20  4865 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      005338 0A                    4866 	.db 0x0a
      005339 0D                    4867 	.db 0x0d
      00533A 00                    4868 	.db 0x00
                                   4869 	.area CSEG    (CODE)
                                   4870 	.area CONST   (CODE)
      00533B                       4871 ___str_41:
      00533B E2                    4872 	.db 0xe2
      00533C 94                    4873 	.db 0x94
      00533D 82                    4874 	.db 0x82
      00533E 20 52 65 61 64 20 73  4875 	.ascii " Read successful!                 "
             75 63 63 65 73 73 66
             75 6C 21 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20
      005360 E2                    4876 	.db 0xe2
      005361 94                    4877 	.db 0x94
      005362 82                    4878 	.db 0x82
      005363 0A                    4879 	.db 0x0a
      005364 0D                    4880 	.db 0x0d
      005365 00                    4881 	.db 0x00
                                   4882 	.area CSEG    (CODE)
                                   4883 	.area CONST   (CODE)
      005366                       4884 ___str_42:
      005366 41 43 4B 20 44 49 44  4885 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      005378 0A                    4886 	.db 0x0a
      005379 0D                    4887 	.db 0x0d
      00537A 00                    4888 	.db 0x00
                                   4889 	.area CSEG    (CODE)
                                   4890 	.area CONST   (CODE)
      00537B                       4891 ___str_43:
      00537B 0A                    4892 	.db 0x0a
      00537C 0D                    4893 	.db 0x0d
      00537D 7C 20 25 30 34 58 20  4894 	.ascii "| %04X      |"
             20 20 20 20 20 7C
      00538A 00                    4895 	.db 0x00
                                   4896 	.area CSEG    (CODE)
                                   4897 	.area CONST   (CODE)
      00538B                       4898 ___str_44:
      00538B 20 25 30 32 58        4899 	.ascii " %02X"
      005390 00                    4900 	.db 0x00
                                   4901 	.area CSEG    (CODE)
                                   4902 	.area CONST   (CODE)
      005391                       4903 ___str_45:
      005391 20 20 20              4904 	.ascii "   "
      005394 00                    4905 	.db 0x00
                                   4906 	.area CSEG    (CODE)
                                   4907 	.area CONST   (CODE)
      005395                       4908 ___str_46:
      005395 20 7C                 4909 	.ascii " |"
      005397 00                    4910 	.db 0x00
                                   4911 	.area CSEG    (CODE)
                                   4912 	.area CONST   (CODE)
      005398                       4913 ___str_47:
      005398 E2                    4914 	.db 0xe2
      005399 94                    4915 	.db 0x94
      00539A 82                    4916 	.db 0x82
      00539B 20 48 65 78 20 44 75  4917 	.ascii " Hex Dump successful!                 "
             6D 70 20 73 75 63 63
             65 73 73 66 75 6C 21
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20
      0053C1 E2                    4918 	.db 0xe2
      0053C2 94                    4919 	.db 0x94
      0053C3 82                    4920 	.db 0x82
      0053C4 0A                    4921 	.db 0x0a
      0053C5 0D                    4922 	.db 0x0d
      0053C6 00                    4923 	.db 0x00
                                   4924 	.area CSEG    (CODE)
                                   4925 	.area CONST   (CODE)
      0053C7                       4926 ___str_48:
      0053C7 0A                    4927 	.db 0x0a
      0053C8 00                    4928 	.db 0x00
                                   4929 	.area CSEG    (CODE)
                                   4930 	.area CONST   (CODE)
      0053C9                       4931 ___str_49:
      0053C9 57 72 69 74 69 6E 67  4932 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      0053EE 0A                    4933 	.db 0x0a
      0053EF 0D                    4934 	.db 0x0d
      0053F0 00                    4935 	.db 0x00
                                   4936 	.area CSEG    (CODE)
                                   4937 	.area CONST   (CODE)
      0053F1                       4938 ___str_50:
      0053F1 52 65 61 64 20 62 61  4939 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      005416 0A                    4940 	.db 0x0a
      005417 0D                    4941 	.db 0x0d
      005418 00                    4942 	.db 0x00
                                   4943 	.area CSEG    (CODE)
                                   4944 	.area CONST   (CODE)
      005419                       4945 ___str_51:
      005419 4D 41 54 43 48 20 2D  4946 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      005437 0A                    4947 	.db 0x0a
      005438 0D                    4948 	.db 0x0d
      005439 00                    4949 	.db 0x00
                                   4950 	.area CSEG    (CODE)
                                   4951 	.area CONST   (CODE)
      00543A                       4952 ___str_52:
      00543A 45 52 52 4F 52 20 2D  4953 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      005450 0A                    4954 	.db 0x0a
      005451 0D                    4955 	.db 0x0d
      005452 00                    4956 	.db 0x00
                                   4957 	.area CSEG    (CODE)
                                   4958 	.area XINIT   (CODE)
      00545E                       4959 __xinit__address_range_flag:
      00545E 01 00                 4960 	.byte #0x01, #0x00	;  1
      005460                       4961 __xinit__data_range_flag:
      005460 01 00                 4962 	.byte #0x01, #0x00	;  1
      005462                       4963 __xinit__block:
      005462 00 00                 4964 	.byte #0x00, #0x00	; 0
                                   4965 	.area CABS    (ABS,CODE)
