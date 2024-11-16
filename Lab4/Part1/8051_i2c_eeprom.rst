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
      000404                        480 _take_address_input_65537_72:
      000404                        481 	.ds 4
      000408                        482 _take_address_address_65538_76:
      000408                        483 	.ds 2
      00040A                        484 _take_data_input_65537_82:
      00040A                        485 	.ds 4
      00040E                        486 _take_data_data_65538_86:
      00040E                        487 	.ds 1
      00040F                        488 _eeprom_write_PARM_2:
      00040F                        489 	.ds 1
      000410                        490 _eeprom_write_address_65536_90:
      000410                        491 	.ds 2
      000412                        492 _eeprom_read_address_65536_97:
      000412                        493 	.ds 2
      000414                        494 _i2c_write_data_65536_102:
      000414                        495 	.ds 1
      000415                        496 _i2c_read_ACK_65536_107:
      000415                        497 	.ds 2
      000417                        498 _i2c_read_buff_65536_108:
      000417                        499 	.ds 1
      000418                        500 _EEPROM_hexump_PARM_2:
      000418                        501 	.ds 2
      00041A                        502 _EEPROM_hexump_start_address_65536_113:
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
      00308F 74 12            [12]  637 	mov	a,#___str_0
      003091 C0 E0            [24]  638 	push	acc
      003093 74 4A            [12]  639 	mov	a,#(___str_0 >> 8)
      003095 C0 E0            [24]  640 	push	acc
      003097 74 80            [12]  641 	mov	a,#0x80
      003099 C0 E0            [24]  642 	push	acc
      00309B 12 3F B0         [24]  643 	lcall	_printf
      00309E 15 81            [12]  644 	dec	sp
      0030A0 15 81            [12]  645 	dec	sp
      0030A2 15 81            [12]  646 	dec	sp
                                    647 ;	8051_i2c_eeprom.c:87: printf("║           I2C Memory Management System v1.0            ║\n\r");
      0030A4 74 C4            [12]  648 	mov	a,#___str_1
      0030A6 C0 E0            [24]  649 	push	acc
      0030A8 74 4A            [12]  650 	mov	a,#(___str_1 >> 8)
      0030AA C0 E0            [24]  651 	push	acc
      0030AC 74 80            [12]  652 	mov	a,#0x80
      0030AE C0 E0            [24]  653 	push	acc
      0030B0 12 3F B0         [24]  654 	lcall	_printf
      0030B3 15 81            [12]  655 	dec	sp
      0030B5 15 81            [12]  656 	dec	sp
      0030B7 15 81            [12]  657 	dec	sp
                                    658 ;	8051_i2c_eeprom.c:88: printf("╚════════════════════════════════════════════════════════╝\n\r");
      0030B9 74 05            [12]  659 	mov	a,#___str_2
      0030BB C0 E0            [24]  660 	push	acc
      0030BD 74 4B            [12]  661 	mov	a,#(___str_2 >> 8)
      0030BF C0 E0            [24]  662 	push	acc
      0030C1 74 80            [12]  663 	mov	a,#0x80
      0030C3 C0 E0            [24]  664 	push	acc
      0030C5 12 3F B0         [24]  665 	lcall	_printf
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
      0030CF 74 B6            [12]  680 	mov	a,#___str_3
      0030D1 C0 E0            [24]  681 	push	acc
      0030D3 74 4B            [12]  682 	mov	a,#(___str_3 >> 8)
      0030D5 C0 E0            [24]  683 	push	acc
      0030D7 74 80            [12]  684 	mov	a,#0x80
      0030D9 C0 E0            [24]  685 	push	acc
      0030DB 12 3F B0         [24]  686 	lcall	_printf
      0030DE 15 81            [12]  687 	dec	sp
      0030E0 15 81            [12]  688 	dec	sp
      0030E2 15 81            [12]  689 	dec	sp
                                    690 ;	8051_i2c_eeprom.c:98: printf("│  Command   │               Description                  │\n\r");
      0030E4 74 6C            [12]  691 	mov	a,#___str_4
      0030E6 C0 E0            [24]  692 	push	acc
      0030E8 74 4C            [12]  693 	mov	a,#(___str_4 >> 8)
      0030EA C0 E0            [24]  694 	push	acc
      0030EC 74 80            [12]  695 	mov	a,#0x80
      0030EE C0 E0            [24]  696 	push	acc
      0030F0 12 3F B0         [24]  697 	lcall	_printf
      0030F3 15 81            [12]  698 	dec	sp
      0030F5 15 81            [12]  699 	dec	sp
      0030F7 15 81            [12]  700 	dec	sp
                                    701 ;	8051_i2c_eeprom.c:99: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      0030F9 74 B0            [12]  702 	mov	a,#___str_5
      0030FB C0 E0            [24]  703 	push	acc
      0030FD 74 4C            [12]  704 	mov	a,#(___str_5 >> 8)
      0030FF C0 E0            [24]  705 	push	acc
      003101 74 80            [12]  706 	mov	a,#0x80
      003103 C0 E0            [24]  707 	push	acc
      003105 12 3F B0         [24]  708 	lcall	_printf
      003108 15 81            [12]  709 	dec	sp
      00310A 15 81            [12]  710 	dec	sp
      00310C 15 81            [12]  711 	dec	sp
                                    712 ;	8051_i2c_eeprom.c:100: printf("│     R      │ Read from address                          │\n\r");
      00310E 74 64            [12]  713 	mov	a,#___str_6
      003110 C0 E0            [24]  714 	push	acc
      003112 74 4D            [12]  715 	mov	a,#(___str_6 >> 8)
      003114 C0 E0            [24]  716 	push	acc
      003116 74 80            [12]  717 	mov	a,#0x80
      003118 C0 E0            [24]  718 	push	acc
      00311A 12 3F B0         [24]  719 	lcall	_printf
      00311D 15 81            [12]  720 	dec	sp
      00311F 15 81            [12]  721 	dec	sp
      003121 15 81            [12]  722 	dec	sp
                                    723 ;	8051_i2c_eeprom.c:101: printf("│     W      │ Write data to address                      │\n\r");
      003123 74 A8            [12]  724 	mov	a,#___str_7
      003125 C0 E0            [24]  725 	push	acc
      003127 74 4D            [12]  726 	mov	a,#(___str_7 >> 8)
      003129 C0 E0            [24]  727 	push	acc
      00312B 74 80            [12]  728 	mov	a,#0x80
      00312D C0 E0            [24]  729 	push	acc
      00312F 12 3F B0         [24]  730 	lcall	_printf
      003132 15 81            [12]  731 	dec	sp
      003134 15 81            [12]  732 	dec	sp
      003136 15 81            [12]  733 	dec	sp
                                    734 ;	8051_i2c_eeprom.c:102: printf("│     H      │ Display hex dump                           │\n\r");
      003138 74 EC            [12]  735 	mov	a,#___str_8
      00313A C0 E0            [24]  736 	push	acc
      00313C 74 4D            [12]  737 	mov	a,#(___str_8 >> 8)
      00313E C0 E0            [24]  738 	push	acc
      003140 74 80            [12]  739 	mov	a,#0x80
      003142 C0 E0            [24]  740 	push	acc
      003144 12 3F B0         [24]  741 	lcall	_printf
      003147 15 81            [12]  742 	dec	sp
      003149 15 81            [12]  743 	dec	sp
      00314B 15 81            [12]  744 	dec	sp
                                    745 ;	8051_i2c_eeprom.c:103: printf("│     X      │ Reset memory system                        │\n\r");
      00314D 74 30            [12]  746 	mov	a,#___str_9
      00314F C0 E0            [24]  747 	push	acc
      003151 74 4E            [12]  748 	mov	a,#(___str_9 >> 8)
      003153 C0 E0            [24]  749 	push	acc
      003155 74 80            [12]  750 	mov	a,#0x80
      003157 C0 E0            [24]  751 	push	acc
      003159 12 3F B0         [24]  752 	lcall	_printf
      00315C 15 81            [12]  753 	dec	sp
      00315E 15 81            [12]  754 	dec	sp
      003160 15 81            [12]  755 	dec	sp
                                    756 ;	8051_i2c_eeprom.c:104: printf("│     ?      │ Display this help menu                     │\n\r");
      003162 74 74            [12]  757 	mov	a,#___str_10
      003164 C0 E0            [24]  758 	push	acc
      003166 74 4E            [12]  759 	mov	a,#(___str_10 >> 8)
      003168 C0 E0            [24]  760 	push	acc
      00316A 74 80            [12]  761 	mov	a,#0x80
      00316C C0 E0            [24]  762 	push	acc
      00316E 12 3F B0         [24]  763 	lcall	_printf
      003171 15 81            [12]  764 	dec	sp
      003173 15 81            [12]  765 	dec	sp
      003175 15 81            [12]  766 	dec	sp
                                    767 ;	8051_i2c_eeprom.c:105: printf("│     Q      │ Quit program                               │\n\r");
      003177 74 B8            [12]  768 	mov	a,#___str_11
      003179 C0 E0            [24]  769 	push	acc
      00317B 74 4E            [12]  770 	mov	a,#(___str_11 >> 8)
      00317D C0 E0            [24]  771 	push	acc
      00317F 74 80            [12]  772 	mov	a,#0x80
      003181 C0 E0            [24]  773 	push	acc
      003183 12 3F B0         [24]  774 	lcall	_printf
      003186 15 81            [12]  775 	dec	sp
      003188 15 81            [12]  776 	dec	sp
      00318A 15 81            [12]  777 	dec	sp
                                    778 ;	8051_i2c_eeprom.c:106: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      00318C 74 FC            [12]  779 	mov	a,#___str_12
      00318E C0 E0            [24]  780 	push	acc
      003190 74 4E            [12]  781 	mov	a,#(___str_12 >> 8)
      003192 C0 E0            [24]  782 	push	acc
      003194 74 80            [12]  783 	mov	a,#0x80
      003196 C0 E0            [24]  784 	push	acc
      003198 12 3F B0         [24]  785 	lcall	_printf
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
                                    799 ;end_add                   Allocated with name '_main_end_add_196610_69'
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
      0031AE 12 3A 4A         [24]  815 	lcall	_i2c_start
                                    816 ;	8051_i2c_eeprom.c:123: while(1)
      0031B1                        817 00119$:
                                    818 ;	8051_i2c_eeprom.c:125: char user_input = getchar();
      0031B1 12 30 81         [24]  819 	lcall	_getchar
      0031B4 AE 82            [24]  820 	mov	r6,dpl
                                    821 ;	8051_i2c_eeprom.c:126: printf("| $ %c\n\r", user_input);
      0031B6 8E 05            [24]  822 	mov	ar5,r6
      0031B8 7F 00            [12]  823 	mov	r7,#0x00
      0031BA C0 06            [24]  824 	push	ar6
      0031BC C0 05            [24]  825 	push	ar5
      0031BE C0 07            [24]  826 	push	ar7
      0031C0 74 B0            [12]  827 	mov	a,#___str_13
      0031C2 C0 E0            [24]  828 	push	acc
      0031C4 74 4F            [12]  829 	mov	a,#(___str_13 >> 8)
      0031C6 C0 E0            [24]  830 	push	acc
      0031C8 74 80            [12]  831 	mov	a,#0x80
      0031CA C0 E0            [24]  832 	push	acc
      0031CC 12 3F B0         [24]  833 	lcall	_printf
      0031CF E5 81            [12]  834 	mov	a,sp
      0031D1 24 FB            [12]  835 	add	a,#0xfb
      0031D3 F5 81            [12]  836 	mov	sp,a
                                    837 ;	8051_i2c_eeprom.c:127: printf("\n\r");
      0031D5 74 B9            [12]  838 	mov	a,#___str_14
      0031D7 C0 E0            [24]  839 	push	acc
      0031D9 74 4F            [12]  840 	mov	a,#(___str_14 >> 8)
      0031DB C0 E0            [24]  841 	push	acc
      0031DD 74 80            [12]  842 	mov	a,#0x80
      0031DF C0 E0            [24]  843 	push	acc
      0031E1 12 3F B0         [24]  844 	lcall	_printf
      0031E4 15 81            [12]  845 	dec	sp
      0031E6 15 81            [12]  846 	dec	sp
      0031E8 15 81            [12]  847 	dec	sp
      0031EA D0 06            [24]  848 	pop	ar6
                                    849 ;	8051_i2c_eeprom.c:128: switch(user_input)
      0031EC BE 3F 03         [24]  850 	cjne	r6,#0x3f,00167$
      0031EF 02 32 D2         [24]  851 	ljmp	00109$
      0031F2                        852 00167$:
      0031F2 BE 48 03         [24]  853 	cjne	r6,#0x48,00168$
      0031F5 02 32 F3         [24]  854 	ljmp	00111$
      0031F8                        855 00168$:
      0031F8 BE 52 02         [24]  856 	cjne	r6,#0x52,00169$
      0031FB 80 76            [24]  857 	sjmp	00106$
      0031FD                        858 00169$:
      0031FD BE 57 02         [24]  859 	cjne	r6,#0x57,00170$
      003200 80 09            [24]  860 	sjmp	00101$
      003202                        861 00170$:
      003202 BE 58 03         [24]  862 	cjne	r6,#0x58,00171$
      003205 02 32 D8         [24]  863 	ljmp	00110$
      003208                        864 00171$:
      003208 02 33 5D         [24]  865 	ljmp	00116$
                                    866 ;	8051_i2c_eeprom.c:130: case 'W':
      00320B                        867 00101$:
                                    868 ;	8051_i2c_eeprom.c:132: printf("\n┌─────────────── WRITE OPERATION ──────────────┐\n\r");
      00320B 74 BC            [12]  869 	mov	a,#___str_15
      00320D C0 E0            [24]  870 	push	acc
      00320F 74 4F            [12]  871 	mov	a,#(___str_15 >> 8)
      003211 C0 E0            [24]  872 	push	acc
      003213 74 80            [12]  873 	mov	a,#0x80
      003215 C0 E0            [24]  874 	push	acc
      003217 12 3F B0         [24]  875 	lcall	_printf
      00321A 15 81            [12]  876 	dec	sp
      00321C 15 81            [12]  877 	dec	sp
      00321E 15 81            [12]  878 	dec	sp
                                    879 ;	8051_i2c_eeprom.c:134: addr = take_address();
      003220 12 33 75         [24]  880 	lcall	_take_address
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
      00323C 02 31 B1         [24]  899 	ljmp	00119$
      00323F                        900 00103$:
                                    901 ;	8051_i2c_eeprom.c:141: data = take_data();
      00323F C0 07            [24]  902 	push	ar7
      003241 C0 06            [24]  903 	push	ar6
      003243 12 35 8E         [24]  904 	lcall	_take_data
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
      003261 02 31 B1         [24]  924 	ljmp	00119$
      003264                        925 00105$:
                                    926 ;	8051_i2c_eeprom.c:148: eeprom_write(addr, data);
      003264 90 04 0F         [24]  927 	mov	dptr,#_eeprom_write_PARM_2
      003267 ED               [12]  928 	mov	a,r5
      003268 F0               [24]  929 	movx	@dptr,a
      003269 8E 82            [24]  930 	mov	dpl,r6
      00326B 8F 83            [24]  931 	mov	dph,r7
      00326D 12 37 07         [24]  932 	lcall	_eeprom_write
                                    933 ;	8051_i2c_eeprom.c:149: break;
      003270 02 31 B1         [24]  934 	ljmp	00119$
                                    935 ;	8051_i2c_eeprom.c:151: case 'R':
      003273                        936 00106$:
                                    937 ;	8051_i2c_eeprom.c:153: printf("\n┌─────────────── READ OPERATION ───────────────┐\n\r");
      003273 74 2E            [12]  938 	mov	a,#___str_16
      003275 C0 E0            [24]  939 	push	acc
      003277 74 50            [12]  940 	mov	a,#(___str_16 >> 8)
      003279 C0 E0            [24]  941 	push	acc
      00327B 74 80            [12]  942 	mov	a,#0x80
      00327D C0 E0            [24]  943 	push	acc
      00327F 12 3F B0         [24]  944 	lcall	_printf
      003282 15 81            [12]  945 	dec	sp
      003284 15 81            [12]  946 	dec	sp
      003286 15 81            [12]  947 	dec	sp
                                    948 ;	8051_i2c_eeprom.c:155: addr = take_address(); 
      003288 12 33 75         [24]  949 	lcall	_take_address
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
      0032A4 02 31 B1         [24]  968 	ljmp	00119$
      0032A7                        969 00108$:
                                    970 ;	8051_i2c_eeprom.c:161: printf("| Reading from Address 0x%03X           |\n\r", addr);
      0032A7 C0 07            [24]  971 	push	ar7
      0032A9 C0 06            [24]  972 	push	ar6
      0032AB C0 06            [24]  973 	push	ar6
      0032AD C0 07            [24]  974 	push	ar7
      0032AF 74 A2            [12]  975 	mov	a,#___str_17
      0032B1 C0 E0            [24]  976 	push	acc
      0032B3 74 50            [12]  977 	mov	a,#(___str_17 >> 8)
      0032B5 C0 E0            [24]  978 	push	acc
      0032B7 74 80            [12]  979 	mov	a,#0x80
      0032B9 C0 E0            [24]  980 	push	acc
      0032BB 12 3F B0         [24]  981 	lcall	_printf
      0032BE E5 81            [12]  982 	mov	a,sp
      0032C0 24 FB            [12]  983 	add	a,#0xfb
      0032C2 F5 81            [12]  984 	mov	sp,a
      0032C4 D0 06            [24]  985 	pop	ar6
      0032C6 D0 07            [24]  986 	pop	ar7
                                    987 ;	8051_i2c_eeprom.c:162: eeprom_read(addr);
      0032C8 8E 82            [24]  988 	mov	dpl,r6
      0032CA 8F 83            [24]  989 	mov	dph,r7
      0032CC 12 38 49         [24]  990 	lcall	_eeprom_read
                                    991 ;	8051_i2c_eeprom.c:163: break;
      0032CF 02 31 B1         [24]  992 	ljmp	00119$
                                    993 ;	8051_i2c_eeprom.c:166: case '?':
      0032D2                        994 00109$:
                                    995 ;	8051_i2c_eeprom.c:167: command_menu();
      0032D2 12 30 CF         [24]  996 	lcall	_command_menu
                                    997 ;	8051_i2c_eeprom.c:168: break;
      0032D5 02 31 B1         [24]  998 	ljmp	00119$
                                    999 ;	8051_i2c_eeprom.c:170: case 'X':
      0032D8                       1000 00110$:
                                   1001 ;	8051_i2c_eeprom.c:171: printf("\n┌─────────────── RESET OPERATION ───────────┐\n\r");
      0032D8 74 CE            [12] 1002 	mov	a,#___str_18
      0032DA C0 E0            [24] 1003 	push	acc
      0032DC 74 50            [12] 1004 	mov	a,#(___str_18 >> 8)
      0032DE C0 E0            [24] 1005 	push	acc
      0032E0 74 80            [12] 1006 	mov	a,#0x80
      0032E2 C0 E0            [24] 1007 	push	acc
      0032E4 12 3F B0         [24] 1008 	lcall	_printf
      0032E7 15 81            [12] 1009 	dec	sp
      0032E9 15 81            [12] 1010 	dec	sp
      0032EB 15 81            [12] 1011 	dec	sp
                                   1012 ;	8051_i2c_eeprom.c:172: eeprom_reset();
      0032ED 12 3D 5E         [24] 1013 	lcall	_eeprom_reset
                                   1014 ;	8051_i2c_eeprom.c:173: break;
      0032F0 02 31 B1         [24] 1015 	ljmp	00119$
                                   1016 ;	8051_i2c_eeprom.c:175: case 'H':
      0032F3                       1017 00111$:
                                   1018 ;	8051_i2c_eeprom.c:176: printf("\n┌───────────── HEX DUMP OPERATION ───────────────┐\n\r");
      0032F3 74 37            [12] 1019 	mov	a,#___str_19
      0032F5 C0 E0            [24] 1020 	push	acc
      0032F7 74 51            [12] 1021 	mov	a,#(___str_19 >> 8)
      0032F9 C0 E0            [24] 1022 	push	acc
      0032FB 74 80            [12] 1023 	mov	a,#0x80
      0032FD C0 E0            [24] 1024 	push	acc
      0032FF 12 3F B0         [24] 1025 	lcall	_printf
      003302 15 81            [12] 1026 	dec	sp
      003304 15 81            [12] 1027 	dec	sp
      003306 15 81            [12] 1028 	dec	sp
                                   1029 ;	8051_i2c_eeprom.c:178: start_add = take_address();
      003308 12 33 75         [24] 1030 	lcall	_take_address
      00330B AE 82            [24] 1031 	mov	r6,dpl
      00330D AF 83            [24] 1032 	mov	r7,dph
                                   1033 ;	8051_i2c_eeprom.c:179: if(!address_range_flag) 
      00330F 90 04 55         [24] 1034 	mov	dptr,#_address_range_flag
      003312 E0               [24] 1035 	movx	a,@dptr
      003313 FC               [12] 1036 	mov	r4,a
      003314 A3               [24] 1037 	inc	dptr
      003315 E0               [24] 1038 	movx	a,@dptr
      003316 FD               [12] 1039 	mov	r5,a
      003317 90 04 55         [24] 1040 	mov	dptr,#_address_range_flag
      00331A E0               [24] 1041 	movx	a,@dptr
      00331B F5 F0            [12] 1042 	mov	b,a
      00331D A3               [24] 1043 	inc	dptr
      00331E E0               [24] 1044 	movx	a,@dptr
      00331F 45 F0            [12] 1045 	orl	a,b
      003321 70 0C            [24] 1046 	jnz	00113$
                                   1047 ;	8051_i2c_eeprom.c:181: address_range_flag = 1;
      003323 90 04 55         [24] 1048 	mov	dptr,#_address_range_flag
      003326 74 01            [12] 1049 	mov	a,#0x01
      003328 F0               [24] 1050 	movx	@dptr,a
      003329 E4               [12] 1051 	clr	a
      00332A A3               [24] 1052 	inc	dptr
      00332B F0               [24] 1053 	movx	@dptr,a
                                   1054 ;	8051_i2c_eeprom.c:182: break;
      00332C 02 31 B1         [24] 1055 	ljmp	00119$
      00332F                       1056 00113$:
                                   1057 ;	8051_i2c_eeprom.c:185: if(!address_range_flag) 
      00332F EC               [12] 1058 	mov	a,r4
      003330 4D               [12] 1059 	orl	a,r5
      003331 70 0C            [24] 1060 	jnz	00115$
                                   1061 ;	8051_i2c_eeprom.c:187: address_range_flag = 1;
      003333 90 04 55         [24] 1062 	mov	dptr,#_address_range_flag
      003336 74 01            [12] 1063 	mov	a,#0x01
      003338 F0               [24] 1064 	movx	@dptr,a
      003339 E4               [12] 1065 	clr	a
      00333A A3               [24] 1066 	inc	dptr
      00333B F0               [24] 1067 	movx	@dptr,a
                                   1068 ;	8051_i2c_eeprom.c:188: break;
      00333C 02 31 B1         [24] 1069 	ljmp	00119$
      00333F                       1070 00115$:
                                   1071 ;	8051_i2c_eeprom.c:190: end_add = take_address();
      00333F C0 07            [24] 1072 	push	ar7
      003341 C0 06            [24] 1073 	push	ar6
      003343 12 33 75         [24] 1074 	lcall	_take_address
      003346 AC 82            [24] 1075 	mov	r4,dpl
      003348 AD 83            [24] 1076 	mov	r5,dph
      00334A D0 06            [24] 1077 	pop	ar6
      00334C D0 07            [24] 1078 	pop	ar7
                                   1079 ;	8051_i2c_eeprom.c:193: EEPROM_hexump(start_add, end_add);
      00334E 90 04 18         [24] 1080 	mov	dptr,#_EEPROM_hexump_PARM_2
      003351 EC               [12] 1081 	mov	a,r4
      003352 F0               [24] 1082 	movx	@dptr,a
      003353 ED               [12] 1083 	mov	a,r5
      003354 A3               [24] 1084 	inc	dptr
      003355 F0               [24] 1085 	movx	@dptr,a
      003356 8E 82            [24] 1086 	mov	dpl,r6
      003358 8F 83            [24] 1087 	mov	dph,r7
      00335A 12 3A 5F         [24] 1088 	lcall	_EEPROM_hexump
                                   1089 ;	8051_i2c_eeprom.c:195: default:
      00335D                       1090 00116$:
                                   1091 ;	8051_i2c_eeprom.c:196: printf("INVALID INPUT\n\r");
      00335D 74 A9            [12] 1092 	mov	a,#___str_20
      00335F C0 E0            [24] 1093 	push	acc
      003361 74 51            [12] 1094 	mov	a,#(___str_20 >> 8)
      003363 C0 E0            [24] 1095 	push	acc
      003365 74 80            [12] 1096 	mov	a,#0x80
      003367 C0 E0            [24] 1097 	push	acc
      003369 12 3F B0         [24] 1098 	lcall	_printf
      00336C 15 81            [12] 1099 	dec	sp
      00336E 15 81            [12] 1100 	dec	sp
      003370 15 81            [12] 1101 	dec	sp
                                   1102 ;	8051_i2c_eeprom.c:198: }
                                   1103 ;	8051_i2c_eeprom.c:201: }
      003372 02 31 B1         [24] 1104 	ljmp	00119$
                                   1105 ;------------------------------------------------------------
                                   1106 ;Allocation info for local variables in function 'take_address'
                                   1107 ;------------------------------------------------------------
                                   1108 ;input                     Allocated with name '_take_address_input_65537_72'
                                   1109 ;i                         Allocated with name '_take_address_i_65537_72'
                                   1110 ;c                         Allocated with name '_take_address_c_65537_72'
                                   1111 ;address                   Allocated with name '_take_address_address_65538_76'
                                   1112 ;block                     Allocated with name '_take_address_block_65539_80'
                                   1113 ;------------------------------------------------------------
                                   1114 ;	8051_i2c_eeprom.c:209: unsigned int take_address() 
                                   1115 ;	-----------------------------------------
                                   1116 ;	 function take_address
                                   1117 ;	-----------------------------------------
      003375                       1118 _take_address:
                                   1119 ;	8051_i2c_eeprom.c:211: printf("│ Enter address (hex, up to 3 characters): \n\r|");
      003375 74 B9            [12] 1120 	mov	a,#___str_21
      003377 C0 E0            [24] 1121 	push	acc
      003379 74 51            [12] 1122 	mov	a,#(___str_21 >> 8)
      00337B C0 E0            [24] 1123 	push	acc
      00337D 74 80            [12] 1124 	mov	a,#0x80
      00337F C0 E0            [24] 1125 	push	acc
      003381 12 3F B0         [24] 1126 	lcall	_printf
      003384 15 81            [12] 1127 	dec	sp
      003386 15 81            [12] 1128 	dec	sp
      003388 15 81            [12] 1129 	dec	sp
                                   1130 ;	8051_i2c_eeprom.c:212: char input[4] = {0};  // Array for 3 hex chars + null terminator
      00338A 90 04 04         [24] 1131 	mov	dptr,#_take_address_input_65537_72
      00338D E4               [12] 1132 	clr	a
      00338E F0               [24] 1133 	movx	@dptr,a
      00338F 90 04 05         [24] 1134 	mov	dptr,#(_take_address_input_65537_72 + 0x0001)
      003392 F0               [24] 1135 	movx	@dptr,a
      003393 90 04 06         [24] 1136 	mov	dptr,#(_take_address_input_65537_72 + 0x0002)
      003396 F0               [24] 1137 	movx	@dptr,a
      003397 90 04 07         [24] 1138 	mov	dptr,#(_take_address_input_65537_72 + 0x0003)
      00339A F0               [24] 1139 	movx	@dptr,a
                                   1140 ;	8051_i2c_eeprom.c:216: printf("| $ ");
      00339B 74 EA            [12] 1141 	mov	a,#___str_22
      00339D C0 E0            [24] 1142 	push	acc
      00339F 74 51            [12] 1143 	mov	a,#(___str_22 >> 8)
      0033A1 C0 E0            [24] 1144 	push	acc
      0033A3 74 80            [12] 1145 	mov	a,#0x80
      0033A5 C0 E0            [24] 1146 	push	acc
      0033A7 12 3F B0         [24] 1147 	lcall	_printf
      0033AA 15 81            [12] 1148 	dec	sp
      0033AC 15 81            [12] 1149 	dec	sp
      0033AE 15 81            [12] 1150 	dec	sp
                                   1151 ;	8051_i2c_eeprom.c:218: while (i < 3) {
      0033B0 7E 00            [12] 1152 	mov	r6,#0x00
      0033B2 7F 00            [12] 1153 	mov	r7,#0x00
      0033B4                       1154 00111$:
      0033B4 C3               [12] 1155 	clr	c
      0033B5 EE               [12] 1156 	mov	a,r6
      0033B6 94 03            [12] 1157 	subb	a,#0x03
      0033B8 EF               [12] 1158 	mov	a,r7
      0033B9 64 80            [12] 1159 	xrl	a,#0x80
      0033BB 94 80            [12] 1160 	subb	a,#0x80
      0033BD 50 5B            [24] 1161 	jnc	00113$
                                   1162 ;	8051_i2c_eeprom.c:220: c = getchar();
      0033BF C0 07            [24] 1163 	push	ar7
      0033C1 C0 06            [24] 1164 	push	ar6
      0033C3 12 30 81         [24] 1165 	lcall	_getchar
      0033C6 AC 82            [24] 1166 	mov	r4,dpl
      0033C8 AD 83            [24] 1167 	mov	r5,dph
      0033CA D0 06            [24] 1168 	pop	ar6
      0033CC D0 07            [24] 1169 	pop	ar7
                                   1170 ;	8051_i2c_eeprom.c:223: if (c == '\r' || c == '\n') {
      0033CE BC 0D 02         [24] 1171 	cjne	r4,#0x0d,00200$
      0033D1 80 47            [24] 1172 	sjmp	00113$
      0033D3                       1173 00200$:
      0033D3 BC 0A 02         [24] 1174 	cjne	r4,#0x0a,00201$
      0033D6 80 42            [24] 1175 	sjmp	00113$
      0033D8                       1176 00201$:
                                   1177 ;	8051_i2c_eeprom.c:228: if ((c >= '0' && c <= '9') || 
      0033D8 BC 30 00         [24] 1178 	cjne	r4,#0x30,00202$
      0033DB                       1179 00202$:
      0033DB 40 05            [24] 1180 	jc	00108$
      0033DD EC               [12] 1181 	mov	a,r4
      0033DE 24 C6            [12] 1182 	add	a,#0xff - 0x39
      0033E0 50 14            [24] 1183 	jnc	00104$
      0033E2                       1184 00108$:
                                   1185 ;	8051_i2c_eeprom.c:229: (c >= 'a' && c <= 'f') || 
      0033E2 BC 61 00         [24] 1186 	cjne	r4,#0x61,00205$
      0033E5                       1187 00205$:
      0033E5 40 05            [24] 1188 	jc	00110$
      0033E7 EC               [12] 1189 	mov	a,r4
      0033E8 24 99            [12] 1190 	add	a,#0xff - 0x66
      0033EA 50 0A            [24] 1191 	jnc	00104$
      0033EC                       1192 00110$:
                                   1193 ;	8051_i2c_eeprom.c:230: (c >= 'A' && c <= 'F')) {
      0033EC BC 41 00         [24] 1194 	cjne	r4,#0x41,00208$
      0033EF                       1195 00208$:
      0033EF 40 C3            [24] 1196 	jc	00111$
      0033F1 EC               [12] 1197 	mov	a,r4
      0033F2 24 B9            [12] 1198 	add	a,#0xff - 0x46
      0033F4 40 BE            [24] 1199 	jc	00111$
      0033F6                       1200 00104$:
                                   1201 ;	8051_i2c_eeprom.c:232: input[i] = c;
      0033F6 EE               [12] 1202 	mov	a,r6
      0033F7 24 04            [12] 1203 	add	a,#_take_address_input_65537_72
      0033F9 F5 82            [12] 1204 	mov	dpl,a
      0033FB EF               [12] 1205 	mov	a,r7
      0033FC 34 04            [12] 1206 	addc	a,#(_take_address_input_65537_72 >> 8)
      0033FE F5 83            [12] 1207 	mov	dph,a
      003400 EC               [12] 1208 	mov	a,r4
      003401 F0               [24] 1209 	movx	@dptr,a
                                   1210 ;	8051_i2c_eeprom.c:233: putchar(c);  // Echo character back
      003402 7D 00            [12] 1211 	mov	r5,#0x00
      003404 8C 82            [24] 1212 	mov	dpl,r4
      003406 8D 83            [24] 1213 	mov	dph,r5
      003408 C0 07            [24] 1214 	push	ar7
      00340A C0 06            [24] 1215 	push	ar6
      00340C 12 30 62         [24] 1216 	lcall	_putchar
      00340F D0 06            [24] 1217 	pop	ar6
      003411 D0 07            [24] 1218 	pop	ar7
                                   1219 ;	8051_i2c_eeprom.c:234: i++;
      003413 0E               [12] 1220 	inc	r6
      003414 BE 00 9D         [24] 1221 	cjne	r6,#0x00,00111$
      003417 0F               [12] 1222 	inc	r7
      003418 80 9A            [24] 1223 	sjmp	00111$
      00341A                       1224 00113$:
                                   1225 ;	8051_i2c_eeprom.c:238: input[i] = '\0';  // Null-terminate the string
      00341A EE               [12] 1226 	mov	a,r6
      00341B 24 04            [12] 1227 	add	a,#_take_address_input_65537_72
      00341D F5 82            [12] 1228 	mov	dpl,a
      00341F EF               [12] 1229 	mov	a,r7
      003420 34 04            [12] 1230 	addc	a,#(_take_address_input_65537_72 >> 8)
      003422 F5 83            [12] 1231 	mov	dph,a
      003424 E4               [12] 1232 	clr	a
      003425 F0               [24] 1233 	movx	@dptr,a
                                   1234 ;	8051_i2c_eeprom.c:241: unsigned int address = 0;
      003426 90 04 08         [24] 1235 	mov	dptr,#_take_address_address_65538_76
      003429 F0               [24] 1236 	movx	@dptr,a
      00342A A3               [24] 1237 	inc	dptr
      00342B F0               [24] 1238 	movx	@dptr,a
                                   1239 ;	8051_i2c_eeprom.c:242: for(i = 0; input[i] != '\0'; i++) {
      00342C 7E 00            [12] 1240 	mov	r6,#0x00
      00342E 7F 00            [12] 1241 	mov	r7,#0x00
      003430                       1242 00129$:
      003430 EE               [12] 1243 	mov	a,r6
      003431 24 04            [12] 1244 	add	a,#_take_address_input_65537_72
      003433 F5 82            [12] 1245 	mov	dpl,a
      003435 EF               [12] 1246 	mov	a,r7
      003436 34 04            [12] 1247 	addc	a,#(_take_address_input_65537_72 >> 8)
      003438 F5 83            [12] 1248 	mov	dph,a
      00343A E0               [24] 1249 	movx	a,@dptr
      00343B FD               [12] 1250 	mov	r5,a
      00343C 70 03            [24] 1251 	jnz	00212$
      00343E 02 34 E9         [24] 1252 	ljmp	00125$
      003441                       1253 00212$:
                                   1254 ;	8051_i2c_eeprom.c:243: address = address * 16;
      003441 90 04 08         [24] 1255 	mov	dptr,#_take_address_address_65538_76
      003444 E0               [24] 1256 	movx	a,@dptr
      003445 FB               [12] 1257 	mov	r3,a
      003446 A3               [24] 1258 	inc	dptr
      003447 E0               [24] 1259 	movx	a,@dptr
      003448 C4               [12] 1260 	swap	a
      003449 54 F0            [12] 1261 	anl	a,#0xf0
      00344B CB               [12] 1262 	xch	a,r3
      00344C C4               [12] 1263 	swap	a
      00344D CB               [12] 1264 	xch	a,r3
      00344E 6B               [12] 1265 	xrl	a,r3
      00344F CB               [12] 1266 	xch	a,r3
      003450 54 F0            [12] 1267 	anl	a,#0xf0
      003452 CB               [12] 1268 	xch	a,r3
      003453 6B               [12] 1269 	xrl	a,r3
      003454 FC               [12] 1270 	mov	r4,a
      003455 90 04 08         [24] 1271 	mov	dptr,#_take_address_address_65538_76
      003458 EB               [12] 1272 	mov	a,r3
      003459 F0               [24] 1273 	movx	@dptr,a
      00345A EC               [12] 1274 	mov	a,r4
      00345B A3               [24] 1275 	inc	dptr
      00345C F0               [24] 1276 	movx	@dptr,a
                                   1277 ;	8051_i2c_eeprom.c:244: if(input[i] >= '0' && input[i] <= '9')
      00345D BD 30 00         [24] 1278 	cjne	r5,#0x30,00213$
      003460                       1279 00213$:
      003460 40 23            [24] 1280 	jc	00122$
      003462 ED               [12] 1281 	mov	a,r5
      003463 24 C6            [12] 1282 	add	a,#0xff - 0x39
      003465 40 1E            [24] 1283 	jc	00122$
                                   1284 ;	8051_i2c_eeprom.c:245: address += input[i] - '0';
      003467 7C 00            [12] 1285 	mov	r4,#0x00
      003469 ED               [12] 1286 	mov	a,r5
      00346A 24 D0            [12] 1287 	add	a,#0xd0
      00346C FD               [12] 1288 	mov	r5,a
      00346D EC               [12] 1289 	mov	a,r4
      00346E 34 FF            [12] 1290 	addc	a,#0xff
      003470 FC               [12] 1291 	mov	r4,a
      003471 90 04 08         [24] 1292 	mov	dptr,#_take_address_address_65538_76
      003474 E0               [24] 1293 	movx	a,@dptr
      003475 FA               [12] 1294 	mov	r2,a
      003476 A3               [24] 1295 	inc	dptr
      003477 E0               [24] 1296 	movx	a,@dptr
      003478 FB               [12] 1297 	mov	r3,a
      003479 90 04 08         [24] 1298 	mov	dptr,#_take_address_address_65538_76
      00347C ED               [12] 1299 	mov	a,r5
      00347D 2A               [12] 1300 	add	a,r2
      00347E F0               [24] 1301 	movx	@dptr,a
      00347F EC               [12] 1302 	mov	a,r4
      003480 3B               [12] 1303 	addc	a,r3
      003481 A3               [24] 1304 	inc	dptr
      003482 F0               [24] 1305 	movx	@dptr,a
      003483 80 5C            [24] 1306 	sjmp	00130$
      003485                       1307 00122$:
                                   1308 ;	8051_i2c_eeprom.c:246: else if(input[i] >= 'A' && input[i] <= 'F')
      003485 EE               [12] 1309 	mov	a,r6
      003486 24 04            [12] 1310 	add	a,#_take_address_input_65537_72
      003488 F5 82            [12] 1311 	mov	dpl,a
      00348A EF               [12] 1312 	mov	a,r7
      00348B 34 04            [12] 1313 	addc	a,#(_take_address_input_65537_72 >> 8)
      00348D F5 83            [12] 1314 	mov	dph,a
      00348F E0               [24] 1315 	movx	a,@dptr
      003490 FD               [12] 1316 	mov	r5,a
      003491 BD 41 00         [24] 1317 	cjne	r5,#0x41,00216$
      003494                       1318 00216$:
      003494 40 25            [24] 1319 	jc	00118$
      003496 ED               [12] 1320 	mov	a,r5
      003497 24 B9            [12] 1321 	add	a,#0xff - 0x46
      003499 40 20            [24] 1322 	jc	00118$
                                   1323 ;	8051_i2c_eeprom.c:247: address += input[i] - 'A' + 10;
      00349B 8D 03            [24] 1324 	mov	ar3,r5
      00349D 7C 00            [12] 1325 	mov	r4,#0x00
      00349F 74 C9            [12] 1326 	mov	a,#0xc9
      0034A1 2B               [12] 1327 	add	a,r3
      0034A2 FB               [12] 1328 	mov	r3,a
      0034A3 74 FF            [12] 1329 	mov	a,#0xff
      0034A5 3C               [12] 1330 	addc	a,r4
      0034A6 FC               [12] 1331 	mov	r4,a
      0034A7 90 04 08         [24] 1332 	mov	dptr,#_take_address_address_65538_76
      0034AA E0               [24] 1333 	movx	a,@dptr
      0034AB F9               [12] 1334 	mov	r1,a
      0034AC A3               [24] 1335 	inc	dptr
      0034AD E0               [24] 1336 	movx	a,@dptr
      0034AE FA               [12] 1337 	mov	r2,a
      0034AF 90 04 08         [24] 1338 	mov	dptr,#_take_address_address_65538_76
      0034B2 EB               [12] 1339 	mov	a,r3
      0034B3 29               [12] 1340 	add	a,r1
      0034B4 F0               [24] 1341 	movx	@dptr,a
      0034B5 EC               [12] 1342 	mov	a,r4
      0034B6 3A               [12] 1343 	addc	a,r2
      0034B7 A3               [24] 1344 	inc	dptr
      0034B8 F0               [24] 1345 	movx	@dptr,a
      0034B9 80 26            [24] 1346 	sjmp	00130$
      0034BB                       1347 00118$:
                                   1348 ;	8051_i2c_eeprom.c:248: else if(input[i] >= 'a' && input[i] <= 'f')
      0034BB BD 61 00         [24] 1349 	cjne	r5,#0x61,00219$
      0034BE                       1350 00219$:
      0034BE 40 21            [24] 1351 	jc	00130$
      0034C0 ED               [12] 1352 	mov	a,r5
      0034C1 24 99            [12] 1353 	add	a,#0xff - 0x66
      0034C3 40 1C            [24] 1354 	jc	00130$
                                   1355 ;	8051_i2c_eeprom.c:249: address += input[i] - 'a' + 10;
      0034C5 7C 00            [12] 1356 	mov	r4,#0x00
      0034C7 74 A9            [12] 1357 	mov	a,#0xa9
      0034C9 2D               [12] 1358 	add	a,r5
      0034CA FD               [12] 1359 	mov	r5,a
      0034CB 74 FF            [12] 1360 	mov	a,#0xff
      0034CD 3C               [12] 1361 	addc	a,r4
      0034CE FC               [12] 1362 	mov	r4,a
      0034CF 90 04 08         [24] 1363 	mov	dptr,#_take_address_address_65538_76
      0034D2 E0               [24] 1364 	movx	a,@dptr
      0034D3 FA               [12] 1365 	mov	r2,a
      0034D4 A3               [24] 1366 	inc	dptr
      0034D5 E0               [24] 1367 	movx	a,@dptr
      0034D6 FB               [12] 1368 	mov	r3,a
      0034D7 90 04 08         [24] 1369 	mov	dptr,#_take_address_address_65538_76
      0034DA ED               [12] 1370 	mov	a,r5
      0034DB 2A               [12] 1371 	add	a,r2
      0034DC F0               [24] 1372 	movx	@dptr,a
      0034DD EC               [12] 1373 	mov	a,r4
      0034DE 3B               [12] 1374 	addc	a,r3
      0034DF A3               [24] 1375 	inc	dptr
      0034E0 F0               [24] 1376 	movx	@dptr,a
      0034E1                       1377 00130$:
                                   1378 ;	8051_i2c_eeprom.c:242: for(i = 0; input[i] != '\0'; i++) {
      0034E1 0E               [12] 1379 	inc	r6
      0034E2 BE 00 01         [24] 1380 	cjne	r6,#0x00,00222$
      0034E5 0F               [12] 1381 	inc	r7
      0034E6                       1382 00222$:
      0034E6 02 34 30         [24] 1383 	ljmp	00129$
      0034E9                       1384 00125$:
                                   1385 ;	8051_i2c_eeprom.c:252: printf("\n\r│ Entered address: 0x%03X\n\r", address);
      0034E9 90 04 08         [24] 1386 	mov	dptr,#_take_address_address_65538_76
      0034EC E0               [24] 1387 	movx	a,@dptr
      0034ED FE               [12] 1388 	mov	r6,a
      0034EE A3               [24] 1389 	inc	dptr
      0034EF E0               [24] 1390 	movx	a,@dptr
      0034F0 FF               [12] 1391 	mov	r7,a
      0034F1 C0 07            [24] 1392 	push	ar7
      0034F3 C0 06            [24] 1393 	push	ar6
      0034F5 C0 06            [24] 1394 	push	ar6
      0034F7 C0 07            [24] 1395 	push	ar7
      0034F9 74 EF            [12] 1396 	mov	a,#___str_23
      0034FB C0 E0            [24] 1397 	push	acc
      0034FD 74 51            [12] 1398 	mov	a,#(___str_23 >> 8)
      0034FF C0 E0            [24] 1399 	push	acc
      003501 74 80            [12] 1400 	mov	a,#0x80
      003503 C0 E0            [24] 1401 	push	acc
      003505 12 3F B0         [24] 1402 	lcall	_printf
      003508 E5 81            [12] 1403 	mov	a,sp
      00350A 24 FB            [12] 1404 	add	a,#0xfb
      00350C F5 81            [12] 1405 	mov	sp,a
      00350E D0 06            [24] 1406 	pop	ar6
      003510 D0 07            [24] 1407 	pop	ar7
                                   1408 ;	8051_i2c_eeprom.c:253: if(address > 0x7ff) 
      003512 C3               [12] 1409 	clr	c
      003513 74 FF            [12] 1410 	mov	a,#0xff
      003515 9E               [12] 1411 	subb	a,r6
      003516 74 07            [12] 1412 	mov	a,#0x07
      003518 9F               [12] 1413 	subb	a,r7
      003519 50 5F            [24] 1414 	jnc	00127$
                                   1415 ;	8051_i2c_eeprom.c:255: printf("╔══════════════════════════════════════════╗\n\r");
      00351B 74 0F            [12] 1416 	mov	a,#___str_24
      00351D C0 E0            [24] 1417 	push	acc
      00351F 74 52            [12] 1418 	mov	a,#(___str_24 >> 8)
      003521 C0 E0            [24] 1419 	push	acc
      003523 74 80            [12] 1420 	mov	a,#0x80
      003525 C0 E0            [24] 1421 	push	acc
      003527 12 3F B0         [24] 1422 	lcall	_printf
      00352A 15 81            [12] 1423 	dec	sp
      00352C 15 81            [12] 1424 	dec	sp
      00352E 15 81            [12] 1425 	dec	sp
                                   1426 ;	8051_i2c_eeprom.c:256: printf("║       ! ADDRESS OUT OF RANGE !         ║\n\r");
      003530 74 96            [12] 1427 	mov	a,#___str_25
      003532 C0 E0            [24] 1428 	push	acc
      003534 74 52            [12] 1429 	mov	a,#(___str_25 >> 8)
      003536 C0 E0            [24] 1430 	push	acc
      003538 74 80            [12] 1431 	mov	a,#0x80
      00353A C0 E0            [24] 1432 	push	acc
      00353C 12 3F B0         [24] 1433 	lcall	_printf
      00353F 15 81            [12] 1434 	dec	sp
      003541 15 81            [12] 1435 	dec	sp
      003543 15 81            [12] 1436 	dec	sp
                                   1437 ;	8051_i2c_eeprom.c:257: printf("║     Please Enter Valid Address         ║\n\r");
      003545 74 C7            [12] 1438 	mov	a,#___str_26
      003547 C0 E0            [24] 1439 	push	acc
      003549 74 52            [12] 1440 	mov	a,#(___str_26 >> 8)
      00354B C0 E0            [24] 1441 	push	acc
      00354D 74 80            [12] 1442 	mov	a,#0x80
      00354F C0 E0            [24] 1443 	push	acc
      003551 12 3F B0         [24] 1444 	lcall	_printf
      003554 15 81            [12] 1445 	dec	sp
      003556 15 81            [12] 1446 	dec	sp
      003558 15 81            [12] 1447 	dec	sp
                                   1448 ;	8051_i2c_eeprom.c:258: printf("╚══════════════════════════════════════════╝\n\r");
      00355A 74 F8            [12] 1449 	mov	a,#___str_27
      00355C C0 E0            [24] 1450 	push	acc
      00355E 74 52            [12] 1451 	mov	a,#(___str_27 >> 8)
      003560 C0 E0            [24] 1452 	push	acc
      003562 74 80            [12] 1453 	mov	a,#0x80
      003564 C0 E0            [24] 1454 	push	acc
      003566 12 3F B0         [24] 1455 	lcall	_printf
      003569 15 81            [12] 1456 	dec	sp
      00356B 15 81            [12] 1457 	dec	sp
      00356D 15 81            [12] 1458 	dec	sp
                                   1459 ;	8051_i2c_eeprom.c:259: address_range_flag = 0;
      00356F 90 04 55         [24] 1460 	mov	dptr,#_address_range_flag
      003572 E4               [12] 1461 	clr	a
      003573 F0               [24] 1462 	movx	@dptr,a
      003574 A3               [24] 1463 	inc	dptr
      003575 F0               [24] 1464 	movx	@dptr,a
                                   1465 ;	8051_i2c_eeprom.c:260: return 0;
      003576 90 00 00         [24] 1466 	mov	dptr,#0x0000
      003579 22               [24] 1467 	ret
      00357A                       1468 00127$:
                                   1469 ;	8051_i2c_eeprom.c:264: address = address%256;     //word address
      00357A 90 04 08         [24] 1470 	mov	dptr,#_take_address_address_65538_76
      00357D EE               [12] 1471 	mov	a,r6
      00357E F0               [24] 1472 	movx	@dptr,a
      00357F E4               [12] 1473 	clr	a
      003580 A3               [24] 1474 	inc	dptr
      003581 F0               [24] 1475 	movx	@dptr,a
                                   1476 ;	8051_i2c_eeprom.c:267: return address;
      003582 90 04 08         [24] 1477 	mov	dptr,#_take_address_address_65538_76
      003585 E0               [24] 1478 	movx	a,@dptr
      003586 FE               [12] 1479 	mov	r6,a
      003587 A3               [24] 1480 	inc	dptr
      003588 E0               [24] 1481 	movx	a,@dptr
                                   1482 ;	8051_i2c_eeprom.c:268: }
      003589 8E 82            [24] 1483 	mov	dpl,r6
      00358B F5 83            [12] 1484 	mov	dph,a
      00358D 22               [24] 1485 	ret
                                   1486 ;------------------------------------------------------------
                                   1487 ;Allocation info for local variables in function 'take_data'
                                   1488 ;------------------------------------------------------------
                                   1489 ;input                     Allocated with name '_take_data_input_65537_82'
                                   1490 ;i                         Allocated with name '_take_data_i_65537_82'
                                   1491 ;c                         Allocated with name '_take_data_c_65537_82'
                                   1492 ;data                      Allocated with name '_take_data_data_65538_86'
                                   1493 ;------------------------------------------------------------
                                   1494 ;	8051_i2c_eeprom.c:276: unsigned char take_data()
                                   1495 ;	-----------------------------------------
                                   1496 ;	 function take_data
                                   1497 ;	-----------------------------------------
      00358E                       1498 _take_data:
                                   1499 ;	8051_i2c_eeprom.c:278: printf("│ Enter data (hex, up to 2 characters): \n\r|");
      00358E 74 7F            [12] 1500 	mov	a,#___str_28
      003590 C0 E0            [24] 1501 	push	acc
      003592 74 53            [12] 1502 	mov	a,#(___str_28 >> 8)
      003594 C0 E0            [24] 1503 	push	acc
      003596 74 80            [12] 1504 	mov	a,#0x80
      003598 C0 E0            [24] 1505 	push	acc
      00359A 12 3F B0         [24] 1506 	lcall	_printf
      00359D 15 81            [12] 1507 	dec	sp
      00359F 15 81            [12] 1508 	dec	sp
      0035A1 15 81            [12] 1509 	dec	sp
                                   1510 ;	8051_i2c_eeprom.c:279: char input[4] = {0};  // Array for 3 hex chars + null terminator
      0035A3 90 04 0A         [24] 1511 	mov	dptr,#_take_data_input_65537_82
      0035A6 E4               [12] 1512 	clr	a
      0035A7 F0               [24] 1513 	movx	@dptr,a
      0035A8 90 04 0B         [24] 1514 	mov	dptr,#(_take_data_input_65537_82 + 0x0001)
      0035AB F0               [24] 1515 	movx	@dptr,a
      0035AC 90 04 0C         [24] 1516 	mov	dptr,#(_take_data_input_65537_82 + 0x0002)
      0035AF F0               [24] 1517 	movx	@dptr,a
      0035B0 90 04 0D         [24] 1518 	mov	dptr,#(_take_data_input_65537_82 + 0x0003)
      0035B3 F0               [24] 1519 	movx	@dptr,a
                                   1520 ;	8051_i2c_eeprom.c:283: printf("$ ");
      0035B4 74 AD            [12] 1521 	mov	a,#___str_29
      0035B6 C0 E0            [24] 1522 	push	acc
      0035B8 74 53            [12] 1523 	mov	a,#(___str_29 >> 8)
      0035BA C0 E0            [24] 1524 	push	acc
      0035BC 74 80            [12] 1525 	mov	a,#0x80
      0035BE C0 E0            [24] 1526 	push	acc
      0035C0 12 3F B0         [24] 1527 	lcall	_printf
      0035C3 15 81            [12] 1528 	dec	sp
      0035C5 15 81            [12] 1529 	dec	sp
      0035C7 15 81            [12] 1530 	dec	sp
                                   1531 ;	8051_i2c_eeprom.c:285: while (i < 3) {
      0035C9 7E 00            [12] 1532 	mov	r6,#0x00
      0035CB 7F 00            [12] 1533 	mov	r7,#0x00
      0035CD                       1534 00111$:
      0035CD C3               [12] 1535 	clr	c
      0035CE EE               [12] 1536 	mov	a,r6
      0035CF 94 03            [12] 1537 	subb	a,#0x03
      0035D1 EF               [12] 1538 	mov	a,r7
      0035D2 64 80            [12] 1539 	xrl	a,#0x80
      0035D4 94 80            [12] 1540 	subb	a,#0x80
      0035D6 50 5B            [24] 1541 	jnc	00113$
                                   1542 ;	8051_i2c_eeprom.c:287: c = getchar();
      0035D8 C0 07            [24] 1543 	push	ar7
      0035DA C0 06            [24] 1544 	push	ar6
      0035DC 12 30 81         [24] 1545 	lcall	_getchar
      0035DF AC 82            [24] 1546 	mov	r4,dpl
      0035E1 AD 83            [24] 1547 	mov	r5,dph
      0035E3 D0 06            [24] 1548 	pop	ar6
      0035E5 D0 07            [24] 1549 	pop	ar7
                                   1550 ;	8051_i2c_eeprom.c:290: if (c == '\r' || c == '\n') {
      0035E7 BC 0D 02         [24] 1551 	cjne	r4,#0x0d,00200$
      0035EA 80 47            [24] 1552 	sjmp	00113$
      0035EC                       1553 00200$:
      0035EC BC 0A 02         [24] 1554 	cjne	r4,#0x0a,00201$
      0035EF 80 42            [24] 1555 	sjmp	00113$
      0035F1                       1556 00201$:
                                   1557 ;	8051_i2c_eeprom.c:295: if ((c >= '0' && c <= '9') ||
      0035F1 BC 30 00         [24] 1558 	cjne	r4,#0x30,00202$
      0035F4                       1559 00202$:
      0035F4 40 05            [24] 1560 	jc	00108$
      0035F6 EC               [12] 1561 	mov	a,r4
      0035F7 24 C6            [12] 1562 	add	a,#0xff - 0x39
      0035F9 50 14            [24] 1563 	jnc	00104$
      0035FB                       1564 00108$:
                                   1565 ;	8051_i2c_eeprom.c:296: (c >= 'a' && c <= 'f') ||
      0035FB BC 61 00         [24] 1566 	cjne	r4,#0x61,00205$
      0035FE                       1567 00205$:
      0035FE 40 05            [24] 1568 	jc	00110$
      003600 EC               [12] 1569 	mov	a,r4
      003601 24 99            [12] 1570 	add	a,#0xff - 0x66
      003603 50 0A            [24] 1571 	jnc	00104$
      003605                       1572 00110$:
                                   1573 ;	8051_i2c_eeprom.c:297: (c >= 'A' && c <= 'F')) {
      003605 BC 41 00         [24] 1574 	cjne	r4,#0x41,00208$
      003608                       1575 00208$:
      003608 40 C3            [24] 1576 	jc	00111$
      00360A EC               [12] 1577 	mov	a,r4
      00360B 24 B9            [12] 1578 	add	a,#0xff - 0x46
      00360D 40 BE            [24] 1579 	jc	00111$
      00360F                       1580 00104$:
                                   1581 ;	8051_i2c_eeprom.c:299: input[i] = c;
      00360F EE               [12] 1582 	mov	a,r6
      003610 24 0A            [12] 1583 	add	a,#_take_data_input_65537_82
      003612 F5 82            [12] 1584 	mov	dpl,a
      003614 EF               [12] 1585 	mov	a,r7
      003615 34 04            [12] 1586 	addc	a,#(_take_data_input_65537_82 >> 8)
      003617 F5 83            [12] 1587 	mov	dph,a
      003619 EC               [12] 1588 	mov	a,r4
      00361A F0               [24] 1589 	movx	@dptr,a
                                   1590 ;	8051_i2c_eeprom.c:300: putchar(c);  // Echo character back
      00361B 7D 00            [12] 1591 	mov	r5,#0x00
      00361D 8C 82            [24] 1592 	mov	dpl,r4
      00361F 8D 83            [24] 1593 	mov	dph,r5
      003621 C0 07            [24] 1594 	push	ar7
      003623 C0 06            [24] 1595 	push	ar6
      003625 12 30 62         [24] 1596 	lcall	_putchar
      003628 D0 06            [24] 1597 	pop	ar6
      00362A D0 07            [24] 1598 	pop	ar7
                                   1599 ;	8051_i2c_eeprom.c:301: i++;
      00362C 0E               [12] 1600 	inc	r6
      00362D BE 00 9D         [24] 1601 	cjne	r6,#0x00,00111$
      003630 0F               [12] 1602 	inc	r7
      003631 80 9A            [24] 1603 	sjmp	00111$
      003633                       1604 00113$:
                                   1605 ;	8051_i2c_eeprom.c:305: input[i] = '\0';  // Null-terminate the string
      003633 EE               [12] 1606 	mov	a,r6
      003634 24 0A            [12] 1607 	add	a,#_take_data_input_65537_82
      003636 F5 82            [12] 1608 	mov	dpl,a
      003638 EF               [12] 1609 	mov	a,r7
      003639 34 04            [12] 1610 	addc	a,#(_take_data_input_65537_82 >> 8)
      00363B F5 83            [12] 1611 	mov	dph,a
      00363D E4               [12] 1612 	clr	a
      00363E F0               [24] 1613 	movx	@dptr,a
                                   1614 ;	8051_i2c_eeprom.c:308: unsigned char data = 0;
      00363F 90 04 0E         [24] 1615 	mov	dptr,#_take_data_data_65538_86
      003642 F0               [24] 1616 	movx	@dptr,a
                                   1617 ;	8051_i2c_eeprom.c:309: for (i = 0; input[i] != '\0'; i++) {
      003643 7E 00            [12] 1618 	mov	r6,#0x00
      003645 7F 00            [12] 1619 	mov	r7,#0x00
      003647                       1620 00129$:
      003647 EE               [12] 1621 	mov	a,r6
      003648 24 0A            [12] 1622 	add	a,#_take_data_input_65537_82
      00364A F5 82            [12] 1623 	mov	dpl,a
      00364C EF               [12] 1624 	mov	a,r7
      00364D 34 04            [12] 1625 	addc	a,#(_take_data_input_65537_82 >> 8)
      00364F F5 83            [12] 1626 	mov	dph,a
      003651 E0               [24] 1627 	movx	a,@dptr
      003652 FD               [12] 1628 	mov	r5,a
      003653 70 03            [24] 1629 	jnz	00212$
      003655 02 36 BA         [24] 1630 	ljmp	00125$
      003658                       1631 00212$:
                                   1632 ;	8051_i2c_eeprom.c:310: data = data * 16;
      003658 90 04 0E         [24] 1633 	mov	dptr,#_take_data_data_65538_86
      00365B E0               [24] 1634 	movx	a,@dptr
      00365C C4               [12] 1635 	swap	a
      00365D 54 F0            [12] 1636 	anl	a,#0xf0
      00365F FC               [12] 1637 	mov	r4,a
      003660 F0               [24] 1638 	movx	@dptr,a
                                   1639 ;	8051_i2c_eeprom.c:311: if (input[i] >= '0' && input[i] <= '9')
      003661 BD 30 00         [24] 1640 	cjne	r5,#0x30,00213$
      003664                       1641 00213$:
      003664 40 12            [24] 1642 	jc	00122$
      003666 ED               [12] 1643 	mov	a,r5
      003667 24 C6            [12] 1644 	add	a,#0xff - 0x39
      003669 40 0D            [24] 1645 	jc	00122$
                                   1646 ;	8051_i2c_eeprom.c:312: data += input[i] - '0';
      00366B ED               [12] 1647 	mov	a,r5
      00366C 24 D0            [12] 1648 	add	a,#0xd0
      00366E FD               [12] 1649 	mov	r5,a
      00366F 90 04 0E         [24] 1650 	mov	dptr,#_take_data_data_65538_86
      003672 E0               [24] 1651 	movx	a,@dptr
      003673 FC               [12] 1652 	mov	r4,a
      003674 2D               [12] 1653 	add	a,r5
      003675 F0               [24] 1654 	movx	@dptr,a
      003676 80 3A            [24] 1655 	sjmp	00130$
      003678                       1656 00122$:
                                   1657 ;	8051_i2c_eeprom.c:313: else if (input[i] >= 'A' && input[i] <= 'F')
      003678 EE               [12] 1658 	mov	a,r6
      003679 24 0A            [12] 1659 	add	a,#_take_data_input_65537_82
      00367B F5 82            [12] 1660 	mov	dpl,a
      00367D EF               [12] 1661 	mov	a,r7
      00367E 34 04            [12] 1662 	addc	a,#(_take_data_input_65537_82 >> 8)
      003680 F5 83            [12] 1663 	mov	dph,a
      003682 E0               [24] 1664 	movx	a,@dptr
      003683 FD               [12] 1665 	mov	r5,a
      003684 BD 41 00         [24] 1666 	cjne	r5,#0x41,00216$
      003687                       1667 00216$:
      003687 40 14            [24] 1668 	jc	00118$
      003689 ED               [12] 1669 	mov	a,r5
      00368A 24 B9            [12] 1670 	add	a,#0xff - 0x46
      00368C 40 0F            [24] 1671 	jc	00118$
                                   1672 ;	8051_i2c_eeprom.c:314: data += input[i] - 'A' + 10;
      00368E 8D 04            [24] 1673 	mov	ar4,r5
      003690 74 C9            [12] 1674 	mov	a,#0xc9
      003692 2C               [12] 1675 	add	a,r4
      003693 FC               [12] 1676 	mov	r4,a
      003694 90 04 0E         [24] 1677 	mov	dptr,#_take_data_data_65538_86
      003697 E0               [24] 1678 	movx	a,@dptr
      003698 FB               [12] 1679 	mov	r3,a
      003699 2C               [12] 1680 	add	a,r4
      00369A F0               [24] 1681 	movx	@dptr,a
      00369B 80 15            [24] 1682 	sjmp	00130$
      00369D                       1683 00118$:
                                   1684 ;	8051_i2c_eeprom.c:315: else if (input[i] >= 'a' && input[i] <= 'f')
      00369D BD 61 00         [24] 1685 	cjne	r5,#0x61,00219$
      0036A0                       1686 00219$:
      0036A0 40 10            [24] 1687 	jc	00130$
      0036A2 ED               [12] 1688 	mov	a,r5
      0036A3 24 99            [12] 1689 	add	a,#0xff - 0x66
      0036A5 40 0B            [24] 1690 	jc	00130$
                                   1691 ;	8051_i2c_eeprom.c:316: data += input[i] - 'a' + 10;
      0036A7 74 A9            [12] 1692 	mov	a,#0xa9
      0036A9 2D               [12] 1693 	add	a,r5
      0036AA FD               [12] 1694 	mov	r5,a
      0036AB 90 04 0E         [24] 1695 	mov	dptr,#_take_data_data_65538_86
      0036AE E0               [24] 1696 	movx	a,@dptr
      0036AF FC               [12] 1697 	mov	r4,a
      0036B0 2D               [12] 1698 	add	a,r5
      0036B1 F0               [24] 1699 	movx	@dptr,a
      0036B2                       1700 00130$:
                                   1701 ;	8051_i2c_eeprom.c:309: for (i = 0; input[i] != '\0'; i++) {
      0036B2 0E               [12] 1702 	inc	r6
      0036B3 BE 00 01         [24] 1703 	cjne	r6,#0x00,00222$
      0036B6 0F               [12] 1704 	inc	r7
      0036B7                       1705 00222$:
      0036B7 02 36 47         [24] 1706 	ljmp	00129$
      0036BA                       1707 00125$:
                                   1708 ;	8051_i2c_eeprom.c:319: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      0036BA 90 04 0E         [24] 1709 	mov	dptr,#_take_data_data_65538_86
      0036BD E0               [24] 1710 	movx	a,@dptr
      0036BE FF               [12] 1711 	mov	r7,a
      0036BF FD               [12] 1712 	mov	r5,a
      0036C0 7E 00            [12] 1713 	mov	r6,#0x00
      0036C2 C0 07            [24] 1714 	push	ar7
      0036C4 C0 05            [24] 1715 	push	ar5
      0036C6 C0 06            [24] 1716 	push	ar6
      0036C8 74 B0            [12] 1717 	mov	a,#___str_30
      0036CA C0 E0            [24] 1718 	push	acc
      0036CC 74 53            [12] 1719 	mov	a,#(___str_30 >> 8)
      0036CE C0 E0            [24] 1720 	push	acc
      0036D0 74 80            [12] 1721 	mov	a,#0x80
      0036D2 C0 E0            [24] 1722 	push	acc
      0036D4 12 3F B0         [24] 1723 	lcall	_printf
      0036D7 E5 81            [12] 1724 	mov	a,sp
      0036D9 24 FB            [12] 1725 	add	a,#0xfb
      0036DB F5 81            [12] 1726 	mov	sp,a
      0036DD D0 07            [24] 1727 	pop	ar7
                                   1728 ;	8051_i2c_eeprom.c:320: if(data > 0xfe)
      0036DF EF               [12] 1729 	mov	a,r7
      0036E0 24 01            [12] 1730 	add	a,#0xff - 0xfe
      0036E2 50 20            [24] 1731 	jnc	00127$
                                   1732 ;	8051_i2c_eeprom.c:322: printf("Data out of Range\n\r");
      0036E4 74 CD            [12] 1733 	mov	a,#___str_31
      0036E6 C0 E0            [24] 1734 	push	acc
      0036E8 74 53            [12] 1735 	mov	a,#(___str_31 >> 8)
      0036EA C0 E0            [24] 1736 	push	acc
      0036EC 74 80            [12] 1737 	mov	a,#0x80
      0036EE C0 E0            [24] 1738 	push	acc
      0036F0 12 3F B0         [24] 1739 	lcall	_printf
      0036F3 15 81            [12] 1740 	dec	sp
      0036F5 15 81            [12] 1741 	dec	sp
      0036F7 15 81            [12] 1742 	dec	sp
                                   1743 ;	8051_i2c_eeprom.c:323: data_range_flag = 0;
      0036F9 90 04 57         [24] 1744 	mov	dptr,#_data_range_flag
      0036FC E4               [12] 1745 	clr	a
      0036FD F0               [24] 1746 	movx	@dptr,a
      0036FE A3               [24] 1747 	inc	dptr
      0036FF F0               [24] 1748 	movx	@dptr,a
                                   1749 ;	8051_i2c_eeprom.c:324: return 0;
      003700 75 82 00         [24] 1750 	mov	dpl,#0x00
      003703 22               [24] 1751 	ret
      003704                       1752 00127$:
                                   1753 ;	8051_i2c_eeprom.c:326: return data;
      003704 8F 82            [24] 1754 	mov	dpl,r7
                                   1755 ;	8051_i2c_eeprom.c:328: }
      003706 22               [24] 1756 	ret
                                   1757 ;------------------------------------------------------------
                                   1758 ;Allocation info for local variables in function 'eeprom_write'
                                   1759 ;------------------------------------------------------------
                                   1760 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                   1761 ;address                   Allocated with name '_eeprom_write_address_65536_90'
                                   1762 ;i                         Allocated with name '_eeprom_write_i_131072_95'
                                   1763 ;------------------------------------------------------------
                                   1764 ;	8051_i2c_eeprom.c:344: int eeprom_write(unsigned int address, unsigned char data) 
                                   1765 ;	-----------------------------------------
                                   1766 ;	 function eeprom_write
                                   1767 ;	-----------------------------------------
      003707                       1768 _eeprom_write:
      003707 AF 83            [24] 1769 	mov	r7,dph
      003709 E5 82            [12] 1770 	mov	a,dpl
      00370B 90 04 10         [24] 1771 	mov	dptr,#_eeprom_write_address_65536_90
      00370E F0               [24] 1772 	movx	@dptr,a
      00370F EF               [12] 1773 	mov	a,r7
      003710 A3               [24] 1774 	inc	dptr
      003711 F0               [24] 1775 	movx	@dptr,a
                                   1776 ;	8051_i2c_eeprom.c:347: i2c_start();
      003712 12 3A 4A         [24] 1777 	lcall	_i2c_start
                                   1778 ;	8051_i2c_eeprom.c:350: if(!i2c_write(EEPROM_ID | block | WRITE)) {
      003715 90 04 59         [24] 1779 	mov	dptr,#_block
      003718 E0               [24] 1780 	movx	a,@dptr
      003719 FE               [12] 1781 	mov	r6,a
      00371A A3               [24] 1782 	inc	dptr
      00371B E0               [24] 1783 	movx	a,@dptr
      00371C 43 06 A0         [24] 1784 	orl	ar6,#0xa0
      00371F 8E 82            [24] 1785 	mov	dpl,r6
      003721 12 39 5D         [24] 1786 	lcall	_i2c_write
      003724 E5 82            [12] 1787 	mov	a,dpl
      003726 85 83 F0         [24] 1788 	mov	b,dph
      003729 45 F0            [12] 1789 	orl	a,b
      00372B 70 1C            [24] 1790 	jnz	00102$
                                   1791 ;	8051_i2c_eeprom.c:351: printf("Error: No ACK for device address (write)\n\r");
      00372D 74 E1            [12] 1792 	mov	a,#___str_32
      00372F C0 E0            [24] 1793 	push	acc
      003731 74 53            [12] 1794 	mov	a,#(___str_32 >> 8)
      003733 C0 E0            [24] 1795 	push	acc
      003735 74 80            [12] 1796 	mov	a,#0x80
      003737 C0 E0            [24] 1797 	push	acc
      003739 12 3F B0         [24] 1798 	lcall	_printf
      00373C 15 81            [12] 1799 	dec	sp
      00373E 15 81            [12] 1800 	dec	sp
      003740 15 81            [12] 1801 	dec	sp
                                   1802 ;	8051_i2c_eeprom.c:352: i2c_stop();
      003742 12 3D 51         [24] 1803 	lcall	_i2c_stop
                                   1804 ;	8051_i2c_eeprom.c:353: return 0;
      003745 90 00 00         [24] 1805 	mov	dptr,#0x0000
      003748 22               [24] 1806 	ret
      003749                       1807 00102$:
                                   1808 ;	8051_i2c_eeprom.c:357: if(!i2c_write((unsigned char)address)) {
      003749 90 04 10         [24] 1809 	mov	dptr,#_eeprom_write_address_65536_90
      00374C E0               [24] 1810 	movx	a,@dptr
      00374D FE               [12] 1811 	mov	r6,a
      00374E A3               [24] 1812 	inc	dptr
      00374F E0               [24] 1813 	movx	a,@dptr
      003750 FF               [12] 1814 	mov	r7,a
      003751 8E 05            [24] 1815 	mov	ar5,r6
      003753 8D 82            [24] 1816 	mov	dpl,r5
      003755 C0 07            [24] 1817 	push	ar7
      003757 C0 06            [24] 1818 	push	ar6
      003759 12 39 5D         [24] 1819 	lcall	_i2c_write
      00375C E5 82            [12] 1820 	mov	a,dpl
      00375E 85 83 F0         [24] 1821 	mov	b,dph
      003761 D0 06            [24] 1822 	pop	ar6
      003763 D0 07            [24] 1823 	pop	ar7
      003765 45 F0            [12] 1824 	orl	a,b
      003767 70 1C            [24] 1825 	jnz	00104$
                                   1826 ;	8051_i2c_eeprom.c:358: printf("Error: No ACK for memory address\n\r");
      003769 74 0C            [12] 1827 	mov	a,#___str_33
      00376B C0 E0            [24] 1828 	push	acc
      00376D 74 54            [12] 1829 	mov	a,#(___str_33 >> 8)
      00376F C0 E0            [24] 1830 	push	acc
      003771 74 80            [12] 1831 	mov	a,#0x80
      003773 C0 E0            [24] 1832 	push	acc
      003775 12 3F B0         [24] 1833 	lcall	_printf
      003778 15 81            [12] 1834 	dec	sp
      00377A 15 81            [12] 1835 	dec	sp
      00377C 15 81            [12] 1836 	dec	sp
                                   1837 ;	8051_i2c_eeprom.c:359: i2c_stop();
      00377E 12 3D 51         [24] 1838 	lcall	_i2c_stop
                                   1839 ;	8051_i2c_eeprom.c:360: return 0;
      003781 90 00 00         [24] 1840 	mov	dptr,#0x0000
      003784 22               [24] 1841 	ret
      003785                       1842 00104$:
                                   1843 ;	8051_i2c_eeprom.c:364: if(!i2c_write(data)) {
      003785 90 04 0F         [24] 1844 	mov	dptr,#_eeprom_write_PARM_2
      003788 E0               [24] 1845 	movx	a,@dptr
      003789 FD               [12] 1846 	mov	r5,a
      00378A F5 82            [12] 1847 	mov	dpl,a
      00378C C0 07            [24] 1848 	push	ar7
      00378E C0 06            [24] 1849 	push	ar6
      003790 C0 05            [24] 1850 	push	ar5
      003792 12 39 5D         [24] 1851 	lcall	_i2c_write
      003795 E5 82            [12] 1852 	mov	a,dpl
      003797 85 83 F0         [24] 1853 	mov	b,dph
      00379A D0 05            [24] 1854 	pop	ar5
      00379C D0 06            [24] 1855 	pop	ar6
      00379E D0 07            [24] 1856 	pop	ar7
      0037A0 45 F0            [12] 1857 	orl	a,b
      0037A2 70 1C            [24] 1858 	jnz	00106$
                                   1859 ;	8051_i2c_eeprom.c:365: printf("Error: No ACK for data\n\r");
      0037A4 74 2F            [12] 1860 	mov	a,#___str_34
      0037A6 C0 E0            [24] 1861 	push	acc
      0037A8 74 54            [12] 1862 	mov	a,#(___str_34 >> 8)
      0037AA C0 E0            [24] 1863 	push	acc
      0037AC 74 80            [12] 1864 	mov	a,#0x80
      0037AE C0 E0            [24] 1865 	push	acc
      0037B0 12 3F B0         [24] 1866 	lcall	_printf
      0037B3 15 81            [12] 1867 	dec	sp
      0037B5 15 81            [12] 1868 	dec	sp
      0037B7 15 81            [12] 1869 	dec	sp
                                   1870 ;	8051_i2c_eeprom.c:366: i2c_stop();
      0037B9 12 3D 51         [24] 1871 	lcall	_i2c_stop
                                   1872 ;	8051_i2c_eeprom.c:367: return 0;
      0037BC 90 00 00         [24] 1873 	mov	dptr,#0x0000
      0037BF 22               [24] 1874 	ret
      0037C0                       1875 00106$:
                                   1876 ;	8051_i2c_eeprom.c:370: i2c_stop();
      0037C0 C0 07            [24] 1877 	push	ar7
      0037C2 C0 06            [24] 1878 	push	ar6
      0037C4 C0 05            [24] 1879 	push	ar5
      0037C6 12 3D 51         [24] 1880 	lcall	_i2c_stop
      0037C9 D0 05            [24] 1881 	pop	ar5
      0037CB D0 06            [24] 1882 	pop	ar6
      0037CD D0 07            [24] 1883 	pop	ar7
                                   1884 ;	8051_i2c_eeprom.c:372: for(int i = 0; i<10; i++)
      0037CF 7B 00            [12] 1885 	mov	r3,#0x00
      0037D1 7C 00            [12] 1886 	mov	r4,#0x00
      0037D3                       1887 00109$:
      0037D3 C3               [12] 1888 	clr	c
      0037D4 EB               [12] 1889 	mov	a,r3
      0037D5 94 0A            [12] 1890 	subb	a,#0x0a
      0037D7 EC               [12] 1891 	mov	a,r4
      0037D8 64 80            [12] 1892 	xrl	a,#0x80
      0037DA 94 80            [12] 1893 	subb	a,#0x80
      0037DC 50 1E            [24] 1894 	jnc	00107$
                                   1895 ;	8051_i2c_eeprom.c:374: i2c_delay();
      0037DE C0 07            [24] 1896 	push	ar7
      0037E0 C0 06            [24] 1897 	push	ar6
      0037E2 C0 05            [24] 1898 	push	ar5
      0037E4 C0 04            [24] 1899 	push	ar4
      0037E6 C0 03            [24] 1900 	push	ar3
      0037E8 12 3D 8A         [24] 1901 	lcall	_i2c_delay
      0037EB D0 03            [24] 1902 	pop	ar3
      0037ED D0 04            [24] 1903 	pop	ar4
      0037EF D0 05            [24] 1904 	pop	ar5
      0037F1 D0 06            [24] 1905 	pop	ar6
      0037F3 D0 07            [24] 1906 	pop	ar7
                                   1907 ;	8051_i2c_eeprom.c:372: for(int i = 0; i<10; i++)
      0037F5 0B               [12] 1908 	inc	r3
      0037F6 BB 00 DA         [24] 1909 	cjne	r3,#0x00,00109$
      0037F9 0C               [12] 1910 	inc	r4
      0037FA 80 D7            [24] 1911 	sjmp	00109$
      0037FC                       1912 00107$:
                                   1913 ;	8051_i2c_eeprom.c:377: printf("| Writing at Address 0x%03X Data 0x%02X          |\n\r", address, data);
      0037FC 7C 00            [12] 1914 	mov	r4,#0x00
      0037FE C0 05            [24] 1915 	push	ar5
      003800 C0 04            [24] 1916 	push	ar4
      003802 C0 06            [24] 1917 	push	ar6
      003804 C0 07            [24] 1918 	push	ar7
      003806 74 48            [12] 1919 	mov	a,#___str_35
      003808 C0 E0            [24] 1920 	push	acc
      00380A 74 54            [12] 1921 	mov	a,#(___str_35 >> 8)
      00380C C0 E0            [24] 1922 	push	acc
      00380E 74 80            [12] 1923 	mov	a,#0x80
      003810 C0 E0            [24] 1924 	push	acc
      003812 12 3F B0         [24] 1925 	lcall	_printf
      003815 E5 81            [12] 1926 	mov	a,sp
      003817 24 F9            [12] 1927 	add	a,#0xf9
      003819 F5 81            [12] 1928 	mov	sp,a
                                   1929 ;	8051_i2c_eeprom.c:378: printf("│ Write successful!                             │\n\r");
      00381B 74 7D            [12] 1930 	mov	a,#___str_36
      00381D C0 E0            [24] 1931 	push	acc
      00381F 74 54            [12] 1932 	mov	a,#(___str_36 >> 8)
      003821 C0 E0            [24] 1933 	push	acc
      003823 74 80            [12] 1934 	mov	a,#0x80
      003825 C0 E0            [24] 1935 	push	acc
      003827 12 3F B0         [24] 1936 	lcall	_printf
      00382A 15 81            [12] 1937 	dec	sp
      00382C 15 81            [12] 1938 	dec	sp
      00382E 15 81            [12] 1939 	dec	sp
                                   1940 ;	8051_i2c_eeprom.c:379: printf("└───────────────────────────────────────────────┘\n\r");
      003830 74 B5            [12] 1941 	mov	a,#___str_37
      003832 C0 E0            [24] 1942 	push	acc
      003834 74 54            [12] 1943 	mov	a,#(___str_37 >> 8)
      003836 C0 E0            [24] 1944 	push	acc
      003838 74 80            [12] 1945 	mov	a,#0x80
      00383A C0 E0            [24] 1946 	push	acc
      00383C 12 3F B0         [24] 1947 	lcall	_printf
      00383F 15 81            [12] 1948 	dec	sp
      003841 15 81            [12] 1949 	dec	sp
      003843 15 81            [12] 1950 	dec	sp
                                   1951 ;	8051_i2c_eeprom.c:380: return 1;  // Success
      003845 90 00 01         [24] 1952 	mov	dptr,#0x0001
                                   1953 ;	8051_i2c_eeprom.c:390: }
      003848 22               [24] 1954 	ret
                                   1955 ;------------------------------------------------------------
                                   1956 ;Allocation info for local variables in function 'eeprom_read'
                                   1957 ;------------------------------------------------------------
                                   1958 ;address                   Allocated with name '_eeprom_read_address_65536_97'
                                   1959 ;result                    Allocated with name '_eeprom_read_result_65536_98'
                                   1960 ;------------------------------------------------------------
                                   1961 ;	8051_i2c_eeprom.c:406: int eeprom_read(unsigned int address)
                                   1962 ;	-----------------------------------------
                                   1963 ;	 function eeprom_read
                                   1964 ;	-----------------------------------------
      003849                       1965 _eeprom_read:
      003849 AF 83            [24] 1966 	mov	r7,dph
      00384B E5 82            [12] 1967 	mov	a,dpl
      00384D 90 04 12         [24] 1968 	mov	dptr,#_eeprom_read_address_65536_97
      003850 F0               [24] 1969 	movx	@dptr,a
      003851 EF               [12] 1970 	mov	a,r7
      003852 A3               [24] 1971 	inc	dptr
      003853 F0               [24] 1972 	movx	@dptr,a
                                   1973 ;	8051_i2c_eeprom.c:412: i2c_start();
      003854 12 3A 4A         [24] 1974 	lcall	_i2c_start
                                   1975 ;	8051_i2c_eeprom.c:415: if(!i2c_write(EEPROM_ID | WRITE)) {
      003857 75 82 A0         [24] 1976 	mov	dpl,#0xa0
      00385A 12 39 5D         [24] 1977 	lcall	_i2c_write
      00385D E5 82            [12] 1978 	mov	a,dpl
      00385F 85 83 F0         [24] 1979 	mov	b,dph
      003862 45 F0            [12] 1980 	orl	a,b
      003864 70 1C            [24] 1981 	jnz	00102$
                                   1982 ;	8051_i2c_eeprom.c:416: printf("Error: No ACK for device address (write mode)\n\r");
      003866 74 4B            [12] 1983 	mov	a,#___str_38
      003868 C0 E0            [24] 1984 	push	acc
      00386A 74 55            [12] 1985 	mov	a,#(___str_38 >> 8)
      00386C C0 E0            [24] 1986 	push	acc
      00386E 74 80            [12] 1987 	mov	a,#0x80
      003870 C0 E0            [24] 1988 	push	acc
      003872 12 3F B0         [24] 1989 	lcall	_printf
      003875 15 81            [12] 1990 	dec	sp
      003877 15 81            [12] 1991 	dec	sp
      003879 15 81            [12] 1992 	dec	sp
                                   1993 ;	8051_i2c_eeprom.c:417: i2c_stop();
      00387B 12 3D 51         [24] 1994 	lcall	_i2c_stop
                                   1995 ;	8051_i2c_eeprom.c:418: return -1;
      00387E 90 FF FF         [24] 1996 	mov	dptr,#0xffff
      003881 22               [24] 1997 	ret
      003882                       1998 00102$:
                                   1999 ;	8051_i2c_eeprom.c:422: if(!i2c_write((unsigned char)address)) {
      003882 90 04 12         [24] 2000 	mov	dptr,#_eeprom_read_address_65536_97
      003885 E0               [24] 2001 	movx	a,@dptr
      003886 FE               [12] 2002 	mov	r6,a
      003887 A3               [24] 2003 	inc	dptr
      003888 E0               [24] 2004 	movx	a,@dptr
      003889 FF               [12] 2005 	mov	r7,a
      00388A 8E 05            [24] 2006 	mov	ar5,r6
      00388C 8D 82            [24] 2007 	mov	dpl,r5
      00388E C0 07            [24] 2008 	push	ar7
      003890 C0 06            [24] 2009 	push	ar6
      003892 12 39 5D         [24] 2010 	lcall	_i2c_write
      003895 E5 82            [12] 2011 	mov	a,dpl
      003897 85 83 F0         [24] 2012 	mov	b,dph
      00389A D0 06            [24] 2013 	pop	ar6
      00389C D0 07            [24] 2014 	pop	ar7
      00389E 45 F0            [12] 2015 	orl	a,b
      0038A0 70 1C            [24] 2016 	jnz	00104$
                                   2017 ;	8051_i2c_eeprom.c:423: printf("Error: No ACK for memory address\n\r");
      0038A2 74 0C            [12] 2018 	mov	a,#___str_33
      0038A4 C0 E0            [24] 2019 	push	acc
      0038A6 74 54            [12] 2020 	mov	a,#(___str_33 >> 8)
      0038A8 C0 E0            [24] 2021 	push	acc
      0038AA 74 80            [12] 2022 	mov	a,#0x80
      0038AC C0 E0            [24] 2023 	push	acc
      0038AE 12 3F B0         [24] 2024 	lcall	_printf
      0038B1 15 81            [12] 2025 	dec	sp
      0038B3 15 81            [12] 2026 	dec	sp
      0038B5 15 81            [12] 2027 	dec	sp
                                   2028 ;	8051_i2c_eeprom.c:424: i2c_stop();
      0038B7 12 3D 51         [24] 2029 	lcall	_i2c_stop
                                   2030 ;	8051_i2c_eeprom.c:425: return -1;
      0038BA 90 FF FF         [24] 2031 	mov	dptr,#0xffff
      0038BD 22               [24] 2032 	ret
      0038BE                       2033 00104$:
                                   2034 ;	8051_i2c_eeprom.c:429: i2c_start();
      0038BE C0 07            [24] 2035 	push	ar7
      0038C0 C0 06            [24] 2036 	push	ar6
      0038C2 12 3A 4A         [24] 2037 	lcall	_i2c_start
                                   2038 ;	8051_i2c_eeprom.c:432: if(!i2c_write(EEPROM_ID | READ)) {
      0038C5 75 82 A1         [24] 2039 	mov	dpl,#0xa1
      0038C8 12 39 5D         [24] 2040 	lcall	_i2c_write
      0038CB E5 82            [12] 2041 	mov	a,dpl
      0038CD 85 83 F0         [24] 2042 	mov	b,dph
      0038D0 D0 06            [24] 2043 	pop	ar6
      0038D2 D0 07            [24] 2044 	pop	ar7
      0038D4 45 F0            [12] 2045 	orl	a,b
      0038D6 70 1C            [24] 2046 	jnz	00106$
                                   2047 ;	8051_i2c_eeprom.c:433: printf("Error: No ACK for device address (read mode)\n\r");
      0038D8 74 7B            [12] 2048 	mov	a,#___str_39
      0038DA C0 E0            [24] 2049 	push	acc
      0038DC 74 55            [12] 2050 	mov	a,#(___str_39 >> 8)
      0038DE C0 E0            [24] 2051 	push	acc
      0038E0 74 80            [12] 2052 	mov	a,#0x80
      0038E2 C0 E0            [24] 2053 	push	acc
      0038E4 12 3F B0         [24] 2054 	lcall	_printf
      0038E7 15 81            [12] 2055 	dec	sp
      0038E9 15 81            [12] 2056 	dec	sp
      0038EB 15 81            [12] 2057 	dec	sp
                                   2058 ;	8051_i2c_eeprom.c:434: i2c_stop();
      0038ED 12 3D 51         [24] 2059 	lcall	_i2c_stop
                                   2060 ;	8051_i2c_eeprom.c:435: return -1;
      0038F0 90 FF FF         [24] 2061 	mov	dptr,#0xffff
      0038F3 22               [24] 2062 	ret
      0038F4                       2063 00106$:
                                   2064 ;	8051_i2c_eeprom.c:439: result = i2c_read(0);  // 0 means send NACK
      0038F4 90 00 00         [24] 2065 	mov	dptr,#0x0000
      0038F7 C0 07            [24] 2066 	push	ar7
      0038F9 C0 06            [24] 2067 	push	ar6
      0038FB 12 39 C5         [24] 2068 	lcall	_i2c_read
      0038FE AC 82            [24] 2069 	mov	r4,dpl
      003900 D0 06            [24] 2070 	pop	ar6
      003902 D0 07            [24] 2071 	pop	ar7
                                   2072 ;	8051_i2c_eeprom.c:441: printf("| 0x%03X : 0x%02X \n\r", address, result);
      003904 7D 00            [12] 2073 	mov	r5,#0x00
      003906 C0 05            [24] 2074 	push	ar5
      003908 C0 04            [24] 2075 	push	ar4
      00390A C0 04            [24] 2076 	push	ar4
      00390C C0 05            [24] 2077 	push	ar5
      00390E C0 06            [24] 2078 	push	ar6
      003910 C0 07            [24] 2079 	push	ar7
      003912 74 AA            [12] 2080 	mov	a,#___str_40
      003914 C0 E0            [24] 2081 	push	acc
      003916 74 55            [12] 2082 	mov	a,#(___str_40 >> 8)
      003918 C0 E0            [24] 2083 	push	acc
      00391A 74 80            [12] 2084 	mov	a,#0x80
      00391C C0 E0            [24] 2085 	push	acc
      00391E 12 3F B0         [24] 2086 	lcall	_printf
      003921 E5 81            [12] 2087 	mov	a,sp
      003923 24 F9            [12] 2088 	add	a,#0xf9
      003925 F5 81            [12] 2089 	mov	sp,a
                                   2090 ;	8051_i2c_eeprom.c:442: printf("│ Read successful!                 │\n\r");
      003927 74 BF            [12] 2091 	mov	a,#___str_41
      003929 C0 E0            [24] 2092 	push	acc
      00392B 74 55            [12] 2093 	mov	a,#(___str_41 >> 8)
      00392D C0 E0            [24] 2094 	push	acc
      00392F 74 80            [12] 2095 	mov	a,#0x80
      003931 C0 E0            [24] 2096 	push	acc
      003933 12 3F B0         [24] 2097 	lcall	_printf
      003936 15 81            [12] 2098 	dec	sp
      003938 15 81            [12] 2099 	dec	sp
      00393A 15 81            [12] 2100 	dec	sp
                                   2101 ;	8051_i2c_eeprom.c:443: printf("└───────────────────────────────────────────────┘\n\r");
      00393C 74 B5            [12] 2102 	mov	a,#___str_37
      00393E C0 E0            [24] 2103 	push	acc
      003940 74 54            [12] 2104 	mov	a,#(___str_37 >> 8)
      003942 C0 E0            [24] 2105 	push	acc
      003944 74 80            [12] 2106 	mov	a,#0x80
      003946 C0 E0            [24] 2107 	push	acc
      003948 12 3F B0         [24] 2108 	lcall	_printf
      00394B 15 81            [12] 2109 	dec	sp
      00394D 15 81            [12] 2110 	dec	sp
      00394F 15 81            [12] 2111 	dec	sp
                                   2112 ;	8051_i2c_eeprom.c:444: i2c_stop();
      003951 12 3D 51         [24] 2113 	lcall	_i2c_stop
      003954 D0 04            [24] 2114 	pop	ar4
      003956 D0 05            [24] 2115 	pop	ar5
                                   2116 ;	8051_i2c_eeprom.c:445: return result;
      003958 8C 82            [24] 2117 	mov	dpl,r4
      00395A 8D 83            [24] 2118 	mov	dph,r5
                                   2119 ;	8051_i2c_eeprom.c:446: }
      00395C 22               [24] 2120 	ret
                                   2121 ;------------------------------------------------------------
                                   2122 ;Allocation info for local variables in function 'i2c_write'
                                   2123 ;------------------------------------------------------------
                                   2124 ;data                      Allocated with name '_i2c_write_data_65536_102'
                                   2125 ;i                         Allocated with name '_i2c_write_i_65536_103'
                                   2126 ;------------------------------------------------------------
                                   2127 ;	8051_i2c_eeprom.c:457: int i2c_write(unsigned char data)
                                   2128 ;	-----------------------------------------
                                   2129 ;	 function i2c_write
                                   2130 ;	-----------------------------------------
      00395D                       2131 _i2c_write:
      00395D E5 82            [12] 2132 	mov	a,dpl
      00395F 90 04 14         [24] 2133 	mov	dptr,#_i2c_write_data_65536_102
      003962 F0               [24] 2134 	movx	@dptr,a
                                   2135 ;	8051_i2c_eeprom.c:461: for(i=0;i<=7;i++)
      003963 7E 00            [12] 2136 	mov	r6,#0x00
      003965 7F 00            [12] 2137 	mov	r7,#0x00
      003967                       2138 00104$:
                                   2139 ;	8051_i2c_eeprom.c:463: SDA = (data & 0x80) ? 1 : 0;    //msb first
      003967 90 04 14         [24] 2140 	mov	dptr,#_i2c_write_data_65536_102
      00396A E0               [24] 2141 	movx	a,@dptr
      00396B FD               [12] 2142 	mov	r5,a
      00396C 23               [12] 2143 	rl	a
      00396D 54 01            [12] 2144 	anl	a,#0x01
      00396F 24 FF            [12] 2145 	add	a,#0xff
      003971 92 94            [24] 2146 	mov	_P1_4,c
                                   2147 ;	8051_i2c_eeprom.c:464: i2c_delay();        // Setup time for data
      003973 C0 07            [24] 2148 	push	ar7
      003975 C0 06            [24] 2149 	push	ar6
      003977 C0 05            [24] 2150 	push	ar5
      003979 12 3D 8A         [24] 2151 	lcall	_i2c_delay
                                   2152 ;	8051_i2c_eeprom.c:465: SCL=1;
                                   2153 ;	assignBit
      00397C D2 93            [12] 2154 	setb	_P1_3
                                   2155 ;	8051_i2c_eeprom.c:466: i2c_delay();        // Hold time for clock
      00397E 12 3D 8A         [24] 2156 	lcall	_i2c_delay
      003981 D0 05            [24] 2157 	pop	ar5
      003983 D0 06            [24] 2158 	pop	ar6
      003985 D0 07            [24] 2159 	pop	ar7
                                   2160 ;	8051_i2c_eeprom.c:467: SCL=0;
                                   2161 ;	assignBit
      003987 C2 93            [12] 2162 	clr	_P1_3
                                   2163 ;	8051_i2c_eeprom.c:468: data = data << 1;
      003989 ED               [12] 2164 	mov	a,r5
      00398A 2D               [12] 2165 	add	a,r5
      00398B 90 04 14         [24] 2166 	mov	dptr,#_i2c_write_data_65536_102
      00398E F0               [24] 2167 	movx	@dptr,a
                                   2168 ;	8051_i2c_eeprom.c:461: for(i=0;i<=7;i++)
      00398F 0E               [12] 2169 	inc	r6
      003990 BE 00 01         [24] 2170 	cjne	r6,#0x00,00121$
      003993 0F               [12] 2171 	inc	r7
      003994                       2172 00121$:
      003994 C3               [12] 2173 	clr	c
      003995 74 07            [12] 2174 	mov	a,#0x07
      003997 9E               [12] 2175 	subb	a,r6
      003998 E4               [12] 2176 	clr	a
      003999 9F               [12] 2177 	subb	a,r7
      00399A 50 CB            [24] 2178 	jnc	00104$
                                   2179 ;	8051_i2c_eeprom.c:472: SDA = 1;            // Release SDA for slave
                                   2180 ;	assignBit
      00399C D2 94            [12] 2181 	setb	_P1_4
                                   2182 ;	8051_i2c_eeprom.c:473: SCL = 1;            // 9th clock pulse for ACK
                                   2183 ;	assignBit
      00399E D2 93            [12] 2184 	setb	_P1_3
                                   2185 ;	8051_i2c_eeprom.c:474: i2c_delay();
      0039A0 12 3D 8A         [24] 2186 	lcall	_i2c_delay
                                   2187 ;	8051_i2c_eeprom.c:475: if(SDA == 1)        // If SDA is still high, no ACK received
      0039A3 30 94 19         [24] 2188 	jnb	_P1_4,00103$
                                   2189 ;	8051_i2c_eeprom.c:478: printf("ACK DID NOT ARRIVE\n\r");
      0039A6 74 EA            [12] 2190 	mov	a,#___str_42
      0039A8 C0 E0            [24] 2191 	push	acc
      0039AA 74 55            [12] 2192 	mov	a,#(___str_42 >> 8)
      0039AC C0 E0            [24] 2193 	push	acc
      0039AE 74 80            [12] 2194 	mov	a,#0x80
      0039B0 C0 E0            [24] 2195 	push	acc
      0039B2 12 3F B0         [24] 2196 	lcall	_printf
      0039B5 15 81            [12] 2197 	dec	sp
      0039B7 15 81            [12] 2198 	dec	sp
      0039B9 15 81            [12] 2199 	dec	sp
                                   2200 ;	8051_i2c_eeprom.c:479: return 0;       // Error
      0039BB 90 00 00         [24] 2201 	mov	dptr,#0x0000
      0039BE 22               [24] 2202 	ret
      0039BF                       2203 00103$:
                                   2204 ;	8051_i2c_eeprom.c:481: SCL = 0;
                                   2205 ;	assignBit
      0039BF C2 93            [12] 2206 	clr	_P1_3
                                   2207 ;	8051_i2c_eeprom.c:483: return 1;           // Success
      0039C1 90 00 01         [24] 2208 	mov	dptr,#0x0001
                                   2209 ;	8051_i2c_eeprom.c:485: }
      0039C4 22               [24] 2210 	ret
                                   2211 ;------------------------------------------------------------
                                   2212 ;Allocation info for local variables in function 'i2c_read'
                                   2213 ;------------------------------------------------------------
                                   2214 ;ACK                       Allocated with name '_i2c_read_ACK_65536_107'
                                   2215 ;buff                      Allocated with name '_i2c_read_buff_65536_108'
                                   2216 ;i                         Allocated with name '_i2c_read_i_131072_109'
                                   2217 ;------------------------------------------------------------
                                   2218 ;	8051_i2c_eeprom.c:495: int i2c_read(int ACK)
                                   2219 ;	-----------------------------------------
                                   2220 ;	 function i2c_read
                                   2221 ;	-----------------------------------------
      0039C5                       2222 _i2c_read:
      0039C5 AF 83            [24] 2223 	mov	r7,dph
      0039C7 E5 82            [12] 2224 	mov	a,dpl
      0039C9 90 04 15         [24] 2225 	mov	dptr,#_i2c_read_ACK_65536_107
      0039CC F0               [24] 2226 	movx	@dptr,a
      0039CD EF               [12] 2227 	mov	a,r7
      0039CE A3               [24] 2228 	inc	dptr
      0039CF F0               [24] 2229 	movx	@dptr,a
                                   2230 ;	8051_i2c_eeprom.c:497: unsigned char buff=0;
      0039D0 90 04 17         [24] 2231 	mov	dptr,#_i2c_read_buff_65536_108
      0039D3 E4               [12] 2232 	clr	a
      0039D4 F0               [24] 2233 	movx	@dptr,a
                                   2234 ;	8051_i2c_eeprom.c:498: SCL = 0;
                                   2235 ;	assignBit
      0039D5 C2 93            [12] 2236 	clr	_P1_3
                                   2237 ;	8051_i2c_eeprom.c:499: for(int i=0;i<8;i++)
      0039D7 7E 00            [12] 2238 	mov	r6,#0x00
      0039D9 7F 00            [12] 2239 	mov	r7,#0x00
      0039DB                       2240 00103$:
      0039DB C3               [12] 2241 	clr	c
      0039DC EE               [12] 2242 	mov	a,r6
      0039DD 94 08            [12] 2243 	subb	a,#0x08
      0039DF EF               [12] 2244 	mov	a,r7
      0039E0 64 80            [12] 2245 	xrl	a,#0x80
      0039E2 94 80            [12] 2246 	subb	a,#0x80
      0039E4 50 40            [24] 2247 	jnc	00101$
                                   2248 ;	8051_i2c_eeprom.c:501: SCL = 1;
                                   2249 ;	assignBit
      0039E6 D2 93            [12] 2250 	setb	_P1_3
                                   2251 ;	8051_i2c_eeprom.c:502: i2c_delay();
      0039E8 C0 07            [24] 2252 	push	ar7
      0039EA C0 06            [24] 2253 	push	ar6
      0039EC 12 3D 8A         [24] 2254 	lcall	_i2c_delay
      0039EF D0 06            [24] 2255 	pop	ar6
      0039F1 D0 07            [24] 2256 	pop	ar7
                                   2257 ;	8051_i2c_eeprom.c:503: buff |= (SDA << (7 - i));
      0039F3 A2 94            [12] 2258 	mov	c,_P1_4
      0039F5 E4               [12] 2259 	clr	a
      0039F6 33               [12] 2260 	rlc	a
      0039F7 FD               [12] 2261 	mov	r5,a
      0039F8 8E 04            [24] 2262 	mov	ar4,r6
      0039FA 74 07            [12] 2263 	mov	a,#0x07
      0039FC C3               [12] 2264 	clr	c
      0039FD 9C               [12] 2265 	subb	a,r4
      0039FE FC               [12] 2266 	mov	r4,a
      0039FF 8C F0            [24] 2267 	mov	b,r4
      003A01 05 F0            [12] 2268 	inc	b
      003A03 ED               [12] 2269 	mov	a,r5
      003A04 80 02            [24] 2270 	sjmp	00119$
      003A06                       2271 00117$:
      003A06 25 E0            [12] 2272 	add	a,acc
      003A08                       2273 00119$:
      003A08 D5 F0 FB         [24] 2274 	djnz	b,00117$
      003A0B FC               [12] 2275 	mov	r4,a
      003A0C 90 04 17         [24] 2276 	mov	dptr,#_i2c_read_buff_65536_108
      003A0F E0               [24] 2277 	movx	a,@dptr
      003A10 4C               [12] 2278 	orl	a,r4
      003A11 F0               [24] 2279 	movx	@dptr,a
                                   2280 ;	8051_i2c_eeprom.c:504: i2c_delay();
      003A12 C0 07            [24] 2281 	push	ar7
      003A14 C0 06            [24] 2282 	push	ar6
      003A16 12 3D 8A         [24] 2283 	lcall	_i2c_delay
      003A19 D0 06            [24] 2284 	pop	ar6
      003A1B D0 07            [24] 2285 	pop	ar7
                                   2286 ;	8051_i2c_eeprom.c:505: SCL=0;
                                   2287 ;	assignBit
      003A1D C2 93            [12] 2288 	clr	_P1_3
                                   2289 ;	8051_i2c_eeprom.c:499: for(int i=0;i<8;i++)
      003A1F 0E               [12] 2290 	inc	r6
      003A20 BE 00 B8         [24] 2291 	cjne	r6,#0x00,00103$
      003A23 0F               [12] 2292 	inc	r7
      003A24 80 B5            [24] 2293 	sjmp	00103$
      003A26                       2294 00101$:
                                   2295 ;	8051_i2c_eeprom.c:509: SDA = !ACK;         // ACK = 0, NACK = 1
      003A26 90 04 15         [24] 2296 	mov	dptr,#_i2c_read_ACK_65536_107
      003A29 E0               [24] 2297 	movx	a,@dptr
      003A2A FE               [12] 2298 	mov	r6,a
      003A2B A3               [24] 2299 	inc	dptr
      003A2C E0               [24] 2300 	movx	a,@dptr
      003A2D 4E               [12] 2301 	orl	a,r6
      003A2E B4 01 00         [24] 2302 	cjne	a,#0x01,00121$
      003A31                       2303 00121$:
      003A31 E4               [12] 2304 	clr	a
      003A32 33               [12] 2305 	rlc	a
      003A33 24 FF            [12] 2306 	add	a,#0xff
      003A35 92 94            [24] 2307 	mov	_P1_4,c
                                   2308 ;	8051_i2c_eeprom.c:510: SCL = 1;
                                   2309 ;	assignBit
      003A37 D2 93            [12] 2310 	setb	_P1_3
                                   2311 ;	8051_i2c_eeprom.c:511: i2c_delay();
      003A39 12 3D 8A         [24] 2312 	lcall	_i2c_delay
                                   2313 ;	8051_i2c_eeprom.c:512: SCL = 0;
                                   2314 ;	assignBit
      003A3C C2 93            [12] 2315 	clr	_P1_3
                                   2316 ;	8051_i2c_eeprom.c:514: return buff;
      003A3E 90 04 17         [24] 2317 	mov	dptr,#_i2c_read_buff_65536_108
      003A41 E0               [24] 2318 	movx	a,@dptr
      003A42 FF               [12] 2319 	mov	r7,a
      003A43 7E 00            [12] 2320 	mov	r6,#0x00
      003A45 8F 82            [24] 2321 	mov	dpl,r7
      003A47 8E 83            [24] 2322 	mov	dph,r6
                                   2323 ;	8051_i2c_eeprom.c:515: }
      003A49 22               [24] 2324 	ret
                                   2325 ;------------------------------------------------------------
                                   2326 ;Allocation info for local variables in function 'i2c_start'
                                   2327 ;------------------------------------------------------------
                                   2328 ;	8051_i2c_eeprom.c:522: void i2c_start(void)
                                   2329 ;	-----------------------------------------
                                   2330 ;	 function i2c_start
                                   2331 ;	-----------------------------------------
      003A4A                       2332 _i2c_start:
                                   2333 ;	8051_i2c_eeprom.c:524: i2c_delay();
      003A4A 12 3D 8A         [24] 2334 	lcall	_i2c_delay
                                   2335 ;	8051_i2c_eeprom.c:525: SDA = 1;
                                   2336 ;	assignBit
      003A4D D2 94            [12] 2337 	setb	_P1_4
                                   2338 ;	8051_i2c_eeprom.c:526: i2c_delay();
      003A4F 12 3D 8A         [24] 2339 	lcall	_i2c_delay
                                   2340 ;	8051_i2c_eeprom.c:527: SCL = 1;
                                   2341 ;	assignBit
      003A52 D2 93            [12] 2342 	setb	_P1_3
                                   2343 ;	8051_i2c_eeprom.c:528: i2c_delay();
      003A54 12 3D 8A         [24] 2344 	lcall	_i2c_delay
                                   2345 ;	8051_i2c_eeprom.c:529: SDA = 0;
                                   2346 ;	assignBit
      003A57 C2 94            [12] 2347 	clr	_P1_4
                                   2348 ;	8051_i2c_eeprom.c:530: i2c_delay();
      003A59 12 3D 8A         [24] 2349 	lcall	_i2c_delay
                                   2350 ;	8051_i2c_eeprom.c:531: SCL = 0;
                                   2351 ;	assignBit
      003A5C C2 93            [12] 2352 	clr	_P1_3
                                   2353 ;	8051_i2c_eeprom.c:532: }
      003A5E 22               [24] 2354 	ret
                                   2355 ;------------------------------------------------------------
                                   2356 ;Allocation info for local variables in function 'EEPROM_hexump'
                                   2357 ;------------------------------------------------------------
                                   2358 ;end_address               Allocated with name '_EEPROM_hexump_PARM_2'
                                   2359 ;start_address             Allocated with name '_EEPROM_hexump_start_address_65536_113'
                                   2360 ;address                   Allocated with name '_EEPROM_hexump_address_131072_115'
                                   2361 ;offset                    Allocated with name '_EEPROM_hexump_offset_262144_117'
                                   2362 ;current_address           Allocated with name '_EEPROM_hexump_current_address_327680_118'
                                   2363 ;result                    Allocated with name '_EEPROM_hexump_result_393216_119'
                                   2364 ;------------------------------------------------------------
                                   2365 ;	8051_i2c_eeprom.c:540: int EEPROM_hexump(uint16_t start_address, uint16_t end_address)
                                   2366 ;	-----------------------------------------
                                   2367 ;	 function EEPROM_hexump
                                   2368 ;	-----------------------------------------
      003A5F                       2369 _EEPROM_hexump:
      003A5F AF 83            [24] 2370 	mov	r7,dph
      003A61 E5 82            [12] 2371 	mov	a,dpl
      003A63 90 04 1A         [24] 2372 	mov	dptr,#_EEPROM_hexump_start_address_65536_113
      003A66 F0               [24] 2373 	movx	@dptr,a
      003A67 EF               [12] 2374 	mov	a,r7
      003A68 A3               [24] 2375 	inc	dptr
      003A69 F0               [24] 2376 	movx	@dptr,a
                                   2377 ;	8051_i2c_eeprom.c:564: printf("\r\n");
      003A6A 74 FF            [12] 2378 	mov	a,#___str_43
      003A6C C0 E0            [24] 2379 	push	acc
      003A6E 74 55            [12] 2380 	mov	a,#(___str_43 >> 8)
      003A70 C0 E0            [24] 2381 	push	acc
      003A72 74 80            [12] 2382 	mov	a,#0x80
      003A74 C0 E0            [24] 2383 	push	acc
      003A76 12 3F B0         [24] 2384 	lcall	_printf
      003A79 15 81            [12] 2385 	dec	sp
      003A7B 15 81            [12] 2386 	dec	sp
      003A7D 15 81            [12] 2387 	dec	sp
                                   2388 ;	8051_i2c_eeprom.c:565: printf("\r\n----------------------------------------------------------------");
      003A7F 74 02            [12] 2389 	mov	a,#___str_44
      003A81 C0 E0            [24] 2390 	push	acc
      003A83 74 56            [12] 2391 	mov	a,#(___str_44 >> 8)
      003A85 C0 E0            [24] 2392 	push	acc
      003A87 74 80            [12] 2393 	mov	a,#0x80
      003A89 C0 E0            [24] 2394 	push	acc
      003A8B 12 3F B0         [24] 2395 	lcall	_printf
      003A8E 15 81            [12] 2396 	dec	sp
      003A90 15 81            [12] 2397 	dec	sp
      003A92 15 81            [12] 2398 	dec	sp
                                   2399 ;	8051_i2c_eeprom.c:566: printf("\r\n                    EEPROM Hex Dump                             ");
      003A94 74 45            [12] 2400 	mov	a,#___str_45
      003A96 C0 E0            [24] 2401 	push	acc
      003A98 74 56            [12] 2402 	mov	a,#(___str_45 >> 8)
      003A9A C0 E0            [24] 2403 	push	acc
      003A9C 74 80            [12] 2404 	mov	a,#0x80
      003A9E C0 E0            [24] 2405 	push	acc
      003AA0 12 3F B0         [24] 2406 	lcall	_printf
      003AA3 15 81            [12] 2407 	dec	sp
      003AA5 15 81            [12] 2408 	dec	sp
      003AA7 15 81            [12] 2409 	dec	sp
                                   2410 ;	8051_i2c_eeprom.c:567: printf("\r\n----------------------------------------------------------------\r\n");
      003AA9 74 88            [12] 2411 	mov	a,#___str_46
      003AAB C0 E0            [24] 2412 	push	acc
      003AAD 74 56            [12] 2413 	mov	a,#(___str_46 >> 8)
      003AAF C0 E0            [24] 2414 	push	acc
      003AB1 74 80            [12] 2415 	mov	a,#0x80
      003AB3 C0 E0            [24] 2416 	push	acc
      003AB5 12 3F B0         [24] 2417 	lcall	_printf
      003AB8 15 81            [12] 2418 	dec	sp
      003ABA 15 81            [12] 2419 	dec	sp
      003ABC 15 81            [12] 2420 	dec	sp
                                   2421 ;	8051_i2c_eeprom.c:569: for (unsigned int address = start_address; address <= end_address; address += MAX_HEX_CHAR_IN_SINGLE_LINE) {
      003ABE 90 04 1A         [24] 2422 	mov	dptr,#_EEPROM_hexump_start_address_65536_113
      003AC1 E0               [24] 2423 	movx	a,@dptr
      003AC2 FE               [12] 2424 	mov	r6,a
      003AC3 A3               [24] 2425 	inc	dptr
      003AC4 E0               [24] 2426 	movx	a,@dptr
      003AC5 FF               [12] 2427 	mov	r7,a
      003AC6 90 04 18         [24] 2428 	mov	dptr,#_EEPROM_hexump_PARM_2
      003AC9 E0               [24] 2429 	movx	a,@dptr
      003ACA FC               [12] 2430 	mov	r4,a
      003ACB A3               [24] 2431 	inc	dptr
      003ACC E0               [24] 2432 	movx	a,@dptr
      003ACD FD               [12] 2433 	mov	r5,a
      003ACE                       2434 00116$:
      003ACE 8E 02            [24] 2435 	mov	ar2,r6
      003AD0 8F 03            [24] 2436 	mov	ar3,r7
      003AD2 C3               [12] 2437 	clr	c
      003AD3 EC               [12] 2438 	mov	a,r4
      003AD4 9A               [12] 2439 	subb	a,r2
      003AD5 ED               [12] 2440 	mov	a,r5
      003AD6 9B               [12] 2441 	subb	a,r3
      003AD7 50 03            [24] 2442 	jnc	00152$
      003AD9 02 3C 9F         [24] 2443 	ljmp	00111$
      003ADC                       2444 00152$:
                                   2445 ;	8051_i2c_eeprom.c:571: printf("%03X: ", address);
      003ADC C0 07            [24] 2446 	push	ar7
      003ADE C0 06            [24] 2447 	push	ar6
      003AE0 C0 05            [24] 2448 	push	ar5
      003AE2 C0 04            [24] 2449 	push	ar4
      003AE4 C0 06            [24] 2450 	push	ar6
      003AE6 C0 07            [24] 2451 	push	ar7
      003AE8 74 CD            [12] 2452 	mov	a,#___str_47
      003AEA C0 E0            [24] 2453 	push	acc
      003AEC 74 56            [12] 2454 	mov	a,#(___str_47 >> 8)
      003AEE C0 E0            [24] 2455 	push	acc
      003AF0 74 80            [12] 2456 	mov	a,#0x80
      003AF2 C0 E0            [24] 2457 	push	acc
      003AF4 12 3F B0         [24] 2458 	lcall	_printf
      003AF7 E5 81            [12] 2459 	mov	a,sp
      003AF9 24 FB            [12] 2460 	add	a,#0xfb
      003AFB F5 81            [12] 2461 	mov	sp,a
      003AFD D0 04            [24] 2462 	pop	ar4
      003AFF D0 05            [24] 2463 	pop	ar5
      003B01 D0 06            [24] 2464 	pop	ar6
      003B03 D0 07            [24] 2465 	pop	ar7
                                   2466 ;	8051_i2c_eeprom.c:574: for (int offset = 0; offset < MAX_HEX_CHAR_IN_SINGLE_LINE; offset++) {
      003B05 7A 00            [12] 2467 	mov	r2,#0x00
      003B07 7B 00            [12] 2468 	mov	r3,#0x00
      003B09                       2469 00113$:
      003B09 C3               [12] 2470 	clr	c
      003B0A EA               [12] 2471 	mov	a,r2
      003B0B 94 10            [12] 2472 	subb	a,#0x10
      003B0D EB               [12] 2473 	mov	a,r3
      003B0E 64 80            [12] 2474 	xrl	a,#0x80
      003B10 94 80            [12] 2475 	subb	a,#0x80
      003B12 40 03            [24] 2476 	jc	00153$
      003B14 02 3C 70         [24] 2477 	ljmp	00110$
      003B17                       2478 00153$:
                                   2479 ;	8051_i2c_eeprom.c:575: unsigned int current_address = address + offset;
      003B17 8A 00            [24] 2480 	mov	ar0,r2
      003B19 8B 01            [24] 2481 	mov	ar1,r3
      003B1B E8               [12] 2482 	mov	a,r0
      003B1C 2E               [12] 2483 	add	a,r6
      003B1D F8               [12] 2484 	mov	r0,a
      003B1E E9               [12] 2485 	mov	a,r1
      003B1F 3F               [12] 2486 	addc	a,r7
      003B20 F9               [12] 2487 	mov	r1,a
                                   2488 ;	8051_i2c_eeprom.c:577: if (current_address <= end_address) 
      003B21 C3               [12] 2489 	clr	c
      003B22 EC               [12] 2490 	mov	a,r4
      003B23 98               [12] 2491 	subb	a,r0
      003B24 ED               [12] 2492 	mov	a,r5
      003B25 99               [12] 2493 	subb	a,r1
      003B26 50 03            [24] 2494 	jnc	00154$
      003B28 02 3C 3B         [24] 2495 	ljmp	00108$
      003B2B                       2496 00154$:
                                   2497 ;	8051_i2c_eeprom.c:584: i2c_start();
      003B2B C0 07            [24] 2498 	push	ar7
      003B2D C0 06            [24] 2499 	push	ar6
      003B2F C0 05            [24] 2500 	push	ar5
      003B31 C0 04            [24] 2501 	push	ar4
      003B33 C0 03            [24] 2502 	push	ar3
      003B35 C0 02            [24] 2503 	push	ar2
      003B37 12 3A 4A         [24] 2504 	lcall	_i2c_start
                                   2505 ;	8051_i2c_eeprom.c:587: if(!i2c_write(EEPROM_ID | WRITE)) {
      003B3A 75 82 A0         [24] 2506 	mov	dpl,#0xa0
      003B3D 12 39 5D         [24] 2507 	lcall	_i2c_write
      003B40 E5 82            [12] 2508 	mov	a,dpl
      003B42 85 83 F0         [24] 2509 	mov	b,dph
      003B45 D0 02            [24] 2510 	pop	ar2
      003B47 D0 03            [24] 2511 	pop	ar3
      003B49 D0 04            [24] 2512 	pop	ar4
      003B4B D0 05            [24] 2513 	pop	ar5
      003B4D D0 06            [24] 2514 	pop	ar6
      003B4F D0 07            [24] 2515 	pop	ar7
      003B51 45 F0            [12] 2516 	orl	a,b
      003B53 70 1C            [24] 2517 	jnz	00102$
                                   2518 ;	8051_i2c_eeprom.c:588: printf("Error: No ACK for device address (write mode)\n\r");
      003B55 74 4B            [12] 2519 	mov	a,#___str_38
      003B57 C0 E0            [24] 2520 	push	acc
      003B59 74 55            [12] 2521 	mov	a,#(___str_38 >> 8)
      003B5B C0 E0            [24] 2522 	push	acc
      003B5D 74 80            [12] 2523 	mov	a,#0x80
      003B5F C0 E0            [24] 2524 	push	acc
      003B61 12 3F B0         [24] 2525 	lcall	_printf
      003B64 15 81            [12] 2526 	dec	sp
      003B66 15 81            [12] 2527 	dec	sp
      003B68 15 81            [12] 2528 	dec	sp
                                   2529 ;	8051_i2c_eeprom.c:589: i2c_stop();
      003B6A 12 3D 51         [24] 2530 	lcall	_i2c_stop
                                   2531 ;	8051_i2c_eeprom.c:590: return -1;
      003B6D 90 FF FF         [24] 2532 	mov	dptr,#0xffff
      003B70 22               [24] 2533 	ret
      003B71                       2534 00102$:
                                   2535 ;	8051_i2c_eeprom.c:594: if(!i2c_write((unsigned char)address)) {
      003B71 8E 01            [24] 2536 	mov	ar1,r6
      003B73 89 82            [24] 2537 	mov	dpl,r1
      003B75 C0 07            [24] 2538 	push	ar7
      003B77 C0 06            [24] 2539 	push	ar6
      003B79 C0 05            [24] 2540 	push	ar5
      003B7B C0 04            [24] 2541 	push	ar4
      003B7D C0 03            [24] 2542 	push	ar3
      003B7F C0 02            [24] 2543 	push	ar2
      003B81 12 39 5D         [24] 2544 	lcall	_i2c_write
      003B84 E5 82            [12] 2545 	mov	a,dpl
      003B86 85 83 F0         [24] 2546 	mov	b,dph
      003B89 D0 02            [24] 2547 	pop	ar2
      003B8B D0 03            [24] 2548 	pop	ar3
      003B8D D0 04            [24] 2549 	pop	ar4
      003B8F D0 05            [24] 2550 	pop	ar5
      003B91 D0 06            [24] 2551 	pop	ar6
      003B93 D0 07            [24] 2552 	pop	ar7
      003B95 45 F0            [12] 2553 	orl	a,b
      003B97 70 1C            [24] 2554 	jnz	00104$
                                   2555 ;	8051_i2c_eeprom.c:595: printf("Error: No ACK for memory address\n\r");
      003B99 74 0C            [12] 2556 	mov	a,#___str_33
      003B9B C0 E0            [24] 2557 	push	acc
      003B9D 74 54            [12] 2558 	mov	a,#(___str_33 >> 8)
      003B9F C0 E0            [24] 2559 	push	acc
      003BA1 74 80            [12] 2560 	mov	a,#0x80
      003BA3 C0 E0            [24] 2561 	push	acc
      003BA5 12 3F B0         [24] 2562 	lcall	_printf
      003BA8 15 81            [12] 2563 	dec	sp
      003BAA 15 81            [12] 2564 	dec	sp
      003BAC 15 81            [12] 2565 	dec	sp
                                   2566 ;	8051_i2c_eeprom.c:596: i2c_stop();
      003BAE 12 3D 51         [24] 2567 	lcall	_i2c_stop
                                   2568 ;	8051_i2c_eeprom.c:597: return -1;
      003BB1 90 FF FF         [24] 2569 	mov	dptr,#0xffff
      003BB4 22               [24] 2570 	ret
      003BB5                       2571 00104$:
                                   2572 ;	8051_i2c_eeprom.c:601: i2c_start();
      003BB5 C0 07            [24] 2573 	push	ar7
      003BB7 C0 06            [24] 2574 	push	ar6
      003BB9 C0 05            [24] 2575 	push	ar5
      003BBB C0 04            [24] 2576 	push	ar4
      003BBD C0 03            [24] 2577 	push	ar3
      003BBF C0 02            [24] 2578 	push	ar2
      003BC1 12 3A 4A         [24] 2579 	lcall	_i2c_start
                                   2580 ;	8051_i2c_eeprom.c:604: if(!i2c_write(EEPROM_ID | READ)) {
      003BC4 75 82 A1         [24] 2581 	mov	dpl,#0xa1
      003BC7 12 39 5D         [24] 2582 	lcall	_i2c_write
      003BCA E5 82            [12] 2583 	mov	a,dpl
      003BCC 85 83 F0         [24] 2584 	mov	b,dph
      003BCF D0 02            [24] 2585 	pop	ar2
      003BD1 D0 03            [24] 2586 	pop	ar3
      003BD3 D0 04            [24] 2587 	pop	ar4
      003BD5 D0 05            [24] 2588 	pop	ar5
      003BD7 D0 06            [24] 2589 	pop	ar6
      003BD9 D0 07            [24] 2590 	pop	ar7
      003BDB 45 F0            [12] 2591 	orl	a,b
      003BDD 70 1C            [24] 2592 	jnz	00106$
                                   2593 ;	8051_i2c_eeprom.c:605: printf("Error: No ACK for device address (read mode)\n\r");
      003BDF 74 7B            [12] 2594 	mov	a,#___str_39
      003BE1 C0 E0            [24] 2595 	push	acc
      003BE3 74 55            [12] 2596 	mov	a,#(___str_39 >> 8)
      003BE5 C0 E0            [24] 2597 	push	acc
      003BE7 74 80            [12] 2598 	mov	a,#0x80
      003BE9 C0 E0            [24] 2599 	push	acc
      003BEB 12 3F B0         [24] 2600 	lcall	_printf
      003BEE 15 81            [12] 2601 	dec	sp
      003BF0 15 81            [12] 2602 	dec	sp
      003BF2 15 81            [12] 2603 	dec	sp
                                   2604 ;	8051_i2c_eeprom.c:606: i2c_stop();
      003BF4 12 3D 51         [24] 2605 	lcall	_i2c_stop
                                   2606 ;	8051_i2c_eeprom.c:607: return -1;
      003BF7 90 FF FF         [24] 2607 	mov	dptr,#0xffff
      003BFA 22               [24] 2608 	ret
      003BFB                       2609 00106$:
                                   2610 ;	8051_i2c_eeprom.c:611: result = i2c_read(0);  // 0 means send NACK
      003BFB 90 00 00         [24] 2611 	mov	dptr,#0x0000
      003BFE C0 07            [24] 2612 	push	ar7
      003C00 C0 06            [24] 2613 	push	ar6
      003C02 C0 05            [24] 2614 	push	ar5
      003C04 C0 04            [24] 2615 	push	ar4
      003C06 C0 03            [24] 2616 	push	ar3
      003C08 C0 02            [24] 2617 	push	ar2
      003C0A 12 39 C5         [24] 2618 	lcall	_i2c_read
      003C0D A8 82            [24] 2619 	mov	r0,dpl
                                   2620 ;	8051_i2c_eeprom.c:612: printf("%02X ", result);
      003C0F 79 00            [12] 2621 	mov	r1,#0x00
      003C11 C0 00            [24] 2622 	push	ar0
      003C13 C0 01            [24] 2623 	push	ar1
      003C15 74 D4            [12] 2624 	mov	a,#___str_48
      003C17 C0 E0            [24] 2625 	push	acc
      003C19 74 56            [12] 2626 	mov	a,#(___str_48 >> 8)
      003C1B C0 E0            [24] 2627 	push	acc
      003C1D 74 80            [12] 2628 	mov	a,#0x80
      003C1F C0 E0            [24] 2629 	push	acc
      003C21 12 3F B0         [24] 2630 	lcall	_printf
      003C24 E5 81            [12] 2631 	mov	a,sp
      003C26 24 FB            [12] 2632 	add	a,#0xfb
      003C28 F5 81            [12] 2633 	mov	sp,a
                                   2634 ;	8051_i2c_eeprom.c:614: i2c_stop();
      003C2A 12 3D 51         [24] 2635 	lcall	_i2c_stop
      003C2D D0 02            [24] 2636 	pop	ar2
      003C2F D0 03            [24] 2637 	pop	ar3
      003C31 D0 04            [24] 2638 	pop	ar4
      003C33 D0 05            [24] 2639 	pop	ar5
      003C35 D0 06            [24] 2640 	pop	ar6
      003C37 D0 07            [24] 2641 	pop	ar7
      003C39 80 2D            [24] 2642 	sjmp	00114$
      003C3B                       2643 00108$:
                                   2644 ;	8051_i2c_eeprom.c:618: printf("   "); // Space for missing bytes if end_address reached mid-line
      003C3B C0 07            [24] 2645 	push	ar7
      003C3D C0 06            [24] 2646 	push	ar6
      003C3F C0 05            [24] 2647 	push	ar5
      003C41 C0 04            [24] 2648 	push	ar4
      003C43 C0 03            [24] 2649 	push	ar3
      003C45 C0 02            [24] 2650 	push	ar2
      003C47 74 DA            [12] 2651 	mov	a,#___str_49
      003C49 C0 E0            [24] 2652 	push	acc
      003C4B 74 56            [12] 2653 	mov	a,#(___str_49 >> 8)
      003C4D C0 E0            [24] 2654 	push	acc
      003C4F 74 80            [12] 2655 	mov	a,#0x80
      003C51 C0 E0            [24] 2656 	push	acc
      003C53 12 3F B0         [24] 2657 	lcall	_printf
      003C56 15 81            [12] 2658 	dec	sp
      003C58 15 81            [12] 2659 	dec	sp
      003C5A 15 81            [12] 2660 	dec	sp
      003C5C D0 02            [24] 2661 	pop	ar2
      003C5E D0 03            [24] 2662 	pop	ar3
      003C60 D0 04            [24] 2663 	pop	ar4
      003C62 D0 05            [24] 2664 	pop	ar5
      003C64 D0 06            [24] 2665 	pop	ar6
      003C66 D0 07            [24] 2666 	pop	ar7
      003C68                       2667 00114$:
                                   2668 ;	8051_i2c_eeprom.c:574: for (int offset = 0; offset < MAX_HEX_CHAR_IN_SINGLE_LINE; offset++) {
      003C68 0A               [12] 2669 	inc	r2
      003C69 BA 00 01         [24] 2670 	cjne	r2,#0x00,00158$
      003C6C 0B               [12] 2671 	inc	r3
      003C6D                       2672 00158$:
      003C6D 02 3B 09         [24] 2673 	ljmp	00113$
      003C70                       2674 00110$:
                                   2675 ;	8051_i2c_eeprom.c:623: printf("\r\n");
      003C70 C0 07            [24] 2676 	push	ar7
      003C72 C0 06            [24] 2677 	push	ar6
      003C74 C0 05            [24] 2678 	push	ar5
      003C76 C0 04            [24] 2679 	push	ar4
      003C78 74 FF            [12] 2680 	mov	a,#___str_43
      003C7A C0 E0            [24] 2681 	push	acc
      003C7C 74 55            [12] 2682 	mov	a,#(___str_43 >> 8)
      003C7E C0 E0            [24] 2683 	push	acc
      003C80 74 80            [12] 2684 	mov	a,#0x80
      003C82 C0 E0            [24] 2685 	push	acc
      003C84 12 3F B0         [24] 2686 	lcall	_printf
      003C87 15 81            [12] 2687 	dec	sp
      003C89 15 81            [12] 2688 	dec	sp
      003C8B 15 81            [12] 2689 	dec	sp
      003C8D D0 04            [24] 2690 	pop	ar4
      003C8F D0 05            [24] 2691 	pop	ar5
      003C91 D0 06            [24] 2692 	pop	ar6
      003C93 D0 07            [24] 2693 	pop	ar7
                                   2694 ;	8051_i2c_eeprom.c:569: for (unsigned int address = start_address; address <= end_address; address += MAX_HEX_CHAR_IN_SINGLE_LINE) {
      003C95 74 10            [12] 2695 	mov	a,#0x10
      003C97 2E               [12] 2696 	add	a,r6
      003C98 FE               [12] 2697 	mov	r6,a
      003C99 E4               [12] 2698 	clr	a
      003C9A 3F               [12] 2699 	addc	a,r7
      003C9B FF               [12] 2700 	mov	r7,a
      003C9C 02 3A CE         [24] 2701 	ljmp	00116$
      003C9F                       2702 00111$:
                                   2703 ;	8051_i2c_eeprom.c:625: printf("\r\n");
      003C9F 74 FF            [12] 2704 	mov	a,#___str_43
      003CA1 C0 E0            [24] 2705 	push	acc
      003CA3 74 55            [12] 2706 	mov	a,#(___str_43 >> 8)
      003CA5 C0 E0            [24] 2707 	push	acc
      003CA7 74 80            [12] 2708 	mov	a,#0x80
      003CA9 C0 E0            [24] 2709 	push	acc
      003CAB 12 3F B0         [24] 2710 	lcall	_printf
      003CAE 15 81            [12] 2711 	dec	sp
      003CB0 15 81            [12] 2712 	dec	sp
      003CB2 15 81            [12] 2713 	dec	sp
                                   2714 ;	8051_i2c_eeprom.c:626: return 1;
      003CB4 90 00 01         [24] 2715 	mov	dptr,#0x0001
                                   2716 ;	8051_i2c_eeprom.c:627: }
      003CB7 22               [24] 2717 	ret
                                   2718 ;------------------------------------------------------------
                                   2719 ;Allocation info for local variables in function 'handler_EEPROM_hexdump'
                                   2720 ;------------------------------------------------------------
                                   2721 ;start_addr                Allocated with name '_handler_EEPROM_hexdump_start_addr_65536_125'
                                   2722 ;end_addr                  Allocated with name '_handler_EEPROM_hexdump_end_addr_65537_128'
                                   2723 ;------------------------------------------------------------
                                   2724 ;	8051_i2c_eeprom.c:634: void handler_EEPROM_hexdump(void)
                                   2725 ;	-----------------------------------------
                                   2726 ;	 function handler_EEPROM_hexdump
                                   2727 ;	-----------------------------------------
      003CB8                       2728 _handler_EEPROM_hexdump:
                                   2729 ;	8051_i2c_eeprom.c:637: printf_tiny("\033[1;33m\n\rEnter Start Address for HEX Dump\r\n");
      003CB8 74 DE            [12] 2730 	mov	a,#___str_50
      003CBA C0 E0            [24] 2731 	push	acc
      003CBC 74 56            [12] 2732 	mov	a,#(___str_50 >> 8)
      003CBE C0 E0            [24] 2733 	push	acc
      003CC0 12 3E 59         [24] 2734 	lcall	_printf_tiny
      003CC3 15 81            [12] 2735 	dec	sp
      003CC5 15 81            [12] 2736 	dec	sp
                                   2737 ;	8051_i2c_eeprom.c:638: start_addr = take_address();
      003CC7 12 33 75         [24] 2738 	lcall	_take_address
      003CCA AE 82            [24] 2739 	mov	r6,dpl
      003CCC AF 83            [24] 2740 	mov	r7,dph
      003CCE 8E 04            [24] 2741 	mov	ar4,r6
      003CD0 8F 05            [24] 2742 	mov	ar5,r7
      003CD2 7E 00            [12] 2743 	mov	r6,#0x00
      003CD4 7F 00            [12] 2744 	mov	r7,#0x00
                                   2745 ;	8051_i2c_eeprom.c:640: if(start_addr >= 0 && start_addr <= ADDR_MAX)
      003CD6 C3               [12] 2746 	clr	c
      003CD7 74 FF            [12] 2747 	mov	a,#0xff
      003CD9 9C               [12] 2748 	subb	a,r4
      003CDA 74 07            [12] 2749 	mov	a,#0x07
      003CDC 9D               [12] 2750 	subb	a,r5
      003CDD E4               [12] 2751 	clr	a
      003CDE 9E               [12] 2752 	subb	a,r6
      003CDF E4               [12] 2753 	clr	a
      003CE0 9F               [12] 2754 	subb	a,r7
      003CE1 50 16            [24] 2755 	jnc	00103$
                                   2756 ;	8051_i2c_eeprom.c:645: printf("\033[1;31m\n\rInvalid Start Address Range!!\n\r Address has to be between 0x000 to 0x7FF\033[0m\r\n");
      003CE3 74 0A            [12] 2757 	mov	a,#___str_51
      003CE5 C0 E0            [24] 2758 	push	acc
      003CE7 74 57            [12] 2759 	mov	a,#(___str_51 >> 8)
      003CE9 C0 E0            [24] 2760 	push	acc
      003CEB 74 80            [12] 2761 	mov	a,#0x80
      003CED C0 E0            [24] 2762 	push	acc
      003CEF 12 3F B0         [24] 2763 	lcall	_printf
      003CF2 15 81            [12] 2764 	dec	sp
      003CF4 15 81            [12] 2765 	dec	sp
      003CF6 15 81            [12] 2766 	dec	sp
                                   2767 ;	8051_i2c_eeprom.c:646: return;
      003CF8 22               [24] 2768 	ret
      003CF9                       2769 00103$:
                                   2770 ;	8051_i2c_eeprom.c:651: printf_tiny("\033[1;33m\n\rEnter End Address for HEX Dump\r\n");
      003CF9 C0 07            [24] 2771 	push	ar7
      003CFB C0 06            [24] 2772 	push	ar6
      003CFD C0 05            [24] 2773 	push	ar5
      003CFF C0 04            [24] 2774 	push	ar4
      003D01 74 62            [12] 2775 	mov	a,#___str_52
      003D03 C0 E0            [24] 2776 	push	acc
      003D05 74 57            [12] 2777 	mov	a,#(___str_52 >> 8)
      003D07 C0 E0            [24] 2778 	push	acc
      003D09 12 3E 59         [24] 2779 	lcall	_printf_tiny
      003D0C 15 81            [12] 2780 	dec	sp
      003D0E 15 81            [12] 2781 	dec	sp
                                   2782 ;	8051_i2c_eeprom.c:652: end_addr = take_address();
      003D10 12 33 75         [24] 2783 	lcall	_take_address
      003D13 AA 82            [24] 2784 	mov	r2,dpl
      003D15 AB 83            [24] 2785 	mov	r3,dph
      003D17 D0 04            [24] 2786 	pop	ar4
      003D19 D0 05            [24] 2787 	pop	ar5
      003D1B D0 06            [24] 2788 	pop	ar6
      003D1D D0 07            [24] 2789 	pop	ar7
                                   2790 ;	8051_i2c_eeprom.c:654: if(end_addr >= 0 && end_addr <= ADDR_MAX)
      003D1F 8A 00            [24] 2791 	mov	ar0,r2
      003D21 8B 01            [24] 2792 	mov	ar1,r3
      003D23 C3               [12] 2793 	clr	c
      003D24 74 FF            [12] 2794 	mov	a,#0xff
      003D26 98               [12] 2795 	subb	a,r0
      003D27 74 07            [12] 2796 	mov	a,#0x07
      003D29 99               [12] 2797 	subb	a,r1
      003D2A 50 16            [24] 2798 	jnc	00107$
                                   2799 ;	8051_i2c_eeprom.c:659: printf("\033[1;31m\n\rInvalid End Address Range!!\n\r Address has to be between 0x000 to 0x7FF\033[0m\r\n");
      003D2C 74 8C            [12] 2800 	mov	a,#___str_53
      003D2E C0 E0            [24] 2801 	push	acc
      003D30 74 57            [12] 2802 	mov	a,#(___str_53 >> 8)
      003D32 C0 E0            [24] 2803 	push	acc
      003D34 74 80            [12] 2804 	mov	a,#0x80
      003D36 C0 E0            [24] 2805 	push	acc
      003D38 12 3F B0         [24] 2806 	lcall	_printf
      003D3B 15 81            [12] 2807 	dec	sp
      003D3D 15 81            [12] 2808 	dec	sp
      003D3F 15 81            [12] 2809 	dec	sp
                                   2810 ;	8051_i2c_eeprom.c:660: return;
      003D41 22               [24] 2811 	ret
      003D42                       2812 00107$:
                                   2813 ;	8051_i2c_eeprom.c:663: EEPROM_hexump(start_addr,end_addr);
      003D42 90 04 18         [24] 2814 	mov	dptr,#_EEPROM_hexump_PARM_2
      003D45 EA               [12] 2815 	mov	a,r2
      003D46 F0               [24] 2816 	movx	@dptr,a
      003D47 EB               [12] 2817 	mov	a,r3
      003D48 A3               [24] 2818 	inc	dptr
      003D49 F0               [24] 2819 	movx	@dptr,a
      003D4A 8C 82            [24] 2820 	mov	dpl,r4
      003D4C 8D 83            [24] 2821 	mov	dph,r5
                                   2822 ;	8051_i2c_eeprom.c:664: }
      003D4E 02 3A 5F         [24] 2823 	ljmp	_EEPROM_hexump
                                   2824 ;------------------------------------------------------------
                                   2825 ;Allocation info for local variables in function 'i2c_stop'
                                   2826 ;------------------------------------------------------------
                                   2827 ;	8051_i2c_eeprom.c:671: void i2c_stop(void)
                                   2828 ;	-----------------------------------------
                                   2829 ;	 function i2c_stop
                                   2830 ;	-----------------------------------------
      003D51                       2831 _i2c_stop:
                                   2832 ;	8051_i2c_eeprom.c:673: SDA = 0;
                                   2833 ;	assignBit
      003D51 C2 94            [12] 2834 	clr	_P1_4
                                   2835 ;	8051_i2c_eeprom.c:674: i2c_delay();
      003D53 12 3D 8A         [24] 2836 	lcall	_i2c_delay
                                   2837 ;	8051_i2c_eeprom.c:675: SCL = 1;
                                   2838 ;	assignBit
      003D56 D2 93            [12] 2839 	setb	_P1_3
                                   2840 ;	8051_i2c_eeprom.c:676: i2c_delay();
      003D58 12 3D 8A         [24] 2841 	lcall	_i2c_delay
                                   2842 ;	8051_i2c_eeprom.c:677: SDA = 1; 
                                   2843 ;	assignBit
      003D5B D2 94            [12] 2844 	setb	_P1_4
                                   2845 ;	8051_i2c_eeprom.c:678: }
      003D5D 22               [24] 2846 	ret
                                   2847 ;------------------------------------------------------------
                                   2848 ;Allocation info for local variables in function 'eeprom_reset'
                                   2849 ;------------------------------------------------------------
                                   2850 ;i                         Allocated with name '_eeprom_reset_i_131072_134'
                                   2851 ;------------------------------------------------------------
                                   2852 ;	8051_i2c_eeprom.c:688: void eeprom_reset()
                                   2853 ;	-----------------------------------------
                                   2854 ;	 function eeprom_reset
                                   2855 ;	-----------------------------------------
      003D5E                       2856 _eeprom_reset:
                                   2857 ;	8051_i2c_eeprom.c:690: i2c_start();
      003D5E 12 3A 4A         [24] 2858 	lcall	_i2c_start
                                   2859 ;	8051_i2c_eeprom.c:691: SDA = 0;
                                   2860 ;	assignBit
      003D61 C2 94            [12] 2861 	clr	_P1_4
                                   2862 ;	8051_i2c_eeprom.c:692: SDA = 1;
                                   2863 ;	assignBit
      003D63 D2 94            [12] 2864 	setb	_P1_4
                                   2865 ;	8051_i2c_eeprom.c:693: for(int i = 0; i<10; i++)
      003D65 7E 00            [12] 2866 	mov	r6,#0x00
      003D67 7F 00            [12] 2867 	mov	r7,#0x00
      003D69                       2868 00103$:
      003D69 C3               [12] 2869 	clr	c
      003D6A EE               [12] 2870 	mov	a,r6
      003D6B 94 0A            [12] 2871 	subb	a,#0x0a
      003D6D EF               [12] 2872 	mov	a,r7
      003D6E 64 80            [12] 2873 	xrl	a,#0x80
      003D70 94 80            [12] 2874 	subb	a,#0x80
      003D72 50 0B            [24] 2875 	jnc	00101$
                                   2876 ;	8051_i2c_eeprom.c:695: SCL = 0;
                                   2877 ;	assignBit
      003D74 C2 93            [12] 2878 	clr	_P1_3
                                   2879 ;	8051_i2c_eeprom.c:696: SCL = 1;
                                   2880 ;	assignBit
      003D76 D2 93            [12] 2881 	setb	_P1_3
                                   2882 ;	8051_i2c_eeprom.c:693: for(int i = 0; i<10; i++)
      003D78 0E               [12] 2883 	inc	r6
      003D79 BE 00 ED         [24] 2884 	cjne	r6,#0x00,00103$
      003D7C 0F               [12] 2885 	inc	r7
      003D7D 80 EA            [24] 2886 	sjmp	00103$
      003D7F                       2887 00101$:
                                   2888 ;	8051_i2c_eeprom.c:698: i2c_start();
      003D7F 12 3A 4A         [24] 2889 	lcall	_i2c_start
                                   2890 ;	8051_i2c_eeprom.c:699: SDA = 0;
                                   2891 ;	assignBit
      003D82 C2 94            [12] 2892 	clr	_P1_4
                                   2893 ;	8051_i2c_eeprom.c:700: i2c_stop();
      003D84 12 3D 51         [24] 2894 	lcall	_i2c_stop
                                   2895 ;	8051_i2c_eeprom.c:701: SDA = 1;
                                   2896 ;	assignBit
      003D87 D2 94            [12] 2897 	setb	_P1_4
                                   2898 ;	8051_i2c_eeprom.c:702: }
      003D89 22               [24] 2899 	ret
                                   2900 ;------------------------------------------------------------
                                   2901 ;Allocation info for local variables in function 'i2c_delay'
                                   2902 ;------------------------------------------------------------
                                   2903 ;i                         Allocated with name '_i2c_delay_i_131072_137'
                                   2904 ;------------------------------------------------------------
                                   2905 ;	8051_i2c_eeprom.c:711: void i2c_delay() 
                                   2906 ;	-----------------------------------------
                                   2907 ;	 function i2c_delay
                                   2908 ;	-----------------------------------------
      003D8A                       2909 _i2c_delay:
                                   2910 ;	8051_i2c_eeprom.c:719: for(int i = 0; i<500; i++);
      003D8A 7E 00            [12] 2911 	mov	r6,#0x00
      003D8C 7F 00            [12] 2912 	mov	r7,#0x00
      003D8E                       2913 00103$:
      003D8E C3               [12] 2914 	clr	c
      003D8F EE               [12] 2915 	mov	a,r6
      003D90 94 F4            [12] 2916 	subb	a,#0xf4
      003D92 EF               [12] 2917 	mov	a,r7
      003D93 64 80            [12] 2918 	xrl	a,#0x80
      003D95 94 81            [12] 2919 	subb	a,#0x81
      003D97 50 07            [24] 2920 	jnc	00105$
      003D99 0E               [12] 2921 	inc	r6
      003D9A BE 00 F1         [24] 2922 	cjne	r6,#0x00,00103$
      003D9D 0F               [12] 2923 	inc	r7
      003D9E 80 EE            [24] 2924 	sjmp	00103$
      003DA0                       2925 00105$:
                                   2926 ;	8051_i2c_eeprom.c:720: }
      003DA0 22               [24] 2927 	ret
                                   2928 ;------------------------------------------------------------
                                   2929 ;Allocation info for local variables in function 'test_function'
                                   2930 ;------------------------------------------------------------
                                   2931 ;test_data                 Allocated with name '_test_function_test_data_65537_139'
                                   2932 ;address                   Allocated with name '_test_function_address_65537_139'
                                   2933 ;i                         Allocated with name '_test_function_i_131073_140'
                                   2934 ;read_data                 Allocated with name '_test_function_read_data_65538_142'
                                   2935 ;------------------------------------------------------------
                                   2936 ;	8051_i2c_eeprom.c:722: void test_function()
                                   2937 ;	-----------------------------------------
                                   2938 ;	 function test_function
                                   2939 ;	-----------------------------------------
      003DA1                       2940 _test_function:
                                   2941 ;	8051_i2c_eeprom.c:724: i2c_start();
      003DA1 12 3A 4A         [24] 2942 	lcall	_i2c_start
                                   2943 ;	8051_i2c_eeprom.c:725: i2c_delay();
      003DA4 12 3D 8A         [24] 2944 	lcall	_i2c_delay
                                   2945 ;	8051_i2c_eeprom.c:731: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      003DA7 74 02            [12] 2946 	mov	a,#0x02
      003DA9 C0 E0            [24] 2947 	push	acc
      003DAB E4               [12] 2948 	clr	a
      003DAC C0 E0            [24] 2949 	push	acc
      003DAE 74 26            [12] 2950 	mov	a,#0x26
      003DB0 C0 E0            [24] 2951 	push	acc
      003DB2 E4               [12] 2952 	clr	a
      003DB3 C0 E0            [24] 2953 	push	acc
      003DB5 74 E2            [12] 2954 	mov	a,#___str_54
      003DB7 C0 E0            [24] 2955 	push	acc
      003DB9 74 57            [12] 2956 	mov	a,#(___str_54 >> 8)
      003DBB C0 E0            [24] 2957 	push	acc
      003DBD 74 80            [12] 2958 	mov	a,#0x80
      003DBF C0 E0            [24] 2959 	push	acc
      003DC1 12 3F B0         [24] 2960 	lcall	_printf
      003DC4 E5 81            [12] 2961 	mov	a,sp
      003DC6 24 F9            [12] 2962 	add	a,#0xf9
      003DC8 F5 81            [12] 2963 	mov	sp,a
                                   2964 ;	8051_i2c_eeprom.c:732: eeprom_write(address, test_data);
      003DCA 90 04 0F         [24] 2965 	mov	dptr,#_eeprom_write_PARM_2
      003DCD 74 26            [12] 2966 	mov	a,#0x26
      003DCF F0               [24] 2967 	movx	@dptr,a
      003DD0 90 00 02         [24] 2968 	mov	dptr,#0x0002
      003DD3 12 37 07         [24] 2969 	lcall	_eeprom_write
                                   2970 ;	8051_i2c_eeprom.c:733: i2c_stop();
      003DD6 12 3D 51         [24] 2971 	lcall	_i2c_stop
                                   2972 ;	8051_i2c_eeprom.c:735: for(int i = 0; i<100; i++)
      003DD9 7E 00            [12] 2973 	mov	r6,#0x00
      003DDB 7F 00            [12] 2974 	mov	r7,#0x00
      003DDD                       2975 00106$:
      003DDD C3               [12] 2976 	clr	c
      003DDE EE               [12] 2977 	mov	a,r6
      003DDF 94 64            [12] 2978 	subb	a,#0x64
      003DE1 EF               [12] 2979 	mov	a,r7
      003DE2 64 80            [12] 2980 	xrl	a,#0x80
      003DE4 94 80            [12] 2981 	subb	a,#0x80
      003DE6 50 12            [24] 2982 	jnc	00101$
                                   2983 ;	8051_i2c_eeprom.c:737: i2c_delay();
      003DE8 C0 07            [24] 2984 	push	ar7
      003DEA C0 06            [24] 2985 	push	ar6
      003DEC 12 3D 8A         [24] 2986 	lcall	_i2c_delay
      003DEF D0 06            [24] 2987 	pop	ar6
      003DF1 D0 07            [24] 2988 	pop	ar7
                                   2989 ;	8051_i2c_eeprom.c:735: for(int i = 0; i<100; i++)
      003DF3 0E               [12] 2990 	inc	r6
      003DF4 BE 00 E6         [24] 2991 	cjne	r6,#0x00,00106$
      003DF7 0F               [12] 2992 	inc	r7
      003DF8 80 E3            [24] 2993 	sjmp	00106$
      003DFA                       2994 00101$:
                                   2995 ;	8051_i2c_eeprom.c:741: unsigned char read_data = eeprom_read(address);
      003DFA 90 00 02         [24] 2996 	mov	dptr,#0x0002
      003DFD 12 38 49         [24] 2997 	lcall	_eeprom_read
      003E00 AE 82            [24] 2998 	mov	r6,dpl
                                   2999 ;	8051_i2c_eeprom.c:742: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      003E02 8E 05            [24] 3000 	mov	ar5,r6
      003E04 7F 00            [12] 3001 	mov	r7,#0x00
      003E06 C0 06            [24] 3002 	push	ar6
      003E08 C0 05            [24] 3003 	push	ar5
      003E0A C0 07            [24] 3004 	push	ar7
      003E0C 74 02            [12] 3005 	mov	a,#0x02
      003E0E C0 E0            [24] 3006 	push	acc
      003E10 E4               [12] 3007 	clr	a
      003E11 C0 E0            [24] 3008 	push	acc
      003E13 74 0A            [12] 3009 	mov	a,#___str_55
      003E15 C0 E0            [24] 3010 	push	acc
      003E17 74 58            [12] 3011 	mov	a,#(___str_55 >> 8)
      003E19 C0 E0            [24] 3012 	push	acc
      003E1B 74 80            [12] 3013 	mov	a,#0x80
      003E1D C0 E0            [24] 3014 	push	acc
      003E1F 12 3F B0         [24] 3015 	lcall	_printf
      003E22 E5 81            [12] 3016 	mov	a,sp
      003E24 24 F9            [12] 3017 	add	a,#0xf9
      003E26 F5 81            [12] 3018 	mov	sp,a
      003E28 D0 06            [24] 3019 	pop	ar6
                                   3020 ;	8051_i2c_eeprom.c:745: if(read_data == test_data) {
      003E2A BE 26 16         [24] 3021 	cjne	r6,#0x26,00103$
                                   3022 ;	8051_i2c_eeprom.c:746: printf("MATCH - Write/Read successful!\n\r");
      003E2D 74 32            [12] 3023 	mov	a,#___str_56
      003E2F C0 E0            [24] 3024 	push	acc
      003E31 74 58            [12] 3025 	mov	a,#(___str_56 >> 8)
      003E33 C0 E0            [24] 3026 	push	acc
      003E35 74 80            [12] 3027 	mov	a,#0x80
      003E37 C0 E0            [24] 3028 	push	acc
      003E39 12 3F B0         [24] 3029 	lcall	_printf
      003E3C 15 81            [12] 3030 	dec	sp
      003E3E 15 81            [12] 3031 	dec	sp
      003E40 15 81            [12] 3032 	dec	sp
      003E42 22               [24] 3033 	ret
      003E43                       3034 00103$:
                                   3035 ;	8051_i2c_eeprom.c:748: printf("ERROR - Data mismatch!\n\r");
      003E43 74 53            [12] 3036 	mov	a,#___str_57
      003E45 C0 E0            [24] 3037 	push	acc
      003E47 74 58            [12] 3038 	mov	a,#(___str_57 >> 8)
      003E49 C0 E0            [24] 3039 	push	acc
      003E4B 74 80            [12] 3040 	mov	a,#0x80
      003E4D C0 E0            [24] 3041 	push	acc
      003E4F 12 3F B0         [24] 3042 	lcall	_printf
      003E52 15 81            [12] 3043 	dec	sp
      003E54 15 81            [12] 3044 	dec	sp
      003E56 15 81            [12] 3045 	dec	sp
                                   3046 ;	8051_i2c_eeprom.c:752: }
      003E58 22               [24] 3047 	ret
                                   3048 	.area CSEG    (CODE)
                                   3049 	.area CONST   (CODE)
                                   3050 	.area CONST   (CODE)
      004A12                       3051 ___str_0:
      004A12 0A                    3052 	.db 0x0a
      004A13 E2                    3053 	.db 0xe2
      004A14 95                    3054 	.db 0x95
      004A15 94                    3055 	.db 0x94
      004A16 E2                    3056 	.db 0xe2
      004A17 95                    3057 	.db 0x95
      004A18 90                    3058 	.db 0x90
      004A19 E2                    3059 	.db 0xe2
      004A1A 95                    3060 	.db 0x95
      004A1B 90                    3061 	.db 0x90
      004A1C E2                    3062 	.db 0xe2
      004A1D 95                    3063 	.db 0x95
      004A1E 90                    3064 	.db 0x90
      004A1F E2                    3065 	.db 0xe2
      004A20 95                    3066 	.db 0x95
      004A21 90                    3067 	.db 0x90
      004A22 E2                    3068 	.db 0xe2
      004A23 95                    3069 	.db 0x95
      004A24 90                    3070 	.db 0x90
      004A25 E2                    3071 	.db 0xe2
      004A26 95                    3072 	.db 0x95
      004A27 90                    3073 	.db 0x90
      004A28 E2                    3074 	.db 0xe2
      004A29 95                    3075 	.db 0x95
      004A2A 90                    3076 	.db 0x90
      004A2B E2                    3077 	.db 0xe2
      004A2C 95                    3078 	.db 0x95
      004A2D 90                    3079 	.db 0x90
      004A2E E2                    3080 	.db 0xe2
      004A2F 95                    3081 	.db 0x95
      004A30 90                    3082 	.db 0x90
      004A31 E2                    3083 	.db 0xe2
      004A32 95                    3084 	.db 0x95
      004A33 90                    3085 	.db 0x90
      004A34 E2                    3086 	.db 0xe2
      004A35 95                    3087 	.db 0x95
      004A36 90                    3088 	.db 0x90
      004A37 E2                    3089 	.db 0xe2
      004A38 95                    3090 	.db 0x95
      004A39 90                    3091 	.db 0x90
      004A3A E2                    3092 	.db 0xe2
      004A3B 95                    3093 	.db 0x95
      004A3C 90                    3094 	.db 0x90
      004A3D E2                    3095 	.db 0xe2
      004A3E 95                    3096 	.db 0x95
      004A3F 90                    3097 	.db 0x90
      004A40 E2                    3098 	.db 0xe2
      004A41 95                    3099 	.db 0x95
      004A42 90                    3100 	.db 0x90
      004A43 E2                    3101 	.db 0xe2
      004A44 95                    3102 	.db 0x95
      004A45 90                    3103 	.db 0x90
      004A46 E2                    3104 	.db 0xe2
      004A47 95                    3105 	.db 0x95
      004A48 90                    3106 	.db 0x90
      004A49 E2                    3107 	.db 0xe2
      004A4A 95                    3108 	.db 0x95
      004A4B 90                    3109 	.db 0x90
      004A4C E2                    3110 	.db 0xe2
      004A4D 95                    3111 	.db 0x95
      004A4E 90                    3112 	.db 0x90
      004A4F E2                    3113 	.db 0xe2
      004A50 95                    3114 	.db 0x95
      004A51 90                    3115 	.db 0x90
      004A52 E2                    3116 	.db 0xe2
      004A53 95                    3117 	.db 0x95
      004A54 90                    3118 	.db 0x90
      004A55 E2                    3119 	.db 0xe2
      004A56 95                    3120 	.db 0x95
      004A57 90                    3121 	.db 0x90
      004A58 E2                    3122 	.db 0xe2
      004A59 95                    3123 	.db 0x95
      004A5A 90                    3124 	.db 0x90
      004A5B E2                    3125 	.db 0xe2
      004A5C 95                    3126 	.db 0x95
      004A5D 90                    3127 	.db 0x90
      004A5E E2                    3128 	.db 0xe2
      004A5F 95                    3129 	.db 0x95
      004A60 90                    3130 	.db 0x90
      004A61 E2                    3131 	.db 0xe2
      004A62 95                    3132 	.db 0x95
      004A63 90                    3133 	.db 0x90
      004A64 E2                    3134 	.db 0xe2
      004A65 95                    3135 	.db 0x95
      004A66 90                    3136 	.db 0x90
      004A67 E2                    3137 	.db 0xe2
      004A68 95                    3138 	.db 0x95
      004A69 90                    3139 	.db 0x90
      004A6A E2                    3140 	.db 0xe2
      004A6B 95                    3141 	.db 0x95
      004A6C 90                    3142 	.db 0x90
      004A6D E2                    3143 	.db 0xe2
      004A6E 95                    3144 	.db 0x95
      004A6F 90                    3145 	.db 0x90
      004A70 E2                    3146 	.db 0xe2
      004A71 95                    3147 	.db 0x95
      004A72 90                    3148 	.db 0x90
      004A73 E2                    3149 	.db 0xe2
      004A74 95                    3150 	.db 0x95
      004A75 90                    3151 	.db 0x90
      004A76 E2                    3152 	.db 0xe2
      004A77 95                    3153 	.db 0x95
      004A78 90                    3154 	.db 0x90
      004A79 E2                    3155 	.db 0xe2
      004A7A 95                    3156 	.db 0x95
      004A7B 90                    3157 	.db 0x90
      004A7C E2                    3158 	.db 0xe2
      004A7D 95                    3159 	.db 0x95
      004A7E 90                    3160 	.db 0x90
      004A7F E2                    3161 	.db 0xe2
      004A80 95                    3162 	.db 0x95
      004A81 90                    3163 	.db 0x90
      004A82 E2                    3164 	.db 0xe2
      004A83 95                    3165 	.db 0x95
      004A84 90                    3166 	.db 0x90
      004A85 E2                    3167 	.db 0xe2
      004A86 95                    3168 	.db 0x95
      004A87 90                    3169 	.db 0x90
      004A88 E2                    3170 	.db 0xe2
      004A89 95                    3171 	.db 0x95
      004A8A 90                    3172 	.db 0x90
      004A8B E2                    3173 	.db 0xe2
      004A8C 95                    3174 	.db 0x95
      004A8D 90                    3175 	.db 0x90
      004A8E E2                    3176 	.db 0xe2
      004A8F 95                    3177 	.db 0x95
      004A90 90                    3178 	.db 0x90
      004A91 E2                    3179 	.db 0xe2
      004A92 95                    3180 	.db 0x95
      004A93 90                    3181 	.db 0x90
      004A94 E2                    3182 	.db 0xe2
      004A95 95                    3183 	.db 0x95
      004A96 90                    3184 	.db 0x90
      004A97 E2                    3185 	.db 0xe2
      004A98 95                    3186 	.db 0x95
      004A99 90                    3187 	.db 0x90
      004A9A E2                    3188 	.db 0xe2
      004A9B 95                    3189 	.db 0x95
      004A9C 90                    3190 	.db 0x90
      004A9D E2                    3191 	.db 0xe2
      004A9E 95                    3192 	.db 0x95
      004A9F 90                    3193 	.db 0x90
      004AA0 E2                    3194 	.db 0xe2
      004AA1 95                    3195 	.db 0x95
      004AA2 90                    3196 	.db 0x90
      004AA3 E2                    3197 	.db 0xe2
      004AA4 95                    3198 	.db 0x95
      004AA5 90                    3199 	.db 0x90
      004AA6 E2                    3200 	.db 0xe2
      004AA7 95                    3201 	.db 0x95
      004AA8 90                    3202 	.db 0x90
      004AA9 E2                    3203 	.db 0xe2
      004AAA 95                    3204 	.db 0x95
      004AAB 90                    3205 	.db 0x90
      004AAC E2                    3206 	.db 0xe2
      004AAD 95                    3207 	.db 0x95
      004AAE 90                    3208 	.db 0x90
      004AAF E2                    3209 	.db 0xe2
      004AB0 95                    3210 	.db 0x95
      004AB1 90                    3211 	.db 0x90
      004AB2 E2                    3212 	.db 0xe2
      004AB3 95                    3213 	.db 0x95
      004AB4 90                    3214 	.db 0x90
      004AB5 E2                    3215 	.db 0xe2
      004AB6 95                    3216 	.db 0x95
      004AB7 90                    3217 	.db 0x90
      004AB8 E2                    3218 	.db 0xe2
      004AB9 95                    3219 	.db 0x95
      004ABA 90                    3220 	.db 0x90
      004ABB E2                    3221 	.db 0xe2
      004ABC 95                    3222 	.db 0x95
      004ABD 90                    3223 	.db 0x90
      004ABE E2                    3224 	.db 0xe2
      004ABF 95                    3225 	.db 0x95
      004AC0 97                    3226 	.db 0x97
      004AC1 0A                    3227 	.db 0x0a
      004AC2 0D                    3228 	.db 0x0d
      004AC3 00                    3229 	.db 0x00
                                   3230 	.area CSEG    (CODE)
                                   3231 	.area CONST   (CODE)
      004AC4                       3232 ___str_1:
      004AC4 E2                    3233 	.db 0xe2
      004AC5 95                    3234 	.db 0x95
      004AC6 91                    3235 	.db 0x91
      004AC7 20 20 20 20 20 20 20  3236 	.ascii "           I2C Memory Management System v1.0            "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
      004AFF E2                    3237 	.db 0xe2
      004B00 95                    3238 	.db 0x95
      004B01 91                    3239 	.db 0x91
      004B02 0A                    3240 	.db 0x0a
      004B03 0D                    3241 	.db 0x0d
      004B04 00                    3242 	.db 0x00
                                   3243 	.area CSEG    (CODE)
                                   3244 	.area CONST   (CODE)
      004B05                       3245 ___str_2:
      004B05 E2                    3246 	.db 0xe2
      004B06 95                    3247 	.db 0x95
      004B07 9A                    3248 	.db 0x9a
      004B08 E2                    3249 	.db 0xe2
      004B09 95                    3250 	.db 0x95
      004B0A 90                    3251 	.db 0x90
      004B0B E2                    3252 	.db 0xe2
      004B0C 95                    3253 	.db 0x95
      004B0D 90                    3254 	.db 0x90
      004B0E E2                    3255 	.db 0xe2
      004B0F 95                    3256 	.db 0x95
      004B10 90                    3257 	.db 0x90
      004B11 E2                    3258 	.db 0xe2
      004B12 95                    3259 	.db 0x95
      004B13 90                    3260 	.db 0x90
      004B14 E2                    3261 	.db 0xe2
      004B15 95                    3262 	.db 0x95
      004B16 90                    3263 	.db 0x90
      004B17 E2                    3264 	.db 0xe2
      004B18 95                    3265 	.db 0x95
      004B19 90                    3266 	.db 0x90
      004B1A E2                    3267 	.db 0xe2
      004B1B 95                    3268 	.db 0x95
      004B1C 90                    3269 	.db 0x90
      004B1D E2                    3270 	.db 0xe2
      004B1E 95                    3271 	.db 0x95
      004B1F 90                    3272 	.db 0x90
      004B20 E2                    3273 	.db 0xe2
      004B21 95                    3274 	.db 0x95
      004B22 90                    3275 	.db 0x90
      004B23 E2                    3276 	.db 0xe2
      004B24 95                    3277 	.db 0x95
      004B25 90                    3278 	.db 0x90
      004B26 E2                    3279 	.db 0xe2
      004B27 95                    3280 	.db 0x95
      004B28 90                    3281 	.db 0x90
      004B29 E2                    3282 	.db 0xe2
      004B2A 95                    3283 	.db 0x95
      004B2B 90                    3284 	.db 0x90
      004B2C E2                    3285 	.db 0xe2
      004B2D 95                    3286 	.db 0x95
      004B2E 90                    3287 	.db 0x90
      004B2F E2                    3288 	.db 0xe2
      004B30 95                    3289 	.db 0x95
      004B31 90                    3290 	.db 0x90
      004B32 E2                    3291 	.db 0xe2
      004B33 95                    3292 	.db 0x95
      004B34 90                    3293 	.db 0x90
      004B35 E2                    3294 	.db 0xe2
      004B36 95                    3295 	.db 0x95
      004B37 90                    3296 	.db 0x90
      004B38 E2                    3297 	.db 0xe2
      004B39 95                    3298 	.db 0x95
      004B3A 90                    3299 	.db 0x90
      004B3B E2                    3300 	.db 0xe2
      004B3C 95                    3301 	.db 0x95
      004B3D 90                    3302 	.db 0x90
      004B3E E2                    3303 	.db 0xe2
      004B3F 95                    3304 	.db 0x95
      004B40 90                    3305 	.db 0x90
      004B41 E2                    3306 	.db 0xe2
      004B42 95                    3307 	.db 0x95
      004B43 90                    3308 	.db 0x90
      004B44 E2                    3309 	.db 0xe2
      004B45 95                    3310 	.db 0x95
      004B46 90                    3311 	.db 0x90
      004B47 E2                    3312 	.db 0xe2
      004B48 95                    3313 	.db 0x95
      004B49 90                    3314 	.db 0x90
      004B4A E2                    3315 	.db 0xe2
      004B4B 95                    3316 	.db 0x95
      004B4C 90                    3317 	.db 0x90
      004B4D E2                    3318 	.db 0xe2
      004B4E 95                    3319 	.db 0x95
      004B4F 90                    3320 	.db 0x90
      004B50 E2                    3321 	.db 0xe2
      004B51 95                    3322 	.db 0x95
      004B52 90                    3323 	.db 0x90
      004B53 E2                    3324 	.db 0xe2
      004B54 95                    3325 	.db 0x95
      004B55 90                    3326 	.db 0x90
      004B56 E2                    3327 	.db 0xe2
      004B57 95                    3328 	.db 0x95
      004B58 90                    3329 	.db 0x90
      004B59 E2                    3330 	.db 0xe2
      004B5A 95                    3331 	.db 0x95
      004B5B 90                    3332 	.db 0x90
      004B5C E2                    3333 	.db 0xe2
      004B5D 95                    3334 	.db 0x95
      004B5E 90                    3335 	.db 0x90
      004B5F E2                    3336 	.db 0xe2
      004B60 95                    3337 	.db 0x95
      004B61 90                    3338 	.db 0x90
      004B62 E2                    3339 	.db 0xe2
      004B63 95                    3340 	.db 0x95
      004B64 90                    3341 	.db 0x90
      004B65 E2                    3342 	.db 0xe2
      004B66 95                    3343 	.db 0x95
      004B67 90                    3344 	.db 0x90
      004B68 E2                    3345 	.db 0xe2
      004B69 95                    3346 	.db 0x95
      004B6A 90                    3347 	.db 0x90
      004B6B E2                    3348 	.db 0xe2
      004B6C 95                    3349 	.db 0x95
      004B6D 90                    3350 	.db 0x90
      004B6E E2                    3351 	.db 0xe2
      004B6F 95                    3352 	.db 0x95
      004B70 90                    3353 	.db 0x90
      004B71 E2                    3354 	.db 0xe2
      004B72 95                    3355 	.db 0x95
      004B73 90                    3356 	.db 0x90
      004B74 E2                    3357 	.db 0xe2
      004B75 95                    3358 	.db 0x95
      004B76 90                    3359 	.db 0x90
      004B77 E2                    3360 	.db 0xe2
      004B78 95                    3361 	.db 0x95
      004B79 90                    3362 	.db 0x90
      004B7A E2                    3363 	.db 0xe2
      004B7B 95                    3364 	.db 0x95
      004B7C 90                    3365 	.db 0x90
      004B7D E2                    3366 	.db 0xe2
      004B7E 95                    3367 	.db 0x95
      004B7F 90                    3368 	.db 0x90
      004B80 E2                    3369 	.db 0xe2
      004B81 95                    3370 	.db 0x95
      004B82 90                    3371 	.db 0x90
      004B83 E2                    3372 	.db 0xe2
      004B84 95                    3373 	.db 0x95
      004B85 90                    3374 	.db 0x90
      004B86 E2                    3375 	.db 0xe2
      004B87 95                    3376 	.db 0x95
      004B88 90                    3377 	.db 0x90
      004B89 E2                    3378 	.db 0xe2
      004B8A 95                    3379 	.db 0x95
      004B8B 90                    3380 	.db 0x90
      004B8C E2                    3381 	.db 0xe2
      004B8D 95                    3382 	.db 0x95
      004B8E 90                    3383 	.db 0x90
      004B8F E2                    3384 	.db 0xe2
      004B90 95                    3385 	.db 0x95
      004B91 90                    3386 	.db 0x90
      004B92 E2                    3387 	.db 0xe2
      004B93 95                    3388 	.db 0x95
      004B94 90                    3389 	.db 0x90
      004B95 E2                    3390 	.db 0xe2
      004B96 95                    3391 	.db 0x95
      004B97 90                    3392 	.db 0x90
      004B98 E2                    3393 	.db 0xe2
      004B99 95                    3394 	.db 0x95
      004B9A 90                    3395 	.db 0x90
      004B9B E2                    3396 	.db 0xe2
      004B9C 95                    3397 	.db 0x95
      004B9D 90                    3398 	.db 0x90
      004B9E E2                    3399 	.db 0xe2
      004B9F 95                    3400 	.db 0x95
      004BA0 90                    3401 	.db 0x90
      004BA1 E2                    3402 	.db 0xe2
      004BA2 95                    3403 	.db 0x95
      004BA3 90                    3404 	.db 0x90
      004BA4 E2                    3405 	.db 0xe2
      004BA5 95                    3406 	.db 0x95
      004BA6 90                    3407 	.db 0x90
      004BA7 E2                    3408 	.db 0xe2
      004BA8 95                    3409 	.db 0x95
      004BA9 90                    3410 	.db 0x90
      004BAA E2                    3411 	.db 0xe2
      004BAB 95                    3412 	.db 0x95
      004BAC 90                    3413 	.db 0x90
      004BAD E2                    3414 	.db 0xe2
      004BAE 95                    3415 	.db 0x95
      004BAF 90                    3416 	.db 0x90
      004BB0 E2                    3417 	.db 0xe2
      004BB1 95                    3418 	.db 0x95
      004BB2 9D                    3419 	.db 0x9d
      004BB3 0A                    3420 	.db 0x0a
      004BB4 0D                    3421 	.db 0x0d
      004BB5 00                    3422 	.db 0x00
                                   3423 	.area CSEG    (CODE)
                                   3424 	.area CONST   (CODE)
      004BB6                       3425 ___str_3:
      004BB6 0A                    3426 	.db 0x0a
      004BB7 0D                    3427 	.db 0x0d
      004BB8 E2                    3428 	.db 0xe2
      004BB9 94                    3429 	.db 0x94
      004BBA 8C                    3430 	.db 0x8c
      004BBB E2                    3431 	.db 0xe2
      004BBC 94                    3432 	.db 0x94
      004BBD 80                    3433 	.db 0x80
      004BBE E2                    3434 	.db 0xe2
      004BBF 94                    3435 	.db 0x94
      004BC0 80                    3436 	.db 0x80
      004BC1 E2                    3437 	.db 0xe2
      004BC2 94                    3438 	.db 0x94
      004BC3 80                    3439 	.db 0x80
      004BC4 E2                    3440 	.db 0xe2
      004BC5 94                    3441 	.db 0x94
      004BC6 80                    3442 	.db 0x80
      004BC7 E2                    3443 	.db 0xe2
      004BC8 94                    3444 	.db 0x94
      004BC9 80                    3445 	.db 0x80
      004BCA E2                    3446 	.db 0xe2
      004BCB 94                    3447 	.db 0x94
      004BCC 80                    3448 	.db 0x80
      004BCD E2                    3449 	.db 0xe2
      004BCE 94                    3450 	.db 0x94
      004BCF 80                    3451 	.db 0x80
      004BD0 E2                    3452 	.db 0xe2
      004BD1 94                    3453 	.db 0x94
      004BD2 80                    3454 	.db 0x80
      004BD3 E2                    3455 	.db 0xe2
      004BD4 94                    3456 	.db 0x94
      004BD5 80                    3457 	.db 0x80
      004BD6 E2                    3458 	.db 0xe2
      004BD7 94                    3459 	.db 0x94
      004BD8 80                    3460 	.db 0x80
      004BD9 E2                    3461 	.db 0xe2
      004BDA 94                    3462 	.db 0x94
      004BDB 80                    3463 	.db 0x80
      004BDC E2                    3464 	.db 0xe2
      004BDD 94                    3465 	.db 0x94
      004BDE 80                    3466 	.db 0x80
      004BDF E2                    3467 	.db 0xe2
      004BE0 94                    3468 	.db 0x94
      004BE1 AC                    3469 	.db 0xac
      004BE2 E2                    3470 	.db 0xe2
      004BE3 94                    3471 	.db 0x94
      004BE4 80                    3472 	.db 0x80
      004BE5 E2                    3473 	.db 0xe2
      004BE6 94                    3474 	.db 0x94
      004BE7 80                    3475 	.db 0x80
      004BE8 E2                    3476 	.db 0xe2
      004BE9 94                    3477 	.db 0x94
      004BEA 80                    3478 	.db 0x80
      004BEB E2                    3479 	.db 0xe2
      004BEC 94                    3480 	.db 0x94
      004BED 80                    3481 	.db 0x80
      004BEE E2                    3482 	.db 0xe2
      004BEF 94                    3483 	.db 0x94
      004BF0 80                    3484 	.db 0x80
      004BF1 E2                    3485 	.db 0xe2
      004BF2 94                    3486 	.db 0x94
      004BF3 80                    3487 	.db 0x80
      004BF4 E2                    3488 	.db 0xe2
      004BF5 94                    3489 	.db 0x94
      004BF6 80                    3490 	.db 0x80
      004BF7 E2                    3491 	.db 0xe2
      004BF8 94                    3492 	.db 0x94
      004BF9 80                    3493 	.db 0x80
      004BFA E2                    3494 	.db 0xe2
      004BFB 94                    3495 	.db 0x94
      004BFC 80                    3496 	.db 0x80
      004BFD E2                    3497 	.db 0xe2
      004BFE 94                    3498 	.db 0x94
      004BFF 80                    3499 	.db 0x80
      004C00 E2                    3500 	.db 0xe2
      004C01 94                    3501 	.db 0x94
      004C02 80                    3502 	.db 0x80
      004C03 E2                    3503 	.db 0xe2
      004C04 94                    3504 	.db 0x94
      004C05 80                    3505 	.db 0x80
      004C06 E2                    3506 	.db 0xe2
      004C07 94                    3507 	.db 0x94
      004C08 80                    3508 	.db 0x80
      004C09 E2                    3509 	.db 0xe2
      004C0A 94                    3510 	.db 0x94
      004C0B 80                    3511 	.db 0x80
      004C0C E2                    3512 	.db 0xe2
      004C0D 94                    3513 	.db 0x94
      004C0E 80                    3514 	.db 0x80
      004C0F E2                    3515 	.db 0xe2
      004C10 94                    3516 	.db 0x94
      004C11 80                    3517 	.db 0x80
      004C12 E2                    3518 	.db 0xe2
      004C13 94                    3519 	.db 0x94
      004C14 80                    3520 	.db 0x80
      004C15 E2                    3521 	.db 0xe2
      004C16 94                    3522 	.db 0x94
      004C17 80                    3523 	.db 0x80
      004C18 E2                    3524 	.db 0xe2
      004C19 94                    3525 	.db 0x94
      004C1A 80                    3526 	.db 0x80
      004C1B E2                    3527 	.db 0xe2
      004C1C 94                    3528 	.db 0x94
      004C1D 80                    3529 	.db 0x80
      004C1E E2                    3530 	.db 0xe2
      004C1F 94                    3531 	.db 0x94
      004C20 80                    3532 	.db 0x80
      004C21 E2                    3533 	.db 0xe2
      004C22 94                    3534 	.db 0x94
      004C23 80                    3535 	.db 0x80
      004C24 E2                    3536 	.db 0xe2
      004C25 94                    3537 	.db 0x94
      004C26 80                    3538 	.db 0x80
      004C27 E2                    3539 	.db 0xe2
      004C28 94                    3540 	.db 0x94
      004C29 80                    3541 	.db 0x80
      004C2A E2                    3542 	.db 0xe2
      004C2B 94                    3543 	.db 0x94
      004C2C 80                    3544 	.db 0x80
      004C2D E2                    3545 	.db 0xe2
      004C2E 94                    3546 	.db 0x94
      004C2F 80                    3547 	.db 0x80
      004C30 E2                    3548 	.db 0xe2
      004C31 94                    3549 	.db 0x94
      004C32 80                    3550 	.db 0x80
      004C33 E2                    3551 	.db 0xe2
      004C34 94                    3552 	.db 0x94
      004C35 80                    3553 	.db 0x80
      004C36 E2                    3554 	.db 0xe2
      004C37 94                    3555 	.db 0x94
      004C38 80                    3556 	.db 0x80
      004C39 E2                    3557 	.db 0xe2
      004C3A 94                    3558 	.db 0x94
      004C3B 80                    3559 	.db 0x80
      004C3C E2                    3560 	.db 0xe2
      004C3D 94                    3561 	.db 0x94
      004C3E 80                    3562 	.db 0x80
      004C3F E2                    3563 	.db 0xe2
      004C40 94                    3564 	.db 0x94
      004C41 80                    3565 	.db 0x80
      004C42 E2                    3566 	.db 0xe2
      004C43 94                    3567 	.db 0x94
      004C44 80                    3568 	.db 0x80
      004C45 E2                    3569 	.db 0xe2
      004C46 94                    3570 	.db 0x94
      004C47 80                    3571 	.db 0x80
      004C48 E2                    3572 	.db 0xe2
      004C49 94                    3573 	.db 0x94
      004C4A 80                    3574 	.db 0x80
      004C4B E2                    3575 	.db 0xe2
      004C4C 94                    3576 	.db 0x94
      004C4D 80                    3577 	.db 0x80
      004C4E E2                    3578 	.db 0xe2
      004C4F 94                    3579 	.db 0x94
      004C50 80                    3580 	.db 0x80
      004C51 E2                    3581 	.db 0xe2
      004C52 94                    3582 	.db 0x94
      004C53 80                    3583 	.db 0x80
      004C54 E2                    3584 	.db 0xe2
      004C55 94                    3585 	.db 0x94
      004C56 80                    3586 	.db 0x80
      004C57 E2                    3587 	.db 0xe2
      004C58 94                    3588 	.db 0x94
      004C59 80                    3589 	.db 0x80
      004C5A E2                    3590 	.db 0xe2
      004C5B 94                    3591 	.db 0x94
      004C5C 80                    3592 	.db 0x80
      004C5D E2                    3593 	.db 0xe2
      004C5E 94                    3594 	.db 0x94
      004C5F 80                    3595 	.db 0x80
      004C60 E2                    3596 	.db 0xe2
      004C61 94                    3597 	.db 0x94
      004C62 80                    3598 	.db 0x80
      004C63 E2                    3599 	.db 0xe2
      004C64 94                    3600 	.db 0x94
      004C65 80                    3601 	.db 0x80
      004C66 E2                    3602 	.db 0xe2
      004C67 94                    3603 	.db 0x94
      004C68 90                    3604 	.db 0x90
      004C69 0A                    3605 	.db 0x0a
      004C6A 0D                    3606 	.db 0x0d
      004C6B 00                    3607 	.db 0x00
                                   3608 	.area CSEG    (CODE)
                                   3609 	.area CONST   (CODE)
      004C6C                       3610 ___str_4:
      004C6C E2                    3611 	.db 0xe2
      004C6D 94                    3612 	.db 0x94
      004C6E 82                    3613 	.db 0x82
      004C6F 20 20 43 6F 6D 6D 61  3614 	.ascii "  Command   "
             6E 64 20 20 20
      004C7B E2                    3615 	.db 0xe2
      004C7C 94                    3616 	.db 0x94
      004C7D 82                    3617 	.db 0x82
      004C7E 20 20 20 20 20 20 20  3618 	.ascii "               Description                  "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004CAA E2                    3619 	.db 0xe2
      004CAB 94                    3620 	.db 0x94
      004CAC 82                    3621 	.db 0x82
      004CAD 0A                    3622 	.db 0x0a
      004CAE 0D                    3623 	.db 0x0d
      004CAF 00                    3624 	.db 0x00
                                   3625 	.area CSEG    (CODE)
                                   3626 	.area CONST   (CODE)
      004CB0                       3627 ___str_5:
      004CB0 E2                    3628 	.db 0xe2
      004CB1 94                    3629 	.db 0x94
      004CB2 9C                    3630 	.db 0x9c
      004CB3 E2                    3631 	.db 0xe2
      004CB4 94                    3632 	.db 0x94
      004CB5 80                    3633 	.db 0x80
      004CB6 E2                    3634 	.db 0xe2
      004CB7 94                    3635 	.db 0x94
      004CB8 80                    3636 	.db 0x80
      004CB9 E2                    3637 	.db 0xe2
      004CBA 94                    3638 	.db 0x94
      004CBB 80                    3639 	.db 0x80
      004CBC E2                    3640 	.db 0xe2
      004CBD 94                    3641 	.db 0x94
      004CBE 80                    3642 	.db 0x80
      004CBF E2                    3643 	.db 0xe2
      004CC0 94                    3644 	.db 0x94
      004CC1 80                    3645 	.db 0x80
      004CC2 E2                    3646 	.db 0xe2
      004CC3 94                    3647 	.db 0x94
      004CC4 80                    3648 	.db 0x80
      004CC5 E2                    3649 	.db 0xe2
      004CC6 94                    3650 	.db 0x94
      004CC7 80                    3651 	.db 0x80
      004CC8 E2                    3652 	.db 0xe2
      004CC9 94                    3653 	.db 0x94
      004CCA 80                    3654 	.db 0x80
      004CCB E2                    3655 	.db 0xe2
      004CCC 94                    3656 	.db 0x94
      004CCD 80                    3657 	.db 0x80
      004CCE E2                    3658 	.db 0xe2
      004CCF 94                    3659 	.db 0x94
      004CD0 80                    3660 	.db 0x80
      004CD1 E2                    3661 	.db 0xe2
      004CD2 94                    3662 	.db 0x94
      004CD3 80                    3663 	.db 0x80
      004CD4 E2                    3664 	.db 0xe2
      004CD5 94                    3665 	.db 0x94
      004CD6 80                    3666 	.db 0x80
      004CD7 E2                    3667 	.db 0xe2
      004CD8 94                    3668 	.db 0x94
      004CD9 BC                    3669 	.db 0xbc
      004CDA E2                    3670 	.db 0xe2
      004CDB 94                    3671 	.db 0x94
      004CDC 80                    3672 	.db 0x80
      004CDD E2                    3673 	.db 0xe2
      004CDE 94                    3674 	.db 0x94
      004CDF 80                    3675 	.db 0x80
      004CE0 E2                    3676 	.db 0xe2
      004CE1 94                    3677 	.db 0x94
      004CE2 80                    3678 	.db 0x80
      004CE3 E2                    3679 	.db 0xe2
      004CE4 94                    3680 	.db 0x94
      004CE5 80                    3681 	.db 0x80
      004CE6 E2                    3682 	.db 0xe2
      004CE7 94                    3683 	.db 0x94
      004CE8 80                    3684 	.db 0x80
      004CE9 E2                    3685 	.db 0xe2
      004CEA 94                    3686 	.db 0x94
      004CEB 80                    3687 	.db 0x80
      004CEC E2                    3688 	.db 0xe2
      004CED 94                    3689 	.db 0x94
      004CEE 80                    3690 	.db 0x80
      004CEF E2                    3691 	.db 0xe2
      004CF0 94                    3692 	.db 0x94
      004CF1 80                    3693 	.db 0x80
      004CF2 E2                    3694 	.db 0xe2
      004CF3 94                    3695 	.db 0x94
      004CF4 80                    3696 	.db 0x80
      004CF5 E2                    3697 	.db 0xe2
      004CF6 94                    3698 	.db 0x94
      004CF7 80                    3699 	.db 0x80
      004CF8 E2                    3700 	.db 0xe2
      004CF9 94                    3701 	.db 0x94
      004CFA 80                    3702 	.db 0x80
      004CFB E2                    3703 	.db 0xe2
      004CFC 94                    3704 	.db 0x94
      004CFD 80                    3705 	.db 0x80
      004CFE E2                    3706 	.db 0xe2
      004CFF 94                    3707 	.db 0x94
      004D00 80                    3708 	.db 0x80
      004D01 E2                    3709 	.db 0xe2
      004D02 94                    3710 	.db 0x94
      004D03 80                    3711 	.db 0x80
      004D04 E2                    3712 	.db 0xe2
      004D05 94                    3713 	.db 0x94
      004D06 80                    3714 	.db 0x80
      004D07 E2                    3715 	.db 0xe2
      004D08 94                    3716 	.db 0x94
      004D09 80                    3717 	.db 0x80
      004D0A E2                    3718 	.db 0xe2
      004D0B 94                    3719 	.db 0x94
      004D0C 80                    3720 	.db 0x80
      004D0D E2                    3721 	.db 0xe2
      004D0E 94                    3722 	.db 0x94
      004D0F 80                    3723 	.db 0x80
      004D10 E2                    3724 	.db 0xe2
      004D11 94                    3725 	.db 0x94
      004D12 80                    3726 	.db 0x80
      004D13 E2                    3727 	.db 0xe2
      004D14 94                    3728 	.db 0x94
      004D15 80                    3729 	.db 0x80
      004D16 E2                    3730 	.db 0xe2
      004D17 94                    3731 	.db 0x94
      004D18 80                    3732 	.db 0x80
      004D19 E2                    3733 	.db 0xe2
      004D1A 94                    3734 	.db 0x94
      004D1B 80                    3735 	.db 0x80
      004D1C E2                    3736 	.db 0xe2
      004D1D 94                    3737 	.db 0x94
      004D1E 80                    3738 	.db 0x80
      004D1F E2                    3739 	.db 0xe2
      004D20 94                    3740 	.db 0x94
      004D21 80                    3741 	.db 0x80
      004D22 E2                    3742 	.db 0xe2
      004D23 94                    3743 	.db 0x94
      004D24 80                    3744 	.db 0x80
      004D25 E2                    3745 	.db 0xe2
      004D26 94                    3746 	.db 0x94
      004D27 80                    3747 	.db 0x80
      004D28 E2                    3748 	.db 0xe2
      004D29 94                    3749 	.db 0x94
      004D2A 80                    3750 	.db 0x80
      004D2B E2                    3751 	.db 0xe2
      004D2C 94                    3752 	.db 0x94
      004D2D 80                    3753 	.db 0x80
      004D2E E2                    3754 	.db 0xe2
      004D2F 94                    3755 	.db 0x94
      004D30 80                    3756 	.db 0x80
      004D31 E2                    3757 	.db 0xe2
      004D32 94                    3758 	.db 0x94
      004D33 80                    3759 	.db 0x80
      004D34 E2                    3760 	.db 0xe2
      004D35 94                    3761 	.db 0x94
      004D36 80                    3762 	.db 0x80
      004D37 E2                    3763 	.db 0xe2
      004D38 94                    3764 	.db 0x94
      004D39 80                    3765 	.db 0x80
      004D3A E2                    3766 	.db 0xe2
      004D3B 94                    3767 	.db 0x94
      004D3C 80                    3768 	.db 0x80
      004D3D E2                    3769 	.db 0xe2
      004D3E 94                    3770 	.db 0x94
      004D3F 80                    3771 	.db 0x80
      004D40 E2                    3772 	.db 0xe2
      004D41 94                    3773 	.db 0x94
      004D42 80                    3774 	.db 0x80
      004D43 E2                    3775 	.db 0xe2
      004D44 94                    3776 	.db 0x94
      004D45 80                    3777 	.db 0x80
      004D46 E2                    3778 	.db 0xe2
      004D47 94                    3779 	.db 0x94
      004D48 80                    3780 	.db 0x80
      004D49 E2                    3781 	.db 0xe2
      004D4A 94                    3782 	.db 0x94
      004D4B 80                    3783 	.db 0x80
      004D4C E2                    3784 	.db 0xe2
      004D4D 94                    3785 	.db 0x94
      004D4E 80                    3786 	.db 0x80
      004D4F E2                    3787 	.db 0xe2
      004D50 94                    3788 	.db 0x94
      004D51 80                    3789 	.db 0x80
      004D52 E2                    3790 	.db 0xe2
      004D53 94                    3791 	.db 0x94
      004D54 80                    3792 	.db 0x80
      004D55 E2                    3793 	.db 0xe2
      004D56 94                    3794 	.db 0x94
      004D57 80                    3795 	.db 0x80
      004D58 E2                    3796 	.db 0xe2
      004D59 94                    3797 	.db 0x94
      004D5A 80                    3798 	.db 0x80
      004D5B E2                    3799 	.db 0xe2
      004D5C 94                    3800 	.db 0x94
      004D5D 80                    3801 	.db 0x80
      004D5E E2                    3802 	.db 0xe2
      004D5F 94                    3803 	.db 0x94
      004D60 A4                    3804 	.db 0xa4
      004D61 0A                    3805 	.db 0x0a
      004D62 0D                    3806 	.db 0x0d
      004D63 00                    3807 	.db 0x00
                                   3808 	.area CSEG    (CODE)
                                   3809 	.area CONST   (CODE)
      004D64                       3810 ___str_6:
      004D64 E2                    3811 	.db 0xe2
      004D65 94                    3812 	.db 0x94
      004D66 82                    3813 	.db 0x82
      004D67 20 20 20 20 20 52 20  3814 	.ascii "     R      "
             20 20 20 20 20
      004D73 E2                    3815 	.db 0xe2
      004D74 94                    3816 	.db 0x94
      004D75 82                    3817 	.db 0x82
      004D76 20 52 65 61 64 20 66  3818 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004DA2 E2                    3819 	.db 0xe2
      004DA3 94                    3820 	.db 0x94
      004DA4 82                    3821 	.db 0x82
      004DA5 0A                    3822 	.db 0x0a
      004DA6 0D                    3823 	.db 0x0d
      004DA7 00                    3824 	.db 0x00
                                   3825 	.area CSEG    (CODE)
                                   3826 	.area CONST   (CODE)
      004DA8                       3827 ___str_7:
      004DA8 E2                    3828 	.db 0xe2
      004DA9 94                    3829 	.db 0x94
      004DAA 82                    3830 	.db 0x82
      004DAB 20 20 20 20 20 57 20  3831 	.ascii "     W      "
             20 20 20 20 20
      004DB7 E2                    3832 	.db 0xe2
      004DB8 94                    3833 	.db 0x94
      004DB9 82                    3834 	.db 0x82
      004DBA 20 57 72 69 74 65 20  3835 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004DE6 E2                    3836 	.db 0xe2
      004DE7 94                    3837 	.db 0x94
      004DE8 82                    3838 	.db 0x82
      004DE9 0A                    3839 	.db 0x0a
      004DEA 0D                    3840 	.db 0x0d
      004DEB 00                    3841 	.db 0x00
                                   3842 	.area CSEG    (CODE)
                                   3843 	.area CONST   (CODE)
      004DEC                       3844 ___str_8:
      004DEC E2                    3845 	.db 0xe2
      004DED 94                    3846 	.db 0x94
      004DEE 82                    3847 	.db 0x82
      004DEF 20 20 20 20 20 48 20  3848 	.ascii "     H      "
             20 20 20 20 20
      004DFB E2                    3849 	.db 0xe2
      004DFC 94                    3850 	.db 0x94
      004DFD 82                    3851 	.db 0x82
      004DFE 20 44 69 73 70 6C 61  3852 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004E2A E2                    3853 	.db 0xe2
      004E2B 94                    3854 	.db 0x94
      004E2C 82                    3855 	.db 0x82
      004E2D 0A                    3856 	.db 0x0a
      004E2E 0D                    3857 	.db 0x0d
      004E2F 00                    3858 	.db 0x00
                                   3859 	.area CSEG    (CODE)
                                   3860 	.area CONST   (CODE)
      004E30                       3861 ___str_9:
      004E30 E2                    3862 	.db 0xe2
      004E31 94                    3863 	.db 0x94
      004E32 82                    3864 	.db 0x82
      004E33 20 20 20 20 20 58 20  3865 	.ascii "     X      "
             20 20 20 20 20
      004E3F E2                    3866 	.db 0xe2
      004E40 94                    3867 	.db 0x94
      004E41 82                    3868 	.db 0x82
      004E42 20 52 65 73 65 74 20  3869 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004E6E E2                    3870 	.db 0xe2
      004E6F 94                    3871 	.db 0x94
      004E70 82                    3872 	.db 0x82
      004E71 0A                    3873 	.db 0x0a
      004E72 0D                    3874 	.db 0x0d
      004E73 00                    3875 	.db 0x00
                                   3876 	.area CSEG    (CODE)
                                   3877 	.area CONST   (CODE)
      004E74                       3878 ___str_10:
      004E74 E2                    3879 	.db 0xe2
      004E75 94                    3880 	.db 0x94
      004E76 82                    3881 	.db 0x82
      004E77 20 20 20 20 20 3F 20  3882 	.ascii "     ?      "
             20 20 20 20 20
      004E83 E2                    3883 	.db 0xe2
      004E84 94                    3884 	.db 0x94
      004E85 82                    3885 	.db 0x82
      004E86 20 44 69 73 70 6C 61  3886 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004EB2 E2                    3887 	.db 0xe2
      004EB3 94                    3888 	.db 0x94
      004EB4 82                    3889 	.db 0x82
      004EB5 0A                    3890 	.db 0x0a
      004EB6 0D                    3891 	.db 0x0d
      004EB7 00                    3892 	.db 0x00
                                   3893 	.area CSEG    (CODE)
                                   3894 	.area CONST   (CODE)
      004EB8                       3895 ___str_11:
      004EB8 E2                    3896 	.db 0xe2
      004EB9 94                    3897 	.db 0x94
      004EBA 82                    3898 	.db 0x82
      004EBB 20 20 20 20 20 51 20  3899 	.ascii "     Q      "
             20 20 20 20 20
      004EC7 E2                    3900 	.db 0xe2
      004EC8 94                    3901 	.db 0x94
      004EC9 82                    3902 	.db 0x82
      004ECA 20 51 75 69 74 20 70  3903 	.ascii " Quit program                               "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004EF6 E2                    3904 	.db 0xe2
      004EF7 94                    3905 	.db 0x94
      004EF8 82                    3906 	.db 0x82
      004EF9 0A                    3907 	.db 0x0a
      004EFA 0D                    3908 	.db 0x0d
      004EFB 00                    3909 	.db 0x00
                                   3910 	.area CSEG    (CODE)
                                   3911 	.area CONST   (CODE)
      004EFC                       3912 ___str_12:
      004EFC E2                    3913 	.db 0xe2
      004EFD 94                    3914 	.db 0x94
      004EFE 94                    3915 	.db 0x94
      004EFF E2                    3916 	.db 0xe2
      004F00 94                    3917 	.db 0x94
      004F01 80                    3918 	.db 0x80
      004F02 E2                    3919 	.db 0xe2
      004F03 94                    3920 	.db 0x94
      004F04 80                    3921 	.db 0x80
      004F05 E2                    3922 	.db 0xe2
      004F06 94                    3923 	.db 0x94
      004F07 80                    3924 	.db 0x80
      004F08 E2                    3925 	.db 0xe2
      004F09 94                    3926 	.db 0x94
      004F0A 80                    3927 	.db 0x80
      004F0B E2                    3928 	.db 0xe2
      004F0C 94                    3929 	.db 0x94
      004F0D 80                    3930 	.db 0x80
      004F0E E2                    3931 	.db 0xe2
      004F0F 94                    3932 	.db 0x94
      004F10 80                    3933 	.db 0x80
      004F11 E2                    3934 	.db 0xe2
      004F12 94                    3935 	.db 0x94
      004F13 80                    3936 	.db 0x80
      004F14 E2                    3937 	.db 0xe2
      004F15 94                    3938 	.db 0x94
      004F16 80                    3939 	.db 0x80
      004F17 E2                    3940 	.db 0xe2
      004F18 94                    3941 	.db 0x94
      004F19 80                    3942 	.db 0x80
      004F1A E2                    3943 	.db 0xe2
      004F1B 94                    3944 	.db 0x94
      004F1C 80                    3945 	.db 0x80
      004F1D E2                    3946 	.db 0xe2
      004F1E 94                    3947 	.db 0x94
      004F1F 80                    3948 	.db 0x80
      004F20 E2                    3949 	.db 0xe2
      004F21 94                    3950 	.db 0x94
      004F22 80                    3951 	.db 0x80
      004F23 E2                    3952 	.db 0xe2
      004F24 94                    3953 	.db 0x94
      004F25 B4                    3954 	.db 0xb4
      004F26 E2                    3955 	.db 0xe2
      004F27 94                    3956 	.db 0x94
      004F28 80                    3957 	.db 0x80
      004F29 E2                    3958 	.db 0xe2
      004F2A 94                    3959 	.db 0x94
      004F2B 80                    3960 	.db 0x80
      004F2C E2                    3961 	.db 0xe2
      004F2D 94                    3962 	.db 0x94
      004F2E 80                    3963 	.db 0x80
      004F2F E2                    3964 	.db 0xe2
      004F30 94                    3965 	.db 0x94
      004F31 80                    3966 	.db 0x80
      004F32 E2                    3967 	.db 0xe2
      004F33 94                    3968 	.db 0x94
      004F34 80                    3969 	.db 0x80
      004F35 E2                    3970 	.db 0xe2
      004F36 94                    3971 	.db 0x94
      004F37 80                    3972 	.db 0x80
      004F38 E2                    3973 	.db 0xe2
      004F39 94                    3974 	.db 0x94
      004F3A 80                    3975 	.db 0x80
      004F3B E2                    3976 	.db 0xe2
      004F3C 94                    3977 	.db 0x94
      004F3D 80                    3978 	.db 0x80
      004F3E E2                    3979 	.db 0xe2
      004F3F 94                    3980 	.db 0x94
      004F40 80                    3981 	.db 0x80
      004F41 E2                    3982 	.db 0xe2
      004F42 94                    3983 	.db 0x94
      004F43 80                    3984 	.db 0x80
      004F44 E2                    3985 	.db 0xe2
      004F45 94                    3986 	.db 0x94
      004F46 80                    3987 	.db 0x80
      004F47 E2                    3988 	.db 0xe2
      004F48 94                    3989 	.db 0x94
      004F49 80                    3990 	.db 0x80
      004F4A E2                    3991 	.db 0xe2
      004F4B 94                    3992 	.db 0x94
      004F4C 80                    3993 	.db 0x80
      004F4D E2                    3994 	.db 0xe2
      004F4E 94                    3995 	.db 0x94
      004F4F 80                    3996 	.db 0x80
      004F50 E2                    3997 	.db 0xe2
      004F51 94                    3998 	.db 0x94
      004F52 80                    3999 	.db 0x80
      004F53 E2                    4000 	.db 0xe2
      004F54 94                    4001 	.db 0x94
      004F55 80                    4002 	.db 0x80
      004F56 E2                    4003 	.db 0xe2
      004F57 94                    4004 	.db 0x94
      004F58 80                    4005 	.db 0x80
      004F59 E2                    4006 	.db 0xe2
      004F5A 94                    4007 	.db 0x94
      004F5B 80                    4008 	.db 0x80
      004F5C E2                    4009 	.db 0xe2
      004F5D 94                    4010 	.db 0x94
      004F5E 80                    4011 	.db 0x80
      004F5F E2                    4012 	.db 0xe2
      004F60 94                    4013 	.db 0x94
      004F61 80                    4014 	.db 0x80
      004F62 E2                    4015 	.db 0xe2
      004F63 94                    4016 	.db 0x94
      004F64 80                    4017 	.db 0x80
      004F65 E2                    4018 	.db 0xe2
      004F66 94                    4019 	.db 0x94
      004F67 80                    4020 	.db 0x80
      004F68 E2                    4021 	.db 0xe2
      004F69 94                    4022 	.db 0x94
      004F6A 80                    4023 	.db 0x80
      004F6B E2                    4024 	.db 0xe2
      004F6C 94                    4025 	.db 0x94
      004F6D 80                    4026 	.db 0x80
      004F6E E2                    4027 	.db 0xe2
      004F6F 94                    4028 	.db 0x94
      004F70 80                    4029 	.db 0x80
      004F71 E2                    4030 	.db 0xe2
      004F72 94                    4031 	.db 0x94
      004F73 80                    4032 	.db 0x80
      004F74 E2                    4033 	.db 0xe2
      004F75 94                    4034 	.db 0x94
      004F76 80                    4035 	.db 0x80
      004F77 E2                    4036 	.db 0xe2
      004F78 94                    4037 	.db 0x94
      004F79 80                    4038 	.db 0x80
      004F7A E2                    4039 	.db 0xe2
      004F7B 94                    4040 	.db 0x94
      004F7C 80                    4041 	.db 0x80
      004F7D E2                    4042 	.db 0xe2
      004F7E 94                    4043 	.db 0x94
      004F7F 80                    4044 	.db 0x80
      004F80 E2                    4045 	.db 0xe2
      004F81 94                    4046 	.db 0x94
      004F82 80                    4047 	.db 0x80
      004F83 E2                    4048 	.db 0xe2
      004F84 94                    4049 	.db 0x94
      004F85 80                    4050 	.db 0x80
      004F86 E2                    4051 	.db 0xe2
      004F87 94                    4052 	.db 0x94
      004F88 80                    4053 	.db 0x80
      004F89 E2                    4054 	.db 0xe2
      004F8A 94                    4055 	.db 0x94
      004F8B 80                    4056 	.db 0x80
      004F8C E2                    4057 	.db 0xe2
      004F8D 94                    4058 	.db 0x94
      004F8E 80                    4059 	.db 0x80
      004F8F E2                    4060 	.db 0xe2
      004F90 94                    4061 	.db 0x94
      004F91 80                    4062 	.db 0x80
      004F92 E2                    4063 	.db 0xe2
      004F93 94                    4064 	.db 0x94
      004F94 80                    4065 	.db 0x80
      004F95 E2                    4066 	.db 0xe2
      004F96 94                    4067 	.db 0x94
      004F97 80                    4068 	.db 0x80
      004F98 E2                    4069 	.db 0xe2
      004F99 94                    4070 	.db 0x94
      004F9A 80                    4071 	.db 0x80
      004F9B E2                    4072 	.db 0xe2
      004F9C 94                    4073 	.db 0x94
      004F9D 80                    4074 	.db 0x80
      004F9E E2                    4075 	.db 0xe2
      004F9F 94                    4076 	.db 0x94
      004FA0 80                    4077 	.db 0x80
      004FA1 E2                    4078 	.db 0xe2
      004FA2 94                    4079 	.db 0x94
      004FA3 80                    4080 	.db 0x80
      004FA4 E2                    4081 	.db 0xe2
      004FA5 94                    4082 	.db 0x94
      004FA6 80                    4083 	.db 0x80
      004FA7 E2                    4084 	.db 0xe2
      004FA8 94                    4085 	.db 0x94
      004FA9 80                    4086 	.db 0x80
      004FAA E2                    4087 	.db 0xe2
      004FAB 94                    4088 	.db 0x94
      004FAC 98                    4089 	.db 0x98
      004FAD 0A                    4090 	.db 0x0a
      004FAE 0D                    4091 	.db 0x0d
      004FAF 00                    4092 	.db 0x00
                                   4093 	.area CSEG    (CODE)
                                   4094 	.area CONST   (CODE)
      004FB0                       4095 ___str_13:
      004FB0 7C 20 24 20 25 63     4096 	.ascii "| $ %c"
      004FB6 0A                    4097 	.db 0x0a
      004FB7 0D                    4098 	.db 0x0d
      004FB8 00                    4099 	.db 0x00
                                   4100 	.area CSEG    (CODE)
                                   4101 	.area CONST   (CODE)
      004FB9                       4102 ___str_14:
      004FB9 0A                    4103 	.db 0x0a
      004FBA 0D                    4104 	.db 0x0d
      004FBB 00                    4105 	.db 0x00
                                   4106 	.area CSEG    (CODE)
                                   4107 	.area CONST   (CODE)
      004FBC                       4108 ___str_15:
      004FBC 0A                    4109 	.db 0x0a
      004FBD E2                    4110 	.db 0xe2
      004FBE 94                    4111 	.db 0x94
      004FBF 8C                    4112 	.db 0x8c
      004FC0 E2                    4113 	.db 0xe2
      004FC1 94                    4114 	.db 0x94
      004FC2 80                    4115 	.db 0x80
      004FC3 E2                    4116 	.db 0xe2
      004FC4 94                    4117 	.db 0x94
      004FC5 80                    4118 	.db 0x80
      004FC6 E2                    4119 	.db 0xe2
      004FC7 94                    4120 	.db 0x94
      004FC8 80                    4121 	.db 0x80
      004FC9 E2                    4122 	.db 0xe2
      004FCA 94                    4123 	.db 0x94
      004FCB 80                    4124 	.db 0x80
      004FCC E2                    4125 	.db 0xe2
      004FCD 94                    4126 	.db 0x94
      004FCE 80                    4127 	.db 0x80
      004FCF E2                    4128 	.db 0xe2
      004FD0 94                    4129 	.db 0x94
      004FD1 80                    4130 	.db 0x80
      004FD2 E2                    4131 	.db 0xe2
      004FD3 94                    4132 	.db 0x94
      004FD4 80                    4133 	.db 0x80
      004FD5 E2                    4134 	.db 0xe2
      004FD6 94                    4135 	.db 0x94
      004FD7 80                    4136 	.db 0x80
      004FD8 E2                    4137 	.db 0xe2
      004FD9 94                    4138 	.db 0x94
      004FDA 80                    4139 	.db 0x80
      004FDB E2                    4140 	.db 0xe2
      004FDC 94                    4141 	.db 0x94
      004FDD 80                    4142 	.db 0x80
      004FDE E2                    4143 	.db 0xe2
      004FDF 94                    4144 	.db 0x94
      004FE0 80                    4145 	.db 0x80
      004FE1 E2                    4146 	.db 0xe2
      004FE2 94                    4147 	.db 0x94
      004FE3 80                    4148 	.db 0x80
      004FE4 E2                    4149 	.db 0xe2
      004FE5 94                    4150 	.db 0x94
      004FE6 80                    4151 	.db 0x80
      004FE7 E2                    4152 	.db 0xe2
      004FE8 94                    4153 	.db 0x94
      004FE9 80                    4154 	.db 0x80
      004FEA E2                    4155 	.db 0xe2
      004FEB 94                    4156 	.db 0x94
      004FEC 80                    4157 	.db 0x80
      004FED 20 57 52 49 54 45 20  4158 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      004FFE E2                    4159 	.db 0xe2
      004FFF 94                    4160 	.db 0x94
      005000 80                    4161 	.db 0x80
      005001 E2                    4162 	.db 0xe2
      005002 94                    4163 	.db 0x94
      005003 80                    4164 	.db 0x80
      005004 E2                    4165 	.db 0xe2
      005005 94                    4166 	.db 0x94
      005006 80                    4167 	.db 0x80
      005007 E2                    4168 	.db 0xe2
      005008 94                    4169 	.db 0x94
      005009 80                    4170 	.db 0x80
      00500A E2                    4171 	.db 0xe2
      00500B 94                    4172 	.db 0x94
      00500C 80                    4173 	.db 0x80
      00500D E2                    4174 	.db 0xe2
      00500E 94                    4175 	.db 0x94
      00500F 80                    4176 	.db 0x80
      005010 E2                    4177 	.db 0xe2
      005011 94                    4178 	.db 0x94
      005012 80                    4179 	.db 0x80
      005013 E2                    4180 	.db 0xe2
      005014 94                    4181 	.db 0x94
      005015 80                    4182 	.db 0x80
      005016 E2                    4183 	.db 0xe2
      005017 94                    4184 	.db 0x94
      005018 80                    4185 	.db 0x80
      005019 E2                    4186 	.db 0xe2
      00501A 94                    4187 	.db 0x94
      00501B 80                    4188 	.db 0x80
      00501C E2                    4189 	.db 0xe2
      00501D 94                    4190 	.db 0x94
      00501E 80                    4191 	.db 0x80
      00501F E2                    4192 	.db 0xe2
      005020 94                    4193 	.db 0x94
      005021 80                    4194 	.db 0x80
      005022 E2                    4195 	.db 0xe2
      005023 94                    4196 	.db 0x94
      005024 80                    4197 	.db 0x80
      005025 E2                    4198 	.db 0xe2
      005026 94                    4199 	.db 0x94
      005027 80                    4200 	.db 0x80
      005028 E2                    4201 	.db 0xe2
      005029 94                    4202 	.db 0x94
      00502A 90                    4203 	.db 0x90
      00502B 0A                    4204 	.db 0x0a
      00502C 0D                    4205 	.db 0x0d
      00502D 00                    4206 	.db 0x00
                                   4207 	.area CSEG    (CODE)
                                   4208 	.area CONST   (CODE)
      00502E                       4209 ___str_16:
      00502E 0A                    4210 	.db 0x0a
      00502F E2                    4211 	.db 0xe2
      005030 94                    4212 	.db 0x94
      005031 8C                    4213 	.db 0x8c
      005032 E2                    4214 	.db 0xe2
      005033 94                    4215 	.db 0x94
      005034 80                    4216 	.db 0x80
      005035 E2                    4217 	.db 0xe2
      005036 94                    4218 	.db 0x94
      005037 80                    4219 	.db 0x80
      005038 E2                    4220 	.db 0xe2
      005039 94                    4221 	.db 0x94
      00503A 80                    4222 	.db 0x80
      00503B E2                    4223 	.db 0xe2
      00503C 94                    4224 	.db 0x94
      00503D 80                    4225 	.db 0x80
      00503E E2                    4226 	.db 0xe2
      00503F 94                    4227 	.db 0x94
      005040 80                    4228 	.db 0x80
      005041 E2                    4229 	.db 0xe2
      005042 94                    4230 	.db 0x94
      005043 80                    4231 	.db 0x80
      005044 E2                    4232 	.db 0xe2
      005045 94                    4233 	.db 0x94
      005046 80                    4234 	.db 0x80
      005047 E2                    4235 	.db 0xe2
      005048 94                    4236 	.db 0x94
      005049 80                    4237 	.db 0x80
      00504A E2                    4238 	.db 0xe2
      00504B 94                    4239 	.db 0x94
      00504C 80                    4240 	.db 0x80
      00504D E2                    4241 	.db 0xe2
      00504E 94                    4242 	.db 0x94
      00504F 80                    4243 	.db 0x80
      005050 E2                    4244 	.db 0xe2
      005051 94                    4245 	.db 0x94
      005052 80                    4246 	.db 0x80
      005053 E2                    4247 	.db 0xe2
      005054 94                    4248 	.db 0x94
      005055 80                    4249 	.db 0x80
      005056 E2                    4250 	.db 0xe2
      005057 94                    4251 	.db 0x94
      005058 80                    4252 	.db 0x80
      005059 E2                    4253 	.db 0xe2
      00505A 94                    4254 	.db 0x94
      00505B 80                    4255 	.db 0x80
      00505C E2                    4256 	.db 0xe2
      00505D 94                    4257 	.db 0x94
      00505E 80                    4258 	.db 0x80
      00505F 20 52 45 41 44 20 4F  4259 	.ascii " READ OPERATION "
             50 45 52 41 54 49 4F
             4E 20
      00506F E2                    4260 	.db 0xe2
      005070 94                    4261 	.db 0x94
      005071 80                    4262 	.db 0x80
      005072 E2                    4263 	.db 0xe2
      005073 94                    4264 	.db 0x94
      005074 80                    4265 	.db 0x80
      005075 E2                    4266 	.db 0xe2
      005076 94                    4267 	.db 0x94
      005077 80                    4268 	.db 0x80
      005078 E2                    4269 	.db 0xe2
      005079 94                    4270 	.db 0x94
      00507A 80                    4271 	.db 0x80
      00507B E2                    4272 	.db 0xe2
      00507C 94                    4273 	.db 0x94
      00507D 80                    4274 	.db 0x80
      00507E E2                    4275 	.db 0xe2
      00507F 94                    4276 	.db 0x94
      005080 80                    4277 	.db 0x80
      005081 E2                    4278 	.db 0xe2
      005082 94                    4279 	.db 0x94
      005083 80                    4280 	.db 0x80
      005084 E2                    4281 	.db 0xe2
      005085 94                    4282 	.db 0x94
      005086 80                    4283 	.db 0x80
      005087 E2                    4284 	.db 0xe2
      005088 94                    4285 	.db 0x94
      005089 80                    4286 	.db 0x80
      00508A E2                    4287 	.db 0xe2
      00508B 94                    4288 	.db 0x94
      00508C 80                    4289 	.db 0x80
      00508D E2                    4290 	.db 0xe2
      00508E 94                    4291 	.db 0x94
      00508F 80                    4292 	.db 0x80
      005090 E2                    4293 	.db 0xe2
      005091 94                    4294 	.db 0x94
      005092 80                    4295 	.db 0x80
      005093 E2                    4296 	.db 0xe2
      005094 94                    4297 	.db 0x94
      005095 80                    4298 	.db 0x80
      005096 E2                    4299 	.db 0xe2
      005097 94                    4300 	.db 0x94
      005098 80                    4301 	.db 0x80
      005099 E2                    4302 	.db 0xe2
      00509A 94                    4303 	.db 0x94
      00509B 80                    4304 	.db 0x80
      00509C E2                    4305 	.db 0xe2
      00509D 94                    4306 	.db 0x94
      00509E 90                    4307 	.db 0x90
      00509F 0A                    4308 	.db 0x0a
      0050A0 0D                    4309 	.db 0x0d
      0050A1 00                    4310 	.db 0x00
                                   4311 	.area CSEG    (CODE)
                                   4312 	.area CONST   (CODE)
      0050A2                       4313 ___str_17:
      0050A2 7C 20 52 65 61 64 69  4314 	.ascii "| Reading from Address 0x%03X           |"
             6E 67 20 66 72 6F 6D
             20 41 64 64 72 65 73
             73 20 30 78 25 30 33
             58 20 20 20 20 20 20
             20 20 20 20 20 7C
      0050CB 0A                    4315 	.db 0x0a
      0050CC 0D                    4316 	.db 0x0d
      0050CD 00                    4317 	.db 0x00
                                   4318 	.area CSEG    (CODE)
                                   4319 	.area CONST   (CODE)
      0050CE                       4320 ___str_18:
      0050CE 0A                    4321 	.db 0x0a
      0050CF E2                    4322 	.db 0xe2
      0050D0 94                    4323 	.db 0x94
      0050D1 8C                    4324 	.db 0x8c
      0050D2 E2                    4325 	.db 0xe2
      0050D3 94                    4326 	.db 0x94
      0050D4 80                    4327 	.db 0x80
      0050D5 E2                    4328 	.db 0xe2
      0050D6 94                    4329 	.db 0x94
      0050D7 80                    4330 	.db 0x80
      0050D8 E2                    4331 	.db 0xe2
      0050D9 94                    4332 	.db 0x94
      0050DA 80                    4333 	.db 0x80
      0050DB E2                    4334 	.db 0xe2
      0050DC 94                    4335 	.db 0x94
      0050DD 80                    4336 	.db 0x80
      0050DE E2                    4337 	.db 0xe2
      0050DF 94                    4338 	.db 0x94
      0050E0 80                    4339 	.db 0x80
      0050E1 E2                    4340 	.db 0xe2
      0050E2 94                    4341 	.db 0x94
      0050E3 80                    4342 	.db 0x80
      0050E4 E2                    4343 	.db 0xe2
      0050E5 94                    4344 	.db 0x94
      0050E6 80                    4345 	.db 0x80
      0050E7 E2                    4346 	.db 0xe2
      0050E8 94                    4347 	.db 0x94
      0050E9 80                    4348 	.db 0x80
      0050EA E2                    4349 	.db 0xe2
      0050EB 94                    4350 	.db 0x94
      0050EC 80                    4351 	.db 0x80
      0050ED E2                    4352 	.db 0xe2
      0050EE 94                    4353 	.db 0x94
      0050EF 80                    4354 	.db 0x80
      0050F0 E2                    4355 	.db 0xe2
      0050F1 94                    4356 	.db 0x94
      0050F2 80                    4357 	.db 0x80
      0050F3 E2                    4358 	.db 0xe2
      0050F4 94                    4359 	.db 0x94
      0050F5 80                    4360 	.db 0x80
      0050F6 E2                    4361 	.db 0xe2
      0050F7 94                    4362 	.db 0x94
      0050F8 80                    4363 	.db 0x80
      0050F9 E2                    4364 	.db 0xe2
      0050FA 94                    4365 	.db 0x94
      0050FB 80                    4366 	.db 0x80
      0050FC E2                    4367 	.db 0xe2
      0050FD 94                    4368 	.db 0x94
      0050FE 80                    4369 	.db 0x80
      0050FF 20 52 45 53 45 54 20  4370 	.ascii " RESET OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      005110 E2                    4371 	.db 0xe2
      005111 94                    4372 	.db 0x94
      005112 80                    4373 	.db 0x80
      005113 E2                    4374 	.db 0xe2
      005114 94                    4375 	.db 0x94
      005115 80                    4376 	.db 0x80
      005116 E2                    4377 	.db 0xe2
      005117 94                    4378 	.db 0x94
      005118 80                    4379 	.db 0x80
      005119 E2                    4380 	.db 0xe2
      00511A 94                    4381 	.db 0x94
      00511B 80                    4382 	.db 0x80
      00511C E2                    4383 	.db 0xe2
      00511D 94                    4384 	.db 0x94
      00511E 80                    4385 	.db 0x80
      00511F E2                    4386 	.db 0xe2
      005120 94                    4387 	.db 0x94
      005121 80                    4388 	.db 0x80
      005122 E2                    4389 	.db 0xe2
      005123 94                    4390 	.db 0x94
      005124 80                    4391 	.db 0x80
      005125 E2                    4392 	.db 0xe2
      005126 94                    4393 	.db 0x94
      005127 80                    4394 	.db 0x80
      005128 E2                    4395 	.db 0xe2
      005129 94                    4396 	.db 0x94
      00512A 80                    4397 	.db 0x80
      00512B E2                    4398 	.db 0xe2
      00512C 94                    4399 	.db 0x94
      00512D 80                    4400 	.db 0x80
      00512E E2                    4401 	.db 0xe2
      00512F 94                    4402 	.db 0x94
      005130 80                    4403 	.db 0x80
      005131 E2                    4404 	.db 0xe2
      005132 94                    4405 	.db 0x94
      005133 90                    4406 	.db 0x90
      005134 0A                    4407 	.db 0x0a
      005135 0D                    4408 	.db 0x0d
      005136 00                    4409 	.db 0x00
                                   4410 	.area CSEG    (CODE)
                                   4411 	.area CONST   (CODE)
      005137                       4412 ___str_19:
      005137 0A                    4413 	.db 0x0a
      005138 E2                    4414 	.db 0xe2
      005139 94                    4415 	.db 0x94
      00513A 8C                    4416 	.db 0x8c
      00513B E2                    4417 	.db 0xe2
      00513C 94                    4418 	.db 0x94
      00513D 80                    4419 	.db 0x80
      00513E E2                    4420 	.db 0xe2
      00513F 94                    4421 	.db 0x94
      005140 80                    4422 	.db 0x80
      005141 E2                    4423 	.db 0xe2
      005142 94                    4424 	.db 0x94
      005143 80                    4425 	.db 0x80
      005144 E2                    4426 	.db 0xe2
      005145 94                    4427 	.db 0x94
      005146 80                    4428 	.db 0x80
      005147 E2                    4429 	.db 0xe2
      005148 94                    4430 	.db 0x94
      005149 80                    4431 	.db 0x80
      00514A E2                    4432 	.db 0xe2
      00514B 94                    4433 	.db 0x94
      00514C 80                    4434 	.db 0x80
      00514D E2                    4435 	.db 0xe2
      00514E 94                    4436 	.db 0x94
      00514F 80                    4437 	.db 0x80
      005150 E2                    4438 	.db 0xe2
      005151 94                    4439 	.db 0x94
      005152 80                    4440 	.db 0x80
      005153 E2                    4441 	.db 0xe2
      005154 94                    4442 	.db 0x94
      005155 80                    4443 	.db 0x80
      005156 E2                    4444 	.db 0xe2
      005157 94                    4445 	.db 0x94
      005158 80                    4446 	.db 0x80
      005159 E2                    4447 	.db 0xe2
      00515A 94                    4448 	.db 0x94
      00515B 80                    4449 	.db 0x80
      00515C E2                    4450 	.db 0xe2
      00515D 94                    4451 	.db 0x94
      00515E 80                    4452 	.db 0x80
      00515F E2                    4453 	.db 0xe2
      005160 94                    4454 	.db 0x94
      005161 80                    4455 	.db 0x80
      005162 20 48 45 58 20 44 55  4456 	.ascii " HEX DUMP OPERATION "
             4D 50 20 4F 50 45 52
             41 54 49 4F 4E 20
      005176 E2                    4457 	.db 0xe2
      005177 94                    4458 	.db 0x94
      005178 80                    4459 	.db 0x80
      005179 E2                    4460 	.db 0xe2
      00517A 94                    4461 	.db 0x94
      00517B 80                    4462 	.db 0x80
      00517C E2                    4463 	.db 0xe2
      00517D 94                    4464 	.db 0x94
      00517E 80                    4465 	.db 0x80
      00517F E2                    4466 	.db 0xe2
      005180 94                    4467 	.db 0x94
      005181 80                    4468 	.db 0x80
      005182 E2                    4469 	.db 0xe2
      005183 94                    4470 	.db 0x94
      005184 80                    4471 	.db 0x80
      005185 E2                    4472 	.db 0xe2
      005186 94                    4473 	.db 0x94
      005187 80                    4474 	.db 0x80
      005188 E2                    4475 	.db 0xe2
      005189 94                    4476 	.db 0x94
      00518A 80                    4477 	.db 0x80
      00518B E2                    4478 	.db 0xe2
      00518C 94                    4479 	.db 0x94
      00518D 80                    4480 	.db 0x80
      00518E E2                    4481 	.db 0xe2
      00518F 94                    4482 	.db 0x94
      005190 80                    4483 	.db 0x80
      005191 E2                    4484 	.db 0xe2
      005192 94                    4485 	.db 0x94
      005193 80                    4486 	.db 0x80
      005194 E2                    4487 	.db 0xe2
      005195 94                    4488 	.db 0x94
      005196 80                    4489 	.db 0x80
      005197 E2                    4490 	.db 0xe2
      005198 94                    4491 	.db 0x94
      005199 80                    4492 	.db 0x80
      00519A E2                    4493 	.db 0xe2
      00519B 94                    4494 	.db 0x94
      00519C 80                    4495 	.db 0x80
      00519D E2                    4496 	.db 0xe2
      00519E 94                    4497 	.db 0x94
      00519F 80                    4498 	.db 0x80
      0051A0 E2                    4499 	.db 0xe2
      0051A1 94                    4500 	.db 0x94
      0051A2 80                    4501 	.db 0x80
      0051A3 E2                    4502 	.db 0xe2
      0051A4 94                    4503 	.db 0x94
      0051A5 90                    4504 	.db 0x90
      0051A6 0A                    4505 	.db 0x0a
      0051A7 0D                    4506 	.db 0x0d
      0051A8 00                    4507 	.db 0x00
                                   4508 	.area CSEG    (CODE)
                                   4509 	.area CONST   (CODE)
      0051A9                       4510 ___str_20:
      0051A9 49 4E 56 41 4C 49 44  4511 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      0051B6 0A                    4512 	.db 0x0a
      0051B7 0D                    4513 	.db 0x0d
      0051B8 00                    4514 	.db 0x00
                                   4515 	.area CSEG    (CODE)
                                   4516 	.area CONST   (CODE)
      0051B9                       4517 ___str_21:
      0051B9 E2                    4518 	.db 0xe2
      0051BA 94                    4519 	.db 0x94
      0051BB 82                    4520 	.db 0x82
      0051BC 20 45 6E 74 65 72 20  4521 	.ascii " Enter address (hex, up to 3 characters): "
             61 64 64 72 65 73 73
             20 28 68 65 78 2C 20
             75 70 20 74 6F 20 33
             20 63 68 61 72 61 63
             74 65 72 73 29 3A 20
      0051E6 0A                    4522 	.db 0x0a
      0051E7 0D                    4523 	.db 0x0d
      0051E8 7C                    4524 	.ascii "|"
      0051E9 00                    4525 	.db 0x00
                                   4526 	.area CSEG    (CODE)
                                   4527 	.area CONST   (CODE)
      0051EA                       4528 ___str_22:
      0051EA 7C 20 24 20           4529 	.ascii "| $ "
      0051EE 00                    4530 	.db 0x00
                                   4531 	.area CSEG    (CODE)
                                   4532 	.area CONST   (CODE)
      0051EF                       4533 ___str_23:
      0051EF 0A                    4534 	.db 0x0a
      0051F0 0D                    4535 	.db 0x0d
      0051F1 E2                    4536 	.db 0xe2
      0051F2 94                    4537 	.db 0x94
      0051F3 82                    4538 	.db 0x82
      0051F4 20 45 6E 74 65 72 65  4539 	.ascii " Entered address: 0x%03X"
             64 20 61 64 64 72 65
             73 73 3A 20 30 78 25
             30 33 58
      00520C 0A                    4540 	.db 0x0a
      00520D 0D                    4541 	.db 0x0d
      00520E 00                    4542 	.db 0x00
                                   4543 	.area CSEG    (CODE)
                                   4544 	.area CONST   (CODE)
      00520F                       4545 ___str_24:
      00520F E2                    4546 	.db 0xe2
      005210 95                    4547 	.db 0x95
      005211 94                    4548 	.db 0x94
      005212 E2                    4549 	.db 0xe2
      005213 95                    4550 	.db 0x95
      005214 90                    4551 	.db 0x90
      005215 E2                    4552 	.db 0xe2
      005216 95                    4553 	.db 0x95
      005217 90                    4554 	.db 0x90
      005218 E2                    4555 	.db 0xe2
      005219 95                    4556 	.db 0x95
      00521A 90                    4557 	.db 0x90
      00521B E2                    4558 	.db 0xe2
      00521C 95                    4559 	.db 0x95
      00521D 90                    4560 	.db 0x90
      00521E E2                    4561 	.db 0xe2
      00521F 95                    4562 	.db 0x95
      005220 90                    4563 	.db 0x90
      005221 E2                    4564 	.db 0xe2
      005222 95                    4565 	.db 0x95
      005223 90                    4566 	.db 0x90
      005224 E2                    4567 	.db 0xe2
      005225 95                    4568 	.db 0x95
      005226 90                    4569 	.db 0x90
      005227 E2                    4570 	.db 0xe2
      005228 95                    4571 	.db 0x95
      005229 90                    4572 	.db 0x90
      00522A E2                    4573 	.db 0xe2
      00522B 95                    4574 	.db 0x95
      00522C 90                    4575 	.db 0x90
      00522D E2                    4576 	.db 0xe2
      00522E 95                    4577 	.db 0x95
      00522F 90                    4578 	.db 0x90
      005230 E2                    4579 	.db 0xe2
      005231 95                    4580 	.db 0x95
      005232 90                    4581 	.db 0x90
      005233 E2                    4582 	.db 0xe2
      005234 95                    4583 	.db 0x95
      005235 90                    4584 	.db 0x90
      005236 E2                    4585 	.db 0xe2
      005237 95                    4586 	.db 0x95
      005238 90                    4587 	.db 0x90
      005239 E2                    4588 	.db 0xe2
      00523A 95                    4589 	.db 0x95
      00523B 90                    4590 	.db 0x90
      00523C E2                    4591 	.db 0xe2
      00523D 95                    4592 	.db 0x95
      00523E 90                    4593 	.db 0x90
      00523F E2                    4594 	.db 0xe2
      005240 95                    4595 	.db 0x95
      005241 90                    4596 	.db 0x90
      005242 E2                    4597 	.db 0xe2
      005243 95                    4598 	.db 0x95
      005244 90                    4599 	.db 0x90
      005245 E2                    4600 	.db 0xe2
      005246 95                    4601 	.db 0x95
      005247 90                    4602 	.db 0x90
      005248 E2                    4603 	.db 0xe2
      005249 95                    4604 	.db 0x95
      00524A 90                    4605 	.db 0x90
      00524B E2                    4606 	.db 0xe2
      00524C 95                    4607 	.db 0x95
      00524D 90                    4608 	.db 0x90
      00524E E2                    4609 	.db 0xe2
      00524F 95                    4610 	.db 0x95
      005250 90                    4611 	.db 0x90
      005251 E2                    4612 	.db 0xe2
      005252 95                    4613 	.db 0x95
      005253 90                    4614 	.db 0x90
      005254 E2                    4615 	.db 0xe2
      005255 95                    4616 	.db 0x95
      005256 90                    4617 	.db 0x90
      005257 E2                    4618 	.db 0xe2
      005258 95                    4619 	.db 0x95
      005259 90                    4620 	.db 0x90
      00525A E2                    4621 	.db 0xe2
      00525B 95                    4622 	.db 0x95
      00525C 90                    4623 	.db 0x90
      00525D E2                    4624 	.db 0xe2
      00525E 95                    4625 	.db 0x95
      00525F 90                    4626 	.db 0x90
      005260 E2                    4627 	.db 0xe2
      005261 95                    4628 	.db 0x95
      005262 90                    4629 	.db 0x90
      005263 E2                    4630 	.db 0xe2
      005264 95                    4631 	.db 0x95
      005265 90                    4632 	.db 0x90
      005266 E2                    4633 	.db 0xe2
      005267 95                    4634 	.db 0x95
      005268 90                    4635 	.db 0x90
      005269 E2                    4636 	.db 0xe2
      00526A 95                    4637 	.db 0x95
      00526B 90                    4638 	.db 0x90
      00526C E2                    4639 	.db 0xe2
      00526D 95                    4640 	.db 0x95
      00526E 90                    4641 	.db 0x90
      00526F E2                    4642 	.db 0xe2
      005270 95                    4643 	.db 0x95
      005271 90                    4644 	.db 0x90
      005272 E2                    4645 	.db 0xe2
      005273 95                    4646 	.db 0x95
      005274 90                    4647 	.db 0x90
      005275 E2                    4648 	.db 0xe2
      005276 95                    4649 	.db 0x95
      005277 90                    4650 	.db 0x90
      005278 E2                    4651 	.db 0xe2
      005279 95                    4652 	.db 0x95
      00527A 90                    4653 	.db 0x90
      00527B E2                    4654 	.db 0xe2
      00527C 95                    4655 	.db 0x95
      00527D 90                    4656 	.db 0x90
      00527E E2                    4657 	.db 0xe2
      00527F 95                    4658 	.db 0x95
      005280 90                    4659 	.db 0x90
      005281 E2                    4660 	.db 0xe2
      005282 95                    4661 	.db 0x95
      005283 90                    4662 	.db 0x90
      005284 E2                    4663 	.db 0xe2
      005285 95                    4664 	.db 0x95
      005286 90                    4665 	.db 0x90
      005287 E2                    4666 	.db 0xe2
      005288 95                    4667 	.db 0x95
      005289 90                    4668 	.db 0x90
      00528A E2                    4669 	.db 0xe2
      00528B 95                    4670 	.db 0x95
      00528C 90                    4671 	.db 0x90
      00528D E2                    4672 	.db 0xe2
      00528E 95                    4673 	.db 0x95
      00528F 90                    4674 	.db 0x90
      005290 E2                    4675 	.db 0xe2
      005291 95                    4676 	.db 0x95
      005292 97                    4677 	.db 0x97
      005293 0A                    4678 	.db 0x0a
      005294 0D                    4679 	.db 0x0d
      005295 00                    4680 	.db 0x00
                                   4681 	.area CSEG    (CODE)
                                   4682 	.area CONST   (CODE)
      005296                       4683 ___str_25:
      005296 E2                    4684 	.db 0xe2
      005297 95                    4685 	.db 0x95
      005298 91                    4686 	.db 0x91
      005299 20 20 20 20 20 20 20  4687 	.ascii "       ! ADDRESS OUT OF RANGE !         "
             21 20 41 44 44 52 45
             53 53 20 4F 55 54 20
             4F 46 20 52 41 4E 47
             45 20 21 20 20 20 20
             20 20 20 20 20
      0052C1 E2                    4688 	.db 0xe2
      0052C2 95                    4689 	.db 0x95
      0052C3 91                    4690 	.db 0x91
      0052C4 0A                    4691 	.db 0x0a
      0052C5 0D                    4692 	.db 0x0d
      0052C6 00                    4693 	.db 0x00
                                   4694 	.area CSEG    (CODE)
                                   4695 	.area CONST   (CODE)
      0052C7                       4696 ___str_26:
      0052C7 E2                    4697 	.db 0xe2
      0052C8 95                    4698 	.db 0x95
      0052C9 91                    4699 	.db 0x91
      0052CA 20 20 20 20 20 50 6C  4700 	.ascii "     Please Enter Valid Address         "
             65 61 73 65 20 45 6E
             74 65 72 20 56 61 6C
             69 64 20 41 64 64 72
             65 73 73 20 20 20 20
             20 20 20 20 20
      0052F2 E2                    4701 	.db 0xe2
      0052F3 95                    4702 	.db 0x95
      0052F4 91                    4703 	.db 0x91
      0052F5 0A                    4704 	.db 0x0a
      0052F6 0D                    4705 	.db 0x0d
      0052F7 00                    4706 	.db 0x00
                                   4707 	.area CSEG    (CODE)
                                   4708 	.area CONST   (CODE)
      0052F8                       4709 ___str_27:
      0052F8 E2                    4710 	.db 0xe2
      0052F9 95                    4711 	.db 0x95
      0052FA 9A                    4712 	.db 0x9a
      0052FB E2                    4713 	.db 0xe2
      0052FC 95                    4714 	.db 0x95
      0052FD 90                    4715 	.db 0x90
      0052FE E2                    4716 	.db 0xe2
      0052FF 95                    4717 	.db 0x95
      005300 90                    4718 	.db 0x90
      005301 E2                    4719 	.db 0xe2
      005302 95                    4720 	.db 0x95
      005303 90                    4721 	.db 0x90
      005304 E2                    4722 	.db 0xe2
      005305 95                    4723 	.db 0x95
      005306 90                    4724 	.db 0x90
      005307 E2                    4725 	.db 0xe2
      005308 95                    4726 	.db 0x95
      005309 90                    4727 	.db 0x90
      00530A E2                    4728 	.db 0xe2
      00530B 95                    4729 	.db 0x95
      00530C 90                    4730 	.db 0x90
      00530D E2                    4731 	.db 0xe2
      00530E 95                    4732 	.db 0x95
      00530F 90                    4733 	.db 0x90
      005310 E2                    4734 	.db 0xe2
      005311 95                    4735 	.db 0x95
      005312 90                    4736 	.db 0x90
      005313 E2                    4737 	.db 0xe2
      005314 95                    4738 	.db 0x95
      005315 90                    4739 	.db 0x90
      005316 E2                    4740 	.db 0xe2
      005317 95                    4741 	.db 0x95
      005318 90                    4742 	.db 0x90
      005319 E2                    4743 	.db 0xe2
      00531A 95                    4744 	.db 0x95
      00531B 90                    4745 	.db 0x90
      00531C E2                    4746 	.db 0xe2
      00531D 95                    4747 	.db 0x95
      00531E 90                    4748 	.db 0x90
      00531F E2                    4749 	.db 0xe2
      005320 95                    4750 	.db 0x95
      005321 90                    4751 	.db 0x90
      005322 E2                    4752 	.db 0xe2
      005323 95                    4753 	.db 0x95
      005324 90                    4754 	.db 0x90
      005325 E2                    4755 	.db 0xe2
      005326 95                    4756 	.db 0x95
      005327 90                    4757 	.db 0x90
      005328 E2                    4758 	.db 0xe2
      005329 95                    4759 	.db 0x95
      00532A 90                    4760 	.db 0x90
      00532B E2                    4761 	.db 0xe2
      00532C 95                    4762 	.db 0x95
      00532D 90                    4763 	.db 0x90
      00532E E2                    4764 	.db 0xe2
      00532F 95                    4765 	.db 0x95
      005330 90                    4766 	.db 0x90
      005331 E2                    4767 	.db 0xe2
      005332 95                    4768 	.db 0x95
      005333 90                    4769 	.db 0x90
      005334 E2                    4770 	.db 0xe2
      005335 95                    4771 	.db 0x95
      005336 90                    4772 	.db 0x90
      005337 E2                    4773 	.db 0xe2
      005338 95                    4774 	.db 0x95
      005339 90                    4775 	.db 0x90
      00533A E2                    4776 	.db 0xe2
      00533B 95                    4777 	.db 0x95
      00533C 90                    4778 	.db 0x90
      00533D E2                    4779 	.db 0xe2
      00533E 95                    4780 	.db 0x95
      00533F 90                    4781 	.db 0x90
      005340 E2                    4782 	.db 0xe2
      005341 95                    4783 	.db 0x95
      005342 90                    4784 	.db 0x90
      005343 E2                    4785 	.db 0xe2
      005344 95                    4786 	.db 0x95
      005345 90                    4787 	.db 0x90
      005346 E2                    4788 	.db 0xe2
      005347 95                    4789 	.db 0x95
      005348 90                    4790 	.db 0x90
      005349 E2                    4791 	.db 0xe2
      00534A 95                    4792 	.db 0x95
      00534B 90                    4793 	.db 0x90
      00534C E2                    4794 	.db 0xe2
      00534D 95                    4795 	.db 0x95
      00534E 90                    4796 	.db 0x90
      00534F E2                    4797 	.db 0xe2
      005350 95                    4798 	.db 0x95
      005351 90                    4799 	.db 0x90
      005352 E2                    4800 	.db 0xe2
      005353 95                    4801 	.db 0x95
      005354 90                    4802 	.db 0x90
      005355 E2                    4803 	.db 0xe2
      005356 95                    4804 	.db 0x95
      005357 90                    4805 	.db 0x90
      005358 E2                    4806 	.db 0xe2
      005359 95                    4807 	.db 0x95
      00535A 90                    4808 	.db 0x90
      00535B E2                    4809 	.db 0xe2
      00535C 95                    4810 	.db 0x95
      00535D 90                    4811 	.db 0x90
      00535E E2                    4812 	.db 0xe2
      00535F 95                    4813 	.db 0x95
      005360 90                    4814 	.db 0x90
      005361 E2                    4815 	.db 0xe2
      005362 95                    4816 	.db 0x95
      005363 90                    4817 	.db 0x90
      005364 E2                    4818 	.db 0xe2
      005365 95                    4819 	.db 0x95
      005366 90                    4820 	.db 0x90
      005367 E2                    4821 	.db 0xe2
      005368 95                    4822 	.db 0x95
      005369 90                    4823 	.db 0x90
      00536A E2                    4824 	.db 0xe2
      00536B 95                    4825 	.db 0x95
      00536C 90                    4826 	.db 0x90
      00536D E2                    4827 	.db 0xe2
      00536E 95                    4828 	.db 0x95
      00536F 90                    4829 	.db 0x90
      005370 E2                    4830 	.db 0xe2
      005371 95                    4831 	.db 0x95
      005372 90                    4832 	.db 0x90
      005373 E2                    4833 	.db 0xe2
      005374 95                    4834 	.db 0x95
      005375 90                    4835 	.db 0x90
      005376 E2                    4836 	.db 0xe2
      005377 95                    4837 	.db 0x95
      005378 90                    4838 	.db 0x90
      005379 E2                    4839 	.db 0xe2
      00537A 95                    4840 	.db 0x95
      00537B 9D                    4841 	.db 0x9d
      00537C 0A                    4842 	.db 0x0a
      00537D 0D                    4843 	.db 0x0d
      00537E 00                    4844 	.db 0x00
                                   4845 	.area CSEG    (CODE)
                                   4846 	.area CONST   (CODE)
      00537F                       4847 ___str_28:
      00537F E2                    4848 	.db 0xe2
      005380 94                    4849 	.db 0x94
      005381 82                    4850 	.db 0x82
      005382 20 45 6E 74 65 72 20  4851 	.ascii " Enter data (hex, up to 2 characters): "
             64 61 74 61 20 28 68
             65 78 2C 20 75 70 20
             74 6F 20 32 20 63 68
             61 72 61 63 74 65 72
             73 29 3A 20
      0053A9 0A                    4852 	.db 0x0a
      0053AA 0D                    4853 	.db 0x0d
      0053AB 7C                    4854 	.ascii "|"
      0053AC 00                    4855 	.db 0x00
                                   4856 	.area CSEG    (CODE)
                                   4857 	.area CONST   (CODE)
      0053AD                       4858 ___str_29:
      0053AD 24 20                 4859 	.ascii "$ "
      0053AF 00                    4860 	.db 0x00
                                   4861 	.area CSEG    (CODE)
                                   4862 	.area CONST   (CODE)
      0053B0                       4863 ___str_30:
      0053B0 0A                    4864 	.db 0x0a
      0053B1 0D                    4865 	.db 0x0d
      0053B2 E2                    4866 	.db 0xe2
      0053B3 94                    4867 	.db 0x94
      0053B4 82                    4868 	.db 0x82
      0053B5 20 45 6E 74 65 72 65  4869 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      0053CA 0A                    4870 	.db 0x0a
      0053CB 0D                    4871 	.db 0x0d
      0053CC 00                    4872 	.db 0x00
                                   4873 	.area CSEG    (CODE)
                                   4874 	.area CONST   (CODE)
      0053CD                       4875 ___str_31:
      0053CD 44 61 74 61 20 6F 75  4876 	.ascii "Data out of Range"
             74 20 6F 66 20 52 61
             6E 67 65
      0053DE 0A                    4877 	.db 0x0a
      0053DF 0D                    4878 	.db 0x0d
      0053E0 00                    4879 	.db 0x00
                                   4880 	.area CSEG    (CODE)
                                   4881 	.area CONST   (CODE)
      0053E1                       4882 ___str_32:
      0053E1 45 72 72 6F 72 3A 20  4883 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      005409 0A                    4884 	.db 0x0a
      00540A 0D                    4885 	.db 0x0d
      00540B 00                    4886 	.db 0x00
                                   4887 	.area CSEG    (CODE)
                                   4888 	.area CONST   (CODE)
      00540C                       4889 ___str_33:
      00540C 45 72 72 6F 72 3A 20  4890 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      00542C 0A                    4891 	.db 0x0a
      00542D 0D                    4892 	.db 0x0d
      00542E 00                    4893 	.db 0x00
                                   4894 	.area CSEG    (CODE)
                                   4895 	.area CONST   (CODE)
      00542F                       4896 ___str_34:
      00542F 45 72 72 6F 72 3A 20  4897 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      005445 0A                    4898 	.db 0x0a
      005446 0D                    4899 	.db 0x0d
      005447 00                    4900 	.db 0x00
                                   4901 	.area CSEG    (CODE)
                                   4902 	.area CONST   (CODE)
      005448                       4903 ___str_35:
      005448 7C 20 57 72 69 74 69  4904 	.ascii "| Writing at Address 0x%03X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 33 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      00547A 0A                    4905 	.db 0x0a
      00547B 0D                    4906 	.db 0x0d
      00547C 00                    4907 	.db 0x00
                                   4908 	.area CSEG    (CODE)
                                   4909 	.area CONST   (CODE)
      00547D                       4910 ___str_36:
      00547D E2                    4911 	.db 0xe2
      00547E 94                    4912 	.db 0x94
      00547F 82                    4913 	.db 0x82
      005480 20 57 72 69 74 65 20  4914 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      0054AF E2                    4915 	.db 0xe2
      0054B0 94                    4916 	.db 0x94
      0054B1 82                    4917 	.db 0x82
      0054B2 0A                    4918 	.db 0x0a
      0054B3 0D                    4919 	.db 0x0d
      0054B4 00                    4920 	.db 0x00
                                   4921 	.area CSEG    (CODE)
                                   4922 	.area CONST   (CODE)
      0054B5                       4923 ___str_37:
      0054B5 E2                    4924 	.db 0xe2
      0054B6 94                    4925 	.db 0x94
      0054B7 94                    4926 	.db 0x94
      0054B8 E2                    4927 	.db 0xe2
      0054B9 94                    4928 	.db 0x94
      0054BA 80                    4929 	.db 0x80
      0054BB E2                    4930 	.db 0xe2
      0054BC 94                    4931 	.db 0x94
      0054BD 80                    4932 	.db 0x80
      0054BE E2                    4933 	.db 0xe2
      0054BF 94                    4934 	.db 0x94
      0054C0 80                    4935 	.db 0x80
      0054C1 E2                    4936 	.db 0xe2
      0054C2 94                    4937 	.db 0x94
      0054C3 80                    4938 	.db 0x80
      0054C4 E2                    4939 	.db 0xe2
      0054C5 94                    4940 	.db 0x94
      0054C6 80                    4941 	.db 0x80
      0054C7 E2                    4942 	.db 0xe2
      0054C8 94                    4943 	.db 0x94
      0054C9 80                    4944 	.db 0x80
      0054CA E2                    4945 	.db 0xe2
      0054CB 94                    4946 	.db 0x94
      0054CC 80                    4947 	.db 0x80
      0054CD E2                    4948 	.db 0xe2
      0054CE 94                    4949 	.db 0x94
      0054CF 80                    4950 	.db 0x80
      0054D0 E2                    4951 	.db 0xe2
      0054D1 94                    4952 	.db 0x94
      0054D2 80                    4953 	.db 0x80
      0054D3 E2                    4954 	.db 0xe2
      0054D4 94                    4955 	.db 0x94
      0054D5 80                    4956 	.db 0x80
      0054D6 E2                    4957 	.db 0xe2
      0054D7 94                    4958 	.db 0x94
      0054D8 80                    4959 	.db 0x80
      0054D9 E2                    4960 	.db 0xe2
      0054DA 94                    4961 	.db 0x94
      0054DB 80                    4962 	.db 0x80
      0054DC E2                    4963 	.db 0xe2
      0054DD 94                    4964 	.db 0x94
      0054DE 80                    4965 	.db 0x80
      0054DF E2                    4966 	.db 0xe2
      0054E0 94                    4967 	.db 0x94
      0054E1 80                    4968 	.db 0x80
      0054E2 E2                    4969 	.db 0xe2
      0054E3 94                    4970 	.db 0x94
      0054E4 80                    4971 	.db 0x80
      0054E5 E2                    4972 	.db 0xe2
      0054E6 94                    4973 	.db 0x94
      0054E7 80                    4974 	.db 0x80
      0054E8 E2                    4975 	.db 0xe2
      0054E9 94                    4976 	.db 0x94
      0054EA 80                    4977 	.db 0x80
      0054EB E2                    4978 	.db 0xe2
      0054EC 94                    4979 	.db 0x94
      0054ED 80                    4980 	.db 0x80
      0054EE E2                    4981 	.db 0xe2
      0054EF 94                    4982 	.db 0x94
      0054F0 80                    4983 	.db 0x80
      0054F1 E2                    4984 	.db 0xe2
      0054F2 94                    4985 	.db 0x94
      0054F3 80                    4986 	.db 0x80
      0054F4 E2                    4987 	.db 0xe2
      0054F5 94                    4988 	.db 0x94
      0054F6 80                    4989 	.db 0x80
      0054F7 E2                    4990 	.db 0xe2
      0054F8 94                    4991 	.db 0x94
      0054F9 80                    4992 	.db 0x80
      0054FA E2                    4993 	.db 0xe2
      0054FB 94                    4994 	.db 0x94
      0054FC 80                    4995 	.db 0x80
      0054FD E2                    4996 	.db 0xe2
      0054FE 94                    4997 	.db 0x94
      0054FF 80                    4998 	.db 0x80
      005500 E2                    4999 	.db 0xe2
      005501 94                    5000 	.db 0x94
      005502 80                    5001 	.db 0x80
      005503 E2                    5002 	.db 0xe2
      005504 94                    5003 	.db 0x94
      005505 80                    5004 	.db 0x80
      005506 E2                    5005 	.db 0xe2
      005507 94                    5006 	.db 0x94
      005508 80                    5007 	.db 0x80
      005509 E2                    5008 	.db 0xe2
      00550A 94                    5009 	.db 0x94
      00550B 80                    5010 	.db 0x80
      00550C E2                    5011 	.db 0xe2
      00550D 94                    5012 	.db 0x94
      00550E 80                    5013 	.db 0x80
      00550F E2                    5014 	.db 0xe2
      005510 94                    5015 	.db 0x94
      005511 80                    5016 	.db 0x80
      005512 E2                    5017 	.db 0xe2
      005513 94                    5018 	.db 0x94
      005514 80                    5019 	.db 0x80
      005515 E2                    5020 	.db 0xe2
      005516 94                    5021 	.db 0x94
      005517 80                    5022 	.db 0x80
      005518 E2                    5023 	.db 0xe2
      005519 94                    5024 	.db 0x94
      00551A 80                    5025 	.db 0x80
      00551B E2                    5026 	.db 0xe2
      00551C 94                    5027 	.db 0x94
      00551D 80                    5028 	.db 0x80
      00551E E2                    5029 	.db 0xe2
      00551F 94                    5030 	.db 0x94
      005520 80                    5031 	.db 0x80
      005521 E2                    5032 	.db 0xe2
      005522 94                    5033 	.db 0x94
      005523 80                    5034 	.db 0x80
      005524 E2                    5035 	.db 0xe2
      005525 94                    5036 	.db 0x94
      005526 80                    5037 	.db 0x80
      005527 E2                    5038 	.db 0xe2
      005528 94                    5039 	.db 0x94
      005529 80                    5040 	.db 0x80
      00552A E2                    5041 	.db 0xe2
      00552B 94                    5042 	.db 0x94
      00552C 80                    5043 	.db 0x80
      00552D E2                    5044 	.db 0xe2
      00552E 94                    5045 	.db 0x94
      00552F 80                    5046 	.db 0x80
      005530 E2                    5047 	.db 0xe2
      005531 94                    5048 	.db 0x94
      005532 80                    5049 	.db 0x80
      005533 E2                    5050 	.db 0xe2
      005534 94                    5051 	.db 0x94
      005535 80                    5052 	.db 0x80
      005536 E2                    5053 	.db 0xe2
      005537 94                    5054 	.db 0x94
      005538 80                    5055 	.db 0x80
      005539 E2                    5056 	.db 0xe2
      00553A 94                    5057 	.db 0x94
      00553B 80                    5058 	.db 0x80
      00553C E2                    5059 	.db 0xe2
      00553D 94                    5060 	.db 0x94
      00553E 80                    5061 	.db 0x80
      00553F E2                    5062 	.db 0xe2
      005540 94                    5063 	.db 0x94
      005541 80                    5064 	.db 0x80
      005542 E2                    5065 	.db 0xe2
      005543 94                    5066 	.db 0x94
      005544 80                    5067 	.db 0x80
      005545 E2                    5068 	.db 0xe2
      005546 94                    5069 	.db 0x94
      005547 98                    5070 	.db 0x98
      005548 0A                    5071 	.db 0x0a
      005549 0D                    5072 	.db 0x0d
      00554A 00                    5073 	.db 0x00
                                   5074 	.area CSEG    (CODE)
                                   5075 	.area CONST   (CODE)
      00554B                       5076 ___str_38:
      00554B 45 72 72 6F 72 3A 20  5077 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      005578 0A                    5078 	.db 0x0a
      005579 0D                    5079 	.db 0x0d
      00557A 00                    5080 	.db 0x00
                                   5081 	.area CSEG    (CODE)
                                   5082 	.area CONST   (CODE)
      00557B                       5083 ___str_39:
      00557B 45 72 72 6F 72 3A 20  5084 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      0055A7 0A                    5085 	.db 0x0a
      0055A8 0D                    5086 	.db 0x0d
      0055A9 00                    5087 	.db 0x00
                                   5088 	.area CSEG    (CODE)
                                   5089 	.area CONST   (CODE)
      0055AA                       5090 ___str_40:
      0055AA 7C 20 30 78 25 30 33  5091 	.ascii "| 0x%03X : 0x%02X "
             58 20 3A 20 30 78 25
             30 32 58 20
      0055BC 0A                    5092 	.db 0x0a
      0055BD 0D                    5093 	.db 0x0d
      0055BE 00                    5094 	.db 0x00
                                   5095 	.area CSEG    (CODE)
                                   5096 	.area CONST   (CODE)
      0055BF                       5097 ___str_41:
      0055BF E2                    5098 	.db 0xe2
      0055C0 94                    5099 	.db 0x94
      0055C1 82                    5100 	.db 0x82
      0055C2 20 52 65 61 64 20 73  5101 	.ascii " Read successful!                 "
             75 63 63 65 73 73 66
             75 6C 21 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20
      0055E4 E2                    5102 	.db 0xe2
      0055E5 94                    5103 	.db 0x94
      0055E6 82                    5104 	.db 0x82
      0055E7 0A                    5105 	.db 0x0a
      0055E8 0D                    5106 	.db 0x0d
      0055E9 00                    5107 	.db 0x00
                                   5108 	.area CSEG    (CODE)
                                   5109 	.area CONST   (CODE)
      0055EA                       5110 ___str_42:
      0055EA 41 43 4B 20 44 49 44  5111 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      0055FC 0A                    5112 	.db 0x0a
      0055FD 0D                    5113 	.db 0x0d
      0055FE 00                    5114 	.db 0x00
                                   5115 	.area CSEG    (CODE)
                                   5116 	.area CONST   (CODE)
      0055FF                       5117 ___str_43:
      0055FF 0D                    5118 	.db 0x0d
      005600 0A                    5119 	.db 0x0a
      005601 00                    5120 	.db 0x00
                                   5121 	.area CSEG    (CODE)
                                   5122 	.area CONST   (CODE)
      005602                       5123 ___str_44:
      005602 0D                    5124 	.db 0x0d
      005603 0A                    5125 	.db 0x0a
      005604 2D 2D 2D 2D 2D 2D 2D  5126 	.ascii "------------------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      005640 2D 2D 2D 2D           5127 	.ascii "----"
      005644 00                    5128 	.db 0x00
                                   5129 	.area CSEG    (CODE)
                                   5130 	.area CONST   (CODE)
      005645                       5131 ___str_45:
      005645 0D                    5132 	.db 0x0d
      005646 0A                    5133 	.db 0x0a
      005647 20 20 20 20 20 20 20  5134 	.ascii "                    EEPROM Hex Dump                         "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 45
             45 50 52 4F 4D 20 48
             65 78 20 44 75 6D 70
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      005683 20 20 20 20           5135 	.ascii "    "
      005687 00                    5136 	.db 0x00
                                   5137 	.area CSEG    (CODE)
                                   5138 	.area CONST   (CODE)
      005688                       5139 ___str_46:
      005688 0D                    5140 	.db 0x0d
      005689 0A                    5141 	.db 0x0a
      00568A 2D 2D 2D 2D 2D 2D 2D  5142 	.ascii "------------------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      0056C6 2D 2D 2D 2D           5143 	.ascii "----"
      0056CA 0D                    5144 	.db 0x0d
      0056CB 0A                    5145 	.db 0x0a
      0056CC 00                    5146 	.db 0x00
                                   5147 	.area CSEG    (CODE)
                                   5148 	.area CONST   (CODE)
      0056CD                       5149 ___str_47:
      0056CD 25 30 33 58 3A 20     5150 	.ascii "%03X: "
      0056D3 00                    5151 	.db 0x00
                                   5152 	.area CSEG    (CODE)
                                   5153 	.area CONST   (CODE)
      0056D4                       5154 ___str_48:
      0056D4 25 30 32 58 20        5155 	.ascii "%02X "
      0056D9 00                    5156 	.db 0x00
                                   5157 	.area CSEG    (CODE)
                                   5158 	.area CONST   (CODE)
      0056DA                       5159 ___str_49:
      0056DA 20 20 20              5160 	.ascii "   "
      0056DD 00                    5161 	.db 0x00
                                   5162 	.area CSEG    (CODE)
                                   5163 	.area CONST   (CODE)
      0056DE                       5164 ___str_50:
      0056DE 1B                    5165 	.db 0x1b
      0056DF 5B 31 3B 33 33 6D     5166 	.ascii "[1;33m"
      0056E5 0A                    5167 	.db 0x0a
      0056E6 0D                    5168 	.db 0x0d
      0056E7 45 6E 74 65 72 20 53  5169 	.ascii "Enter Start Address for HEX Dump"
             74 61 72 74 20 41 64
             64 72 65 73 73 20 66
             6F 72 20 48 45 58 20
             44 75 6D 70
      005707 0D                    5170 	.db 0x0d
      005708 0A                    5171 	.db 0x0a
      005709 00                    5172 	.db 0x00
                                   5173 	.area CSEG    (CODE)
                                   5174 	.area CONST   (CODE)
      00570A                       5175 ___str_51:
      00570A 1B                    5176 	.db 0x1b
      00570B 5B 31 3B 33 31 6D     5177 	.ascii "[1;31m"
      005711 0A                    5178 	.db 0x0a
      005712 0D                    5179 	.db 0x0d
      005713 49 6E 76 61 6C 69 64  5180 	.ascii "Invalid Start Address Range!!"
             20 53 74 61 72 74 20
             41 64 64 72 65 73 73
             20 52 61 6E 67 65 21
             21
      005730 0A                    5181 	.db 0x0a
      005731 0D                    5182 	.db 0x0d
      005732 20 41 64 64 72 65 73  5183 	.ascii " Address has to be between 0x000 to 0x7FF"
             73 20 68 61 73 20 74
             6F 20 62 65 20 62 65
             74 77 65 65 6E 20 30
             78 30 30 30 20 74 6F
             20 30 78 37 46 46
      00575B 1B                    5184 	.db 0x1b
      00575C 5B 30 6D              5185 	.ascii "[0m"
      00575F 0D                    5186 	.db 0x0d
      005760 0A                    5187 	.db 0x0a
      005761 00                    5188 	.db 0x00
                                   5189 	.area CSEG    (CODE)
                                   5190 	.area CONST   (CODE)
      005762                       5191 ___str_52:
      005762 1B                    5192 	.db 0x1b
      005763 5B 31 3B 33 33 6D     5193 	.ascii "[1;33m"
      005769 0A                    5194 	.db 0x0a
      00576A 0D                    5195 	.db 0x0d
      00576B 45 6E 74 65 72 20 45  5196 	.ascii "Enter End Address for HEX Dump"
             6E 64 20 41 64 64 72
             65 73 73 20 66 6F 72
             20 48 45 58 20 44 75
             6D 70
      005789 0D                    5197 	.db 0x0d
      00578A 0A                    5198 	.db 0x0a
      00578B 00                    5199 	.db 0x00
                                   5200 	.area CSEG    (CODE)
                                   5201 	.area CONST   (CODE)
      00578C                       5202 ___str_53:
      00578C 1B                    5203 	.db 0x1b
      00578D 5B 31 3B 33 31 6D     5204 	.ascii "[1;31m"
      005793 0A                    5205 	.db 0x0a
      005794 0D                    5206 	.db 0x0d
      005795 49 6E 76 61 6C 69 64  5207 	.ascii "Invalid End Address Range!!"
             20 45 6E 64 20 41 64
             64 72 65 73 73 20 52
             61 6E 67 65 21 21
      0057B0 0A                    5208 	.db 0x0a
      0057B1 0D                    5209 	.db 0x0d
      0057B2 20 41 64 64 72 65 73  5210 	.ascii " Address has to be between 0x000 to 0x7FF"
             73 20 68 61 73 20 74
             6F 20 62 65 20 62 65
             74 77 65 65 6E 20 30
             78 30 30 30 20 74 6F
             20 30 78 37 46 46
      0057DB 1B                    5211 	.db 0x1b
      0057DC 5B 30 6D              5212 	.ascii "[0m"
      0057DF 0D                    5213 	.db 0x0d
      0057E0 0A                    5214 	.db 0x0a
      0057E1 00                    5215 	.db 0x00
                                   5216 	.area CSEG    (CODE)
                                   5217 	.area CONST   (CODE)
      0057E2                       5218 ___str_54:
      0057E2 57 72 69 74 69 6E 67  5219 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      005807 0A                    5220 	.db 0x0a
      005808 0D                    5221 	.db 0x0d
      005809 00                    5222 	.db 0x00
                                   5223 	.area CSEG    (CODE)
                                   5224 	.area CONST   (CODE)
      00580A                       5225 ___str_55:
      00580A 52 65 61 64 20 62 61  5226 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      00582F 0A                    5227 	.db 0x0a
      005830 0D                    5228 	.db 0x0d
      005831 00                    5229 	.db 0x00
                                   5230 	.area CSEG    (CODE)
                                   5231 	.area CONST   (CODE)
      005832                       5232 ___str_56:
      005832 4D 41 54 43 48 20 2D  5233 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      005850 0A                    5234 	.db 0x0a
      005851 0D                    5235 	.db 0x0d
      005852 00                    5236 	.db 0x00
                                   5237 	.area CSEG    (CODE)
                                   5238 	.area CONST   (CODE)
      005853                       5239 ___str_57:
      005853 45 52 52 4F 52 20 2D  5240 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      005869 0A                    5241 	.db 0x0a
      00586A 0D                    5242 	.db 0x0d
      00586B 00                    5243 	.db 0x00
                                   5244 	.area CSEG    (CODE)
                                   5245 	.area XINIT   (CODE)
      005877                       5246 __xinit__address_range_flag:
      005877 01 00                 5247 	.byte #0x01, #0x00	;  1
      005879                       5248 __xinit__data_range_flag:
      005879 01 00                 5249 	.byte #0x01, #0x00	;  1
      00587B                       5250 __xinit__block:
      00587B 00 00                 5251 	.byte #0x00, #0x00	; 0
                                   5252 	.area CABS    (ABS,CODE)
