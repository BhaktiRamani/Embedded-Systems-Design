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
                                     17 	.globl _printf_tiny
                                     18 	.globl _printf
                                     19 	.globl _P5_7
                                     20 	.globl _P5_6
                                     21 	.globl _P5_5
                                     22 	.globl _P5_4
                                     23 	.globl _P5_3
                                     24 	.globl _P5_2
                                     25 	.globl _P5_1
                                     26 	.globl _P5_0
                                     27 	.globl _P4_7
                                     28 	.globl _P4_6
                                     29 	.globl _P4_5
                                     30 	.globl _P4_4
                                     31 	.globl _P4_3
                                     32 	.globl _P4_2
                                     33 	.globl _P4_1
                                     34 	.globl _P4_0
                                     35 	.globl _PX0L
                                     36 	.globl _PT0L
                                     37 	.globl _PX1L
                                     38 	.globl _PT1L
                                     39 	.globl _PSL
                                     40 	.globl _PT2L
                                     41 	.globl _PPCL
                                     42 	.globl _EC
                                     43 	.globl _CCF0
                                     44 	.globl _CCF1
                                     45 	.globl _CCF2
                                     46 	.globl _CCF3
                                     47 	.globl _CCF4
                                     48 	.globl _CR
                                     49 	.globl _CF
                                     50 	.globl _TF2
                                     51 	.globl _EXF2
                                     52 	.globl _RCLK
                                     53 	.globl _TCLK
                                     54 	.globl _EXEN2
                                     55 	.globl _TR2
                                     56 	.globl _C_T2
                                     57 	.globl _CP_RL2
                                     58 	.globl _T2CON_7
                                     59 	.globl _T2CON_6
                                     60 	.globl _T2CON_5
                                     61 	.globl _T2CON_4
                                     62 	.globl _T2CON_3
                                     63 	.globl _T2CON_2
                                     64 	.globl _T2CON_1
                                     65 	.globl _T2CON_0
                                     66 	.globl _PT2
                                     67 	.globl _ET2
                                     68 	.globl _CY
                                     69 	.globl _AC
                                     70 	.globl _F0
                                     71 	.globl _RS1
                                     72 	.globl _RS0
                                     73 	.globl _OV
                                     74 	.globl _F1
                                     75 	.globl _P
                                     76 	.globl _PS
                                     77 	.globl _PT1
                                     78 	.globl _PX1
                                     79 	.globl _PT0
                                     80 	.globl _PX0
                                     81 	.globl _RD
                                     82 	.globl _WR
                                     83 	.globl _T1
                                     84 	.globl _T0
                                     85 	.globl _INT1
                                     86 	.globl _INT0
                                     87 	.globl _TXD
                                     88 	.globl _RXD
                                     89 	.globl _P3_7
                                     90 	.globl _P3_6
                                     91 	.globl _P3_5
                                     92 	.globl _P3_4
                                     93 	.globl _P3_3
                                     94 	.globl _P3_2
                                     95 	.globl _P3_1
                                     96 	.globl _P3_0
                                     97 	.globl _EA
                                     98 	.globl _ES
                                     99 	.globl _ET1
                                    100 	.globl _EX1
                                    101 	.globl _ET0
                                    102 	.globl _EX0
                                    103 	.globl _P2_7
                                    104 	.globl _P2_6
                                    105 	.globl _P2_5
                                    106 	.globl _P2_4
                                    107 	.globl _P2_3
                                    108 	.globl _P2_2
                                    109 	.globl _P2_1
                                    110 	.globl _P2_0
                                    111 	.globl _SM0
                                    112 	.globl _SM1
                                    113 	.globl _SM2
                                    114 	.globl _REN
                                    115 	.globl _TB8
                                    116 	.globl _RB8
                                    117 	.globl _TI
                                    118 	.globl _RI
                                    119 	.globl _P1_7
                                    120 	.globl _P1_6
                                    121 	.globl _P1_5
                                    122 	.globl _P1_4
                                    123 	.globl _P1_3
                                    124 	.globl _P1_2
                                    125 	.globl _P1_1
                                    126 	.globl _P1_0
                                    127 	.globl _TF1
                                    128 	.globl _TR1
                                    129 	.globl _TF0
                                    130 	.globl _TR0
                                    131 	.globl _IE1
                                    132 	.globl _IT1
                                    133 	.globl _IE0
                                    134 	.globl _IT0
                                    135 	.globl _P0_7
                                    136 	.globl _P0_6
                                    137 	.globl _P0_5
                                    138 	.globl _P0_4
                                    139 	.globl _P0_3
                                    140 	.globl _P0_2
                                    141 	.globl _P0_1
                                    142 	.globl _P0_0
                                    143 	.globl _EECON
                                    144 	.globl _KBF
                                    145 	.globl _KBE
                                    146 	.globl _KBLS
                                    147 	.globl _BRL
                                    148 	.globl _BDRCON
                                    149 	.globl _T2MOD
                                    150 	.globl _SPDAT
                                    151 	.globl _SPSTA
                                    152 	.globl _SPCON
                                    153 	.globl _SADEN
                                    154 	.globl _SADDR
                                    155 	.globl _WDTPRG
                                    156 	.globl _WDTRST
                                    157 	.globl _P5
                                    158 	.globl _P4
                                    159 	.globl _IPH1
                                    160 	.globl _IPL1
                                    161 	.globl _IPH0
                                    162 	.globl _IPL0
                                    163 	.globl _IEN1
                                    164 	.globl _IEN0
                                    165 	.globl _CMOD
                                    166 	.globl _CL
                                    167 	.globl _CH
                                    168 	.globl _CCON
                                    169 	.globl _CCAPM4
                                    170 	.globl _CCAPM3
                                    171 	.globl _CCAPM2
                                    172 	.globl _CCAPM1
                                    173 	.globl _CCAPM0
                                    174 	.globl _CCAP4L
                                    175 	.globl _CCAP3L
                                    176 	.globl _CCAP2L
                                    177 	.globl _CCAP1L
                                    178 	.globl _CCAP0L
                                    179 	.globl _CCAP4H
                                    180 	.globl _CCAP3H
                                    181 	.globl _CCAP2H
                                    182 	.globl _CCAP1H
                                    183 	.globl _CCAP0H
                                    184 	.globl _CKCON1
                                    185 	.globl _CKCON0
                                    186 	.globl _CKRL
                                    187 	.globl _AUXR1
                                    188 	.globl _AUXR
                                    189 	.globl _TH2
                                    190 	.globl _TL2
                                    191 	.globl _RCAP2H
                                    192 	.globl _RCAP2L
                                    193 	.globl _T2CON
                                    194 	.globl _B
                                    195 	.globl _ACC
                                    196 	.globl _PSW
                                    197 	.globl _IP
                                    198 	.globl _P3
                                    199 	.globl _IE
                                    200 	.globl _P2
                                    201 	.globl _SBUF
                                    202 	.globl _SCON
                                    203 	.globl _P1
                                    204 	.globl _TH1
                                    205 	.globl _TH0
                                    206 	.globl _TL1
                                    207 	.globl _TL0
                                    208 	.globl _TMOD
                                    209 	.globl _TCON
                                    210 	.globl _PCON
                                    211 	.globl _DPH
                                    212 	.globl _DPL
                                    213 	.globl _SP
                                    214 	.globl _P0
                                    215 	.globl _EEPROM_hexump_PARM_2
                                    216 	.globl _eeprom_write_PARM_2
                                    217 	.globl _ACK
                                    218 	.globl _take_address
                                    219 	.globl _take_data
                                    220 	.globl _eeprom_write
                                    221 	.globl _eeprom_read
                                    222 	.globl _i2c_write
                                    223 	.globl _i2c_read
                                    224 	.globl _i2c_start
                                    225 	.globl _EEPROM_hexump
                                    226 	.globl _handler_EEPROM_hexdump
                                    227 	.globl _i2c_stop
                                    228 	.globl _eeprom_reset
                                    229 	.globl _i2c_delay
                                    230 ;--------------------------------------------------------
                                    231 ; special function registers
                                    232 ;--------------------------------------------------------
                                    233 	.area RSEG    (ABS,DATA)
      000000                        234 	.org 0x0000
                           000080   235 _P0	=	0x0080
                           000081   236 _SP	=	0x0081
                           000082   237 _DPL	=	0x0082
                           000083   238 _DPH	=	0x0083
                           000087   239 _PCON	=	0x0087
                           000088   240 _TCON	=	0x0088
                           000089   241 _TMOD	=	0x0089
                           00008A   242 _TL0	=	0x008a
                           00008B   243 _TL1	=	0x008b
                           00008C   244 _TH0	=	0x008c
                           00008D   245 _TH1	=	0x008d
                           000090   246 _P1	=	0x0090
                           000098   247 _SCON	=	0x0098
                           000099   248 _SBUF	=	0x0099
                           0000A0   249 _P2	=	0x00a0
                           0000A8   250 _IE	=	0x00a8
                           0000B0   251 _P3	=	0x00b0
                           0000B8   252 _IP	=	0x00b8
                           0000D0   253 _PSW	=	0x00d0
                           0000E0   254 _ACC	=	0x00e0
                           0000F0   255 _B	=	0x00f0
                           0000C8   256 _T2CON	=	0x00c8
                           0000CA   257 _RCAP2L	=	0x00ca
                           0000CB   258 _RCAP2H	=	0x00cb
                           0000CC   259 _TL2	=	0x00cc
                           0000CD   260 _TH2	=	0x00cd
                           00008E   261 _AUXR	=	0x008e
                           0000A2   262 _AUXR1	=	0x00a2
                           000097   263 _CKRL	=	0x0097
                           00008F   264 _CKCON0	=	0x008f
                           0000AF   265 _CKCON1	=	0x00af
                           0000FA   266 _CCAP0H	=	0x00fa
                           0000FB   267 _CCAP1H	=	0x00fb
                           0000FC   268 _CCAP2H	=	0x00fc
                           0000FD   269 _CCAP3H	=	0x00fd
                           0000FE   270 _CCAP4H	=	0x00fe
                           0000EA   271 _CCAP0L	=	0x00ea
                           0000EB   272 _CCAP1L	=	0x00eb
                           0000EC   273 _CCAP2L	=	0x00ec
                           0000ED   274 _CCAP3L	=	0x00ed
                           0000EE   275 _CCAP4L	=	0x00ee
                           0000DA   276 _CCAPM0	=	0x00da
                           0000DB   277 _CCAPM1	=	0x00db
                           0000DC   278 _CCAPM2	=	0x00dc
                           0000DD   279 _CCAPM3	=	0x00dd
                           0000DE   280 _CCAPM4	=	0x00de
                           0000D8   281 _CCON	=	0x00d8
                           0000F9   282 _CH	=	0x00f9
                           0000E9   283 _CL	=	0x00e9
                           0000D9   284 _CMOD	=	0x00d9
                           0000A8   285 _IEN0	=	0x00a8
                           0000B1   286 _IEN1	=	0x00b1
                           0000B8   287 _IPL0	=	0x00b8
                           0000B7   288 _IPH0	=	0x00b7
                           0000B2   289 _IPL1	=	0x00b2
                           0000B3   290 _IPH1	=	0x00b3
                           0000C0   291 _P4	=	0x00c0
                           0000E8   292 _P5	=	0x00e8
                           0000A6   293 _WDTRST	=	0x00a6
                           0000A7   294 _WDTPRG	=	0x00a7
                           0000A9   295 _SADDR	=	0x00a9
                           0000B9   296 _SADEN	=	0x00b9
                           0000C3   297 _SPCON	=	0x00c3
                           0000C4   298 _SPSTA	=	0x00c4
                           0000C5   299 _SPDAT	=	0x00c5
                           0000C9   300 _T2MOD	=	0x00c9
                           00009B   301 _BDRCON	=	0x009b
                           00009A   302 _BRL	=	0x009a
                           00009C   303 _KBLS	=	0x009c
                           00009D   304 _KBE	=	0x009d
                           00009E   305 _KBF	=	0x009e
                           0000D2   306 _EECON	=	0x00d2
                                    307 ;--------------------------------------------------------
                                    308 ; special function bits
                                    309 ;--------------------------------------------------------
                                    310 	.area RSEG    (ABS,DATA)
      000000                        311 	.org 0x0000
                           000080   312 _P0_0	=	0x0080
                           000081   313 _P0_1	=	0x0081
                           000082   314 _P0_2	=	0x0082
                           000083   315 _P0_3	=	0x0083
                           000084   316 _P0_4	=	0x0084
                           000085   317 _P0_5	=	0x0085
                           000086   318 _P0_6	=	0x0086
                           000087   319 _P0_7	=	0x0087
                           000088   320 _IT0	=	0x0088
                           000089   321 _IE0	=	0x0089
                           00008A   322 _IT1	=	0x008a
                           00008B   323 _IE1	=	0x008b
                           00008C   324 _TR0	=	0x008c
                           00008D   325 _TF0	=	0x008d
                           00008E   326 _TR1	=	0x008e
                           00008F   327 _TF1	=	0x008f
                           000090   328 _P1_0	=	0x0090
                           000091   329 _P1_1	=	0x0091
                           000092   330 _P1_2	=	0x0092
                           000093   331 _P1_3	=	0x0093
                           000094   332 _P1_4	=	0x0094
                           000095   333 _P1_5	=	0x0095
                           000096   334 _P1_6	=	0x0096
                           000097   335 _P1_7	=	0x0097
                           000098   336 _RI	=	0x0098
                           000099   337 _TI	=	0x0099
                           00009A   338 _RB8	=	0x009a
                           00009B   339 _TB8	=	0x009b
                           00009C   340 _REN	=	0x009c
                           00009D   341 _SM2	=	0x009d
                           00009E   342 _SM1	=	0x009e
                           00009F   343 _SM0	=	0x009f
                           0000A0   344 _P2_0	=	0x00a0
                           0000A1   345 _P2_1	=	0x00a1
                           0000A2   346 _P2_2	=	0x00a2
                           0000A3   347 _P2_3	=	0x00a3
                           0000A4   348 _P2_4	=	0x00a4
                           0000A5   349 _P2_5	=	0x00a5
                           0000A6   350 _P2_6	=	0x00a6
                           0000A7   351 _P2_7	=	0x00a7
                           0000A8   352 _EX0	=	0x00a8
                           0000A9   353 _ET0	=	0x00a9
                           0000AA   354 _EX1	=	0x00aa
                           0000AB   355 _ET1	=	0x00ab
                           0000AC   356 _ES	=	0x00ac
                           0000AF   357 _EA	=	0x00af
                           0000B0   358 _P3_0	=	0x00b0
                           0000B1   359 _P3_1	=	0x00b1
                           0000B2   360 _P3_2	=	0x00b2
                           0000B3   361 _P3_3	=	0x00b3
                           0000B4   362 _P3_4	=	0x00b4
                           0000B5   363 _P3_5	=	0x00b5
                           0000B6   364 _P3_6	=	0x00b6
                           0000B7   365 _P3_7	=	0x00b7
                           0000B0   366 _RXD	=	0x00b0
                           0000B1   367 _TXD	=	0x00b1
                           0000B2   368 _INT0	=	0x00b2
                           0000B3   369 _INT1	=	0x00b3
                           0000B4   370 _T0	=	0x00b4
                           0000B5   371 _T1	=	0x00b5
                           0000B6   372 _WR	=	0x00b6
                           0000B7   373 _RD	=	0x00b7
                           0000B8   374 _PX0	=	0x00b8
                           0000B9   375 _PT0	=	0x00b9
                           0000BA   376 _PX1	=	0x00ba
                           0000BB   377 _PT1	=	0x00bb
                           0000BC   378 _PS	=	0x00bc
                           0000D0   379 _P	=	0x00d0
                           0000D1   380 _F1	=	0x00d1
                           0000D2   381 _OV	=	0x00d2
                           0000D3   382 _RS0	=	0x00d3
                           0000D4   383 _RS1	=	0x00d4
                           0000D5   384 _F0	=	0x00d5
                           0000D6   385 _AC	=	0x00d6
                           0000D7   386 _CY	=	0x00d7
                           0000AD   387 _ET2	=	0x00ad
                           0000BD   388 _PT2	=	0x00bd
                           0000C8   389 _T2CON_0	=	0x00c8
                           0000C9   390 _T2CON_1	=	0x00c9
                           0000CA   391 _T2CON_2	=	0x00ca
                           0000CB   392 _T2CON_3	=	0x00cb
                           0000CC   393 _T2CON_4	=	0x00cc
                           0000CD   394 _T2CON_5	=	0x00cd
                           0000CE   395 _T2CON_6	=	0x00ce
                           0000CF   396 _T2CON_7	=	0x00cf
                           0000C8   397 _CP_RL2	=	0x00c8
                           0000C9   398 _C_T2	=	0x00c9
                           0000CA   399 _TR2	=	0x00ca
                           0000CB   400 _EXEN2	=	0x00cb
                           0000CC   401 _TCLK	=	0x00cc
                           0000CD   402 _RCLK	=	0x00cd
                           0000CE   403 _EXF2	=	0x00ce
                           0000CF   404 _TF2	=	0x00cf
                           0000DF   405 _CF	=	0x00df
                           0000DE   406 _CR	=	0x00de
                           0000DC   407 _CCF4	=	0x00dc
                           0000DB   408 _CCF3	=	0x00db
                           0000DA   409 _CCF2	=	0x00da
                           0000D9   410 _CCF1	=	0x00d9
                           0000D8   411 _CCF0	=	0x00d8
                           0000AE   412 _EC	=	0x00ae
                           0000BE   413 _PPCL	=	0x00be
                           0000BD   414 _PT2L	=	0x00bd
                           0000BC   415 _PSL	=	0x00bc
                           0000BB   416 _PT1L	=	0x00bb
                           0000BA   417 _PX1L	=	0x00ba
                           0000B9   418 _PT0L	=	0x00b9
                           0000B8   419 _PX0L	=	0x00b8
                           0000C0   420 _P4_0	=	0x00c0
                           0000C1   421 _P4_1	=	0x00c1
                           0000C2   422 _P4_2	=	0x00c2
                           0000C3   423 _P4_3	=	0x00c3
                           0000C4   424 _P4_4	=	0x00c4
                           0000C5   425 _P4_5	=	0x00c5
                           0000C6   426 _P4_6	=	0x00c6
                           0000C7   427 _P4_7	=	0x00c7
                           0000E8   428 _P5_0	=	0x00e8
                           0000E9   429 _P5_1	=	0x00e9
                           0000EA   430 _P5_2	=	0x00ea
                           0000EB   431 _P5_3	=	0x00eb
                           0000EC   432 _P5_4	=	0x00ec
                           0000ED   433 _P5_5	=	0x00ed
                           0000EE   434 _P5_6	=	0x00ee
                           0000EF   435 _P5_7	=	0x00ef
                                    436 ;--------------------------------------------------------
                                    437 ; overlayable register banks
                                    438 ;--------------------------------------------------------
                                    439 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        440 	.ds 8
                                    441 ;--------------------------------------------------------
                                    442 ; internal ram data
                                    443 ;--------------------------------------------------------
                                    444 	.area DSEG    (DATA)
                                    445 ;--------------------------------------------------------
                                    446 ; overlayable items in internal ram 
                                    447 ;--------------------------------------------------------
                                    448 ;--------------------------------------------------------
                                    449 ; Stack segment in internal ram 
                                    450 ;--------------------------------------------------------
                                    451 	.area	SSEG
      000014                        452 __start__stack:
      000014                        453 	.ds	1
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
      000402                        478 _putchar_charToSend_65536_50:
      000402                        479 	.ds 2
      000404                        480 _take_address_input_65537_70:
      000404                        481 	.ds 4
      000408                        482 _take_address_address_65538_74:
      000408                        483 	.ds 2
      00040A                        484 _take_data_input_65537_80:
      00040A                        485 	.ds 4
      00040E                        486 _take_data_data_65538_84:
      00040E                        487 	.ds 1
      00040F                        488 _eeprom_write_PARM_2:
      00040F                        489 	.ds 1
      000410                        490 _eeprom_write_address_65536_88:
      000410                        491 	.ds 2
      000412                        492 _eeprom_read_address_65536_95:
      000412                        493 	.ds 2
      000414                        494 _i2c_write_data_65536_100:
      000414                        495 	.ds 1
      000415                        496 _i2c_read_ACK_65536_105:
      000415                        497 	.ds 2
      000417                        498 _i2c_read_buff_65536_106:
      000417                        499 	.ds 1
      000418                        500 _EEPROM_hexump_PARM_2:
      000418                        501 	.ds 2
      00041A                        502 _EEPROM_hexump_start_address_65536_111:
      00041A                        503 	.ds 2
                                    504 ;--------------------------------------------------------
                                    505 ; absolute external ram data
                                    506 ;--------------------------------------------------------
                                    507 	.area XABS    (ABS,XDATA)
                                    508 ;--------------------------------------------------------
                                    509 ; external initialized ram data
                                    510 ;--------------------------------------------------------
                                    511 	.area XISEG   (XDATA)
      000455                        512 _address_range_flag:
      000455                        513 	.ds 2
      000457                        514 _data_range_flag:
      000457                        515 	.ds 2
      000459                        516 _block:
      000459                        517 	.ds 2
                                    518 	.area HOME    (CODE)
                                    519 	.area GSINIT0 (CODE)
                                    520 	.area GSINIT1 (CODE)
                                    521 	.area GSINIT2 (CODE)
                                    522 	.area GSINIT3 (CODE)
                                    523 	.area GSINIT4 (CODE)
                                    524 	.area GSINIT5 (CODE)
                                    525 	.area GSINIT  (CODE)
                                    526 	.area GSFINAL (CODE)
                                    527 	.area CSEG    (CODE)
                                    528 ;--------------------------------------------------------
                                    529 ; interrupt vector 
                                    530 ;--------------------------------------------------------
                                    531 	.area HOME    (CODE)
      003000                        532 __interrupt_vect:
      003000 02 30 06         [24]  533 	ljmp	__sdcc_gsinit_startup
                                    534 ;--------------------------------------------------------
                                    535 ; global & static initialisations
                                    536 ;--------------------------------------------------------
                                    537 	.area HOME    (CODE)
                                    538 	.area GSINIT  (CODE)
                                    539 	.area GSFINAL (CODE)
                                    540 	.area GSINIT  (CODE)
                                    541 	.globl __sdcc_gsinit_startup
                                    542 	.globl __sdcc_program_startup
                                    543 	.globl __start__stack
                                    544 	.globl __mcs51_genXINIT
                                    545 	.globl __mcs51_genXRAMCLEAR
                                    546 	.globl __mcs51_genRAMCLEAR
                                    547 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  548 	ljmp	__sdcc_program_startup
                                    549 ;--------------------------------------------------------
                                    550 ; Home
                                    551 ;--------------------------------------------------------
                                    552 	.area HOME    (CODE)
                                    553 	.area HOME    (CODE)
      003003                        554 __sdcc_program_startup:
      003003 02 31 A2         [24]  555 	ljmp	_main
                                    556 ;	return from main will return to caller
                                    557 ;--------------------------------------------------------
                                    558 ; code
                                    559 ;--------------------------------------------------------
                                    560 	.area CSEG    (CODE)
                                    561 ;------------------------------------------------------------
                                    562 ;Allocation info for local variables in function 'putchar'
                                    563 ;------------------------------------------------------------
                                    564 ;charToSend                Allocated with name '_putchar_charToSend_65536_50'
                                    565 ;------------------------------------------------------------
                                    566 ;	8051_i2c_eeprom.c:64: int putchar(int charToSend) {
                                    567 ;	-----------------------------------------
                                    568 ;	 function putchar
                                    569 ;	-----------------------------------------
      003062                        570 _putchar:
                           000007   571 	ar7 = 0x07
                           000006   572 	ar6 = 0x06
                           000005   573 	ar5 = 0x05
                           000004   574 	ar4 = 0x04
                           000003   575 	ar3 = 0x03
                           000002   576 	ar2 = 0x02
                           000001   577 	ar1 = 0x01
                           000000   578 	ar0 = 0x00
      003062 AF 83            [24]  579 	mov	r7,dph
      003064 E5 82            [12]  580 	mov	a,dpl
      003066 90 04 02         [24]  581 	mov	dptr,#_putchar_charToSend_65536_50
      003069 F0               [24]  582 	movx	@dptr,a
      00306A EF               [12]  583 	mov	a,r7
      00306B A3               [24]  584 	inc	dptr
      00306C F0               [24]  585 	movx	@dptr,a
                                    586 ;	8051_i2c_eeprom.c:65: SBUF = charToSend;       /* Load character into serial buffer */
      00306D 90 04 02         [24]  587 	mov	dptr,#_putchar_charToSend_65536_50
      003070 E0               [24]  588 	movx	a,@dptr
      003071 FE               [12]  589 	mov	r6,a
      003072 A3               [24]  590 	inc	dptr
      003073 E0               [24]  591 	movx	a,@dptr
      003074 FF               [12]  592 	mov	r7,a
      003075 8E 99            [24]  593 	mov	_SBUF,r6
                                    594 ;	8051_i2c_eeprom.c:66: while (!TI);             /* Wait for transmission completion */
      003077                        595 00101$:
                                    596 ;	8051_i2c_eeprom.c:67: TI = 0;                  /* Clear transmission flag */
                                    597 ;	assignBit
      003077 10 99 02         [24]  598 	jbc	_TI,00114$
      00307A 80 FB            [24]  599 	sjmp	00101$
      00307C                        600 00114$:
                                    601 ;	8051_i2c_eeprom.c:68: return charToSend;
      00307C 8E 82            [24]  602 	mov	dpl,r6
      00307E 8F 83            [24]  603 	mov	dph,r7
                                    604 ;	8051_i2c_eeprom.c:69: }
      003080 22               [24]  605 	ret
                                    606 ;------------------------------------------------------------
                                    607 ;Allocation info for local variables in function 'getchar'
                                    608 ;------------------------------------------------------------
                                    609 ;	8051_i2c_eeprom.c:75: int getchar(void) {
                                    610 ;	-----------------------------------------
                                    611 ;	 function getchar
                                    612 ;	-----------------------------------------
      003081                        613 _getchar:
                                    614 ;	8051_i2c_eeprom.c:76: while (!RI);             /* Wait for reception completion */
      003081                        615 00101$:
                                    616 ;	8051_i2c_eeprom.c:77: RI = 0;                  /* Clear reception flag */
                                    617 ;	assignBit
      003081 10 98 02         [24]  618 	jbc	_RI,00114$
      003084 80 FB            [24]  619 	sjmp	00101$
      003086                        620 00114$:
                                    621 ;	8051_i2c_eeprom.c:78: return SBUF;             /* Return received character */
      003086 AE 99            [24]  622 	mov	r6,_SBUF
      003088 7F 00            [12]  623 	mov	r7,#0x00
      00308A 8E 82            [24]  624 	mov	dpl,r6
      00308C 8F 83            [24]  625 	mov	dph,r7
                                    626 ;	8051_i2c_eeprom.c:79: }
      00308E 22               [24]  627 	ret
                                    628 ;------------------------------------------------------------
                                    629 ;Allocation info for local variables in function 'ui'
                                    630 ;------------------------------------------------------------
                                    631 ;	8051_i2c_eeprom.c:84: void ui()
                                    632 ;	-----------------------------------------
                                    633 ;	 function ui
                                    634 ;	-----------------------------------------
      00308F                        635 _ui:
                                    636 ;	8051_i2c_eeprom.c:86: printf("\n╔════════════════════════════════════════════════════════╗\n\r");
      00308F 74 E2            [12]  637 	mov	a,#___str_0
      003091 C0 E0            [24]  638 	push	acc
      003093 74 49            [12]  639 	mov	a,#(___str_0 >> 8)
      003095 C0 E0            [24]  640 	push	acc
      003097 74 80            [12]  641 	mov	a,#0x80
      003099 C0 E0            [24]  642 	push	acc
      00309B 12 3F 80         [24]  643 	lcall	_printf
      00309E 15 81            [12]  644 	dec	sp
      0030A0 15 81            [12]  645 	dec	sp
      0030A2 15 81            [12]  646 	dec	sp
                                    647 ;	8051_i2c_eeprom.c:87: printf("║           I2C Memory Management System v1.0            ║\n\r");
      0030A4 74 94            [12]  648 	mov	a,#___str_1
      0030A6 C0 E0            [24]  649 	push	acc
      0030A8 74 4A            [12]  650 	mov	a,#(___str_1 >> 8)
      0030AA C0 E0            [24]  651 	push	acc
      0030AC 74 80            [12]  652 	mov	a,#0x80
      0030AE C0 E0            [24]  653 	push	acc
      0030B0 12 3F 80         [24]  654 	lcall	_printf
      0030B3 15 81            [12]  655 	dec	sp
      0030B5 15 81            [12]  656 	dec	sp
      0030B7 15 81            [12]  657 	dec	sp
                                    658 ;	8051_i2c_eeprom.c:88: printf("╚════════════════════════════════════════════════════════╝\n\r");
      0030B9 74 D5            [12]  659 	mov	a,#___str_2
      0030BB C0 E0            [24]  660 	push	acc
      0030BD 74 4A            [12]  661 	mov	a,#(___str_2 >> 8)
      0030BF C0 E0            [24]  662 	push	acc
      0030C1 74 80            [12]  663 	mov	a,#0x80
      0030C3 C0 E0            [24]  664 	push	acc
      0030C5 12 3F 80         [24]  665 	lcall	_printf
      0030C8 15 81            [12]  666 	dec	sp
      0030CA 15 81            [12]  667 	dec	sp
      0030CC 15 81            [12]  668 	dec	sp
                                    669 ;	8051_i2c_eeprom.c:90: }
      0030CE 22               [24]  670 	ret
                                    671 ;------------------------------------------------------------
                                    672 ;Allocation info for local variables in function 'command_menu'
                                    673 ;------------------------------------------------------------
                                    674 ;	8051_i2c_eeprom.c:95: void command_menu()
                                    675 ;	-----------------------------------------
                                    676 ;	 function command_menu
                                    677 ;	-----------------------------------------
      0030CF                        678 _command_menu:
                                    679 ;	8051_i2c_eeprom.c:97: printf("\n\r┌────────────┬────────────────────────────────────────────┐\n\r");
      0030CF 74 86            [12]  680 	mov	a,#___str_3
      0030D1 C0 E0            [24]  681 	push	acc
      0030D3 74 4B            [12]  682 	mov	a,#(___str_3 >> 8)
      0030D5 C0 E0            [24]  683 	push	acc
      0030D7 74 80            [12]  684 	mov	a,#0x80
      0030D9 C0 E0            [24]  685 	push	acc
      0030DB 12 3F 80         [24]  686 	lcall	_printf
      0030DE 15 81            [12]  687 	dec	sp
      0030E0 15 81            [12]  688 	dec	sp
      0030E2 15 81            [12]  689 	dec	sp
                                    690 ;	8051_i2c_eeprom.c:98: printf("│  Command   │               Description                  │\n\r");
      0030E4 74 3C            [12]  691 	mov	a,#___str_4
      0030E6 C0 E0            [24]  692 	push	acc
      0030E8 74 4C            [12]  693 	mov	a,#(___str_4 >> 8)
      0030EA C0 E0            [24]  694 	push	acc
      0030EC 74 80            [12]  695 	mov	a,#0x80
      0030EE C0 E0            [24]  696 	push	acc
      0030F0 12 3F 80         [24]  697 	lcall	_printf
      0030F3 15 81            [12]  698 	dec	sp
      0030F5 15 81            [12]  699 	dec	sp
      0030F7 15 81            [12]  700 	dec	sp
                                    701 ;	8051_i2c_eeprom.c:99: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      0030F9 74 80            [12]  702 	mov	a,#___str_5
      0030FB C0 E0            [24]  703 	push	acc
      0030FD 74 4C            [12]  704 	mov	a,#(___str_5 >> 8)
      0030FF C0 E0            [24]  705 	push	acc
      003101 74 80            [12]  706 	mov	a,#0x80
      003103 C0 E0            [24]  707 	push	acc
      003105 12 3F 80         [24]  708 	lcall	_printf
      003108 15 81            [12]  709 	dec	sp
      00310A 15 81            [12]  710 	dec	sp
      00310C 15 81            [12]  711 	dec	sp
                                    712 ;	8051_i2c_eeprom.c:100: printf("│     R      │ Read from address                          │\n\r");
      00310E 74 34            [12]  713 	mov	a,#___str_6
      003110 C0 E0            [24]  714 	push	acc
      003112 74 4D            [12]  715 	mov	a,#(___str_6 >> 8)
      003114 C0 E0            [24]  716 	push	acc
      003116 74 80            [12]  717 	mov	a,#0x80
      003118 C0 E0            [24]  718 	push	acc
      00311A 12 3F 80         [24]  719 	lcall	_printf
      00311D 15 81            [12]  720 	dec	sp
      00311F 15 81            [12]  721 	dec	sp
      003121 15 81            [12]  722 	dec	sp
                                    723 ;	8051_i2c_eeprom.c:101: printf("│     W      │ Write data to address                      │\n\r");
      003123 74 78            [12]  724 	mov	a,#___str_7
      003125 C0 E0            [24]  725 	push	acc
      003127 74 4D            [12]  726 	mov	a,#(___str_7 >> 8)
      003129 C0 E0            [24]  727 	push	acc
      00312B 74 80            [12]  728 	mov	a,#0x80
      00312D C0 E0            [24]  729 	push	acc
      00312F 12 3F 80         [24]  730 	lcall	_printf
      003132 15 81            [12]  731 	dec	sp
      003134 15 81            [12]  732 	dec	sp
      003136 15 81            [12]  733 	dec	sp
                                    734 ;	8051_i2c_eeprom.c:102: printf("│     H      │ Display hex dump                           │\n\r");
      003138 74 BC            [12]  735 	mov	a,#___str_8
      00313A C0 E0            [24]  736 	push	acc
      00313C 74 4D            [12]  737 	mov	a,#(___str_8 >> 8)
      00313E C0 E0            [24]  738 	push	acc
      003140 74 80            [12]  739 	mov	a,#0x80
      003142 C0 E0            [24]  740 	push	acc
      003144 12 3F 80         [24]  741 	lcall	_printf
      003147 15 81            [12]  742 	dec	sp
      003149 15 81            [12]  743 	dec	sp
      00314B 15 81            [12]  744 	dec	sp
                                    745 ;	8051_i2c_eeprom.c:103: printf("│     X      │ Reset memory system                        │\n\r");
      00314D 74 00            [12]  746 	mov	a,#___str_9
      00314F C0 E0            [24]  747 	push	acc
      003151 74 4E            [12]  748 	mov	a,#(___str_9 >> 8)
      003153 C0 E0            [24]  749 	push	acc
      003155 74 80            [12]  750 	mov	a,#0x80
      003157 C0 E0            [24]  751 	push	acc
      003159 12 3F 80         [24]  752 	lcall	_printf
      00315C 15 81            [12]  753 	dec	sp
      00315E 15 81            [12]  754 	dec	sp
      003160 15 81            [12]  755 	dec	sp
                                    756 ;	8051_i2c_eeprom.c:104: printf("│     ?      │ Display this help menu                     │\n\r");
      003162 74 44            [12]  757 	mov	a,#___str_10
      003164 C0 E0            [24]  758 	push	acc
      003166 74 4E            [12]  759 	mov	a,#(___str_10 >> 8)
      003168 C0 E0            [24]  760 	push	acc
      00316A 74 80            [12]  761 	mov	a,#0x80
      00316C C0 E0            [24]  762 	push	acc
      00316E 12 3F 80         [24]  763 	lcall	_printf
      003171 15 81            [12]  764 	dec	sp
      003173 15 81            [12]  765 	dec	sp
      003175 15 81            [12]  766 	dec	sp
                                    767 ;	8051_i2c_eeprom.c:105: printf("│     Q      │ Quit program                               │\n\r");
      003177 74 88            [12]  768 	mov	a,#___str_11
      003179 C0 E0            [24]  769 	push	acc
      00317B 74 4E            [12]  770 	mov	a,#(___str_11 >> 8)
      00317D C0 E0            [24]  771 	push	acc
      00317F 74 80            [12]  772 	mov	a,#0x80
      003181 C0 E0            [24]  773 	push	acc
      003183 12 3F 80         [24]  774 	lcall	_printf
      003186 15 81            [12]  775 	dec	sp
      003188 15 81            [12]  776 	dec	sp
      00318A 15 81            [12]  777 	dec	sp
                                    778 ;	8051_i2c_eeprom.c:106: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      00318C 74 CC            [12]  779 	mov	a,#___str_12
      00318E C0 E0            [24]  780 	push	acc
      003190 74 4E            [12]  781 	mov	a,#(___str_12 >> 8)
      003192 C0 E0            [24]  782 	push	acc
      003194 74 80            [12]  783 	mov	a,#0x80
      003196 C0 E0            [24]  784 	push	acc
      003198 12 3F 80         [24]  785 	lcall	_printf
      00319B 15 81            [12]  786 	dec	sp
      00319D 15 81            [12]  787 	dec	sp
      00319F 15 81            [12]  788 	dec	sp
                                    789 ;	8051_i2c_eeprom.c:109: }
      0031A1 22               [24]  790 	ret
                                    791 ;------------------------------------------------------------
                                    792 ;Allocation info for local variables in function 'main'
                                    793 ;------------------------------------------------------------
                                    794 ;user_input                Allocated with name '_main_user_input_131072_57'
                                    795 ;addr                      Allocated with name '_main_addr_262145_60'
                                    796 ;data                      Allocated with name '_main_data_262146_62'
                                    797 ;addr                      Allocated with name '_main_addr_262145_65'
                                    798 ;start_add                 Allocated with name '_main_start_add_196609_67'
                                    799 ;end_add                   Allocated with name '_main_end_add_196610_68'
                                    800 ;------------------------------------------------------------
                                    801 ;	8051_i2c_eeprom.c:115: int main()
                                    802 ;	-----------------------------------------
                                    803 ;	 function main
                                    804 ;	-----------------------------------------
      0031A2                        805 _main:
                                    806 ;	8051_i2c_eeprom.c:118: P1 &= ~(1<<3);  // Set P1.3 as output
      0031A2 53 90 F7         [24]  807 	anl	_P1,#0xf7
                                    808 ;	8051_i2c_eeprom.c:119: P1 &= ~(1<<4);  // Set P1.4 as output
      0031A5 53 90 EF         [24]  809 	anl	_P1,#0xef
                                    810 ;	8051_i2c_eeprom.c:120: ui();
      0031A8 12 30 8F         [24]  811 	lcall	_ui
                                    812 ;	8051_i2c_eeprom.c:121: command_menu();
      0031AB 12 30 CF         [24]  813 	lcall	_command_menu
                                    814 ;	8051_i2c_eeprom.c:122: i2c_start();
      0031AE 12 3A 1A         [24]  815 	lcall	_i2c_start
                                    816 ;	8051_i2c_eeprom.c:123: while(1)
      0031B1                        817 00115$:
                                    818 ;	8051_i2c_eeprom.c:125: char user_input = getchar();
      0031B1 12 30 81         [24]  819 	lcall	_getchar
      0031B4 AE 82            [24]  820 	mov	r6,dpl
                                    821 ;	8051_i2c_eeprom.c:126: printf("| $ %c\n\r", user_input);
      0031B6 8E 05            [24]  822 	mov	ar5,r6
      0031B8 7F 00            [12]  823 	mov	r7,#0x00
      0031BA C0 06            [24]  824 	push	ar6
      0031BC C0 05            [24]  825 	push	ar5
      0031BE C0 07            [24]  826 	push	ar7
      0031C0 74 80            [12]  827 	mov	a,#___str_13
      0031C2 C0 E0            [24]  828 	push	acc
      0031C4 74 4F            [12]  829 	mov	a,#(___str_13 >> 8)
      0031C6 C0 E0            [24]  830 	push	acc
      0031C8 74 80            [12]  831 	mov	a,#0x80
      0031CA C0 E0            [24]  832 	push	acc
      0031CC 12 3F 80         [24]  833 	lcall	_printf
      0031CF E5 81            [12]  834 	mov	a,sp
      0031D1 24 FB            [12]  835 	add	a,#0xfb
      0031D3 F5 81            [12]  836 	mov	sp,a
                                    837 ;	8051_i2c_eeprom.c:127: printf("\n\r");
      0031D5 74 89            [12]  838 	mov	a,#___str_14
      0031D7 C0 E0            [24]  839 	push	acc
      0031D9 74 4F            [12]  840 	mov	a,#(___str_14 >> 8)
      0031DB C0 E0            [24]  841 	push	acc
      0031DD 74 80            [12]  842 	mov	a,#0x80
      0031DF C0 E0            [24]  843 	push	acc
      0031E1 12 3F 80         [24]  844 	lcall	_printf
      0031E4 15 81            [12]  845 	dec	sp
      0031E6 15 81            [12]  846 	dec	sp
      0031E8 15 81            [12]  847 	dec	sp
      0031EA D0 06            [24]  848 	pop	ar6
                                    849 ;	8051_i2c_eeprom.c:128: switch(user_input)
      0031EC BE 3F 03         [24]  850 	cjne	r6,#0x3f,00155$
      0031EF 02 32 D2         [24]  851 	ljmp	00109$
      0031F2                        852 00155$:
      0031F2 BE 48 03         [24]  853 	cjne	r6,#0x48,00156$
      0031F5 02 32 F3         [24]  854 	ljmp	00111$
      0031F8                        855 00156$:
      0031F8 BE 52 02         [24]  856 	cjne	r6,#0x52,00157$
      0031FB 80 76            [24]  857 	sjmp	00106$
      0031FD                        858 00157$:
      0031FD BE 57 02         [24]  859 	cjne	r6,#0x57,00158$
      003200 80 09            [24]  860 	sjmp	00101$
      003202                        861 00158$:
      003202 BE 58 03         [24]  862 	cjne	r6,#0x58,00159$
      003205 02 32 D8         [24]  863 	ljmp	00110$
      003208                        864 00159$:
      003208 02 33 2D         [24]  865 	ljmp	00112$
                                    866 ;	8051_i2c_eeprom.c:130: case 'W':
      00320B                        867 00101$:
                                    868 ;	8051_i2c_eeprom.c:132: printf("\n┌─────────────── WRITE OPERATION ──────────────┐\n\r");
      00320B 74 8C            [12]  869 	mov	a,#___str_15
      00320D C0 E0            [24]  870 	push	acc
      00320F 74 4F            [12]  871 	mov	a,#(___str_15 >> 8)
      003211 C0 E0            [24]  872 	push	acc
      003213 74 80            [12]  873 	mov	a,#0x80
      003215 C0 E0            [24]  874 	push	acc
      003217 12 3F 80         [24]  875 	lcall	_printf
      00321A 15 81            [12]  876 	dec	sp
      00321C 15 81            [12]  877 	dec	sp
      00321E 15 81            [12]  878 	dec	sp
                                    879 ;	8051_i2c_eeprom.c:134: addr = take_address();
      003220 12 33 45         [24]  880 	lcall	_take_address
      003223 AE 82            [24]  881 	mov	r6,dpl
      003225 AF 83            [24]  882 	mov	r7,dph
                                    883 ;	8051_i2c_eeprom.c:135: if(!address_range_flag) 
      003227 90 04 55         [24]  884 	mov	dptr,#_address_range_flag
      00322A E0               [24]  885 	movx	a,@dptr
      00322B F5 F0            [12]  886 	mov	b,a
      00322D A3               [24]  887 	inc	dptr
      00322E E0               [24]  888 	movx	a,@dptr
      00322F 45 F0            [12]  889 	orl	a,b
      003231 70 0C            [24]  890 	jnz	00103$
                                    891 ;	8051_i2c_eeprom.c:137: address_range_flag = 1;
      003233 90 04 55         [24]  892 	mov	dptr,#_address_range_flag
      003236 74 01            [12]  893 	mov	a,#0x01
      003238 F0               [24]  894 	movx	@dptr,a
      003239 E4               [12]  895 	clr	a
      00323A A3               [24]  896 	inc	dptr
      00323B F0               [24]  897 	movx	@dptr,a
                                    898 ;	8051_i2c_eeprom.c:138: break;
      00323C 02 31 B1         [24]  899 	ljmp	00115$
      00323F                        900 00103$:
                                    901 ;	8051_i2c_eeprom.c:141: data = take_data();
      00323F C0 07            [24]  902 	push	ar7
      003241 C0 06            [24]  903 	push	ar6
      003243 12 35 5E         [24]  904 	lcall	_take_data
      003246 AD 82            [24]  905 	mov	r5,dpl
      003248 D0 06            [24]  906 	pop	ar6
      00324A D0 07            [24]  907 	pop	ar7
                                    908 ;	8051_i2c_eeprom.c:142: if(!data_range_flag) 
      00324C 90 04 57         [24]  909 	mov	dptr,#_data_range_flag
      00324F E0               [24]  910 	movx	a,@dptr
      003250 F5 F0            [12]  911 	mov	b,a
      003252 A3               [24]  912 	inc	dptr
      003253 E0               [24]  913 	movx	a,@dptr
      003254 45 F0            [12]  914 	orl	a,b
      003256 70 0C            [24]  915 	jnz	00105$
                                    916 ;	8051_i2c_eeprom.c:144: data_range_flag = 1;
      003258 90 04 57         [24]  917 	mov	dptr,#_data_range_flag
      00325B 74 01            [12]  918 	mov	a,#0x01
      00325D F0               [24]  919 	movx	@dptr,a
      00325E E4               [12]  920 	clr	a
      00325F A3               [24]  921 	inc	dptr
      003260 F0               [24]  922 	movx	@dptr,a
                                    923 ;	8051_i2c_eeprom.c:145: break;
      003261 02 31 B1         [24]  924 	ljmp	00115$
      003264                        925 00105$:
                                    926 ;	8051_i2c_eeprom.c:148: eeprom_write(addr, data);
      003264 90 04 0F         [24]  927 	mov	dptr,#_eeprom_write_PARM_2
      003267 ED               [12]  928 	mov	a,r5
      003268 F0               [24]  929 	movx	@dptr,a
      003269 8E 82            [24]  930 	mov	dpl,r6
      00326B 8F 83            [24]  931 	mov	dph,r7
      00326D 12 36 D7         [24]  932 	lcall	_eeprom_write
                                    933 ;	8051_i2c_eeprom.c:149: break;
      003270 02 31 B1         [24]  934 	ljmp	00115$
                                    935 ;	8051_i2c_eeprom.c:151: case 'R':
      003273                        936 00106$:
                                    937 ;	8051_i2c_eeprom.c:153: printf("\n┌─────────────── READ OPERATION ───────────────┐\n\r");
      003273 74 FE            [12]  938 	mov	a,#___str_16
      003275 C0 E0            [24]  939 	push	acc
      003277 74 4F            [12]  940 	mov	a,#(___str_16 >> 8)
      003279 C0 E0            [24]  941 	push	acc
      00327B 74 80            [12]  942 	mov	a,#0x80
      00327D C0 E0            [24]  943 	push	acc
      00327F 12 3F 80         [24]  944 	lcall	_printf
      003282 15 81            [12]  945 	dec	sp
      003284 15 81            [12]  946 	dec	sp
      003286 15 81            [12]  947 	dec	sp
                                    948 ;	8051_i2c_eeprom.c:155: addr = take_address(); 
      003288 12 33 45         [24]  949 	lcall	_take_address
      00328B AE 82            [24]  950 	mov	r6,dpl
      00328D AF 83            [24]  951 	mov	r7,dph
                                    952 ;	8051_i2c_eeprom.c:156: if(!address_range_flag) 
      00328F 90 04 55         [24]  953 	mov	dptr,#_address_range_flag
      003292 E0               [24]  954 	movx	a,@dptr
      003293 F5 F0            [12]  955 	mov	b,a
      003295 A3               [24]  956 	inc	dptr
      003296 E0               [24]  957 	movx	a,@dptr
      003297 45 F0            [12]  958 	orl	a,b
      003299 70 0C            [24]  959 	jnz	00108$
                                    960 ;	8051_i2c_eeprom.c:158: address_range_flag = 1;
      00329B 90 04 55         [24]  961 	mov	dptr,#_address_range_flag
      00329E 74 01            [12]  962 	mov	a,#0x01
      0032A0 F0               [24]  963 	movx	@dptr,a
      0032A1 E4               [12]  964 	clr	a
      0032A2 A3               [24]  965 	inc	dptr
      0032A3 F0               [24]  966 	movx	@dptr,a
                                    967 ;	8051_i2c_eeprom.c:159: break;
      0032A4 02 31 B1         [24]  968 	ljmp	00115$
      0032A7                        969 00108$:
                                    970 ;	8051_i2c_eeprom.c:161: printf("| Reading from Address 0x%03X           |\n\r", addr);
      0032A7 C0 07            [24]  971 	push	ar7
      0032A9 C0 06            [24]  972 	push	ar6
      0032AB C0 06            [24]  973 	push	ar6
      0032AD C0 07            [24]  974 	push	ar7
      0032AF 74 72            [12]  975 	mov	a,#___str_17
      0032B1 C0 E0            [24]  976 	push	acc
      0032B3 74 50            [12]  977 	mov	a,#(___str_17 >> 8)
      0032B5 C0 E0            [24]  978 	push	acc
      0032B7 74 80            [12]  979 	mov	a,#0x80
      0032B9 C0 E0            [24]  980 	push	acc
      0032BB 12 3F 80         [24]  981 	lcall	_printf
      0032BE E5 81            [12]  982 	mov	a,sp
      0032C0 24 FB            [12]  983 	add	a,#0xfb
      0032C2 F5 81            [12]  984 	mov	sp,a
      0032C4 D0 06            [24]  985 	pop	ar6
      0032C6 D0 07            [24]  986 	pop	ar7
                                    987 ;	8051_i2c_eeprom.c:162: eeprom_read(addr);
      0032C8 8E 82            [24]  988 	mov	dpl,r6
      0032CA 8F 83            [24]  989 	mov	dph,r7
      0032CC 12 38 19         [24]  990 	lcall	_eeprom_read
                                    991 ;	8051_i2c_eeprom.c:163: break;
      0032CF 02 31 B1         [24]  992 	ljmp	00115$
                                    993 ;	8051_i2c_eeprom.c:166: case '?':
      0032D2                        994 00109$:
                                    995 ;	8051_i2c_eeprom.c:167: command_menu();
      0032D2 12 30 CF         [24]  996 	lcall	_command_menu
                                    997 ;	8051_i2c_eeprom.c:168: break;
      0032D5 02 31 B1         [24]  998 	ljmp	00115$
                                    999 ;	8051_i2c_eeprom.c:170: case 'X':
      0032D8                       1000 00110$:
                                   1001 ;	8051_i2c_eeprom.c:171: printf("\n┌─────────────── RESET OPERATION ───────────┐\n\r");
      0032D8 74 9E            [12] 1002 	mov	a,#___str_18
      0032DA C0 E0            [24] 1003 	push	acc
      0032DC 74 50            [12] 1004 	mov	a,#(___str_18 >> 8)
      0032DE C0 E0            [24] 1005 	push	acc
      0032E0 74 80            [12] 1006 	mov	a,#0x80
      0032E2 C0 E0            [24] 1007 	push	acc
      0032E4 12 3F 80         [24] 1008 	lcall	_printf
      0032E7 15 81            [12] 1009 	dec	sp
      0032E9 15 81            [12] 1010 	dec	sp
      0032EB 15 81            [12] 1011 	dec	sp
                                   1012 ;	8051_i2c_eeprom.c:172: eeprom_reset();
      0032ED 12 3D 2E         [24] 1013 	lcall	_eeprom_reset
                                   1014 ;	8051_i2c_eeprom.c:173: break;
      0032F0 02 31 B1         [24] 1015 	ljmp	00115$
                                   1016 ;	8051_i2c_eeprom.c:175: case 'H':
      0032F3                       1017 00111$:
                                   1018 ;	8051_i2c_eeprom.c:176: printf("\n┌───────────── HEX DUMP OPERATION ───────────────┐\n\r");
      0032F3 74 07            [12] 1019 	mov	a,#___str_19
      0032F5 C0 E0            [24] 1020 	push	acc
      0032F7 74 51            [12] 1021 	mov	a,#(___str_19 >> 8)
      0032F9 C0 E0            [24] 1022 	push	acc
      0032FB 74 80            [12] 1023 	mov	a,#0x80
      0032FD C0 E0            [24] 1024 	push	acc
      0032FF 12 3F 80         [24] 1025 	lcall	_printf
      003302 15 81            [12] 1026 	dec	sp
      003304 15 81            [12] 1027 	dec	sp
      003306 15 81            [12] 1028 	dec	sp
                                   1029 ;	8051_i2c_eeprom.c:178: start_add = take_address();
      003308 12 33 45         [24] 1030 	lcall	_take_address
      00330B AE 82            [24] 1031 	mov	r6,dpl
      00330D AF 83            [24] 1032 	mov	r7,dph
                                   1033 ;	8051_i2c_eeprom.c:190: end_add = take_address();
      00330F C0 07            [24] 1034 	push	ar7
      003311 C0 06            [24] 1035 	push	ar6
      003313 12 33 45         [24] 1036 	lcall	_take_address
      003316 AC 82            [24] 1037 	mov	r4,dpl
      003318 AD 83            [24] 1038 	mov	r5,dph
      00331A D0 06            [24] 1039 	pop	ar6
      00331C D0 07            [24] 1040 	pop	ar7
                                   1041 ;	8051_i2c_eeprom.c:193: EEPROM_hexump(start_add, end_add);
      00331E 90 04 18         [24] 1042 	mov	dptr,#_EEPROM_hexump_PARM_2
      003321 EC               [12] 1043 	mov	a,r4
      003322 F0               [24] 1044 	movx	@dptr,a
      003323 ED               [12] 1045 	mov	a,r5
      003324 A3               [24] 1046 	inc	dptr
      003325 F0               [24] 1047 	movx	@dptr,a
      003326 8E 82            [24] 1048 	mov	dpl,r6
      003328 8F 83            [24] 1049 	mov	dph,r7
      00332A 12 3A 2F         [24] 1050 	lcall	_EEPROM_hexump
                                   1051 ;	8051_i2c_eeprom.c:195: default:
      00332D                       1052 00112$:
                                   1053 ;	8051_i2c_eeprom.c:196: printf("INVALID INPUT\n\r");
      00332D 74 79            [12] 1054 	mov	a,#___str_20
      00332F C0 E0            [24] 1055 	push	acc
      003331 74 51            [12] 1056 	mov	a,#(___str_20 >> 8)
      003333 C0 E0            [24] 1057 	push	acc
      003335 74 80            [12] 1058 	mov	a,#0x80
      003337 C0 E0            [24] 1059 	push	acc
      003339 12 3F 80         [24] 1060 	lcall	_printf
      00333C 15 81            [12] 1061 	dec	sp
      00333E 15 81            [12] 1062 	dec	sp
      003340 15 81            [12] 1063 	dec	sp
                                   1064 ;	8051_i2c_eeprom.c:198: }
                                   1065 ;	8051_i2c_eeprom.c:201: }
      003342 02 31 B1         [24] 1066 	ljmp	00115$
                                   1067 ;------------------------------------------------------------
                                   1068 ;Allocation info for local variables in function 'take_address'
                                   1069 ;------------------------------------------------------------
                                   1070 ;input                     Allocated with name '_take_address_input_65537_70'
                                   1071 ;i                         Allocated with name '_take_address_i_65537_70'
                                   1072 ;c                         Allocated with name '_take_address_c_65537_70'
                                   1073 ;address                   Allocated with name '_take_address_address_65538_74'
                                   1074 ;block                     Allocated with name '_take_address_block_65539_78'
                                   1075 ;------------------------------------------------------------
                                   1076 ;	8051_i2c_eeprom.c:209: unsigned int take_address() 
                                   1077 ;	-----------------------------------------
                                   1078 ;	 function take_address
                                   1079 ;	-----------------------------------------
      003345                       1080 _take_address:
                                   1081 ;	8051_i2c_eeprom.c:211: printf("│ Enter address (hex, up to 3 characters): \n\r|");
      003345 74 89            [12] 1082 	mov	a,#___str_21
      003347 C0 E0            [24] 1083 	push	acc
      003349 74 51            [12] 1084 	mov	a,#(___str_21 >> 8)
      00334B C0 E0            [24] 1085 	push	acc
      00334D 74 80            [12] 1086 	mov	a,#0x80
      00334F C0 E0            [24] 1087 	push	acc
      003351 12 3F 80         [24] 1088 	lcall	_printf
      003354 15 81            [12] 1089 	dec	sp
      003356 15 81            [12] 1090 	dec	sp
      003358 15 81            [12] 1091 	dec	sp
                                   1092 ;	8051_i2c_eeprom.c:212: char input[4] = {0};  // Array for 3 hex chars + null terminator
      00335A 90 04 04         [24] 1093 	mov	dptr,#_take_address_input_65537_70
      00335D E4               [12] 1094 	clr	a
      00335E F0               [24] 1095 	movx	@dptr,a
      00335F 90 04 05         [24] 1096 	mov	dptr,#(_take_address_input_65537_70 + 0x0001)
      003362 F0               [24] 1097 	movx	@dptr,a
      003363 90 04 06         [24] 1098 	mov	dptr,#(_take_address_input_65537_70 + 0x0002)
      003366 F0               [24] 1099 	movx	@dptr,a
      003367 90 04 07         [24] 1100 	mov	dptr,#(_take_address_input_65537_70 + 0x0003)
      00336A F0               [24] 1101 	movx	@dptr,a
                                   1102 ;	8051_i2c_eeprom.c:216: printf("| $ ");
      00336B 74 BA            [12] 1103 	mov	a,#___str_22
      00336D C0 E0            [24] 1104 	push	acc
      00336F 74 51            [12] 1105 	mov	a,#(___str_22 >> 8)
      003371 C0 E0            [24] 1106 	push	acc
      003373 74 80            [12] 1107 	mov	a,#0x80
      003375 C0 E0            [24] 1108 	push	acc
      003377 12 3F 80         [24] 1109 	lcall	_printf
      00337A 15 81            [12] 1110 	dec	sp
      00337C 15 81            [12] 1111 	dec	sp
      00337E 15 81            [12] 1112 	dec	sp
                                   1113 ;	8051_i2c_eeprom.c:218: while (i < 3) {
      003380 7E 00            [12] 1114 	mov	r6,#0x00
      003382 7F 00            [12] 1115 	mov	r7,#0x00
      003384                       1116 00111$:
      003384 C3               [12] 1117 	clr	c
      003385 EE               [12] 1118 	mov	a,r6
      003386 94 03            [12] 1119 	subb	a,#0x03
      003388 EF               [12] 1120 	mov	a,r7
      003389 64 80            [12] 1121 	xrl	a,#0x80
      00338B 94 80            [12] 1122 	subb	a,#0x80
      00338D 50 5B            [24] 1123 	jnc	00113$
                                   1124 ;	8051_i2c_eeprom.c:220: c = getchar();
      00338F C0 07            [24] 1125 	push	ar7
      003391 C0 06            [24] 1126 	push	ar6
      003393 12 30 81         [24] 1127 	lcall	_getchar
      003396 AC 82            [24] 1128 	mov	r4,dpl
      003398 AD 83            [24] 1129 	mov	r5,dph
      00339A D0 06            [24] 1130 	pop	ar6
      00339C D0 07            [24] 1131 	pop	ar7
                                   1132 ;	8051_i2c_eeprom.c:223: if (c == '\r' || c == '\n') {
      00339E BC 0D 02         [24] 1133 	cjne	r4,#0x0d,00200$
      0033A1 80 47            [24] 1134 	sjmp	00113$
      0033A3                       1135 00200$:
      0033A3 BC 0A 02         [24] 1136 	cjne	r4,#0x0a,00201$
      0033A6 80 42            [24] 1137 	sjmp	00113$
      0033A8                       1138 00201$:
                                   1139 ;	8051_i2c_eeprom.c:228: if ((c >= '0' && c <= '9') || 
      0033A8 BC 30 00         [24] 1140 	cjne	r4,#0x30,00202$
      0033AB                       1141 00202$:
      0033AB 40 05            [24] 1142 	jc	00108$
      0033AD EC               [12] 1143 	mov	a,r4
      0033AE 24 C6            [12] 1144 	add	a,#0xff - 0x39
      0033B0 50 14            [24] 1145 	jnc	00104$
      0033B2                       1146 00108$:
                                   1147 ;	8051_i2c_eeprom.c:229: (c >= 'a' && c <= 'f') || 
      0033B2 BC 61 00         [24] 1148 	cjne	r4,#0x61,00205$
      0033B5                       1149 00205$:
      0033B5 40 05            [24] 1150 	jc	00110$
      0033B7 EC               [12] 1151 	mov	a,r4
      0033B8 24 99            [12] 1152 	add	a,#0xff - 0x66
      0033BA 50 0A            [24] 1153 	jnc	00104$
      0033BC                       1154 00110$:
                                   1155 ;	8051_i2c_eeprom.c:230: (c >= 'A' && c <= 'F')) {
      0033BC BC 41 00         [24] 1156 	cjne	r4,#0x41,00208$
      0033BF                       1157 00208$:
      0033BF 40 C3            [24] 1158 	jc	00111$
      0033C1 EC               [12] 1159 	mov	a,r4
      0033C2 24 B9            [12] 1160 	add	a,#0xff - 0x46
      0033C4 40 BE            [24] 1161 	jc	00111$
      0033C6                       1162 00104$:
                                   1163 ;	8051_i2c_eeprom.c:232: input[i] = c;
      0033C6 EE               [12] 1164 	mov	a,r6
      0033C7 24 04            [12] 1165 	add	a,#_take_address_input_65537_70
      0033C9 F5 82            [12] 1166 	mov	dpl,a
      0033CB EF               [12] 1167 	mov	a,r7
      0033CC 34 04            [12] 1168 	addc	a,#(_take_address_input_65537_70 >> 8)
      0033CE F5 83            [12] 1169 	mov	dph,a
      0033D0 EC               [12] 1170 	mov	a,r4
      0033D1 F0               [24] 1171 	movx	@dptr,a
                                   1172 ;	8051_i2c_eeprom.c:233: putchar(c);  // Echo character back
      0033D2 7D 00            [12] 1173 	mov	r5,#0x00
      0033D4 8C 82            [24] 1174 	mov	dpl,r4
      0033D6 8D 83            [24] 1175 	mov	dph,r5
      0033D8 C0 07            [24] 1176 	push	ar7
      0033DA C0 06            [24] 1177 	push	ar6
      0033DC 12 30 62         [24] 1178 	lcall	_putchar
      0033DF D0 06            [24] 1179 	pop	ar6
      0033E1 D0 07            [24] 1180 	pop	ar7
                                   1181 ;	8051_i2c_eeprom.c:234: i++;
      0033E3 0E               [12] 1182 	inc	r6
      0033E4 BE 00 9D         [24] 1183 	cjne	r6,#0x00,00111$
      0033E7 0F               [12] 1184 	inc	r7
      0033E8 80 9A            [24] 1185 	sjmp	00111$
      0033EA                       1186 00113$:
                                   1187 ;	8051_i2c_eeprom.c:238: input[i] = '\0';  // Null-terminate the string
      0033EA EE               [12] 1188 	mov	a,r6
      0033EB 24 04            [12] 1189 	add	a,#_take_address_input_65537_70
      0033ED F5 82            [12] 1190 	mov	dpl,a
      0033EF EF               [12] 1191 	mov	a,r7
      0033F0 34 04            [12] 1192 	addc	a,#(_take_address_input_65537_70 >> 8)
      0033F2 F5 83            [12] 1193 	mov	dph,a
      0033F4 E4               [12] 1194 	clr	a
      0033F5 F0               [24] 1195 	movx	@dptr,a
                                   1196 ;	8051_i2c_eeprom.c:241: unsigned int address = 0;
      0033F6 90 04 08         [24] 1197 	mov	dptr,#_take_address_address_65538_74
      0033F9 F0               [24] 1198 	movx	@dptr,a
      0033FA A3               [24] 1199 	inc	dptr
      0033FB F0               [24] 1200 	movx	@dptr,a
                                   1201 ;	8051_i2c_eeprom.c:242: for(i = 0; input[i] != '\0'; i++) {
      0033FC 7E 00            [12] 1202 	mov	r6,#0x00
      0033FE 7F 00            [12] 1203 	mov	r7,#0x00
      003400                       1204 00129$:
      003400 EE               [12] 1205 	mov	a,r6
      003401 24 04            [12] 1206 	add	a,#_take_address_input_65537_70
      003403 F5 82            [12] 1207 	mov	dpl,a
      003405 EF               [12] 1208 	mov	a,r7
      003406 34 04            [12] 1209 	addc	a,#(_take_address_input_65537_70 >> 8)
      003408 F5 83            [12] 1210 	mov	dph,a
      00340A E0               [24] 1211 	movx	a,@dptr
      00340B FD               [12] 1212 	mov	r5,a
      00340C 70 03            [24] 1213 	jnz	00212$
      00340E 02 34 B9         [24] 1214 	ljmp	00125$
      003411                       1215 00212$:
                                   1216 ;	8051_i2c_eeprom.c:243: address = address * 16;
      003411 90 04 08         [24] 1217 	mov	dptr,#_take_address_address_65538_74
      003414 E0               [24] 1218 	movx	a,@dptr
      003415 FB               [12] 1219 	mov	r3,a
      003416 A3               [24] 1220 	inc	dptr
      003417 E0               [24] 1221 	movx	a,@dptr
      003418 C4               [12] 1222 	swap	a
      003419 54 F0            [12] 1223 	anl	a,#0xf0
      00341B CB               [12] 1224 	xch	a,r3
      00341C C4               [12] 1225 	swap	a
      00341D CB               [12] 1226 	xch	a,r3
      00341E 6B               [12] 1227 	xrl	a,r3
      00341F CB               [12] 1228 	xch	a,r3
      003420 54 F0            [12] 1229 	anl	a,#0xf0
      003422 CB               [12] 1230 	xch	a,r3
      003423 6B               [12] 1231 	xrl	a,r3
      003424 FC               [12] 1232 	mov	r4,a
      003425 90 04 08         [24] 1233 	mov	dptr,#_take_address_address_65538_74
      003428 EB               [12] 1234 	mov	a,r3
      003429 F0               [24] 1235 	movx	@dptr,a
      00342A EC               [12] 1236 	mov	a,r4
      00342B A3               [24] 1237 	inc	dptr
      00342C F0               [24] 1238 	movx	@dptr,a
                                   1239 ;	8051_i2c_eeprom.c:244: if(input[i] >= '0' && input[i] <= '9')
      00342D BD 30 00         [24] 1240 	cjne	r5,#0x30,00213$
      003430                       1241 00213$:
      003430 40 23            [24] 1242 	jc	00122$
      003432 ED               [12] 1243 	mov	a,r5
      003433 24 C6            [12] 1244 	add	a,#0xff - 0x39
      003435 40 1E            [24] 1245 	jc	00122$
                                   1246 ;	8051_i2c_eeprom.c:245: address += input[i] - '0';
      003437 7C 00            [12] 1247 	mov	r4,#0x00
      003439 ED               [12] 1248 	mov	a,r5
      00343A 24 D0            [12] 1249 	add	a,#0xd0
      00343C FD               [12] 1250 	mov	r5,a
      00343D EC               [12] 1251 	mov	a,r4
      00343E 34 FF            [12] 1252 	addc	a,#0xff
      003440 FC               [12] 1253 	mov	r4,a
      003441 90 04 08         [24] 1254 	mov	dptr,#_take_address_address_65538_74
      003444 E0               [24] 1255 	movx	a,@dptr
      003445 FA               [12] 1256 	mov	r2,a
      003446 A3               [24] 1257 	inc	dptr
      003447 E0               [24] 1258 	movx	a,@dptr
      003448 FB               [12] 1259 	mov	r3,a
      003449 90 04 08         [24] 1260 	mov	dptr,#_take_address_address_65538_74
      00344C ED               [12] 1261 	mov	a,r5
      00344D 2A               [12] 1262 	add	a,r2
      00344E F0               [24] 1263 	movx	@dptr,a
      00344F EC               [12] 1264 	mov	a,r4
      003450 3B               [12] 1265 	addc	a,r3
      003451 A3               [24] 1266 	inc	dptr
      003452 F0               [24] 1267 	movx	@dptr,a
      003453 80 5C            [24] 1268 	sjmp	00130$
      003455                       1269 00122$:
                                   1270 ;	8051_i2c_eeprom.c:246: else if(input[i] >= 'A' && input[i] <= 'F')
      003455 EE               [12] 1271 	mov	a,r6
      003456 24 04            [12] 1272 	add	a,#_take_address_input_65537_70
      003458 F5 82            [12] 1273 	mov	dpl,a
      00345A EF               [12] 1274 	mov	a,r7
      00345B 34 04            [12] 1275 	addc	a,#(_take_address_input_65537_70 >> 8)
      00345D F5 83            [12] 1276 	mov	dph,a
      00345F E0               [24] 1277 	movx	a,@dptr
      003460 FD               [12] 1278 	mov	r5,a
      003461 BD 41 00         [24] 1279 	cjne	r5,#0x41,00216$
      003464                       1280 00216$:
      003464 40 25            [24] 1281 	jc	00118$
      003466 ED               [12] 1282 	mov	a,r5
      003467 24 B9            [12] 1283 	add	a,#0xff - 0x46
      003469 40 20            [24] 1284 	jc	00118$
                                   1285 ;	8051_i2c_eeprom.c:247: address += input[i] - 'A' + 10;
      00346B 8D 03            [24] 1286 	mov	ar3,r5
      00346D 7C 00            [12] 1287 	mov	r4,#0x00
      00346F 74 C9            [12] 1288 	mov	a,#0xc9
      003471 2B               [12] 1289 	add	a,r3
      003472 FB               [12] 1290 	mov	r3,a
      003473 74 FF            [12] 1291 	mov	a,#0xff
      003475 3C               [12] 1292 	addc	a,r4
      003476 FC               [12] 1293 	mov	r4,a
      003477 90 04 08         [24] 1294 	mov	dptr,#_take_address_address_65538_74
      00347A E0               [24] 1295 	movx	a,@dptr
      00347B F9               [12] 1296 	mov	r1,a
      00347C A3               [24] 1297 	inc	dptr
      00347D E0               [24] 1298 	movx	a,@dptr
      00347E FA               [12] 1299 	mov	r2,a
      00347F 90 04 08         [24] 1300 	mov	dptr,#_take_address_address_65538_74
      003482 EB               [12] 1301 	mov	a,r3
      003483 29               [12] 1302 	add	a,r1
      003484 F0               [24] 1303 	movx	@dptr,a
      003485 EC               [12] 1304 	mov	a,r4
      003486 3A               [12] 1305 	addc	a,r2
      003487 A3               [24] 1306 	inc	dptr
      003488 F0               [24] 1307 	movx	@dptr,a
      003489 80 26            [24] 1308 	sjmp	00130$
      00348B                       1309 00118$:
                                   1310 ;	8051_i2c_eeprom.c:248: else if(input[i] >= 'a' && input[i] <= 'f')
      00348B BD 61 00         [24] 1311 	cjne	r5,#0x61,00219$
      00348E                       1312 00219$:
      00348E 40 21            [24] 1313 	jc	00130$
      003490 ED               [12] 1314 	mov	a,r5
      003491 24 99            [12] 1315 	add	a,#0xff - 0x66
      003493 40 1C            [24] 1316 	jc	00130$
                                   1317 ;	8051_i2c_eeprom.c:249: address += input[i] - 'a' + 10;
      003495 7C 00            [12] 1318 	mov	r4,#0x00
      003497 74 A9            [12] 1319 	mov	a,#0xa9
      003499 2D               [12] 1320 	add	a,r5
      00349A FD               [12] 1321 	mov	r5,a
      00349B 74 FF            [12] 1322 	mov	a,#0xff
      00349D 3C               [12] 1323 	addc	a,r4
      00349E FC               [12] 1324 	mov	r4,a
      00349F 90 04 08         [24] 1325 	mov	dptr,#_take_address_address_65538_74
      0034A2 E0               [24] 1326 	movx	a,@dptr
      0034A3 FA               [12] 1327 	mov	r2,a
      0034A4 A3               [24] 1328 	inc	dptr
      0034A5 E0               [24] 1329 	movx	a,@dptr
      0034A6 FB               [12] 1330 	mov	r3,a
      0034A7 90 04 08         [24] 1331 	mov	dptr,#_take_address_address_65538_74
      0034AA ED               [12] 1332 	mov	a,r5
      0034AB 2A               [12] 1333 	add	a,r2
      0034AC F0               [24] 1334 	movx	@dptr,a
      0034AD EC               [12] 1335 	mov	a,r4
      0034AE 3B               [12] 1336 	addc	a,r3
      0034AF A3               [24] 1337 	inc	dptr
      0034B0 F0               [24] 1338 	movx	@dptr,a
      0034B1                       1339 00130$:
                                   1340 ;	8051_i2c_eeprom.c:242: for(i = 0; input[i] != '\0'; i++) {
      0034B1 0E               [12] 1341 	inc	r6
      0034B2 BE 00 01         [24] 1342 	cjne	r6,#0x00,00222$
      0034B5 0F               [12] 1343 	inc	r7
      0034B6                       1344 00222$:
      0034B6 02 34 00         [24] 1345 	ljmp	00129$
      0034B9                       1346 00125$:
                                   1347 ;	8051_i2c_eeprom.c:252: printf("\n\r│ Entered address: 0x%03X\n\r", address);
      0034B9 90 04 08         [24] 1348 	mov	dptr,#_take_address_address_65538_74
      0034BC E0               [24] 1349 	movx	a,@dptr
      0034BD FE               [12] 1350 	mov	r6,a
      0034BE A3               [24] 1351 	inc	dptr
      0034BF E0               [24] 1352 	movx	a,@dptr
      0034C0 FF               [12] 1353 	mov	r7,a
      0034C1 C0 07            [24] 1354 	push	ar7
      0034C3 C0 06            [24] 1355 	push	ar6
      0034C5 C0 06            [24] 1356 	push	ar6
      0034C7 C0 07            [24] 1357 	push	ar7
      0034C9 74 BF            [12] 1358 	mov	a,#___str_23
      0034CB C0 E0            [24] 1359 	push	acc
      0034CD 74 51            [12] 1360 	mov	a,#(___str_23 >> 8)
      0034CF C0 E0            [24] 1361 	push	acc
      0034D1 74 80            [12] 1362 	mov	a,#0x80
      0034D3 C0 E0            [24] 1363 	push	acc
      0034D5 12 3F 80         [24] 1364 	lcall	_printf
      0034D8 E5 81            [12] 1365 	mov	a,sp
      0034DA 24 FB            [12] 1366 	add	a,#0xfb
      0034DC F5 81            [12] 1367 	mov	sp,a
      0034DE D0 06            [24] 1368 	pop	ar6
      0034E0 D0 07            [24] 1369 	pop	ar7
                                   1370 ;	8051_i2c_eeprom.c:253: if(address > 0x7ff) 
      0034E2 C3               [12] 1371 	clr	c
      0034E3 74 FF            [12] 1372 	mov	a,#0xff
      0034E5 9E               [12] 1373 	subb	a,r6
      0034E6 74 07            [12] 1374 	mov	a,#0x07
      0034E8 9F               [12] 1375 	subb	a,r7
      0034E9 50 5F            [24] 1376 	jnc	00127$
                                   1377 ;	8051_i2c_eeprom.c:255: printf("╔══════════════════════════════════════════╗\n\r");
      0034EB 74 DF            [12] 1378 	mov	a,#___str_24
      0034ED C0 E0            [24] 1379 	push	acc
      0034EF 74 51            [12] 1380 	mov	a,#(___str_24 >> 8)
      0034F1 C0 E0            [24] 1381 	push	acc
      0034F3 74 80            [12] 1382 	mov	a,#0x80
      0034F5 C0 E0            [24] 1383 	push	acc
      0034F7 12 3F 80         [24] 1384 	lcall	_printf
      0034FA 15 81            [12] 1385 	dec	sp
      0034FC 15 81            [12] 1386 	dec	sp
      0034FE 15 81            [12] 1387 	dec	sp
                                   1388 ;	8051_i2c_eeprom.c:256: printf("║       ! ADDRESS OUT OF RANGE !         ║\n\r");
      003500 74 66            [12] 1389 	mov	a,#___str_25
      003502 C0 E0            [24] 1390 	push	acc
      003504 74 52            [12] 1391 	mov	a,#(___str_25 >> 8)
      003506 C0 E0            [24] 1392 	push	acc
      003508 74 80            [12] 1393 	mov	a,#0x80
      00350A C0 E0            [24] 1394 	push	acc
      00350C 12 3F 80         [24] 1395 	lcall	_printf
      00350F 15 81            [12] 1396 	dec	sp
      003511 15 81            [12] 1397 	dec	sp
      003513 15 81            [12] 1398 	dec	sp
                                   1399 ;	8051_i2c_eeprom.c:257: printf("║     Please Enter Valid Address         ║\n\r");
      003515 74 97            [12] 1400 	mov	a,#___str_26
      003517 C0 E0            [24] 1401 	push	acc
      003519 74 52            [12] 1402 	mov	a,#(___str_26 >> 8)
      00351B C0 E0            [24] 1403 	push	acc
      00351D 74 80            [12] 1404 	mov	a,#0x80
      00351F C0 E0            [24] 1405 	push	acc
      003521 12 3F 80         [24] 1406 	lcall	_printf
      003524 15 81            [12] 1407 	dec	sp
      003526 15 81            [12] 1408 	dec	sp
      003528 15 81            [12] 1409 	dec	sp
                                   1410 ;	8051_i2c_eeprom.c:258: printf("╚══════════════════════════════════════════╝\n\r");
      00352A 74 C8            [12] 1411 	mov	a,#___str_27
      00352C C0 E0            [24] 1412 	push	acc
      00352E 74 52            [12] 1413 	mov	a,#(___str_27 >> 8)
      003530 C0 E0            [24] 1414 	push	acc
      003532 74 80            [12] 1415 	mov	a,#0x80
      003534 C0 E0            [24] 1416 	push	acc
      003536 12 3F 80         [24] 1417 	lcall	_printf
      003539 15 81            [12] 1418 	dec	sp
      00353B 15 81            [12] 1419 	dec	sp
      00353D 15 81            [12] 1420 	dec	sp
                                   1421 ;	8051_i2c_eeprom.c:259: address_range_flag = 0;
      00353F 90 04 55         [24] 1422 	mov	dptr,#_address_range_flag
      003542 E4               [12] 1423 	clr	a
      003543 F0               [24] 1424 	movx	@dptr,a
      003544 A3               [24] 1425 	inc	dptr
      003545 F0               [24] 1426 	movx	@dptr,a
                                   1427 ;	8051_i2c_eeprom.c:260: return 0;
      003546 90 00 00         [24] 1428 	mov	dptr,#0x0000
      003549 22               [24] 1429 	ret
      00354A                       1430 00127$:
                                   1431 ;	8051_i2c_eeprom.c:264: address = address%256;     //word address
      00354A 90 04 08         [24] 1432 	mov	dptr,#_take_address_address_65538_74
      00354D EE               [12] 1433 	mov	a,r6
      00354E F0               [24] 1434 	movx	@dptr,a
      00354F E4               [12] 1435 	clr	a
      003550 A3               [24] 1436 	inc	dptr
      003551 F0               [24] 1437 	movx	@dptr,a
                                   1438 ;	8051_i2c_eeprom.c:267: return address;
      003552 90 04 08         [24] 1439 	mov	dptr,#_take_address_address_65538_74
      003555 E0               [24] 1440 	movx	a,@dptr
      003556 FE               [12] 1441 	mov	r6,a
      003557 A3               [24] 1442 	inc	dptr
      003558 E0               [24] 1443 	movx	a,@dptr
                                   1444 ;	8051_i2c_eeprom.c:268: }
      003559 8E 82            [24] 1445 	mov	dpl,r6
      00355B F5 83            [12] 1446 	mov	dph,a
      00355D 22               [24] 1447 	ret
                                   1448 ;------------------------------------------------------------
                                   1449 ;Allocation info for local variables in function 'take_data'
                                   1450 ;------------------------------------------------------------
                                   1451 ;input                     Allocated with name '_take_data_input_65537_80'
                                   1452 ;i                         Allocated with name '_take_data_i_65537_80'
                                   1453 ;c                         Allocated with name '_take_data_c_65537_80'
                                   1454 ;data                      Allocated with name '_take_data_data_65538_84'
                                   1455 ;------------------------------------------------------------
                                   1456 ;	8051_i2c_eeprom.c:276: unsigned char take_data()
                                   1457 ;	-----------------------------------------
                                   1458 ;	 function take_data
                                   1459 ;	-----------------------------------------
      00355E                       1460 _take_data:
                                   1461 ;	8051_i2c_eeprom.c:278: printf("│ Enter data (hex, up to 2 characters): \n\r|");
      00355E 74 4F            [12] 1462 	mov	a,#___str_28
      003560 C0 E0            [24] 1463 	push	acc
      003562 74 53            [12] 1464 	mov	a,#(___str_28 >> 8)
      003564 C0 E0            [24] 1465 	push	acc
      003566 74 80            [12] 1466 	mov	a,#0x80
      003568 C0 E0            [24] 1467 	push	acc
      00356A 12 3F 80         [24] 1468 	lcall	_printf
      00356D 15 81            [12] 1469 	dec	sp
      00356F 15 81            [12] 1470 	dec	sp
      003571 15 81            [12] 1471 	dec	sp
                                   1472 ;	8051_i2c_eeprom.c:279: char input[4] = {0};  // Array for 3 hex chars + null terminator
      003573 90 04 0A         [24] 1473 	mov	dptr,#_take_data_input_65537_80
      003576 E4               [12] 1474 	clr	a
      003577 F0               [24] 1475 	movx	@dptr,a
      003578 90 04 0B         [24] 1476 	mov	dptr,#(_take_data_input_65537_80 + 0x0001)
      00357B F0               [24] 1477 	movx	@dptr,a
      00357C 90 04 0C         [24] 1478 	mov	dptr,#(_take_data_input_65537_80 + 0x0002)
      00357F F0               [24] 1479 	movx	@dptr,a
      003580 90 04 0D         [24] 1480 	mov	dptr,#(_take_data_input_65537_80 + 0x0003)
      003583 F0               [24] 1481 	movx	@dptr,a
                                   1482 ;	8051_i2c_eeprom.c:283: printf("$ ");
      003584 74 7D            [12] 1483 	mov	a,#___str_29
      003586 C0 E0            [24] 1484 	push	acc
      003588 74 53            [12] 1485 	mov	a,#(___str_29 >> 8)
      00358A C0 E0            [24] 1486 	push	acc
      00358C 74 80            [12] 1487 	mov	a,#0x80
      00358E C0 E0            [24] 1488 	push	acc
      003590 12 3F 80         [24] 1489 	lcall	_printf
      003593 15 81            [12] 1490 	dec	sp
      003595 15 81            [12] 1491 	dec	sp
      003597 15 81            [12] 1492 	dec	sp
                                   1493 ;	8051_i2c_eeprom.c:285: while (i < 3) {
      003599 7E 00            [12] 1494 	mov	r6,#0x00
      00359B 7F 00            [12] 1495 	mov	r7,#0x00
      00359D                       1496 00111$:
      00359D C3               [12] 1497 	clr	c
      00359E EE               [12] 1498 	mov	a,r6
      00359F 94 03            [12] 1499 	subb	a,#0x03
      0035A1 EF               [12] 1500 	mov	a,r7
      0035A2 64 80            [12] 1501 	xrl	a,#0x80
      0035A4 94 80            [12] 1502 	subb	a,#0x80
      0035A6 50 5B            [24] 1503 	jnc	00113$
                                   1504 ;	8051_i2c_eeprom.c:287: c = getchar();
      0035A8 C0 07            [24] 1505 	push	ar7
      0035AA C0 06            [24] 1506 	push	ar6
      0035AC 12 30 81         [24] 1507 	lcall	_getchar
      0035AF AC 82            [24] 1508 	mov	r4,dpl
      0035B1 AD 83            [24] 1509 	mov	r5,dph
      0035B3 D0 06            [24] 1510 	pop	ar6
      0035B5 D0 07            [24] 1511 	pop	ar7
                                   1512 ;	8051_i2c_eeprom.c:290: if (c == '\r' || c == '\n') {
      0035B7 BC 0D 02         [24] 1513 	cjne	r4,#0x0d,00200$
      0035BA 80 47            [24] 1514 	sjmp	00113$
      0035BC                       1515 00200$:
      0035BC BC 0A 02         [24] 1516 	cjne	r4,#0x0a,00201$
      0035BF 80 42            [24] 1517 	sjmp	00113$
      0035C1                       1518 00201$:
                                   1519 ;	8051_i2c_eeprom.c:295: if ((c >= '0' && c <= '9') ||
      0035C1 BC 30 00         [24] 1520 	cjne	r4,#0x30,00202$
      0035C4                       1521 00202$:
      0035C4 40 05            [24] 1522 	jc	00108$
      0035C6 EC               [12] 1523 	mov	a,r4
      0035C7 24 C6            [12] 1524 	add	a,#0xff - 0x39
      0035C9 50 14            [24] 1525 	jnc	00104$
      0035CB                       1526 00108$:
                                   1527 ;	8051_i2c_eeprom.c:296: (c >= 'a' && c <= 'f') ||
      0035CB BC 61 00         [24] 1528 	cjne	r4,#0x61,00205$
      0035CE                       1529 00205$:
      0035CE 40 05            [24] 1530 	jc	00110$
      0035D0 EC               [12] 1531 	mov	a,r4
      0035D1 24 99            [12] 1532 	add	a,#0xff - 0x66
      0035D3 50 0A            [24] 1533 	jnc	00104$
      0035D5                       1534 00110$:
                                   1535 ;	8051_i2c_eeprom.c:297: (c >= 'A' && c <= 'F')) {
      0035D5 BC 41 00         [24] 1536 	cjne	r4,#0x41,00208$
      0035D8                       1537 00208$:
      0035D8 40 C3            [24] 1538 	jc	00111$
      0035DA EC               [12] 1539 	mov	a,r4
      0035DB 24 B9            [12] 1540 	add	a,#0xff - 0x46
      0035DD 40 BE            [24] 1541 	jc	00111$
      0035DF                       1542 00104$:
                                   1543 ;	8051_i2c_eeprom.c:299: input[i] = c;
      0035DF EE               [12] 1544 	mov	a,r6
      0035E0 24 0A            [12] 1545 	add	a,#_take_data_input_65537_80
      0035E2 F5 82            [12] 1546 	mov	dpl,a
      0035E4 EF               [12] 1547 	mov	a,r7
      0035E5 34 04            [12] 1548 	addc	a,#(_take_data_input_65537_80 >> 8)
      0035E7 F5 83            [12] 1549 	mov	dph,a
      0035E9 EC               [12] 1550 	mov	a,r4
      0035EA F0               [24] 1551 	movx	@dptr,a
                                   1552 ;	8051_i2c_eeprom.c:300: putchar(c);  // Echo character back
      0035EB 7D 00            [12] 1553 	mov	r5,#0x00
      0035ED 8C 82            [24] 1554 	mov	dpl,r4
      0035EF 8D 83            [24] 1555 	mov	dph,r5
      0035F1 C0 07            [24] 1556 	push	ar7
      0035F3 C0 06            [24] 1557 	push	ar6
      0035F5 12 30 62         [24] 1558 	lcall	_putchar
      0035F8 D0 06            [24] 1559 	pop	ar6
      0035FA D0 07            [24] 1560 	pop	ar7
                                   1561 ;	8051_i2c_eeprom.c:301: i++;
      0035FC 0E               [12] 1562 	inc	r6
      0035FD BE 00 9D         [24] 1563 	cjne	r6,#0x00,00111$
      003600 0F               [12] 1564 	inc	r7
      003601 80 9A            [24] 1565 	sjmp	00111$
      003603                       1566 00113$:
                                   1567 ;	8051_i2c_eeprom.c:305: input[i] = '\0';  // Null-terminate the string
      003603 EE               [12] 1568 	mov	a,r6
      003604 24 0A            [12] 1569 	add	a,#_take_data_input_65537_80
      003606 F5 82            [12] 1570 	mov	dpl,a
      003608 EF               [12] 1571 	mov	a,r7
      003609 34 04            [12] 1572 	addc	a,#(_take_data_input_65537_80 >> 8)
      00360B F5 83            [12] 1573 	mov	dph,a
      00360D E4               [12] 1574 	clr	a
      00360E F0               [24] 1575 	movx	@dptr,a
                                   1576 ;	8051_i2c_eeprom.c:308: unsigned char data = 0;
      00360F 90 04 0E         [24] 1577 	mov	dptr,#_take_data_data_65538_84
      003612 F0               [24] 1578 	movx	@dptr,a
                                   1579 ;	8051_i2c_eeprom.c:309: for (i = 0; input[i] != '\0'; i++) {
      003613 7E 00            [12] 1580 	mov	r6,#0x00
      003615 7F 00            [12] 1581 	mov	r7,#0x00
      003617                       1582 00129$:
      003617 EE               [12] 1583 	mov	a,r6
      003618 24 0A            [12] 1584 	add	a,#_take_data_input_65537_80
      00361A F5 82            [12] 1585 	mov	dpl,a
      00361C EF               [12] 1586 	mov	a,r7
      00361D 34 04            [12] 1587 	addc	a,#(_take_data_input_65537_80 >> 8)
      00361F F5 83            [12] 1588 	mov	dph,a
      003621 E0               [24] 1589 	movx	a,@dptr
      003622 FD               [12] 1590 	mov	r5,a
      003623 70 03            [24] 1591 	jnz	00212$
      003625 02 36 8A         [24] 1592 	ljmp	00125$
      003628                       1593 00212$:
                                   1594 ;	8051_i2c_eeprom.c:310: data = data * 16;
      003628 90 04 0E         [24] 1595 	mov	dptr,#_take_data_data_65538_84
      00362B E0               [24] 1596 	movx	a,@dptr
      00362C C4               [12] 1597 	swap	a
      00362D 54 F0            [12] 1598 	anl	a,#0xf0
      00362F FC               [12] 1599 	mov	r4,a
      003630 F0               [24] 1600 	movx	@dptr,a
                                   1601 ;	8051_i2c_eeprom.c:311: if (input[i] >= '0' && input[i] <= '9')
      003631 BD 30 00         [24] 1602 	cjne	r5,#0x30,00213$
      003634                       1603 00213$:
      003634 40 12            [24] 1604 	jc	00122$
      003636 ED               [12] 1605 	mov	a,r5
      003637 24 C6            [12] 1606 	add	a,#0xff - 0x39
      003639 40 0D            [24] 1607 	jc	00122$
                                   1608 ;	8051_i2c_eeprom.c:312: data += input[i] - '0';
      00363B ED               [12] 1609 	mov	a,r5
      00363C 24 D0            [12] 1610 	add	a,#0xd0
      00363E FD               [12] 1611 	mov	r5,a
      00363F 90 04 0E         [24] 1612 	mov	dptr,#_take_data_data_65538_84
      003642 E0               [24] 1613 	movx	a,@dptr
      003643 FC               [12] 1614 	mov	r4,a
      003644 2D               [12] 1615 	add	a,r5
      003645 F0               [24] 1616 	movx	@dptr,a
      003646 80 3A            [24] 1617 	sjmp	00130$
      003648                       1618 00122$:
                                   1619 ;	8051_i2c_eeprom.c:313: else if (input[i] >= 'A' && input[i] <= 'F')
      003648 EE               [12] 1620 	mov	a,r6
      003649 24 0A            [12] 1621 	add	a,#_take_data_input_65537_80
      00364B F5 82            [12] 1622 	mov	dpl,a
      00364D EF               [12] 1623 	mov	a,r7
      00364E 34 04            [12] 1624 	addc	a,#(_take_data_input_65537_80 >> 8)
      003650 F5 83            [12] 1625 	mov	dph,a
      003652 E0               [24] 1626 	movx	a,@dptr
      003653 FD               [12] 1627 	mov	r5,a
      003654 BD 41 00         [24] 1628 	cjne	r5,#0x41,00216$
      003657                       1629 00216$:
      003657 40 14            [24] 1630 	jc	00118$
      003659 ED               [12] 1631 	mov	a,r5
      00365A 24 B9            [12] 1632 	add	a,#0xff - 0x46
      00365C 40 0F            [24] 1633 	jc	00118$
                                   1634 ;	8051_i2c_eeprom.c:314: data += input[i] - 'A' + 10;
      00365E 8D 04            [24] 1635 	mov	ar4,r5
      003660 74 C9            [12] 1636 	mov	a,#0xc9
      003662 2C               [12] 1637 	add	a,r4
      003663 FC               [12] 1638 	mov	r4,a
      003664 90 04 0E         [24] 1639 	mov	dptr,#_take_data_data_65538_84
      003667 E0               [24] 1640 	movx	a,@dptr
      003668 FB               [12] 1641 	mov	r3,a
      003669 2C               [12] 1642 	add	a,r4
      00366A F0               [24] 1643 	movx	@dptr,a
      00366B 80 15            [24] 1644 	sjmp	00130$
      00366D                       1645 00118$:
                                   1646 ;	8051_i2c_eeprom.c:315: else if (input[i] >= 'a' && input[i] <= 'f')
      00366D BD 61 00         [24] 1647 	cjne	r5,#0x61,00219$
      003670                       1648 00219$:
      003670 40 10            [24] 1649 	jc	00130$
      003672 ED               [12] 1650 	mov	a,r5
      003673 24 99            [12] 1651 	add	a,#0xff - 0x66
      003675 40 0B            [24] 1652 	jc	00130$
                                   1653 ;	8051_i2c_eeprom.c:316: data += input[i] - 'a' + 10;
      003677 74 A9            [12] 1654 	mov	a,#0xa9
      003679 2D               [12] 1655 	add	a,r5
      00367A FD               [12] 1656 	mov	r5,a
      00367B 90 04 0E         [24] 1657 	mov	dptr,#_take_data_data_65538_84
      00367E E0               [24] 1658 	movx	a,@dptr
      00367F FC               [12] 1659 	mov	r4,a
      003680 2D               [12] 1660 	add	a,r5
      003681 F0               [24] 1661 	movx	@dptr,a
      003682                       1662 00130$:
                                   1663 ;	8051_i2c_eeprom.c:309: for (i = 0; input[i] != '\0'; i++) {
      003682 0E               [12] 1664 	inc	r6
      003683 BE 00 01         [24] 1665 	cjne	r6,#0x00,00222$
      003686 0F               [12] 1666 	inc	r7
      003687                       1667 00222$:
      003687 02 36 17         [24] 1668 	ljmp	00129$
      00368A                       1669 00125$:
                                   1670 ;	8051_i2c_eeprom.c:319: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      00368A 90 04 0E         [24] 1671 	mov	dptr,#_take_data_data_65538_84
      00368D E0               [24] 1672 	movx	a,@dptr
      00368E FF               [12] 1673 	mov	r7,a
      00368F FD               [12] 1674 	mov	r5,a
      003690 7E 00            [12] 1675 	mov	r6,#0x00
      003692 C0 07            [24] 1676 	push	ar7
      003694 C0 05            [24] 1677 	push	ar5
      003696 C0 06            [24] 1678 	push	ar6
      003698 74 80            [12] 1679 	mov	a,#___str_30
      00369A C0 E0            [24] 1680 	push	acc
      00369C 74 53            [12] 1681 	mov	a,#(___str_30 >> 8)
      00369E C0 E0            [24] 1682 	push	acc
      0036A0 74 80            [12] 1683 	mov	a,#0x80
      0036A2 C0 E0            [24] 1684 	push	acc
      0036A4 12 3F 80         [24] 1685 	lcall	_printf
      0036A7 E5 81            [12] 1686 	mov	a,sp
      0036A9 24 FB            [12] 1687 	add	a,#0xfb
      0036AB F5 81            [12] 1688 	mov	sp,a
      0036AD D0 07            [24] 1689 	pop	ar7
                                   1690 ;	8051_i2c_eeprom.c:320: if(data > 0xfe)
      0036AF EF               [12] 1691 	mov	a,r7
      0036B0 24 01            [12] 1692 	add	a,#0xff - 0xfe
      0036B2 50 20            [24] 1693 	jnc	00127$
                                   1694 ;	8051_i2c_eeprom.c:322: printf("Data out of Range\n\r");
      0036B4 74 9D            [12] 1695 	mov	a,#___str_31
      0036B6 C0 E0            [24] 1696 	push	acc
      0036B8 74 53            [12] 1697 	mov	a,#(___str_31 >> 8)
      0036BA C0 E0            [24] 1698 	push	acc
      0036BC 74 80            [12] 1699 	mov	a,#0x80
      0036BE C0 E0            [24] 1700 	push	acc
      0036C0 12 3F 80         [24] 1701 	lcall	_printf
      0036C3 15 81            [12] 1702 	dec	sp
      0036C5 15 81            [12] 1703 	dec	sp
      0036C7 15 81            [12] 1704 	dec	sp
                                   1705 ;	8051_i2c_eeprom.c:323: data_range_flag = 0;
      0036C9 90 04 57         [24] 1706 	mov	dptr,#_data_range_flag
      0036CC E4               [12] 1707 	clr	a
      0036CD F0               [24] 1708 	movx	@dptr,a
      0036CE A3               [24] 1709 	inc	dptr
      0036CF F0               [24] 1710 	movx	@dptr,a
                                   1711 ;	8051_i2c_eeprom.c:324: return 0;
      0036D0 75 82 00         [24] 1712 	mov	dpl,#0x00
      0036D3 22               [24] 1713 	ret
      0036D4                       1714 00127$:
                                   1715 ;	8051_i2c_eeprom.c:326: return data;
      0036D4 8F 82            [24] 1716 	mov	dpl,r7
                                   1717 ;	8051_i2c_eeprom.c:328: }
      0036D6 22               [24] 1718 	ret
                                   1719 ;------------------------------------------------------------
                                   1720 ;Allocation info for local variables in function 'eeprom_write'
                                   1721 ;------------------------------------------------------------
                                   1722 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                   1723 ;address                   Allocated with name '_eeprom_write_address_65536_88'
                                   1724 ;i                         Allocated with name '_eeprom_write_i_131072_93'
                                   1725 ;------------------------------------------------------------
                                   1726 ;	8051_i2c_eeprom.c:344: int eeprom_write(unsigned int address, unsigned char data) 
                                   1727 ;	-----------------------------------------
                                   1728 ;	 function eeprom_write
                                   1729 ;	-----------------------------------------
      0036D7                       1730 _eeprom_write:
      0036D7 AF 83            [24] 1731 	mov	r7,dph
      0036D9 E5 82            [12] 1732 	mov	a,dpl
      0036DB 90 04 10         [24] 1733 	mov	dptr,#_eeprom_write_address_65536_88
      0036DE F0               [24] 1734 	movx	@dptr,a
      0036DF EF               [12] 1735 	mov	a,r7
      0036E0 A3               [24] 1736 	inc	dptr
      0036E1 F0               [24] 1737 	movx	@dptr,a
                                   1738 ;	8051_i2c_eeprom.c:347: i2c_start();
      0036E2 12 3A 1A         [24] 1739 	lcall	_i2c_start
                                   1740 ;	8051_i2c_eeprom.c:350: if(!i2c_write(EEPROM_ID | block | WRITE)) {
      0036E5 90 04 59         [24] 1741 	mov	dptr,#_block
      0036E8 E0               [24] 1742 	movx	a,@dptr
      0036E9 FE               [12] 1743 	mov	r6,a
      0036EA A3               [24] 1744 	inc	dptr
      0036EB E0               [24] 1745 	movx	a,@dptr
      0036EC 43 06 A0         [24] 1746 	orl	ar6,#0xa0
      0036EF 8E 82            [24] 1747 	mov	dpl,r6
      0036F1 12 39 2D         [24] 1748 	lcall	_i2c_write
      0036F4 E5 82            [12] 1749 	mov	a,dpl
      0036F6 85 83 F0         [24] 1750 	mov	b,dph
      0036F9 45 F0            [12] 1751 	orl	a,b
      0036FB 70 1C            [24] 1752 	jnz	00102$
                                   1753 ;	8051_i2c_eeprom.c:351: printf("Error: No ACK for device address (write)\n\r");
      0036FD 74 B1            [12] 1754 	mov	a,#___str_32
      0036FF C0 E0            [24] 1755 	push	acc
      003701 74 53            [12] 1756 	mov	a,#(___str_32 >> 8)
      003703 C0 E0            [24] 1757 	push	acc
      003705 74 80            [12] 1758 	mov	a,#0x80
      003707 C0 E0            [24] 1759 	push	acc
      003709 12 3F 80         [24] 1760 	lcall	_printf
      00370C 15 81            [12] 1761 	dec	sp
      00370E 15 81            [12] 1762 	dec	sp
      003710 15 81            [12] 1763 	dec	sp
                                   1764 ;	8051_i2c_eeprom.c:352: i2c_stop();
      003712 12 3D 21         [24] 1765 	lcall	_i2c_stop
                                   1766 ;	8051_i2c_eeprom.c:353: return 0;
      003715 90 00 00         [24] 1767 	mov	dptr,#0x0000
      003718 22               [24] 1768 	ret
      003719                       1769 00102$:
                                   1770 ;	8051_i2c_eeprom.c:357: if(!i2c_write((unsigned char)address)) {
      003719 90 04 10         [24] 1771 	mov	dptr,#_eeprom_write_address_65536_88
      00371C E0               [24] 1772 	movx	a,@dptr
      00371D FE               [12] 1773 	mov	r6,a
      00371E A3               [24] 1774 	inc	dptr
      00371F E0               [24] 1775 	movx	a,@dptr
      003720 FF               [12] 1776 	mov	r7,a
      003721 8E 05            [24] 1777 	mov	ar5,r6
      003723 8D 82            [24] 1778 	mov	dpl,r5
      003725 C0 07            [24] 1779 	push	ar7
      003727 C0 06            [24] 1780 	push	ar6
      003729 12 39 2D         [24] 1781 	lcall	_i2c_write
      00372C E5 82            [12] 1782 	mov	a,dpl
      00372E 85 83 F0         [24] 1783 	mov	b,dph
      003731 D0 06            [24] 1784 	pop	ar6
      003733 D0 07            [24] 1785 	pop	ar7
      003735 45 F0            [12] 1786 	orl	a,b
      003737 70 1C            [24] 1787 	jnz	00104$
                                   1788 ;	8051_i2c_eeprom.c:358: printf("Error: No ACK for memory address\n\r");
      003739 74 DC            [12] 1789 	mov	a,#___str_33
      00373B C0 E0            [24] 1790 	push	acc
      00373D 74 53            [12] 1791 	mov	a,#(___str_33 >> 8)
      00373F C0 E0            [24] 1792 	push	acc
      003741 74 80            [12] 1793 	mov	a,#0x80
      003743 C0 E0            [24] 1794 	push	acc
      003745 12 3F 80         [24] 1795 	lcall	_printf
      003748 15 81            [12] 1796 	dec	sp
      00374A 15 81            [12] 1797 	dec	sp
      00374C 15 81            [12] 1798 	dec	sp
                                   1799 ;	8051_i2c_eeprom.c:359: i2c_stop();
      00374E 12 3D 21         [24] 1800 	lcall	_i2c_stop
                                   1801 ;	8051_i2c_eeprom.c:360: return 0;
      003751 90 00 00         [24] 1802 	mov	dptr,#0x0000
      003754 22               [24] 1803 	ret
      003755                       1804 00104$:
                                   1805 ;	8051_i2c_eeprom.c:364: if(!i2c_write(data)) {
      003755 90 04 0F         [24] 1806 	mov	dptr,#_eeprom_write_PARM_2
      003758 E0               [24] 1807 	movx	a,@dptr
      003759 FD               [12] 1808 	mov	r5,a
      00375A F5 82            [12] 1809 	mov	dpl,a
      00375C C0 07            [24] 1810 	push	ar7
      00375E C0 06            [24] 1811 	push	ar6
      003760 C0 05            [24] 1812 	push	ar5
      003762 12 39 2D         [24] 1813 	lcall	_i2c_write
      003765 E5 82            [12] 1814 	mov	a,dpl
      003767 85 83 F0         [24] 1815 	mov	b,dph
      00376A D0 05            [24] 1816 	pop	ar5
      00376C D0 06            [24] 1817 	pop	ar6
      00376E D0 07            [24] 1818 	pop	ar7
      003770 45 F0            [12] 1819 	orl	a,b
      003772 70 1C            [24] 1820 	jnz	00106$
                                   1821 ;	8051_i2c_eeprom.c:365: printf("Error: No ACK for data\n\r");
      003774 74 FF            [12] 1822 	mov	a,#___str_34
      003776 C0 E0            [24] 1823 	push	acc
      003778 74 53            [12] 1824 	mov	a,#(___str_34 >> 8)
      00377A C0 E0            [24] 1825 	push	acc
      00377C 74 80            [12] 1826 	mov	a,#0x80
      00377E C0 E0            [24] 1827 	push	acc
      003780 12 3F 80         [24] 1828 	lcall	_printf
      003783 15 81            [12] 1829 	dec	sp
      003785 15 81            [12] 1830 	dec	sp
      003787 15 81            [12] 1831 	dec	sp
                                   1832 ;	8051_i2c_eeprom.c:366: i2c_stop();
      003789 12 3D 21         [24] 1833 	lcall	_i2c_stop
                                   1834 ;	8051_i2c_eeprom.c:367: return 0;
      00378C 90 00 00         [24] 1835 	mov	dptr,#0x0000
      00378F 22               [24] 1836 	ret
      003790                       1837 00106$:
                                   1838 ;	8051_i2c_eeprom.c:370: i2c_stop();
      003790 C0 07            [24] 1839 	push	ar7
      003792 C0 06            [24] 1840 	push	ar6
      003794 C0 05            [24] 1841 	push	ar5
      003796 12 3D 21         [24] 1842 	lcall	_i2c_stop
      003799 D0 05            [24] 1843 	pop	ar5
      00379B D0 06            [24] 1844 	pop	ar6
      00379D D0 07            [24] 1845 	pop	ar7
                                   1846 ;	8051_i2c_eeprom.c:372: for(int i = 0; i<10; i++)
      00379F 7B 00            [12] 1847 	mov	r3,#0x00
      0037A1 7C 00            [12] 1848 	mov	r4,#0x00
      0037A3                       1849 00109$:
      0037A3 C3               [12] 1850 	clr	c
      0037A4 EB               [12] 1851 	mov	a,r3
      0037A5 94 0A            [12] 1852 	subb	a,#0x0a
      0037A7 EC               [12] 1853 	mov	a,r4
      0037A8 64 80            [12] 1854 	xrl	a,#0x80
      0037AA 94 80            [12] 1855 	subb	a,#0x80
      0037AC 50 1E            [24] 1856 	jnc	00107$
                                   1857 ;	8051_i2c_eeprom.c:374: i2c_delay();
      0037AE C0 07            [24] 1858 	push	ar7
      0037B0 C0 06            [24] 1859 	push	ar6
      0037B2 C0 05            [24] 1860 	push	ar5
      0037B4 C0 04            [24] 1861 	push	ar4
      0037B6 C0 03            [24] 1862 	push	ar3
      0037B8 12 3D 5A         [24] 1863 	lcall	_i2c_delay
      0037BB D0 03            [24] 1864 	pop	ar3
      0037BD D0 04            [24] 1865 	pop	ar4
      0037BF D0 05            [24] 1866 	pop	ar5
      0037C1 D0 06            [24] 1867 	pop	ar6
      0037C3 D0 07            [24] 1868 	pop	ar7
                                   1869 ;	8051_i2c_eeprom.c:372: for(int i = 0; i<10; i++)
      0037C5 0B               [12] 1870 	inc	r3
      0037C6 BB 00 DA         [24] 1871 	cjne	r3,#0x00,00109$
      0037C9 0C               [12] 1872 	inc	r4
      0037CA 80 D7            [24] 1873 	sjmp	00109$
      0037CC                       1874 00107$:
                                   1875 ;	8051_i2c_eeprom.c:377: printf("| Writing at Address 0x%03X Data 0x%02X          |\n\r", address, data);
      0037CC 7C 00            [12] 1876 	mov	r4,#0x00
      0037CE C0 05            [24] 1877 	push	ar5
      0037D0 C0 04            [24] 1878 	push	ar4
      0037D2 C0 06            [24] 1879 	push	ar6
      0037D4 C0 07            [24] 1880 	push	ar7
      0037D6 74 18            [12] 1881 	mov	a,#___str_35
      0037D8 C0 E0            [24] 1882 	push	acc
      0037DA 74 54            [12] 1883 	mov	a,#(___str_35 >> 8)
      0037DC C0 E0            [24] 1884 	push	acc
      0037DE 74 80            [12] 1885 	mov	a,#0x80
      0037E0 C0 E0            [24] 1886 	push	acc
      0037E2 12 3F 80         [24] 1887 	lcall	_printf
      0037E5 E5 81            [12] 1888 	mov	a,sp
      0037E7 24 F9            [12] 1889 	add	a,#0xf9
      0037E9 F5 81            [12] 1890 	mov	sp,a
                                   1891 ;	8051_i2c_eeprom.c:378: printf("│ Write successful!                             │\n\r");
      0037EB 74 4D            [12] 1892 	mov	a,#___str_36
      0037ED C0 E0            [24] 1893 	push	acc
      0037EF 74 54            [12] 1894 	mov	a,#(___str_36 >> 8)
      0037F1 C0 E0            [24] 1895 	push	acc
      0037F3 74 80            [12] 1896 	mov	a,#0x80
      0037F5 C0 E0            [24] 1897 	push	acc
      0037F7 12 3F 80         [24] 1898 	lcall	_printf
      0037FA 15 81            [12] 1899 	dec	sp
      0037FC 15 81            [12] 1900 	dec	sp
      0037FE 15 81            [12] 1901 	dec	sp
                                   1902 ;	8051_i2c_eeprom.c:379: printf("└───────────────────────────────────────────────┘\n\r");
      003800 74 85            [12] 1903 	mov	a,#___str_37
      003802 C0 E0            [24] 1904 	push	acc
      003804 74 54            [12] 1905 	mov	a,#(___str_37 >> 8)
      003806 C0 E0            [24] 1906 	push	acc
      003808 74 80            [12] 1907 	mov	a,#0x80
      00380A C0 E0            [24] 1908 	push	acc
      00380C 12 3F 80         [24] 1909 	lcall	_printf
      00380F 15 81            [12] 1910 	dec	sp
      003811 15 81            [12] 1911 	dec	sp
      003813 15 81            [12] 1912 	dec	sp
                                   1913 ;	8051_i2c_eeprom.c:380: return 1;  // Success
      003815 90 00 01         [24] 1914 	mov	dptr,#0x0001
                                   1915 ;	8051_i2c_eeprom.c:390: }
      003818 22               [24] 1916 	ret
                                   1917 ;------------------------------------------------------------
                                   1918 ;Allocation info for local variables in function 'eeprom_read'
                                   1919 ;------------------------------------------------------------
                                   1920 ;address                   Allocated with name '_eeprom_read_address_65536_95'
                                   1921 ;result                    Allocated with name '_eeprom_read_result_65536_96'
                                   1922 ;------------------------------------------------------------
                                   1923 ;	8051_i2c_eeprom.c:406: int eeprom_read(unsigned int address)
                                   1924 ;	-----------------------------------------
                                   1925 ;	 function eeprom_read
                                   1926 ;	-----------------------------------------
      003819                       1927 _eeprom_read:
      003819 AF 83            [24] 1928 	mov	r7,dph
      00381B E5 82            [12] 1929 	mov	a,dpl
      00381D 90 04 12         [24] 1930 	mov	dptr,#_eeprom_read_address_65536_95
      003820 F0               [24] 1931 	movx	@dptr,a
      003821 EF               [12] 1932 	mov	a,r7
      003822 A3               [24] 1933 	inc	dptr
      003823 F0               [24] 1934 	movx	@dptr,a
                                   1935 ;	8051_i2c_eeprom.c:412: i2c_start();
      003824 12 3A 1A         [24] 1936 	lcall	_i2c_start
                                   1937 ;	8051_i2c_eeprom.c:415: if(!i2c_write(EEPROM_ID | WRITE)) {
      003827 75 82 A0         [24] 1938 	mov	dpl,#0xa0
      00382A 12 39 2D         [24] 1939 	lcall	_i2c_write
      00382D E5 82            [12] 1940 	mov	a,dpl
      00382F 85 83 F0         [24] 1941 	mov	b,dph
      003832 45 F0            [12] 1942 	orl	a,b
      003834 70 1C            [24] 1943 	jnz	00102$
                                   1944 ;	8051_i2c_eeprom.c:416: printf("Error: No ACK for device address (write mode)\n\r");
      003836 74 1B            [12] 1945 	mov	a,#___str_38
      003838 C0 E0            [24] 1946 	push	acc
      00383A 74 55            [12] 1947 	mov	a,#(___str_38 >> 8)
      00383C C0 E0            [24] 1948 	push	acc
      00383E 74 80            [12] 1949 	mov	a,#0x80
      003840 C0 E0            [24] 1950 	push	acc
      003842 12 3F 80         [24] 1951 	lcall	_printf
      003845 15 81            [12] 1952 	dec	sp
      003847 15 81            [12] 1953 	dec	sp
      003849 15 81            [12] 1954 	dec	sp
                                   1955 ;	8051_i2c_eeprom.c:417: i2c_stop();
      00384B 12 3D 21         [24] 1956 	lcall	_i2c_stop
                                   1957 ;	8051_i2c_eeprom.c:418: return -1;
      00384E 90 FF FF         [24] 1958 	mov	dptr,#0xffff
      003851 22               [24] 1959 	ret
      003852                       1960 00102$:
                                   1961 ;	8051_i2c_eeprom.c:422: if(!i2c_write((unsigned char)address)) {
      003852 90 04 12         [24] 1962 	mov	dptr,#_eeprom_read_address_65536_95
      003855 E0               [24] 1963 	movx	a,@dptr
      003856 FE               [12] 1964 	mov	r6,a
      003857 A3               [24] 1965 	inc	dptr
      003858 E0               [24] 1966 	movx	a,@dptr
      003859 FF               [12] 1967 	mov	r7,a
      00385A 8E 05            [24] 1968 	mov	ar5,r6
      00385C 8D 82            [24] 1969 	mov	dpl,r5
      00385E C0 07            [24] 1970 	push	ar7
      003860 C0 06            [24] 1971 	push	ar6
      003862 12 39 2D         [24] 1972 	lcall	_i2c_write
      003865 E5 82            [12] 1973 	mov	a,dpl
      003867 85 83 F0         [24] 1974 	mov	b,dph
      00386A D0 06            [24] 1975 	pop	ar6
      00386C D0 07            [24] 1976 	pop	ar7
      00386E 45 F0            [12] 1977 	orl	a,b
      003870 70 1C            [24] 1978 	jnz	00104$
                                   1979 ;	8051_i2c_eeprom.c:423: printf("Error: No ACK for memory address\n\r");
      003872 74 DC            [12] 1980 	mov	a,#___str_33
      003874 C0 E0            [24] 1981 	push	acc
      003876 74 53            [12] 1982 	mov	a,#(___str_33 >> 8)
      003878 C0 E0            [24] 1983 	push	acc
      00387A 74 80            [12] 1984 	mov	a,#0x80
      00387C C0 E0            [24] 1985 	push	acc
      00387E 12 3F 80         [24] 1986 	lcall	_printf
      003881 15 81            [12] 1987 	dec	sp
      003883 15 81            [12] 1988 	dec	sp
      003885 15 81            [12] 1989 	dec	sp
                                   1990 ;	8051_i2c_eeprom.c:424: i2c_stop();
      003887 12 3D 21         [24] 1991 	lcall	_i2c_stop
                                   1992 ;	8051_i2c_eeprom.c:425: return -1;
      00388A 90 FF FF         [24] 1993 	mov	dptr,#0xffff
      00388D 22               [24] 1994 	ret
      00388E                       1995 00104$:
                                   1996 ;	8051_i2c_eeprom.c:429: i2c_start();
      00388E C0 07            [24] 1997 	push	ar7
      003890 C0 06            [24] 1998 	push	ar6
      003892 12 3A 1A         [24] 1999 	lcall	_i2c_start
                                   2000 ;	8051_i2c_eeprom.c:432: if(!i2c_write(EEPROM_ID | READ)) {
      003895 75 82 A1         [24] 2001 	mov	dpl,#0xa1
      003898 12 39 2D         [24] 2002 	lcall	_i2c_write
      00389B E5 82            [12] 2003 	mov	a,dpl
      00389D 85 83 F0         [24] 2004 	mov	b,dph
      0038A0 D0 06            [24] 2005 	pop	ar6
      0038A2 D0 07            [24] 2006 	pop	ar7
      0038A4 45 F0            [12] 2007 	orl	a,b
      0038A6 70 1C            [24] 2008 	jnz	00106$
                                   2009 ;	8051_i2c_eeprom.c:433: printf("Error: No ACK for device address (read mode)\n\r");
      0038A8 74 4B            [12] 2010 	mov	a,#___str_39
      0038AA C0 E0            [24] 2011 	push	acc
      0038AC 74 55            [12] 2012 	mov	a,#(___str_39 >> 8)
      0038AE C0 E0            [24] 2013 	push	acc
      0038B0 74 80            [12] 2014 	mov	a,#0x80
      0038B2 C0 E0            [24] 2015 	push	acc
      0038B4 12 3F 80         [24] 2016 	lcall	_printf
      0038B7 15 81            [12] 2017 	dec	sp
      0038B9 15 81            [12] 2018 	dec	sp
      0038BB 15 81            [12] 2019 	dec	sp
                                   2020 ;	8051_i2c_eeprom.c:434: i2c_stop();
      0038BD 12 3D 21         [24] 2021 	lcall	_i2c_stop
                                   2022 ;	8051_i2c_eeprom.c:435: return -1;
      0038C0 90 FF FF         [24] 2023 	mov	dptr,#0xffff
      0038C3 22               [24] 2024 	ret
      0038C4                       2025 00106$:
                                   2026 ;	8051_i2c_eeprom.c:439: result = i2c_read(0);  // 0 means send NACK
      0038C4 90 00 00         [24] 2027 	mov	dptr,#0x0000
      0038C7 C0 07            [24] 2028 	push	ar7
      0038C9 C0 06            [24] 2029 	push	ar6
      0038CB 12 39 95         [24] 2030 	lcall	_i2c_read
      0038CE AC 82            [24] 2031 	mov	r4,dpl
      0038D0 D0 06            [24] 2032 	pop	ar6
      0038D2 D0 07            [24] 2033 	pop	ar7
                                   2034 ;	8051_i2c_eeprom.c:441: printf("| 0x%03X : 0x%02X \n\r", address, result);
      0038D4 7D 00            [12] 2035 	mov	r5,#0x00
      0038D6 C0 05            [24] 2036 	push	ar5
      0038D8 C0 04            [24] 2037 	push	ar4
      0038DA C0 04            [24] 2038 	push	ar4
      0038DC C0 05            [24] 2039 	push	ar5
      0038DE C0 06            [24] 2040 	push	ar6
      0038E0 C0 07            [24] 2041 	push	ar7
      0038E2 74 7A            [12] 2042 	mov	a,#___str_40
      0038E4 C0 E0            [24] 2043 	push	acc
      0038E6 74 55            [12] 2044 	mov	a,#(___str_40 >> 8)
      0038E8 C0 E0            [24] 2045 	push	acc
      0038EA 74 80            [12] 2046 	mov	a,#0x80
      0038EC C0 E0            [24] 2047 	push	acc
      0038EE 12 3F 80         [24] 2048 	lcall	_printf
      0038F1 E5 81            [12] 2049 	mov	a,sp
      0038F3 24 F9            [12] 2050 	add	a,#0xf9
      0038F5 F5 81            [12] 2051 	mov	sp,a
                                   2052 ;	8051_i2c_eeprom.c:442: printf("│ Read successful!                 │\n\r");
      0038F7 74 8F            [12] 2053 	mov	a,#___str_41
      0038F9 C0 E0            [24] 2054 	push	acc
      0038FB 74 55            [12] 2055 	mov	a,#(___str_41 >> 8)
      0038FD C0 E0            [24] 2056 	push	acc
      0038FF 74 80            [12] 2057 	mov	a,#0x80
      003901 C0 E0            [24] 2058 	push	acc
      003903 12 3F 80         [24] 2059 	lcall	_printf
      003906 15 81            [12] 2060 	dec	sp
      003908 15 81            [12] 2061 	dec	sp
      00390A 15 81            [12] 2062 	dec	sp
                                   2063 ;	8051_i2c_eeprom.c:443: printf("└───────────────────────────────────────────────┘\n\r");
      00390C 74 85            [12] 2064 	mov	a,#___str_37
      00390E C0 E0            [24] 2065 	push	acc
      003910 74 54            [12] 2066 	mov	a,#(___str_37 >> 8)
      003912 C0 E0            [24] 2067 	push	acc
      003914 74 80            [12] 2068 	mov	a,#0x80
      003916 C0 E0            [24] 2069 	push	acc
      003918 12 3F 80         [24] 2070 	lcall	_printf
      00391B 15 81            [12] 2071 	dec	sp
      00391D 15 81            [12] 2072 	dec	sp
      00391F 15 81            [12] 2073 	dec	sp
                                   2074 ;	8051_i2c_eeprom.c:444: i2c_stop();
      003921 12 3D 21         [24] 2075 	lcall	_i2c_stop
      003924 D0 04            [24] 2076 	pop	ar4
      003926 D0 05            [24] 2077 	pop	ar5
                                   2078 ;	8051_i2c_eeprom.c:445: return result;
      003928 8C 82            [24] 2079 	mov	dpl,r4
      00392A 8D 83            [24] 2080 	mov	dph,r5
                                   2081 ;	8051_i2c_eeprom.c:446: }
      00392C 22               [24] 2082 	ret
                                   2083 ;------------------------------------------------------------
                                   2084 ;Allocation info for local variables in function 'i2c_write'
                                   2085 ;------------------------------------------------------------
                                   2086 ;data                      Allocated with name '_i2c_write_data_65536_100'
                                   2087 ;i                         Allocated with name '_i2c_write_i_65536_101'
                                   2088 ;------------------------------------------------------------
                                   2089 ;	8051_i2c_eeprom.c:457: int i2c_write(unsigned char data)
                                   2090 ;	-----------------------------------------
                                   2091 ;	 function i2c_write
                                   2092 ;	-----------------------------------------
      00392D                       2093 _i2c_write:
      00392D E5 82            [12] 2094 	mov	a,dpl
      00392F 90 04 14         [24] 2095 	mov	dptr,#_i2c_write_data_65536_100
      003932 F0               [24] 2096 	movx	@dptr,a
                                   2097 ;	8051_i2c_eeprom.c:461: for(i=0;i<=7;i++)
      003933 7E 00            [12] 2098 	mov	r6,#0x00
      003935 7F 00            [12] 2099 	mov	r7,#0x00
      003937                       2100 00104$:
                                   2101 ;	8051_i2c_eeprom.c:463: SDA = (data & 0x80) ? 1 : 0;    //msb first
      003937 90 04 14         [24] 2102 	mov	dptr,#_i2c_write_data_65536_100
      00393A E0               [24] 2103 	movx	a,@dptr
      00393B FD               [12] 2104 	mov	r5,a
      00393C 23               [12] 2105 	rl	a
      00393D 54 01            [12] 2106 	anl	a,#0x01
      00393F 24 FF            [12] 2107 	add	a,#0xff
      003941 92 94            [24] 2108 	mov	_P1_4,c
                                   2109 ;	8051_i2c_eeprom.c:464: i2c_delay();        // Setup time for data
      003943 C0 07            [24] 2110 	push	ar7
      003945 C0 06            [24] 2111 	push	ar6
      003947 C0 05            [24] 2112 	push	ar5
      003949 12 3D 5A         [24] 2113 	lcall	_i2c_delay
                                   2114 ;	8051_i2c_eeprom.c:465: SCL=1;
                                   2115 ;	assignBit
      00394C D2 93            [12] 2116 	setb	_P1_3
                                   2117 ;	8051_i2c_eeprom.c:466: i2c_delay();        // Hold time for clock
      00394E 12 3D 5A         [24] 2118 	lcall	_i2c_delay
      003951 D0 05            [24] 2119 	pop	ar5
      003953 D0 06            [24] 2120 	pop	ar6
      003955 D0 07            [24] 2121 	pop	ar7
                                   2122 ;	8051_i2c_eeprom.c:467: SCL=0;
                                   2123 ;	assignBit
      003957 C2 93            [12] 2124 	clr	_P1_3
                                   2125 ;	8051_i2c_eeprom.c:468: data = data << 1;
      003959 ED               [12] 2126 	mov	a,r5
      00395A 2D               [12] 2127 	add	a,r5
      00395B 90 04 14         [24] 2128 	mov	dptr,#_i2c_write_data_65536_100
      00395E F0               [24] 2129 	movx	@dptr,a
                                   2130 ;	8051_i2c_eeprom.c:461: for(i=0;i<=7;i++)
      00395F 0E               [12] 2131 	inc	r6
      003960 BE 00 01         [24] 2132 	cjne	r6,#0x00,00121$
      003963 0F               [12] 2133 	inc	r7
      003964                       2134 00121$:
      003964 C3               [12] 2135 	clr	c
      003965 74 07            [12] 2136 	mov	a,#0x07
      003967 9E               [12] 2137 	subb	a,r6
      003968 E4               [12] 2138 	clr	a
      003969 9F               [12] 2139 	subb	a,r7
      00396A 50 CB            [24] 2140 	jnc	00104$
                                   2141 ;	8051_i2c_eeprom.c:472: SDA = 1;            // Release SDA for slave
                                   2142 ;	assignBit
      00396C D2 94            [12] 2143 	setb	_P1_4
                                   2144 ;	8051_i2c_eeprom.c:473: SCL = 1;            // 9th clock pulse for ACK
                                   2145 ;	assignBit
      00396E D2 93            [12] 2146 	setb	_P1_3
                                   2147 ;	8051_i2c_eeprom.c:474: i2c_delay();
      003970 12 3D 5A         [24] 2148 	lcall	_i2c_delay
                                   2149 ;	8051_i2c_eeprom.c:475: if(SDA == 1)        // If SDA is still high, no ACK received
      003973 30 94 19         [24] 2150 	jnb	_P1_4,00103$
                                   2151 ;	8051_i2c_eeprom.c:478: printf("ACK DID NOT ARRIVE\n\r");
      003976 74 BA            [12] 2152 	mov	a,#___str_42
      003978 C0 E0            [24] 2153 	push	acc
      00397A 74 55            [12] 2154 	mov	a,#(___str_42 >> 8)
      00397C C0 E0            [24] 2155 	push	acc
      00397E 74 80            [12] 2156 	mov	a,#0x80
      003980 C0 E0            [24] 2157 	push	acc
      003982 12 3F 80         [24] 2158 	lcall	_printf
      003985 15 81            [12] 2159 	dec	sp
      003987 15 81            [12] 2160 	dec	sp
      003989 15 81            [12] 2161 	dec	sp
                                   2162 ;	8051_i2c_eeprom.c:479: return 0;       // Error
      00398B 90 00 00         [24] 2163 	mov	dptr,#0x0000
      00398E 22               [24] 2164 	ret
      00398F                       2165 00103$:
                                   2166 ;	8051_i2c_eeprom.c:481: SCL = 0;
                                   2167 ;	assignBit
      00398F C2 93            [12] 2168 	clr	_P1_3
                                   2169 ;	8051_i2c_eeprom.c:483: return 1;           // Success
      003991 90 00 01         [24] 2170 	mov	dptr,#0x0001
                                   2171 ;	8051_i2c_eeprom.c:485: }
      003994 22               [24] 2172 	ret
                                   2173 ;------------------------------------------------------------
                                   2174 ;Allocation info for local variables in function 'i2c_read'
                                   2175 ;------------------------------------------------------------
                                   2176 ;ACK                       Allocated with name '_i2c_read_ACK_65536_105'
                                   2177 ;buff                      Allocated with name '_i2c_read_buff_65536_106'
                                   2178 ;i                         Allocated with name '_i2c_read_i_131072_107'
                                   2179 ;------------------------------------------------------------
                                   2180 ;	8051_i2c_eeprom.c:495: int i2c_read(int ACK)
                                   2181 ;	-----------------------------------------
                                   2182 ;	 function i2c_read
                                   2183 ;	-----------------------------------------
      003995                       2184 _i2c_read:
      003995 AF 83            [24] 2185 	mov	r7,dph
      003997 E5 82            [12] 2186 	mov	a,dpl
      003999 90 04 15         [24] 2187 	mov	dptr,#_i2c_read_ACK_65536_105
      00399C F0               [24] 2188 	movx	@dptr,a
      00399D EF               [12] 2189 	mov	a,r7
      00399E A3               [24] 2190 	inc	dptr
      00399F F0               [24] 2191 	movx	@dptr,a
                                   2192 ;	8051_i2c_eeprom.c:497: unsigned char buff=0;
      0039A0 90 04 17         [24] 2193 	mov	dptr,#_i2c_read_buff_65536_106
      0039A3 E4               [12] 2194 	clr	a
      0039A4 F0               [24] 2195 	movx	@dptr,a
                                   2196 ;	8051_i2c_eeprom.c:498: SCL = 0;
                                   2197 ;	assignBit
      0039A5 C2 93            [12] 2198 	clr	_P1_3
                                   2199 ;	8051_i2c_eeprom.c:499: for(int i=0;i<8;i++)
      0039A7 7E 00            [12] 2200 	mov	r6,#0x00
      0039A9 7F 00            [12] 2201 	mov	r7,#0x00
      0039AB                       2202 00103$:
      0039AB C3               [12] 2203 	clr	c
      0039AC EE               [12] 2204 	mov	a,r6
      0039AD 94 08            [12] 2205 	subb	a,#0x08
      0039AF EF               [12] 2206 	mov	a,r7
      0039B0 64 80            [12] 2207 	xrl	a,#0x80
      0039B2 94 80            [12] 2208 	subb	a,#0x80
      0039B4 50 40            [24] 2209 	jnc	00101$
                                   2210 ;	8051_i2c_eeprom.c:501: SCL = 1;
                                   2211 ;	assignBit
      0039B6 D2 93            [12] 2212 	setb	_P1_3
                                   2213 ;	8051_i2c_eeprom.c:502: i2c_delay();
      0039B8 C0 07            [24] 2214 	push	ar7
      0039BA C0 06            [24] 2215 	push	ar6
      0039BC 12 3D 5A         [24] 2216 	lcall	_i2c_delay
      0039BF D0 06            [24] 2217 	pop	ar6
      0039C1 D0 07            [24] 2218 	pop	ar7
                                   2219 ;	8051_i2c_eeprom.c:503: buff |= (SDA << (7 - i));
      0039C3 A2 94            [12] 2220 	mov	c,_P1_4
      0039C5 E4               [12] 2221 	clr	a
      0039C6 33               [12] 2222 	rlc	a
      0039C7 FD               [12] 2223 	mov	r5,a
      0039C8 8E 04            [24] 2224 	mov	ar4,r6
      0039CA 74 07            [12] 2225 	mov	a,#0x07
      0039CC C3               [12] 2226 	clr	c
      0039CD 9C               [12] 2227 	subb	a,r4
      0039CE FC               [12] 2228 	mov	r4,a
      0039CF 8C F0            [24] 2229 	mov	b,r4
      0039D1 05 F0            [12] 2230 	inc	b
      0039D3 ED               [12] 2231 	mov	a,r5
      0039D4 80 02            [24] 2232 	sjmp	00119$
      0039D6                       2233 00117$:
      0039D6 25 E0            [12] 2234 	add	a,acc
      0039D8                       2235 00119$:
      0039D8 D5 F0 FB         [24] 2236 	djnz	b,00117$
      0039DB FC               [12] 2237 	mov	r4,a
      0039DC 90 04 17         [24] 2238 	mov	dptr,#_i2c_read_buff_65536_106
      0039DF E0               [24] 2239 	movx	a,@dptr
      0039E0 4C               [12] 2240 	orl	a,r4
      0039E1 F0               [24] 2241 	movx	@dptr,a
                                   2242 ;	8051_i2c_eeprom.c:504: i2c_delay();
      0039E2 C0 07            [24] 2243 	push	ar7
      0039E4 C0 06            [24] 2244 	push	ar6
      0039E6 12 3D 5A         [24] 2245 	lcall	_i2c_delay
      0039E9 D0 06            [24] 2246 	pop	ar6
      0039EB D0 07            [24] 2247 	pop	ar7
                                   2248 ;	8051_i2c_eeprom.c:505: SCL=0;
                                   2249 ;	assignBit
      0039ED C2 93            [12] 2250 	clr	_P1_3
                                   2251 ;	8051_i2c_eeprom.c:499: for(int i=0;i<8;i++)
      0039EF 0E               [12] 2252 	inc	r6
      0039F0 BE 00 B8         [24] 2253 	cjne	r6,#0x00,00103$
      0039F3 0F               [12] 2254 	inc	r7
      0039F4 80 B5            [24] 2255 	sjmp	00103$
      0039F6                       2256 00101$:
                                   2257 ;	8051_i2c_eeprom.c:509: SDA = !ACK;         // ACK = 0, NACK = 1
      0039F6 90 04 15         [24] 2258 	mov	dptr,#_i2c_read_ACK_65536_105
      0039F9 E0               [24] 2259 	movx	a,@dptr
      0039FA FE               [12] 2260 	mov	r6,a
      0039FB A3               [24] 2261 	inc	dptr
      0039FC E0               [24] 2262 	movx	a,@dptr
      0039FD 4E               [12] 2263 	orl	a,r6
      0039FE B4 01 00         [24] 2264 	cjne	a,#0x01,00121$
      003A01                       2265 00121$:
      003A01 E4               [12] 2266 	clr	a
      003A02 33               [12] 2267 	rlc	a
      003A03 24 FF            [12] 2268 	add	a,#0xff
      003A05 92 94            [24] 2269 	mov	_P1_4,c
                                   2270 ;	8051_i2c_eeprom.c:510: SCL = 1;
                                   2271 ;	assignBit
      003A07 D2 93            [12] 2272 	setb	_P1_3
                                   2273 ;	8051_i2c_eeprom.c:511: i2c_delay();
      003A09 12 3D 5A         [24] 2274 	lcall	_i2c_delay
                                   2275 ;	8051_i2c_eeprom.c:512: SCL = 0;
                                   2276 ;	assignBit
      003A0C C2 93            [12] 2277 	clr	_P1_3
                                   2278 ;	8051_i2c_eeprom.c:514: return buff;
      003A0E 90 04 17         [24] 2279 	mov	dptr,#_i2c_read_buff_65536_106
      003A11 E0               [24] 2280 	movx	a,@dptr
      003A12 FF               [12] 2281 	mov	r7,a
      003A13 7E 00            [12] 2282 	mov	r6,#0x00
      003A15 8F 82            [24] 2283 	mov	dpl,r7
      003A17 8E 83            [24] 2284 	mov	dph,r6
                                   2285 ;	8051_i2c_eeprom.c:515: }
      003A19 22               [24] 2286 	ret
                                   2287 ;------------------------------------------------------------
                                   2288 ;Allocation info for local variables in function 'i2c_start'
                                   2289 ;------------------------------------------------------------
                                   2290 ;	8051_i2c_eeprom.c:522: void i2c_start(void)
                                   2291 ;	-----------------------------------------
                                   2292 ;	 function i2c_start
                                   2293 ;	-----------------------------------------
      003A1A                       2294 _i2c_start:
                                   2295 ;	8051_i2c_eeprom.c:524: i2c_delay();
      003A1A 12 3D 5A         [24] 2296 	lcall	_i2c_delay
                                   2297 ;	8051_i2c_eeprom.c:525: SDA = 1;
                                   2298 ;	assignBit
      003A1D D2 94            [12] 2299 	setb	_P1_4
                                   2300 ;	8051_i2c_eeprom.c:526: i2c_delay();
      003A1F 12 3D 5A         [24] 2301 	lcall	_i2c_delay
                                   2302 ;	8051_i2c_eeprom.c:527: SCL = 1;
                                   2303 ;	assignBit
      003A22 D2 93            [12] 2304 	setb	_P1_3
                                   2305 ;	8051_i2c_eeprom.c:528: i2c_delay();
      003A24 12 3D 5A         [24] 2306 	lcall	_i2c_delay
                                   2307 ;	8051_i2c_eeprom.c:529: SDA = 0;
                                   2308 ;	assignBit
      003A27 C2 94            [12] 2309 	clr	_P1_4
                                   2310 ;	8051_i2c_eeprom.c:530: i2c_delay();
      003A29 12 3D 5A         [24] 2311 	lcall	_i2c_delay
                                   2312 ;	8051_i2c_eeprom.c:531: SCL = 0;
                                   2313 ;	assignBit
      003A2C C2 93            [12] 2314 	clr	_P1_3
                                   2315 ;	8051_i2c_eeprom.c:532: }
      003A2E 22               [24] 2316 	ret
                                   2317 ;------------------------------------------------------------
                                   2318 ;Allocation info for local variables in function 'EEPROM_hexump'
                                   2319 ;------------------------------------------------------------
                                   2320 ;end_address               Allocated with name '_EEPROM_hexump_PARM_2'
                                   2321 ;start_address             Allocated with name '_EEPROM_hexump_start_address_65536_111'
                                   2322 ;address                   Allocated with name '_EEPROM_hexump_address_131072_113'
                                   2323 ;offset                    Allocated with name '_EEPROM_hexump_offset_262144_115'
                                   2324 ;current_address           Allocated with name '_EEPROM_hexump_current_address_327680_116'
                                   2325 ;result                    Allocated with name '_EEPROM_hexump_result_393216_117'
                                   2326 ;------------------------------------------------------------
                                   2327 ;	8051_i2c_eeprom.c:540: int EEPROM_hexump(uint16_t start_address, uint16_t end_address)
                                   2328 ;	-----------------------------------------
                                   2329 ;	 function EEPROM_hexump
                                   2330 ;	-----------------------------------------
      003A2F                       2331 _EEPROM_hexump:
      003A2F AF 83            [24] 2332 	mov	r7,dph
      003A31 E5 82            [12] 2333 	mov	a,dpl
      003A33 90 04 1A         [24] 2334 	mov	dptr,#_EEPROM_hexump_start_address_65536_111
      003A36 F0               [24] 2335 	movx	@dptr,a
      003A37 EF               [12] 2336 	mov	a,r7
      003A38 A3               [24] 2337 	inc	dptr
      003A39 F0               [24] 2338 	movx	@dptr,a
                                   2339 ;	8051_i2c_eeprom.c:564: printf("\r\n");
      003A3A 74 CF            [12] 2340 	mov	a,#___str_43
      003A3C C0 E0            [24] 2341 	push	acc
      003A3E 74 55            [12] 2342 	mov	a,#(___str_43 >> 8)
      003A40 C0 E0            [24] 2343 	push	acc
      003A42 74 80            [12] 2344 	mov	a,#0x80
      003A44 C0 E0            [24] 2345 	push	acc
      003A46 12 3F 80         [24] 2346 	lcall	_printf
      003A49 15 81            [12] 2347 	dec	sp
      003A4B 15 81            [12] 2348 	dec	sp
      003A4D 15 81            [12] 2349 	dec	sp
                                   2350 ;	8051_i2c_eeprom.c:565: printf("\r\n----------------------------------------------------------------");
      003A4F 74 D2            [12] 2351 	mov	a,#___str_44
      003A51 C0 E0            [24] 2352 	push	acc
      003A53 74 55            [12] 2353 	mov	a,#(___str_44 >> 8)
      003A55 C0 E0            [24] 2354 	push	acc
      003A57 74 80            [12] 2355 	mov	a,#0x80
      003A59 C0 E0            [24] 2356 	push	acc
      003A5B 12 3F 80         [24] 2357 	lcall	_printf
      003A5E 15 81            [12] 2358 	dec	sp
      003A60 15 81            [12] 2359 	dec	sp
      003A62 15 81            [12] 2360 	dec	sp
                                   2361 ;	8051_i2c_eeprom.c:566: printf("\r\n                    EEPROM Hex Dump                             ");
      003A64 74 15            [12] 2362 	mov	a,#___str_45
      003A66 C0 E0            [24] 2363 	push	acc
      003A68 74 56            [12] 2364 	mov	a,#(___str_45 >> 8)
      003A6A C0 E0            [24] 2365 	push	acc
      003A6C 74 80            [12] 2366 	mov	a,#0x80
      003A6E C0 E0            [24] 2367 	push	acc
      003A70 12 3F 80         [24] 2368 	lcall	_printf
      003A73 15 81            [12] 2369 	dec	sp
      003A75 15 81            [12] 2370 	dec	sp
      003A77 15 81            [12] 2371 	dec	sp
                                   2372 ;	8051_i2c_eeprom.c:567: printf("\r\n----------------------------------------------------------------\r\n");
      003A79 74 58            [12] 2373 	mov	a,#___str_46
      003A7B C0 E0            [24] 2374 	push	acc
      003A7D 74 56            [12] 2375 	mov	a,#(___str_46 >> 8)
      003A7F C0 E0            [24] 2376 	push	acc
      003A81 74 80            [12] 2377 	mov	a,#0x80
      003A83 C0 E0            [24] 2378 	push	acc
      003A85 12 3F 80         [24] 2379 	lcall	_printf
      003A88 15 81            [12] 2380 	dec	sp
      003A8A 15 81            [12] 2381 	dec	sp
      003A8C 15 81            [12] 2382 	dec	sp
                                   2383 ;	8051_i2c_eeprom.c:569: for (unsigned int address = start_address; address <= end_address; address += MAX_HEX_CHAR_IN_SINGLE_LINE) {
      003A8E 90 04 1A         [24] 2384 	mov	dptr,#_EEPROM_hexump_start_address_65536_111
      003A91 E0               [24] 2385 	movx	a,@dptr
      003A92 FE               [12] 2386 	mov	r6,a
      003A93 A3               [24] 2387 	inc	dptr
      003A94 E0               [24] 2388 	movx	a,@dptr
      003A95 FF               [12] 2389 	mov	r7,a
      003A96 90 04 18         [24] 2390 	mov	dptr,#_EEPROM_hexump_PARM_2
      003A99 E0               [24] 2391 	movx	a,@dptr
      003A9A FC               [12] 2392 	mov	r4,a
      003A9B A3               [24] 2393 	inc	dptr
      003A9C E0               [24] 2394 	movx	a,@dptr
      003A9D FD               [12] 2395 	mov	r5,a
      003A9E                       2396 00116$:
      003A9E 8E 02            [24] 2397 	mov	ar2,r6
      003AA0 8F 03            [24] 2398 	mov	ar3,r7
      003AA2 C3               [12] 2399 	clr	c
      003AA3 EC               [12] 2400 	mov	a,r4
      003AA4 9A               [12] 2401 	subb	a,r2
      003AA5 ED               [12] 2402 	mov	a,r5
      003AA6 9B               [12] 2403 	subb	a,r3
      003AA7 50 03            [24] 2404 	jnc	00152$
      003AA9 02 3C 6F         [24] 2405 	ljmp	00111$
      003AAC                       2406 00152$:
                                   2407 ;	8051_i2c_eeprom.c:571: printf("%03X: ", address);
      003AAC C0 07            [24] 2408 	push	ar7
      003AAE C0 06            [24] 2409 	push	ar6
      003AB0 C0 05            [24] 2410 	push	ar5
      003AB2 C0 04            [24] 2411 	push	ar4
      003AB4 C0 06            [24] 2412 	push	ar6
      003AB6 C0 07            [24] 2413 	push	ar7
      003AB8 74 9D            [12] 2414 	mov	a,#___str_47
      003ABA C0 E0            [24] 2415 	push	acc
      003ABC 74 56            [12] 2416 	mov	a,#(___str_47 >> 8)
      003ABE C0 E0            [24] 2417 	push	acc
      003AC0 74 80            [12] 2418 	mov	a,#0x80
      003AC2 C0 E0            [24] 2419 	push	acc
      003AC4 12 3F 80         [24] 2420 	lcall	_printf
      003AC7 E5 81            [12] 2421 	mov	a,sp
      003AC9 24 FB            [12] 2422 	add	a,#0xfb
      003ACB F5 81            [12] 2423 	mov	sp,a
      003ACD D0 04            [24] 2424 	pop	ar4
      003ACF D0 05            [24] 2425 	pop	ar5
      003AD1 D0 06            [24] 2426 	pop	ar6
      003AD3 D0 07            [24] 2427 	pop	ar7
                                   2428 ;	8051_i2c_eeprom.c:574: for (int offset = 0; offset < MAX_HEX_CHAR_IN_SINGLE_LINE; offset++) {
      003AD5 7A 00            [12] 2429 	mov	r2,#0x00
      003AD7 7B 00            [12] 2430 	mov	r3,#0x00
      003AD9                       2431 00113$:
      003AD9 C3               [12] 2432 	clr	c
      003ADA EA               [12] 2433 	mov	a,r2
      003ADB 94 10            [12] 2434 	subb	a,#0x10
      003ADD EB               [12] 2435 	mov	a,r3
      003ADE 64 80            [12] 2436 	xrl	a,#0x80
      003AE0 94 80            [12] 2437 	subb	a,#0x80
      003AE2 40 03            [24] 2438 	jc	00153$
      003AE4 02 3C 40         [24] 2439 	ljmp	00110$
      003AE7                       2440 00153$:
                                   2441 ;	8051_i2c_eeprom.c:575: unsigned int current_address = address + offset;
      003AE7 8A 00            [24] 2442 	mov	ar0,r2
      003AE9 8B 01            [24] 2443 	mov	ar1,r3
      003AEB E8               [12] 2444 	mov	a,r0
      003AEC 2E               [12] 2445 	add	a,r6
      003AED F8               [12] 2446 	mov	r0,a
      003AEE E9               [12] 2447 	mov	a,r1
      003AEF 3F               [12] 2448 	addc	a,r7
      003AF0 F9               [12] 2449 	mov	r1,a
                                   2450 ;	8051_i2c_eeprom.c:577: if (current_address <= end_address) 
      003AF1 C3               [12] 2451 	clr	c
      003AF2 EC               [12] 2452 	mov	a,r4
      003AF3 98               [12] 2453 	subb	a,r0
      003AF4 ED               [12] 2454 	mov	a,r5
      003AF5 99               [12] 2455 	subb	a,r1
      003AF6 50 03            [24] 2456 	jnc	00154$
      003AF8 02 3C 0B         [24] 2457 	ljmp	00108$
      003AFB                       2458 00154$:
                                   2459 ;	8051_i2c_eeprom.c:584: i2c_start();
      003AFB C0 07            [24] 2460 	push	ar7
      003AFD C0 06            [24] 2461 	push	ar6
      003AFF C0 05            [24] 2462 	push	ar5
      003B01 C0 04            [24] 2463 	push	ar4
      003B03 C0 03            [24] 2464 	push	ar3
      003B05 C0 02            [24] 2465 	push	ar2
      003B07 12 3A 1A         [24] 2466 	lcall	_i2c_start
                                   2467 ;	8051_i2c_eeprom.c:587: if(!i2c_write(EEPROM_ID | WRITE)) {
      003B0A 75 82 A0         [24] 2468 	mov	dpl,#0xa0
      003B0D 12 39 2D         [24] 2469 	lcall	_i2c_write
      003B10 E5 82            [12] 2470 	mov	a,dpl
      003B12 85 83 F0         [24] 2471 	mov	b,dph
      003B15 D0 02            [24] 2472 	pop	ar2
      003B17 D0 03            [24] 2473 	pop	ar3
      003B19 D0 04            [24] 2474 	pop	ar4
      003B1B D0 05            [24] 2475 	pop	ar5
      003B1D D0 06            [24] 2476 	pop	ar6
      003B1F D0 07            [24] 2477 	pop	ar7
      003B21 45 F0            [12] 2478 	orl	a,b
      003B23 70 1C            [24] 2479 	jnz	00102$
                                   2480 ;	8051_i2c_eeprom.c:588: printf("Error: No ACK for device address (write mode)\n\r");
      003B25 74 1B            [12] 2481 	mov	a,#___str_38
      003B27 C0 E0            [24] 2482 	push	acc
      003B29 74 55            [12] 2483 	mov	a,#(___str_38 >> 8)
      003B2B C0 E0            [24] 2484 	push	acc
      003B2D 74 80            [12] 2485 	mov	a,#0x80
      003B2F C0 E0            [24] 2486 	push	acc
      003B31 12 3F 80         [24] 2487 	lcall	_printf
      003B34 15 81            [12] 2488 	dec	sp
      003B36 15 81            [12] 2489 	dec	sp
      003B38 15 81            [12] 2490 	dec	sp
                                   2491 ;	8051_i2c_eeprom.c:589: i2c_stop();
      003B3A 12 3D 21         [24] 2492 	lcall	_i2c_stop
                                   2493 ;	8051_i2c_eeprom.c:590: return -1;
      003B3D 90 FF FF         [24] 2494 	mov	dptr,#0xffff
      003B40 22               [24] 2495 	ret
      003B41                       2496 00102$:
                                   2497 ;	8051_i2c_eeprom.c:594: if(!i2c_write((unsigned char)address)) {
      003B41 8E 01            [24] 2498 	mov	ar1,r6
      003B43 89 82            [24] 2499 	mov	dpl,r1
      003B45 C0 07            [24] 2500 	push	ar7
      003B47 C0 06            [24] 2501 	push	ar6
      003B49 C0 05            [24] 2502 	push	ar5
      003B4B C0 04            [24] 2503 	push	ar4
      003B4D C0 03            [24] 2504 	push	ar3
      003B4F C0 02            [24] 2505 	push	ar2
      003B51 12 39 2D         [24] 2506 	lcall	_i2c_write
      003B54 E5 82            [12] 2507 	mov	a,dpl
      003B56 85 83 F0         [24] 2508 	mov	b,dph
      003B59 D0 02            [24] 2509 	pop	ar2
      003B5B D0 03            [24] 2510 	pop	ar3
      003B5D D0 04            [24] 2511 	pop	ar4
      003B5F D0 05            [24] 2512 	pop	ar5
      003B61 D0 06            [24] 2513 	pop	ar6
      003B63 D0 07            [24] 2514 	pop	ar7
      003B65 45 F0            [12] 2515 	orl	a,b
      003B67 70 1C            [24] 2516 	jnz	00104$
                                   2517 ;	8051_i2c_eeprom.c:595: printf("Error: No ACK for memory address\n\r");
      003B69 74 DC            [12] 2518 	mov	a,#___str_33
      003B6B C0 E0            [24] 2519 	push	acc
      003B6D 74 53            [12] 2520 	mov	a,#(___str_33 >> 8)
      003B6F C0 E0            [24] 2521 	push	acc
      003B71 74 80            [12] 2522 	mov	a,#0x80
      003B73 C0 E0            [24] 2523 	push	acc
      003B75 12 3F 80         [24] 2524 	lcall	_printf
      003B78 15 81            [12] 2525 	dec	sp
      003B7A 15 81            [12] 2526 	dec	sp
      003B7C 15 81            [12] 2527 	dec	sp
                                   2528 ;	8051_i2c_eeprom.c:596: i2c_stop();
      003B7E 12 3D 21         [24] 2529 	lcall	_i2c_stop
                                   2530 ;	8051_i2c_eeprom.c:597: return -1;
      003B81 90 FF FF         [24] 2531 	mov	dptr,#0xffff
      003B84 22               [24] 2532 	ret
      003B85                       2533 00104$:
                                   2534 ;	8051_i2c_eeprom.c:601: i2c_start();
      003B85 C0 07            [24] 2535 	push	ar7
      003B87 C0 06            [24] 2536 	push	ar6
      003B89 C0 05            [24] 2537 	push	ar5
      003B8B C0 04            [24] 2538 	push	ar4
      003B8D C0 03            [24] 2539 	push	ar3
      003B8F C0 02            [24] 2540 	push	ar2
      003B91 12 3A 1A         [24] 2541 	lcall	_i2c_start
                                   2542 ;	8051_i2c_eeprom.c:604: if(!i2c_write(EEPROM_ID | READ)) {
      003B94 75 82 A1         [24] 2543 	mov	dpl,#0xa1
      003B97 12 39 2D         [24] 2544 	lcall	_i2c_write
      003B9A E5 82            [12] 2545 	mov	a,dpl
      003B9C 85 83 F0         [24] 2546 	mov	b,dph
      003B9F D0 02            [24] 2547 	pop	ar2
      003BA1 D0 03            [24] 2548 	pop	ar3
      003BA3 D0 04            [24] 2549 	pop	ar4
      003BA5 D0 05            [24] 2550 	pop	ar5
      003BA7 D0 06            [24] 2551 	pop	ar6
      003BA9 D0 07            [24] 2552 	pop	ar7
      003BAB 45 F0            [12] 2553 	orl	a,b
      003BAD 70 1C            [24] 2554 	jnz	00106$
                                   2555 ;	8051_i2c_eeprom.c:605: printf("Error: No ACK for device address (read mode)\n\r");
      003BAF 74 4B            [12] 2556 	mov	a,#___str_39
      003BB1 C0 E0            [24] 2557 	push	acc
      003BB3 74 55            [12] 2558 	mov	a,#(___str_39 >> 8)
      003BB5 C0 E0            [24] 2559 	push	acc
      003BB7 74 80            [12] 2560 	mov	a,#0x80
      003BB9 C0 E0            [24] 2561 	push	acc
      003BBB 12 3F 80         [24] 2562 	lcall	_printf
      003BBE 15 81            [12] 2563 	dec	sp
      003BC0 15 81            [12] 2564 	dec	sp
      003BC2 15 81            [12] 2565 	dec	sp
                                   2566 ;	8051_i2c_eeprom.c:606: i2c_stop();
      003BC4 12 3D 21         [24] 2567 	lcall	_i2c_stop
                                   2568 ;	8051_i2c_eeprom.c:607: return -1;
      003BC7 90 FF FF         [24] 2569 	mov	dptr,#0xffff
      003BCA 22               [24] 2570 	ret
      003BCB                       2571 00106$:
                                   2572 ;	8051_i2c_eeprom.c:611: result = i2c_read(0);  // 0 means send NACK
      003BCB 90 00 00         [24] 2573 	mov	dptr,#0x0000
      003BCE C0 07            [24] 2574 	push	ar7
      003BD0 C0 06            [24] 2575 	push	ar6
      003BD2 C0 05            [24] 2576 	push	ar5
      003BD4 C0 04            [24] 2577 	push	ar4
      003BD6 C0 03            [24] 2578 	push	ar3
      003BD8 C0 02            [24] 2579 	push	ar2
      003BDA 12 39 95         [24] 2580 	lcall	_i2c_read
      003BDD A8 82            [24] 2581 	mov	r0,dpl
                                   2582 ;	8051_i2c_eeprom.c:612: printf("%02X ", result);
      003BDF 79 00            [12] 2583 	mov	r1,#0x00
      003BE1 C0 00            [24] 2584 	push	ar0
      003BE3 C0 01            [24] 2585 	push	ar1
      003BE5 74 A4            [12] 2586 	mov	a,#___str_48
      003BE7 C0 E0            [24] 2587 	push	acc
      003BE9 74 56            [12] 2588 	mov	a,#(___str_48 >> 8)
      003BEB C0 E0            [24] 2589 	push	acc
      003BED 74 80            [12] 2590 	mov	a,#0x80
      003BEF C0 E0            [24] 2591 	push	acc
      003BF1 12 3F 80         [24] 2592 	lcall	_printf
      003BF4 E5 81            [12] 2593 	mov	a,sp
      003BF6 24 FB            [12] 2594 	add	a,#0xfb
      003BF8 F5 81            [12] 2595 	mov	sp,a
                                   2596 ;	8051_i2c_eeprom.c:614: i2c_stop();
      003BFA 12 3D 21         [24] 2597 	lcall	_i2c_stop
      003BFD D0 02            [24] 2598 	pop	ar2
      003BFF D0 03            [24] 2599 	pop	ar3
      003C01 D0 04            [24] 2600 	pop	ar4
      003C03 D0 05            [24] 2601 	pop	ar5
      003C05 D0 06            [24] 2602 	pop	ar6
      003C07 D0 07            [24] 2603 	pop	ar7
      003C09 80 2D            [24] 2604 	sjmp	00114$
      003C0B                       2605 00108$:
                                   2606 ;	8051_i2c_eeprom.c:618: printf("   "); // Space for missing bytes if end_address reached mid-line
      003C0B C0 07            [24] 2607 	push	ar7
      003C0D C0 06            [24] 2608 	push	ar6
      003C0F C0 05            [24] 2609 	push	ar5
      003C11 C0 04            [24] 2610 	push	ar4
      003C13 C0 03            [24] 2611 	push	ar3
      003C15 C0 02            [24] 2612 	push	ar2
      003C17 74 AA            [12] 2613 	mov	a,#___str_49
      003C19 C0 E0            [24] 2614 	push	acc
      003C1B 74 56            [12] 2615 	mov	a,#(___str_49 >> 8)
      003C1D C0 E0            [24] 2616 	push	acc
      003C1F 74 80            [12] 2617 	mov	a,#0x80
      003C21 C0 E0            [24] 2618 	push	acc
      003C23 12 3F 80         [24] 2619 	lcall	_printf
      003C26 15 81            [12] 2620 	dec	sp
      003C28 15 81            [12] 2621 	dec	sp
      003C2A 15 81            [12] 2622 	dec	sp
      003C2C D0 02            [24] 2623 	pop	ar2
      003C2E D0 03            [24] 2624 	pop	ar3
      003C30 D0 04            [24] 2625 	pop	ar4
      003C32 D0 05            [24] 2626 	pop	ar5
      003C34 D0 06            [24] 2627 	pop	ar6
      003C36 D0 07            [24] 2628 	pop	ar7
      003C38                       2629 00114$:
                                   2630 ;	8051_i2c_eeprom.c:574: for (int offset = 0; offset < MAX_HEX_CHAR_IN_SINGLE_LINE; offset++) {
      003C38 0A               [12] 2631 	inc	r2
      003C39 BA 00 01         [24] 2632 	cjne	r2,#0x00,00158$
      003C3C 0B               [12] 2633 	inc	r3
      003C3D                       2634 00158$:
      003C3D 02 3A D9         [24] 2635 	ljmp	00113$
      003C40                       2636 00110$:
                                   2637 ;	8051_i2c_eeprom.c:623: printf("\r\n");
      003C40 C0 07            [24] 2638 	push	ar7
      003C42 C0 06            [24] 2639 	push	ar6
      003C44 C0 05            [24] 2640 	push	ar5
      003C46 C0 04            [24] 2641 	push	ar4
      003C48 74 CF            [12] 2642 	mov	a,#___str_43
      003C4A C0 E0            [24] 2643 	push	acc
      003C4C 74 55            [12] 2644 	mov	a,#(___str_43 >> 8)
      003C4E C0 E0            [24] 2645 	push	acc
      003C50 74 80            [12] 2646 	mov	a,#0x80
      003C52 C0 E0            [24] 2647 	push	acc
      003C54 12 3F 80         [24] 2648 	lcall	_printf
      003C57 15 81            [12] 2649 	dec	sp
      003C59 15 81            [12] 2650 	dec	sp
      003C5B 15 81            [12] 2651 	dec	sp
      003C5D D0 04            [24] 2652 	pop	ar4
      003C5F D0 05            [24] 2653 	pop	ar5
      003C61 D0 06            [24] 2654 	pop	ar6
      003C63 D0 07            [24] 2655 	pop	ar7
                                   2656 ;	8051_i2c_eeprom.c:569: for (unsigned int address = start_address; address <= end_address; address += MAX_HEX_CHAR_IN_SINGLE_LINE) {
      003C65 74 10            [12] 2657 	mov	a,#0x10
      003C67 2E               [12] 2658 	add	a,r6
      003C68 FE               [12] 2659 	mov	r6,a
      003C69 E4               [12] 2660 	clr	a
      003C6A 3F               [12] 2661 	addc	a,r7
      003C6B FF               [12] 2662 	mov	r7,a
      003C6C 02 3A 9E         [24] 2663 	ljmp	00116$
      003C6F                       2664 00111$:
                                   2665 ;	8051_i2c_eeprom.c:625: printf("\r\n");
      003C6F 74 CF            [12] 2666 	mov	a,#___str_43
      003C71 C0 E0            [24] 2667 	push	acc
      003C73 74 55            [12] 2668 	mov	a,#(___str_43 >> 8)
      003C75 C0 E0            [24] 2669 	push	acc
      003C77 74 80            [12] 2670 	mov	a,#0x80
      003C79 C0 E0            [24] 2671 	push	acc
      003C7B 12 3F 80         [24] 2672 	lcall	_printf
      003C7E 15 81            [12] 2673 	dec	sp
      003C80 15 81            [12] 2674 	dec	sp
      003C82 15 81            [12] 2675 	dec	sp
                                   2676 ;	8051_i2c_eeprom.c:626: return 1;
      003C84 90 00 01         [24] 2677 	mov	dptr,#0x0001
                                   2678 ;	8051_i2c_eeprom.c:627: }
      003C87 22               [24] 2679 	ret
                                   2680 ;------------------------------------------------------------
                                   2681 ;Allocation info for local variables in function 'handler_EEPROM_hexdump'
                                   2682 ;------------------------------------------------------------
                                   2683 ;start_addr                Allocated with name '_handler_EEPROM_hexdump_start_addr_65536_123'
                                   2684 ;end_addr                  Allocated with name '_handler_EEPROM_hexdump_end_addr_65537_126'
                                   2685 ;------------------------------------------------------------
                                   2686 ;	8051_i2c_eeprom.c:634: void handler_EEPROM_hexdump(void)
                                   2687 ;	-----------------------------------------
                                   2688 ;	 function handler_EEPROM_hexdump
                                   2689 ;	-----------------------------------------
      003C88                       2690 _handler_EEPROM_hexdump:
                                   2691 ;	8051_i2c_eeprom.c:637: printf_tiny("\033[1;33m\n\rEnter Start Address for HEX Dump\r\n");
      003C88 74 AE            [12] 2692 	mov	a,#___str_50
      003C8A C0 E0            [24] 2693 	push	acc
      003C8C 74 56            [12] 2694 	mov	a,#(___str_50 >> 8)
      003C8E C0 E0            [24] 2695 	push	acc
      003C90 12 3E 29         [24] 2696 	lcall	_printf_tiny
      003C93 15 81            [12] 2697 	dec	sp
      003C95 15 81            [12] 2698 	dec	sp
                                   2699 ;	8051_i2c_eeprom.c:638: start_addr = take_address();
      003C97 12 33 45         [24] 2700 	lcall	_take_address
      003C9A AE 82            [24] 2701 	mov	r6,dpl
      003C9C AF 83            [24] 2702 	mov	r7,dph
      003C9E 8E 04            [24] 2703 	mov	ar4,r6
      003CA0 8F 05            [24] 2704 	mov	ar5,r7
      003CA2 7E 00            [12] 2705 	mov	r6,#0x00
      003CA4 7F 00            [12] 2706 	mov	r7,#0x00
                                   2707 ;	8051_i2c_eeprom.c:640: if(start_addr >= 0 && start_addr <= ADDR_MAX)
      003CA6 C3               [12] 2708 	clr	c
      003CA7 74 FF            [12] 2709 	mov	a,#0xff
      003CA9 9C               [12] 2710 	subb	a,r4
      003CAA 74 07            [12] 2711 	mov	a,#0x07
      003CAC 9D               [12] 2712 	subb	a,r5
      003CAD E4               [12] 2713 	clr	a
      003CAE 9E               [12] 2714 	subb	a,r6
      003CAF E4               [12] 2715 	clr	a
      003CB0 9F               [12] 2716 	subb	a,r7
      003CB1 50 16            [24] 2717 	jnc	00103$
                                   2718 ;	8051_i2c_eeprom.c:645: printf("\033[1;31m\n\rInvalid Start Address Range!!\n\r Address has to be between 0x000 to 0x7FF\033[0m\r\n");
      003CB3 74 DA            [12] 2719 	mov	a,#___str_51
      003CB5 C0 E0            [24] 2720 	push	acc
      003CB7 74 56            [12] 2721 	mov	a,#(___str_51 >> 8)
      003CB9 C0 E0            [24] 2722 	push	acc
      003CBB 74 80            [12] 2723 	mov	a,#0x80
      003CBD C0 E0            [24] 2724 	push	acc
      003CBF 12 3F 80         [24] 2725 	lcall	_printf
      003CC2 15 81            [12] 2726 	dec	sp
      003CC4 15 81            [12] 2727 	dec	sp
      003CC6 15 81            [12] 2728 	dec	sp
                                   2729 ;	8051_i2c_eeprom.c:646: return;
      003CC8 22               [24] 2730 	ret
      003CC9                       2731 00103$:
                                   2732 ;	8051_i2c_eeprom.c:651: printf_tiny("\033[1;33m\n\rEnter End Address for HEX Dump\r\n");
      003CC9 C0 07            [24] 2733 	push	ar7
      003CCB C0 06            [24] 2734 	push	ar6
      003CCD C0 05            [24] 2735 	push	ar5
      003CCF C0 04            [24] 2736 	push	ar4
      003CD1 74 32            [12] 2737 	mov	a,#___str_52
      003CD3 C0 E0            [24] 2738 	push	acc
      003CD5 74 57            [12] 2739 	mov	a,#(___str_52 >> 8)
      003CD7 C0 E0            [24] 2740 	push	acc
      003CD9 12 3E 29         [24] 2741 	lcall	_printf_tiny
      003CDC 15 81            [12] 2742 	dec	sp
      003CDE 15 81            [12] 2743 	dec	sp
                                   2744 ;	8051_i2c_eeprom.c:652: end_addr = take_address();
      003CE0 12 33 45         [24] 2745 	lcall	_take_address
      003CE3 AA 82            [24] 2746 	mov	r2,dpl
      003CE5 AB 83            [24] 2747 	mov	r3,dph
      003CE7 D0 04            [24] 2748 	pop	ar4
      003CE9 D0 05            [24] 2749 	pop	ar5
      003CEB D0 06            [24] 2750 	pop	ar6
      003CED D0 07            [24] 2751 	pop	ar7
                                   2752 ;	8051_i2c_eeprom.c:654: if(end_addr >= 0 && end_addr <= ADDR_MAX)
      003CEF 8A 00            [24] 2753 	mov	ar0,r2
      003CF1 8B 01            [24] 2754 	mov	ar1,r3
      003CF3 C3               [12] 2755 	clr	c
      003CF4 74 FF            [12] 2756 	mov	a,#0xff
      003CF6 98               [12] 2757 	subb	a,r0
      003CF7 74 07            [12] 2758 	mov	a,#0x07
      003CF9 99               [12] 2759 	subb	a,r1
      003CFA 50 16            [24] 2760 	jnc	00107$
                                   2761 ;	8051_i2c_eeprom.c:659: printf("\033[1;31m\n\rInvalid End Address Range!!\n\r Address has to be between 0x000 to 0x7FF\033[0m\r\n");
      003CFC 74 5C            [12] 2762 	mov	a,#___str_53
      003CFE C0 E0            [24] 2763 	push	acc
      003D00 74 57            [12] 2764 	mov	a,#(___str_53 >> 8)
      003D02 C0 E0            [24] 2765 	push	acc
      003D04 74 80            [12] 2766 	mov	a,#0x80
      003D06 C0 E0            [24] 2767 	push	acc
      003D08 12 3F 80         [24] 2768 	lcall	_printf
      003D0B 15 81            [12] 2769 	dec	sp
      003D0D 15 81            [12] 2770 	dec	sp
      003D0F 15 81            [12] 2771 	dec	sp
                                   2772 ;	8051_i2c_eeprom.c:660: return;
      003D11 22               [24] 2773 	ret
      003D12                       2774 00107$:
                                   2775 ;	8051_i2c_eeprom.c:663: EEPROM_hexump(start_addr,end_addr);
      003D12 90 04 18         [24] 2776 	mov	dptr,#_EEPROM_hexump_PARM_2
      003D15 EA               [12] 2777 	mov	a,r2
      003D16 F0               [24] 2778 	movx	@dptr,a
      003D17 EB               [12] 2779 	mov	a,r3
      003D18 A3               [24] 2780 	inc	dptr
      003D19 F0               [24] 2781 	movx	@dptr,a
      003D1A 8C 82            [24] 2782 	mov	dpl,r4
      003D1C 8D 83            [24] 2783 	mov	dph,r5
                                   2784 ;	8051_i2c_eeprom.c:664: }
      003D1E 02 3A 2F         [24] 2785 	ljmp	_EEPROM_hexump
                                   2786 ;------------------------------------------------------------
                                   2787 ;Allocation info for local variables in function 'i2c_stop'
                                   2788 ;------------------------------------------------------------
                                   2789 ;	8051_i2c_eeprom.c:671: void i2c_stop(void)
                                   2790 ;	-----------------------------------------
                                   2791 ;	 function i2c_stop
                                   2792 ;	-----------------------------------------
      003D21                       2793 _i2c_stop:
                                   2794 ;	8051_i2c_eeprom.c:673: SDA = 0;
                                   2795 ;	assignBit
      003D21 C2 94            [12] 2796 	clr	_P1_4
                                   2797 ;	8051_i2c_eeprom.c:674: i2c_delay();
      003D23 12 3D 5A         [24] 2798 	lcall	_i2c_delay
                                   2799 ;	8051_i2c_eeprom.c:675: SCL = 1;
                                   2800 ;	assignBit
      003D26 D2 93            [12] 2801 	setb	_P1_3
                                   2802 ;	8051_i2c_eeprom.c:676: i2c_delay();
      003D28 12 3D 5A         [24] 2803 	lcall	_i2c_delay
                                   2804 ;	8051_i2c_eeprom.c:677: SDA = 1; 
                                   2805 ;	assignBit
      003D2B D2 94            [12] 2806 	setb	_P1_4
                                   2807 ;	8051_i2c_eeprom.c:678: }
      003D2D 22               [24] 2808 	ret
                                   2809 ;------------------------------------------------------------
                                   2810 ;Allocation info for local variables in function 'eeprom_reset'
                                   2811 ;------------------------------------------------------------
                                   2812 ;i                         Allocated with name '_eeprom_reset_i_131072_132'
                                   2813 ;------------------------------------------------------------
                                   2814 ;	8051_i2c_eeprom.c:688: void eeprom_reset()
                                   2815 ;	-----------------------------------------
                                   2816 ;	 function eeprom_reset
                                   2817 ;	-----------------------------------------
      003D2E                       2818 _eeprom_reset:
                                   2819 ;	8051_i2c_eeprom.c:690: i2c_start();
      003D2E 12 3A 1A         [24] 2820 	lcall	_i2c_start
                                   2821 ;	8051_i2c_eeprom.c:691: SDA = 0;
                                   2822 ;	assignBit
      003D31 C2 94            [12] 2823 	clr	_P1_4
                                   2824 ;	8051_i2c_eeprom.c:692: SDA = 1;
                                   2825 ;	assignBit
      003D33 D2 94            [12] 2826 	setb	_P1_4
                                   2827 ;	8051_i2c_eeprom.c:693: for(int i = 0; i<10; i++)
      003D35 7E 00            [12] 2828 	mov	r6,#0x00
      003D37 7F 00            [12] 2829 	mov	r7,#0x00
      003D39                       2830 00103$:
      003D39 C3               [12] 2831 	clr	c
      003D3A EE               [12] 2832 	mov	a,r6
      003D3B 94 0A            [12] 2833 	subb	a,#0x0a
      003D3D EF               [12] 2834 	mov	a,r7
      003D3E 64 80            [12] 2835 	xrl	a,#0x80
      003D40 94 80            [12] 2836 	subb	a,#0x80
      003D42 50 0B            [24] 2837 	jnc	00101$
                                   2838 ;	8051_i2c_eeprom.c:695: SCL = 0;
                                   2839 ;	assignBit
      003D44 C2 93            [12] 2840 	clr	_P1_3
                                   2841 ;	8051_i2c_eeprom.c:696: SCL = 1;
                                   2842 ;	assignBit
      003D46 D2 93            [12] 2843 	setb	_P1_3
                                   2844 ;	8051_i2c_eeprom.c:693: for(int i = 0; i<10; i++)
      003D48 0E               [12] 2845 	inc	r6
      003D49 BE 00 ED         [24] 2846 	cjne	r6,#0x00,00103$
      003D4C 0F               [12] 2847 	inc	r7
      003D4D 80 EA            [24] 2848 	sjmp	00103$
      003D4F                       2849 00101$:
                                   2850 ;	8051_i2c_eeprom.c:698: i2c_start();
      003D4F 12 3A 1A         [24] 2851 	lcall	_i2c_start
                                   2852 ;	8051_i2c_eeprom.c:699: SDA = 0;
                                   2853 ;	assignBit
      003D52 C2 94            [12] 2854 	clr	_P1_4
                                   2855 ;	8051_i2c_eeprom.c:700: i2c_stop();
      003D54 12 3D 21         [24] 2856 	lcall	_i2c_stop
                                   2857 ;	8051_i2c_eeprom.c:701: SDA = 1;
                                   2858 ;	assignBit
      003D57 D2 94            [12] 2859 	setb	_P1_4
                                   2860 ;	8051_i2c_eeprom.c:702: }
      003D59 22               [24] 2861 	ret
                                   2862 ;------------------------------------------------------------
                                   2863 ;Allocation info for local variables in function 'i2c_delay'
                                   2864 ;------------------------------------------------------------
                                   2865 ;i                         Allocated with name '_i2c_delay_i_131072_135'
                                   2866 ;------------------------------------------------------------
                                   2867 ;	8051_i2c_eeprom.c:711: void i2c_delay() 
                                   2868 ;	-----------------------------------------
                                   2869 ;	 function i2c_delay
                                   2870 ;	-----------------------------------------
      003D5A                       2871 _i2c_delay:
                                   2872 ;	8051_i2c_eeprom.c:719: for(int i = 0; i<500; i++);
      003D5A 7E 00            [12] 2873 	mov	r6,#0x00
      003D5C 7F 00            [12] 2874 	mov	r7,#0x00
      003D5E                       2875 00103$:
      003D5E C3               [12] 2876 	clr	c
      003D5F EE               [12] 2877 	mov	a,r6
      003D60 94 F4            [12] 2878 	subb	a,#0xf4
      003D62 EF               [12] 2879 	mov	a,r7
      003D63 64 80            [12] 2880 	xrl	a,#0x80
      003D65 94 81            [12] 2881 	subb	a,#0x81
      003D67 50 07            [24] 2882 	jnc	00105$
      003D69 0E               [12] 2883 	inc	r6
      003D6A BE 00 F1         [24] 2884 	cjne	r6,#0x00,00103$
      003D6D 0F               [12] 2885 	inc	r7
      003D6E 80 EE            [24] 2886 	sjmp	00103$
      003D70                       2887 00105$:
                                   2888 ;	8051_i2c_eeprom.c:720: }
      003D70 22               [24] 2889 	ret
                                   2890 ;------------------------------------------------------------
                                   2891 ;Allocation info for local variables in function 'test_function'
                                   2892 ;------------------------------------------------------------
                                   2893 ;test_data                 Allocated with name '_test_function_test_data_65537_137'
                                   2894 ;address                   Allocated with name '_test_function_address_65537_137'
                                   2895 ;i                         Allocated with name '_test_function_i_131073_138'
                                   2896 ;read_data                 Allocated with name '_test_function_read_data_65538_140'
                                   2897 ;------------------------------------------------------------
                                   2898 ;	8051_i2c_eeprom.c:722: void test_function()
                                   2899 ;	-----------------------------------------
                                   2900 ;	 function test_function
                                   2901 ;	-----------------------------------------
      003D71                       2902 _test_function:
                                   2903 ;	8051_i2c_eeprom.c:724: i2c_start();
      003D71 12 3A 1A         [24] 2904 	lcall	_i2c_start
                                   2905 ;	8051_i2c_eeprom.c:725: i2c_delay();
      003D74 12 3D 5A         [24] 2906 	lcall	_i2c_delay
                                   2907 ;	8051_i2c_eeprom.c:731: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      003D77 74 02            [12] 2908 	mov	a,#0x02
      003D79 C0 E0            [24] 2909 	push	acc
      003D7B E4               [12] 2910 	clr	a
      003D7C C0 E0            [24] 2911 	push	acc
      003D7E 74 26            [12] 2912 	mov	a,#0x26
      003D80 C0 E0            [24] 2913 	push	acc
      003D82 E4               [12] 2914 	clr	a
      003D83 C0 E0            [24] 2915 	push	acc
      003D85 74 B2            [12] 2916 	mov	a,#___str_54
      003D87 C0 E0            [24] 2917 	push	acc
      003D89 74 57            [12] 2918 	mov	a,#(___str_54 >> 8)
      003D8B C0 E0            [24] 2919 	push	acc
      003D8D 74 80            [12] 2920 	mov	a,#0x80
      003D8F C0 E0            [24] 2921 	push	acc
      003D91 12 3F 80         [24] 2922 	lcall	_printf
      003D94 E5 81            [12] 2923 	mov	a,sp
      003D96 24 F9            [12] 2924 	add	a,#0xf9
      003D98 F5 81            [12] 2925 	mov	sp,a
                                   2926 ;	8051_i2c_eeprom.c:732: eeprom_write(address, test_data);
      003D9A 90 04 0F         [24] 2927 	mov	dptr,#_eeprom_write_PARM_2
      003D9D 74 26            [12] 2928 	mov	a,#0x26
      003D9F F0               [24] 2929 	movx	@dptr,a
      003DA0 90 00 02         [24] 2930 	mov	dptr,#0x0002
      003DA3 12 36 D7         [24] 2931 	lcall	_eeprom_write
                                   2932 ;	8051_i2c_eeprom.c:733: i2c_stop();
      003DA6 12 3D 21         [24] 2933 	lcall	_i2c_stop
                                   2934 ;	8051_i2c_eeprom.c:735: for(int i = 0; i<100; i++)
      003DA9 7E 00            [12] 2935 	mov	r6,#0x00
      003DAB 7F 00            [12] 2936 	mov	r7,#0x00
      003DAD                       2937 00106$:
      003DAD C3               [12] 2938 	clr	c
      003DAE EE               [12] 2939 	mov	a,r6
      003DAF 94 64            [12] 2940 	subb	a,#0x64
      003DB1 EF               [12] 2941 	mov	a,r7
      003DB2 64 80            [12] 2942 	xrl	a,#0x80
      003DB4 94 80            [12] 2943 	subb	a,#0x80
      003DB6 50 12            [24] 2944 	jnc	00101$
                                   2945 ;	8051_i2c_eeprom.c:737: i2c_delay();
      003DB8 C0 07            [24] 2946 	push	ar7
      003DBA C0 06            [24] 2947 	push	ar6
      003DBC 12 3D 5A         [24] 2948 	lcall	_i2c_delay
      003DBF D0 06            [24] 2949 	pop	ar6
      003DC1 D0 07            [24] 2950 	pop	ar7
                                   2951 ;	8051_i2c_eeprom.c:735: for(int i = 0; i<100; i++)
      003DC3 0E               [12] 2952 	inc	r6
      003DC4 BE 00 E6         [24] 2953 	cjne	r6,#0x00,00106$
      003DC7 0F               [12] 2954 	inc	r7
      003DC8 80 E3            [24] 2955 	sjmp	00106$
      003DCA                       2956 00101$:
                                   2957 ;	8051_i2c_eeprom.c:741: unsigned char read_data = eeprom_read(address);
      003DCA 90 00 02         [24] 2958 	mov	dptr,#0x0002
      003DCD 12 38 19         [24] 2959 	lcall	_eeprom_read
      003DD0 AE 82            [24] 2960 	mov	r6,dpl
                                   2961 ;	8051_i2c_eeprom.c:742: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      003DD2 8E 05            [24] 2962 	mov	ar5,r6
      003DD4 7F 00            [12] 2963 	mov	r7,#0x00
      003DD6 C0 06            [24] 2964 	push	ar6
      003DD8 C0 05            [24] 2965 	push	ar5
      003DDA C0 07            [24] 2966 	push	ar7
      003DDC 74 02            [12] 2967 	mov	a,#0x02
      003DDE C0 E0            [24] 2968 	push	acc
      003DE0 E4               [12] 2969 	clr	a
      003DE1 C0 E0            [24] 2970 	push	acc
      003DE3 74 DA            [12] 2971 	mov	a,#___str_55
      003DE5 C0 E0            [24] 2972 	push	acc
      003DE7 74 57            [12] 2973 	mov	a,#(___str_55 >> 8)
      003DE9 C0 E0            [24] 2974 	push	acc
      003DEB 74 80            [12] 2975 	mov	a,#0x80
      003DED C0 E0            [24] 2976 	push	acc
      003DEF 12 3F 80         [24] 2977 	lcall	_printf
      003DF2 E5 81            [12] 2978 	mov	a,sp
      003DF4 24 F9            [12] 2979 	add	a,#0xf9
      003DF6 F5 81            [12] 2980 	mov	sp,a
      003DF8 D0 06            [24] 2981 	pop	ar6
                                   2982 ;	8051_i2c_eeprom.c:745: if(read_data == test_data) {
      003DFA BE 26 16         [24] 2983 	cjne	r6,#0x26,00103$
                                   2984 ;	8051_i2c_eeprom.c:746: printf("MATCH - Write/Read successful!\n\r");
      003DFD 74 02            [12] 2985 	mov	a,#___str_56
      003DFF C0 E0            [24] 2986 	push	acc
      003E01 74 58            [12] 2987 	mov	a,#(___str_56 >> 8)
      003E03 C0 E0            [24] 2988 	push	acc
      003E05 74 80            [12] 2989 	mov	a,#0x80
      003E07 C0 E0            [24] 2990 	push	acc
      003E09 12 3F 80         [24] 2991 	lcall	_printf
      003E0C 15 81            [12] 2992 	dec	sp
      003E0E 15 81            [12] 2993 	dec	sp
      003E10 15 81            [12] 2994 	dec	sp
      003E12 22               [24] 2995 	ret
      003E13                       2996 00103$:
                                   2997 ;	8051_i2c_eeprom.c:748: printf("ERROR - Data mismatch!\n\r");
      003E13 74 23            [12] 2998 	mov	a,#___str_57
      003E15 C0 E0            [24] 2999 	push	acc
      003E17 74 58            [12] 3000 	mov	a,#(___str_57 >> 8)
      003E19 C0 E0            [24] 3001 	push	acc
      003E1B 74 80            [12] 3002 	mov	a,#0x80
      003E1D C0 E0            [24] 3003 	push	acc
      003E1F 12 3F 80         [24] 3004 	lcall	_printf
      003E22 15 81            [12] 3005 	dec	sp
      003E24 15 81            [12] 3006 	dec	sp
      003E26 15 81            [12] 3007 	dec	sp
                                   3008 ;	8051_i2c_eeprom.c:752: }
      003E28 22               [24] 3009 	ret
                                   3010 	.area CSEG    (CODE)
                                   3011 	.area CONST   (CODE)
                                   3012 	.area CONST   (CODE)
      0049E2                       3013 ___str_0:
      0049E2 0A                    3014 	.db 0x0a
      0049E3 E2                    3015 	.db 0xe2
      0049E4 95                    3016 	.db 0x95
      0049E5 94                    3017 	.db 0x94
      0049E6 E2                    3018 	.db 0xe2
      0049E7 95                    3019 	.db 0x95
      0049E8 90                    3020 	.db 0x90
      0049E9 E2                    3021 	.db 0xe2
      0049EA 95                    3022 	.db 0x95
      0049EB 90                    3023 	.db 0x90
      0049EC E2                    3024 	.db 0xe2
      0049ED 95                    3025 	.db 0x95
      0049EE 90                    3026 	.db 0x90
      0049EF E2                    3027 	.db 0xe2
      0049F0 95                    3028 	.db 0x95
      0049F1 90                    3029 	.db 0x90
      0049F2 E2                    3030 	.db 0xe2
      0049F3 95                    3031 	.db 0x95
      0049F4 90                    3032 	.db 0x90
      0049F5 E2                    3033 	.db 0xe2
      0049F6 95                    3034 	.db 0x95
      0049F7 90                    3035 	.db 0x90
      0049F8 E2                    3036 	.db 0xe2
      0049F9 95                    3037 	.db 0x95
      0049FA 90                    3038 	.db 0x90
      0049FB E2                    3039 	.db 0xe2
      0049FC 95                    3040 	.db 0x95
      0049FD 90                    3041 	.db 0x90
      0049FE E2                    3042 	.db 0xe2
      0049FF 95                    3043 	.db 0x95
      004A00 90                    3044 	.db 0x90
      004A01 E2                    3045 	.db 0xe2
      004A02 95                    3046 	.db 0x95
      004A03 90                    3047 	.db 0x90
      004A04 E2                    3048 	.db 0xe2
      004A05 95                    3049 	.db 0x95
      004A06 90                    3050 	.db 0x90
      004A07 E2                    3051 	.db 0xe2
      004A08 95                    3052 	.db 0x95
      004A09 90                    3053 	.db 0x90
      004A0A E2                    3054 	.db 0xe2
      004A0B 95                    3055 	.db 0x95
      004A0C 90                    3056 	.db 0x90
      004A0D E2                    3057 	.db 0xe2
      004A0E 95                    3058 	.db 0x95
      004A0F 90                    3059 	.db 0x90
      004A10 E2                    3060 	.db 0xe2
      004A11 95                    3061 	.db 0x95
      004A12 90                    3062 	.db 0x90
      004A13 E2                    3063 	.db 0xe2
      004A14 95                    3064 	.db 0x95
      004A15 90                    3065 	.db 0x90
      004A16 E2                    3066 	.db 0xe2
      004A17 95                    3067 	.db 0x95
      004A18 90                    3068 	.db 0x90
      004A19 E2                    3069 	.db 0xe2
      004A1A 95                    3070 	.db 0x95
      004A1B 90                    3071 	.db 0x90
      004A1C E2                    3072 	.db 0xe2
      004A1D 95                    3073 	.db 0x95
      004A1E 90                    3074 	.db 0x90
      004A1F E2                    3075 	.db 0xe2
      004A20 95                    3076 	.db 0x95
      004A21 90                    3077 	.db 0x90
      004A22 E2                    3078 	.db 0xe2
      004A23 95                    3079 	.db 0x95
      004A24 90                    3080 	.db 0x90
      004A25 E2                    3081 	.db 0xe2
      004A26 95                    3082 	.db 0x95
      004A27 90                    3083 	.db 0x90
      004A28 E2                    3084 	.db 0xe2
      004A29 95                    3085 	.db 0x95
      004A2A 90                    3086 	.db 0x90
      004A2B E2                    3087 	.db 0xe2
      004A2C 95                    3088 	.db 0x95
      004A2D 90                    3089 	.db 0x90
      004A2E E2                    3090 	.db 0xe2
      004A2F 95                    3091 	.db 0x95
      004A30 90                    3092 	.db 0x90
      004A31 E2                    3093 	.db 0xe2
      004A32 95                    3094 	.db 0x95
      004A33 90                    3095 	.db 0x90
      004A34 E2                    3096 	.db 0xe2
      004A35 95                    3097 	.db 0x95
      004A36 90                    3098 	.db 0x90
      004A37 E2                    3099 	.db 0xe2
      004A38 95                    3100 	.db 0x95
      004A39 90                    3101 	.db 0x90
      004A3A E2                    3102 	.db 0xe2
      004A3B 95                    3103 	.db 0x95
      004A3C 90                    3104 	.db 0x90
      004A3D E2                    3105 	.db 0xe2
      004A3E 95                    3106 	.db 0x95
      004A3F 90                    3107 	.db 0x90
      004A40 E2                    3108 	.db 0xe2
      004A41 95                    3109 	.db 0x95
      004A42 90                    3110 	.db 0x90
      004A43 E2                    3111 	.db 0xe2
      004A44 95                    3112 	.db 0x95
      004A45 90                    3113 	.db 0x90
      004A46 E2                    3114 	.db 0xe2
      004A47 95                    3115 	.db 0x95
      004A48 90                    3116 	.db 0x90
      004A49 E2                    3117 	.db 0xe2
      004A4A 95                    3118 	.db 0x95
      004A4B 90                    3119 	.db 0x90
      004A4C E2                    3120 	.db 0xe2
      004A4D 95                    3121 	.db 0x95
      004A4E 90                    3122 	.db 0x90
      004A4F E2                    3123 	.db 0xe2
      004A50 95                    3124 	.db 0x95
      004A51 90                    3125 	.db 0x90
      004A52 E2                    3126 	.db 0xe2
      004A53 95                    3127 	.db 0x95
      004A54 90                    3128 	.db 0x90
      004A55 E2                    3129 	.db 0xe2
      004A56 95                    3130 	.db 0x95
      004A57 90                    3131 	.db 0x90
      004A58 E2                    3132 	.db 0xe2
      004A59 95                    3133 	.db 0x95
      004A5A 90                    3134 	.db 0x90
      004A5B E2                    3135 	.db 0xe2
      004A5C 95                    3136 	.db 0x95
      004A5D 90                    3137 	.db 0x90
      004A5E E2                    3138 	.db 0xe2
      004A5F 95                    3139 	.db 0x95
      004A60 90                    3140 	.db 0x90
      004A61 E2                    3141 	.db 0xe2
      004A62 95                    3142 	.db 0x95
      004A63 90                    3143 	.db 0x90
      004A64 E2                    3144 	.db 0xe2
      004A65 95                    3145 	.db 0x95
      004A66 90                    3146 	.db 0x90
      004A67 E2                    3147 	.db 0xe2
      004A68 95                    3148 	.db 0x95
      004A69 90                    3149 	.db 0x90
      004A6A E2                    3150 	.db 0xe2
      004A6B 95                    3151 	.db 0x95
      004A6C 90                    3152 	.db 0x90
      004A6D E2                    3153 	.db 0xe2
      004A6E 95                    3154 	.db 0x95
      004A6F 90                    3155 	.db 0x90
      004A70 E2                    3156 	.db 0xe2
      004A71 95                    3157 	.db 0x95
      004A72 90                    3158 	.db 0x90
      004A73 E2                    3159 	.db 0xe2
      004A74 95                    3160 	.db 0x95
      004A75 90                    3161 	.db 0x90
      004A76 E2                    3162 	.db 0xe2
      004A77 95                    3163 	.db 0x95
      004A78 90                    3164 	.db 0x90
      004A79 E2                    3165 	.db 0xe2
      004A7A 95                    3166 	.db 0x95
      004A7B 90                    3167 	.db 0x90
      004A7C E2                    3168 	.db 0xe2
      004A7D 95                    3169 	.db 0x95
      004A7E 90                    3170 	.db 0x90
      004A7F E2                    3171 	.db 0xe2
      004A80 95                    3172 	.db 0x95
      004A81 90                    3173 	.db 0x90
      004A82 E2                    3174 	.db 0xe2
      004A83 95                    3175 	.db 0x95
      004A84 90                    3176 	.db 0x90
      004A85 E2                    3177 	.db 0xe2
      004A86 95                    3178 	.db 0x95
      004A87 90                    3179 	.db 0x90
      004A88 E2                    3180 	.db 0xe2
      004A89 95                    3181 	.db 0x95
      004A8A 90                    3182 	.db 0x90
      004A8B E2                    3183 	.db 0xe2
      004A8C 95                    3184 	.db 0x95
      004A8D 90                    3185 	.db 0x90
      004A8E E2                    3186 	.db 0xe2
      004A8F 95                    3187 	.db 0x95
      004A90 97                    3188 	.db 0x97
      004A91 0A                    3189 	.db 0x0a
      004A92 0D                    3190 	.db 0x0d
      004A93 00                    3191 	.db 0x00
                                   3192 	.area CSEG    (CODE)
                                   3193 	.area CONST   (CODE)
      004A94                       3194 ___str_1:
      004A94 E2                    3195 	.db 0xe2
      004A95 95                    3196 	.db 0x95
      004A96 91                    3197 	.db 0x91
      004A97 20 20 20 20 20 20 20  3198 	.ascii "           I2C Memory Management System v1.0            "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
      004ACF E2                    3199 	.db 0xe2
      004AD0 95                    3200 	.db 0x95
      004AD1 91                    3201 	.db 0x91
      004AD2 0A                    3202 	.db 0x0a
      004AD3 0D                    3203 	.db 0x0d
      004AD4 00                    3204 	.db 0x00
                                   3205 	.area CSEG    (CODE)
                                   3206 	.area CONST   (CODE)
      004AD5                       3207 ___str_2:
      004AD5 E2                    3208 	.db 0xe2
      004AD6 95                    3209 	.db 0x95
      004AD7 9A                    3210 	.db 0x9a
      004AD8 E2                    3211 	.db 0xe2
      004AD9 95                    3212 	.db 0x95
      004ADA 90                    3213 	.db 0x90
      004ADB E2                    3214 	.db 0xe2
      004ADC 95                    3215 	.db 0x95
      004ADD 90                    3216 	.db 0x90
      004ADE E2                    3217 	.db 0xe2
      004ADF 95                    3218 	.db 0x95
      004AE0 90                    3219 	.db 0x90
      004AE1 E2                    3220 	.db 0xe2
      004AE2 95                    3221 	.db 0x95
      004AE3 90                    3222 	.db 0x90
      004AE4 E2                    3223 	.db 0xe2
      004AE5 95                    3224 	.db 0x95
      004AE6 90                    3225 	.db 0x90
      004AE7 E2                    3226 	.db 0xe2
      004AE8 95                    3227 	.db 0x95
      004AE9 90                    3228 	.db 0x90
      004AEA E2                    3229 	.db 0xe2
      004AEB 95                    3230 	.db 0x95
      004AEC 90                    3231 	.db 0x90
      004AED E2                    3232 	.db 0xe2
      004AEE 95                    3233 	.db 0x95
      004AEF 90                    3234 	.db 0x90
      004AF0 E2                    3235 	.db 0xe2
      004AF1 95                    3236 	.db 0x95
      004AF2 90                    3237 	.db 0x90
      004AF3 E2                    3238 	.db 0xe2
      004AF4 95                    3239 	.db 0x95
      004AF5 90                    3240 	.db 0x90
      004AF6 E2                    3241 	.db 0xe2
      004AF7 95                    3242 	.db 0x95
      004AF8 90                    3243 	.db 0x90
      004AF9 E2                    3244 	.db 0xe2
      004AFA 95                    3245 	.db 0x95
      004AFB 90                    3246 	.db 0x90
      004AFC E2                    3247 	.db 0xe2
      004AFD 95                    3248 	.db 0x95
      004AFE 90                    3249 	.db 0x90
      004AFF E2                    3250 	.db 0xe2
      004B00 95                    3251 	.db 0x95
      004B01 90                    3252 	.db 0x90
      004B02 E2                    3253 	.db 0xe2
      004B03 95                    3254 	.db 0x95
      004B04 90                    3255 	.db 0x90
      004B05 E2                    3256 	.db 0xe2
      004B06 95                    3257 	.db 0x95
      004B07 90                    3258 	.db 0x90
      004B08 E2                    3259 	.db 0xe2
      004B09 95                    3260 	.db 0x95
      004B0A 90                    3261 	.db 0x90
      004B0B E2                    3262 	.db 0xe2
      004B0C 95                    3263 	.db 0x95
      004B0D 90                    3264 	.db 0x90
      004B0E E2                    3265 	.db 0xe2
      004B0F 95                    3266 	.db 0x95
      004B10 90                    3267 	.db 0x90
      004B11 E2                    3268 	.db 0xe2
      004B12 95                    3269 	.db 0x95
      004B13 90                    3270 	.db 0x90
      004B14 E2                    3271 	.db 0xe2
      004B15 95                    3272 	.db 0x95
      004B16 90                    3273 	.db 0x90
      004B17 E2                    3274 	.db 0xe2
      004B18 95                    3275 	.db 0x95
      004B19 90                    3276 	.db 0x90
      004B1A E2                    3277 	.db 0xe2
      004B1B 95                    3278 	.db 0x95
      004B1C 90                    3279 	.db 0x90
      004B1D E2                    3280 	.db 0xe2
      004B1E 95                    3281 	.db 0x95
      004B1F 90                    3282 	.db 0x90
      004B20 E2                    3283 	.db 0xe2
      004B21 95                    3284 	.db 0x95
      004B22 90                    3285 	.db 0x90
      004B23 E2                    3286 	.db 0xe2
      004B24 95                    3287 	.db 0x95
      004B25 90                    3288 	.db 0x90
      004B26 E2                    3289 	.db 0xe2
      004B27 95                    3290 	.db 0x95
      004B28 90                    3291 	.db 0x90
      004B29 E2                    3292 	.db 0xe2
      004B2A 95                    3293 	.db 0x95
      004B2B 90                    3294 	.db 0x90
      004B2C E2                    3295 	.db 0xe2
      004B2D 95                    3296 	.db 0x95
      004B2E 90                    3297 	.db 0x90
      004B2F E2                    3298 	.db 0xe2
      004B30 95                    3299 	.db 0x95
      004B31 90                    3300 	.db 0x90
      004B32 E2                    3301 	.db 0xe2
      004B33 95                    3302 	.db 0x95
      004B34 90                    3303 	.db 0x90
      004B35 E2                    3304 	.db 0xe2
      004B36 95                    3305 	.db 0x95
      004B37 90                    3306 	.db 0x90
      004B38 E2                    3307 	.db 0xe2
      004B39 95                    3308 	.db 0x95
      004B3A 90                    3309 	.db 0x90
      004B3B E2                    3310 	.db 0xe2
      004B3C 95                    3311 	.db 0x95
      004B3D 90                    3312 	.db 0x90
      004B3E E2                    3313 	.db 0xe2
      004B3F 95                    3314 	.db 0x95
      004B40 90                    3315 	.db 0x90
      004B41 E2                    3316 	.db 0xe2
      004B42 95                    3317 	.db 0x95
      004B43 90                    3318 	.db 0x90
      004B44 E2                    3319 	.db 0xe2
      004B45 95                    3320 	.db 0x95
      004B46 90                    3321 	.db 0x90
      004B47 E2                    3322 	.db 0xe2
      004B48 95                    3323 	.db 0x95
      004B49 90                    3324 	.db 0x90
      004B4A E2                    3325 	.db 0xe2
      004B4B 95                    3326 	.db 0x95
      004B4C 90                    3327 	.db 0x90
      004B4D E2                    3328 	.db 0xe2
      004B4E 95                    3329 	.db 0x95
      004B4F 90                    3330 	.db 0x90
      004B50 E2                    3331 	.db 0xe2
      004B51 95                    3332 	.db 0x95
      004B52 90                    3333 	.db 0x90
      004B53 E2                    3334 	.db 0xe2
      004B54 95                    3335 	.db 0x95
      004B55 90                    3336 	.db 0x90
      004B56 E2                    3337 	.db 0xe2
      004B57 95                    3338 	.db 0x95
      004B58 90                    3339 	.db 0x90
      004B59 E2                    3340 	.db 0xe2
      004B5A 95                    3341 	.db 0x95
      004B5B 90                    3342 	.db 0x90
      004B5C E2                    3343 	.db 0xe2
      004B5D 95                    3344 	.db 0x95
      004B5E 90                    3345 	.db 0x90
      004B5F E2                    3346 	.db 0xe2
      004B60 95                    3347 	.db 0x95
      004B61 90                    3348 	.db 0x90
      004B62 E2                    3349 	.db 0xe2
      004B63 95                    3350 	.db 0x95
      004B64 90                    3351 	.db 0x90
      004B65 E2                    3352 	.db 0xe2
      004B66 95                    3353 	.db 0x95
      004B67 90                    3354 	.db 0x90
      004B68 E2                    3355 	.db 0xe2
      004B69 95                    3356 	.db 0x95
      004B6A 90                    3357 	.db 0x90
      004B6B E2                    3358 	.db 0xe2
      004B6C 95                    3359 	.db 0x95
      004B6D 90                    3360 	.db 0x90
      004B6E E2                    3361 	.db 0xe2
      004B6F 95                    3362 	.db 0x95
      004B70 90                    3363 	.db 0x90
      004B71 E2                    3364 	.db 0xe2
      004B72 95                    3365 	.db 0x95
      004B73 90                    3366 	.db 0x90
      004B74 E2                    3367 	.db 0xe2
      004B75 95                    3368 	.db 0x95
      004B76 90                    3369 	.db 0x90
      004B77 E2                    3370 	.db 0xe2
      004B78 95                    3371 	.db 0x95
      004B79 90                    3372 	.db 0x90
      004B7A E2                    3373 	.db 0xe2
      004B7B 95                    3374 	.db 0x95
      004B7C 90                    3375 	.db 0x90
      004B7D E2                    3376 	.db 0xe2
      004B7E 95                    3377 	.db 0x95
      004B7F 90                    3378 	.db 0x90
      004B80 E2                    3379 	.db 0xe2
      004B81 95                    3380 	.db 0x95
      004B82 9D                    3381 	.db 0x9d
      004B83 0A                    3382 	.db 0x0a
      004B84 0D                    3383 	.db 0x0d
      004B85 00                    3384 	.db 0x00
                                   3385 	.area CSEG    (CODE)
                                   3386 	.area CONST   (CODE)
      004B86                       3387 ___str_3:
      004B86 0A                    3388 	.db 0x0a
      004B87 0D                    3389 	.db 0x0d
      004B88 E2                    3390 	.db 0xe2
      004B89 94                    3391 	.db 0x94
      004B8A 8C                    3392 	.db 0x8c
      004B8B E2                    3393 	.db 0xe2
      004B8C 94                    3394 	.db 0x94
      004B8D 80                    3395 	.db 0x80
      004B8E E2                    3396 	.db 0xe2
      004B8F 94                    3397 	.db 0x94
      004B90 80                    3398 	.db 0x80
      004B91 E2                    3399 	.db 0xe2
      004B92 94                    3400 	.db 0x94
      004B93 80                    3401 	.db 0x80
      004B94 E2                    3402 	.db 0xe2
      004B95 94                    3403 	.db 0x94
      004B96 80                    3404 	.db 0x80
      004B97 E2                    3405 	.db 0xe2
      004B98 94                    3406 	.db 0x94
      004B99 80                    3407 	.db 0x80
      004B9A E2                    3408 	.db 0xe2
      004B9B 94                    3409 	.db 0x94
      004B9C 80                    3410 	.db 0x80
      004B9D E2                    3411 	.db 0xe2
      004B9E 94                    3412 	.db 0x94
      004B9F 80                    3413 	.db 0x80
      004BA0 E2                    3414 	.db 0xe2
      004BA1 94                    3415 	.db 0x94
      004BA2 80                    3416 	.db 0x80
      004BA3 E2                    3417 	.db 0xe2
      004BA4 94                    3418 	.db 0x94
      004BA5 80                    3419 	.db 0x80
      004BA6 E2                    3420 	.db 0xe2
      004BA7 94                    3421 	.db 0x94
      004BA8 80                    3422 	.db 0x80
      004BA9 E2                    3423 	.db 0xe2
      004BAA 94                    3424 	.db 0x94
      004BAB 80                    3425 	.db 0x80
      004BAC E2                    3426 	.db 0xe2
      004BAD 94                    3427 	.db 0x94
      004BAE 80                    3428 	.db 0x80
      004BAF E2                    3429 	.db 0xe2
      004BB0 94                    3430 	.db 0x94
      004BB1 AC                    3431 	.db 0xac
      004BB2 E2                    3432 	.db 0xe2
      004BB3 94                    3433 	.db 0x94
      004BB4 80                    3434 	.db 0x80
      004BB5 E2                    3435 	.db 0xe2
      004BB6 94                    3436 	.db 0x94
      004BB7 80                    3437 	.db 0x80
      004BB8 E2                    3438 	.db 0xe2
      004BB9 94                    3439 	.db 0x94
      004BBA 80                    3440 	.db 0x80
      004BBB E2                    3441 	.db 0xe2
      004BBC 94                    3442 	.db 0x94
      004BBD 80                    3443 	.db 0x80
      004BBE E2                    3444 	.db 0xe2
      004BBF 94                    3445 	.db 0x94
      004BC0 80                    3446 	.db 0x80
      004BC1 E2                    3447 	.db 0xe2
      004BC2 94                    3448 	.db 0x94
      004BC3 80                    3449 	.db 0x80
      004BC4 E2                    3450 	.db 0xe2
      004BC5 94                    3451 	.db 0x94
      004BC6 80                    3452 	.db 0x80
      004BC7 E2                    3453 	.db 0xe2
      004BC8 94                    3454 	.db 0x94
      004BC9 80                    3455 	.db 0x80
      004BCA E2                    3456 	.db 0xe2
      004BCB 94                    3457 	.db 0x94
      004BCC 80                    3458 	.db 0x80
      004BCD E2                    3459 	.db 0xe2
      004BCE 94                    3460 	.db 0x94
      004BCF 80                    3461 	.db 0x80
      004BD0 E2                    3462 	.db 0xe2
      004BD1 94                    3463 	.db 0x94
      004BD2 80                    3464 	.db 0x80
      004BD3 E2                    3465 	.db 0xe2
      004BD4 94                    3466 	.db 0x94
      004BD5 80                    3467 	.db 0x80
      004BD6 E2                    3468 	.db 0xe2
      004BD7 94                    3469 	.db 0x94
      004BD8 80                    3470 	.db 0x80
      004BD9 E2                    3471 	.db 0xe2
      004BDA 94                    3472 	.db 0x94
      004BDB 80                    3473 	.db 0x80
      004BDC E2                    3474 	.db 0xe2
      004BDD 94                    3475 	.db 0x94
      004BDE 80                    3476 	.db 0x80
      004BDF E2                    3477 	.db 0xe2
      004BE0 94                    3478 	.db 0x94
      004BE1 80                    3479 	.db 0x80
      004BE2 E2                    3480 	.db 0xe2
      004BE3 94                    3481 	.db 0x94
      004BE4 80                    3482 	.db 0x80
      004BE5 E2                    3483 	.db 0xe2
      004BE6 94                    3484 	.db 0x94
      004BE7 80                    3485 	.db 0x80
      004BE8 E2                    3486 	.db 0xe2
      004BE9 94                    3487 	.db 0x94
      004BEA 80                    3488 	.db 0x80
      004BEB E2                    3489 	.db 0xe2
      004BEC 94                    3490 	.db 0x94
      004BED 80                    3491 	.db 0x80
      004BEE E2                    3492 	.db 0xe2
      004BEF 94                    3493 	.db 0x94
      004BF0 80                    3494 	.db 0x80
      004BF1 E2                    3495 	.db 0xe2
      004BF2 94                    3496 	.db 0x94
      004BF3 80                    3497 	.db 0x80
      004BF4 E2                    3498 	.db 0xe2
      004BF5 94                    3499 	.db 0x94
      004BF6 80                    3500 	.db 0x80
      004BF7 E2                    3501 	.db 0xe2
      004BF8 94                    3502 	.db 0x94
      004BF9 80                    3503 	.db 0x80
      004BFA E2                    3504 	.db 0xe2
      004BFB 94                    3505 	.db 0x94
      004BFC 80                    3506 	.db 0x80
      004BFD E2                    3507 	.db 0xe2
      004BFE 94                    3508 	.db 0x94
      004BFF 80                    3509 	.db 0x80
      004C00 E2                    3510 	.db 0xe2
      004C01 94                    3511 	.db 0x94
      004C02 80                    3512 	.db 0x80
      004C03 E2                    3513 	.db 0xe2
      004C04 94                    3514 	.db 0x94
      004C05 80                    3515 	.db 0x80
      004C06 E2                    3516 	.db 0xe2
      004C07 94                    3517 	.db 0x94
      004C08 80                    3518 	.db 0x80
      004C09 E2                    3519 	.db 0xe2
      004C0A 94                    3520 	.db 0x94
      004C0B 80                    3521 	.db 0x80
      004C0C E2                    3522 	.db 0xe2
      004C0D 94                    3523 	.db 0x94
      004C0E 80                    3524 	.db 0x80
      004C0F E2                    3525 	.db 0xe2
      004C10 94                    3526 	.db 0x94
      004C11 80                    3527 	.db 0x80
      004C12 E2                    3528 	.db 0xe2
      004C13 94                    3529 	.db 0x94
      004C14 80                    3530 	.db 0x80
      004C15 E2                    3531 	.db 0xe2
      004C16 94                    3532 	.db 0x94
      004C17 80                    3533 	.db 0x80
      004C18 E2                    3534 	.db 0xe2
      004C19 94                    3535 	.db 0x94
      004C1A 80                    3536 	.db 0x80
      004C1B E2                    3537 	.db 0xe2
      004C1C 94                    3538 	.db 0x94
      004C1D 80                    3539 	.db 0x80
      004C1E E2                    3540 	.db 0xe2
      004C1F 94                    3541 	.db 0x94
      004C20 80                    3542 	.db 0x80
      004C21 E2                    3543 	.db 0xe2
      004C22 94                    3544 	.db 0x94
      004C23 80                    3545 	.db 0x80
      004C24 E2                    3546 	.db 0xe2
      004C25 94                    3547 	.db 0x94
      004C26 80                    3548 	.db 0x80
      004C27 E2                    3549 	.db 0xe2
      004C28 94                    3550 	.db 0x94
      004C29 80                    3551 	.db 0x80
      004C2A E2                    3552 	.db 0xe2
      004C2B 94                    3553 	.db 0x94
      004C2C 80                    3554 	.db 0x80
      004C2D E2                    3555 	.db 0xe2
      004C2E 94                    3556 	.db 0x94
      004C2F 80                    3557 	.db 0x80
      004C30 E2                    3558 	.db 0xe2
      004C31 94                    3559 	.db 0x94
      004C32 80                    3560 	.db 0x80
      004C33 E2                    3561 	.db 0xe2
      004C34 94                    3562 	.db 0x94
      004C35 80                    3563 	.db 0x80
      004C36 E2                    3564 	.db 0xe2
      004C37 94                    3565 	.db 0x94
      004C38 90                    3566 	.db 0x90
      004C39 0A                    3567 	.db 0x0a
      004C3A 0D                    3568 	.db 0x0d
      004C3B 00                    3569 	.db 0x00
                                   3570 	.area CSEG    (CODE)
                                   3571 	.area CONST   (CODE)
      004C3C                       3572 ___str_4:
      004C3C E2                    3573 	.db 0xe2
      004C3D 94                    3574 	.db 0x94
      004C3E 82                    3575 	.db 0x82
      004C3F 20 20 43 6F 6D 6D 61  3576 	.ascii "  Command   "
             6E 64 20 20 20
      004C4B E2                    3577 	.db 0xe2
      004C4C 94                    3578 	.db 0x94
      004C4D 82                    3579 	.db 0x82
      004C4E 20 20 20 20 20 20 20  3580 	.ascii "               Description                  "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004C7A E2                    3581 	.db 0xe2
      004C7B 94                    3582 	.db 0x94
      004C7C 82                    3583 	.db 0x82
      004C7D 0A                    3584 	.db 0x0a
      004C7E 0D                    3585 	.db 0x0d
      004C7F 00                    3586 	.db 0x00
                                   3587 	.area CSEG    (CODE)
                                   3588 	.area CONST   (CODE)
      004C80                       3589 ___str_5:
      004C80 E2                    3590 	.db 0xe2
      004C81 94                    3591 	.db 0x94
      004C82 9C                    3592 	.db 0x9c
      004C83 E2                    3593 	.db 0xe2
      004C84 94                    3594 	.db 0x94
      004C85 80                    3595 	.db 0x80
      004C86 E2                    3596 	.db 0xe2
      004C87 94                    3597 	.db 0x94
      004C88 80                    3598 	.db 0x80
      004C89 E2                    3599 	.db 0xe2
      004C8A 94                    3600 	.db 0x94
      004C8B 80                    3601 	.db 0x80
      004C8C E2                    3602 	.db 0xe2
      004C8D 94                    3603 	.db 0x94
      004C8E 80                    3604 	.db 0x80
      004C8F E2                    3605 	.db 0xe2
      004C90 94                    3606 	.db 0x94
      004C91 80                    3607 	.db 0x80
      004C92 E2                    3608 	.db 0xe2
      004C93 94                    3609 	.db 0x94
      004C94 80                    3610 	.db 0x80
      004C95 E2                    3611 	.db 0xe2
      004C96 94                    3612 	.db 0x94
      004C97 80                    3613 	.db 0x80
      004C98 E2                    3614 	.db 0xe2
      004C99 94                    3615 	.db 0x94
      004C9A 80                    3616 	.db 0x80
      004C9B E2                    3617 	.db 0xe2
      004C9C 94                    3618 	.db 0x94
      004C9D 80                    3619 	.db 0x80
      004C9E E2                    3620 	.db 0xe2
      004C9F 94                    3621 	.db 0x94
      004CA0 80                    3622 	.db 0x80
      004CA1 E2                    3623 	.db 0xe2
      004CA2 94                    3624 	.db 0x94
      004CA3 80                    3625 	.db 0x80
      004CA4 E2                    3626 	.db 0xe2
      004CA5 94                    3627 	.db 0x94
      004CA6 80                    3628 	.db 0x80
      004CA7 E2                    3629 	.db 0xe2
      004CA8 94                    3630 	.db 0x94
      004CA9 BC                    3631 	.db 0xbc
      004CAA E2                    3632 	.db 0xe2
      004CAB 94                    3633 	.db 0x94
      004CAC 80                    3634 	.db 0x80
      004CAD E2                    3635 	.db 0xe2
      004CAE 94                    3636 	.db 0x94
      004CAF 80                    3637 	.db 0x80
      004CB0 E2                    3638 	.db 0xe2
      004CB1 94                    3639 	.db 0x94
      004CB2 80                    3640 	.db 0x80
      004CB3 E2                    3641 	.db 0xe2
      004CB4 94                    3642 	.db 0x94
      004CB5 80                    3643 	.db 0x80
      004CB6 E2                    3644 	.db 0xe2
      004CB7 94                    3645 	.db 0x94
      004CB8 80                    3646 	.db 0x80
      004CB9 E2                    3647 	.db 0xe2
      004CBA 94                    3648 	.db 0x94
      004CBB 80                    3649 	.db 0x80
      004CBC E2                    3650 	.db 0xe2
      004CBD 94                    3651 	.db 0x94
      004CBE 80                    3652 	.db 0x80
      004CBF E2                    3653 	.db 0xe2
      004CC0 94                    3654 	.db 0x94
      004CC1 80                    3655 	.db 0x80
      004CC2 E2                    3656 	.db 0xe2
      004CC3 94                    3657 	.db 0x94
      004CC4 80                    3658 	.db 0x80
      004CC5 E2                    3659 	.db 0xe2
      004CC6 94                    3660 	.db 0x94
      004CC7 80                    3661 	.db 0x80
      004CC8 E2                    3662 	.db 0xe2
      004CC9 94                    3663 	.db 0x94
      004CCA 80                    3664 	.db 0x80
      004CCB E2                    3665 	.db 0xe2
      004CCC 94                    3666 	.db 0x94
      004CCD 80                    3667 	.db 0x80
      004CCE E2                    3668 	.db 0xe2
      004CCF 94                    3669 	.db 0x94
      004CD0 80                    3670 	.db 0x80
      004CD1 E2                    3671 	.db 0xe2
      004CD2 94                    3672 	.db 0x94
      004CD3 80                    3673 	.db 0x80
      004CD4 E2                    3674 	.db 0xe2
      004CD5 94                    3675 	.db 0x94
      004CD6 80                    3676 	.db 0x80
      004CD7 E2                    3677 	.db 0xe2
      004CD8 94                    3678 	.db 0x94
      004CD9 80                    3679 	.db 0x80
      004CDA E2                    3680 	.db 0xe2
      004CDB 94                    3681 	.db 0x94
      004CDC 80                    3682 	.db 0x80
      004CDD E2                    3683 	.db 0xe2
      004CDE 94                    3684 	.db 0x94
      004CDF 80                    3685 	.db 0x80
      004CE0 E2                    3686 	.db 0xe2
      004CE1 94                    3687 	.db 0x94
      004CE2 80                    3688 	.db 0x80
      004CE3 E2                    3689 	.db 0xe2
      004CE4 94                    3690 	.db 0x94
      004CE5 80                    3691 	.db 0x80
      004CE6 E2                    3692 	.db 0xe2
      004CE7 94                    3693 	.db 0x94
      004CE8 80                    3694 	.db 0x80
      004CE9 E2                    3695 	.db 0xe2
      004CEA 94                    3696 	.db 0x94
      004CEB 80                    3697 	.db 0x80
      004CEC E2                    3698 	.db 0xe2
      004CED 94                    3699 	.db 0x94
      004CEE 80                    3700 	.db 0x80
      004CEF E2                    3701 	.db 0xe2
      004CF0 94                    3702 	.db 0x94
      004CF1 80                    3703 	.db 0x80
      004CF2 E2                    3704 	.db 0xe2
      004CF3 94                    3705 	.db 0x94
      004CF4 80                    3706 	.db 0x80
      004CF5 E2                    3707 	.db 0xe2
      004CF6 94                    3708 	.db 0x94
      004CF7 80                    3709 	.db 0x80
      004CF8 E2                    3710 	.db 0xe2
      004CF9 94                    3711 	.db 0x94
      004CFA 80                    3712 	.db 0x80
      004CFB E2                    3713 	.db 0xe2
      004CFC 94                    3714 	.db 0x94
      004CFD 80                    3715 	.db 0x80
      004CFE E2                    3716 	.db 0xe2
      004CFF 94                    3717 	.db 0x94
      004D00 80                    3718 	.db 0x80
      004D01 E2                    3719 	.db 0xe2
      004D02 94                    3720 	.db 0x94
      004D03 80                    3721 	.db 0x80
      004D04 E2                    3722 	.db 0xe2
      004D05 94                    3723 	.db 0x94
      004D06 80                    3724 	.db 0x80
      004D07 E2                    3725 	.db 0xe2
      004D08 94                    3726 	.db 0x94
      004D09 80                    3727 	.db 0x80
      004D0A E2                    3728 	.db 0xe2
      004D0B 94                    3729 	.db 0x94
      004D0C 80                    3730 	.db 0x80
      004D0D E2                    3731 	.db 0xe2
      004D0E 94                    3732 	.db 0x94
      004D0F 80                    3733 	.db 0x80
      004D10 E2                    3734 	.db 0xe2
      004D11 94                    3735 	.db 0x94
      004D12 80                    3736 	.db 0x80
      004D13 E2                    3737 	.db 0xe2
      004D14 94                    3738 	.db 0x94
      004D15 80                    3739 	.db 0x80
      004D16 E2                    3740 	.db 0xe2
      004D17 94                    3741 	.db 0x94
      004D18 80                    3742 	.db 0x80
      004D19 E2                    3743 	.db 0xe2
      004D1A 94                    3744 	.db 0x94
      004D1B 80                    3745 	.db 0x80
      004D1C E2                    3746 	.db 0xe2
      004D1D 94                    3747 	.db 0x94
      004D1E 80                    3748 	.db 0x80
      004D1F E2                    3749 	.db 0xe2
      004D20 94                    3750 	.db 0x94
      004D21 80                    3751 	.db 0x80
      004D22 E2                    3752 	.db 0xe2
      004D23 94                    3753 	.db 0x94
      004D24 80                    3754 	.db 0x80
      004D25 E2                    3755 	.db 0xe2
      004D26 94                    3756 	.db 0x94
      004D27 80                    3757 	.db 0x80
      004D28 E2                    3758 	.db 0xe2
      004D29 94                    3759 	.db 0x94
      004D2A 80                    3760 	.db 0x80
      004D2B E2                    3761 	.db 0xe2
      004D2C 94                    3762 	.db 0x94
      004D2D 80                    3763 	.db 0x80
      004D2E E2                    3764 	.db 0xe2
      004D2F 94                    3765 	.db 0x94
      004D30 A4                    3766 	.db 0xa4
      004D31 0A                    3767 	.db 0x0a
      004D32 0D                    3768 	.db 0x0d
      004D33 00                    3769 	.db 0x00
                                   3770 	.area CSEG    (CODE)
                                   3771 	.area CONST   (CODE)
      004D34                       3772 ___str_6:
      004D34 E2                    3773 	.db 0xe2
      004D35 94                    3774 	.db 0x94
      004D36 82                    3775 	.db 0x82
      004D37 20 20 20 20 20 52 20  3776 	.ascii "     R      "
             20 20 20 20 20
      004D43 E2                    3777 	.db 0xe2
      004D44 94                    3778 	.db 0x94
      004D45 82                    3779 	.db 0x82
      004D46 20 52 65 61 64 20 66  3780 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004D72 E2                    3781 	.db 0xe2
      004D73 94                    3782 	.db 0x94
      004D74 82                    3783 	.db 0x82
      004D75 0A                    3784 	.db 0x0a
      004D76 0D                    3785 	.db 0x0d
      004D77 00                    3786 	.db 0x00
                                   3787 	.area CSEG    (CODE)
                                   3788 	.area CONST   (CODE)
      004D78                       3789 ___str_7:
      004D78 E2                    3790 	.db 0xe2
      004D79 94                    3791 	.db 0x94
      004D7A 82                    3792 	.db 0x82
      004D7B 20 20 20 20 20 57 20  3793 	.ascii "     W      "
             20 20 20 20 20
      004D87 E2                    3794 	.db 0xe2
      004D88 94                    3795 	.db 0x94
      004D89 82                    3796 	.db 0x82
      004D8A 20 57 72 69 74 65 20  3797 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004DB6 E2                    3798 	.db 0xe2
      004DB7 94                    3799 	.db 0x94
      004DB8 82                    3800 	.db 0x82
      004DB9 0A                    3801 	.db 0x0a
      004DBA 0D                    3802 	.db 0x0d
      004DBB 00                    3803 	.db 0x00
                                   3804 	.area CSEG    (CODE)
                                   3805 	.area CONST   (CODE)
      004DBC                       3806 ___str_8:
      004DBC E2                    3807 	.db 0xe2
      004DBD 94                    3808 	.db 0x94
      004DBE 82                    3809 	.db 0x82
      004DBF 20 20 20 20 20 48 20  3810 	.ascii "     H      "
             20 20 20 20 20
      004DCB E2                    3811 	.db 0xe2
      004DCC 94                    3812 	.db 0x94
      004DCD 82                    3813 	.db 0x82
      004DCE 20 44 69 73 70 6C 61  3814 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004DFA E2                    3815 	.db 0xe2
      004DFB 94                    3816 	.db 0x94
      004DFC 82                    3817 	.db 0x82
      004DFD 0A                    3818 	.db 0x0a
      004DFE 0D                    3819 	.db 0x0d
      004DFF 00                    3820 	.db 0x00
                                   3821 	.area CSEG    (CODE)
                                   3822 	.area CONST   (CODE)
      004E00                       3823 ___str_9:
      004E00 E2                    3824 	.db 0xe2
      004E01 94                    3825 	.db 0x94
      004E02 82                    3826 	.db 0x82
      004E03 20 20 20 20 20 58 20  3827 	.ascii "     X      "
             20 20 20 20 20
      004E0F E2                    3828 	.db 0xe2
      004E10 94                    3829 	.db 0x94
      004E11 82                    3830 	.db 0x82
      004E12 20 52 65 73 65 74 20  3831 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004E3E E2                    3832 	.db 0xe2
      004E3F 94                    3833 	.db 0x94
      004E40 82                    3834 	.db 0x82
      004E41 0A                    3835 	.db 0x0a
      004E42 0D                    3836 	.db 0x0d
      004E43 00                    3837 	.db 0x00
                                   3838 	.area CSEG    (CODE)
                                   3839 	.area CONST   (CODE)
      004E44                       3840 ___str_10:
      004E44 E2                    3841 	.db 0xe2
      004E45 94                    3842 	.db 0x94
      004E46 82                    3843 	.db 0x82
      004E47 20 20 20 20 20 3F 20  3844 	.ascii "     ?      "
             20 20 20 20 20
      004E53 E2                    3845 	.db 0xe2
      004E54 94                    3846 	.db 0x94
      004E55 82                    3847 	.db 0x82
      004E56 20 44 69 73 70 6C 61  3848 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004E82 E2                    3849 	.db 0xe2
      004E83 94                    3850 	.db 0x94
      004E84 82                    3851 	.db 0x82
      004E85 0A                    3852 	.db 0x0a
      004E86 0D                    3853 	.db 0x0d
      004E87 00                    3854 	.db 0x00
                                   3855 	.area CSEG    (CODE)
                                   3856 	.area CONST   (CODE)
      004E88                       3857 ___str_11:
      004E88 E2                    3858 	.db 0xe2
      004E89 94                    3859 	.db 0x94
      004E8A 82                    3860 	.db 0x82
      004E8B 20 20 20 20 20 51 20  3861 	.ascii "     Q      "
             20 20 20 20 20
      004E97 E2                    3862 	.db 0xe2
      004E98 94                    3863 	.db 0x94
      004E99 82                    3864 	.db 0x82
      004E9A 20 51 75 69 74 20 70  3865 	.ascii " Quit program                               "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004EC6 E2                    3866 	.db 0xe2
      004EC7 94                    3867 	.db 0x94
      004EC8 82                    3868 	.db 0x82
      004EC9 0A                    3869 	.db 0x0a
      004ECA 0D                    3870 	.db 0x0d
      004ECB 00                    3871 	.db 0x00
                                   3872 	.area CSEG    (CODE)
                                   3873 	.area CONST   (CODE)
      004ECC                       3874 ___str_12:
      004ECC E2                    3875 	.db 0xe2
      004ECD 94                    3876 	.db 0x94
      004ECE 94                    3877 	.db 0x94
      004ECF E2                    3878 	.db 0xe2
      004ED0 94                    3879 	.db 0x94
      004ED1 80                    3880 	.db 0x80
      004ED2 E2                    3881 	.db 0xe2
      004ED3 94                    3882 	.db 0x94
      004ED4 80                    3883 	.db 0x80
      004ED5 E2                    3884 	.db 0xe2
      004ED6 94                    3885 	.db 0x94
      004ED7 80                    3886 	.db 0x80
      004ED8 E2                    3887 	.db 0xe2
      004ED9 94                    3888 	.db 0x94
      004EDA 80                    3889 	.db 0x80
      004EDB E2                    3890 	.db 0xe2
      004EDC 94                    3891 	.db 0x94
      004EDD 80                    3892 	.db 0x80
      004EDE E2                    3893 	.db 0xe2
      004EDF 94                    3894 	.db 0x94
      004EE0 80                    3895 	.db 0x80
      004EE1 E2                    3896 	.db 0xe2
      004EE2 94                    3897 	.db 0x94
      004EE3 80                    3898 	.db 0x80
      004EE4 E2                    3899 	.db 0xe2
      004EE5 94                    3900 	.db 0x94
      004EE6 80                    3901 	.db 0x80
      004EE7 E2                    3902 	.db 0xe2
      004EE8 94                    3903 	.db 0x94
      004EE9 80                    3904 	.db 0x80
      004EEA E2                    3905 	.db 0xe2
      004EEB 94                    3906 	.db 0x94
      004EEC 80                    3907 	.db 0x80
      004EED E2                    3908 	.db 0xe2
      004EEE 94                    3909 	.db 0x94
      004EEF 80                    3910 	.db 0x80
      004EF0 E2                    3911 	.db 0xe2
      004EF1 94                    3912 	.db 0x94
      004EF2 80                    3913 	.db 0x80
      004EF3 E2                    3914 	.db 0xe2
      004EF4 94                    3915 	.db 0x94
      004EF5 B4                    3916 	.db 0xb4
      004EF6 E2                    3917 	.db 0xe2
      004EF7 94                    3918 	.db 0x94
      004EF8 80                    3919 	.db 0x80
      004EF9 E2                    3920 	.db 0xe2
      004EFA 94                    3921 	.db 0x94
      004EFB 80                    3922 	.db 0x80
      004EFC E2                    3923 	.db 0xe2
      004EFD 94                    3924 	.db 0x94
      004EFE 80                    3925 	.db 0x80
      004EFF E2                    3926 	.db 0xe2
      004F00 94                    3927 	.db 0x94
      004F01 80                    3928 	.db 0x80
      004F02 E2                    3929 	.db 0xe2
      004F03 94                    3930 	.db 0x94
      004F04 80                    3931 	.db 0x80
      004F05 E2                    3932 	.db 0xe2
      004F06 94                    3933 	.db 0x94
      004F07 80                    3934 	.db 0x80
      004F08 E2                    3935 	.db 0xe2
      004F09 94                    3936 	.db 0x94
      004F0A 80                    3937 	.db 0x80
      004F0B E2                    3938 	.db 0xe2
      004F0C 94                    3939 	.db 0x94
      004F0D 80                    3940 	.db 0x80
      004F0E E2                    3941 	.db 0xe2
      004F0F 94                    3942 	.db 0x94
      004F10 80                    3943 	.db 0x80
      004F11 E2                    3944 	.db 0xe2
      004F12 94                    3945 	.db 0x94
      004F13 80                    3946 	.db 0x80
      004F14 E2                    3947 	.db 0xe2
      004F15 94                    3948 	.db 0x94
      004F16 80                    3949 	.db 0x80
      004F17 E2                    3950 	.db 0xe2
      004F18 94                    3951 	.db 0x94
      004F19 80                    3952 	.db 0x80
      004F1A E2                    3953 	.db 0xe2
      004F1B 94                    3954 	.db 0x94
      004F1C 80                    3955 	.db 0x80
      004F1D E2                    3956 	.db 0xe2
      004F1E 94                    3957 	.db 0x94
      004F1F 80                    3958 	.db 0x80
      004F20 E2                    3959 	.db 0xe2
      004F21 94                    3960 	.db 0x94
      004F22 80                    3961 	.db 0x80
      004F23 E2                    3962 	.db 0xe2
      004F24 94                    3963 	.db 0x94
      004F25 80                    3964 	.db 0x80
      004F26 E2                    3965 	.db 0xe2
      004F27 94                    3966 	.db 0x94
      004F28 80                    3967 	.db 0x80
      004F29 E2                    3968 	.db 0xe2
      004F2A 94                    3969 	.db 0x94
      004F2B 80                    3970 	.db 0x80
      004F2C E2                    3971 	.db 0xe2
      004F2D 94                    3972 	.db 0x94
      004F2E 80                    3973 	.db 0x80
      004F2F E2                    3974 	.db 0xe2
      004F30 94                    3975 	.db 0x94
      004F31 80                    3976 	.db 0x80
      004F32 E2                    3977 	.db 0xe2
      004F33 94                    3978 	.db 0x94
      004F34 80                    3979 	.db 0x80
      004F35 E2                    3980 	.db 0xe2
      004F36 94                    3981 	.db 0x94
      004F37 80                    3982 	.db 0x80
      004F38 E2                    3983 	.db 0xe2
      004F39 94                    3984 	.db 0x94
      004F3A 80                    3985 	.db 0x80
      004F3B E2                    3986 	.db 0xe2
      004F3C 94                    3987 	.db 0x94
      004F3D 80                    3988 	.db 0x80
      004F3E E2                    3989 	.db 0xe2
      004F3F 94                    3990 	.db 0x94
      004F40 80                    3991 	.db 0x80
      004F41 E2                    3992 	.db 0xe2
      004F42 94                    3993 	.db 0x94
      004F43 80                    3994 	.db 0x80
      004F44 E2                    3995 	.db 0xe2
      004F45 94                    3996 	.db 0x94
      004F46 80                    3997 	.db 0x80
      004F47 E2                    3998 	.db 0xe2
      004F48 94                    3999 	.db 0x94
      004F49 80                    4000 	.db 0x80
      004F4A E2                    4001 	.db 0xe2
      004F4B 94                    4002 	.db 0x94
      004F4C 80                    4003 	.db 0x80
      004F4D E2                    4004 	.db 0xe2
      004F4E 94                    4005 	.db 0x94
      004F4F 80                    4006 	.db 0x80
      004F50 E2                    4007 	.db 0xe2
      004F51 94                    4008 	.db 0x94
      004F52 80                    4009 	.db 0x80
      004F53 E2                    4010 	.db 0xe2
      004F54 94                    4011 	.db 0x94
      004F55 80                    4012 	.db 0x80
      004F56 E2                    4013 	.db 0xe2
      004F57 94                    4014 	.db 0x94
      004F58 80                    4015 	.db 0x80
      004F59 E2                    4016 	.db 0xe2
      004F5A 94                    4017 	.db 0x94
      004F5B 80                    4018 	.db 0x80
      004F5C E2                    4019 	.db 0xe2
      004F5D 94                    4020 	.db 0x94
      004F5E 80                    4021 	.db 0x80
      004F5F E2                    4022 	.db 0xe2
      004F60 94                    4023 	.db 0x94
      004F61 80                    4024 	.db 0x80
      004F62 E2                    4025 	.db 0xe2
      004F63 94                    4026 	.db 0x94
      004F64 80                    4027 	.db 0x80
      004F65 E2                    4028 	.db 0xe2
      004F66 94                    4029 	.db 0x94
      004F67 80                    4030 	.db 0x80
      004F68 E2                    4031 	.db 0xe2
      004F69 94                    4032 	.db 0x94
      004F6A 80                    4033 	.db 0x80
      004F6B E2                    4034 	.db 0xe2
      004F6C 94                    4035 	.db 0x94
      004F6D 80                    4036 	.db 0x80
      004F6E E2                    4037 	.db 0xe2
      004F6F 94                    4038 	.db 0x94
      004F70 80                    4039 	.db 0x80
      004F71 E2                    4040 	.db 0xe2
      004F72 94                    4041 	.db 0x94
      004F73 80                    4042 	.db 0x80
      004F74 E2                    4043 	.db 0xe2
      004F75 94                    4044 	.db 0x94
      004F76 80                    4045 	.db 0x80
      004F77 E2                    4046 	.db 0xe2
      004F78 94                    4047 	.db 0x94
      004F79 80                    4048 	.db 0x80
      004F7A E2                    4049 	.db 0xe2
      004F7B 94                    4050 	.db 0x94
      004F7C 98                    4051 	.db 0x98
      004F7D 0A                    4052 	.db 0x0a
      004F7E 0D                    4053 	.db 0x0d
      004F7F 00                    4054 	.db 0x00
                                   4055 	.area CSEG    (CODE)
                                   4056 	.area CONST   (CODE)
      004F80                       4057 ___str_13:
      004F80 7C 20 24 20 25 63     4058 	.ascii "| $ %c"
      004F86 0A                    4059 	.db 0x0a
      004F87 0D                    4060 	.db 0x0d
      004F88 00                    4061 	.db 0x00
                                   4062 	.area CSEG    (CODE)
                                   4063 	.area CONST   (CODE)
      004F89                       4064 ___str_14:
      004F89 0A                    4065 	.db 0x0a
      004F8A 0D                    4066 	.db 0x0d
      004F8B 00                    4067 	.db 0x00
                                   4068 	.area CSEG    (CODE)
                                   4069 	.area CONST   (CODE)
      004F8C                       4070 ___str_15:
      004F8C 0A                    4071 	.db 0x0a
      004F8D E2                    4072 	.db 0xe2
      004F8E 94                    4073 	.db 0x94
      004F8F 8C                    4074 	.db 0x8c
      004F90 E2                    4075 	.db 0xe2
      004F91 94                    4076 	.db 0x94
      004F92 80                    4077 	.db 0x80
      004F93 E2                    4078 	.db 0xe2
      004F94 94                    4079 	.db 0x94
      004F95 80                    4080 	.db 0x80
      004F96 E2                    4081 	.db 0xe2
      004F97 94                    4082 	.db 0x94
      004F98 80                    4083 	.db 0x80
      004F99 E2                    4084 	.db 0xe2
      004F9A 94                    4085 	.db 0x94
      004F9B 80                    4086 	.db 0x80
      004F9C E2                    4087 	.db 0xe2
      004F9D 94                    4088 	.db 0x94
      004F9E 80                    4089 	.db 0x80
      004F9F E2                    4090 	.db 0xe2
      004FA0 94                    4091 	.db 0x94
      004FA1 80                    4092 	.db 0x80
      004FA2 E2                    4093 	.db 0xe2
      004FA3 94                    4094 	.db 0x94
      004FA4 80                    4095 	.db 0x80
      004FA5 E2                    4096 	.db 0xe2
      004FA6 94                    4097 	.db 0x94
      004FA7 80                    4098 	.db 0x80
      004FA8 E2                    4099 	.db 0xe2
      004FA9 94                    4100 	.db 0x94
      004FAA 80                    4101 	.db 0x80
      004FAB E2                    4102 	.db 0xe2
      004FAC 94                    4103 	.db 0x94
      004FAD 80                    4104 	.db 0x80
      004FAE E2                    4105 	.db 0xe2
      004FAF 94                    4106 	.db 0x94
      004FB0 80                    4107 	.db 0x80
      004FB1 E2                    4108 	.db 0xe2
      004FB2 94                    4109 	.db 0x94
      004FB3 80                    4110 	.db 0x80
      004FB4 E2                    4111 	.db 0xe2
      004FB5 94                    4112 	.db 0x94
      004FB6 80                    4113 	.db 0x80
      004FB7 E2                    4114 	.db 0xe2
      004FB8 94                    4115 	.db 0x94
      004FB9 80                    4116 	.db 0x80
      004FBA E2                    4117 	.db 0xe2
      004FBB 94                    4118 	.db 0x94
      004FBC 80                    4119 	.db 0x80
      004FBD 20 57 52 49 54 45 20  4120 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      004FCE E2                    4121 	.db 0xe2
      004FCF 94                    4122 	.db 0x94
      004FD0 80                    4123 	.db 0x80
      004FD1 E2                    4124 	.db 0xe2
      004FD2 94                    4125 	.db 0x94
      004FD3 80                    4126 	.db 0x80
      004FD4 E2                    4127 	.db 0xe2
      004FD5 94                    4128 	.db 0x94
      004FD6 80                    4129 	.db 0x80
      004FD7 E2                    4130 	.db 0xe2
      004FD8 94                    4131 	.db 0x94
      004FD9 80                    4132 	.db 0x80
      004FDA E2                    4133 	.db 0xe2
      004FDB 94                    4134 	.db 0x94
      004FDC 80                    4135 	.db 0x80
      004FDD E2                    4136 	.db 0xe2
      004FDE 94                    4137 	.db 0x94
      004FDF 80                    4138 	.db 0x80
      004FE0 E2                    4139 	.db 0xe2
      004FE1 94                    4140 	.db 0x94
      004FE2 80                    4141 	.db 0x80
      004FE3 E2                    4142 	.db 0xe2
      004FE4 94                    4143 	.db 0x94
      004FE5 80                    4144 	.db 0x80
      004FE6 E2                    4145 	.db 0xe2
      004FE7 94                    4146 	.db 0x94
      004FE8 80                    4147 	.db 0x80
      004FE9 E2                    4148 	.db 0xe2
      004FEA 94                    4149 	.db 0x94
      004FEB 80                    4150 	.db 0x80
      004FEC E2                    4151 	.db 0xe2
      004FED 94                    4152 	.db 0x94
      004FEE 80                    4153 	.db 0x80
      004FEF E2                    4154 	.db 0xe2
      004FF0 94                    4155 	.db 0x94
      004FF1 80                    4156 	.db 0x80
      004FF2 E2                    4157 	.db 0xe2
      004FF3 94                    4158 	.db 0x94
      004FF4 80                    4159 	.db 0x80
      004FF5 E2                    4160 	.db 0xe2
      004FF6 94                    4161 	.db 0x94
      004FF7 80                    4162 	.db 0x80
      004FF8 E2                    4163 	.db 0xe2
      004FF9 94                    4164 	.db 0x94
      004FFA 90                    4165 	.db 0x90
      004FFB 0A                    4166 	.db 0x0a
      004FFC 0D                    4167 	.db 0x0d
      004FFD 00                    4168 	.db 0x00
                                   4169 	.area CSEG    (CODE)
                                   4170 	.area CONST   (CODE)
      004FFE                       4171 ___str_16:
      004FFE 0A                    4172 	.db 0x0a
      004FFF E2                    4173 	.db 0xe2
      005000 94                    4174 	.db 0x94
      005001 8C                    4175 	.db 0x8c
      005002 E2                    4176 	.db 0xe2
      005003 94                    4177 	.db 0x94
      005004 80                    4178 	.db 0x80
      005005 E2                    4179 	.db 0xe2
      005006 94                    4180 	.db 0x94
      005007 80                    4181 	.db 0x80
      005008 E2                    4182 	.db 0xe2
      005009 94                    4183 	.db 0x94
      00500A 80                    4184 	.db 0x80
      00500B E2                    4185 	.db 0xe2
      00500C 94                    4186 	.db 0x94
      00500D 80                    4187 	.db 0x80
      00500E E2                    4188 	.db 0xe2
      00500F 94                    4189 	.db 0x94
      005010 80                    4190 	.db 0x80
      005011 E2                    4191 	.db 0xe2
      005012 94                    4192 	.db 0x94
      005013 80                    4193 	.db 0x80
      005014 E2                    4194 	.db 0xe2
      005015 94                    4195 	.db 0x94
      005016 80                    4196 	.db 0x80
      005017 E2                    4197 	.db 0xe2
      005018 94                    4198 	.db 0x94
      005019 80                    4199 	.db 0x80
      00501A E2                    4200 	.db 0xe2
      00501B 94                    4201 	.db 0x94
      00501C 80                    4202 	.db 0x80
      00501D E2                    4203 	.db 0xe2
      00501E 94                    4204 	.db 0x94
      00501F 80                    4205 	.db 0x80
      005020 E2                    4206 	.db 0xe2
      005021 94                    4207 	.db 0x94
      005022 80                    4208 	.db 0x80
      005023 E2                    4209 	.db 0xe2
      005024 94                    4210 	.db 0x94
      005025 80                    4211 	.db 0x80
      005026 E2                    4212 	.db 0xe2
      005027 94                    4213 	.db 0x94
      005028 80                    4214 	.db 0x80
      005029 E2                    4215 	.db 0xe2
      00502A 94                    4216 	.db 0x94
      00502B 80                    4217 	.db 0x80
      00502C E2                    4218 	.db 0xe2
      00502D 94                    4219 	.db 0x94
      00502E 80                    4220 	.db 0x80
      00502F 20 52 45 41 44 20 4F  4221 	.ascii " READ OPERATION "
             50 45 52 41 54 49 4F
             4E 20
      00503F E2                    4222 	.db 0xe2
      005040 94                    4223 	.db 0x94
      005041 80                    4224 	.db 0x80
      005042 E2                    4225 	.db 0xe2
      005043 94                    4226 	.db 0x94
      005044 80                    4227 	.db 0x80
      005045 E2                    4228 	.db 0xe2
      005046 94                    4229 	.db 0x94
      005047 80                    4230 	.db 0x80
      005048 E2                    4231 	.db 0xe2
      005049 94                    4232 	.db 0x94
      00504A 80                    4233 	.db 0x80
      00504B E2                    4234 	.db 0xe2
      00504C 94                    4235 	.db 0x94
      00504D 80                    4236 	.db 0x80
      00504E E2                    4237 	.db 0xe2
      00504F 94                    4238 	.db 0x94
      005050 80                    4239 	.db 0x80
      005051 E2                    4240 	.db 0xe2
      005052 94                    4241 	.db 0x94
      005053 80                    4242 	.db 0x80
      005054 E2                    4243 	.db 0xe2
      005055 94                    4244 	.db 0x94
      005056 80                    4245 	.db 0x80
      005057 E2                    4246 	.db 0xe2
      005058 94                    4247 	.db 0x94
      005059 80                    4248 	.db 0x80
      00505A E2                    4249 	.db 0xe2
      00505B 94                    4250 	.db 0x94
      00505C 80                    4251 	.db 0x80
      00505D E2                    4252 	.db 0xe2
      00505E 94                    4253 	.db 0x94
      00505F 80                    4254 	.db 0x80
      005060 E2                    4255 	.db 0xe2
      005061 94                    4256 	.db 0x94
      005062 80                    4257 	.db 0x80
      005063 E2                    4258 	.db 0xe2
      005064 94                    4259 	.db 0x94
      005065 80                    4260 	.db 0x80
      005066 E2                    4261 	.db 0xe2
      005067 94                    4262 	.db 0x94
      005068 80                    4263 	.db 0x80
      005069 E2                    4264 	.db 0xe2
      00506A 94                    4265 	.db 0x94
      00506B 80                    4266 	.db 0x80
      00506C E2                    4267 	.db 0xe2
      00506D 94                    4268 	.db 0x94
      00506E 90                    4269 	.db 0x90
      00506F 0A                    4270 	.db 0x0a
      005070 0D                    4271 	.db 0x0d
      005071 00                    4272 	.db 0x00
                                   4273 	.area CSEG    (CODE)
                                   4274 	.area CONST   (CODE)
      005072                       4275 ___str_17:
      005072 7C 20 52 65 61 64 69  4276 	.ascii "| Reading from Address 0x%03X           |"
             6E 67 20 66 72 6F 6D
             20 41 64 64 72 65 73
             73 20 30 78 25 30 33
             58 20 20 20 20 20 20
             20 20 20 20 20 7C
      00509B 0A                    4277 	.db 0x0a
      00509C 0D                    4278 	.db 0x0d
      00509D 00                    4279 	.db 0x00
                                   4280 	.area CSEG    (CODE)
                                   4281 	.area CONST   (CODE)
      00509E                       4282 ___str_18:
      00509E 0A                    4283 	.db 0x0a
      00509F E2                    4284 	.db 0xe2
      0050A0 94                    4285 	.db 0x94
      0050A1 8C                    4286 	.db 0x8c
      0050A2 E2                    4287 	.db 0xe2
      0050A3 94                    4288 	.db 0x94
      0050A4 80                    4289 	.db 0x80
      0050A5 E2                    4290 	.db 0xe2
      0050A6 94                    4291 	.db 0x94
      0050A7 80                    4292 	.db 0x80
      0050A8 E2                    4293 	.db 0xe2
      0050A9 94                    4294 	.db 0x94
      0050AA 80                    4295 	.db 0x80
      0050AB E2                    4296 	.db 0xe2
      0050AC 94                    4297 	.db 0x94
      0050AD 80                    4298 	.db 0x80
      0050AE E2                    4299 	.db 0xe2
      0050AF 94                    4300 	.db 0x94
      0050B0 80                    4301 	.db 0x80
      0050B1 E2                    4302 	.db 0xe2
      0050B2 94                    4303 	.db 0x94
      0050B3 80                    4304 	.db 0x80
      0050B4 E2                    4305 	.db 0xe2
      0050B5 94                    4306 	.db 0x94
      0050B6 80                    4307 	.db 0x80
      0050B7 E2                    4308 	.db 0xe2
      0050B8 94                    4309 	.db 0x94
      0050B9 80                    4310 	.db 0x80
      0050BA E2                    4311 	.db 0xe2
      0050BB 94                    4312 	.db 0x94
      0050BC 80                    4313 	.db 0x80
      0050BD E2                    4314 	.db 0xe2
      0050BE 94                    4315 	.db 0x94
      0050BF 80                    4316 	.db 0x80
      0050C0 E2                    4317 	.db 0xe2
      0050C1 94                    4318 	.db 0x94
      0050C2 80                    4319 	.db 0x80
      0050C3 E2                    4320 	.db 0xe2
      0050C4 94                    4321 	.db 0x94
      0050C5 80                    4322 	.db 0x80
      0050C6 E2                    4323 	.db 0xe2
      0050C7 94                    4324 	.db 0x94
      0050C8 80                    4325 	.db 0x80
      0050C9 E2                    4326 	.db 0xe2
      0050CA 94                    4327 	.db 0x94
      0050CB 80                    4328 	.db 0x80
      0050CC E2                    4329 	.db 0xe2
      0050CD 94                    4330 	.db 0x94
      0050CE 80                    4331 	.db 0x80
      0050CF 20 52 45 53 45 54 20  4332 	.ascii " RESET OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      0050E0 E2                    4333 	.db 0xe2
      0050E1 94                    4334 	.db 0x94
      0050E2 80                    4335 	.db 0x80
      0050E3 E2                    4336 	.db 0xe2
      0050E4 94                    4337 	.db 0x94
      0050E5 80                    4338 	.db 0x80
      0050E6 E2                    4339 	.db 0xe2
      0050E7 94                    4340 	.db 0x94
      0050E8 80                    4341 	.db 0x80
      0050E9 E2                    4342 	.db 0xe2
      0050EA 94                    4343 	.db 0x94
      0050EB 80                    4344 	.db 0x80
      0050EC E2                    4345 	.db 0xe2
      0050ED 94                    4346 	.db 0x94
      0050EE 80                    4347 	.db 0x80
      0050EF E2                    4348 	.db 0xe2
      0050F0 94                    4349 	.db 0x94
      0050F1 80                    4350 	.db 0x80
      0050F2 E2                    4351 	.db 0xe2
      0050F3 94                    4352 	.db 0x94
      0050F4 80                    4353 	.db 0x80
      0050F5 E2                    4354 	.db 0xe2
      0050F6 94                    4355 	.db 0x94
      0050F7 80                    4356 	.db 0x80
      0050F8 E2                    4357 	.db 0xe2
      0050F9 94                    4358 	.db 0x94
      0050FA 80                    4359 	.db 0x80
      0050FB E2                    4360 	.db 0xe2
      0050FC 94                    4361 	.db 0x94
      0050FD 80                    4362 	.db 0x80
      0050FE E2                    4363 	.db 0xe2
      0050FF 94                    4364 	.db 0x94
      005100 80                    4365 	.db 0x80
      005101 E2                    4366 	.db 0xe2
      005102 94                    4367 	.db 0x94
      005103 90                    4368 	.db 0x90
      005104 0A                    4369 	.db 0x0a
      005105 0D                    4370 	.db 0x0d
      005106 00                    4371 	.db 0x00
                                   4372 	.area CSEG    (CODE)
                                   4373 	.area CONST   (CODE)
      005107                       4374 ___str_19:
      005107 0A                    4375 	.db 0x0a
      005108 E2                    4376 	.db 0xe2
      005109 94                    4377 	.db 0x94
      00510A 8C                    4378 	.db 0x8c
      00510B E2                    4379 	.db 0xe2
      00510C 94                    4380 	.db 0x94
      00510D 80                    4381 	.db 0x80
      00510E E2                    4382 	.db 0xe2
      00510F 94                    4383 	.db 0x94
      005110 80                    4384 	.db 0x80
      005111 E2                    4385 	.db 0xe2
      005112 94                    4386 	.db 0x94
      005113 80                    4387 	.db 0x80
      005114 E2                    4388 	.db 0xe2
      005115 94                    4389 	.db 0x94
      005116 80                    4390 	.db 0x80
      005117 E2                    4391 	.db 0xe2
      005118 94                    4392 	.db 0x94
      005119 80                    4393 	.db 0x80
      00511A E2                    4394 	.db 0xe2
      00511B 94                    4395 	.db 0x94
      00511C 80                    4396 	.db 0x80
      00511D E2                    4397 	.db 0xe2
      00511E 94                    4398 	.db 0x94
      00511F 80                    4399 	.db 0x80
      005120 E2                    4400 	.db 0xe2
      005121 94                    4401 	.db 0x94
      005122 80                    4402 	.db 0x80
      005123 E2                    4403 	.db 0xe2
      005124 94                    4404 	.db 0x94
      005125 80                    4405 	.db 0x80
      005126 E2                    4406 	.db 0xe2
      005127 94                    4407 	.db 0x94
      005128 80                    4408 	.db 0x80
      005129 E2                    4409 	.db 0xe2
      00512A 94                    4410 	.db 0x94
      00512B 80                    4411 	.db 0x80
      00512C E2                    4412 	.db 0xe2
      00512D 94                    4413 	.db 0x94
      00512E 80                    4414 	.db 0x80
      00512F E2                    4415 	.db 0xe2
      005130 94                    4416 	.db 0x94
      005131 80                    4417 	.db 0x80
      005132 20 48 45 58 20 44 55  4418 	.ascii " HEX DUMP OPERATION "
             4D 50 20 4F 50 45 52
             41 54 49 4F 4E 20
      005146 E2                    4419 	.db 0xe2
      005147 94                    4420 	.db 0x94
      005148 80                    4421 	.db 0x80
      005149 E2                    4422 	.db 0xe2
      00514A 94                    4423 	.db 0x94
      00514B 80                    4424 	.db 0x80
      00514C E2                    4425 	.db 0xe2
      00514D 94                    4426 	.db 0x94
      00514E 80                    4427 	.db 0x80
      00514F E2                    4428 	.db 0xe2
      005150 94                    4429 	.db 0x94
      005151 80                    4430 	.db 0x80
      005152 E2                    4431 	.db 0xe2
      005153 94                    4432 	.db 0x94
      005154 80                    4433 	.db 0x80
      005155 E2                    4434 	.db 0xe2
      005156 94                    4435 	.db 0x94
      005157 80                    4436 	.db 0x80
      005158 E2                    4437 	.db 0xe2
      005159 94                    4438 	.db 0x94
      00515A 80                    4439 	.db 0x80
      00515B E2                    4440 	.db 0xe2
      00515C 94                    4441 	.db 0x94
      00515D 80                    4442 	.db 0x80
      00515E E2                    4443 	.db 0xe2
      00515F 94                    4444 	.db 0x94
      005160 80                    4445 	.db 0x80
      005161 E2                    4446 	.db 0xe2
      005162 94                    4447 	.db 0x94
      005163 80                    4448 	.db 0x80
      005164 E2                    4449 	.db 0xe2
      005165 94                    4450 	.db 0x94
      005166 80                    4451 	.db 0x80
      005167 E2                    4452 	.db 0xe2
      005168 94                    4453 	.db 0x94
      005169 80                    4454 	.db 0x80
      00516A E2                    4455 	.db 0xe2
      00516B 94                    4456 	.db 0x94
      00516C 80                    4457 	.db 0x80
      00516D E2                    4458 	.db 0xe2
      00516E 94                    4459 	.db 0x94
      00516F 80                    4460 	.db 0x80
      005170 E2                    4461 	.db 0xe2
      005171 94                    4462 	.db 0x94
      005172 80                    4463 	.db 0x80
      005173 E2                    4464 	.db 0xe2
      005174 94                    4465 	.db 0x94
      005175 90                    4466 	.db 0x90
      005176 0A                    4467 	.db 0x0a
      005177 0D                    4468 	.db 0x0d
      005178 00                    4469 	.db 0x00
                                   4470 	.area CSEG    (CODE)
                                   4471 	.area CONST   (CODE)
      005179                       4472 ___str_20:
      005179 49 4E 56 41 4C 49 44  4473 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      005186 0A                    4474 	.db 0x0a
      005187 0D                    4475 	.db 0x0d
      005188 00                    4476 	.db 0x00
                                   4477 	.area CSEG    (CODE)
                                   4478 	.area CONST   (CODE)
      005189                       4479 ___str_21:
      005189 E2                    4480 	.db 0xe2
      00518A 94                    4481 	.db 0x94
      00518B 82                    4482 	.db 0x82
      00518C 20 45 6E 74 65 72 20  4483 	.ascii " Enter address (hex, up to 3 characters): "
             61 64 64 72 65 73 73
             20 28 68 65 78 2C 20
             75 70 20 74 6F 20 33
             20 63 68 61 72 61 63
             74 65 72 73 29 3A 20
      0051B6 0A                    4484 	.db 0x0a
      0051B7 0D                    4485 	.db 0x0d
      0051B8 7C                    4486 	.ascii "|"
      0051B9 00                    4487 	.db 0x00
                                   4488 	.area CSEG    (CODE)
                                   4489 	.area CONST   (CODE)
      0051BA                       4490 ___str_22:
      0051BA 7C 20 24 20           4491 	.ascii "| $ "
      0051BE 00                    4492 	.db 0x00
                                   4493 	.area CSEG    (CODE)
                                   4494 	.area CONST   (CODE)
      0051BF                       4495 ___str_23:
      0051BF 0A                    4496 	.db 0x0a
      0051C0 0D                    4497 	.db 0x0d
      0051C1 E2                    4498 	.db 0xe2
      0051C2 94                    4499 	.db 0x94
      0051C3 82                    4500 	.db 0x82
      0051C4 20 45 6E 74 65 72 65  4501 	.ascii " Entered address: 0x%03X"
             64 20 61 64 64 72 65
             73 73 3A 20 30 78 25
             30 33 58
      0051DC 0A                    4502 	.db 0x0a
      0051DD 0D                    4503 	.db 0x0d
      0051DE 00                    4504 	.db 0x00
                                   4505 	.area CSEG    (CODE)
                                   4506 	.area CONST   (CODE)
      0051DF                       4507 ___str_24:
      0051DF E2                    4508 	.db 0xe2
      0051E0 95                    4509 	.db 0x95
      0051E1 94                    4510 	.db 0x94
      0051E2 E2                    4511 	.db 0xe2
      0051E3 95                    4512 	.db 0x95
      0051E4 90                    4513 	.db 0x90
      0051E5 E2                    4514 	.db 0xe2
      0051E6 95                    4515 	.db 0x95
      0051E7 90                    4516 	.db 0x90
      0051E8 E2                    4517 	.db 0xe2
      0051E9 95                    4518 	.db 0x95
      0051EA 90                    4519 	.db 0x90
      0051EB E2                    4520 	.db 0xe2
      0051EC 95                    4521 	.db 0x95
      0051ED 90                    4522 	.db 0x90
      0051EE E2                    4523 	.db 0xe2
      0051EF 95                    4524 	.db 0x95
      0051F0 90                    4525 	.db 0x90
      0051F1 E2                    4526 	.db 0xe2
      0051F2 95                    4527 	.db 0x95
      0051F3 90                    4528 	.db 0x90
      0051F4 E2                    4529 	.db 0xe2
      0051F5 95                    4530 	.db 0x95
      0051F6 90                    4531 	.db 0x90
      0051F7 E2                    4532 	.db 0xe2
      0051F8 95                    4533 	.db 0x95
      0051F9 90                    4534 	.db 0x90
      0051FA E2                    4535 	.db 0xe2
      0051FB 95                    4536 	.db 0x95
      0051FC 90                    4537 	.db 0x90
      0051FD E2                    4538 	.db 0xe2
      0051FE 95                    4539 	.db 0x95
      0051FF 90                    4540 	.db 0x90
      005200 E2                    4541 	.db 0xe2
      005201 95                    4542 	.db 0x95
      005202 90                    4543 	.db 0x90
      005203 E2                    4544 	.db 0xe2
      005204 95                    4545 	.db 0x95
      005205 90                    4546 	.db 0x90
      005206 E2                    4547 	.db 0xe2
      005207 95                    4548 	.db 0x95
      005208 90                    4549 	.db 0x90
      005209 E2                    4550 	.db 0xe2
      00520A 95                    4551 	.db 0x95
      00520B 90                    4552 	.db 0x90
      00520C E2                    4553 	.db 0xe2
      00520D 95                    4554 	.db 0x95
      00520E 90                    4555 	.db 0x90
      00520F E2                    4556 	.db 0xe2
      005210 95                    4557 	.db 0x95
      005211 90                    4558 	.db 0x90
      005212 E2                    4559 	.db 0xe2
      005213 95                    4560 	.db 0x95
      005214 90                    4561 	.db 0x90
      005215 E2                    4562 	.db 0xe2
      005216 95                    4563 	.db 0x95
      005217 90                    4564 	.db 0x90
      005218 E2                    4565 	.db 0xe2
      005219 95                    4566 	.db 0x95
      00521A 90                    4567 	.db 0x90
      00521B E2                    4568 	.db 0xe2
      00521C 95                    4569 	.db 0x95
      00521D 90                    4570 	.db 0x90
      00521E E2                    4571 	.db 0xe2
      00521F 95                    4572 	.db 0x95
      005220 90                    4573 	.db 0x90
      005221 E2                    4574 	.db 0xe2
      005222 95                    4575 	.db 0x95
      005223 90                    4576 	.db 0x90
      005224 E2                    4577 	.db 0xe2
      005225 95                    4578 	.db 0x95
      005226 90                    4579 	.db 0x90
      005227 E2                    4580 	.db 0xe2
      005228 95                    4581 	.db 0x95
      005229 90                    4582 	.db 0x90
      00522A E2                    4583 	.db 0xe2
      00522B 95                    4584 	.db 0x95
      00522C 90                    4585 	.db 0x90
      00522D E2                    4586 	.db 0xe2
      00522E 95                    4587 	.db 0x95
      00522F 90                    4588 	.db 0x90
      005230 E2                    4589 	.db 0xe2
      005231 95                    4590 	.db 0x95
      005232 90                    4591 	.db 0x90
      005233 E2                    4592 	.db 0xe2
      005234 95                    4593 	.db 0x95
      005235 90                    4594 	.db 0x90
      005236 E2                    4595 	.db 0xe2
      005237 95                    4596 	.db 0x95
      005238 90                    4597 	.db 0x90
      005239 E2                    4598 	.db 0xe2
      00523A 95                    4599 	.db 0x95
      00523B 90                    4600 	.db 0x90
      00523C E2                    4601 	.db 0xe2
      00523D 95                    4602 	.db 0x95
      00523E 90                    4603 	.db 0x90
      00523F E2                    4604 	.db 0xe2
      005240 95                    4605 	.db 0x95
      005241 90                    4606 	.db 0x90
      005242 E2                    4607 	.db 0xe2
      005243 95                    4608 	.db 0x95
      005244 90                    4609 	.db 0x90
      005245 E2                    4610 	.db 0xe2
      005246 95                    4611 	.db 0x95
      005247 90                    4612 	.db 0x90
      005248 E2                    4613 	.db 0xe2
      005249 95                    4614 	.db 0x95
      00524A 90                    4615 	.db 0x90
      00524B E2                    4616 	.db 0xe2
      00524C 95                    4617 	.db 0x95
      00524D 90                    4618 	.db 0x90
      00524E E2                    4619 	.db 0xe2
      00524F 95                    4620 	.db 0x95
      005250 90                    4621 	.db 0x90
      005251 E2                    4622 	.db 0xe2
      005252 95                    4623 	.db 0x95
      005253 90                    4624 	.db 0x90
      005254 E2                    4625 	.db 0xe2
      005255 95                    4626 	.db 0x95
      005256 90                    4627 	.db 0x90
      005257 E2                    4628 	.db 0xe2
      005258 95                    4629 	.db 0x95
      005259 90                    4630 	.db 0x90
      00525A E2                    4631 	.db 0xe2
      00525B 95                    4632 	.db 0x95
      00525C 90                    4633 	.db 0x90
      00525D E2                    4634 	.db 0xe2
      00525E 95                    4635 	.db 0x95
      00525F 90                    4636 	.db 0x90
      005260 E2                    4637 	.db 0xe2
      005261 95                    4638 	.db 0x95
      005262 97                    4639 	.db 0x97
      005263 0A                    4640 	.db 0x0a
      005264 0D                    4641 	.db 0x0d
      005265 00                    4642 	.db 0x00
                                   4643 	.area CSEG    (CODE)
                                   4644 	.area CONST   (CODE)
      005266                       4645 ___str_25:
      005266 E2                    4646 	.db 0xe2
      005267 95                    4647 	.db 0x95
      005268 91                    4648 	.db 0x91
      005269 20 20 20 20 20 20 20  4649 	.ascii "       ! ADDRESS OUT OF RANGE !         "
             21 20 41 44 44 52 45
             53 53 20 4F 55 54 20
             4F 46 20 52 41 4E 47
             45 20 21 20 20 20 20
             20 20 20 20 20
      005291 E2                    4650 	.db 0xe2
      005292 95                    4651 	.db 0x95
      005293 91                    4652 	.db 0x91
      005294 0A                    4653 	.db 0x0a
      005295 0D                    4654 	.db 0x0d
      005296 00                    4655 	.db 0x00
                                   4656 	.area CSEG    (CODE)
                                   4657 	.area CONST   (CODE)
      005297                       4658 ___str_26:
      005297 E2                    4659 	.db 0xe2
      005298 95                    4660 	.db 0x95
      005299 91                    4661 	.db 0x91
      00529A 20 20 20 20 20 50 6C  4662 	.ascii "     Please Enter Valid Address         "
             65 61 73 65 20 45 6E
             74 65 72 20 56 61 6C
             69 64 20 41 64 64 72
             65 73 73 20 20 20 20
             20 20 20 20 20
      0052C2 E2                    4663 	.db 0xe2
      0052C3 95                    4664 	.db 0x95
      0052C4 91                    4665 	.db 0x91
      0052C5 0A                    4666 	.db 0x0a
      0052C6 0D                    4667 	.db 0x0d
      0052C7 00                    4668 	.db 0x00
                                   4669 	.area CSEG    (CODE)
                                   4670 	.area CONST   (CODE)
      0052C8                       4671 ___str_27:
      0052C8 E2                    4672 	.db 0xe2
      0052C9 95                    4673 	.db 0x95
      0052CA 9A                    4674 	.db 0x9a
      0052CB E2                    4675 	.db 0xe2
      0052CC 95                    4676 	.db 0x95
      0052CD 90                    4677 	.db 0x90
      0052CE E2                    4678 	.db 0xe2
      0052CF 95                    4679 	.db 0x95
      0052D0 90                    4680 	.db 0x90
      0052D1 E2                    4681 	.db 0xe2
      0052D2 95                    4682 	.db 0x95
      0052D3 90                    4683 	.db 0x90
      0052D4 E2                    4684 	.db 0xe2
      0052D5 95                    4685 	.db 0x95
      0052D6 90                    4686 	.db 0x90
      0052D7 E2                    4687 	.db 0xe2
      0052D8 95                    4688 	.db 0x95
      0052D9 90                    4689 	.db 0x90
      0052DA E2                    4690 	.db 0xe2
      0052DB 95                    4691 	.db 0x95
      0052DC 90                    4692 	.db 0x90
      0052DD E2                    4693 	.db 0xe2
      0052DE 95                    4694 	.db 0x95
      0052DF 90                    4695 	.db 0x90
      0052E0 E2                    4696 	.db 0xe2
      0052E1 95                    4697 	.db 0x95
      0052E2 90                    4698 	.db 0x90
      0052E3 E2                    4699 	.db 0xe2
      0052E4 95                    4700 	.db 0x95
      0052E5 90                    4701 	.db 0x90
      0052E6 E2                    4702 	.db 0xe2
      0052E7 95                    4703 	.db 0x95
      0052E8 90                    4704 	.db 0x90
      0052E9 E2                    4705 	.db 0xe2
      0052EA 95                    4706 	.db 0x95
      0052EB 90                    4707 	.db 0x90
      0052EC E2                    4708 	.db 0xe2
      0052ED 95                    4709 	.db 0x95
      0052EE 90                    4710 	.db 0x90
      0052EF E2                    4711 	.db 0xe2
      0052F0 95                    4712 	.db 0x95
      0052F1 90                    4713 	.db 0x90
      0052F2 E2                    4714 	.db 0xe2
      0052F3 95                    4715 	.db 0x95
      0052F4 90                    4716 	.db 0x90
      0052F5 E2                    4717 	.db 0xe2
      0052F6 95                    4718 	.db 0x95
      0052F7 90                    4719 	.db 0x90
      0052F8 E2                    4720 	.db 0xe2
      0052F9 95                    4721 	.db 0x95
      0052FA 90                    4722 	.db 0x90
      0052FB E2                    4723 	.db 0xe2
      0052FC 95                    4724 	.db 0x95
      0052FD 90                    4725 	.db 0x90
      0052FE E2                    4726 	.db 0xe2
      0052FF 95                    4727 	.db 0x95
      005300 90                    4728 	.db 0x90
      005301 E2                    4729 	.db 0xe2
      005302 95                    4730 	.db 0x95
      005303 90                    4731 	.db 0x90
      005304 E2                    4732 	.db 0xe2
      005305 95                    4733 	.db 0x95
      005306 90                    4734 	.db 0x90
      005307 E2                    4735 	.db 0xe2
      005308 95                    4736 	.db 0x95
      005309 90                    4737 	.db 0x90
      00530A E2                    4738 	.db 0xe2
      00530B 95                    4739 	.db 0x95
      00530C 90                    4740 	.db 0x90
      00530D E2                    4741 	.db 0xe2
      00530E 95                    4742 	.db 0x95
      00530F 90                    4743 	.db 0x90
      005310 E2                    4744 	.db 0xe2
      005311 95                    4745 	.db 0x95
      005312 90                    4746 	.db 0x90
      005313 E2                    4747 	.db 0xe2
      005314 95                    4748 	.db 0x95
      005315 90                    4749 	.db 0x90
      005316 E2                    4750 	.db 0xe2
      005317 95                    4751 	.db 0x95
      005318 90                    4752 	.db 0x90
      005319 E2                    4753 	.db 0xe2
      00531A 95                    4754 	.db 0x95
      00531B 90                    4755 	.db 0x90
      00531C E2                    4756 	.db 0xe2
      00531D 95                    4757 	.db 0x95
      00531E 90                    4758 	.db 0x90
      00531F E2                    4759 	.db 0xe2
      005320 95                    4760 	.db 0x95
      005321 90                    4761 	.db 0x90
      005322 E2                    4762 	.db 0xe2
      005323 95                    4763 	.db 0x95
      005324 90                    4764 	.db 0x90
      005325 E2                    4765 	.db 0xe2
      005326 95                    4766 	.db 0x95
      005327 90                    4767 	.db 0x90
      005328 E2                    4768 	.db 0xe2
      005329 95                    4769 	.db 0x95
      00532A 90                    4770 	.db 0x90
      00532B E2                    4771 	.db 0xe2
      00532C 95                    4772 	.db 0x95
      00532D 90                    4773 	.db 0x90
      00532E E2                    4774 	.db 0xe2
      00532F 95                    4775 	.db 0x95
      005330 90                    4776 	.db 0x90
      005331 E2                    4777 	.db 0xe2
      005332 95                    4778 	.db 0x95
      005333 90                    4779 	.db 0x90
      005334 E2                    4780 	.db 0xe2
      005335 95                    4781 	.db 0x95
      005336 90                    4782 	.db 0x90
      005337 E2                    4783 	.db 0xe2
      005338 95                    4784 	.db 0x95
      005339 90                    4785 	.db 0x90
      00533A E2                    4786 	.db 0xe2
      00533B 95                    4787 	.db 0x95
      00533C 90                    4788 	.db 0x90
      00533D E2                    4789 	.db 0xe2
      00533E 95                    4790 	.db 0x95
      00533F 90                    4791 	.db 0x90
      005340 E2                    4792 	.db 0xe2
      005341 95                    4793 	.db 0x95
      005342 90                    4794 	.db 0x90
      005343 E2                    4795 	.db 0xe2
      005344 95                    4796 	.db 0x95
      005345 90                    4797 	.db 0x90
      005346 E2                    4798 	.db 0xe2
      005347 95                    4799 	.db 0x95
      005348 90                    4800 	.db 0x90
      005349 E2                    4801 	.db 0xe2
      00534A 95                    4802 	.db 0x95
      00534B 9D                    4803 	.db 0x9d
      00534C 0A                    4804 	.db 0x0a
      00534D 0D                    4805 	.db 0x0d
      00534E 00                    4806 	.db 0x00
                                   4807 	.area CSEG    (CODE)
                                   4808 	.area CONST   (CODE)
      00534F                       4809 ___str_28:
      00534F E2                    4810 	.db 0xe2
      005350 94                    4811 	.db 0x94
      005351 82                    4812 	.db 0x82
      005352 20 45 6E 74 65 72 20  4813 	.ascii " Enter data (hex, up to 2 characters): "
             64 61 74 61 20 28 68
             65 78 2C 20 75 70 20
             74 6F 20 32 20 63 68
             61 72 61 63 74 65 72
             73 29 3A 20
      005379 0A                    4814 	.db 0x0a
      00537A 0D                    4815 	.db 0x0d
      00537B 7C                    4816 	.ascii "|"
      00537C 00                    4817 	.db 0x00
                                   4818 	.area CSEG    (CODE)
                                   4819 	.area CONST   (CODE)
      00537D                       4820 ___str_29:
      00537D 24 20                 4821 	.ascii "$ "
      00537F 00                    4822 	.db 0x00
                                   4823 	.area CSEG    (CODE)
                                   4824 	.area CONST   (CODE)
      005380                       4825 ___str_30:
      005380 0A                    4826 	.db 0x0a
      005381 0D                    4827 	.db 0x0d
      005382 E2                    4828 	.db 0xe2
      005383 94                    4829 	.db 0x94
      005384 82                    4830 	.db 0x82
      005385 20 45 6E 74 65 72 65  4831 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      00539A 0A                    4832 	.db 0x0a
      00539B 0D                    4833 	.db 0x0d
      00539C 00                    4834 	.db 0x00
                                   4835 	.area CSEG    (CODE)
                                   4836 	.area CONST   (CODE)
      00539D                       4837 ___str_31:
      00539D 44 61 74 61 20 6F 75  4838 	.ascii "Data out of Range"
             74 20 6F 66 20 52 61
             6E 67 65
      0053AE 0A                    4839 	.db 0x0a
      0053AF 0D                    4840 	.db 0x0d
      0053B0 00                    4841 	.db 0x00
                                   4842 	.area CSEG    (CODE)
                                   4843 	.area CONST   (CODE)
      0053B1                       4844 ___str_32:
      0053B1 45 72 72 6F 72 3A 20  4845 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      0053D9 0A                    4846 	.db 0x0a
      0053DA 0D                    4847 	.db 0x0d
      0053DB 00                    4848 	.db 0x00
                                   4849 	.area CSEG    (CODE)
                                   4850 	.area CONST   (CODE)
      0053DC                       4851 ___str_33:
      0053DC 45 72 72 6F 72 3A 20  4852 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      0053FC 0A                    4853 	.db 0x0a
      0053FD 0D                    4854 	.db 0x0d
      0053FE 00                    4855 	.db 0x00
                                   4856 	.area CSEG    (CODE)
                                   4857 	.area CONST   (CODE)
      0053FF                       4858 ___str_34:
      0053FF 45 72 72 6F 72 3A 20  4859 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      005415 0A                    4860 	.db 0x0a
      005416 0D                    4861 	.db 0x0d
      005417 00                    4862 	.db 0x00
                                   4863 	.area CSEG    (CODE)
                                   4864 	.area CONST   (CODE)
      005418                       4865 ___str_35:
      005418 7C 20 57 72 69 74 69  4866 	.ascii "| Writing at Address 0x%03X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 33 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      00544A 0A                    4867 	.db 0x0a
      00544B 0D                    4868 	.db 0x0d
      00544C 00                    4869 	.db 0x00
                                   4870 	.area CSEG    (CODE)
                                   4871 	.area CONST   (CODE)
      00544D                       4872 ___str_36:
      00544D E2                    4873 	.db 0xe2
      00544E 94                    4874 	.db 0x94
      00544F 82                    4875 	.db 0x82
      005450 20 57 72 69 74 65 20  4876 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      00547F E2                    4877 	.db 0xe2
      005480 94                    4878 	.db 0x94
      005481 82                    4879 	.db 0x82
      005482 0A                    4880 	.db 0x0a
      005483 0D                    4881 	.db 0x0d
      005484 00                    4882 	.db 0x00
                                   4883 	.area CSEG    (CODE)
                                   4884 	.area CONST   (CODE)
      005485                       4885 ___str_37:
      005485 E2                    4886 	.db 0xe2
      005486 94                    4887 	.db 0x94
      005487 94                    4888 	.db 0x94
      005488 E2                    4889 	.db 0xe2
      005489 94                    4890 	.db 0x94
      00548A 80                    4891 	.db 0x80
      00548B E2                    4892 	.db 0xe2
      00548C 94                    4893 	.db 0x94
      00548D 80                    4894 	.db 0x80
      00548E E2                    4895 	.db 0xe2
      00548F 94                    4896 	.db 0x94
      005490 80                    4897 	.db 0x80
      005491 E2                    4898 	.db 0xe2
      005492 94                    4899 	.db 0x94
      005493 80                    4900 	.db 0x80
      005494 E2                    4901 	.db 0xe2
      005495 94                    4902 	.db 0x94
      005496 80                    4903 	.db 0x80
      005497 E2                    4904 	.db 0xe2
      005498 94                    4905 	.db 0x94
      005499 80                    4906 	.db 0x80
      00549A E2                    4907 	.db 0xe2
      00549B 94                    4908 	.db 0x94
      00549C 80                    4909 	.db 0x80
      00549D E2                    4910 	.db 0xe2
      00549E 94                    4911 	.db 0x94
      00549F 80                    4912 	.db 0x80
      0054A0 E2                    4913 	.db 0xe2
      0054A1 94                    4914 	.db 0x94
      0054A2 80                    4915 	.db 0x80
      0054A3 E2                    4916 	.db 0xe2
      0054A4 94                    4917 	.db 0x94
      0054A5 80                    4918 	.db 0x80
      0054A6 E2                    4919 	.db 0xe2
      0054A7 94                    4920 	.db 0x94
      0054A8 80                    4921 	.db 0x80
      0054A9 E2                    4922 	.db 0xe2
      0054AA 94                    4923 	.db 0x94
      0054AB 80                    4924 	.db 0x80
      0054AC E2                    4925 	.db 0xe2
      0054AD 94                    4926 	.db 0x94
      0054AE 80                    4927 	.db 0x80
      0054AF E2                    4928 	.db 0xe2
      0054B0 94                    4929 	.db 0x94
      0054B1 80                    4930 	.db 0x80
      0054B2 E2                    4931 	.db 0xe2
      0054B3 94                    4932 	.db 0x94
      0054B4 80                    4933 	.db 0x80
      0054B5 E2                    4934 	.db 0xe2
      0054B6 94                    4935 	.db 0x94
      0054B7 80                    4936 	.db 0x80
      0054B8 E2                    4937 	.db 0xe2
      0054B9 94                    4938 	.db 0x94
      0054BA 80                    4939 	.db 0x80
      0054BB E2                    4940 	.db 0xe2
      0054BC 94                    4941 	.db 0x94
      0054BD 80                    4942 	.db 0x80
      0054BE E2                    4943 	.db 0xe2
      0054BF 94                    4944 	.db 0x94
      0054C0 80                    4945 	.db 0x80
      0054C1 E2                    4946 	.db 0xe2
      0054C2 94                    4947 	.db 0x94
      0054C3 80                    4948 	.db 0x80
      0054C4 E2                    4949 	.db 0xe2
      0054C5 94                    4950 	.db 0x94
      0054C6 80                    4951 	.db 0x80
      0054C7 E2                    4952 	.db 0xe2
      0054C8 94                    4953 	.db 0x94
      0054C9 80                    4954 	.db 0x80
      0054CA E2                    4955 	.db 0xe2
      0054CB 94                    4956 	.db 0x94
      0054CC 80                    4957 	.db 0x80
      0054CD E2                    4958 	.db 0xe2
      0054CE 94                    4959 	.db 0x94
      0054CF 80                    4960 	.db 0x80
      0054D0 E2                    4961 	.db 0xe2
      0054D1 94                    4962 	.db 0x94
      0054D2 80                    4963 	.db 0x80
      0054D3 E2                    4964 	.db 0xe2
      0054D4 94                    4965 	.db 0x94
      0054D5 80                    4966 	.db 0x80
      0054D6 E2                    4967 	.db 0xe2
      0054D7 94                    4968 	.db 0x94
      0054D8 80                    4969 	.db 0x80
      0054D9 E2                    4970 	.db 0xe2
      0054DA 94                    4971 	.db 0x94
      0054DB 80                    4972 	.db 0x80
      0054DC E2                    4973 	.db 0xe2
      0054DD 94                    4974 	.db 0x94
      0054DE 80                    4975 	.db 0x80
      0054DF E2                    4976 	.db 0xe2
      0054E0 94                    4977 	.db 0x94
      0054E1 80                    4978 	.db 0x80
      0054E2 E2                    4979 	.db 0xe2
      0054E3 94                    4980 	.db 0x94
      0054E4 80                    4981 	.db 0x80
      0054E5 E2                    4982 	.db 0xe2
      0054E6 94                    4983 	.db 0x94
      0054E7 80                    4984 	.db 0x80
      0054E8 E2                    4985 	.db 0xe2
      0054E9 94                    4986 	.db 0x94
      0054EA 80                    4987 	.db 0x80
      0054EB E2                    4988 	.db 0xe2
      0054EC 94                    4989 	.db 0x94
      0054ED 80                    4990 	.db 0x80
      0054EE E2                    4991 	.db 0xe2
      0054EF 94                    4992 	.db 0x94
      0054F0 80                    4993 	.db 0x80
      0054F1 E2                    4994 	.db 0xe2
      0054F2 94                    4995 	.db 0x94
      0054F3 80                    4996 	.db 0x80
      0054F4 E2                    4997 	.db 0xe2
      0054F5 94                    4998 	.db 0x94
      0054F6 80                    4999 	.db 0x80
      0054F7 E2                    5000 	.db 0xe2
      0054F8 94                    5001 	.db 0x94
      0054F9 80                    5002 	.db 0x80
      0054FA E2                    5003 	.db 0xe2
      0054FB 94                    5004 	.db 0x94
      0054FC 80                    5005 	.db 0x80
      0054FD E2                    5006 	.db 0xe2
      0054FE 94                    5007 	.db 0x94
      0054FF 80                    5008 	.db 0x80
      005500 E2                    5009 	.db 0xe2
      005501 94                    5010 	.db 0x94
      005502 80                    5011 	.db 0x80
      005503 E2                    5012 	.db 0xe2
      005504 94                    5013 	.db 0x94
      005505 80                    5014 	.db 0x80
      005506 E2                    5015 	.db 0xe2
      005507 94                    5016 	.db 0x94
      005508 80                    5017 	.db 0x80
      005509 E2                    5018 	.db 0xe2
      00550A 94                    5019 	.db 0x94
      00550B 80                    5020 	.db 0x80
      00550C E2                    5021 	.db 0xe2
      00550D 94                    5022 	.db 0x94
      00550E 80                    5023 	.db 0x80
      00550F E2                    5024 	.db 0xe2
      005510 94                    5025 	.db 0x94
      005511 80                    5026 	.db 0x80
      005512 E2                    5027 	.db 0xe2
      005513 94                    5028 	.db 0x94
      005514 80                    5029 	.db 0x80
      005515 E2                    5030 	.db 0xe2
      005516 94                    5031 	.db 0x94
      005517 98                    5032 	.db 0x98
      005518 0A                    5033 	.db 0x0a
      005519 0D                    5034 	.db 0x0d
      00551A 00                    5035 	.db 0x00
                                   5036 	.area CSEG    (CODE)
                                   5037 	.area CONST   (CODE)
      00551B                       5038 ___str_38:
      00551B 45 72 72 6F 72 3A 20  5039 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      005548 0A                    5040 	.db 0x0a
      005549 0D                    5041 	.db 0x0d
      00554A 00                    5042 	.db 0x00
                                   5043 	.area CSEG    (CODE)
                                   5044 	.area CONST   (CODE)
      00554B                       5045 ___str_39:
      00554B 45 72 72 6F 72 3A 20  5046 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      005577 0A                    5047 	.db 0x0a
      005578 0D                    5048 	.db 0x0d
      005579 00                    5049 	.db 0x00
                                   5050 	.area CSEG    (CODE)
                                   5051 	.area CONST   (CODE)
      00557A                       5052 ___str_40:
      00557A 7C 20 30 78 25 30 33  5053 	.ascii "| 0x%03X : 0x%02X "
             58 20 3A 20 30 78 25
             30 32 58 20
      00558C 0A                    5054 	.db 0x0a
      00558D 0D                    5055 	.db 0x0d
      00558E 00                    5056 	.db 0x00
                                   5057 	.area CSEG    (CODE)
                                   5058 	.area CONST   (CODE)
      00558F                       5059 ___str_41:
      00558F E2                    5060 	.db 0xe2
      005590 94                    5061 	.db 0x94
      005591 82                    5062 	.db 0x82
      005592 20 52 65 61 64 20 73  5063 	.ascii " Read successful!                 "
             75 63 63 65 73 73 66
             75 6C 21 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20
      0055B4 E2                    5064 	.db 0xe2
      0055B5 94                    5065 	.db 0x94
      0055B6 82                    5066 	.db 0x82
      0055B7 0A                    5067 	.db 0x0a
      0055B8 0D                    5068 	.db 0x0d
      0055B9 00                    5069 	.db 0x00
                                   5070 	.area CSEG    (CODE)
                                   5071 	.area CONST   (CODE)
      0055BA                       5072 ___str_42:
      0055BA 41 43 4B 20 44 49 44  5073 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      0055CC 0A                    5074 	.db 0x0a
      0055CD 0D                    5075 	.db 0x0d
      0055CE 00                    5076 	.db 0x00
                                   5077 	.area CSEG    (CODE)
                                   5078 	.area CONST   (CODE)
      0055CF                       5079 ___str_43:
      0055CF 0D                    5080 	.db 0x0d
      0055D0 0A                    5081 	.db 0x0a
      0055D1 00                    5082 	.db 0x00
                                   5083 	.area CSEG    (CODE)
                                   5084 	.area CONST   (CODE)
      0055D2                       5085 ___str_44:
      0055D2 0D                    5086 	.db 0x0d
      0055D3 0A                    5087 	.db 0x0a
      0055D4 2D 2D 2D 2D 2D 2D 2D  5088 	.ascii "------------------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      005610 2D 2D 2D 2D           5089 	.ascii "----"
      005614 00                    5090 	.db 0x00
                                   5091 	.area CSEG    (CODE)
                                   5092 	.area CONST   (CODE)
      005615                       5093 ___str_45:
      005615 0D                    5094 	.db 0x0d
      005616 0A                    5095 	.db 0x0a
      005617 20 20 20 20 20 20 20  5096 	.ascii "                    EEPROM Hex Dump                         "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 45
             45 50 52 4F 4D 20 48
             65 78 20 44 75 6D 70
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      005653 20 20 20 20           5097 	.ascii "    "
      005657 00                    5098 	.db 0x00
                                   5099 	.area CSEG    (CODE)
                                   5100 	.area CONST   (CODE)
      005658                       5101 ___str_46:
      005658 0D                    5102 	.db 0x0d
      005659 0A                    5103 	.db 0x0a
      00565A 2D 2D 2D 2D 2D 2D 2D  5104 	.ascii "------------------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      005696 2D 2D 2D 2D           5105 	.ascii "----"
      00569A 0D                    5106 	.db 0x0d
      00569B 0A                    5107 	.db 0x0a
      00569C 00                    5108 	.db 0x00
                                   5109 	.area CSEG    (CODE)
                                   5110 	.area CONST   (CODE)
      00569D                       5111 ___str_47:
      00569D 25 30 33 58 3A 20     5112 	.ascii "%03X: "
      0056A3 00                    5113 	.db 0x00
                                   5114 	.area CSEG    (CODE)
                                   5115 	.area CONST   (CODE)
      0056A4                       5116 ___str_48:
      0056A4 25 30 32 58 20        5117 	.ascii "%02X "
      0056A9 00                    5118 	.db 0x00
                                   5119 	.area CSEG    (CODE)
                                   5120 	.area CONST   (CODE)
      0056AA                       5121 ___str_49:
      0056AA 20 20 20              5122 	.ascii "   "
      0056AD 00                    5123 	.db 0x00
                                   5124 	.area CSEG    (CODE)
                                   5125 	.area CONST   (CODE)
      0056AE                       5126 ___str_50:
      0056AE 1B                    5127 	.db 0x1b
      0056AF 5B 31 3B 33 33 6D     5128 	.ascii "[1;33m"
      0056B5 0A                    5129 	.db 0x0a
      0056B6 0D                    5130 	.db 0x0d
      0056B7 45 6E 74 65 72 20 53  5131 	.ascii "Enter Start Address for HEX Dump"
             74 61 72 74 20 41 64
             64 72 65 73 73 20 66
             6F 72 20 48 45 58 20
             44 75 6D 70
      0056D7 0D                    5132 	.db 0x0d
      0056D8 0A                    5133 	.db 0x0a
      0056D9 00                    5134 	.db 0x00
                                   5135 	.area CSEG    (CODE)
                                   5136 	.area CONST   (CODE)
      0056DA                       5137 ___str_51:
      0056DA 1B                    5138 	.db 0x1b
      0056DB 5B 31 3B 33 31 6D     5139 	.ascii "[1;31m"
      0056E1 0A                    5140 	.db 0x0a
      0056E2 0D                    5141 	.db 0x0d
      0056E3 49 6E 76 61 6C 69 64  5142 	.ascii "Invalid Start Address Range!!"
             20 53 74 61 72 74 20
             41 64 64 72 65 73 73
             20 52 61 6E 67 65 21
             21
      005700 0A                    5143 	.db 0x0a
      005701 0D                    5144 	.db 0x0d
      005702 20 41 64 64 72 65 73  5145 	.ascii " Address has to be between 0x000 to 0x7FF"
             73 20 68 61 73 20 74
             6F 20 62 65 20 62 65
             74 77 65 65 6E 20 30
             78 30 30 30 20 74 6F
             20 30 78 37 46 46
      00572B 1B                    5146 	.db 0x1b
      00572C 5B 30 6D              5147 	.ascii "[0m"
      00572F 0D                    5148 	.db 0x0d
      005730 0A                    5149 	.db 0x0a
      005731 00                    5150 	.db 0x00
                                   5151 	.area CSEG    (CODE)
                                   5152 	.area CONST   (CODE)
      005732                       5153 ___str_52:
      005732 1B                    5154 	.db 0x1b
      005733 5B 31 3B 33 33 6D     5155 	.ascii "[1;33m"
      005739 0A                    5156 	.db 0x0a
      00573A 0D                    5157 	.db 0x0d
      00573B 45 6E 74 65 72 20 45  5158 	.ascii "Enter End Address for HEX Dump"
             6E 64 20 41 64 64 72
             65 73 73 20 66 6F 72
             20 48 45 58 20 44 75
             6D 70
      005759 0D                    5159 	.db 0x0d
      00575A 0A                    5160 	.db 0x0a
      00575B 00                    5161 	.db 0x00
                                   5162 	.area CSEG    (CODE)
                                   5163 	.area CONST   (CODE)
      00575C                       5164 ___str_53:
      00575C 1B                    5165 	.db 0x1b
      00575D 5B 31 3B 33 31 6D     5166 	.ascii "[1;31m"
      005763 0A                    5167 	.db 0x0a
      005764 0D                    5168 	.db 0x0d
      005765 49 6E 76 61 6C 69 64  5169 	.ascii "Invalid End Address Range!!"
             20 45 6E 64 20 41 64
             64 72 65 73 73 20 52
             61 6E 67 65 21 21
      005780 0A                    5170 	.db 0x0a
      005781 0D                    5171 	.db 0x0d
      005782 20 41 64 64 72 65 73  5172 	.ascii " Address has to be between 0x000 to 0x7FF"
             73 20 68 61 73 20 74
             6F 20 62 65 20 62 65
             74 77 65 65 6E 20 30
             78 30 30 30 20 74 6F
             20 30 78 37 46 46
      0057AB 1B                    5173 	.db 0x1b
      0057AC 5B 30 6D              5174 	.ascii "[0m"
      0057AF 0D                    5175 	.db 0x0d
      0057B0 0A                    5176 	.db 0x0a
      0057B1 00                    5177 	.db 0x00
                                   5178 	.area CSEG    (CODE)
                                   5179 	.area CONST   (CODE)
      0057B2                       5180 ___str_54:
      0057B2 57 72 69 74 69 6E 67  5181 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      0057D7 0A                    5182 	.db 0x0a
      0057D8 0D                    5183 	.db 0x0d
      0057D9 00                    5184 	.db 0x00
                                   5185 	.area CSEG    (CODE)
                                   5186 	.area CONST   (CODE)
      0057DA                       5187 ___str_55:
      0057DA 52 65 61 64 20 62 61  5188 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      0057FF 0A                    5189 	.db 0x0a
      005800 0D                    5190 	.db 0x0d
      005801 00                    5191 	.db 0x00
                                   5192 	.area CSEG    (CODE)
                                   5193 	.area CONST   (CODE)
      005802                       5194 ___str_56:
      005802 4D 41 54 43 48 20 2D  5195 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      005820 0A                    5196 	.db 0x0a
      005821 0D                    5197 	.db 0x0d
      005822 00                    5198 	.db 0x00
                                   5199 	.area CSEG    (CODE)
                                   5200 	.area CONST   (CODE)
      005823                       5201 ___str_57:
      005823 45 52 52 4F 52 20 2D  5202 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      005839 0A                    5203 	.db 0x0a
      00583A 0D                    5204 	.db 0x0d
      00583B 00                    5205 	.db 0x00
                                   5206 	.area CSEG    (CODE)
                                   5207 	.area XINIT   (CODE)
      005847                       5208 __xinit__address_range_flag:
      005847 01 00                 5209 	.byte #0x01, #0x00	;  1
      005849                       5210 __xinit__data_range_flag:
      005849 01 00                 5211 	.byte #0x01, #0x00	;  1
      00584B                       5212 __xinit__block:
      00584B 00 00                 5213 	.byte #0x00, #0x00	; 0
                                   5214 	.area CABS    (ABS,CODE)
