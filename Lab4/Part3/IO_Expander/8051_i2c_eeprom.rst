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
                                     12 	.globl _EEPROM_hexdump
                                     13 	.globl _main
                                     14 	.globl _disable_interrupt0
                                     15 	.globl _external_ISR0
                                     16 	.globl _command_menu
                                     17 	.globl _ui
                                     18 	.globl _getchar
                                     19 	.globl _putchar
                                     20 	.globl _printf
                                     21 	.globl _P5_7
                                     22 	.globl _P5_6
                                     23 	.globl _P5_5
                                     24 	.globl _P5_4
                                     25 	.globl _P5_3
                                     26 	.globl _P5_2
                                     27 	.globl _P5_1
                                     28 	.globl _P5_0
                                     29 	.globl _P4_7
                                     30 	.globl _P4_6
                                     31 	.globl _P4_5
                                     32 	.globl _P4_4
                                     33 	.globl _P4_3
                                     34 	.globl _P4_2
                                     35 	.globl _P4_1
                                     36 	.globl _P4_0
                                     37 	.globl _PX0L
                                     38 	.globl _PT0L
                                     39 	.globl _PX1L
                                     40 	.globl _PT1L
                                     41 	.globl _PSL
                                     42 	.globl _PT2L
                                     43 	.globl _PPCL
                                     44 	.globl _EC
                                     45 	.globl _CCF0
                                     46 	.globl _CCF1
                                     47 	.globl _CCF2
                                     48 	.globl _CCF3
                                     49 	.globl _CCF4
                                     50 	.globl _CR
                                     51 	.globl _CF
                                     52 	.globl _TF2
                                     53 	.globl _EXF2
                                     54 	.globl _RCLK
                                     55 	.globl _TCLK
                                     56 	.globl _EXEN2
                                     57 	.globl _TR2
                                     58 	.globl _C_T2
                                     59 	.globl _CP_RL2
                                     60 	.globl _T2CON_7
                                     61 	.globl _T2CON_6
                                     62 	.globl _T2CON_5
                                     63 	.globl _T2CON_4
                                     64 	.globl _T2CON_3
                                     65 	.globl _T2CON_2
                                     66 	.globl _T2CON_1
                                     67 	.globl _T2CON_0
                                     68 	.globl _PT2
                                     69 	.globl _ET2
                                     70 	.globl _CY
                                     71 	.globl _AC
                                     72 	.globl _F0
                                     73 	.globl _RS1
                                     74 	.globl _RS0
                                     75 	.globl _OV
                                     76 	.globl _F1
                                     77 	.globl _P
                                     78 	.globl _PS
                                     79 	.globl _PT1
                                     80 	.globl _PX1
                                     81 	.globl _PT0
                                     82 	.globl _PX0
                                     83 	.globl _RD
                                     84 	.globl _WR
                                     85 	.globl _T1
                                     86 	.globl _T0
                                     87 	.globl _INT1
                                     88 	.globl _INT0
                                     89 	.globl _TXD
                                     90 	.globl _RXD
                                     91 	.globl _P3_7
                                     92 	.globl _P3_6
                                     93 	.globl _P3_5
                                     94 	.globl _P3_4
                                     95 	.globl _P3_3
                                     96 	.globl _P3_2
                                     97 	.globl _P3_1
                                     98 	.globl _P3_0
                                     99 	.globl _EA
                                    100 	.globl _ES
                                    101 	.globl _ET1
                                    102 	.globl _EX1
                                    103 	.globl _ET0
                                    104 	.globl _EX0
                                    105 	.globl _P2_7
                                    106 	.globl _P2_6
                                    107 	.globl _P2_5
                                    108 	.globl _P2_4
                                    109 	.globl _P2_3
                                    110 	.globl _P2_2
                                    111 	.globl _P2_1
                                    112 	.globl _P2_0
                                    113 	.globl _SM0
                                    114 	.globl _SM1
                                    115 	.globl _SM2
                                    116 	.globl _REN
                                    117 	.globl _TB8
                                    118 	.globl _RB8
                                    119 	.globl _TI
                                    120 	.globl _RI
                                    121 	.globl _P1_7
                                    122 	.globl _P1_6
                                    123 	.globl _P1_5
                                    124 	.globl _P1_4
                                    125 	.globl _P1_3
                                    126 	.globl _P1_2
                                    127 	.globl _P1_1
                                    128 	.globl _P1_0
                                    129 	.globl _TF1
                                    130 	.globl _TR1
                                    131 	.globl _TF0
                                    132 	.globl _TR0
                                    133 	.globl _IE1
                                    134 	.globl _IT1
                                    135 	.globl _IE0
                                    136 	.globl _IT0
                                    137 	.globl _P0_7
                                    138 	.globl _P0_6
                                    139 	.globl _P0_5
                                    140 	.globl _P0_4
                                    141 	.globl _P0_3
                                    142 	.globl _P0_2
                                    143 	.globl _P0_1
                                    144 	.globl _P0_0
                                    145 	.globl _EECON
                                    146 	.globl _KBF
                                    147 	.globl _KBE
                                    148 	.globl _KBLS
                                    149 	.globl _BRL
                                    150 	.globl _BDRCON
                                    151 	.globl _T2MOD
                                    152 	.globl _SPDAT
                                    153 	.globl _SPSTA
                                    154 	.globl _SPCON
                                    155 	.globl _SADEN
                                    156 	.globl _SADDR
                                    157 	.globl _WDTPRG
                                    158 	.globl _WDTRST
                                    159 	.globl _P5
                                    160 	.globl _P4
                                    161 	.globl _IPH1
                                    162 	.globl _IPL1
                                    163 	.globl _IPH0
                                    164 	.globl _IPL0
                                    165 	.globl _IEN1
                                    166 	.globl _IEN0
                                    167 	.globl _CMOD
                                    168 	.globl _CL
                                    169 	.globl _CH
                                    170 	.globl _CCON
                                    171 	.globl _CCAPM4
                                    172 	.globl _CCAPM3
                                    173 	.globl _CCAPM2
                                    174 	.globl _CCAPM1
                                    175 	.globl _CCAPM0
                                    176 	.globl _CCAP4L
                                    177 	.globl _CCAP3L
                                    178 	.globl _CCAP2L
                                    179 	.globl _CCAP1L
                                    180 	.globl _CCAP0L
                                    181 	.globl _CCAP4H
                                    182 	.globl _CCAP3H
                                    183 	.globl _CCAP2H
                                    184 	.globl _CCAP1H
                                    185 	.globl _CCAP0H
                                    186 	.globl _CKCON1
                                    187 	.globl _CKCON0
                                    188 	.globl _CKRL
                                    189 	.globl _AUXR1
                                    190 	.globl _AUXR
                                    191 	.globl _TH2
                                    192 	.globl _TL2
                                    193 	.globl _RCAP2H
                                    194 	.globl _RCAP2L
                                    195 	.globl _T2CON
                                    196 	.globl _B
                                    197 	.globl _ACC
                                    198 	.globl _PSW
                                    199 	.globl _IP
                                    200 	.globl _P3
                                    201 	.globl _IE
                                    202 	.globl _P2
                                    203 	.globl _SBUF
                                    204 	.globl _SCON
                                    205 	.globl _P1
                                    206 	.globl _TH1
                                    207 	.globl _TH0
                                    208 	.globl _TL1
                                    209 	.globl _TL0
                                    210 	.globl _TMOD
                                    211 	.globl _TCON
                                    212 	.globl _PCON
                                    213 	.globl _DPH
                                    214 	.globl _DPL
                                    215 	.globl _SP
                                    216 	.globl _P0
                                    217 	.globl _EEPROM_hexdump_PARM_2
                                    218 	.globl _eeprom_write_PARM_2
                                    219 	.globl _pcf8574_set_pin_PARM_2
                                    220 	.globl _ACK
                                    221 	.globl _pcf8574_init
                                    222 	.globl _pcf8574_read_port
                                    223 	.globl _pcf8574_read_pin
                                    224 	.globl _pcf8574_write_port
                                    225 	.globl _pcf8574_set_pin
                                    226 	.globl _enable_interrupt0
                                    227 	.globl _take_address
                                    228 	.globl _take_data
                                    229 	.globl _eeprom_write
                                    230 	.globl _eeprom_read
                                    231 	.globl _i2c_write
                                    232 	.globl _i2c_read
                                    233 	.globl _i2c_start
                                    234 	.globl _handler_EEPROM_hexdump
                                    235 	.globl _i2c_stop
                                    236 	.globl _eeprom_reset
                                    237 	.globl _i2c_delay
                                    238 ;--------------------------------------------------------
                                    239 ; special function registers
                                    240 ;--------------------------------------------------------
                                    241 	.area RSEG    (ABS,DATA)
      000000                        242 	.org 0x0000
                           000080   243 _P0	=	0x0080
                           000081   244 _SP	=	0x0081
                           000082   245 _DPL	=	0x0082
                           000083   246 _DPH	=	0x0083
                           000087   247 _PCON	=	0x0087
                           000088   248 _TCON	=	0x0088
                           000089   249 _TMOD	=	0x0089
                           00008A   250 _TL0	=	0x008a
                           00008B   251 _TL1	=	0x008b
                           00008C   252 _TH0	=	0x008c
                           00008D   253 _TH1	=	0x008d
                           000090   254 _P1	=	0x0090
                           000098   255 _SCON	=	0x0098
                           000099   256 _SBUF	=	0x0099
                           0000A0   257 _P2	=	0x00a0
                           0000A8   258 _IE	=	0x00a8
                           0000B0   259 _P3	=	0x00b0
                           0000B8   260 _IP	=	0x00b8
                           0000D0   261 _PSW	=	0x00d0
                           0000E0   262 _ACC	=	0x00e0
                           0000F0   263 _B	=	0x00f0
                           0000C8   264 _T2CON	=	0x00c8
                           0000CA   265 _RCAP2L	=	0x00ca
                           0000CB   266 _RCAP2H	=	0x00cb
                           0000CC   267 _TL2	=	0x00cc
                           0000CD   268 _TH2	=	0x00cd
                           00008E   269 _AUXR	=	0x008e
                           0000A2   270 _AUXR1	=	0x00a2
                           000097   271 _CKRL	=	0x0097
                           00008F   272 _CKCON0	=	0x008f
                           0000AF   273 _CKCON1	=	0x00af
                           0000FA   274 _CCAP0H	=	0x00fa
                           0000FB   275 _CCAP1H	=	0x00fb
                           0000FC   276 _CCAP2H	=	0x00fc
                           0000FD   277 _CCAP3H	=	0x00fd
                           0000FE   278 _CCAP4H	=	0x00fe
                           0000EA   279 _CCAP0L	=	0x00ea
                           0000EB   280 _CCAP1L	=	0x00eb
                           0000EC   281 _CCAP2L	=	0x00ec
                           0000ED   282 _CCAP3L	=	0x00ed
                           0000EE   283 _CCAP4L	=	0x00ee
                           0000DA   284 _CCAPM0	=	0x00da
                           0000DB   285 _CCAPM1	=	0x00db
                           0000DC   286 _CCAPM2	=	0x00dc
                           0000DD   287 _CCAPM3	=	0x00dd
                           0000DE   288 _CCAPM4	=	0x00de
                           0000D8   289 _CCON	=	0x00d8
                           0000F9   290 _CH	=	0x00f9
                           0000E9   291 _CL	=	0x00e9
                           0000D9   292 _CMOD	=	0x00d9
                           0000A8   293 _IEN0	=	0x00a8
                           0000B1   294 _IEN1	=	0x00b1
                           0000B8   295 _IPL0	=	0x00b8
                           0000B7   296 _IPH0	=	0x00b7
                           0000B2   297 _IPL1	=	0x00b2
                           0000B3   298 _IPH1	=	0x00b3
                           0000C0   299 _P4	=	0x00c0
                           0000E8   300 _P5	=	0x00e8
                           0000A6   301 _WDTRST	=	0x00a6
                           0000A7   302 _WDTPRG	=	0x00a7
                           0000A9   303 _SADDR	=	0x00a9
                           0000B9   304 _SADEN	=	0x00b9
                           0000C3   305 _SPCON	=	0x00c3
                           0000C4   306 _SPSTA	=	0x00c4
                           0000C5   307 _SPDAT	=	0x00c5
                           0000C9   308 _T2MOD	=	0x00c9
                           00009B   309 _BDRCON	=	0x009b
                           00009A   310 _BRL	=	0x009a
                           00009C   311 _KBLS	=	0x009c
                           00009D   312 _KBE	=	0x009d
                           00009E   313 _KBF	=	0x009e
                           0000D2   314 _EECON	=	0x00d2
                                    315 ;--------------------------------------------------------
                                    316 ; special function bits
                                    317 ;--------------------------------------------------------
                                    318 	.area RSEG    (ABS,DATA)
      000000                        319 	.org 0x0000
                           000080   320 _P0_0	=	0x0080
                           000081   321 _P0_1	=	0x0081
                           000082   322 _P0_2	=	0x0082
                           000083   323 _P0_3	=	0x0083
                           000084   324 _P0_4	=	0x0084
                           000085   325 _P0_5	=	0x0085
                           000086   326 _P0_6	=	0x0086
                           000087   327 _P0_7	=	0x0087
                           000088   328 _IT0	=	0x0088
                           000089   329 _IE0	=	0x0089
                           00008A   330 _IT1	=	0x008a
                           00008B   331 _IE1	=	0x008b
                           00008C   332 _TR0	=	0x008c
                           00008D   333 _TF0	=	0x008d
                           00008E   334 _TR1	=	0x008e
                           00008F   335 _TF1	=	0x008f
                           000090   336 _P1_0	=	0x0090
                           000091   337 _P1_1	=	0x0091
                           000092   338 _P1_2	=	0x0092
                           000093   339 _P1_3	=	0x0093
                           000094   340 _P1_4	=	0x0094
                           000095   341 _P1_5	=	0x0095
                           000096   342 _P1_6	=	0x0096
                           000097   343 _P1_7	=	0x0097
                           000098   344 _RI	=	0x0098
                           000099   345 _TI	=	0x0099
                           00009A   346 _RB8	=	0x009a
                           00009B   347 _TB8	=	0x009b
                           00009C   348 _REN	=	0x009c
                           00009D   349 _SM2	=	0x009d
                           00009E   350 _SM1	=	0x009e
                           00009F   351 _SM0	=	0x009f
                           0000A0   352 _P2_0	=	0x00a0
                           0000A1   353 _P2_1	=	0x00a1
                           0000A2   354 _P2_2	=	0x00a2
                           0000A3   355 _P2_3	=	0x00a3
                           0000A4   356 _P2_4	=	0x00a4
                           0000A5   357 _P2_5	=	0x00a5
                           0000A6   358 _P2_6	=	0x00a6
                           0000A7   359 _P2_7	=	0x00a7
                           0000A8   360 _EX0	=	0x00a8
                           0000A9   361 _ET0	=	0x00a9
                           0000AA   362 _EX1	=	0x00aa
                           0000AB   363 _ET1	=	0x00ab
                           0000AC   364 _ES	=	0x00ac
                           0000AF   365 _EA	=	0x00af
                           0000B0   366 _P3_0	=	0x00b0
                           0000B1   367 _P3_1	=	0x00b1
                           0000B2   368 _P3_2	=	0x00b2
                           0000B3   369 _P3_3	=	0x00b3
                           0000B4   370 _P3_4	=	0x00b4
                           0000B5   371 _P3_5	=	0x00b5
                           0000B6   372 _P3_6	=	0x00b6
                           0000B7   373 _P3_7	=	0x00b7
                           0000B0   374 _RXD	=	0x00b0
                           0000B1   375 _TXD	=	0x00b1
                           0000B2   376 _INT0	=	0x00b2
                           0000B3   377 _INT1	=	0x00b3
                           0000B4   378 _T0	=	0x00b4
                           0000B5   379 _T1	=	0x00b5
                           0000B6   380 _WR	=	0x00b6
                           0000B7   381 _RD	=	0x00b7
                           0000B8   382 _PX0	=	0x00b8
                           0000B9   383 _PT0	=	0x00b9
                           0000BA   384 _PX1	=	0x00ba
                           0000BB   385 _PT1	=	0x00bb
                           0000BC   386 _PS	=	0x00bc
                           0000D0   387 _P	=	0x00d0
                           0000D1   388 _F1	=	0x00d1
                           0000D2   389 _OV	=	0x00d2
                           0000D3   390 _RS0	=	0x00d3
                           0000D4   391 _RS1	=	0x00d4
                           0000D5   392 _F0	=	0x00d5
                           0000D6   393 _AC	=	0x00d6
                           0000D7   394 _CY	=	0x00d7
                           0000AD   395 _ET2	=	0x00ad
                           0000BD   396 _PT2	=	0x00bd
                           0000C8   397 _T2CON_0	=	0x00c8
                           0000C9   398 _T2CON_1	=	0x00c9
                           0000CA   399 _T2CON_2	=	0x00ca
                           0000CB   400 _T2CON_3	=	0x00cb
                           0000CC   401 _T2CON_4	=	0x00cc
                           0000CD   402 _T2CON_5	=	0x00cd
                           0000CE   403 _T2CON_6	=	0x00ce
                           0000CF   404 _T2CON_7	=	0x00cf
                           0000C8   405 _CP_RL2	=	0x00c8
                           0000C9   406 _C_T2	=	0x00c9
                           0000CA   407 _TR2	=	0x00ca
                           0000CB   408 _EXEN2	=	0x00cb
                           0000CC   409 _TCLK	=	0x00cc
                           0000CD   410 _RCLK	=	0x00cd
                           0000CE   411 _EXF2	=	0x00ce
                           0000CF   412 _TF2	=	0x00cf
                           0000DF   413 _CF	=	0x00df
                           0000DE   414 _CR	=	0x00de
                           0000DC   415 _CCF4	=	0x00dc
                           0000DB   416 _CCF3	=	0x00db
                           0000DA   417 _CCF2	=	0x00da
                           0000D9   418 _CCF1	=	0x00d9
                           0000D8   419 _CCF0	=	0x00d8
                           0000AE   420 _EC	=	0x00ae
                           0000BE   421 _PPCL	=	0x00be
                           0000BD   422 _PT2L	=	0x00bd
                           0000BC   423 _PSL	=	0x00bc
                           0000BB   424 _PT1L	=	0x00bb
                           0000BA   425 _PX1L	=	0x00ba
                           0000B9   426 _PT0L	=	0x00b9
                           0000B8   427 _PX0L	=	0x00b8
                           0000C0   428 _P4_0	=	0x00c0
                           0000C1   429 _P4_1	=	0x00c1
                           0000C2   430 _P4_2	=	0x00c2
                           0000C3   431 _P4_3	=	0x00c3
                           0000C4   432 _P4_4	=	0x00c4
                           0000C5   433 _P4_5	=	0x00c5
                           0000C6   434 _P4_6	=	0x00c6
                           0000C7   435 _P4_7	=	0x00c7
                           0000E8   436 _P5_0	=	0x00e8
                           0000E9   437 _P5_1	=	0x00e9
                           0000EA   438 _P5_2	=	0x00ea
                           0000EB   439 _P5_3	=	0x00eb
                           0000EC   440 _P5_4	=	0x00ec
                           0000ED   441 _P5_5	=	0x00ed
                           0000EE   442 _P5_6	=	0x00ee
                           0000EF   443 _P5_7	=	0x00ef
                                    444 ;--------------------------------------------------------
                                    445 ; overlayable register banks
                                    446 ;--------------------------------------------------------
                                    447 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        448 	.ds 8
                                    449 ;--------------------------------------------------------
                                    450 ; overlayable bit register bank
                                    451 ;--------------------------------------------------------
                                    452 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        453 bits:
      000020                        454 	.ds 1
                           008000   455 	b0 = bits[0]
                           008100   456 	b1 = bits[1]
                           008200   457 	b2 = bits[2]
                           008300   458 	b3 = bits[3]
                           008400   459 	b4 = bits[4]
                           008500   460 	b5 = bits[5]
                           008600   461 	b6 = bits[6]
                           008700   462 	b7 = bits[7]
                                    463 ;--------------------------------------------------------
                                    464 ; internal ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area DSEG    (DATA)
                                    467 ;--------------------------------------------------------
                                    468 ; overlayable items in internal ram 
                                    469 ;--------------------------------------------------------
                                    470 ;--------------------------------------------------------
                                    471 ; Stack segment in internal ram 
                                    472 ;--------------------------------------------------------
                                    473 	.area	SSEG
      000021                        474 __start__stack:
      000021                        475 	.ds	1
                                    476 
                                    477 ;--------------------------------------------------------
                                    478 ; indirectly addressable internal ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area ISEG    (DATA)
                                    481 ;--------------------------------------------------------
                                    482 ; absolute internal ram data
                                    483 ;--------------------------------------------------------
                                    484 	.area IABS    (ABS,DATA)
                                    485 	.area IABS    (ABS,DATA)
                                    486 ;--------------------------------------------------------
                                    487 ; bit data
                                    488 ;--------------------------------------------------------
                                    489 	.area BSEG    (BIT)
                                    490 ;--------------------------------------------------------
                                    491 ; paged external ram data
                                    492 ;--------------------------------------------------------
                                    493 	.area PSEG    (PAG,XDATA)
                                    494 ;--------------------------------------------------------
                                    495 ; external ram data
                                    496 ;--------------------------------------------------------
                                    497 	.area XSEG    (XDATA)
      000400                        498 _ACK::
      000400                        499 	.ds 2
      000402                        500 _putchar_charToSend_65536_55:
      000402                        501 	.ds 2
      000404                        502 _pcf8574_read_pin_pin_65536_79:
      000404                        503 	.ds 1
      000405                        504 _pcf8574_write_port_value_65536_81:
      000405                        505 	.ds 1
      000406                        506 _pcf8574_set_pin_PARM_2:
      000406                        507 	.ds 1
      000407                        508 _pcf8574_set_pin_pin_65536_83:
      000407                        509 	.ds 1
      000408                        510 _pcf8574_set_pin_port_state_65536_84:
      000408                        511 	.ds 1
      000409                        512 _take_address_input_65537_90:
      000409                        513 	.ds 4
      00040D                        514 _take_address_address_65538_94:
      00040D                        515 	.ds 2
      00040F                        516 _take_data_input_65537_100:
      00040F                        517 	.ds 4
      000413                        518 _take_data_data_65538_104:
      000413                        519 	.ds 1
      000414                        520 _eeprom_write_PARM_2:
      000414                        521 	.ds 1
      000415                        522 _eeprom_write_address_65536_108:
      000415                        523 	.ds 2
      000417                        524 _eeprom_read_address_65536_115:
      000417                        525 	.ds 2
      000419                        526 _i2c_write_data_65536_120:
      000419                        527 	.ds 1
      00041A                        528 _i2c_read_ACK_65536_125:
      00041A                        529 	.ds 2
      00041C                        530 _i2c_read_buff_65536_126:
      00041C                        531 	.ds 1
      00041D                        532 _EEPROM_hexdump_PARM_2:
      00041D                        533 	.ds 2
      00041F                        534 _EEPROM_hexdump_start_address_65536_131:
      00041F                        535 	.ds 2
      000421                        536 _EEPROM_hexdump_current_address_65537_133:
      000421                        537 	.ds 2
                                    538 ;--------------------------------------------------------
                                    539 ; absolute external ram data
                                    540 ;--------------------------------------------------------
                                    541 	.area XABS    (ABS,XDATA)
                                    542 ;--------------------------------------------------------
                                    543 ; external initialized ram data
                                    544 ;--------------------------------------------------------
                                    545 	.area XISEG   (XDATA)
      00045C                        546 _address_range_flag:
      00045C                        547 	.ds 2
      00045E                        548 _data_range_flag:
      00045E                        549 	.ds 2
      000460                        550 _block:
      000460                        551 	.ds 2
                                    552 	.area HOME    (CODE)
                                    553 	.area GSINIT0 (CODE)
                                    554 	.area GSINIT1 (CODE)
                                    555 	.area GSINIT2 (CODE)
                                    556 	.area GSINIT3 (CODE)
                                    557 	.area GSINIT4 (CODE)
                                    558 	.area GSINIT5 (CODE)
                                    559 	.area GSINIT  (CODE)
                                    560 	.area GSFINAL (CODE)
                                    561 	.area CSEG    (CODE)
                                    562 ;--------------------------------------------------------
                                    563 ; interrupt vector 
                                    564 ;--------------------------------------------------------
                                    565 	.area HOME    (CODE)
      002000                        566 __interrupt_vect:
      002000 02 20 09         [24]  567 	ljmp	__sdcc_gsinit_startup
      002003 02 21 BA         [24]  568 	ljmp	_external_ISR0
                                    569 ;--------------------------------------------------------
                                    570 ; global & static initialisations
                                    571 ;--------------------------------------------------------
                                    572 	.area HOME    (CODE)
                                    573 	.area GSINIT  (CODE)
                                    574 	.area GSFINAL (CODE)
                                    575 	.area GSINIT  (CODE)
                                    576 	.globl __sdcc_gsinit_startup
                                    577 	.globl __sdcc_program_startup
                                    578 	.globl __start__stack
                                    579 	.globl __mcs51_genXINIT
                                    580 	.globl __mcs51_genXRAMCLEAR
                                    581 	.globl __mcs51_genRAMCLEAR
                                    582 	.area GSFINAL (CODE)
      002062 02 20 06         [24]  583 	ljmp	__sdcc_program_startup
                                    584 ;--------------------------------------------------------
                                    585 ; Home
                                    586 ;--------------------------------------------------------
                                    587 	.area HOME    (CODE)
                                    588 	.area HOME    (CODE)
      002006                        589 __sdcc_program_startup:
      002006 02 22 10         [24]  590 	ljmp	_main
                                    591 ;	return from main will return to caller
                                    592 ;--------------------------------------------------------
                                    593 ; code
                                    594 ;--------------------------------------------------------
                                    595 	.area CSEG    (CODE)
                                    596 ;------------------------------------------------------------
                                    597 ;Allocation info for local variables in function 'putchar'
                                    598 ;------------------------------------------------------------
                                    599 ;charToSend                Allocated with name '_putchar_charToSend_65536_55'
                                    600 ;------------------------------------------------------------
                                    601 ;	8051_i2c_eeprom.c:76: int putchar(int charToSend) {
                                    602 ;	-----------------------------------------
                                    603 ;	 function putchar
                                    604 ;	-----------------------------------------
      002065                        605 _putchar:
                           000007   606 	ar7 = 0x07
                           000006   607 	ar6 = 0x06
                           000005   608 	ar5 = 0x05
                           000004   609 	ar4 = 0x04
                           000003   610 	ar3 = 0x03
                           000002   611 	ar2 = 0x02
                           000001   612 	ar1 = 0x01
                           000000   613 	ar0 = 0x00
      002065 AF 83            [24]  614 	mov	r7,dph
      002067 E5 82            [12]  615 	mov	a,dpl
      002069 90 04 02         [24]  616 	mov	dptr,#_putchar_charToSend_65536_55
      00206C F0               [24]  617 	movx	@dptr,a
      00206D EF               [12]  618 	mov	a,r7
      00206E A3               [24]  619 	inc	dptr
      00206F F0               [24]  620 	movx	@dptr,a
                                    621 ;	8051_i2c_eeprom.c:77: SBUF = charToSend;       /* Load character into serial buffer */
      002070 90 04 02         [24]  622 	mov	dptr,#_putchar_charToSend_65536_55
      002073 E0               [24]  623 	movx	a,@dptr
      002074 FE               [12]  624 	mov	r6,a
      002075 A3               [24]  625 	inc	dptr
      002076 E0               [24]  626 	movx	a,@dptr
      002077 FF               [12]  627 	mov	r7,a
      002078 8E 99            [24]  628 	mov	_SBUF,r6
                                    629 ;	8051_i2c_eeprom.c:78: while (!TI);             /* Wait for transmission completion */
      00207A                        630 00101$:
                                    631 ;	8051_i2c_eeprom.c:79: TI = 0;                  /* Clear transmission flag */
                                    632 ;	assignBit
      00207A 10 99 02         [24]  633 	jbc	_TI,00114$
      00207D 80 FB            [24]  634 	sjmp	00101$
      00207F                        635 00114$:
                                    636 ;	8051_i2c_eeprom.c:80: return charToSend;
      00207F 8E 82            [24]  637 	mov	dpl,r6
      002081 8F 83            [24]  638 	mov	dph,r7
                                    639 ;	8051_i2c_eeprom.c:81: }
      002083 22               [24]  640 	ret
                                    641 ;------------------------------------------------------------
                                    642 ;Allocation info for local variables in function 'getchar'
                                    643 ;------------------------------------------------------------
                                    644 ;	8051_i2c_eeprom.c:87: int getchar(void) {
                                    645 ;	-----------------------------------------
                                    646 ;	 function getchar
                                    647 ;	-----------------------------------------
      002084                        648 _getchar:
                                    649 ;	8051_i2c_eeprom.c:88: while (!RI);             /* Wait for reception completion */
      002084                        650 00101$:
                                    651 ;	8051_i2c_eeprom.c:89: RI = 0;                  /* Clear reception flag */
                                    652 ;	assignBit
      002084 10 98 02         [24]  653 	jbc	_RI,00114$
      002087 80 FB            [24]  654 	sjmp	00101$
      002089                        655 00114$:
                                    656 ;	8051_i2c_eeprom.c:90: return SBUF;             /* Return received character */
      002089 AE 99            [24]  657 	mov	r6,_SBUF
      00208B 7F 00            [12]  658 	mov	r7,#0x00
      00208D 8E 82            [24]  659 	mov	dpl,r6
      00208F 8F 83            [24]  660 	mov	dph,r7
                                    661 ;	8051_i2c_eeprom.c:91: }
      002091 22               [24]  662 	ret
                                    663 ;------------------------------------------------------------
                                    664 ;Allocation info for local variables in function 'ui'
                                    665 ;------------------------------------------------------------
                                    666 ;	8051_i2c_eeprom.c:96: void ui()
                                    667 ;	-----------------------------------------
                                    668 ;	 function ui
                                    669 ;	-----------------------------------------
      002092                        670 _ui:
                                    671 ;	8051_i2c_eeprom.c:98: printf("\n╔════════════════════════════════════════════════════════╗\n\r");
      002092 74 2B            [12]  672 	mov	a,#___str_0
      002094 C0 E0            [24]  673 	push	acc
      002096 74 3B            [12]  674 	mov	a,#(___str_0 >> 8)
      002098 C0 E0            [24]  675 	push	acc
      00209A 74 80            [12]  676 	mov	a,#0x80
      00209C C0 E0            [24]  677 	push	acc
      00209E 12 30 C9         [24]  678 	lcall	_printf
      0020A1 15 81            [12]  679 	dec	sp
      0020A3 15 81            [12]  680 	dec	sp
      0020A5 15 81            [12]  681 	dec	sp
                                    682 ;	8051_i2c_eeprom.c:99: printf("║           I2C Memory Management System v1.0            ║\n\r");
      0020A7 74 DD            [12]  683 	mov	a,#___str_1
      0020A9 C0 E0            [24]  684 	push	acc
      0020AB 74 3B            [12]  685 	mov	a,#(___str_1 >> 8)
      0020AD C0 E0            [24]  686 	push	acc
      0020AF 74 80            [12]  687 	mov	a,#0x80
      0020B1 C0 E0            [24]  688 	push	acc
      0020B3 12 30 C9         [24]  689 	lcall	_printf
      0020B6 15 81            [12]  690 	dec	sp
      0020B8 15 81            [12]  691 	dec	sp
      0020BA 15 81            [12]  692 	dec	sp
                                    693 ;	8051_i2c_eeprom.c:100: printf("╚════════════════════════════════════════════════════════╝\n\r");
      0020BC 74 1E            [12]  694 	mov	a,#___str_2
      0020BE C0 E0            [24]  695 	push	acc
      0020C0 74 3C            [12]  696 	mov	a,#(___str_2 >> 8)
      0020C2 C0 E0            [24]  697 	push	acc
      0020C4 74 80            [12]  698 	mov	a,#0x80
      0020C6 C0 E0            [24]  699 	push	acc
      0020C8 12 30 C9         [24]  700 	lcall	_printf
      0020CB 15 81            [12]  701 	dec	sp
      0020CD 15 81            [12]  702 	dec	sp
      0020CF 15 81            [12]  703 	dec	sp
                                    704 ;	8051_i2c_eeprom.c:102: }
      0020D1 22               [24]  705 	ret
                                    706 ;------------------------------------------------------------
                                    707 ;Allocation info for local variables in function 'command_menu'
                                    708 ;------------------------------------------------------------
                                    709 ;	8051_i2c_eeprom.c:107: void command_menu()
                                    710 ;	-----------------------------------------
                                    711 ;	 function command_menu
                                    712 ;	-----------------------------------------
      0020D2                        713 _command_menu:
                                    714 ;	8051_i2c_eeprom.c:109: printf("\n\r┌────────────┬────────────────────────────────────────────┐\n\r");
      0020D2 74 CF            [12]  715 	mov	a,#___str_3
      0020D4 C0 E0            [24]  716 	push	acc
      0020D6 74 3C            [12]  717 	mov	a,#(___str_3 >> 8)
      0020D8 C0 E0            [24]  718 	push	acc
      0020DA 74 80            [12]  719 	mov	a,#0x80
      0020DC C0 E0            [24]  720 	push	acc
      0020DE 12 30 C9         [24]  721 	lcall	_printf
      0020E1 15 81            [12]  722 	dec	sp
      0020E3 15 81            [12]  723 	dec	sp
      0020E5 15 81            [12]  724 	dec	sp
                                    725 ;	8051_i2c_eeprom.c:110: printf("│  Command   │               Description                  │\n\r");
      0020E7 74 85            [12]  726 	mov	a,#___str_4
      0020E9 C0 E0            [24]  727 	push	acc
      0020EB 74 3D            [12]  728 	mov	a,#(___str_4 >> 8)
      0020ED C0 E0            [24]  729 	push	acc
      0020EF 74 80            [12]  730 	mov	a,#0x80
      0020F1 C0 E0            [24]  731 	push	acc
      0020F3 12 30 C9         [24]  732 	lcall	_printf
      0020F6 15 81            [12]  733 	dec	sp
      0020F8 15 81            [12]  734 	dec	sp
      0020FA 15 81            [12]  735 	dec	sp
                                    736 ;	8051_i2c_eeprom.c:111: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      0020FC 74 C9            [12]  737 	mov	a,#___str_5
      0020FE C0 E0            [24]  738 	push	acc
      002100 74 3D            [12]  739 	mov	a,#(___str_5 >> 8)
      002102 C0 E0            [24]  740 	push	acc
      002104 74 80            [12]  741 	mov	a,#0x80
      002106 C0 E0            [24]  742 	push	acc
      002108 12 30 C9         [24]  743 	lcall	_printf
      00210B 15 81            [12]  744 	dec	sp
      00210D 15 81            [12]  745 	dec	sp
      00210F 15 81            [12]  746 	dec	sp
                                    747 ;	8051_i2c_eeprom.c:112: printf("│     R      │ Read from address                          │\n\r");
      002111 74 7D            [12]  748 	mov	a,#___str_6
      002113 C0 E0            [24]  749 	push	acc
      002115 74 3E            [12]  750 	mov	a,#(___str_6 >> 8)
      002117 C0 E0            [24]  751 	push	acc
      002119 74 80            [12]  752 	mov	a,#0x80
      00211B C0 E0            [24]  753 	push	acc
      00211D 12 30 C9         [24]  754 	lcall	_printf
      002120 15 81            [12]  755 	dec	sp
      002122 15 81            [12]  756 	dec	sp
      002124 15 81            [12]  757 	dec	sp
                                    758 ;	8051_i2c_eeprom.c:113: printf("│     W      │ Write data to address                      │\n\r");
      002126 74 C1            [12]  759 	mov	a,#___str_7
      002128 C0 E0            [24]  760 	push	acc
      00212A 74 3E            [12]  761 	mov	a,#(___str_7 >> 8)
      00212C C0 E0            [24]  762 	push	acc
      00212E 74 80            [12]  763 	mov	a,#0x80
      002130 C0 E0            [24]  764 	push	acc
      002132 12 30 C9         [24]  765 	lcall	_printf
      002135 15 81            [12]  766 	dec	sp
      002137 15 81            [12]  767 	dec	sp
      002139 15 81            [12]  768 	dec	sp
                                    769 ;	8051_i2c_eeprom.c:114: printf("│     H      │ Display hex dump                           │\n\r");
      00213B 74 05            [12]  770 	mov	a,#___str_8
      00213D C0 E0            [24]  771 	push	acc
      00213F 74 3F            [12]  772 	mov	a,#(___str_8 >> 8)
      002141 C0 E0            [24]  773 	push	acc
      002143 74 80            [12]  774 	mov	a,#0x80
      002145 C0 E0            [24]  775 	push	acc
      002147 12 30 C9         [24]  776 	lcall	_printf
      00214A 15 81            [12]  777 	dec	sp
      00214C 15 81            [12]  778 	dec	sp
      00214E 15 81            [12]  779 	dec	sp
                                    780 ;	8051_i2c_eeprom.c:115: printf("│     X      │ Reset memory system                        │\n\r");
      002150 74 49            [12]  781 	mov	a,#___str_9
      002152 C0 E0            [24]  782 	push	acc
      002154 74 3F            [12]  783 	mov	a,#(___str_9 >> 8)
      002156 C0 E0            [24]  784 	push	acc
      002158 74 80            [12]  785 	mov	a,#0x80
      00215A C0 E0            [24]  786 	push	acc
      00215C 12 30 C9         [24]  787 	lcall	_printf
      00215F 15 81            [12]  788 	dec	sp
      002161 15 81            [12]  789 	dec	sp
      002163 15 81            [12]  790 	dec	sp
                                    791 ;	8051_i2c_eeprom.c:116: printf("│     ?      │ Display this help menu                     │\n\r");
      002165 74 8D            [12]  792 	mov	a,#___str_10
      002167 C0 E0            [24]  793 	push	acc
      002169 74 3F            [12]  794 	mov	a,#(___str_10 >> 8)
      00216B C0 E0            [24]  795 	push	acc
      00216D 74 80            [12]  796 	mov	a,#0x80
      00216F C0 E0            [24]  797 	push	acc
      002171 12 30 C9         [24]  798 	lcall	_printf
      002174 15 81            [12]  799 	dec	sp
      002176 15 81            [12]  800 	dec	sp
      002178 15 81            [12]  801 	dec	sp
                                    802 ;	8051_i2c_eeprom.c:117: printf("│     I      │ IO Expander Mode                           │\n\r");
      00217A 74 D1            [12]  803 	mov	a,#___str_11
      00217C C0 E0            [24]  804 	push	acc
      00217E 74 3F            [12]  805 	mov	a,#(___str_11 >> 8)
      002180 C0 E0            [24]  806 	push	acc
      002182 74 80            [12]  807 	mov	a,#0x80
      002184 C0 E0            [24]  808 	push	acc
      002186 12 30 C9         [24]  809 	lcall	_printf
      002189 15 81            [12]  810 	dec	sp
      00218B 15 81            [12]  811 	dec	sp
      00218D 15 81            [12]  812 	dec	sp
                                    813 ;	8051_i2c_eeprom.c:118: printf("│     L      │ Exit IO Expander Mode                      │\n\r");
      00218F 74 15            [12]  814 	mov	a,#___str_12
      002191 C0 E0            [24]  815 	push	acc
      002193 74 40            [12]  816 	mov	a,#(___str_12 >> 8)
      002195 C0 E0            [24]  817 	push	acc
      002197 74 80            [12]  818 	mov	a,#0x80
      002199 C0 E0            [24]  819 	push	acc
      00219B 12 30 C9         [24]  820 	lcall	_printf
      00219E 15 81            [12]  821 	dec	sp
      0021A0 15 81            [12]  822 	dec	sp
      0021A2 15 81            [12]  823 	dec	sp
                                    824 ;	8051_i2c_eeprom.c:119: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      0021A4 74 59            [12]  825 	mov	a,#___str_13
      0021A6 C0 E0            [24]  826 	push	acc
      0021A8 74 40            [12]  827 	mov	a,#(___str_13 >> 8)
      0021AA C0 E0            [24]  828 	push	acc
      0021AC 74 80            [12]  829 	mov	a,#0x80
      0021AE C0 E0            [24]  830 	push	acc
      0021B0 12 30 C9         [24]  831 	lcall	_printf
      0021B3 15 81            [12]  832 	dec	sp
      0021B5 15 81            [12]  833 	dec	sp
      0021B7 15 81            [12]  834 	dec	sp
                                    835 ;	8051_i2c_eeprom.c:122: }
      0021B9 22               [24]  836 	ret
                                    837 ;------------------------------------------------------------
                                    838 ;Allocation info for local variables in function 'external_ISR0'
                                    839 ;------------------------------------------------------------
                                    840 ;data                      Allocated with name '_external_ISR0_data_65536_62'
                                    841 ;------------------------------------------------------------
                                    842 ;	8051_i2c_eeprom.c:124: void external_ISR0(void) __interrupt (0)
                                    843 ;	-----------------------------------------
                                    844 ;	 function external_ISR0
                                    845 ;	-----------------------------------------
      0021BA                        846 _external_ISR0:
      0021BA C0 20            [24]  847 	push	bits
      0021BC C0 E0            [24]  848 	push	acc
      0021BE C0 F0            [24]  849 	push	b
      0021C0 C0 82            [24]  850 	push	dpl
      0021C2 C0 83            [24]  851 	push	dph
      0021C4 C0 07            [24]  852 	push	(0+7)
      0021C6 C0 06            [24]  853 	push	(0+6)
      0021C8 C0 05            [24]  854 	push	(0+5)
      0021CA C0 04            [24]  855 	push	(0+4)
      0021CC C0 03            [24]  856 	push	(0+3)
      0021CE C0 02            [24]  857 	push	(0+2)
      0021D0 C0 01            [24]  858 	push	(0+1)
      0021D2 C0 00            [24]  859 	push	(0+0)
      0021D4 C0 D0            [24]  860 	push	psw
      0021D6 75 D0 00         [24]  861 	mov	psw,#0x00
                                    862 ;	8051_i2c_eeprom.c:129: data=pcf8574_read_pin(0);
      0021D9 75 82 00         [24]  863 	mov	dpl,#0x00
      0021DC 12 24 03         [24]  864 	lcall	_pcf8574_read_pin
      0021DF AF 82            [24]  865 	mov	r7,dpl
                                    866 ;	8051_i2c_eeprom.c:131: pcf8574_set_pin(7,data);
      0021E1 90 04 06         [24]  867 	mov	dptr,#_pcf8574_set_pin_PARM_2
      0021E4 EF               [12]  868 	mov	a,r7
      0021E5 F0               [24]  869 	movx	@dptr,a
      0021E6 75 82 07         [24]  870 	mov	dpl,#0x07
      0021E9 12 24 3F         [24]  871 	lcall	_pcf8574_set_pin
                                    872 ;	8051_i2c_eeprom.c:133: }
      0021EC D0 D0            [24]  873 	pop	psw
      0021EE D0 00            [24]  874 	pop	(0+0)
      0021F0 D0 01            [24]  875 	pop	(0+1)
      0021F2 D0 02            [24]  876 	pop	(0+2)
      0021F4 D0 03            [24]  877 	pop	(0+3)
      0021F6 D0 04            [24]  878 	pop	(0+4)
      0021F8 D0 05            [24]  879 	pop	(0+5)
      0021FA D0 06            [24]  880 	pop	(0+6)
      0021FC D0 07            [24]  881 	pop	(0+7)
      0021FE D0 83            [24]  882 	pop	dph
      002200 D0 82            [24]  883 	pop	dpl
      002202 D0 F0            [24]  884 	pop	b
      002204 D0 E0            [24]  885 	pop	acc
      002206 D0 20            [24]  886 	pop	bits
      002208 32               [24]  887 	reti
                                    888 ;------------------------------------------------------------
                                    889 ;Allocation info for local variables in function 'disable_interrupt0'
                                    890 ;------------------------------------------------------------
                                    891 ;	8051_i2c_eeprom.c:135: void disable_interrupt0(void)
                                    892 ;	-----------------------------------------
                                    893 ;	 function disable_interrupt0
                                    894 ;	-----------------------------------------
      002209                        895 _disable_interrupt0:
                                    896 ;	8051_i2c_eeprom.c:138: IT0 = 0;           // Set INT0 to be edge-triggered
                                    897 ;	assignBit
      002209 C2 88            [12]  898 	clr	_IT0
                                    899 ;	8051_i2c_eeprom.c:139: EX0 = 0;          // Enable INT0 interrupt
                                    900 ;	assignBit
      00220B C2 A8            [12]  901 	clr	_EX0
                                    902 ;	8051_i2c_eeprom.c:140: EA = 0;           // Enable global interrupts
                                    903 ;	assignBit
      00220D C2 AF            [12]  904 	clr	_EA
                                    905 ;	8051_i2c_eeprom.c:141: }
      00220F 22               [24]  906 	ret
                                    907 ;------------------------------------------------------------
                                    908 ;Allocation info for local variables in function 'main'
                                    909 ;------------------------------------------------------------
                                    910 ;user_input                Allocated with name '_main_user_input_131072_66'
                                    911 ;addr                      Allocated with name '_main_addr_262145_69'
                                    912 ;data                      Allocated with name '_main_data_262146_71'
                                    913 ;addr                      Allocated with name '_main_addr_262145_74'
                                    914 ;------------------------------------------------------------
                                    915 ;	8051_i2c_eeprom.c:146: int main()
                                    916 ;	-----------------------------------------
                                    917 ;	 function main
                                    918 ;	-----------------------------------------
      002210                        919 _main:
                                    920 ;	8051_i2c_eeprom.c:149: P1 &= ~(1<<3);  // Set P1.3 as output
      002210 53 90 F7         [24]  921 	anl	_P1,#0xf7
                                    922 ;	8051_i2c_eeprom.c:150: P1 &= ~(1<<4);  // Set P1.4 as output
      002213 53 90 EF         [24]  923 	anl	_P1,#0xef
                                    924 ;	8051_i2c_eeprom.c:151: ui();
      002216 12 20 92         [24]  925 	lcall	_ui
                                    926 ;	8051_i2c_eeprom.c:152: command_menu();
      002219 12 20 D2         [24]  927 	lcall	_command_menu
                                    928 ;	8051_i2c_eeprom.c:153: i2c_start();
      00221C 12 2B 90         [24]  929 	lcall	_i2c_start
                                    930 ;	8051_i2c_eeprom.c:154: while(1)
      00221F                        931 00117$:
                                    932 ;	8051_i2c_eeprom.c:156: char user_input = getchar();
      00221F 12 20 84         [24]  933 	lcall	_getchar
      002222 AE 82            [24]  934 	mov	r6,dpl
                                    935 ;	8051_i2c_eeprom.c:157: printf("| $ %c\n\r", user_input);
      002224 8E 05            [24]  936 	mov	ar5,r6
      002226 7F 00            [12]  937 	mov	r7,#0x00
      002228 C0 06            [24]  938 	push	ar6
      00222A C0 05            [24]  939 	push	ar5
      00222C C0 07            [24]  940 	push	ar7
      00222E 74 0D            [12]  941 	mov	a,#___str_14
      002230 C0 E0            [24]  942 	push	acc
      002232 74 41            [12]  943 	mov	a,#(___str_14 >> 8)
      002234 C0 E0            [24]  944 	push	acc
      002236 74 80            [12]  945 	mov	a,#0x80
      002238 C0 E0            [24]  946 	push	acc
      00223A 12 30 C9         [24]  947 	lcall	_printf
      00223D E5 81            [12]  948 	mov	a,sp
      00223F 24 FB            [12]  949 	add	a,#0xfb
      002241 F5 81            [12]  950 	mov	sp,a
                                    951 ;	8051_i2c_eeprom.c:158: printf("\n\r");
      002243 74 16            [12]  952 	mov	a,#___str_15
      002245 C0 E0            [24]  953 	push	acc
      002247 74 41            [12]  954 	mov	a,#(___str_15 >> 8)
      002249 C0 E0            [24]  955 	push	acc
      00224B 74 80            [12]  956 	mov	a,#0x80
      00224D C0 E0            [24]  957 	push	acc
      00224F 12 30 C9         [24]  958 	lcall	_printf
      002252 15 81            [12]  959 	dec	sp
      002254 15 81            [12]  960 	dec	sp
      002256 15 81            [12]  961 	dec	sp
      002258 D0 06            [24]  962 	pop	ar6
                                    963 ;	8051_i2c_eeprom.c:159: switch(user_input)
      00225A BE 3F 03         [24]  964 	cjne	r6,#0x3f,00165$
      00225D 02 23 4C         [24]  965 	ljmp	00109$
      002260                        966 00165$:
      002260 BE 48 03         [24]  967 	cjne	r6,#0x48,00166$
      002263 02 23 6D         [24]  968 	ljmp	00111$
      002266                        969 00166$:
      002266 BE 49 03         [24]  970 	cjne	r6,#0x49,00167$
      002269 02 23 85         [24]  971 	ljmp	00112$
      00226C                        972 00167$:
      00226C BE 4C 03         [24]  973 	cjne	r6,#0x4c,00168$
      00226F 02 23 A3         [24]  974 	ljmp	00113$
      002272                        975 00168$:
      002272 BE 52 02         [24]  976 	cjne	r6,#0x52,00169$
      002275 80 76            [24]  977 	sjmp	00106$
      002277                        978 00169$:
      002277 BE 57 02         [24]  979 	cjne	r6,#0x57,00170$
      00227A 80 09            [24]  980 	sjmp	00101$
      00227C                        981 00170$:
      00227C BE 58 03         [24]  982 	cjne	r6,#0x58,00171$
      00227F 02 23 52         [24]  983 	ljmp	00110$
      002282                        984 00171$:
      002282 02 23 BE         [24]  985 	ljmp	00114$
                                    986 ;	8051_i2c_eeprom.c:161: case 'W':
      002285                        987 00101$:
                                    988 ;	8051_i2c_eeprom.c:163: printf("\n┌─────────────── WRITE OPERATION ──────────────┐\n\r");
      002285 74 19            [12]  989 	mov	a,#___str_16
      002287 C0 E0            [24]  990 	push	acc
      002289 74 41            [12]  991 	mov	a,#(___str_16 >> 8)
      00228B C0 E0            [24]  992 	push	acc
      00228D 74 80            [12]  993 	mov	a,#0x80
      00228F C0 E0            [24]  994 	push	acc
      002291 12 30 C9         [24]  995 	lcall	_printf
      002294 15 81            [12]  996 	dec	sp
      002296 15 81            [12]  997 	dec	sp
      002298 15 81            [12]  998 	dec	sp
                                    999 ;	8051_i2c_eeprom.c:165: addr = take_address();
      00229A 12 24 96         [24] 1000 	lcall	_take_address
      00229D AE 82            [24] 1001 	mov	r6,dpl
      00229F AF 83            [24] 1002 	mov	r7,dph
                                   1003 ;	8051_i2c_eeprom.c:166: if(!address_range_flag) 
      0022A1 90 04 5C         [24] 1004 	mov	dptr,#_address_range_flag
      0022A4 E0               [24] 1005 	movx	a,@dptr
      0022A5 F5 F0            [12] 1006 	mov	b,a
      0022A7 A3               [24] 1007 	inc	dptr
      0022A8 E0               [24] 1008 	movx	a,@dptr
      0022A9 45 F0            [12] 1009 	orl	a,b
      0022AB 70 0C            [24] 1010 	jnz	00103$
                                   1011 ;	8051_i2c_eeprom.c:168: address_range_flag = 1;
      0022AD 90 04 5C         [24] 1012 	mov	dptr,#_address_range_flag
      0022B0 74 01            [12] 1013 	mov	a,#0x01
      0022B2 F0               [24] 1014 	movx	@dptr,a
      0022B3 E4               [12] 1015 	clr	a
      0022B4 A3               [24] 1016 	inc	dptr
      0022B5 F0               [24] 1017 	movx	@dptr,a
                                   1018 ;	8051_i2c_eeprom.c:169: break;
      0022B6 02 22 1F         [24] 1019 	ljmp	00117$
      0022B9                       1020 00103$:
                                   1021 ;	8051_i2c_eeprom.c:172: data = take_data();
      0022B9 C0 07            [24] 1022 	push	ar7
      0022BB C0 06            [24] 1023 	push	ar6
      0022BD 12 26 D4         [24] 1024 	lcall	_take_data
      0022C0 AD 82            [24] 1025 	mov	r5,dpl
      0022C2 D0 06            [24] 1026 	pop	ar6
      0022C4 D0 07            [24] 1027 	pop	ar7
                                   1028 ;	8051_i2c_eeprom.c:173: if(!data_range_flag) 
      0022C6 90 04 5E         [24] 1029 	mov	dptr,#_data_range_flag
      0022C9 E0               [24] 1030 	movx	a,@dptr
      0022CA F5 F0            [12] 1031 	mov	b,a
      0022CC A3               [24] 1032 	inc	dptr
      0022CD E0               [24] 1033 	movx	a,@dptr
      0022CE 45 F0            [12] 1034 	orl	a,b
      0022D0 70 0C            [24] 1035 	jnz	00105$
                                   1036 ;	8051_i2c_eeprom.c:175: data_range_flag = 1;
      0022D2 90 04 5E         [24] 1037 	mov	dptr,#_data_range_flag
      0022D5 74 01            [12] 1038 	mov	a,#0x01
      0022D7 F0               [24] 1039 	movx	@dptr,a
      0022D8 E4               [12] 1040 	clr	a
      0022D9 A3               [24] 1041 	inc	dptr
      0022DA F0               [24] 1042 	movx	@dptr,a
                                   1043 ;	8051_i2c_eeprom.c:176: break;
      0022DB 02 22 1F         [24] 1044 	ljmp	00117$
      0022DE                       1045 00105$:
                                   1046 ;	8051_i2c_eeprom.c:179: eeprom_write(addr, data);
      0022DE 90 04 14         [24] 1047 	mov	dptr,#_eeprom_write_PARM_2
      0022E1 ED               [12] 1048 	mov	a,r5
      0022E2 F0               [24] 1049 	movx	@dptr,a
      0022E3 8E 82            [24] 1050 	mov	dpl,r6
      0022E5 8F 83            [24] 1051 	mov	dph,r7
      0022E7 12 28 4D         [24] 1052 	lcall	_eeprom_write
                                   1053 ;	8051_i2c_eeprom.c:180: break;
      0022EA 02 22 1F         [24] 1054 	ljmp	00117$
                                   1055 ;	8051_i2c_eeprom.c:182: case 'R':
      0022ED                       1056 00106$:
                                   1057 ;	8051_i2c_eeprom.c:184: printf("\n┌─────────────── READ OPERATION ───────────────┐\n\r");
      0022ED 74 8B            [12] 1058 	mov	a,#___str_17
      0022EF C0 E0            [24] 1059 	push	acc
      0022F1 74 41            [12] 1060 	mov	a,#(___str_17 >> 8)
      0022F3 C0 E0            [24] 1061 	push	acc
      0022F5 74 80            [12] 1062 	mov	a,#0x80
      0022F7 C0 E0            [24] 1063 	push	acc
      0022F9 12 30 C9         [24] 1064 	lcall	_printf
      0022FC 15 81            [12] 1065 	dec	sp
      0022FE 15 81            [12] 1066 	dec	sp
      002300 15 81            [12] 1067 	dec	sp
                                   1068 ;	8051_i2c_eeprom.c:186: addr = take_address(); 
      002302 12 24 96         [24] 1069 	lcall	_take_address
      002305 AE 82            [24] 1070 	mov	r6,dpl
      002307 AF 83            [24] 1071 	mov	r7,dph
                                   1072 ;	8051_i2c_eeprom.c:187: if(!address_range_flag) 
      002309 90 04 5C         [24] 1073 	mov	dptr,#_address_range_flag
      00230C E0               [24] 1074 	movx	a,@dptr
      00230D F5 F0            [12] 1075 	mov	b,a
      00230F A3               [24] 1076 	inc	dptr
      002310 E0               [24] 1077 	movx	a,@dptr
      002311 45 F0            [12] 1078 	orl	a,b
      002313 70 0C            [24] 1079 	jnz	00108$
                                   1080 ;	8051_i2c_eeprom.c:189: address_range_flag = 1;
      002315 90 04 5C         [24] 1081 	mov	dptr,#_address_range_flag
      002318 74 01            [12] 1082 	mov	a,#0x01
      00231A F0               [24] 1083 	movx	@dptr,a
      00231B E4               [12] 1084 	clr	a
      00231C A3               [24] 1085 	inc	dptr
      00231D F0               [24] 1086 	movx	@dptr,a
                                   1087 ;	8051_i2c_eeprom.c:190: break;
      00231E 02 22 1F         [24] 1088 	ljmp	00117$
      002321                       1089 00108$:
                                   1090 ;	8051_i2c_eeprom.c:192: printf("| Reading from Address 0x%03X           |\n\r", addr);
      002321 C0 07            [24] 1091 	push	ar7
      002323 C0 06            [24] 1092 	push	ar6
      002325 C0 06            [24] 1093 	push	ar6
      002327 C0 07            [24] 1094 	push	ar7
      002329 74 FF            [12] 1095 	mov	a,#___str_18
      00232B C0 E0            [24] 1096 	push	acc
      00232D 74 41            [12] 1097 	mov	a,#(___str_18 >> 8)
      00232F C0 E0            [24] 1098 	push	acc
      002331 74 80            [12] 1099 	mov	a,#0x80
      002333 C0 E0            [24] 1100 	push	acc
      002335 12 30 C9         [24] 1101 	lcall	_printf
      002338 E5 81            [12] 1102 	mov	a,sp
      00233A 24 FB            [12] 1103 	add	a,#0xfb
      00233C F5 81            [12] 1104 	mov	sp,a
      00233E D0 06            [24] 1105 	pop	ar6
      002340 D0 07            [24] 1106 	pop	ar7
                                   1107 ;	8051_i2c_eeprom.c:193: eeprom_read(addr);
      002342 8E 82            [24] 1108 	mov	dpl,r6
      002344 8F 83            [24] 1109 	mov	dph,r7
      002346 12 29 8F         [24] 1110 	lcall	_eeprom_read
                                   1111 ;	8051_i2c_eeprom.c:194: break;
      002349 02 22 1F         [24] 1112 	ljmp	00117$
                                   1113 ;	8051_i2c_eeprom.c:197: case '?':
      00234C                       1114 00109$:
                                   1115 ;	8051_i2c_eeprom.c:198: command_menu();
      00234C 12 20 D2         [24] 1116 	lcall	_command_menu
                                   1117 ;	8051_i2c_eeprom.c:199: break;
      00234F 02 22 1F         [24] 1118 	ljmp	00117$
                                   1119 ;	8051_i2c_eeprom.c:201: case 'X':
      002352                       1120 00110$:
                                   1121 ;	8051_i2c_eeprom.c:202: printf("\n┌─────────────── RESET OPERATION ───────────┐\n\r");
      002352 74 2B            [12] 1122 	mov	a,#___str_19
      002354 C0 E0            [24] 1123 	push	acc
      002356 74 42            [12] 1124 	mov	a,#(___str_19 >> 8)
      002358 C0 E0            [24] 1125 	push	acc
      00235A 74 80            [12] 1126 	mov	a,#0x80
      00235C C0 E0            [24] 1127 	push	acc
      00235E 12 30 C9         [24] 1128 	lcall	_printf
      002361 15 81            [12] 1129 	dec	sp
      002363 15 81            [12] 1130 	dec	sp
      002365 15 81            [12] 1131 	dec	sp
                                   1132 ;	8051_i2c_eeprom.c:203: eeprom_reset();
      002367 12 2F 80         [24] 1133 	lcall	_eeprom_reset
                                   1134 ;	8051_i2c_eeprom.c:204: break;
      00236A 02 22 1F         [24] 1135 	ljmp	00117$
                                   1136 ;	8051_i2c_eeprom.c:206: case 'H':
      00236D                       1137 00111$:
                                   1138 ;	8051_i2c_eeprom.c:207: printf("\n┌───────────── HEX DUMP OPERATION ───────────────┐\n\r");
      00236D 74 94            [12] 1139 	mov	a,#___str_20
      00236F C0 E0            [24] 1140 	push	acc
      002371 74 42            [12] 1141 	mov	a,#(___str_20 >> 8)
      002373 C0 E0            [24] 1142 	push	acc
      002375 74 80            [12] 1143 	mov	a,#0x80
      002377 C0 E0            [24] 1144 	push	acc
      002379 12 30 C9         [24] 1145 	lcall	_printf
      00237C 15 81            [12] 1146 	dec	sp
      00237E 15 81            [12] 1147 	dec	sp
      002380 15 81            [12] 1148 	dec	sp
                                   1149 ;	8051_i2c_eeprom.c:209: handler_EEPROM_hexdump();
      002382 12 2E D4         [24] 1150 	lcall	_handler_EEPROM_hexdump
                                   1151 ;	8051_i2c_eeprom.c:211: case 'I':
      002385                       1152 00112$:
                                   1153 ;	8051_i2c_eeprom.c:212: printf("\n┌───────────── IO EXPANDER OPERATION ───────────────┐\n\r");
      002385 74 06            [12] 1154 	mov	a,#___str_21
      002387 C0 E0            [24] 1155 	push	acc
      002389 74 43            [12] 1156 	mov	a,#(___str_21 >> 8)
      00238B C0 E0            [24] 1157 	push	acc
      00238D 74 80            [12] 1158 	mov	a,#0x80
      00238F C0 E0            [24] 1159 	push	acc
      002391 12 30 C9         [24] 1160 	lcall	_printf
      002394 15 81            [12] 1161 	dec	sp
      002396 15 81            [12] 1162 	dec	sp
      002398 15 81            [12] 1163 	dec	sp
                                   1164 ;	8051_i2c_eeprom.c:213: enable_interrupt0();
      00239A 12 24 8F         [24] 1165 	lcall	_enable_interrupt0
                                   1166 ;	8051_i2c_eeprom.c:214: pcf8574_init();
      00239D 12 23 D6         [24] 1167 	lcall	_pcf8574_init
                                   1168 ;	8051_i2c_eeprom.c:215: break;
      0023A0 02 22 1F         [24] 1169 	ljmp	00117$
                                   1170 ;	8051_i2c_eeprom.c:217: case 'L':
      0023A3                       1171 00113$:
                                   1172 ;	8051_i2c_eeprom.c:218: printf("\n┌─────────────  EXIT IO EXPANDER   ───────────────┐\n\r");
      0023A3 74 7B            [12] 1173 	mov	a,#___str_22
      0023A5 C0 E0            [24] 1174 	push	acc
      0023A7 74 43            [12] 1175 	mov	a,#(___str_22 >> 8)
      0023A9 C0 E0            [24] 1176 	push	acc
      0023AB 74 80            [12] 1177 	mov	a,#0x80
      0023AD C0 E0            [24] 1178 	push	acc
      0023AF 12 30 C9         [24] 1179 	lcall	_printf
      0023B2 15 81            [12] 1180 	dec	sp
      0023B4 15 81            [12] 1181 	dec	sp
      0023B6 15 81            [12] 1182 	dec	sp
                                   1183 ;	8051_i2c_eeprom.c:219: disable_interrupt0();
      0023B8 12 22 09         [24] 1184 	lcall	_disable_interrupt0
                                   1185 ;	8051_i2c_eeprom.c:220: break;
      0023BB 02 22 1F         [24] 1186 	ljmp	00117$
                                   1187 ;	8051_i2c_eeprom.c:223: default:
      0023BE                       1188 00114$:
                                   1189 ;	8051_i2c_eeprom.c:224: printf("INVALID INPUT\n\r");
      0023BE 74 EE            [12] 1190 	mov	a,#___str_23
      0023C0 C0 E0            [24] 1191 	push	acc
      0023C2 74 43            [12] 1192 	mov	a,#(___str_23 >> 8)
      0023C4 C0 E0            [24] 1193 	push	acc
      0023C6 74 80            [12] 1194 	mov	a,#0x80
      0023C8 C0 E0            [24] 1195 	push	acc
      0023CA 12 30 C9         [24] 1196 	lcall	_printf
      0023CD 15 81            [12] 1197 	dec	sp
      0023CF 15 81            [12] 1198 	dec	sp
      0023D1 15 81            [12] 1199 	dec	sp
                                   1200 ;	8051_i2c_eeprom.c:226: }
                                   1201 ;	8051_i2c_eeprom.c:229: }
      0023D3 02 22 1F         [24] 1202 	ljmp	00117$
                                   1203 ;------------------------------------------------------------
                                   1204 ;Allocation info for local variables in function 'pcf8574_init'
                                   1205 ;------------------------------------------------------------
                                   1206 ;	8051_i2c_eeprom.c:231: void pcf8574_init()
                                   1207 ;	-----------------------------------------
                                   1208 ;	 function pcf8574_init
                                   1209 ;	-----------------------------------------
      0023D6                       1210 _pcf8574_init:
                                   1211 ;	8051_i2c_eeprom.c:233: i2c_start();
      0023D6 12 2B 90         [24] 1212 	lcall	_i2c_start
                                   1213 ;	8051_i2c_eeprom.c:234: i2c_write(PCF8574_I2C_WRITE_ADDRESS);
      0023D9 75 82 70         [24] 1214 	mov	dpl,#0x70
      0023DC 12 2A A3         [24] 1215 	lcall	_i2c_write
                                   1216 ;	8051_i2c_eeprom.c:235: i2c_write(0xFF);
      0023DF 75 82 FF         [24] 1217 	mov	dpl,#0xff
      0023E2 12 2A A3         [24] 1218 	lcall	_i2c_write
                                   1219 ;	8051_i2c_eeprom.c:236: i2c_stop();
                                   1220 ;	8051_i2c_eeprom.c:237: }
      0023E5 02 2F 73         [24] 1221 	ljmp	_i2c_stop
                                   1222 ;------------------------------------------------------------
                                   1223 ;Allocation info for local variables in function 'pcf8574_read_port'
                                   1224 ;------------------------------------------------------------
                                   1225 ;data                      Allocated with name '_pcf8574_read_port_data_65536_78'
                                   1226 ;------------------------------------------------------------
                                   1227 ;	8051_i2c_eeprom.c:238: uint8_t pcf8574_read_port(void) {
                                   1228 ;	-----------------------------------------
                                   1229 ;	 function pcf8574_read_port
                                   1230 ;	-----------------------------------------
      0023E8                       1231 _pcf8574_read_port:
                                   1232 ;	8051_i2c_eeprom.c:240: i2c_start();
      0023E8 12 2B 90         [24] 1233 	lcall	_i2c_start
                                   1234 ;	8051_i2c_eeprom.c:241: i2c_write(PCF8574_I2C_READ_ADDRESS);
      0023EB 75 82 71         [24] 1235 	mov	dpl,#0x71
      0023EE 12 2A A3         [24] 1236 	lcall	_i2c_write
                                   1237 ;	8051_i2c_eeprom.c:242: data = i2c_read(0);
      0023F1 90 00 00         [24] 1238 	mov	dptr,#0x0000
      0023F4 12 2B 0B         [24] 1239 	lcall	_i2c_read
      0023F7 AE 82            [24] 1240 	mov	r6,dpl
                                   1241 ;	8051_i2c_eeprom.c:243: i2c_stop();
      0023F9 C0 06            [24] 1242 	push	ar6
      0023FB 12 2F 73         [24] 1243 	lcall	_i2c_stop
      0023FE D0 06            [24] 1244 	pop	ar6
                                   1245 ;	8051_i2c_eeprom.c:244: return data;
      002400 8E 82            [24] 1246 	mov	dpl,r6
                                   1247 ;	8051_i2c_eeprom.c:245: }
      002402 22               [24] 1248 	ret
                                   1249 ;------------------------------------------------------------
                                   1250 ;Allocation info for local variables in function 'pcf8574_read_pin'
                                   1251 ;------------------------------------------------------------
                                   1252 ;pin                       Allocated with name '_pcf8574_read_pin_pin_65536_79'
                                   1253 ;port_state                Allocated with name '_pcf8574_read_pin_port_state_65536_80'
                                   1254 ;------------------------------------------------------------
                                   1255 ;	8051_i2c_eeprom.c:247: uint8_t pcf8574_read_pin(uint8_t pin) {
                                   1256 ;	-----------------------------------------
                                   1257 ;	 function pcf8574_read_pin
                                   1258 ;	-----------------------------------------
      002403                       1259 _pcf8574_read_pin:
      002403 E5 82            [12] 1260 	mov	a,dpl
      002405 90 04 04         [24] 1261 	mov	dptr,#_pcf8574_read_pin_pin_65536_79
      002408 F0               [24] 1262 	movx	@dptr,a
                                   1263 ;	8051_i2c_eeprom.c:248: uint8_t port_state = pcf8574_read_port();
      002409 12 23 E8         [24] 1264 	lcall	_pcf8574_read_port
      00240C AF 82            [24] 1265 	mov	r7,dpl
                                   1266 ;	8051_i2c_eeprom.c:249: return (port_state >> pin) & 0x01;
      00240E 90 04 04         [24] 1267 	mov	dptr,#_pcf8574_read_pin_pin_65536_79
      002411 E0               [24] 1268 	movx	a,@dptr
      002412 FE               [12] 1269 	mov	r6,a
      002413 8E F0            [24] 1270 	mov	b,r6
      002415 05 F0            [12] 1271 	inc	b
      002417 EF               [12] 1272 	mov	a,r7
      002418 80 02            [24] 1273 	sjmp	00104$
      00241A                       1274 00103$:
      00241A C3               [12] 1275 	clr	c
      00241B 13               [12] 1276 	rrc	a
      00241C                       1277 00104$:
      00241C D5 F0 FB         [24] 1278 	djnz	b,00103$
      00241F 54 01            [12] 1279 	anl	a,#0x01
                                   1280 ;	8051_i2c_eeprom.c:250: }
      002421 F5 82            [12] 1281 	mov	dpl,a
      002423 22               [24] 1282 	ret
                                   1283 ;------------------------------------------------------------
                                   1284 ;Allocation info for local variables in function 'pcf8574_write_port'
                                   1285 ;------------------------------------------------------------
                                   1286 ;value                     Allocated with name '_pcf8574_write_port_value_65536_81'
                                   1287 ;------------------------------------------------------------
                                   1288 ;	8051_i2c_eeprom.c:252: void pcf8574_write_port(uint8_t value)
                                   1289 ;	-----------------------------------------
                                   1290 ;	 function pcf8574_write_port
                                   1291 ;	-----------------------------------------
      002424                       1292 _pcf8574_write_port:
      002424 E5 82            [12] 1293 	mov	a,dpl
      002426 90 04 05         [24] 1294 	mov	dptr,#_pcf8574_write_port_value_65536_81
      002429 F0               [24] 1295 	movx	@dptr,a
                                   1296 ;	8051_i2c_eeprom.c:254: i2c_start();
      00242A 12 2B 90         [24] 1297 	lcall	_i2c_start
                                   1298 ;	8051_i2c_eeprom.c:255: i2c_write(PCF8574_I2C_WRITE_ADDRESS);
      00242D 75 82 70         [24] 1299 	mov	dpl,#0x70
      002430 12 2A A3         [24] 1300 	lcall	_i2c_write
                                   1301 ;	8051_i2c_eeprom.c:256: i2c_write(value);
      002433 90 04 05         [24] 1302 	mov	dptr,#_pcf8574_write_port_value_65536_81
      002436 E0               [24] 1303 	movx	a,@dptr
      002437 F5 82            [12] 1304 	mov	dpl,a
      002439 12 2A A3         [24] 1305 	lcall	_i2c_write
                                   1306 ;	8051_i2c_eeprom.c:257: i2c_stop();
                                   1307 ;	8051_i2c_eeprom.c:258: }
      00243C 02 2F 73         [24] 1308 	ljmp	_i2c_stop
                                   1309 ;------------------------------------------------------------
                                   1310 ;Allocation info for local variables in function 'pcf8574_set_pin'
                                   1311 ;------------------------------------------------------------
                                   1312 ;value                     Allocated with name '_pcf8574_set_pin_PARM_2'
                                   1313 ;pin                       Allocated with name '_pcf8574_set_pin_pin_65536_83'
                                   1314 ;port_state                Allocated with name '_pcf8574_set_pin_port_state_65536_84'
                                   1315 ;------------------------------------------------------------
                                   1316 ;	8051_i2c_eeprom.c:260: void pcf8574_set_pin(uint8_t pin, uint8_t value) {
                                   1317 ;	-----------------------------------------
                                   1318 ;	 function pcf8574_set_pin
                                   1319 ;	-----------------------------------------
      00243F                       1320 _pcf8574_set_pin:
      00243F E5 82            [12] 1321 	mov	a,dpl
      002441 90 04 07         [24] 1322 	mov	dptr,#_pcf8574_set_pin_pin_65536_83
      002444 F0               [24] 1323 	movx	@dptr,a
                                   1324 ;	8051_i2c_eeprom.c:261: uint8_t port_state = pcf8574_read_port();
      002445 12 23 E8         [24] 1325 	lcall	_pcf8574_read_port
      002448 AF 82            [24] 1326 	mov	r7,dpl
                                   1327 ;	8051_i2c_eeprom.c:262: if (value) {
      00244A 90 04 06         [24] 1328 	mov	dptr,#_pcf8574_set_pin_PARM_2
      00244D E0               [24] 1329 	movx	a,@dptr
      00244E 60 1D            [24] 1330 	jz	00102$
                                   1331 ;	8051_i2c_eeprom.c:263: port_state |= (1 << pin);  // Set pin high
      002450 90 04 07         [24] 1332 	mov	dptr,#_pcf8574_set_pin_pin_65536_83
      002453 E0               [24] 1333 	movx	a,@dptr
      002454 FE               [12] 1334 	mov	r6,a
      002455 8E F0            [24] 1335 	mov	b,r6
      002457 05 F0            [12] 1336 	inc	b
      002459 74 01            [12] 1337 	mov	a,#0x01
      00245B 80 02            [24] 1338 	sjmp	00113$
      00245D                       1339 00111$:
      00245D 25 E0            [12] 1340 	add	a,acc
      00245F                       1341 00113$:
      00245F D5 F0 FB         [24] 1342 	djnz	b,00111$
      002462 FE               [12] 1343 	mov	r6,a
      002463 8F 05            [24] 1344 	mov	ar5,r7
      002465 90 04 08         [24] 1345 	mov	dptr,#_pcf8574_set_pin_port_state_65536_84
      002468 EE               [12] 1346 	mov	a,r6
      002469 4D               [12] 1347 	orl	a,r5
      00246A F0               [24] 1348 	movx	@dptr,a
      00246B 80 19            [24] 1349 	sjmp	00103$
      00246D                       1350 00102$:
                                   1351 ;	8051_i2c_eeprom.c:265: port_state &= ~(1 << pin); // Set pin low
      00246D 90 04 07         [24] 1352 	mov	dptr,#_pcf8574_set_pin_pin_65536_83
      002470 E0               [24] 1353 	movx	a,@dptr
      002471 FE               [12] 1354 	mov	r6,a
      002472 8E F0            [24] 1355 	mov	b,r6
      002474 05 F0            [12] 1356 	inc	b
      002476 74 01            [12] 1357 	mov	a,#0x01
      002478 80 02            [24] 1358 	sjmp	00116$
      00247A                       1359 00114$:
      00247A 25 E0            [12] 1360 	add	a,acc
      00247C                       1361 00116$:
      00247C D5 F0 FB         [24] 1362 	djnz	b,00114$
      00247F F4               [12] 1363 	cpl	a
      002480 FE               [12] 1364 	mov	r6,a
      002481 90 04 08         [24] 1365 	mov	dptr,#_pcf8574_set_pin_port_state_65536_84
      002484 5F               [12] 1366 	anl	a,r7
      002485 F0               [24] 1367 	movx	@dptr,a
      002486                       1368 00103$:
                                   1369 ;	8051_i2c_eeprom.c:267: pcf8574_write_port(port_state);
      002486 90 04 08         [24] 1370 	mov	dptr,#_pcf8574_set_pin_port_state_65536_84
      002489 E0               [24] 1371 	movx	a,@dptr
      00248A F5 82            [12] 1372 	mov	dpl,a
                                   1373 ;	8051_i2c_eeprom.c:268: }
      00248C 02 24 24         [24] 1374 	ljmp	_pcf8574_write_port
                                   1375 ;------------------------------------------------------------
                                   1376 ;Allocation info for local variables in function 'enable_interrupt0'
                                   1377 ;------------------------------------------------------------
                                   1378 ;	8051_i2c_eeprom.c:270: void enable_interrupt0(void)
                                   1379 ;	-----------------------------------------
                                   1380 ;	 function enable_interrupt0
                                   1381 ;	-----------------------------------------
      00248F                       1382 _enable_interrupt0:
                                   1383 ;	8051_i2c_eeprom.c:273: IT0 = 1;           // Set INT0 to be edge-triggered
                                   1384 ;	assignBit
      00248F D2 88            [12] 1385 	setb	_IT0
                                   1386 ;	8051_i2c_eeprom.c:274: EX0 = 1;          // Enable INT0 interrupt
                                   1387 ;	assignBit
      002491 D2 A8            [12] 1388 	setb	_EX0
                                   1389 ;	8051_i2c_eeprom.c:275: EA = 1;           // Enable global interrupts
                                   1390 ;	assignBit
      002493 D2 AF            [12] 1391 	setb	_EA
                                   1392 ;	8051_i2c_eeprom.c:276: }
      002495 22               [24] 1393 	ret
                                   1394 ;------------------------------------------------------------
                                   1395 ;Allocation info for local variables in function 'take_address'
                                   1396 ;------------------------------------------------------------
                                   1397 ;input                     Allocated with name '_take_address_input_65537_90'
                                   1398 ;i                         Allocated with name '_take_address_i_65537_90'
                                   1399 ;c                         Allocated with name '_take_address_c_65537_90'
                                   1400 ;address                   Allocated with name '_take_address_address_65538_94'
                                   1401 ;block                     Allocated with name '_take_address_block_65539_98'
                                   1402 ;------------------------------------------------------------
                                   1403 ;	8051_i2c_eeprom.c:284: unsigned int take_address() 
                                   1404 ;	-----------------------------------------
                                   1405 ;	 function take_address
                                   1406 ;	-----------------------------------------
      002496                       1407 _take_address:
                                   1408 ;	8051_i2c_eeprom.c:286: printf("│ Enter address (hex, up to 3 characters): \n\r|");
      002496 74 FE            [12] 1409 	mov	a,#___str_24
      002498 C0 E0            [24] 1410 	push	acc
      00249A 74 43            [12] 1411 	mov	a,#(___str_24 >> 8)
      00249C C0 E0            [24] 1412 	push	acc
      00249E 74 80            [12] 1413 	mov	a,#0x80
      0024A0 C0 E0            [24] 1414 	push	acc
      0024A2 12 30 C9         [24] 1415 	lcall	_printf
      0024A5 15 81            [12] 1416 	dec	sp
      0024A7 15 81            [12] 1417 	dec	sp
      0024A9 15 81            [12] 1418 	dec	sp
                                   1419 ;	8051_i2c_eeprom.c:287: char input[4] = {0};  // Array for 3 hex chars + null terminator
      0024AB 90 04 09         [24] 1420 	mov	dptr,#_take_address_input_65537_90
      0024AE E4               [12] 1421 	clr	a
      0024AF F0               [24] 1422 	movx	@dptr,a
      0024B0 90 04 0A         [24] 1423 	mov	dptr,#(_take_address_input_65537_90 + 0x0001)
      0024B3 F0               [24] 1424 	movx	@dptr,a
      0024B4 90 04 0B         [24] 1425 	mov	dptr,#(_take_address_input_65537_90 + 0x0002)
      0024B7 F0               [24] 1426 	movx	@dptr,a
      0024B8 90 04 0C         [24] 1427 	mov	dptr,#(_take_address_input_65537_90 + 0x0003)
      0024BB F0               [24] 1428 	movx	@dptr,a
                                   1429 ;	8051_i2c_eeprom.c:291: printf("| $ ");
      0024BC 74 2F            [12] 1430 	mov	a,#___str_25
      0024BE C0 E0            [24] 1431 	push	acc
      0024C0 74 44            [12] 1432 	mov	a,#(___str_25 >> 8)
      0024C2 C0 E0            [24] 1433 	push	acc
      0024C4 74 80            [12] 1434 	mov	a,#0x80
      0024C6 C0 E0            [24] 1435 	push	acc
      0024C8 12 30 C9         [24] 1436 	lcall	_printf
      0024CB 15 81            [12] 1437 	dec	sp
      0024CD 15 81            [12] 1438 	dec	sp
      0024CF 15 81            [12] 1439 	dec	sp
                                   1440 ;	8051_i2c_eeprom.c:293: while (i < 3) {
      0024D1 7E 00            [12] 1441 	mov	r6,#0x00
      0024D3 7F 00            [12] 1442 	mov	r7,#0x00
      0024D5                       1443 00111$:
      0024D5 C3               [12] 1444 	clr	c
      0024D6 EE               [12] 1445 	mov	a,r6
      0024D7 94 03            [12] 1446 	subb	a,#0x03
      0024D9 EF               [12] 1447 	mov	a,r7
      0024DA 64 80            [12] 1448 	xrl	a,#0x80
      0024DC 94 80            [12] 1449 	subb	a,#0x80
      0024DE 50 5B            [24] 1450 	jnc	00113$
                                   1451 ;	8051_i2c_eeprom.c:295: c = getchar();
      0024E0 C0 07            [24] 1452 	push	ar7
      0024E2 C0 06            [24] 1453 	push	ar6
      0024E4 12 20 84         [24] 1454 	lcall	_getchar
      0024E7 AC 82            [24] 1455 	mov	r4,dpl
      0024E9 AD 83            [24] 1456 	mov	r5,dph
      0024EB D0 06            [24] 1457 	pop	ar6
      0024ED D0 07            [24] 1458 	pop	ar7
                                   1459 ;	8051_i2c_eeprom.c:298: if (c == '\r' || c == '\n') {
      0024EF BC 0D 02         [24] 1460 	cjne	r4,#0x0d,00200$
      0024F2 80 47            [24] 1461 	sjmp	00113$
      0024F4                       1462 00200$:
      0024F4 BC 0A 02         [24] 1463 	cjne	r4,#0x0a,00201$
      0024F7 80 42            [24] 1464 	sjmp	00113$
      0024F9                       1465 00201$:
                                   1466 ;	8051_i2c_eeprom.c:303: if ((c >= '0' && c <= '9') || 
      0024F9 BC 30 00         [24] 1467 	cjne	r4,#0x30,00202$
      0024FC                       1468 00202$:
      0024FC 40 05            [24] 1469 	jc	00108$
      0024FE EC               [12] 1470 	mov	a,r4
      0024FF 24 C6            [12] 1471 	add	a,#0xff - 0x39
      002501 50 14            [24] 1472 	jnc	00104$
      002503                       1473 00108$:
                                   1474 ;	8051_i2c_eeprom.c:304: (c >= 'a' && c <= 'f') || 
      002503 BC 61 00         [24] 1475 	cjne	r4,#0x61,00205$
      002506                       1476 00205$:
      002506 40 05            [24] 1477 	jc	00110$
      002508 EC               [12] 1478 	mov	a,r4
      002509 24 99            [12] 1479 	add	a,#0xff - 0x66
      00250B 50 0A            [24] 1480 	jnc	00104$
      00250D                       1481 00110$:
                                   1482 ;	8051_i2c_eeprom.c:305: (c >= 'A' && c <= 'F')) {
      00250D BC 41 00         [24] 1483 	cjne	r4,#0x41,00208$
      002510                       1484 00208$:
      002510 40 C3            [24] 1485 	jc	00111$
      002512 EC               [12] 1486 	mov	a,r4
      002513 24 B9            [12] 1487 	add	a,#0xff - 0x46
      002515 40 BE            [24] 1488 	jc	00111$
      002517                       1489 00104$:
                                   1490 ;	8051_i2c_eeprom.c:307: input[i] = c;
      002517 EE               [12] 1491 	mov	a,r6
      002518 24 09            [12] 1492 	add	a,#_take_address_input_65537_90
      00251A F5 82            [12] 1493 	mov	dpl,a
      00251C EF               [12] 1494 	mov	a,r7
      00251D 34 04            [12] 1495 	addc	a,#(_take_address_input_65537_90 >> 8)
      00251F F5 83            [12] 1496 	mov	dph,a
      002521 EC               [12] 1497 	mov	a,r4
      002522 F0               [24] 1498 	movx	@dptr,a
                                   1499 ;	8051_i2c_eeprom.c:308: putchar(c);  // Echo character back
      002523 7D 00            [12] 1500 	mov	r5,#0x00
      002525 8C 82            [24] 1501 	mov	dpl,r4
      002527 8D 83            [24] 1502 	mov	dph,r5
      002529 C0 07            [24] 1503 	push	ar7
      00252B C0 06            [24] 1504 	push	ar6
      00252D 12 20 65         [24] 1505 	lcall	_putchar
      002530 D0 06            [24] 1506 	pop	ar6
      002532 D0 07            [24] 1507 	pop	ar7
                                   1508 ;	8051_i2c_eeprom.c:309: i++;
      002534 0E               [12] 1509 	inc	r6
      002535 BE 00 9D         [24] 1510 	cjne	r6,#0x00,00111$
      002538 0F               [12] 1511 	inc	r7
      002539 80 9A            [24] 1512 	sjmp	00111$
      00253B                       1513 00113$:
                                   1514 ;	8051_i2c_eeprom.c:313: input[i] = '\0';  // Null-terminate the string
      00253B EE               [12] 1515 	mov	a,r6
      00253C 24 09            [12] 1516 	add	a,#_take_address_input_65537_90
      00253E F5 82            [12] 1517 	mov	dpl,a
      002540 EF               [12] 1518 	mov	a,r7
      002541 34 04            [12] 1519 	addc	a,#(_take_address_input_65537_90 >> 8)
      002543 F5 83            [12] 1520 	mov	dph,a
      002545 E4               [12] 1521 	clr	a
      002546 F0               [24] 1522 	movx	@dptr,a
                                   1523 ;	8051_i2c_eeprom.c:316: unsigned int address = 0;
      002547 90 04 0D         [24] 1524 	mov	dptr,#_take_address_address_65538_94
      00254A F0               [24] 1525 	movx	@dptr,a
      00254B A3               [24] 1526 	inc	dptr
      00254C F0               [24] 1527 	movx	@dptr,a
                                   1528 ;	8051_i2c_eeprom.c:317: for(i = 0; input[i] != '\0'; i++) {
      00254D 7E 00            [12] 1529 	mov	r6,#0x00
      00254F 7F 00            [12] 1530 	mov	r7,#0x00
      002551                       1531 00129$:
      002551 EE               [12] 1532 	mov	a,r6
      002552 24 09            [12] 1533 	add	a,#_take_address_input_65537_90
      002554 F5 82            [12] 1534 	mov	dpl,a
      002556 EF               [12] 1535 	mov	a,r7
      002557 34 04            [12] 1536 	addc	a,#(_take_address_input_65537_90 >> 8)
      002559 F5 83            [12] 1537 	mov	dph,a
      00255B E0               [24] 1538 	movx	a,@dptr
      00255C FD               [12] 1539 	mov	r5,a
      00255D 70 03            [24] 1540 	jnz	00212$
      00255F 02 26 0A         [24] 1541 	ljmp	00125$
      002562                       1542 00212$:
                                   1543 ;	8051_i2c_eeprom.c:318: address = address * 16;
      002562 90 04 0D         [24] 1544 	mov	dptr,#_take_address_address_65538_94
      002565 E0               [24] 1545 	movx	a,@dptr
      002566 FB               [12] 1546 	mov	r3,a
      002567 A3               [24] 1547 	inc	dptr
      002568 E0               [24] 1548 	movx	a,@dptr
      002569 C4               [12] 1549 	swap	a
      00256A 54 F0            [12] 1550 	anl	a,#0xf0
      00256C CB               [12] 1551 	xch	a,r3
      00256D C4               [12] 1552 	swap	a
      00256E CB               [12] 1553 	xch	a,r3
      00256F 6B               [12] 1554 	xrl	a,r3
      002570 CB               [12] 1555 	xch	a,r3
      002571 54 F0            [12] 1556 	anl	a,#0xf0
      002573 CB               [12] 1557 	xch	a,r3
      002574 6B               [12] 1558 	xrl	a,r3
      002575 FC               [12] 1559 	mov	r4,a
      002576 90 04 0D         [24] 1560 	mov	dptr,#_take_address_address_65538_94
      002579 EB               [12] 1561 	mov	a,r3
      00257A F0               [24] 1562 	movx	@dptr,a
      00257B EC               [12] 1563 	mov	a,r4
      00257C A3               [24] 1564 	inc	dptr
      00257D F0               [24] 1565 	movx	@dptr,a
                                   1566 ;	8051_i2c_eeprom.c:319: if(input[i] >= '0' && input[i] <= '9')
      00257E BD 30 00         [24] 1567 	cjne	r5,#0x30,00213$
      002581                       1568 00213$:
      002581 40 23            [24] 1569 	jc	00122$
      002583 ED               [12] 1570 	mov	a,r5
      002584 24 C6            [12] 1571 	add	a,#0xff - 0x39
      002586 40 1E            [24] 1572 	jc	00122$
                                   1573 ;	8051_i2c_eeprom.c:320: address += input[i] - '0';
      002588 7C 00            [12] 1574 	mov	r4,#0x00
      00258A ED               [12] 1575 	mov	a,r5
      00258B 24 D0            [12] 1576 	add	a,#0xd0
      00258D FD               [12] 1577 	mov	r5,a
      00258E EC               [12] 1578 	mov	a,r4
      00258F 34 FF            [12] 1579 	addc	a,#0xff
      002591 FC               [12] 1580 	mov	r4,a
      002592 90 04 0D         [24] 1581 	mov	dptr,#_take_address_address_65538_94
      002595 E0               [24] 1582 	movx	a,@dptr
      002596 FA               [12] 1583 	mov	r2,a
      002597 A3               [24] 1584 	inc	dptr
      002598 E0               [24] 1585 	movx	a,@dptr
      002599 FB               [12] 1586 	mov	r3,a
      00259A 90 04 0D         [24] 1587 	mov	dptr,#_take_address_address_65538_94
      00259D ED               [12] 1588 	mov	a,r5
      00259E 2A               [12] 1589 	add	a,r2
      00259F F0               [24] 1590 	movx	@dptr,a
      0025A0 EC               [12] 1591 	mov	a,r4
      0025A1 3B               [12] 1592 	addc	a,r3
      0025A2 A3               [24] 1593 	inc	dptr
      0025A3 F0               [24] 1594 	movx	@dptr,a
      0025A4 80 5C            [24] 1595 	sjmp	00130$
      0025A6                       1596 00122$:
                                   1597 ;	8051_i2c_eeprom.c:321: else if(input[i] >= 'A' && input[i] <= 'F')
      0025A6 EE               [12] 1598 	mov	a,r6
      0025A7 24 09            [12] 1599 	add	a,#_take_address_input_65537_90
      0025A9 F5 82            [12] 1600 	mov	dpl,a
      0025AB EF               [12] 1601 	mov	a,r7
      0025AC 34 04            [12] 1602 	addc	a,#(_take_address_input_65537_90 >> 8)
      0025AE F5 83            [12] 1603 	mov	dph,a
      0025B0 E0               [24] 1604 	movx	a,@dptr
      0025B1 FD               [12] 1605 	mov	r5,a
      0025B2 BD 41 00         [24] 1606 	cjne	r5,#0x41,00216$
      0025B5                       1607 00216$:
      0025B5 40 25            [24] 1608 	jc	00118$
      0025B7 ED               [12] 1609 	mov	a,r5
      0025B8 24 B9            [12] 1610 	add	a,#0xff - 0x46
      0025BA 40 20            [24] 1611 	jc	00118$
                                   1612 ;	8051_i2c_eeprom.c:322: address += input[i] - 'A' + 10;
      0025BC 8D 03            [24] 1613 	mov	ar3,r5
      0025BE 7C 00            [12] 1614 	mov	r4,#0x00
      0025C0 74 C9            [12] 1615 	mov	a,#0xc9
      0025C2 2B               [12] 1616 	add	a,r3
      0025C3 FB               [12] 1617 	mov	r3,a
      0025C4 74 FF            [12] 1618 	mov	a,#0xff
      0025C6 3C               [12] 1619 	addc	a,r4
      0025C7 FC               [12] 1620 	mov	r4,a
      0025C8 90 04 0D         [24] 1621 	mov	dptr,#_take_address_address_65538_94
      0025CB E0               [24] 1622 	movx	a,@dptr
      0025CC F9               [12] 1623 	mov	r1,a
      0025CD A3               [24] 1624 	inc	dptr
      0025CE E0               [24] 1625 	movx	a,@dptr
      0025CF FA               [12] 1626 	mov	r2,a
      0025D0 90 04 0D         [24] 1627 	mov	dptr,#_take_address_address_65538_94
      0025D3 EB               [12] 1628 	mov	a,r3
      0025D4 29               [12] 1629 	add	a,r1
      0025D5 F0               [24] 1630 	movx	@dptr,a
      0025D6 EC               [12] 1631 	mov	a,r4
      0025D7 3A               [12] 1632 	addc	a,r2
      0025D8 A3               [24] 1633 	inc	dptr
      0025D9 F0               [24] 1634 	movx	@dptr,a
      0025DA 80 26            [24] 1635 	sjmp	00130$
      0025DC                       1636 00118$:
                                   1637 ;	8051_i2c_eeprom.c:323: else if(input[i] >= 'a' && input[i] <= 'f')
      0025DC BD 61 00         [24] 1638 	cjne	r5,#0x61,00219$
      0025DF                       1639 00219$:
      0025DF 40 21            [24] 1640 	jc	00130$
      0025E1 ED               [12] 1641 	mov	a,r5
      0025E2 24 99            [12] 1642 	add	a,#0xff - 0x66
      0025E4 40 1C            [24] 1643 	jc	00130$
                                   1644 ;	8051_i2c_eeprom.c:324: address += input[i] - 'a' + 10;
      0025E6 7C 00            [12] 1645 	mov	r4,#0x00
      0025E8 74 A9            [12] 1646 	mov	a,#0xa9
      0025EA 2D               [12] 1647 	add	a,r5
      0025EB FD               [12] 1648 	mov	r5,a
      0025EC 74 FF            [12] 1649 	mov	a,#0xff
      0025EE 3C               [12] 1650 	addc	a,r4
      0025EF FC               [12] 1651 	mov	r4,a
      0025F0 90 04 0D         [24] 1652 	mov	dptr,#_take_address_address_65538_94
      0025F3 E0               [24] 1653 	movx	a,@dptr
      0025F4 FA               [12] 1654 	mov	r2,a
      0025F5 A3               [24] 1655 	inc	dptr
      0025F6 E0               [24] 1656 	movx	a,@dptr
      0025F7 FB               [12] 1657 	mov	r3,a
      0025F8 90 04 0D         [24] 1658 	mov	dptr,#_take_address_address_65538_94
      0025FB ED               [12] 1659 	mov	a,r5
      0025FC 2A               [12] 1660 	add	a,r2
      0025FD F0               [24] 1661 	movx	@dptr,a
      0025FE EC               [12] 1662 	mov	a,r4
      0025FF 3B               [12] 1663 	addc	a,r3
      002600 A3               [24] 1664 	inc	dptr
      002601 F0               [24] 1665 	movx	@dptr,a
      002602                       1666 00130$:
                                   1667 ;	8051_i2c_eeprom.c:317: for(i = 0; input[i] != '\0'; i++) {
      002602 0E               [12] 1668 	inc	r6
      002603 BE 00 01         [24] 1669 	cjne	r6,#0x00,00222$
      002606 0F               [12] 1670 	inc	r7
      002607                       1671 00222$:
      002607 02 25 51         [24] 1672 	ljmp	00129$
      00260A                       1673 00125$:
                                   1674 ;	8051_i2c_eeprom.c:327: printf("\n\r│ Entered address: 0x%03X\n\r", address);
      00260A 90 04 0D         [24] 1675 	mov	dptr,#_take_address_address_65538_94
      00260D E0               [24] 1676 	movx	a,@dptr
      00260E FE               [12] 1677 	mov	r6,a
      00260F A3               [24] 1678 	inc	dptr
      002610 E0               [24] 1679 	movx	a,@dptr
      002611 FF               [12] 1680 	mov	r7,a
      002612 C0 07            [24] 1681 	push	ar7
      002614 C0 06            [24] 1682 	push	ar6
      002616 C0 06            [24] 1683 	push	ar6
      002618 C0 07            [24] 1684 	push	ar7
      00261A 74 34            [12] 1685 	mov	a,#___str_26
      00261C C0 E0            [24] 1686 	push	acc
      00261E 74 44            [12] 1687 	mov	a,#(___str_26 >> 8)
      002620 C0 E0            [24] 1688 	push	acc
      002622 74 80            [12] 1689 	mov	a,#0x80
      002624 C0 E0            [24] 1690 	push	acc
      002626 12 30 C9         [24] 1691 	lcall	_printf
      002629 E5 81            [12] 1692 	mov	a,sp
      00262B 24 FB            [12] 1693 	add	a,#0xfb
      00262D F5 81            [12] 1694 	mov	sp,a
      00262F D0 06            [24] 1695 	pop	ar6
      002631 D0 07            [24] 1696 	pop	ar7
                                   1697 ;	8051_i2c_eeprom.c:328: if(address > 0x7ff) 
      002633 C3               [12] 1698 	clr	c
      002634 74 FF            [12] 1699 	mov	a,#0xff
      002636 9E               [12] 1700 	subb	a,r6
      002637 74 07            [12] 1701 	mov	a,#0x07
      002639 9F               [12] 1702 	subb	a,r7
      00263A 50 5F            [24] 1703 	jnc	00127$
                                   1704 ;	8051_i2c_eeprom.c:330: printf("╔══════════════════════════════════════════╗\n\r");
      00263C 74 54            [12] 1705 	mov	a,#___str_27
      00263E C0 E0            [24] 1706 	push	acc
      002640 74 44            [12] 1707 	mov	a,#(___str_27 >> 8)
      002642 C0 E0            [24] 1708 	push	acc
      002644 74 80            [12] 1709 	mov	a,#0x80
      002646 C0 E0            [24] 1710 	push	acc
      002648 12 30 C9         [24] 1711 	lcall	_printf
      00264B 15 81            [12] 1712 	dec	sp
      00264D 15 81            [12] 1713 	dec	sp
      00264F 15 81            [12] 1714 	dec	sp
                                   1715 ;	8051_i2c_eeprom.c:331: printf("║       ! ADDRESS OUT OF RANGE !         ║\n\r");
      002651 74 DB            [12] 1716 	mov	a,#___str_28
      002653 C0 E0            [24] 1717 	push	acc
      002655 74 44            [12] 1718 	mov	a,#(___str_28 >> 8)
      002657 C0 E0            [24] 1719 	push	acc
      002659 74 80            [12] 1720 	mov	a,#0x80
      00265B C0 E0            [24] 1721 	push	acc
      00265D 12 30 C9         [24] 1722 	lcall	_printf
      002660 15 81            [12] 1723 	dec	sp
      002662 15 81            [12] 1724 	dec	sp
      002664 15 81            [12] 1725 	dec	sp
                                   1726 ;	8051_i2c_eeprom.c:332: printf("║     Please Enter Valid Address         ║\n\r");
      002666 74 0C            [12] 1727 	mov	a,#___str_29
      002668 C0 E0            [24] 1728 	push	acc
      00266A 74 45            [12] 1729 	mov	a,#(___str_29 >> 8)
      00266C C0 E0            [24] 1730 	push	acc
      00266E 74 80            [12] 1731 	mov	a,#0x80
      002670 C0 E0            [24] 1732 	push	acc
      002672 12 30 C9         [24] 1733 	lcall	_printf
      002675 15 81            [12] 1734 	dec	sp
      002677 15 81            [12] 1735 	dec	sp
      002679 15 81            [12] 1736 	dec	sp
                                   1737 ;	8051_i2c_eeprom.c:333: printf("╚══════════════════════════════════════════╝\n\r");
      00267B 74 3D            [12] 1738 	mov	a,#___str_30
      00267D C0 E0            [24] 1739 	push	acc
      00267F 74 45            [12] 1740 	mov	a,#(___str_30 >> 8)
      002681 C0 E0            [24] 1741 	push	acc
      002683 74 80            [12] 1742 	mov	a,#0x80
      002685 C0 E0            [24] 1743 	push	acc
      002687 12 30 C9         [24] 1744 	lcall	_printf
      00268A 15 81            [12] 1745 	dec	sp
      00268C 15 81            [12] 1746 	dec	sp
      00268E 15 81            [12] 1747 	dec	sp
                                   1748 ;	8051_i2c_eeprom.c:334: address_range_flag = 0;
      002690 90 04 5C         [24] 1749 	mov	dptr,#_address_range_flag
      002693 E4               [12] 1750 	clr	a
      002694 F0               [24] 1751 	movx	@dptr,a
      002695 A3               [24] 1752 	inc	dptr
      002696 F0               [24] 1753 	movx	@dptr,a
                                   1754 ;	8051_i2c_eeprom.c:335: return 0;
      002697 90 00 00         [24] 1755 	mov	dptr,#0x0000
      00269A 22               [24] 1756 	ret
      00269B                       1757 00127$:
                                   1758 ;	8051_i2c_eeprom.c:337: unsigned int block = address/256;       //block address
      00269B 8F 04            [24] 1759 	mov	ar4,r7
      00269D 7D 00            [12] 1760 	mov	r5,#0x00
                                   1761 ;	8051_i2c_eeprom.c:338: printf("| Block number %d                            \n\r", block);
      00269F C0 07            [24] 1762 	push	ar7
      0026A1 C0 06            [24] 1763 	push	ar6
      0026A3 C0 04            [24] 1764 	push	ar4
      0026A5 C0 05            [24] 1765 	push	ar5
      0026A7 74 C4            [12] 1766 	mov	a,#___str_31
      0026A9 C0 E0            [24] 1767 	push	acc
      0026AB 74 45            [12] 1768 	mov	a,#(___str_31 >> 8)
      0026AD C0 E0            [24] 1769 	push	acc
      0026AF 74 80            [12] 1770 	mov	a,#0x80
      0026B1 C0 E0            [24] 1771 	push	acc
      0026B3 12 30 C9         [24] 1772 	lcall	_printf
      0026B6 E5 81            [12] 1773 	mov	a,sp
      0026B8 24 FB            [12] 1774 	add	a,#0xfb
      0026BA F5 81            [12] 1775 	mov	sp,a
      0026BC D0 06            [24] 1776 	pop	ar6
      0026BE D0 07            [24] 1777 	pop	ar7
                                   1778 ;	8051_i2c_eeprom.c:339: address = address%256;     //word address
      0026C0 90 04 0D         [24] 1779 	mov	dptr,#_take_address_address_65538_94
      0026C3 EE               [12] 1780 	mov	a,r6
      0026C4 F0               [24] 1781 	movx	@dptr,a
      0026C5 E4               [12] 1782 	clr	a
      0026C6 A3               [24] 1783 	inc	dptr
      0026C7 F0               [24] 1784 	movx	@dptr,a
                                   1785 ;	8051_i2c_eeprom.c:342: return address;
      0026C8 90 04 0D         [24] 1786 	mov	dptr,#_take_address_address_65538_94
      0026CB E0               [24] 1787 	movx	a,@dptr
      0026CC FE               [12] 1788 	mov	r6,a
      0026CD A3               [24] 1789 	inc	dptr
      0026CE E0               [24] 1790 	movx	a,@dptr
                                   1791 ;	8051_i2c_eeprom.c:343: }
      0026CF 8E 82            [24] 1792 	mov	dpl,r6
      0026D1 F5 83            [12] 1793 	mov	dph,a
      0026D3 22               [24] 1794 	ret
                                   1795 ;------------------------------------------------------------
                                   1796 ;Allocation info for local variables in function 'take_data'
                                   1797 ;------------------------------------------------------------
                                   1798 ;input                     Allocated with name '_take_data_input_65537_100'
                                   1799 ;i                         Allocated with name '_take_data_i_65537_100'
                                   1800 ;c                         Allocated with name '_take_data_c_65537_100'
                                   1801 ;data                      Allocated with name '_take_data_data_65538_104'
                                   1802 ;------------------------------------------------------------
                                   1803 ;	8051_i2c_eeprom.c:351: unsigned char take_data()
                                   1804 ;	-----------------------------------------
                                   1805 ;	 function take_data
                                   1806 ;	-----------------------------------------
      0026D4                       1807 _take_data:
                                   1808 ;	8051_i2c_eeprom.c:353: printf("│ Enter data (hex, up to 2 characters): \n\r|");
      0026D4 74 F4            [12] 1809 	mov	a,#___str_32
      0026D6 C0 E0            [24] 1810 	push	acc
      0026D8 74 45            [12] 1811 	mov	a,#(___str_32 >> 8)
      0026DA C0 E0            [24] 1812 	push	acc
      0026DC 74 80            [12] 1813 	mov	a,#0x80
      0026DE C0 E0            [24] 1814 	push	acc
      0026E0 12 30 C9         [24] 1815 	lcall	_printf
      0026E3 15 81            [12] 1816 	dec	sp
      0026E5 15 81            [12] 1817 	dec	sp
      0026E7 15 81            [12] 1818 	dec	sp
                                   1819 ;	8051_i2c_eeprom.c:354: char input[4] = {0};  // Array for 3 hex chars + null terminator
      0026E9 90 04 0F         [24] 1820 	mov	dptr,#_take_data_input_65537_100
      0026EC E4               [12] 1821 	clr	a
      0026ED F0               [24] 1822 	movx	@dptr,a
      0026EE 90 04 10         [24] 1823 	mov	dptr,#(_take_data_input_65537_100 + 0x0001)
      0026F1 F0               [24] 1824 	movx	@dptr,a
      0026F2 90 04 11         [24] 1825 	mov	dptr,#(_take_data_input_65537_100 + 0x0002)
      0026F5 F0               [24] 1826 	movx	@dptr,a
      0026F6 90 04 12         [24] 1827 	mov	dptr,#(_take_data_input_65537_100 + 0x0003)
      0026F9 F0               [24] 1828 	movx	@dptr,a
                                   1829 ;	8051_i2c_eeprom.c:358: printf("$ ");
      0026FA 74 22            [12] 1830 	mov	a,#___str_33
      0026FC C0 E0            [24] 1831 	push	acc
      0026FE 74 46            [12] 1832 	mov	a,#(___str_33 >> 8)
      002700 C0 E0            [24] 1833 	push	acc
      002702 74 80            [12] 1834 	mov	a,#0x80
      002704 C0 E0            [24] 1835 	push	acc
      002706 12 30 C9         [24] 1836 	lcall	_printf
      002709 15 81            [12] 1837 	dec	sp
      00270B 15 81            [12] 1838 	dec	sp
      00270D 15 81            [12] 1839 	dec	sp
                                   1840 ;	8051_i2c_eeprom.c:360: while (i < 3) {
      00270F 7E 00            [12] 1841 	mov	r6,#0x00
      002711 7F 00            [12] 1842 	mov	r7,#0x00
      002713                       1843 00111$:
      002713 C3               [12] 1844 	clr	c
      002714 EE               [12] 1845 	mov	a,r6
      002715 94 03            [12] 1846 	subb	a,#0x03
      002717 EF               [12] 1847 	mov	a,r7
      002718 64 80            [12] 1848 	xrl	a,#0x80
      00271A 94 80            [12] 1849 	subb	a,#0x80
      00271C 50 5B            [24] 1850 	jnc	00113$
                                   1851 ;	8051_i2c_eeprom.c:362: c = getchar();
      00271E C0 07            [24] 1852 	push	ar7
      002720 C0 06            [24] 1853 	push	ar6
      002722 12 20 84         [24] 1854 	lcall	_getchar
      002725 AC 82            [24] 1855 	mov	r4,dpl
      002727 AD 83            [24] 1856 	mov	r5,dph
      002729 D0 06            [24] 1857 	pop	ar6
      00272B D0 07            [24] 1858 	pop	ar7
                                   1859 ;	8051_i2c_eeprom.c:365: if (c == '\r' || c == '\n') {
      00272D BC 0D 02         [24] 1860 	cjne	r4,#0x0d,00200$
      002730 80 47            [24] 1861 	sjmp	00113$
      002732                       1862 00200$:
      002732 BC 0A 02         [24] 1863 	cjne	r4,#0x0a,00201$
      002735 80 42            [24] 1864 	sjmp	00113$
      002737                       1865 00201$:
                                   1866 ;	8051_i2c_eeprom.c:370: if ((c >= '0' && c <= '9') ||
      002737 BC 30 00         [24] 1867 	cjne	r4,#0x30,00202$
      00273A                       1868 00202$:
      00273A 40 05            [24] 1869 	jc	00108$
      00273C EC               [12] 1870 	mov	a,r4
      00273D 24 C6            [12] 1871 	add	a,#0xff - 0x39
      00273F 50 14            [24] 1872 	jnc	00104$
      002741                       1873 00108$:
                                   1874 ;	8051_i2c_eeprom.c:371: (c >= 'a' && c <= 'f') ||
      002741 BC 61 00         [24] 1875 	cjne	r4,#0x61,00205$
      002744                       1876 00205$:
      002744 40 05            [24] 1877 	jc	00110$
      002746 EC               [12] 1878 	mov	a,r4
      002747 24 99            [12] 1879 	add	a,#0xff - 0x66
      002749 50 0A            [24] 1880 	jnc	00104$
      00274B                       1881 00110$:
                                   1882 ;	8051_i2c_eeprom.c:372: (c >= 'A' && c <= 'F')) {
      00274B BC 41 00         [24] 1883 	cjne	r4,#0x41,00208$
      00274E                       1884 00208$:
      00274E 40 C3            [24] 1885 	jc	00111$
      002750 EC               [12] 1886 	mov	a,r4
      002751 24 B9            [12] 1887 	add	a,#0xff - 0x46
      002753 40 BE            [24] 1888 	jc	00111$
      002755                       1889 00104$:
                                   1890 ;	8051_i2c_eeprom.c:374: input[i] = c;
      002755 EE               [12] 1891 	mov	a,r6
      002756 24 0F            [12] 1892 	add	a,#_take_data_input_65537_100
      002758 F5 82            [12] 1893 	mov	dpl,a
      00275A EF               [12] 1894 	mov	a,r7
      00275B 34 04            [12] 1895 	addc	a,#(_take_data_input_65537_100 >> 8)
      00275D F5 83            [12] 1896 	mov	dph,a
      00275F EC               [12] 1897 	mov	a,r4
      002760 F0               [24] 1898 	movx	@dptr,a
                                   1899 ;	8051_i2c_eeprom.c:375: putchar(c);  // Echo character back
      002761 7D 00            [12] 1900 	mov	r5,#0x00
      002763 8C 82            [24] 1901 	mov	dpl,r4
      002765 8D 83            [24] 1902 	mov	dph,r5
      002767 C0 07            [24] 1903 	push	ar7
      002769 C0 06            [24] 1904 	push	ar6
      00276B 12 20 65         [24] 1905 	lcall	_putchar
      00276E D0 06            [24] 1906 	pop	ar6
      002770 D0 07            [24] 1907 	pop	ar7
                                   1908 ;	8051_i2c_eeprom.c:376: i++;
      002772 0E               [12] 1909 	inc	r6
      002773 BE 00 9D         [24] 1910 	cjne	r6,#0x00,00111$
      002776 0F               [12] 1911 	inc	r7
      002777 80 9A            [24] 1912 	sjmp	00111$
      002779                       1913 00113$:
                                   1914 ;	8051_i2c_eeprom.c:380: input[i] = '\0';  // Null-terminate the string
      002779 EE               [12] 1915 	mov	a,r6
      00277A 24 0F            [12] 1916 	add	a,#_take_data_input_65537_100
      00277C F5 82            [12] 1917 	mov	dpl,a
      00277E EF               [12] 1918 	mov	a,r7
      00277F 34 04            [12] 1919 	addc	a,#(_take_data_input_65537_100 >> 8)
      002781 F5 83            [12] 1920 	mov	dph,a
      002783 E4               [12] 1921 	clr	a
      002784 F0               [24] 1922 	movx	@dptr,a
                                   1923 ;	8051_i2c_eeprom.c:383: unsigned char data = 0;
      002785 90 04 13         [24] 1924 	mov	dptr,#_take_data_data_65538_104
      002788 F0               [24] 1925 	movx	@dptr,a
                                   1926 ;	8051_i2c_eeprom.c:384: for (i = 0; input[i] != '\0'; i++) {
      002789 7E 00            [12] 1927 	mov	r6,#0x00
      00278B 7F 00            [12] 1928 	mov	r7,#0x00
      00278D                       1929 00129$:
      00278D EE               [12] 1930 	mov	a,r6
      00278E 24 0F            [12] 1931 	add	a,#_take_data_input_65537_100
      002790 F5 82            [12] 1932 	mov	dpl,a
      002792 EF               [12] 1933 	mov	a,r7
      002793 34 04            [12] 1934 	addc	a,#(_take_data_input_65537_100 >> 8)
      002795 F5 83            [12] 1935 	mov	dph,a
      002797 E0               [24] 1936 	movx	a,@dptr
      002798 FD               [12] 1937 	mov	r5,a
      002799 70 03            [24] 1938 	jnz	00212$
      00279B 02 28 00         [24] 1939 	ljmp	00125$
      00279E                       1940 00212$:
                                   1941 ;	8051_i2c_eeprom.c:385: data = data * 16;
      00279E 90 04 13         [24] 1942 	mov	dptr,#_take_data_data_65538_104
      0027A1 E0               [24] 1943 	movx	a,@dptr
      0027A2 C4               [12] 1944 	swap	a
      0027A3 54 F0            [12] 1945 	anl	a,#0xf0
      0027A5 FC               [12] 1946 	mov	r4,a
      0027A6 F0               [24] 1947 	movx	@dptr,a
                                   1948 ;	8051_i2c_eeprom.c:386: if (input[i] >= '0' && input[i] <= '9')
      0027A7 BD 30 00         [24] 1949 	cjne	r5,#0x30,00213$
      0027AA                       1950 00213$:
      0027AA 40 12            [24] 1951 	jc	00122$
      0027AC ED               [12] 1952 	mov	a,r5
      0027AD 24 C6            [12] 1953 	add	a,#0xff - 0x39
      0027AF 40 0D            [24] 1954 	jc	00122$
                                   1955 ;	8051_i2c_eeprom.c:387: data += input[i] - '0';
      0027B1 ED               [12] 1956 	mov	a,r5
      0027B2 24 D0            [12] 1957 	add	a,#0xd0
      0027B4 FD               [12] 1958 	mov	r5,a
      0027B5 90 04 13         [24] 1959 	mov	dptr,#_take_data_data_65538_104
      0027B8 E0               [24] 1960 	movx	a,@dptr
      0027B9 FC               [12] 1961 	mov	r4,a
      0027BA 2D               [12] 1962 	add	a,r5
      0027BB F0               [24] 1963 	movx	@dptr,a
      0027BC 80 3A            [24] 1964 	sjmp	00130$
      0027BE                       1965 00122$:
                                   1966 ;	8051_i2c_eeprom.c:388: else if (input[i] >= 'A' && input[i] <= 'F')
      0027BE EE               [12] 1967 	mov	a,r6
      0027BF 24 0F            [12] 1968 	add	a,#_take_data_input_65537_100
      0027C1 F5 82            [12] 1969 	mov	dpl,a
      0027C3 EF               [12] 1970 	mov	a,r7
      0027C4 34 04            [12] 1971 	addc	a,#(_take_data_input_65537_100 >> 8)
      0027C6 F5 83            [12] 1972 	mov	dph,a
      0027C8 E0               [24] 1973 	movx	a,@dptr
      0027C9 FD               [12] 1974 	mov	r5,a
      0027CA BD 41 00         [24] 1975 	cjne	r5,#0x41,00216$
      0027CD                       1976 00216$:
      0027CD 40 14            [24] 1977 	jc	00118$
      0027CF ED               [12] 1978 	mov	a,r5
      0027D0 24 B9            [12] 1979 	add	a,#0xff - 0x46
      0027D2 40 0F            [24] 1980 	jc	00118$
                                   1981 ;	8051_i2c_eeprom.c:389: data += input[i] - 'A' + 10;
      0027D4 8D 04            [24] 1982 	mov	ar4,r5
      0027D6 74 C9            [12] 1983 	mov	a,#0xc9
      0027D8 2C               [12] 1984 	add	a,r4
      0027D9 FC               [12] 1985 	mov	r4,a
      0027DA 90 04 13         [24] 1986 	mov	dptr,#_take_data_data_65538_104
      0027DD E0               [24] 1987 	movx	a,@dptr
      0027DE FB               [12] 1988 	mov	r3,a
      0027DF 2C               [12] 1989 	add	a,r4
      0027E0 F0               [24] 1990 	movx	@dptr,a
      0027E1 80 15            [24] 1991 	sjmp	00130$
      0027E3                       1992 00118$:
                                   1993 ;	8051_i2c_eeprom.c:390: else if (input[i] >= 'a' && input[i] <= 'f')
      0027E3 BD 61 00         [24] 1994 	cjne	r5,#0x61,00219$
      0027E6                       1995 00219$:
      0027E6 40 10            [24] 1996 	jc	00130$
      0027E8 ED               [12] 1997 	mov	a,r5
      0027E9 24 99            [12] 1998 	add	a,#0xff - 0x66
      0027EB 40 0B            [24] 1999 	jc	00130$
                                   2000 ;	8051_i2c_eeprom.c:391: data += input[i] - 'a' + 10;
      0027ED 74 A9            [12] 2001 	mov	a,#0xa9
      0027EF 2D               [12] 2002 	add	a,r5
      0027F0 FD               [12] 2003 	mov	r5,a
      0027F1 90 04 13         [24] 2004 	mov	dptr,#_take_data_data_65538_104
      0027F4 E0               [24] 2005 	movx	a,@dptr
      0027F5 FC               [12] 2006 	mov	r4,a
      0027F6 2D               [12] 2007 	add	a,r5
      0027F7 F0               [24] 2008 	movx	@dptr,a
      0027F8                       2009 00130$:
                                   2010 ;	8051_i2c_eeprom.c:384: for (i = 0; input[i] != '\0'; i++) {
      0027F8 0E               [12] 2011 	inc	r6
      0027F9 BE 00 01         [24] 2012 	cjne	r6,#0x00,00222$
      0027FC 0F               [12] 2013 	inc	r7
      0027FD                       2014 00222$:
      0027FD 02 27 8D         [24] 2015 	ljmp	00129$
      002800                       2016 00125$:
                                   2017 ;	8051_i2c_eeprom.c:394: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      002800 90 04 13         [24] 2018 	mov	dptr,#_take_data_data_65538_104
      002803 E0               [24] 2019 	movx	a,@dptr
      002804 FF               [12] 2020 	mov	r7,a
      002805 FD               [12] 2021 	mov	r5,a
      002806 7E 00            [12] 2022 	mov	r6,#0x00
      002808 C0 07            [24] 2023 	push	ar7
      00280A C0 05            [24] 2024 	push	ar5
      00280C C0 06            [24] 2025 	push	ar6
      00280E 74 25            [12] 2026 	mov	a,#___str_34
      002810 C0 E0            [24] 2027 	push	acc
      002812 74 46            [12] 2028 	mov	a,#(___str_34 >> 8)
      002814 C0 E0            [24] 2029 	push	acc
      002816 74 80            [12] 2030 	mov	a,#0x80
      002818 C0 E0            [24] 2031 	push	acc
      00281A 12 30 C9         [24] 2032 	lcall	_printf
      00281D E5 81            [12] 2033 	mov	a,sp
      00281F 24 FB            [12] 2034 	add	a,#0xfb
      002821 F5 81            [12] 2035 	mov	sp,a
      002823 D0 07            [24] 2036 	pop	ar7
                                   2037 ;	8051_i2c_eeprom.c:395: if(data > 0xfe)
      002825 EF               [12] 2038 	mov	a,r7
      002826 24 01            [12] 2039 	add	a,#0xff - 0xfe
      002828 50 20            [24] 2040 	jnc	00127$
                                   2041 ;	8051_i2c_eeprom.c:397: printf("Data out of Range\n\r");
      00282A 74 42            [12] 2042 	mov	a,#___str_35
      00282C C0 E0            [24] 2043 	push	acc
      00282E 74 46            [12] 2044 	mov	a,#(___str_35 >> 8)
      002830 C0 E0            [24] 2045 	push	acc
      002832 74 80            [12] 2046 	mov	a,#0x80
      002834 C0 E0            [24] 2047 	push	acc
      002836 12 30 C9         [24] 2048 	lcall	_printf
      002839 15 81            [12] 2049 	dec	sp
      00283B 15 81            [12] 2050 	dec	sp
      00283D 15 81            [12] 2051 	dec	sp
                                   2052 ;	8051_i2c_eeprom.c:398: data_range_flag = 0;
      00283F 90 04 5E         [24] 2053 	mov	dptr,#_data_range_flag
      002842 E4               [12] 2054 	clr	a
      002843 F0               [24] 2055 	movx	@dptr,a
      002844 A3               [24] 2056 	inc	dptr
      002845 F0               [24] 2057 	movx	@dptr,a
                                   2058 ;	8051_i2c_eeprom.c:399: return 0;
      002846 75 82 00         [24] 2059 	mov	dpl,#0x00
      002849 22               [24] 2060 	ret
      00284A                       2061 00127$:
                                   2062 ;	8051_i2c_eeprom.c:401: return data;
      00284A 8F 82            [24] 2063 	mov	dpl,r7
                                   2064 ;	8051_i2c_eeprom.c:403: }
      00284C 22               [24] 2065 	ret
                                   2066 ;------------------------------------------------------------
                                   2067 ;Allocation info for local variables in function 'eeprom_write'
                                   2068 ;------------------------------------------------------------
                                   2069 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                   2070 ;address                   Allocated with name '_eeprom_write_address_65536_108'
                                   2071 ;i                         Allocated with name '_eeprom_write_i_131072_113'
                                   2072 ;------------------------------------------------------------
                                   2073 ;	8051_i2c_eeprom.c:419: int eeprom_write(unsigned int address, unsigned char data) 
                                   2074 ;	-----------------------------------------
                                   2075 ;	 function eeprom_write
                                   2076 ;	-----------------------------------------
      00284D                       2077 _eeprom_write:
      00284D AF 83            [24] 2078 	mov	r7,dph
      00284F E5 82            [12] 2079 	mov	a,dpl
      002851 90 04 15         [24] 2080 	mov	dptr,#_eeprom_write_address_65536_108
      002854 F0               [24] 2081 	movx	@dptr,a
      002855 EF               [12] 2082 	mov	a,r7
      002856 A3               [24] 2083 	inc	dptr
      002857 F0               [24] 2084 	movx	@dptr,a
                                   2085 ;	8051_i2c_eeprom.c:422: i2c_start();
      002858 12 2B 90         [24] 2086 	lcall	_i2c_start
                                   2087 ;	8051_i2c_eeprom.c:425: if(!i2c_write(EEPROM_ID | block | WRITE)) {
      00285B 90 04 60         [24] 2088 	mov	dptr,#_block
      00285E E0               [24] 2089 	movx	a,@dptr
      00285F FE               [12] 2090 	mov	r6,a
      002860 A3               [24] 2091 	inc	dptr
      002861 E0               [24] 2092 	movx	a,@dptr
      002862 43 06 A0         [24] 2093 	orl	ar6,#0xa0
      002865 8E 82            [24] 2094 	mov	dpl,r6
      002867 12 2A A3         [24] 2095 	lcall	_i2c_write
      00286A E5 82            [12] 2096 	mov	a,dpl
      00286C 85 83 F0         [24] 2097 	mov	b,dph
      00286F 45 F0            [12] 2098 	orl	a,b
      002871 70 1C            [24] 2099 	jnz	00102$
                                   2100 ;	8051_i2c_eeprom.c:426: printf("Error: No ACK for device address (write)\n\r");
      002873 74 56            [12] 2101 	mov	a,#___str_36
      002875 C0 E0            [24] 2102 	push	acc
      002877 74 46            [12] 2103 	mov	a,#(___str_36 >> 8)
      002879 C0 E0            [24] 2104 	push	acc
      00287B 74 80            [12] 2105 	mov	a,#0x80
      00287D C0 E0            [24] 2106 	push	acc
      00287F 12 30 C9         [24] 2107 	lcall	_printf
      002882 15 81            [12] 2108 	dec	sp
      002884 15 81            [12] 2109 	dec	sp
      002886 15 81            [12] 2110 	dec	sp
                                   2111 ;	8051_i2c_eeprom.c:427: i2c_stop();
      002888 12 2F 73         [24] 2112 	lcall	_i2c_stop
                                   2113 ;	8051_i2c_eeprom.c:428: return 0;
      00288B 90 00 00         [24] 2114 	mov	dptr,#0x0000
      00288E 22               [24] 2115 	ret
      00288F                       2116 00102$:
                                   2117 ;	8051_i2c_eeprom.c:432: if(!i2c_write((unsigned char)address)) {
      00288F 90 04 15         [24] 2118 	mov	dptr,#_eeprom_write_address_65536_108
      002892 E0               [24] 2119 	movx	a,@dptr
      002893 FE               [12] 2120 	mov	r6,a
      002894 A3               [24] 2121 	inc	dptr
      002895 E0               [24] 2122 	movx	a,@dptr
      002896 FF               [12] 2123 	mov	r7,a
      002897 8E 05            [24] 2124 	mov	ar5,r6
      002899 8D 82            [24] 2125 	mov	dpl,r5
      00289B C0 07            [24] 2126 	push	ar7
      00289D C0 06            [24] 2127 	push	ar6
      00289F 12 2A A3         [24] 2128 	lcall	_i2c_write
      0028A2 E5 82            [12] 2129 	mov	a,dpl
      0028A4 85 83 F0         [24] 2130 	mov	b,dph
      0028A7 D0 06            [24] 2131 	pop	ar6
      0028A9 D0 07            [24] 2132 	pop	ar7
      0028AB 45 F0            [12] 2133 	orl	a,b
      0028AD 70 1C            [24] 2134 	jnz	00104$
                                   2135 ;	8051_i2c_eeprom.c:433: printf("Error: No ACK for memory address\n\r");
      0028AF 74 81            [12] 2136 	mov	a,#___str_37
      0028B1 C0 E0            [24] 2137 	push	acc
      0028B3 74 46            [12] 2138 	mov	a,#(___str_37 >> 8)
      0028B5 C0 E0            [24] 2139 	push	acc
      0028B7 74 80            [12] 2140 	mov	a,#0x80
      0028B9 C0 E0            [24] 2141 	push	acc
      0028BB 12 30 C9         [24] 2142 	lcall	_printf
      0028BE 15 81            [12] 2143 	dec	sp
      0028C0 15 81            [12] 2144 	dec	sp
      0028C2 15 81            [12] 2145 	dec	sp
                                   2146 ;	8051_i2c_eeprom.c:434: i2c_stop();
      0028C4 12 2F 73         [24] 2147 	lcall	_i2c_stop
                                   2148 ;	8051_i2c_eeprom.c:435: return 0;
      0028C7 90 00 00         [24] 2149 	mov	dptr,#0x0000
      0028CA 22               [24] 2150 	ret
      0028CB                       2151 00104$:
                                   2152 ;	8051_i2c_eeprom.c:439: if(!i2c_write(data)) {
      0028CB 90 04 14         [24] 2153 	mov	dptr,#_eeprom_write_PARM_2
      0028CE E0               [24] 2154 	movx	a,@dptr
      0028CF FD               [12] 2155 	mov	r5,a
      0028D0 F5 82            [12] 2156 	mov	dpl,a
      0028D2 C0 07            [24] 2157 	push	ar7
      0028D4 C0 06            [24] 2158 	push	ar6
      0028D6 C0 05            [24] 2159 	push	ar5
      0028D8 12 2A A3         [24] 2160 	lcall	_i2c_write
      0028DB E5 82            [12] 2161 	mov	a,dpl
      0028DD 85 83 F0         [24] 2162 	mov	b,dph
      0028E0 D0 05            [24] 2163 	pop	ar5
      0028E2 D0 06            [24] 2164 	pop	ar6
      0028E4 D0 07            [24] 2165 	pop	ar7
      0028E6 45 F0            [12] 2166 	orl	a,b
      0028E8 70 1C            [24] 2167 	jnz	00106$
                                   2168 ;	8051_i2c_eeprom.c:440: printf("Error: No ACK for data\n\r");
      0028EA 74 A4            [12] 2169 	mov	a,#___str_38
      0028EC C0 E0            [24] 2170 	push	acc
      0028EE 74 46            [12] 2171 	mov	a,#(___str_38 >> 8)
      0028F0 C0 E0            [24] 2172 	push	acc
      0028F2 74 80            [12] 2173 	mov	a,#0x80
      0028F4 C0 E0            [24] 2174 	push	acc
      0028F6 12 30 C9         [24] 2175 	lcall	_printf
      0028F9 15 81            [12] 2176 	dec	sp
      0028FB 15 81            [12] 2177 	dec	sp
      0028FD 15 81            [12] 2178 	dec	sp
                                   2179 ;	8051_i2c_eeprom.c:441: i2c_stop();
      0028FF 12 2F 73         [24] 2180 	lcall	_i2c_stop
                                   2181 ;	8051_i2c_eeprom.c:442: return 0;
      002902 90 00 00         [24] 2182 	mov	dptr,#0x0000
      002905 22               [24] 2183 	ret
      002906                       2184 00106$:
                                   2185 ;	8051_i2c_eeprom.c:445: i2c_stop();
      002906 C0 07            [24] 2186 	push	ar7
      002908 C0 06            [24] 2187 	push	ar6
      00290A C0 05            [24] 2188 	push	ar5
      00290C 12 2F 73         [24] 2189 	lcall	_i2c_stop
      00290F D0 05            [24] 2190 	pop	ar5
      002911 D0 06            [24] 2191 	pop	ar6
      002913 D0 07            [24] 2192 	pop	ar7
                                   2193 ;	8051_i2c_eeprom.c:447: for(int i = 0; i<10; i++)
      002915 7B 00            [12] 2194 	mov	r3,#0x00
      002917 7C 00            [12] 2195 	mov	r4,#0x00
      002919                       2196 00109$:
      002919 C3               [12] 2197 	clr	c
      00291A EB               [12] 2198 	mov	a,r3
      00291B 94 0A            [12] 2199 	subb	a,#0x0a
      00291D EC               [12] 2200 	mov	a,r4
      00291E 64 80            [12] 2201 	xrl	a,#0x80
      002920 94 80            [12] 2202 	subb	a,#0x80
      002922 50 1E            [24] 2203 	jnc	00107$
                                   2204 ;	8051_i2c_eeprom.c:449: i2c_delay();
      002924 C0 07            [24] 2205 	push	ar7
      002926 C0 06            [24] 2206 	push	ar6
      002928 C0 05            [24] 2207 	push	ar5
      00292A C0 04            [24] 2208 	push	ar4
      00292C C0 03            [24] 2209 	push	ar3
      00292E 12 2F AC         [24] 2210 	lcall	_i2c_delay
      002931 D0 03            [24] 2211 	pop	ar3
      002933 D0 04            [24] 2212 	pop	ar4
      002935 D0 05            [24] 2213 	pop	ar5
      002937 D0 06            [24] 2214 	pop	ar6
      002939 D0 07            [24] 2215 	pop	ar7
                                   2216 ;	8051_i2c_eeprom.c:447: for(int i = 0; i<10; i++)
      00293B 0B               [12] 2217 	inc	r3
      00293C BB 00 DA         [24] 2218 	cjne	r3,#0x00,00109$
      00293F 0C               [12] 2219 	inc	r4
      002940 80 D7            [24] 2220 	sjmp	00109$
      002942                       2221 00107$:
                                   2222 ;	8051_i2c_eeprom.c:452: printf("| Writing at Address 0x%03X Data 0x%02X          |\n\r", address, data);
      002942 7C 00            [12] 2223 	mov	r4,#0x00
      002944 C0 05            [24] 2224 	push	ar5
      002946 C0 04            [24] 2225 	push	ar4
      002948 C0 06            [24] 2226 	push	ar6
      00294A C0 07            [24] 2227 	push	ar7
      00294C 74 BD            [12] 2228 	mov	a,#___str_39
      00294E C0 E0            [24] 2229 	push	acc
      002950 74 46            [12] 2230 	mov	a,#(___str_39 >> 8)
      002952 C0 E0            [24] 2231 	push	acc
      002954 74 80            [12] 2232 	mov	a,#0x80
      002956 C0 E0            [24] 2233 	push	acc
      002958 12 30 C9         [24] 2234 	lcall	_printf
      00295B E5 81            [12] 2235 	mov	a,sp
      00295D 24 F9            [12] 2236 	add	a,#0xf9
      00295F F5 81            [12] 2237 	mov	sp,a
                                   2238 ;	8051_i2c_eeprom.c:453: printf("│ Write successful!                             │\n\r");
      002961 74 F2            [12] 2239 	mov	a,#___str_40
      002963 C0 E0            [24] 2240 	push	acc
      002965 74 46            [12] 2241 	mov	a,#(___str_40 >> 8)
      002967 C0 E0            [24] 2242 	push	acc
      002969 74 80            [12] 2243 	mov	a,#0x80
      00296B C0 E0            [24] 2244 	push	acc
      00296D 12 30 C9         [24] 2245 	lcall	_printf
      002970 15 81            [12] 2246 	dec	sp
      002972 15 81            [12] 2247 	dec	sp
      002974 15 81            [12] 2248 	dec	sp
                                   2249 ;	8051_i2c_eeprom.c:454: printf("└───────────────────────────────────────────────┘\n\r");
      002976 74 2A            [12] 2250 	mov	a,#___str_41
      002978 C0 E0            [24] 2251 	push	acc
      00297A 74 47            [12] 2252 	mov	a,#(___str_41 >> 8)
      00297C C0 E0            [24] 2253 	push	acc
      00297E 74 80            [12] 2254 	mov	a,#0x80
      002980 C0 E0            [24] 2255 	push	acc
      002982 12 30 C9         [24] 2256 	lcall	_printf
      002985 15 81            [12] 2257 	dec	sp
      002987 15 81            [12] 2258 	dec	sp
      002989 15 81            [12] 2259 	dec	sp
                                   2260 ;	8051_i2c_eeprom.c:455: return 1;  // Success
      00298B 90 00 01         [24] 2261 	mov	dptr,#0x0001
                                   2262 ;	8051_i2c_eeprom.c:465: }
      00298E 22               [24] 2263 	ret
                                   2264 ;------------------------------------------------------------
                                   2265 ;Allocation info for local variables in function 'eeprom_read'
                                   2266 ;------------------------------------------------------------
                                   2267 ;address                   Allocated with name '_eeprom_read_address_65536_115'
                                   2268 ;result                    Allocated with name '_eeprom_read_result_65536_116'
                                   2269 ;------------------------------------------------------------
                                   2270 ;	8051_i2c_eeprom.c:481: int eeprom_read(unsigned int address)
                                   2271 ;	-----------------------------------------
                                   2272 ;	 function eeprom_read
                                   2273 ;	-----------------------------------------
      00298F                       2274 _eeprom_read:
      00298F AF 83            [24] 2275 	mov	r7,dph
      002991 E5 82            [12] 2276 	mov	a,dpl
      002993 90 04 17         [24] 2277 	mov	dptr,#_eeprom_read_address_65536_115
      002996 F0               [24] 2278 	movx	@dptr,a
      002997 EF               [12] 2279 	mov	a,r7
      002998 A3               [24] 2280 	inc	dptr
      002999 F0               [24] 2281 	movx	@dptr,a
                                   2282 ;	8051_i2c_eeprom.c:487: i2c_start();
      00299A 12 2B 90         [24] 2283 	lcall	_i2c_start
                                   2284 ;	8051_i2c_eeprom.c:490: if(!i2c_write(EEPROM_ID | WRITE)) {
      00299D 75 82 A0         [24] 2285 	mov	dpl,#0xa0
      0029A0 12 2A A3         [24] 2286 	lcall	_i2c_write
      0029A3 E5 82            [12] 2287 	mov	a,dpl
      0029A5 85 83 F0         [24] 2288 	mov	b,dph
      0029A8 45 F0            [12] 2289 	orl	a,b
      0029AA 70 1C            [24] 2290 	jnz	00102$
                                   2291 ;	8051_i2c_eeprom.c:491: printf("Error: No ACK for device address (write mode)\n\r");
      0029AC 74 C0            [12] 2292 	mov	a,#___str_42
      0029AE C0 E0            [24] 2293 	push	acc
      0029B0 74 47            [12] 2294 	mov	a,#(___str_42 >> 8)
      0029B2 C0 E0            [24] 2295 	push	acc
      0029B4 74 80            [12] 2296 	mov	a,#0x80
      0029B6 C0 E0            [24] 2297 	push	acc
      0029B8 12 30 C9         [24] 2298 	lcall	_printf
      0029BB 15 81            [12] 2299 	dec	sp
      0029BD 15 81            [12] 2300 	dec	sp
      0029BF 15 81            [12] 2301 	dec	sp
                                   2302 ;	8051_i2c_eeprom.c:492: i2c_stop();
      0029C1 12 2F 73         [24] 2303 	lcall	_i2c_stop
                                   2304 ;	8051_i2c_eeprom.c:493: return -1;
      0029C4 90 FF FF         [24] 2305 	mov	dptr,#0xffff
      0029C7 22               [24] 2306 	ret
      0029C8                       2307 00102$:
                                   2308 ;	8051_i2c_eeprom.c:497: if(!i2c_write((unsigned char)address)) {
      0029C8 90 04 17         [24] 2309 	mov	dptr,#_eeprom_read_address_65536_115
      0029CB E0               [24] 2310 	movx	a,@dptr
      0029CC FE               [12] 2311 	mov	r6,a
      0029CD A3               [24] 2312 	inc	dptr
      0029CE E0               [24] 2313 	movx	a,@dptr
      0029CF FF               [12] 2314 	mov	r7,a
      0029D0 8E 05            [24] 2315 	mov	ar5,r6
      0029D2 8D 82            [24] 2316 	mov	dpl,r5
      0029D4 C0 07            [24] 2317 	push	ar7
      0029D6 C0 06            [24] 2318 	push	ar6
      0029D8 12 2A A3         [24] 2319 	lcall	_i2c_write
      0029DB E5 82            [12] 2320 	mov	a,dpl
      0029DD 85 83 F0         [24] 2321 	mov	b,dph
      0029E0 D0 06            [24] 2322 	pop	ar6
      0029E2 D0 07            [24] 2323 	pop	ar7
      0029E4 45 F0            [12] 2324 	orl	a,b
      0029E6 70 1C            [24] 2325 	jnz	00104$
                                   2326 ;	8051_i2c_eeprom.c:498: printf("Error: No ACK for memory address\n\r");
      0029E8 74 81            [12] 2327 	mov	a,#___str_37
      0029EA C0 E0            [24] 2328 	push	acc
      0029EC 74 46            [12] 2329 	mov	a,#(___str_37 >> 8)
      0029EE C0 E0            [24] 2330 	push	acc
      0029F0 74 80            [12] 2331 	mov	a,#0x80
      0029F2 C0 E0            [24] 2332 	push	acc
      0029F4 12 30 C9         [24] 2333 	lcall	_printf
      0029F7 15 81            [12] 2334 	dec	sp
      0029F9 15 81            [12] 2335 	dec	sp
      0029FB 15 81            [12] 2336 	dec	sp
                                   2337 ;	8051_i2c_eeprom.c:499: i2c_stop();
      0029FD 12 2F 73         [24] 2338 	lcall	_i2c_stop
                                   2339 ;	8051_i2c_eeprom.c:500: return -1;
      002A00 90 FF FF         [24] 2340 	mov	dptr,#0xffff
      002A03 22               [24] 2341 	ret
      002A04                       2342 00104$:
                                   2343 ;	8051_i2c_eeprom.c:504: i2c_start();
      002A04 C0 07            [24] 2344 	push	ar7
      002A06 C0 06            [24] 2345 	push	ar6
      002A08 12 2B 90         [24] 2346 	lcall	_i2c_start
                                   2347 ;	8051_i2c_eeprom.c:507: if(!i2c_write(EEPROM_ID | READ)) {
      002A0B 75 82 A1         [24] 2348 	mov	dpl,#0xa1
      002A0E 12 2A A3         [24] 2349 	lcall	_i2c_write
      002A11 E5 82            [12] 2350 	mov	a,dpl
      002A13 85 83 F0         [24] 2351 	mov	b,dph
      002A16 D0 06            [24] 2352 	pop	ar6
      002A18 D0 07            [24] 2353 	pop	ar7
      002A1A 45 F0            [12] 2354 	orl	a,b
      002A1C 70 1C            [24] 2355 	jnz	00106$
                                   2356 ;	8051_i2c_eeprom.c:508: printf("Error: No ACK for device address (read mode)\n\r");
      002A1E 74 F0            [12] 2357 	mov	a,#___str_43
      002A20 C0 E0            [24] 2358 	push	acc
      002A22 74 47            [12] 2359 	mov	a,#(___str_43 >> 8)
      002A24 C0 E0            [24] 2360 	push	acc
      002A26 74 80            [12] 2361 	mov	a,#0x80
      002A28 C0 E0            [24] 2362 	push	acc
      002A2A 12 30 C9         [24] 2363 	lcall	_printf
      002A2D 15 81            [12] 2364 	dec	sp
      002A2F 15 81            [12] 2365 	dec	sp
      002A31 15 81            [12] 2366 	dec	sp
                                   2367 ;	8051_i2c_eeprom.c:509: i2c_stop();
      002A33 12 2F 73         [24] 2368 	lcall	_i2c_stop
                                   2369 ;	8051_i2c_eeprom.c:510: return -1;
      002A36 90 FF FF         [24] 2370 	mov	dptr,#0xffff
      002A39 22               [24] 2371 	ret
      002A3A                       2372 00106$:
                                   2373 ;	8051_i2c_eeprom.c:514: result = i2c_read(0);  // 0 means send NACK
      002A3A 90 00 00         [24] 2374 	mov	dptr,#0x0000
      002A3D C0 07            [24] 2375 	push	ar7
      002A3F C0 06            [24] 2376 	push	ar6
      002A41 12 2B 0B         [24] 2377 	lcall	_i2c_read
      002A44 AC 82            [24] 2378 	mov	r4,dpl
      002A46 D0 06            [24] 2379 	pop	ar6
      002A48 D0 07            [24] 2380 	pop	ar7
                                   2381 ;	8051_i2c_eeprom.c:516: printf("| 0x%03X : 0x%02X \n\r", address, result);
      002A4A 7D 00            [12] 2382 	mov	r5,#0x00
      002A4C C0 05            [24] 2383 	push	ar5
      002A4E C0 04            [24] 2384 	push	ar4
      002A50 C0 04            [24] 2385 	push	ar4
      002A52 C0 05            [24] 2386 	push	ar5
      002A54 C0 06            [24] 2387 	push	ar6
      002A56 C0 07            [24] 2388 	push	ar7
      002A58 74 1F            [12] 2389 	mov	a,#___str_44
      002A5A C0 E0            [24] 2390 	push	acc
      002A5C 74 48            [12] 2391 	mov	a,#(___str_44 >> 8)
      002A5E C0 E0            [24] 2392 	push	acc
      002A60 74 80            [12] 2393 	mov	a,#0x80
      002A62 C0 E0            [24] 2394 	push	acc
      002A64 12 30 C9         [24] 2395 	lcall	_printf
      002A67 E5 81            [12] 2396 	mov	a,sp
      002A69 24 F9            [12] 2397 	add	a,#0xf9
      002A6B F5 81            [12] 2398 	mov	sp,a
                                   2399 ;	8051_i2c_eeprom.c:517: printf("│ Read successful!                 │\n\r");
      002A6D 74 34            [12] 2400 	mov	a,#___str_45
      002A6F C0 E0            [24] 2401 	push	acc
      002A71 74 48            [12] 2402 	mov	a,#(___str_45 >> 8)
      002A73 C0 E0            [24] 2403 	push	acc
      002A75 74 80            [12] 2404 	mov	a,#0x80
      002A77 C0 E0            [24] 2405 	push	acc
      002A79 12 30 C9         [24] 2406 	lcall	_printf
      002A7C 15 81            [12] 2407 	dec	sp
      002A7E 15 81            [12] 2408 	dec	sp
      002A80 15 81            [12] 2409 	dec	sp
                                   2410 ;	8051_i2c_eeprom.c:518: printf("└───────────────────────────────────────────────┘\n\r");
      002A82 74 2A            [12] 2411 	mov	a,#___str_41
      002A84 C0 E0            [24] 2412 	push	acc
      002A86 74 47            [12] 2413 	mov	a,#(___str_41 >> 8)
      002A88 C0 E0            [24] 2414 	push	acc
      002A8A 74 80            [12] 2415 	mov	a,#0x80
      002A8C C0 E0            [24] 2416 	push	acc
      002A8E 12 30 C9         [24] 2417 	lcall	_printf
      002A91 15 81            [12] 2418 	dec	sp
      002A93 15 81            [12] 2419 	dec	sp
      002A95 15 81            [12] 2420 	dec	sp
                                   2421 ;	8051_i2c_eeprom.c:519: i2c_stop();
      002A97 12 2F 73         [24] 2422 	lcall	_i2c_stop
      002A9A D0 04            [24] 2423 	pop	ar4
      002A9C D0 05            [24] 2424 	pop	ar5
                                   2425 ;	8051_i2c_eeprom.c:520: return result;
      002A9E 8C 82            [24] 2426 	mov	dpl,r4
      002AA0 8D 83            [24] 2427 	mov	dph,r5
                                   2428 ;	8051_i2c_eeprom.c:521: }
      002AA2 22               [24] 2429 	ret
                                   2430 ;------------------------------------------------------------
                                   2431 ;Allocation info for local variables in function 'i2c_write'
                                   2432 ;------------------------------------------------------------
                                   2433 ;data                      Allocated with name '_i2c_write_data_65536_120'
                                   2434 ;i                         Allocated with name '_i2c_write_i_65536_121'
                                   2435 ;------------------------------------------------------------
                                   2436 ;	8051_i2c_eeprom.c:532: int i2c_write(unsigned char data)
                                   2437 ;	-----------------------------------------
                                   2438 ;	 function i2c_write
                                   2439 ;	-----------------------------------------
      002AA3                       2440 _i2c_write:
      002AA3 E5 82            [12] 2441 	mov	a,dpl
      002AA5 90 04 19         [24] 2442 	mov	dptr,#_i2c_write_data_65536_120
      002AA8 F0               [24] 2443 	movx	@dptr,a
                                   2444 ;	8051_i2c_eeprom.c:536: for(i=0;i<=7;i++)
      002AA9 7E 00            [12] 2445 	mov	r6,#0x00
      002AAB 7F 00            [12] 2446 	mov	r7,#0x00
      002AAD                       2447 00104$:
                                   2448 ;	8051_i2c_eeprom.c:538: SDA = (data & 0x80) ? 1 : 0;    //msb first
      002AAD 90 04 19         [24] 2449 	mov	dptr,#_i2c_write_data_65536_120
      002AB0 E0               [24] 2450 	movx	a,@dptr
      002AB1 FD               [12] 2451 	mov	r5,a
      002AB2 23               [12] 2452 	rl	a
      002AB3 54 01            [12] 2453 	anl	a,#0x01
      002AB5 24 FF            [12] 2454 	add	a,#0xff
      002AB7 92 94            [24] 2455 	mov	_P1_4,c
                                   2456 ;	8051_i2c_eeprom.c:539: i2c_delay();        // Setup time for data
      002AB9 C0 07            [24] 2457 	push	ar7
      002ABB C0 06            [24] 2458 	push	ar6
      002ABD C0 05            [24] 2459 	push	ar5
      002ABF 12 2F AC         [24] 2460 	lcall	_i2c_delay
                                   2461 ;	8051_i2c_eeprom.c:540: SCL=1;
                                   2462 ;	assignBit
      002AC2 D2 93            [12] 2463 	setb	_P1_3
                                   2464 ;	8051_i2c_eeprom.c:541: i2c_delay();        // Hold time for clock
      002AC4 12 2F AC         [24] 2465 	lcall	_i2c_delay
      002AC7 D0 05            [24] 2466 	pop	ar5
      002AC9 D0 06            [24] 2467 	pop	ar6
      002ACB D0 07            [24] 2468 	pop	ar7
                                   2469 ;	8051_i2c_eeprom.c:542: SCL=0;
                                   2470 ;	assignBit
      002ACD C2 93            [12] 2471 	clr	_P1_3
                                   2472 ;	8051_i2c_eeprom.c:543: data = data << 1;
      002ACF ED               [12] 2473 	mov	a,r5
      002AD0 2D               [12] 2474 	add	a,r5
      002AD1 90 04 19         [24] 2475 	mov	dptr,#_i2c_write_data_65536_120
      002AD4 F0               [24] 2476 	movx	@dptr,a
                                   2477 ;	8051_i2c_eeprom.c:536: for(i=0;i<=7;i++)
      002AD5 0E               [12] 2478 	inc	r6
      002AD6 BE 00 01         [24] 2479 	cjne	r6,#0x00,00121$
      002AD9 0F               [12] 2480 	inc	r7
      002ADA                       2481 00121$:
      002ADA C3               [12] 2482 	clr	c
      002ADB 74 07            [12] 2483 	mov	a,#0x07
      002ADD 9E               [12] 2484 	subb	a,r6
      002ADE E4               [12] 2485 	clr	a
      002ADF 9F               [12] 2486 	subb	a,r7
      002AE0 50 CB            [24] 2487 	jnc	00104$
                                   2488 ;	8051_i2c_eeprom.c:547: SDA = 1;            // Release SDA for slave
                                   2489 ;	assignBit
      002AE2 D2 94            [12] 2490 	setb	_P1_4
                                   2491 ;	8051_i2c_eeprom.c:548: SCL = 1;            // 9th clock pulse for ACK
                                   2492 ;	assignBit
      002AE4 D2 93            [12] 2493 	setb	_P1_3
                                   2494 ;	8051_i2c_eeprom.c:549: i2c_delay();
      002AE6 12 2F AC         [24] 2495 	lcall	_i2c_delay
                                   2496 ;	8051_i2c_eeprom.c:550: if(SDA == 1)        // If SDA is still high, no ACK received
      002AE9 30 94 19         [24] 2497 	jnb	_P1_4,00103$
                                   2498 ;	8051_i2c_eeprom.c:553: printf("ACK DID NOT ARRIVE\n\r");
      002AEC 74 5F            [12] 2499 	mov	a,#___str_46
      002AEE C0 E0            [24] 2500 	push	acc
      002AF0 74 48            [12] 2501 	mov	a,#(___str_46 >> 8)
      002AF2 C0 E0            [24] 2502 	push	acc
      002AF4 74 80            [12] 2503 	mov	a,#0x80
      002AF6 C0 E0            [24] 2504 	push	acc
      002AF8 12 30 C9         [24] 2505 	lcall	_printf
      002AFB 15 81            [12] 2506 	dec	sp
      002AFD 15 81            [12] 2507 	dec	sp
      002AFF 15 81            [12] 2508 	dec	sp
                                   2509 ;	8051_i2c_eeprom.c:554: return 0;       // Error
      002B01 90 00 00         [24] 2510 	mov	dptr,#0x0000
      002B04 22               [24] 2511 	ret
      002B05                       2512 00103$:
                                   2513 ;	8051_i2c_eeprom.c:556: SCL = 0;
                                   2514 ;	assignBit
      002B05 C2 93            [12] 2515 	clr	_P1_3
                                   2516 ;	8051_i2c_eeprom.c:558: return 1;           // Success
      002B07 90 00 01         [24] 2517 	mov	dptr,#0x0001
                                   2518 ;	8051_i2c_eeprom.c:560: }
      002B0A 22               [24] 2519 	ret
                                   2520 ;------------------------------------------------------------
                                   2521 ;Allocation info for local variables in function 'i2c_read'
                                   2522 ;------------------------------------------------------------
                                   2523 ;ACK                       Allocated with name '_i2c_read_ACK_65536_125'
                                   2524 ;buff                      Allocated with name '_i2c_read_buff_65536_126'
                                   2525 ;i                         Allocated with name '_i2c_read_i_131072_127'
                                   2526 ;------------------------------------------------------------
                                   2527 ;	8051_i2c_eeprom.c:570: int i2c_read(int ACK)
                                   2528 ;	-----------------------------------------
                                   2529 ;	 function i2c_read
                                   2530 ;	-----------------------------------------
      002B0B                       2531 _i2c_read:
      002B0B AF 83            [24] 2532 	mov	r7,dph
      002B0D E5 82            [12] 2533 	mov	a,dpl
      002B0F 90 04 1A         [24] 2534 	mov	dptr,#_i2c_read_ACK_65536_125
      002B12 F0               [24] 2535 	movx	@dptr,a
      002B13 EF               [12] 2536 	mov	a,r7
      002B14 A3               [24] 2537 	inc	dptr
      002B15 F0               [24] 2538 	movx	@dptr,a
                                   2539 ;	8051_i2c_eeprom.c:572: unsigned char buff=0;
      002B16 90 04 1C         [24] 2540 	mov	dptr,#_i2c_read_buff_65536_126
      002B19 E4               [12] 2541 	clr	a
      002B1A F0               [24] 2542 	movx	@dptr,a
                                   2543 ;	8051_i2c_eeprom.c:573: SCL = 0;
                                   2544 ;	assignBit
      002B1B C2 93            [12] 2545 	clr	_P1_3
                                   2546 ;	8051_i2c_eeprom.c:574: for(int i=0;i<8;i++)
      002B1D 7E 00            [12] 2547 	mov	r6,#0x00
      002B1F 7F 00            [12] 2548 	mov	r7,#0x00
      002B21                       2549 00103$:
      002B21 C3               [12] 2550 	clr	c
      002B22 EE               [12] 2551 	mov	a,r6
      002B23 94 08            [12] 2552 	subb	a,#0x08
      002B25 EF               [12] 2553 	mov	a,r7
      002B26 64 80            [12] 2554 	xrl	a,#0x80
      002B28 94 80            [12] 2555 	subb	a,#0x80
      002B2A 50 40            [24] 2556 	jnc	00101$
                                   2557 ;	8051_i2c_eeprom.c:576: SCL = 1;
                                   2558 ;	assignBit
      002B2C D2 93            [12] 2559 	setb	_P1_3
                                   2560 ;	8051_i2c_eeprom.c:577: i2c_delay();
      002B2E C0 07            [24] 2561 	push	ar7
      002B30 C0 06            [24] 2562 	push	ar6
      002B32 12 2F AC         [24] 2563 	lcall	_i2c_delay
      002B35 D0 06            [24] 2564 	pop	ar6
      002B37 D0 07            [24] 2565 	pop	ar7
                                   2566 ;	8051_i2c_eeprom.c:578: buff |= (SDA << (7 - i));
      002B39 A2 94            [12] 2567 	mov	c,_P1_4
      002B3B E4               [12] 2568 	clr	a
      002B3C 33               [12] 2569 	rlc	a
      002B3D FD               [12] 2570 	mov	r5,a
      002B3E 8E 04            [24] 2571 	mov	ar4,r6
      002B40 74 07            [12] 2572 	mov	a,#0x07
      002B42 C3               [12] 2573 	clr	c
      002B43 9C               [12] 2574 	subb	a,r4
      002B44 FC               [12] 2575 	mov	r4,a
      002B45 8C F0            [24] 2576 	mov	b,r4
      002B47 05 F0            [12] 2577 	inc	b
      002B49 ED               [12] 2578 	mov	a,r5
      002B4A 80 02            [24] 2579 	sjmp	00119$
      002B4C                       2580 00117$:
      002B4C 25 E0            [12] 2581 	add	a,acc
      002B4E                       2582 00119$:
      002B4E D5 F0 FB         [24] 2583 	djnz	b,00117$
      002B51 FC               [12] 2584 	mov	r4,a
      002B52 90 04 1C         [24] 2585 	mov	dptr,#_i2c_read_buff_65536_126
      002B55 E0               [24] 2586 	movx	a,@dptr
      002B56 4C               [12] 2587 	orl	a,r4
      002B57 F0               [24] 2588 	movx	@dptr,a
                                   2589 ;	8051_i2c_eeprom.c:579: i2c_delay();
      002B58 C0 07            [24] 2590 	push	ar7
      002B5A C0 06            [24] 2591 	push	ar6
      002B5C 12 2F AC         [24] 2592 	lcall	_i2c_delay
      002B5F D0 06            [24] 2593 	pop	ar6
      002B61 D0 07            [24] 2594 	pop	ar7
                                   2595 ;	8051_i2c_eeprom.c:580: SCL=0;
                                   2596 ;	assignBit
      002B63 C2 93            [12] 2597 	clr	_P1_3
                                   2598 ;	8051_i2c_eeprom.c:574: for(int i=0;i<8;i++)
      002B65 0E               [12] 2599 	inc	r6
      002B66 BE 00 B8         [24] 2600 	cjne	r6,#0x00,00103$
      002B69 0F               [12] 2601 	inc	r7
      002B6A 80 B5            [24] 2602 	sjmp	00103$
      002B6C                       2603 00101$:
                                   2604 ;	8051_i2c_eeprom.c:584: SDA = !ACK;         // ACK = 0, NACK = 1
      002B6C 90 04 1A         [24] 2605 	mov	dptr,#_i2c_read_ACK_65536_125
      002B6F E0               [24] 2606 	movx	a,@dptr
      002B70 FE               [12] 2607 	mov	r6,a
      002B71 A3               [24] 2608 	inc	dptr
      002B72 E0               [24] 2609 	movx	a,@dptr
      002B73 4E               [12] 2610 	orl	a,r6
      002B74 B4 01 00         [24] 2611 	cjne	a,#0x01,00121$
      002B77                       2612 00121$:
      002B77 E4               [12] 2613 	clr	a
      002B78 33               [12] 2614 	rlc	a
      002B79 24 FF            [12] 2615 	add	a,#0xff
      002B7B 92 94            [24] 2616 	mov	_P1_4,c
                                   2617 ;	8051_i2c_eeprom.c:585: SCL = 1;
                                   2618 ;	assignBit
      002B7D D2 93            [12] 2619 	setb	_P1_3
                                   2620 ;	8051_i2c_eeprom.c:586: i2c_delay();
      002B7F 12 2F AC         [24] 2621 	lcall	_i2c_delay
                                   2622 ;	8051_i2c_eeprom.c:587: SCL = 0;
                                   2623 ;	assignBit
      002B82 C2 93            [12] 2624 	clr	_P1_3
                                   2625 ;	8051_i2c_eeprom.c:589: return buff;
      002B84 90 04 1C         [24] 2626 	mov	dptr,#_i2c_read_buff_65536_126
      002B87 E0               [24] 2627 	movx	a,@dptr
      002B88 FF               [12] 2628 	mov	r7,a
      002B89 7E 00            [12] 2629 	mov	r6,#0x00
      002B8B 8F 82            [24] 2630 	mov	dpl,r7
      002B8D 8E 83            [24] 2631 	mov	dph,r6
                                   2632 ;	8051_i2c_eeprom.c:590: }
      002B8F 22               [24] 2633 	ret
                                   2634 ;------------------------------------------------------------
                                   2635 ;Allocation info for local variables in function 'i2c_start'
                                   2636 ;------------------------------------------------------------
                                   2637 ;	8051_i2c_eeprom.c:597: void i2c_start(void)
                                   2638 ;	-----------------------------------------
                                   2639 ;	 function i2c_start
                                   2640 ;	-----------------------------------------
      002B90                       2641 _i2c_start:
                                   2642 ;	8051_i2c_eeprom.c:599: i2c_delay();
      002B90 12 2F AC         [24] 2643 	lcall	_i2c_delay
                                   2644 ;	8051_i2c_eeprom.c:600: SDA = 1;
                                   2645 ;	assignBit
      002B93 D2 94            [12] 2646 	setb	_P1_4
                                   2647 ;	8051_i2c_eeprom.c:601: i2c_delay();
      002B95 12 2F AC         [24] 2648 	lcall	_i2c_delay
                                   2649 ;	8051_i2c_eeprom.c:602: SCL = 1;
                                   2650 ;	assignBit
      002B98 D2 93            [12] 2651 	setb	_P1_3
                                   2652 ;	8051_i2c_eeprom.c:603: i2c_delay();
      002B9A 12 2F AC         [24] 2653 	lcall	_i2c_delay
                                   2654 ;	8051_i2c_eeprom.c:604: SDA = 0;
                                   2655 ;	assignBit
      002B9D C2 94            [12] 2656 	clr	_P1_4
                                   2657 ;	8051_i2c_eeprom.c:605: i2c_delay();
      002B9F 12 2F AC         [24] 2658 	lcall	_i2c_delay
                                   2659 ;	8051_i2c_eeprom.c:606: SCL = 0;
                                   2660 ;	assignBit
      002BA2 C2 93            [12] 2661 	clr	_P1_3
                                   2662 ;	8051_i2c_eeprom.c:607: }
      002BA4 22               [24] 2663 	ret
                                   2664 ;------------------------------------------------------------
                                   2665 ;Allocation info for local variables in function 'EEPROM_hexdump'
                                   2666 ;------------------------------------------------------------
                                   2667 ;end_address               Allocated with name '_EEPROM_hexdump_PARM_2'
                                   2668 ;start_address             Allocated with name '_EEPROM_hexdump_start_address_65536_131'
                                   2669 ;num_bytes                 Allocated with name '_EEPROM_hexdump_num_bytes_65537_133'
                                   2670 ;current_address           Allocated with name '_EEPROM_hexdump_current_address_65537_133'
                                   2671 ;i                         Allocated with name '_EEPROM_hexdump_i_196609_135'
                                   2672 ;data                      Allocated with name '_EEPROM_hexdump_data_327682_141'
                                   2673 ;i                         Allocated with name '_EEPROM_hexdump_i_196609_143'
                                   2674 ;data                      Allocated with name '_EEPROM_hexdump_data_327682_146'
                                   2675 ;------------------------------------------------------------
                                   2676 ;	8051_i2c_eeprom.c:616: int EEPROM_hexdump(uint16_t start_address, uint16_t end_address) {
                                   2677 ;	-----------------------------------------
                                   2678 ;	 function EEPROM_hexdump
                                   2679 ;	-----------------------------------------
      002BA5                       2680 _EEPROM_hexdump:
      002BA5 AF 83            [24] 2681 	mov	r7,dph
      002BA7 E5 82            [12] 2682 	mov	a,dpl
      002BA9 90 04 1F         [24] 2683 	mov	dptr,#_EEPROM_hexdump_start_address_65536_131
      002BAC F0               [24] 2684 	movx	@dptr,a
      002BAD EF               [12] 2685 	mov	a,r7
      002BAE A3               [24] 2686 	inc	dptr
      002BAF F0               [24] 2687 	movx	@dptr,a
                                   2688 ;	8051_i2c_eeprom.c:618: printf("\r\n----------------------------------------------------------------\r\n");
      002BB0 74 74            [12] 2689 	mov	a,#___str_47
      002BB2 C0 E0            [24] 2690 	push	acc
      002BB4 74 48            [12] 2691 	mov	a,#(___str_47 >> 8)
      002BB6 C0 E0            [24] 2692 	push	acc
      002BB8 74 80            [12] 2693 	mov	a,#0x80
      002BBA C0 E0            [24] 2694 	push	acc
      002BBC 12 30 C9         [24] 2695 	lcall	_printf
      002BBF 15 81            [12] 2696 	dec	sp
      002BC1 15 81            [12] 2697 	dec	sp
      002BC3 15 81            [12] 2698 	dec	sp
                                   2699 ;	8051_i2c_eeprom.c:619: printf("                    EEPROM Hex Dump                               \r\n");
      002BC5 74 B9            [12] 2700 	mov	a,#___str_48
      002BC7 C0 E0            [24] 2701 	push	acc
      002BC9 74 48            [12] 2702 	mov	a,#(___str_48 >> 8)
      002BCB C0 E0            [24] 2703 	push	acc
      002BCD 74 80            [12] 2704 	mov	a,#0x80
      002BCF C0 E0            [24] 2705 	push	acc
      002BD1 12 30 C9         [24] 2706 	lcall	_printf
      002BD4 15 81            [12] 2707 	dec	sp
      002BD6 15 81            [12] 2708 	dec	sp
      002BD8 15 81            [12] 2709 	dec	sp
                                   2710 ;	8051_i2c_eeprom.c:620: printf("----------------------------------------------------------------\r\n");
      002BDA 74 FE            [12] 2711 	mov	a,#___str_49
      002BDC C0 E0            [24] 2712 	push	acc
      002BDE 74 48            [12] 2713 	mov	a,#(___str_49 >> 8)
      002BE0 C0 E0            [24] 2714 	push	acc
      002BE2 74 80            [12] 2715 	mov	a,#0x80
      002BE4 C0 E0            [24] 2716 	push	acc
      002BE6 12 30 C9         [24] 2717 	lcall	_printf
      002BE9 15 81            [12] 2718 	dec	sp
      002BEB 15 81            [12] 2719 	dec	sp
      002BED 15 81            [12] 2720 	dec	sp
                                   2721 ;	8051_i2c_eeprom.c:621: printf("     0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F\r\n");
      002BEF 74 41            [12] 2722 	mov	a,#___str_50
      002BF1 C0 E0            [24] 2723 	push	acc
      002BF3 74 49            [12] 2724 	mov	a,#(___str_50 >> 8)
      002BF5 C0 E0            [24] 2725 	push	acc
      002BF7 74 80            [12] 2726 	mov	a,#0x80
      002BF9 C0 E0            [24] 2727 	push	acc
      002BFB 12 30 C9         [24] 2728 	lcall	_printf
      002BFE 15 81            [12] 2729 	dec	sp
      002C00 15 81            [12] 2730 	dec	sp
      002C02 15 81            [12] 2731 	dec	sp
                                   2732 ;	8051_i2c_eeprom.c:625: uint16_t current_address = start_address;
      002C04 90 04 1F         [24] 2733 	mov	dptr,#_EEPROM_hexdump_start_address_65536_131
      002C07 E0               [24] 2734 	movx	a,@dptr
      002C08 FE               [12] 2735 	mov	r6,a
      002C09 A3               [24] 2736 	inc	dptr
      002C0A E0               [24] 2737 	movx	a,@dptr
      002C0B FF               [12] 2738 	mov	r7,a
      002C0C 90 04 21         [24] 2739 	mov	dptr,#_EEPROM_hexdump_current_address_65537_133
      002C0F EE               [12] 2740 	mov	a,r6
      002C10 F0               [24] 2741 	movx	@dptr,a
      002C11 EF               [12] 2742 	mov	a,r7
      002C12 A3               [24] 2743 	inc	dptr
      002C13 F0               [24] 2744 	movx	@dptr,a
                                   2745 ;	8051_i2c_eeprom.c:628: while (current_address <= end_address) {
      002C14 90 04 1D         [24] 2746 	mov	dptr,#_EEPROM_hexdump_PARM_2
      002C17 E0               [24] 2747 	movx	a,@dptr
      002C18 FE               [12] 2748 	mov	r6,a
      002C19 A3               [24] 2749 	inc	dptr
      002C1A E0               [24] 2750 	movx	a,@dptr
      002C1B FF               [12] 2751 	mov	r7,a
      002C1C                       2752 00119$:
      002C1C 90 04 21         [24] 2753 	mov	dptr,#_EEPROM_hexdump_current_address_65537_133
      002C1F E0               [24] 2754 	movx	a,@dptr
      002C20 FC               [12] 2755 	mov	r4,a
      002C21 A3               [24] 2756 	inc	dptr
      002C22 E0               [24] 2757 	movx	a,@dptr
      002C23 FD               [12] 2758 	mov	r5,a
      002C24 C3               [12] 2759 	clr	c
      002C25 EE               [12] 2760 	mov	a,r6
      002C26 9C               [12] 2761 	subb	a,r4
      002C27 EF               [12] 2762 	mov	a,r7
      002C28 9D               [12] 2763 	subb	a,r5
      002C29 50 03            [24] 2764 	jnc	00183$
      002C2B 02 2E BB         [24] 2765 	ljmp	00121$
      002C2E                       2766 00183$:
                                   2767 ;	8051_i2c_eeprom.c:630: printf("%03X: ", current_address & 0xFFF0);
      002C2E 53 04 F0         [24] 2768 	anl	ar4,#0xf0
      002C31 C0 07            [24] 2769 	push	ar7
      002C33 C0 06            [24] 2770 	push	ar6
      002C35 C0 04            [24] 2771 	push	ar4
      002C37 C0 05            [24] 2772 	push	ar5
      002C39 74 77            [12] 2773 	mov	a,#___str_51
      002C3B C0 E0            [24] 2774 	push	acc
      002C3D 74 49            [12] 2775 	mov	a,#(___str_51 >> 8)
      002C3F C0 E0            [24] 2776 	push	acc
      002C41 74 80            [12] 2777 	mov	a,#0x80
      002C43 C0 E0            [24] 2778 	push	acc
      002C45 12 30 C9         [24] 2779 	lcall	_printf
      002C48 E5 81            [12] 2780 	mov	a,sp
      002C4A 24 FB            [12] 2781 	add	a,#0xfb
      002C4C F5 81            [12] 2782 	mov	sp,a
      002C4E D0 06            [24] 2783 	pop	ar6
      002C50 D0 07            [24] 2784 	pop	ar7
                                   2785 ;	8051_i2c_eeprom.c:633: for (uint8_t i = 0; i < 16; i++) {
      002C52 7D 00            [12] 2786 	mov	r5,#0x00
      002C54                       2787 00123$:
      002C54 BD 10 00         [24] 2788 	cjne	r5,#0x10,00184$
      002C57                       2789 00184$:
      002C57 40 03            [24] 2790 	jc	00185$
      002C59 02 2D 90         [24] 2791 	ljmp	00110$
      002C5C                       2792 00185$:
                                   2793 ;	8051_i2c_eeprom.c:634: if (current_address + i <= end_address) {
      002C5C 8D 03            [24] 2794 	mov	ar3,r5
      002C5E 7C 00            [12] 2795 	mov	r4,#0x00
      002C60 90 04 21         [24] 2796 	mov	dptr,#_EEPROM_hexdump_current_address_65537_133
      002C63 E0               [24] 2797 	movx	a,@dptr
      002C64 F9               [12] 2798 	mov	r1,a
      002C65 A3               [24] 2799 	inc	dptr
      002C66 E0               [24] 2800 	movx	a,@dptr
      002C67 FA               [12] 2801 	mov	r2,a
      002C68 C0 05            [24] 2802 	push	ar5
      002C6A 89 00            [24] 2803 	mov	ar0,r1
      002C6C 8A 05            [24] 2804 	mov	ar5,r2
      002C6E EB               [12] 2805 	mov	a,r3
      002C6F 28               [12] 2806 	add	a,r0
      002C70 F8               [12] 2807 	mov	r0,a
      002C71 EC               [12] 2808 	mov	a,r4
      002C72 3D               [12] 2809 	addc	a,r5
      002C73 FD               [12] 2810 	mov	r5,a
      002C74 C3               [12] 2811 	clr	c
      002C75 EE               [12] 2812 	mov	a,r6
      002C76 98               [12] 2813 	subb	a,r0
      002C77 EF               [12] 2814 	mov	a,r7
      002C78 9D               [12] 2815 	subb	a,r5
      002C79 D0 05            [24] 2816 	pop	ar5
      002C7B 50 03            [24] 2817 	jnc	00186$
      002C7D 02 2D 6B         [24] 2818 	ljmp	00108$
      002C80                       2819 00186$:
                                   2820 ;	8051_i2c_eeprom.c:636: i2c_start();
      002C80 C0 07            [24] 2821 	push	ar7
      002C82 C0 06            [24] 2822 	push	ar6
      002C84 C0 05            [24] 2823 	push	ar5
      002C86 C0 02            [24] 2824 	push	ar2
      002C88 C0 01            [24] 2825 	push	ar1
      002C8A 12 2B 90         [24] 2826 	lcall	_i2c_start
                                   2827 ;	8051_i2c_eeprom.c:639: if (!i2c_write(EEPROM_ID | WRITE)) {
      002C8D 75 82 A0         [24] 2828 	mov	dpl,#0xa0
      002C90 12 2A A3         [24] 2829 	lcall	_i2c_write
      002C93 E5 82            [12] 2830 	mov	a,dpl
      002C95 85 83 F0         [24] 2831 	mov	b,dph
      002C98 D0 01            [24] 2832 	pop	ar1
      002C9A D0 02            [24] 2833 	pop	ar2
      002C9C D0 05            [24] 2834 	pop	ar5
      002C9E D0 06            [24] 2835 	pop	ar6
      002CA0 D0 07            [24] 2836 	pop	ar7
      002CA2 45 F0            [12] 2837 	orl	a,b
      002CA4 70 1C            [24] 2838 	jnz	00102$
                                   2839 ;	8051_i2c_eeprom.c:640: printf("Error: Device not responding\r\n");
      002CA6 74 7E            [12] 2840 	mov	a,#___str_52
      002CA8 C0 E0            [24] 2841 	push	acc
      002CAA 74 49            [12] 2842 	mov	a,#(___str_52 >> 8)
      002CAC C0 E0            [24] 2843 	push	acc
      002CAE 74 80            [12] 2844 	mov	a,#0x80
      002CB0 C0 E0            [24] 2845 	push	acc
      002CB2 12 30 C9         [24] 2846 	lcall	_printf
      002CB5 15 81            [12] 2847 	dec	sp
      002CB7 15 81            [12] 2848 	dec	sp
      002CB9 15 81            [12] 2849 	dec	sp
                                   2850 ;	8051_i2c_eeprom.c:641: i2c_stop();
      002CBB 12 2F 73         [24] 2851 	lcall	_i2c_stop
                                   2852 ;	8051_i2c_eeprom.c:642: return 0;
      002CBE 90 00 00         [24] 2853 	mov	dptr,#0x0000
      002CC1 22               [24] 2854 	ret
      002CC2                       2855 00102$:
                                   2856 ;	8051_i2c_eeprom.c:646: if (!i2c_write((unsigned char)(current_address + i))) {
      002CC2 ED               [12] 2857 	mov	a,r5
      002CC3 29               [12] 2858 	add	a,r1
      002CC4 F5 82            [12] 2859 	mov	dpl,a
      002CC6 C0 07            [24] 2860 	push	ar7
      002CC8 C0 06            [24] 2861 	push	ar6
      002CCA C0 05            [24] 2862 	push	ar5
      002CCC 12 2A A3         [24] 2863 	lcall	_i2c_write
      002CCF E5 82            [12] 2864 	mov	a,dpl
      002CD1 85 83 F0         [24] 2865 	mov	b,dph
      002CD4 D0 05            [24] 2866 	pop	ar5
      002CD6 D0 06            [24] 2867 	pop	ar6
      002CD8 D0 07            [24] 2868 	pop	ar7
      002CDA 45 F0            [12] 2869 	orl	a,b
      002CDC 70 1C            [24] 2870 	jnz	00104$
                                   2871 ;	8051_i2c_eeprom.c:647: printf("Error: Address write failed\r\n");
      002CDE 74 9D            [12] 2872 	mov	a,#___str_53
      002CE0 C0 E0            [24] 2873 	push	acc
      002CE2 74 49            [12] 2874 	mov	a,#(___str_53 >> 8)
      002CE4 C0 E0            [24] 2875 	push	acc
      002CE6 74 80            [12] 2876 	mov	a,#0x80
      002CE8 C0 E0            [24] 2877 	push	acc
      002CEA 12 30 C9         [24] 2878 	lcall	_printf
      002CED 15 81            [12] 2879 	dec	sp
      002CEF 15 81            [12] 2880 	dec	sp
      002CF1 15 81            [12] 2881 	dec	sp
                                   2882 ;	8051_i2c_eeprom.c:648: i2c_stop();
      002CF3 12 2F 73         [24] 2883 	lcall	_i2c_stop
                                   2884 ;	8051_i2c_eeprom.c:649: return 0;
      002CF6 90 00 00         [24] 2885 	mov	dptr,#0x0000
      002CF9 22               [24] 2886 	ret
      002CFA                       2887 00104$:
                                   2888 ;	8051_i2c_eeprom.c:653: i2c_start();
      002CFA C0 07            [24] 2889 	push	ar7
      002CFC C0 06            [24] 2890 	push	ar6
      002CFE C0 05            [24] 2891 	push	ar5
      002D00 12 2B 90         [24] 2892 	lcall	_i2c_start
                                   2893 ;	8051_i2c_eeprom.c:656: if (!i2c_write(EEPROM_ID | READ)) {
      002D03 75 82 A1         [24] 2894 	mov	dpl,#0xa1
      002D06 12 2A A3         [24] 2895 	lcall	_i2c_write
      002D09 E5 82            [12] 2896 	mov	a,dpl
      002D0B 85 83 F0         [24] 2897 	mov	b,dph
      002D0E D0 05            [24] 2898 	pop	ar5
      002D10 D0 06            [24] 2899 	pop	ar6
      002D12 D0 07            [24] 2900 	pop	ar7
      002D14 45 F0            [12] 2901 	orl	a,b
      002D16 70 1C            [24] 2902 	jnz	00106$
                                   2903 ;	8051_i2c_eeprom.c:657: printf("Error: Device not responding in read mode\r\n");
      002D18 74 BB            [12] 2904 	mov	a,#___str_54
      002D1A C0 E0            [24] 2905 	push	acc
      002D1C 74 49            [12] 2906 	mov	a,#(___str_54 >> 8)
      002D1E C0 E0            [24] 2907 	push	acc
      002D20 74 80            [12] 2908 	mov	a,#0x80
      002D22 C0 E0            [24] 2909 	push	acc
      002D24 12 30 C9         [24] 2910 	lcall	_printf
      002D27 15 81            [12] 2911 	dec	sp
      002D29 15 81            [12] 2912 	dec	sp
      002D2B 15 81            [12] 2913 	dec	sp
                                   2914 ;	8051_i2c_eeprom.c:658: i2c_stop();
      002D2D 12 2F 73         [24] 2915 	lcall	_i2c_stop
                                   2916 ;	8051_i2c_eeprom.c:659: return 0;
      002D30 90 00 00         [24] 2917 	mov	dptr,#0x0000
      002D33 22               [24] 2918 	ret
      002D34                       2919 00106$:
                                   2920 ;	8051_i2c_eeprom.c:663: unsigned char data = i2c_read(0);
      002D34 90 00 00         [24] 2921 	mov	dptr,#0x0000
      002D37 C0 07            [24] 2922 	push	ar7
      002D39 C0 06            [24] 2923 	push	ar6
      002D3B C0 05            [24] 2924 	push	ar5
      002D3D 12 2B 0B         [24] 2925 	lcall	_i2c_read
      002D40 AB 82            [24] 2926 	mov	r3,dpl
                                   2927 ;	8051_i2c_eeprom.c:664: printf("%02X ", data);
      002D42 7C 00            [12] 2928 	mov	r4,#0x00
      002D44 C0 03            [24] 2929 	push	ar3
      002D46 C0 04            [24] 2930 	push	ar4
      002D48 74 E7            [12] 2931 	mov	a,#___str_55
      002D4A C0 E0            [24] 2932 	push	acc
      002D4C 74 49            [12] 2933 	mov	a,#(___str_55 >> 8)
      002D4E C0 E0            [24] 2934 	push	acc
      002D50 74 80            [12] 2935 	mov	a,#0x80
      002D52 C0 E0            [24] 2936 	push	acc
      002D54 12 30 C9         [24] 2937 	lcall	_printf
      002D57 E5 81            [12] 2938 	mov	a,sp
      002D59 24 FB            [12] 2939 	add	a,#0xfb
      002D5B F5 81            [12] 2940 	mov	sp,a
                                   2941 ;	8051_i2c_eeprom.c:666: i2c_stop();
      002D5D 12 2F 73         [24] 2942 	lcall	_i2c_stop
                                   2943 ;	8051_i2c_eeprom.c:667: i2c_delay(); // Small delay between reads
      002D60 12 2F AC         [24] 2944 	lcall	_i2c_delay
      002D63 D0 05            [24] 2945 	pop	ar5
      002D65 D0 06            [24] 2946 	pop	ar6
      002D67 D0 07            [24] 2947 	pop	ar7
      002D69 80 21            [24] 2948 	sjmp	00124$
      002D6B                       2949 00108$:
                                   2950 ;	8051_i2c_eeprom.c:669: printf("   "); // Print spaces for addresses beyond end_address
      002D6B C0 07            [24] 2951 	push	ar7
      002D6D C0 06            [24] 2952 	push	ar6
      002D6F C0 05            [24] 2953 	push	ar5
      002D71 74 ED            [12] 2954 	mov	a,#___str_56
      002D73 C0 E0            [24] 2955 	push	acc
      002D75 74 49            [12] 2956 	mov	a,#(___str_56 >> 8)
      002D77 C0 E0            [24] 2957 	push	acc
      002D79 74 80            [12] 2958 	mov	a,#0x80
      002D7B C0 E0            [24] 2959 	push	acc
      002D7D 12 30 C9         [24] 2960 	lcall	_printf
      002D80 15 81            [12] 2961 	dec	sp
      002D82 15 81            [12] 2962 	dec	sp
      002D84 15 81            [12] 2963 	dec	sp
      002D86 D0 05            [24] 2964 	pop	ar5
      002D88 D0 06            [24] 2965 	pop	ar6
      002D8A D0 07            [24] 2966 	pop	ar7
      002D8C                       2967 00124$:
                                   2968 ;	8051_i2c_eeprom.c:633: for (uint8_t i = 0; i < 16; i++) {
      002D8C 0D               [12] 2969 	inc	r5
      002D8D 02 2C 54         [24] 2970 	ljmp	00123$
      002D90                       2971 00110$:
                                   2972 ;	8051_i2c_eeprom.c:674: printf(" | ");
      002D90 C0 07            [24] 2973 	push	ar7
      002D92 C0 06            [24] 2974 	push	ar6
      002D94 74 F1            [12] 2975 	mov	a,#___str_57
      002D96 C0 E0            [24] 2976 	push	acc
      002D98 74 49            [12] 2977 	mov	a,#(___str_57 >> 8)
      002D9A C0 E0            [24] 2978 	push	acc
      002D9C 74 80            [12] 2979 	mov	a,#0x80
      002D9E C0 E0            [24] 2980 	push	acc
      002DA0 12 30 C9         [24] 2981 	lcall	_printf
      002DA3 15 81            [12] 2982 	dec	sp
      002DA5 15 81            [12] 2983 	dec	sp
      002DA7 15 81            [12] 2984 	dec	sp
      002DA9 D0 06            [24] 2985 	pop	ar6
      002DAB D0 07            [24] 2986 	pop	ar7
                                   2987 ;	8051_i2c_eeprom.c:675: for (uint8_t i = 0; i < 16; i++) {
      002DAD 90 04 21         [24] 2988 	mov	dptr,#_EEPROM_hexdump_current_address_65537_133
      002DB0 E0               [24] 2989 	movx	a,@dptr
      002DB1 FC               [12] 2990 	mov	r4,a
      002DB2 A3               [24] 2991 	inc	dptr
      002DB3 E0               [24] 2992 	movx	a,@dptr
      002DB4 FD               [12] 2993 	mov	r5,a
      002DB5 7B 00            [12] 2994 	mov	r3,#0x00
      002DB7                       2995 00126$:
      002DB7 BB 10 00         [24] 2996 	cjne	r3,#0x10,00190$
      002DBA                       2997 00190$:
      002DBA 40 03            [24] 2998 	jc	00191$
      002DBC 02 2E 84         [24] 2999 	ljmp	00118$
      002DBF                       3000 00191$:
                                   3001 ;	8051_i2c_eeprom.c:676: if (current_address + i <= end_address) {
      002DBF 8B 01            [24] 3002 	mov	ar1,r3
      002DC1 7A 00            [12] 3003 	mov	r2,#0x00
      002DC3 C0 03            [24] 3004 	push	ar3
      002DC5 8C 00            [24] 3005 	mov	ar0,r4
      002DC7 8D 03            [24] 3006 	mov	ar3,r5
      002DC9 E9               [12] 3007 	mov	a,r1
      002DCA 28               [12] 3008 	add	a,r0
      002DCB F8               [12] 3009 	mov	r0,a
      002DCC EA               [12] 3010 	mov	a,r2
      002DCD 3B               [12] 3011 	addc	a,r3
      002DCE FB               [12] 3012 	mov	r3,a
      002DCF C3               [12] 3013 	clr	c
      002DD0 EE               [12] 3014 	mov	a,r6
      002DD1 98               [12] 3015 	subb	a,r0
      002DD2 EF               [12] 3016 	mov	a,r7
      002DD3 9B               [12] 3017 	subb	a,r3
      002DD4 D0 03            [24] 3018 	pop	ar3
      002DD6 50 03            [24] 3019 	jnc	00192$
      002DD8 02 2E 66         [24] 3020 	ljmp	00116$
      002DDB                       3021 00192$:
                                   3022 ;	8051_i2c_eeprom.c:678: i2c_start();
      002DDB C0 07            [24] 3023 	push	ar7
      002DDD C0 06            [24] 3024 	push	ar6
      002DDF C0 05            [24] 3025 	push	ar5
      002DE1 C0 04            [24] 3026 	push	ar4
      002DE3 C0 03            [24] 3027 	push	ar3
      002DE5 12 2B 90         [24] 3028 	lcall	_i2c_start
                                   3029 ;	8051_i2c_eeprom.c:679: i2c_write(EEPROM_ID | WRITE);
      002DE8 75 82 A0         [24] 3030 	mov	dpl,#0xa0
      002DEB 12 2A A3         [24] 3031 	lcall	_i2c_write
      002DEE D0 03            [24] 3032 	pop	ar3
      002DF0 D0 04            [24] 3033 	pop	ar4
                                   3034 ;	8051_i2c_eeprom.c:680: i2c_write((unsigned char)(current_address + i));
      002DF2 8C 02            [24] 3035 	mov	ar2,r4
      002DF4 EB               [12] 3036 	mov	a,r3
      002DF5 2A               [12] 3037 	add	a,r2
      002DF6 F5 82            [12] 3038 	mov	dpl,a
      002DF8 C0 04            [24] 3039 	push	ar4
      002DFA C0 03            [24] 3040 	push	ar3
      002DFC 12 2A A3         [24] 3041 	lcall	_i2c_write
                                   3042 ;	8051_i2c_eeprom.c:681: i2c_start();
      002DFF 12 2B 90         [24] 3043 	lcall	_i2c_start
                                   3044 ;	8051_i2c_eeprom.c:682: i2c_write(EEPROM_ID | READ);
      002E02 75 82 A1         [24] 3045 	mov	dpl,#0xa1
      002E05 12 2A A3         [24] 3046 	lcall	_i2c_write
                                   3047 ;	8051_i2c_eeprom.c:683: unsigned char data = i2c_read(0);
      002E08 90 00 00         [24] 3048 	mov	dptr,#0x0000
      002E0B 12 2B 0B         [24] 3049 	lcall	_i2c_read
      002E0E A9 82            [24] 3050 	mov	r1,dpl
                                   3051 ;	8051_i2c_eeprom.c:684: i2c_stop();
      002E10 C0 01            [24] 3052 	push	ar1
      002E12 12 2F 73         [24] 3053 	lcall	_i2c_stop
      002E15 D0 01            [24] 3054 	pop	ar1
      002E17 D0 03            [24] 3055 	pop	ar3
      002E19 D0 04            [24] 3056 	pop	ar4
      002E1B D0 05            [24] 3057 	pop	ar5
      002E1D D0 06            [24] 3058 	pop	ar6
      002E1F D0 07            [24] 3059 	pop	ar7
                                   3060 ;	8051_i2c_eeprom.c:687: if (data >= 32 && data <= 126) {
      002E21 B9 20 00         [24] 3061 	cjne	r1,#0x20,00193$
      002E24                       3062 00193$:
      002E24 40 24            [24] 3063 	jc	00112$
      002E26 E9               [12] 3064 	mov	a,r1
      002E27 24 81            [12] 3065 	add	a,#0xff - 0x7e
      002E29 40 1F            [24] 3066 	jc	00112$
                                   3067 ;	8051_i2c_eeprom.c:688: putchar(data);
      002E2B 7A 00            [12] 3068 	mov	r2,#0x00
      002E2D 89 82            [24] 3069 	mov	dpl,r1
      002E2F 8A 83            [24] 3070 	mov	dph,r2
      002E31 C0 07            [24] 3071 	push	ar7
      002E33 C0 06            [24] 3072 	push	ar6
      002E35 C0 05            [24] 3073 	push	ar5
      002E37 C0 04            [24] 3074 	push	ar4
      002E39 C0 03            [24] 3075 	push	ar3
      002E3B 12 20 65         [24] 3076 	lcall	_putchar
      002E3E D0 03            [24] 3077 	pop	ar3
      002E40 D0 04            [24] 3078 	pop	ar4
      002E42 D0 05            [24] 3079 	pop	ar5
      002E44 D0 06            [24] 3080 	pop	ar6
      002E46 D0 07            [24] 3081 	pop	ar7
      002E48 80 36            [24] 3082 	sjmp	00127$
      002E4A                       3083 00112$:
                                   3084 ;	8051_i2c_eeprom.c:690: putchar('.');
      002E4A 90 00 2E         [24] 3085 	mov	dptr,#0x002e
      002E4D C0 07            [24] 3086 	push	ar7
      002E4F C0 06            [24] 3087 	push	ar6
      002E51 C0 05            [24] 3088 	push	ar5
      002E53 C0 04            [24] 3089 	push	ar4
      002E55 C0 03            [24] 3090 	push	ar3
      002E57 12 20 65         [24] 3091 	lcall	_putchar
      002E5A D0 03            [24] 3092 	pop	ar3
      002E5C D0 04            [24] 3093 	pop	ar4
      002E5E D0 05            [24] 3094 	pop	ar5
      002E60 D0 06            [24] 3095 	pop	ar6
      002E62 D0 07            [24] 3096 	pop	ar7
      002E64 80 1A            [24] 3097 	sjmp	00127$
      002E66                       3098 00116$:
                                   3099 ;	8051_i2c_eeprom.c:693: putchar(' ');
      002E66 90 00 20         [24] 3100 	mov	dptr,#0x0020
      002E69 C0 07            [24] 3101 	push	ar7
      002E6B C0 06            [24] 3102 	push	ar6
      002E6D C0 05            [24] 3103 	push	ar5
      002E6F C0 04            [24] 3104 	push	ar4
      002E71 C0 03            [24] 3105 	push	ar3
      002E73 12 20 65         [24] 3106 	lcall	_putchar
      002E76 D0 03            [24] 3107 	pop	ar3
      002E78 D0 04            [24] 3108 	pop	ar4
      002E7A D0 05            [24] 3109 	pop	ar5
      002E7C D0 06            [24] 3110 	pop	ar6
      002E7E D0 07            [24] 3111 	pop	ar7
      002E80                       3112 00127$:
                                   3113 ;	8051_i2c_eeprom.c:675: for (uint8_t i = 0; i < 16; i++) {
      002E80 0B               [12] 3114 	inc	r3
      002E81 02 2D B7         [24] 3115 	ljmp	00126$
      002E84                       3116 00118$:
                                   3117 ;	8051_i2c_eeprom.c:697: printf("\r\n");
      002E84 C0 07            [24] 3118 	push	ar7
      002E86 C0 06            [24] 3119 	push	ar6
      002E88 74 F5            [12] 3120 	mov	a,#___str_58
      002E8A C0 E0            [24] 3121 	push	acc
      002E8C 74 49            [12] 3122 	mov	a,#(___str_58 >> 8)
      002E8E C0 E0            [24] 3123 	push	acc
      002E90 74 80            [12] 3124 	mov	a,#0x80
      002E92 C0 E0            [24] 3125 	push	acc
      002E94 12 30 C9         [24] 3126 	lcall	_printf
      002E97 15 81            [12] 3127 	dec	sp
      002E99 15 81            [12] 3128 	dec	sp
      002E9B 15 81            [12] 3129 	dec	sp
      002E9D D0 06            [24] 3130 	pop	ar6
      002E9F D0 07            [24] 3131 	pop	ar7
                                   3132 ;	8051_i2c_eeprom.c:698: current_address += 16;
      002EA1 90 04 21         [24] 3133 	mov	dptr,#_EEPROM_hexdump_current_address_65537_133
      002EA4 E0               [24] 3134 	movx	a,@dptr
      002EA5 FC               [12] 3135 	mov	r4,a
      002EA6 A3               [24] 3136 	inc	dptr
      002EA7 E0               [24] 3137 	movx	a,@dptr
      002EA8 FD               [12] 3138 	mov	r5,a
      002EA9 74 10            [12] 3139 	mov	a,#0x10
      002EAB 2C               [12] 3140 	add	a,r4
      002EAC FC               [12] 3141 	mov	r4,a
      002EAD E4               [12] 3142 	clr	a
      002EAE 3D               [12] 3143 	addc	a,r5
      002EAF FD               [12] 3144 	mov	r5,a
      002EB0 90 04 21         [24] 3145 	mov	dptr,#_EEPROM_hexdump_current_address_65537_133
      002EB3 EC               [12] 3146 	mov	a,r4
      002EB4 F0               [24] 3147 	movx	@dptr,a
      002EB5 ED               [12] 3148 	mov	a,r5
      002EB6 A3               [24] 3149 	inc	dptr
      002EB7 F0               [24] 3150 	movx	@dptr,a
      002EB8 02 2C 1C         [24] 3151 	ljmp	00119$
      002EBB                       3152 00121$:
                                   3153 ;	8051_i2c_eeprom.c:701: printf("----------------------------------------------------------------\r\n");
      002EBB 74 FE            [12] 3154 	mov	a,#___str_49
      002EBD C0 E0            [24] 3155 	push	acc
      002EBF 74 48            [12] 3156 	mov	a,#(___str_49 >> 8)
      002EC1 C0 E0            [24] 3157 	push	acc
      002EC3 74 80            [12] 3158 	mov	a,#0x80
      002EC5 C0 E0            [24] 3159 	push	acc
      002EC7 12 30 C9         [24] 3160 	lcall	_printf
      002ECA 15 81            [12] 3161 	dec	sp
      002ECC 15 81            [12] 3162 	dec	sp
      002ECE 15 81            [12] 3163 	dec	sp
                                   3164 ;	8051_i2c_eeprom.c:702: return 1;
      002ED0 90 00 01         [24] 3165 	mov	dptr,#0x0001
                                   3166 ;	8051_i2c_eeprom.c:703: }
      002ED3 22               [24] 3167 	ret
                                   3168 ;------------------------------------------------------------
                                   3169 ;Allocation info for local variables in function 'handler_EEPROM_hexdump'
                                   3170 ;------------------------------------------------------------
                                   3171 ;start_addr                Allocated with name '_handler_EEPROM_hexdump_start_addr_65537_152'
                                   3172 ;end_addr                  Allocated with name '_handler_EEPROM_hexdump_end_addr_65538_154'
                                   3173 ;------------------------------------------------------------
                                   3174 ;	8051_i2c_eeprom.c:706: void handler_EEPROM_hexdump(void) {
                                   3175 ;	-----------------------------------------
                                   3176 ;	 function handler_EEPROM_hexdump
                                   3177 ;	-----------------------------------------
      002ED4                       3178 _handler_EEPROM_hexdump:
                                   3179 ;	8051_i2c_eeprom.c:707: printf("\nEnter Start Address for HEX Dump (000-7FF):\r\n");
      002ED4 74 F8            [12] 3180 	mov	a,#___str_59
      002ED6 C0 E0            [24] 3181 	push	acc
      002ED8 74 49            [12] 3182 	mov	a,#(___str_59 >> 8)
      002EDA C0 E0            [24] 3183 	push	acc
      002EDC 74 80            [12] 3184 	mov	a,#0x80
      002EDE C0 E0            [24] 3185 	push	acc
      002EE0 12 30 C9         [24] 3186 	lcall	_printf
      002EE3 15 81            [12] 3187 	dec	sp
      002EE5 15 81            [12] 3188 	dec	sp
      002EE7 15 81            [12] 3189 	dec	sp
                                   3190 ;	8051_i2c_eeprom.c:708: uint16_t start_addr = take_address();
      002EE9 12 24 96         [24] 3191 	lcall	_take_address
      002EEC AE 82            [24] 3192 	mov	r6,dpl
      002EEE AF 83            [24] 3193 	mov	r7,dph
                                   3194 ;	8051_i2c_eeprom.c:710: if (start_addr > ADDR_MAX) {
      002EF0 8E 04            [24] 3195 	mov	ar4,r6
      002EF2 8F 05            [24] 3196 	mov	ar5,r7
      002EF4 C3               [12] 3197 	clr	c
      002EF5 74 FF            [12] 3198 	mov	a,#0xff
      002EF7 9C               [12] 3199 	subb	a,r4
      002EF8 74 07            [12] 3200 	mov	a,#0x07
      002EFA 9D               [12] 3201 	subb	a,r5
      002EFB 50 16            [24] 3202 	jnc	00102$
                                   3203 ;	8051_i2c_eeprom.c:711: printf("Invalid Start Address! Must be between 0x000 and 0x7FF\r\n");
      002EFD 74 27            [12] 3204 	mov	a,#___str_60
      002EFF C0 E0            [24] 3205 	push	acc
      002F01 74 4A            [12] 3206 	mov	a,#(___str_60 >> 8)
      002F03 C0 E0            [24] 3207 	push	acc
      002F05 74 80            [12] 3208 	mov	a,#0x80
      002F07 C0 E0            [24] 3209 	push	acc
      002F09 12 30 C9         [24] 3210 	lcall	_printf
      002F0C 15 81            [12] 3211 	dec	sp
      002F0E 15 81            [12] 3212 	dec	sp
      002F10 15 81            [12] 3213 	dec	sp
                                   3214 ;	8051_i2c_eeprom.c:712: return;
      002F12 22               [24] 3215 	ret
      002F13                       3216 00102$:
                                   3217 ;	8051_i2c_eeprom.c:715: printf("\nEnter End Address for HEX Dump (000-7FF):\r\n");
      002F13 C0 07            [24] 3218 	push	ar7
      002F15 C0 06            [24] 3219 	push	ar6
      002F17 74 60            [12] 3220 	mov	a,#___str_61
      002F19 C0 E0            [24] 3221 	push	acc
      002F1B 74 4A            [12] 3222 	mov	a,#(___str_61 >> 8)
      002F1D C0 E0            [24] 3223 	push	acc
      002F1F 74 80            [12] 3224 	mov	a,#0x80
      002F21 C0 E0            [24] 3225 	push	acc
      002F23 12 30 C9         [24] 3226 	lcall	_printf
      002F26 15 81            [12] 3227 	dec	sp
      002F28 15 81            [12] 3228 	dec	sp
      002F2A 15 81            [12] 3229 	dec	sp
                                   3230 ;	8051_i2c_eeprom.c:716: uint16_t end_addr = take_address();
      002F2C 12 24 96         [24] 3231 	lcall	_take_address
      002F2F AC 82            [24] 3232 	mov	r4,dpl
      002F31 AD 83            [24] 3233 	mov	r5,dph
      002F33 D0 06            [24] 3234 	pop	ar6
      002F35 D0 07            [24] 3235 	pop	ar7
                                   3236 ;	8051_i2c_eeprom.c:718: if (end_addr > ADDR_MAX || end_addr < start_addr) {
      002F37 8C 02            [24] 3237 	mov	ar2,r4
      002F39 8D 03            [24] 3238 	mov	ar3,r5
      002F3B C3               [12] 3239 	clr	c
      002F3C 74 FF            [12] 3240 	mov	a,#0xff
      002F3E 9A               [12] 3241 	subb	a,r2
      002F3F 74 07            [12] 3242 	mov	a,#0x07
      002F41 9B               [12] 3243 	subb	a,r3
      002F42 40 06            [24] 3244 	jc	00103$
      002F44 EC               [12] 3245 	mov	a,r4
      002F45 9E               [12] 3246 	subb	a,r6
      002F46 ED               [12] 3247 	mov	a,r5
      002F47 9F               [12] 3248 	subb	a,r7
      002F48 50 1A            [24] 3249 	jnc	00104$
      002F4A                       3250 00103$:
                                   3251 ;	8051_i2c_eeprom.c:719: printf("Invalid End Address! Must be between 0x%03X and 0x7FF\r\n", start_addr);
      002F4A C0 06            [24] 3252 	push	ar6
      002F4C C0 07            [24] 3253 	push	ar7
      002F4E 74 8D            [12] 3254 	mov	a,#___str_62
      002F50 C0 E0            [24] 3255 	push	acc
      002F52 74 4A            [12] 3256 	mov	a,#(___str_62 >> 8)
      002F54 C0 E0            [24] 3257 	push	acc
      002F56 74 80            [12] 3258 	mov	a,#0x80
      002F58 C0 E0            [24] 3259 	push	acc
      002F5A 12 30 C9         [24] 3260 	lcall	_printf
      002F5D E5 81            [12] 3261 	mov	a,sp
      002F5F 24 FB            [12] 3262 	add	a,#0xfb
      002F61 F5 81            [12] 3263 	mov	sp,a
                                   3264 ;	8051_i2c_eeprom.c:720: return;
      002F63 22               [24] 3265 	ret
      002F64                       3266 00104$:
                                   3267 ;	8051_i2c_eeprom.c:723: EEPROM_hexdump(start_addr, end_addr);
      002F64 90 04 1D         [24] 3268 	mov	dptr,#_EEPROM_hexdump_PARM_2
      002F67 EC               [12] 3269 	mov	a,r4
      002F68 F0               [24] 3270 	movx	@dptr,a
      002F69 ED               [12] 3271 	mov	a,r5
      002F6A A3               [24] 3272 	inc	dptr
      002F6B F0               [24] 3273 	movx	@dptr,a
      002F6C 8E 82            [24] 3274 	mov	dpl,r6
      002F6E 8F 83            [24] 3275 	mov	dph,r7
                                   3276 ;	8051_i2c_eeprom.c:724: }
      002F70 02 2B A5         [24] 3277 	ljmp	_EEPROM_hexdump
                                   3278 ;------------------------------------------------------------
                                   3279 ;Allocation info for local variables in function 'i2c_stop'
                                   3280 ;------------------------------------------------------------
                                   3281 ;	8051_i2c_eeprom.c:856: void i2c_stop(void)
                                   3282 ;	-----------------------------------------
                                   3283 ;	 function i2c_stop
                                   3284 ;	-----------------------------------------
      002F73                       3285 _i2c_stop:
                                   3286 ;	8051_i2c_eeprom.c:858: SDA = 0;
                                   3287 ;	assignBit
      002F73 C2 94            [12] 3288 	clr	_P1_4
                                   3289 ;	8051_i2c_eeprom.c:859: i2c_delay();
      002F75 12 2F AC         [24] 3290 	lcall	_i2c_delay
                                   3291 ;	8051_i2c_eeprom.c:860: SCL = 1;
                                   3292 ;	assignBit
      002F78 D2 93            [12] 3293 	setb	_P1_3
                                   3294 ;	8051_i2c_eeprom.c:861: i2c_delay();
      002F7A 12 2F AC         [24] 3295 	lcall	_i2c_delay
                                   3296 ;	8051_i2c_eeprom.c:862: SDA = 1; 
                                   3297 ;	assignBit
      002F7D D2 94            [12] 3298 	setb	_P1_4
                                   3299 ;	8051_i2c_eeprom.c:863: }
      002F7F 22               [24] 3300 	ret
                                   3301 ;------------------------------------------------------------
                                   3302 ;Allocation info for local variables in function 'eeprom_reset'
                                   3303 ;------------------------------------------------------------
                                   3304 ;i                         Allocated with name '_eeprom_reset_i_131072_159'
                                   3305 ;------------------------------------------------------------
                                   3306 ;	8051_i2c_eeprom.c:873: void eeprom_reset()
                                   3307 ;	-----------------------------------------
                                   3308 ;	 function eeprom_reset
                                   3309 ;	-----------------------------------------
      002F80                       3310 _eeprom_reset:
                                   3311 ;	8051_i2c_eeprom.c:875: i2c_start();
      002F80 12 2B 90         [24] 3312 	lcall	_i2c_start
                                   3313 ;	8051_i2c_eeprom.c:876: SDA = 0;
                                   3314 ;	assignBit
      002F83 C2 94            [12] 3315 	clr	_P1_4
                                   3316 ;	8051_i2c_eeprom.c:877: SDA = 1;
                                   3317 ;	assignBit
      002F85 D2 94            [12] 3318 	setb	_P1_4
                                   3319 ;	8051_i2c_eeprom.c:878: for(int i = 0; i<10; i++)
      002F87 7E 00            [12] 3320 	mov	r6,#0x00
      002F89 7F 00            [12] 3321 	mov	r7,#0x00
      002F8B                       3322 00103$:
      002F8B C3               [12] 3323 	clr	c
      002F8C EE               [12] 3324 	mov	a,r6
      002F8D 94 0A            [12] 3325 	subb	a,#0x0a
      002F8F EF               [12] 3326 	mov	a,r7
      002F90 64 80            [12] 3327 	xrl	a,#0x80
      002F92 94 80            [12] 3328 	subb	a,#0x80
      002F94 50 0B            [24] 3329 	jnc	00101$
                                   3330 ;	8051_i2c_eeprom.c:880: SCL = 0;
                                   3331 ;	assignBit
      002F96 C2 93            [12] 3332 	clr	_P1_3
                                   3333 ;	8051_i2c_eeprom.c:881: SCL = 1;
                                   3334 ;	assignBit
      002F98 D2 93            [12] 3335 	setb	_P1_3
                                   3336 ;	8051_i2c_eeprom.c:878: for(int i = 0; i<10; i++)
      002F9A 0E               [12] 3337 	inc	r6
      002F9B BE 00 ED         [24] 3338 	cjne	r6,#0x00,00103$
      002F9E 0F               [12] 3339 	inc	r7
      002F9F 80 EA            [24] 3340 	sjmp	00103$
      002FA1                       3341 00101$:
                                   3342 ;	8051_i2c_eeprom.c:883: i2c_start();
      002FA1 12 2B 90         [24] 3343 	lcall	_i2c_start
                                   3344 ;	8051_i2c_eeprom.c:884: SDA = 0;
                                   3345 ;	assignBit
      002FA4 C2 94            [12] 3346 	clr	_P1_4
                                   3347 ;	8051_i2c_eeprom.c:885: i2c_stop();
      002FA6 12 2F 73         [24] 3348 	lcall	_i2c_stop
                                   3349 ;	8051_i2c_eeprom.c:886: SDA = 1;
                                   3350 ;	assignBit
      002FA9 D2 94            [12] 3351 	setb	_P1_4
                                   3352 ;	8051_i2c_eeprom.c:887: }
      002FAB 22               [24] 3353 	ret
                                   3354 ;------------------------------------------------------------
                                   3355 ;Allocation info for local variables in function 'i2c_delay'
                                   3356 ;------------------------------------------------------------
                                   3357 ;i                         Allocated with name '_i2c_delay_i_131072_162'
                                   3358 ;------------------------------------------------------------
                                   3359 ;	8051_i2c_eeprom.c:896: void i2c_delay() 
                                   3360 ;	-----------------------------------------
                                   3361 ;	 function i2c_delay
                                   3362 ;	-----------------------------------------
      002FAC                       3363 _i2c_delay:
                                   3364 ;	8051_i2c_eeprom.c:904: for(int i = 0; i<500; i++);
      002FAC 7E 00            [12] 3365 	mov	r6,#0x00
      002FAE 7F 00            [12] 3366 	mov	r7,#0x00
      002FB0                       3367 00103$:
      002FB0 C3               [12] 3368 	clr	c
      002FB1 EE               [12] 3369 	mov	a,r6
      002FB2 94 F4            [12] 3370 	subb	a,#0xf4
      002FB4 EF               [12] 3371 	mov	a,r7
      002FB5 64 80            [12] 3372 	xrl	a,#0x80
      002FB7 94 81            [12] 3373 	subb	a,#0x81
      002FB9 50 07            [24] 3374 	jnc	00105$
      002FBB 0E               [12] 3375 	inc	r6
      002FBC BE 00 F1         [24] 3376 	cjne	r6,#0x00,00103$
      002FBF 0F               [12] 3377 	inc	r7
      002FC0 80 EE            [24] 3378 	sjmp	00103$
      002FC2                       3379 00105$:
                                   3380 ;	8051_i2c_eeprom.c:905: }
      002FC2 22               [24] 3381 	ret
                                   3382 ;------------------------------------------------------------
                                   3383 ;Allocation info for local variables in function 'test_function'
                                   3384 ;------------------------------------------------------------
                                   3385 ;test_data                 Allocated with name '_test_function_test_data_65537_164'
                                   3386 ;address                   Allocated with name '_test_function_address_65537_164'
                                   3387 ;i                         Allocated with name '_test_function_i_131073_165'
                                   3388 ;read_data                 Allocated with name '_test_function_read_data_65538_167'
                                   3389 ;------------------------------------------------------------
                                   3390 ;	8051_i2c_eeprom.c:907: void test_function()
                                   3391 ;	-----------------------------------------
                                   3392 ;	 function test_function
                                   3393 ;	-----------------------------------------
      002FC3                       3394 _test_function:
                                   3395 ;	8051_i2c_eeprom.c:909: i2c_start();
      002FC3 12 2B 90         [24] 3396 	lcall	_i2c_start
                                   3397 ;	8051_i2c_eeprom.c:910: i2c_delay();
      002FC6 12 2F AC         [24] 3398 	lcall	_i2c_delay
                                   3399 ;	8051_i2c_eeprom.c:916: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      002FC9 74 02            [12] 3400 	mov	a,#0x02
      002FCB C0 E0            [24] 3401 	push	acc
      002FCD E4               [12] 3402 	clr	a
      002FCE C0 E0            [24] 3403 	push	acc
      002FD0 74 26            [12] 3404 	mov	a,#0x26
      002FD2 C0 E0            [24] 3405 	push	acc
      002FD4 E4               [12] 3406 	clr	a
      002FD5 C0 E0            [24] 3407 	push	acc
      002FD7 74 C5            [12] 3408 	mov	a,#___str_63
      002FD9 C0 E0            [24] 3409 	push	acc
      002FDB 74 4A            [12] 3410 	mov	a,#(___str_63 >> 8)
      002FDD C0 E0            [24] 3411 	push	acc
      002FDF 74 80            [12] 3412 	mov	a,#0x80
      002FE1 C0 E0            [24] 3413 	push	acc
      002FE3 12 30 C9         [24] 3414 	lcall	_printf
      002FE6 E5 81            [12] 3415 	mov	a,sp
      002FE8 24 F9            [12] 3416 	add	a,#0xf9
      002FEA F5 81            [12] 3417 	mov	sp,a
                                   3418 ;	8051_i2c_eeprom.c:917: eeprom_write(address, test_data);
      002FEC 90 04 14         [24] 3419 	mov	dptr,#_eeprom_write_PARM_2
      002FEF 74 26            [12] 3420 	mov	a,#0x26
      002FF1 F0               [24] 3421 	movx	@dptr,a
      002FF2 90 00 02         [24] 3422 	mov	dptr,#0x0002
      002FF5 12 28 4D         [24] 3423 	lcall	_eeprom_write
                                   3424 ;	8051_i2c_eeprom.c:918: i2c_stop();
      002FF8 12 2F 73         [24] 3425 	lcall	_i2c_stop
                                   3426 ;	8051_i2c_eeprom.c:920: for(int i = 0; i<100; i++)
      002FFB 7E 00            [12] 3427 	mov	r6,#0x00
      002FFD 7F 00            [12] 3428 	mov	r7,#0x00
      002FFF                       3429 00106$:
      002FFF C3               [12] 3430 	clr	c
      003000 EE               [12] 3431 	mov	a,r6
      003001 94 64            [12] 3432 	subb	a,#0x64
      003003 EF               [12] 3433 	mov	a,r7
      003004 64 80            [12] 3434 	xrl	a,#0x80
      003006 94 80            [12] 3435 	subb	a,#0x80
      003008 50 12            [24] 3436 	jnc	00101$
                                   3437 ;	8051_i2c_eeprom.c:922: i2c_delay();
      00300A C0 07            [24] 3438 	push	ar7
      00300C C0 06            [24] 3439 	push	ar6
      00300E 12 2F AC         [24] 3440 	lcall	_i2c_delay
      003011 D0 06            [24] 3441 	pop	ar6
      003013 D0 07            [24] 3442 	pop	ar7
                                   3443 ;	8051_i2c_eeprom.c:920: for(int i = 0; i<100; i++)
      003015 0E               [12] 3444 	inc	r6
      003016 BE 00 E6         [24] 3445 	cjne	r6,#0x00,00106$
      003019 0F               [12] 3446 	inc	r7
      00301A 80 E3            [24] 3447 	sjmp	00106$
      00301C                       3448 00101$:
                                   3449 ;	8051_i2c_eeprom.c:926: unsigned char read_data = eeprom_read(address);
      00301C 90 00 02         [24] 3450 	mov	dptr,#0x0002
      00301F 12 29 8F         [24] 3451 	lcall	_eeprom_read
      003022 AE 82            [24] 3452 	mov	r6,dpl
                                   3453 ;	8051_i2c_eeprom.c:927: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      003024 8E 05            [24] 3454 	mov	ar5,r6
      003026 7F 00            [12] 3455 	mov	r7,#0x00
      003028 C0 06            [24] 3456 	push	ar6
      00302A C0 05            [24] 3457 	push	ar5
      00302C C0 07            [24] 3458 	push	ar7
      00302E 74 02            [12] 3459 	mov	a,#0x02
      003030 C0 E0            [24] 3460 	push	acc
      003032 E4               [12] 3461 	clr	a
      003033 C0 E0            [24] 3462 	push	acc
      003035 74 ED            [12] 3463 	mov	a,#___str_64
      003037 C0 E0            [24] 3464 	push	acc
      003039 74 4A            [12] 3465 	mov	a,#(___str_64 >> 8)
      00303B C0 E0            [24] 3466 	push	acc
      00303D 74 80            [12] 3467 	mov	a,#0x80
      00303F C0 E0            [24] 3468 	push	acc
      003041 12 30 C9         [24] 3469 	lcall	_printf
      003044 E5 81            [12] 3470 	mov	a,sp
      003046 24 F9            [12] 3471 	add	a,#0xf9
      003048 F5 81            [12] 3472 	mov	sp,a
      00304A D0 06            [24] 3473 	pop	ar6
                                   3474 ;	8051_i2c_eeprom.c:930: if(read_data == test_data) {
      00304C BE 26 16         [24] 3475 	cjne	r6,#0x26,00103$
                                   3476 ;	8051_i2c_eeprom.c:931: printf("MATCH - Write/Read successful!\n\r");
      00304F 74 15            [12] 3477 	mov	a,#___str_65
      003051 C0 E0            [24] 3478 	push	acc
      003053 74 4B            [12] 3479 	mov	a,#(___str_65 >> 8)
      003055 C0 E0            [24] 3480 	push	acc
      003057 74 80            [12] 3481 	mov	a,#0x80
      003059 C0 E0            [24] 3482 	push	acc
      00305B 12 30 C9         [24] 3483 	lcall	_printf
      00305E 15 81            [12] 3484 	dec	sp
      003060 15 81            [12] 3485 	dec	sp
      003062 15 81            [12] 3486 	dec	sp
      003064 22               [24] 3487 	ret
      003065                       3488 00103$:
                                   3489 ;	8051_i2c_eeprom.c:933: printf("ERROR - Data mismatch!\n\r");
      003065 74 36            [12] 3490 	mov	a,#___str_66
      003067 C0 E0            [24] 3491 	push	acc
      003069 74 4B            [12] 3492 	mov	a,#(___str_66 >> 8)
      00306B C0 E0            [24] 3493 	push	acc
      00306D 74 80            [12] 3494 	mov	a,#0x80
      00306F C0 E0            [24] 3495 	push	acc
      003071 12 30 C9         [24] 3496 	lcall	_printf
      003074 15 81            [12] 3497 	dec	sp
      003076 15 81            [12] 3498 	dec	sp
      003078 15 81            [12] 3499 	dec	sp
                                   3500 ;	8051_i2c_eeprom.c:937: }
      00307A 22               [24] 3501 	ret
                                   3502 	.area CSEG    (CODE)
                                   3503 	.area CONST   (CODE)
                                   3504 	.area CONST   (CODE)
      003B2B                       3505 ___str_0:
      003B2B 0A                    3506 	.db 0x0a
      003B2C E2                    3507 	.db 0xe2
      003B2D 95                    3508 	.db 0x95
      003B2E 94                    3509 	.db 0x94
      003B2F E2                    3510 	.db 0xe2
      003B30 95                    3511 	.db 0x95
      003B31 90                    3512 	.db 0x90
      003B32 E2                    3513 	.db 0xe2
      003B33 95                    3514 	.db 0x95
      003B34 90                    3515 	.db 0x90
      003B35 E2                    3516 	.db 0xe2
      003B36 95                    3517 	.db 0x95
      003B37 90                    3518 	.db 0x90
      003B38 E2                    3519 	.db 0xe2
      003B39 95                    3520 	.db 0x95
      003B3A 90                    3521 	.db 0x90
      003B3B E2                    3522 	.db 0xe2
      003B3C 95                    3523 	.db 0x95
      003B3D 90                    3524 	.db 0x90
      003B3E E2                    3525 	.db 0xe2
      003B3F 95                    3526 	.db 0x95
      003B40 90                    3527 	.db 0x90
      003B41 E2                    3528 	.db 0xe2
      003B42 95                    3529 	.db 0x95
      003B43 90                    3530 	.db 0x90
      003B44 E2                    3531 	.db 0xe2
      003B45 95                    3532 	.db 0x95
      003B46 90                    3533 	.db 0x90
      003B47 E2                    3534 	.db 0xe2
      003B48 95                    3535 	.db 0x95
      003B49 90                    3536 	.db 0x90
      003B4A E2                    3537 	.db 0xe2
      003B4B 95                    3538 	.db 0x95
      003B4C 90                    3539 	.db 0x90
      003B4D E2                    3540 	.db 0xe2
      003B4E 95                    3541 	.db 0x95
      003B4F 90                    3542 	.db 0x90
      003B50 E2                    3543 	.db 0xe2
      003B51 95                    3544 	.db 0x95
      003B52 90                    3545 	.db 0x90
      003B53 E2                    3546 	.db 0xe2
      003B54 95                    3547 	.db 0x95
      003B55 90                    3548 	.db 0x90
      003B56 E2                    3549 	.db 0xe2
      003B57 95                    3550 	.db 0x95
      003B58 90                    3551 	.db 0x90
      003B59 E2                    3552 	.db 0xe2
      003B5A 95                    3553 	.db 0x95
      003B5B 90                    3554 	.db 0x90
      003B5C E2                    3555 	.db 0xe2
      003B5D 95                    3556 	.db 0x95
      003B5E 90                    3557 	.db 0x90
      003B5F E2                    3558 	.db 0xe2
      003B60 95                    3559 	.db 0x95
      003B61 90                    3560 	.db 0x90
      003B62 E2                    3561 	.db 0xe2
      003B63 95                    3562 	.db 0x95
      003B64 90                    3563 	.db 0x90
      003B65 E2                    3564 	.db 0xe2
      003B66 95                    3565 	.db 0x95
      003B67 90                    3566 	.db 0x90
      003B68 E2                    3567 	.db 0xe2
      003B69 95                    3568 	.db 0x95
      003B6A 90                    3569 	.db 0x90
      003B6B E2                    3570 	.db 0xe2
      003B6C 95                    3571 	.db 0x95
      003B6D 90                    3572 	.db 0x90
      003B6E E2                    3573 	.db 0xe2
      003B6F 95                    3574 	.db 0x95
      003B70 90                    3575 	.db 0x90
      003B71 E2                    3576 	.db 0xe2
      003B72 95                    3577 	.db 0x95
      003B73 90                    3578 	.db 0x90
      003B74 E2                    3579 	.db 0xe2
      003B75 95                    3580 	.db 0x95
      003B76 90                    3581 	.db 0x90
      003B77 E2                    3582 	.db 0xe2
      003B78 95                    3583 	.db 0x95
      003B79 90                    3584 	.db 0x90
      003B7A E2                    3585 	.db 0xe2
      003B7B 95                    3586 	.db 0x95
      003B7C 90                    3587 	.db 0x90
      003B7D E2                    3588 	.db 0xe2
      003B7E 95                    3589 	.db 0x95
      003B7F 90                    3590 	.db 0x90
      003B80 E2                    3591 	.db 0xe2
      003B81 95                    3592 	.db 0x95
      003B82 90                    3593 	.db 0x90
      003B83 E2                    3594 	.db 0xe2
      003B84 95                    3595 	.db 0x95
      003B85 90                    3596 	.db 0x90
      003B86 E2                    3597 	.db 0xe2
      003B87 95                    3598 	.db 0x95
      003B88 90                    3599 	.db 0x90
      003B89 E2                    3600 	.db 0xe2
      003B8A 95                    3601 	.db 0x95
      003B8B 90                    3602 	.db 0x90
      003B8C E2                    3603 	.db 0xe2
      003B8D 95                    3604 	.db 0x95
      003B8E 90                    3605 	.db 0x90
      003B8F E2                    3606 	.db 0xe2
      003B90 95                    3607 	.db 0x95
      003B91 90                    3608 	.db 0x90
      003B92 E2                    3609 	.db 0xe2
      003B93 95                    3610 	.db 0x95
      003B94 90                    3611 	.db 0x90
      003B95 E2                    3612 	.db 0xe2
      003B96 95                    3613 	.db 0x95
      003B97 90                    3614 	.db 0x90
      003B98 E2                    3615 	.db 0xe2
      003B99 95                    3616 	.db 0x95
      003B9A 90                    3617 	.db 0x90
      003B9B E2                    3618 	.db 0xe2
      003B9C 95                    3619 	.db 0x95
      003B9D 90                    3620 	.db 0x90
      003B9E E2                    3621 	.db 0xe2
      003B9F 95                    3622 	.db 0x95
      003BA0 90                    3623 	.db 0x90
      003BA1 E2                    3624 	.db 0xe2
      003BA2 95                    3625 	.db 0x95
      003BA3 90                    3626 	.db 0x90
      003BA4 E2                    3627 	.db 0xe2
      003BA5 95                    3628 	.db 0x95
      003BA6 90                    3629 	.db 0x90
      003BA7 E2                    3630 	.db 0xe2
      003BA8 95                    3631 	.db 0x95
      003BA9 90                    3632 	.db 0x90
      003BAA E2                    3633 	.db 0xe2
      003BAB 95                    3634 	.db 0x95
      003BAC 90                    3635 	.db 0x90
      003BAD E2                    3636 	.db 0xe2
      003BAE 95                    3637 	.db 0x95
      003BAF 90                    3638 	.db 0x90
      003BB0 E2                    3639 	.db 0xe2
      003BB1 95                    3640 	.db 0x95
      003BB2 90                    3641 	.db 0x90
      003BB3 E2                    3642 	.db 0xe2
      003BB4 95                    3643 	.db 0x95
      003BB5 90                    3644 	.db 0x90
      003BB6 E2                    3645 	.db 0xe2
      003BB7 95                    3646 	.db 0x95
      003BB8 90                    3647 	.db 0x90
      003BB9 E2                    3648 	.db 0xe2
      003BBA 95                    3649 	.db 0x95
      003BBB 90                    3650 	.db 0x90
      003BBC E2                    3651 	.db 0xe2
      003BBD 95                    3652 	.db 0x95
      003BBE 90                    3653 	.db 0x90
      003BBF E2                    3654 	.db 0xe2
      003BC0 95                    3655 	.db 0x95
      003BC1 90                    3656 	.db 0x90
      003BC2 E2                    3657 	.db 0xe2
      003BC3 95                    3658 	.db 0x95
      003BC4 90                    3659 	.db 0x90
      003BC5 E2                    3660 	.db 0xe2
      003BC6 95                    3661 	.db 0x95
      003BC7 90                    3662 	.db 0x90
      003BC8 E2                    3663 	.db 0xe2
      003BC9 95                    3664 	.db 0x95
      003BCA 90                    3665 	.db 0x90
      003BCB E2                    3666 	.db 0xe2
      003BCC 95                    3667 	.db 0x95
      003BCD 90                    3668 	.db 0x90
      003BCE E2                    3669 	.db 0xe2
      003BCF 95                    3670 	.db 0x95
      003BD0 90                    3671 	.db 0x90
      003BD1 E2                    3672 	.db 0xe2
      003BD2 95                    3673 	.db 0x95
      003BD3 90                    3674 	.db 0x90
      003BD4 E2                    3675 	.db 0xe2
      003BD5 95                    3676 	.db 0x95
      003BD6 90                    3677 	.db 0x90
      003BD7 E2                    3678 	.db 0xe2
      003BD8 95                    3679 	.db 0x95
      003BD9 97                    3680 	.db 0x97
      003BDA 0A                    3681 	.db 0x0a
      003BDB 0D                    3682 	.db 0x0d
      003BDC 00                    3683 	.db 0x00
                                   3684 	.area CSEG    (CODE)
                                   3685 	.area CONST   (CODE)
      003BDD                       3686 ___str_1:
      003BDD E2                    3687 	.db 0xe2
      003BDE 95                    3688 	.db 0x95
      003BDF 91                    3689 	.db 0x91
      003BE0 20 20 20 20 20 20 20  3690 	.ascii "           I2C Memory Management System v1.0            "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
      003C18 E2                    3691 	.db 0xe2
      003C19 95                    3692 	.db 0x95
      003C1A 91                    3693 	.db 0x91
      003C1B 0A                    3694 	.db 0x0a
      003C1C 0D                    3695 	.db 0x0d
      003C1D 00                    3696 	.db 0x00
                                   3697 	.area CSEG    (CODE)
                                   3698 	.area CONST   (CODE)
      003C1E                       3699 ___str_2:
      003C1E E2                    3700 	.db 0xe2
      003C1F 95                    3701 	.db 0x95
      003C20 9A                    3702 	.db 0x9a
      003C21 E2                    3703 	.db 0xe2
      003C22 95                    3704 	.db 0x95
      003C23 90                    3705 	.db 0x90
      003C24 E2                    3706 	.db 0xe2
      003C25 95                    3707 	.db 0x95
      003C26 90                    3708 	.db 0x90
      003C27 E2                    3709 	.db 0xe2
      003C28 95                    3710 	.db 0x95
      003C29 90                    3711 	.db 0x90
      003C2A E2                    3712 	.db 0xe2
      003C2B 95                    3713 	.db 0x95
      003C2C 90                    3714 	.db 0x90
      003C2D E2                    3715 	.db 0xe2
      003C2E 95                    3716 	.db 0x95
      003C2F 90                    3717 	.db 0x90
      003C30 E2                    3718 	.db 0xe2
      003C31 95                    3719 	.db 0x95
      003C32 90                    3720 	.db 0x90
      003C33 E2                    3721 	.db 0xe2
      003C34 95                    3722 	.db 0x95
      003C35 90                    3723 	.db 0x90
      003C36 E2                    3724 	.db 0xe2
      003C37 95                    3725 	.db 0x95
      003C38 90                    3726 	.db 0x90
      003C39 E2                    3727 	.db 0xe2
      003C3A 95                    3728 	.db 0x95
      003C3B 90                    3729 	.db 0x90
      003C3C E2                    3730 	.db 0xe2
      003C3D 95                    3731 	.db 0x95
      003C3E 90                    3732 	.db 0x90
      003C3F E2                    3733 	.db 0xe2
      003C40 95                    3734 	.db 0x95
      003C41 90                    3735 	.db 0x90
      003C42 E2                    3736 	.db 0xe2
      003C43 95                    3737 	.db 0x95
      003C44 90                    3738 	.db 0x90
      003C45 E2                    3739 	.db 0xe2
      003C46 95                    3740 	.db 0x95
      003C47 90                    3741 	.db 0x90
      003C48 E2                    3742 	.db 0xe2
      003C49 95                    3743 	.db 0x95
      003C4A 90                    3744 	.db 0x90
      003C4B E2                    3745 	.db 0xe2
      003C4C 95                    3746 	.db 0x95
      003C4D 90                    3747 	.db 0x90
      003C4E E2                    3748 	.db 0xe2
      003C4F 95                    3749 	.db 0x95
      003C50 90                    3750 	.db 0x90
      003C51 E2                    3751 	.db 0xe2
      003C52 95                    3752 	.db 0x95
      003C53 90                    3753 	.db 0x90
      003C54 E2                    3754 	.db 0xe2
      003C55 95                    3755 	.db 0x95
      003C56 90                    3756 	.db 0x90
      003C57 E2                    3757 	.db 0xe2
      003C58 95                    3758 	.db 0x95
      003C59 90                    3759 	.db 0x90
      003C5A E2                    3760 	.db 0xe2
      003C5B 95                    3761 	.db 0x95
      003C5C 90                    3762 	.db 0x90
      003C5D E2                    3763 	.db 0xe2
      003C5E 95                    3764 	.db 0x95
      003C5F 90                    3765 	.db 0x90
      003C60 E2                    3766 	.db 0xe2
      003C61 95                    3767 	.db 0x95
      003C62 90                    3768 	.db 0x90
      003C63 E2                    3769 	.db 0xe2
      003C64 95                    3770 	.db 0x95
      003C65 90                    3771 	.db 0x90
      003C66 E2                    3772 	.db 0xe2
      003C67 95                    3773 	.db 0x95
      003C68 90                    3774 	.db 0x90
      003C69 E2                    3775 	.db 0xe2
      003C6A 95                    3776 	.db 0x95
      003C6B 90                    3777 	.db 0x90
      003C6C E2                    3778 	.db 0xe2
      003C6D 95                    3779 	.db 0x95
      003C6E 90                    3780 	.db 0x90
      003C6F E2                    3781 	.db 0xe2
      003C70 95                    3782 	.db 0x95
      003C71 90                    3783 	.db 0x90
      003C72 E2                    3784 	.db 0xe2
      003C73 95                    3785 	.db 0x95
      003C74 90                    3786 	.db 0x90
      003C75 E2                    3787 	.db 0xe2
      003C76 95                    3788 	.db 0x95
      003C77 90                    3789 	.db 0x90
      003C78 E2                    3790 	.db 0xe2
      003C79 95                    3791 	.db 0x95
      003C7A 90                    3792 	.db 0x90
      003C7B E2                    3793 	.db 0xe2
      003C7C 95                    3794 	.db 0x95
      003C7D 90                    3795 	.db 0x90
      003C7E E2                    3796 	.db 0xe2
      003C7F 95                    3797 	.db 0x95
      003C80 90                    3798 	.db 0x90
      003C81 E2                    3799 	.db 0xe2
      003C82 95                    3800 	.db 0x95
      003C83 90                    3801 	.db 0x90
      003C84 E2                    3802 	.db 0xe2
      003C85 95                    3803 	.db 0x95
      003C86 90                    3804 	.db 0x90
      003C87 E2                    3805 	.db 0xe2
      003C88 95                    3806 	.db 0x95
      003C89 90                    3807 	.db 0x90
      003C8A E2                    3808 	.db 0xe2
      003C8B 95                    3809 	.db 0x95
      003C8C 90                    3810 	.db 0x90
      003C8D E2                    3811 	.db 0xe2
      003C8E 95                    3812 	.db 0x95
      003C8F 90                    3813 	.db 0x90
      003C90 E2                    3814 	.db 0xe2
      003C91 95                    3815 	.db 0x95
      003C92 90                    3816 	.db 0x90
      003C93 E2                    3817 	.db 0xe2
      003C94 95                    3818 	.db 0x95
      003C95 90                    3819 	.db 0x90
      003C96 E2                    3820 	.db 0xe2
      003C97 95                    3821 	.db 0x95
      003C98 90                    3822 	.db 0x90
      003C99 E2                    3823 	.db 0xe2
      003C9A 95                    3824 	.db 0x95
      003C9B 90                    3825 	.db 0x90
      003C9C E2                    3826 	.db 0xe2
      003C9D 95                    3827 	.db 0x95
      003C9E 90                    3828 	.db 0x90
      003C9F E2                    3829 	.db 0xe2
      003CA0 95                    3830 	.db 0x95
      003CA1 90                    3831 	.db 0x90
      003CA2 E2                    3832 	.db 0xe2
      003CA3 95                    3833 	.db 0x95
      003CA4 90                    3834 	.db 0x90
      003CA5 E2                    3835 	.db 0xe2
      003CA6 95                    3836 	.db 0x95
      003CA7 90                    3837 	.db 0x90
      003CA8 E2                    3838 	.db 0xe2
      003CA9 95                    3839 	.db 0x95
      003CAA 90                    3840 	.db 0x90
      003CAB E2                    3841 	.db 0xe2
      003CAC 95                    3842 	.db 0x95
      003CAD 90                    3843 	.db 0x90
      003CAE E2                    3844 	.db 0xe2
      003CAF 95                    3845 	.db 0x95
      003CB0 90                    3846 	.db 0x90
      003CB1 E2                    3847 	.db 0xe2
      003CB2 95                    3848 	.db 0x95
      003CB3 90                    3849 	.db 0x90
      003CB4 E2                    3850 	.db 0xe2
      003CB5 95                    3851 	.db 0x95
      003CB6 90                    3852 	.db 0x90
      003CB7 E2                    3853 	.db 0xe2
      003CB8 95                    3854 	.db 0x95
      003CB9 90                    3855 	.db 0x90
      003CBA E2                    3856 	.db 0xe2
      003CBB 95                    3857 	.db 0x95
      003CBC 90                    3858 	.db 0x90
      003CBD E2                    3859 	.db 0xe2
      003CBE 95                    3860 	.db 0x95
      003CBF 90                    3861 	.db 0x90
      003CC0 E2                    3862 	.db 0xe2
      003CC1 95                    3863 	.db 0x95
      003CC2 90                    3864 	.db 0x90
      003CC3 E2                    3865 	.db 0xe2
      003CC4 95                    3866 	.db 0x95
      003CC5 90                    3867 	.db 0x90
      003CC6 E2                    3868 	.db 0xe2
      003CC7 95                    3869 	.db 0x95
      003CC8 90                    3870 	.db 0x90
      003CC9 E2                    3871 	.db 0xe2
      003CCA 95                    3872 	.db 0x95
      003CCB 9D                    3873 	.db 0x9d
      003CCC 0A                    3874 	.db 0x0a
      003CCD 0D                    3875 	.db 0x0d
      003CCE 00                    3876 	.db 0x00
                                   3877 	.area CSEG    (CODE)
                                   3878 	.area CONST   (CODE)
      003CCF                       3879 ___str_3:
      003CCF 0A                    3880 	.db 0x0a
      003CD0 0D                    3881 	.db 0x0d
      003CD1 E2                    3882 	.db 0xe2
      003CD2 94                    3883 	.db 0x94
      003CD3 8C                    3884 	.db 0x8c
      003CD4 E2                    3885 	.db 0xe2
      003CD5 94                    3886 	.db 0x94
      003CD6 80                    3887 	.db 0x80
      003CD7 E2                    3888 	.db 0xe2
      003CD8 94                    3889 	.db 0x94
      003CD9 80                    3890 	.db 0x80
      003CDA E2                    3891 	.db 0xe2
      003CDB 94                    3892 	.db 0x94
      003CDC 80                    3893 	.db 0x80
      003CDD E2                    3894 	.db 0xe2
      003CDE 94                    3895 	.db 0x94
      003CDF 80                    3896 	.db 0x80
      003CE0 E2                    3897 	.db 0xe2
      003CE1 94                    3898 	.db 0x94
      003CE2 80                    3899 	.db 0x80
      003CE3 E2                    3900 	.db 0xe2
      003CE4 94                    3901 	.db 0x94
      003CE5 80                    3902 	.db 0x80
      003CE6 E2                    3903 	.db 0xe2
      003CE7 94                    3904 	.db 0x94
      003CE8 80                    3905 	.db 0x80
      003CE9 E2                    3906 	.db 0xe2
      003CEA 94                    3907 	.db 0x94
      003CEB 80                    3908 	.db 0x80
      003CEC E2                    3909 	.db 0xe2
      003CED 94                    3910 	.db 0x94
      003CEE 80                    3911 	.db 0x80
      003CEF E2                    3912 	.db 0xe2
      003CF0 94                    3913 	.db 0x94
      003CF1 80                    3914 	.db 0x80
      003CF2 E2                    3915 	.db 0xe2
      003CF3 94                    3916 	.db 0x94
      003CF4 80                    3917 	.db 0x80
      003CF5 E2                    3918 	.db 0xe2
      003CF6 94                    3919 	.db 0x94
      003CF7 80                    3920 	.db 0x80
      003CF8 E2                    3921 	.db 0xe2
      003CF9 94                    3922 	.db 0x94
      003CFA AC                    3923 	.db 0xac
      003CFB E2                    3924 	.db 0xe2
      003CFC 94                    3925 	.db 0x94
      003CFD 80                    3926 	.db 0x80
      003CFE E2                    3927 	.db 0xe2
      003CFF 94                    3928 	.db 0x94
      003D00 80                    3929 	.db 0x80
      003D01 E2                    3930 	.db 0xe2
      003D02 94                    3931 	.db 0x94
      003D03 80                    3932 	.db 0x80
      003D04 E2                    3933 	.db 0xe2
      003D05 94                    3934 	.db 0x94
      003D06 80                    3935 	.db 0x80
      003D07 E2                    3936 	.db 0xe2
      003D08 94                    3937 	.db 0x94
      003D09 80                    3938 	.db 0x80
      003D0A E2                    3939 	.db 0xe2
      003D0B 94                    3940 	.db 0x94
      003D0C 80                    3941 	.db 0x80
      003D0D E2                    3942 	.db 0xe2
      003D0E 94                    3943 	.db 0x94
      003D0F 80                    3944 	.db 0x80
      003D10 E2                    3945 	.db 0xe2
      003D11 94                    3946 	.db 0x94
      003D12 80                    3947 	.db 0x80
      003D13 E2                    3948 	.db 0xe2
      003D14 94                    3949 	.db 0x94
      003D15 80                    3950 	.db 0x80
      003D16 E2                    3951 	.db 0xe2
      003D17 94                    3952 	.db 0x94
      003D18 80                    3953 	.db 0x80
      003D19 E2                    3954 	.db 0xe2
      003D1A 94                    3955 	.db 0x94
      003D1B 80                    3956 	.db 0x80
      003D1C E2                    3957 	.db 0xe2
      003D1D 94                    3958 	.db 0x94
      003D1E 80                    3959 	.db 0x80
      003D1F E2                    3960 	.db 0xe2
      003D20 94                    3961 	.db 0x94
      003D21 80                    3962 	.db 0x80
      003D22 E2                    3963 	.db 0xe2
      003D23 94                    3964 	.db 0x94
      003D24 80                    3965 	.db 0x80
      003D25 E2                    3966 	.db 0xe2
      003D26 94                    3967 	.db 0x94
      003D27 80                    3968 	.db 0x80
      003D28 E2                    3969 	.db 0xe2
      003D29 94                    3970 	.db 0x94
      003D2A 80                    3971 	.db 0x80
      003D2B E2                    3972 	.db 0xe2
      003D2C 94                    3973 	.db 0x94
      003D2D 80                    3974 	.db 0x80
      003D2E E2                    3975 	.db 0xe2
      003D2F 94                    3976 	.db 0x94
      003D30 80                    3977 	.db 0x80
      003D31 E2                    3978 	.db 0xe2
      003D32 94                    3979 	.db 0x94
      003D33 80                    3980 	.db 0x80
      003D34 E2                    3981 	.db 0xe2
      003D35 94                    3982 	.db 0x94
      003D36 80                    3983 	.db 0x80
      003D37 E2                    3984 	.db 0xe2
      003D38 94                    3985 	.db 0x94
      003D39 80                    3986 	.db 0x80
      003D3A E2                    3987 	.db 0xe2
      003D3B 94                    3988 	.db 0x94
      003D3C 80                    3989 	.db 0x80
      003D3D E2                    3990 	.db 0xe2
      003D3E 94                    3991 	.db 0x94
      003D3F 80                    3992 	.db 0x80
      003D40 E2                    3993 	.db 0xe2
      003D41 94                    3994 	.db 0x94
      003D42 80                    3995 	.db 0x80
      003D43 E2                    3996 	.db 0xe2
      003D44 94                    3997 	.db 0x94
      003D45 80                    3998 	.db 0x80
      003D46 E2                    3999 	.db 0xe2
      003D47 94                    4000 	.db 0x94
      003D48 80                    4001 	.db 0x80
      003D49 E2                    4002 	.db 0xe2
      003D4A 94                    4003 	.db 0x94
      003D4B 80                    4004 	.db 0x80
      003D4C E2                    4005 	.db 0xe2
      003D4D 94                    4006 	.db 0x94
      003D4E 80                    4007 	.db 0x80
      003D4F E2                    4008 	.db 0xe2
      003D50 94                    4009 	.db 0x94
      003D51 80                    4010 	.db 0x80
      003D52 E2                    4011 	.db 0xe2
      003D53 94                    4012 	.db 0x94
      003D54 80                    4013 	.db 0x80
      003D55 E2                    4014 	.db 0xe2
      003D56 94                    4015 	.db 0x94
      003D57 80                    4016 	.db 0x80
      003D58 E2                    4017 	.db 0xe2
      003D59 94                    4018 	.db 0x94
      003D5A 80                    4019 	.db 0x80
      003D5B E2                    4020 	.db 0xe2
      003D5C 94                    4021 	.db 0x94
      003D5D 80                    4022 	.db 0x80
      003D5E E2                    4023 	.db 0xe2
      003D5F 94                    4024 	.db 0x94
      003D60 80                    4025 	.db 0x80
      003D61 E2                    4026 	.db 0xe2
      003D62 94                    4027 	.db 0x94
      003D63 80                    4028 	.db 0x80
      003D64 E2                    4029 	.db 0xe2
      003D65 94                    4030 	.db 0x94
      003D66 80                    4031 	.db 0x80
      003D67 E2                    4032 	.db 0xe2
      003D68 94                    4033 	.db 0x94
      003D69 80                    4034 	.db 0x80
      003D6A E2                    4035 	.db 0xe2
      003D6B 94                    4036 	.db 0x94
      003D6C 80                    4037 	.db 0x80
      003D6D E2                    4038 	.db 0xe2
      003D6E 94                    4039 	.db 0x94
      003D6F 80                    4040 	.db 0x80
      003D70 E2                    4041 	.db 0xe2
      003D71 94                    4042 	.db 0x94
      003D72 80                    4043 	.db 0x80
      003D73 E2                    4044 	.db 0xe2
      003D74 94                    4045 	.db 0x94
      003D75 80                    4046 	.db 0x80
      003D76 E2                    4047 	.db 0xe2
      003D77 94                    4048 	.db 0x94
      003D78 80                    4049 	.db 0x80
      003D79 E2                    4050 	.db 0xe2
      003D7A 94                    4051 	.db 0x94
      003D7B 80                    4052 	.db 0x80
      003D7C E2                    4053 	.db 0xe2
      003D7D 94                    4054 	.db 0x94
      003D7E 80                    4055 	.db 0x80
      003D7F E2                    4056 	.db 0xe2
      003D80 94                    4057 	.db 0x94
      003D81 90                    4058 	.db 0x90
      003D82 0A                    4059 	.db 0x0a
      003D83 0D                    4060 	.db 0x0d
      003D84 00                    4061 	.db 0x00
                                   4062 	.area CSEG    (CODE)
                                   4063 	.area CONST   (CODE)
      003D85                       4064 ___str_4:
      003D85 E2                    4065 	.db 0xe2
      003D86 94                    4066 	.db 0x94
      003D87 82                    4067 	.db 0x82
      003D88 20 20 43 6F 6D 6D 61  4068 	.ascii "  Command   "
             6E 64 20 20 20
      003D94 E2                    4069 	.db 0xe2
      003D95 94                    4070 	.db 0x94
      003D96 82                    4071 	.db 0x82
      003D97 20 20 20 20 20 20 20  4072 	.ascii "               Description                  "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      003DC3 E2                    4073 	.db 0xe2
      003DC4 94                    4074 	.db 0x94
      003DC5 82                    4075 	.db 0x82
      003DC6 0A                    4076 	.db 0x0a
      003DC7 0D                    4077 	.db 0x0d
      003DC8 00                    4078 	.db 0x00
                                   4079 	.area CSEG    (CODE)
                                   4080 	.area CONST   (CODE)
      003DC9                       4081 ___str_5:
      003DC9 E2                    4082 	.db 0xe2
      003DCA 94                    4083 	.db 0x94
      003DCB 9C                    4084 	.db 0x9c
      003DCC E2                    4085 	.db 0xe2
      003DCD 94                    4086 	.db 0x94
      003DCE 80                    4087 	.db 0x80
      003DCF E2                    4088 	.db 0xe2
      003DD0 94                    4089 	.db 0x94
      003DD1 80                    4090 	.db 0x80
      003DD2 E2                    4091 	.db 0xe2
      003DD3 94                    4092 	.db 0x94
      003DD4 80                    4093 	.db 0x80
      003DD5 E2                    4094 	.db 0xe2
      003DD6 94                    4095 	.db 0x94
      003DD7 80                    4096 	.db 0x80
      003DD8 E2                    4097 	.db 0xe2
      003DD9 94                    4098 	.db 0x94
      003DDA 80                    4099 	.db 0x80
      003DDB E2                    4100 	.db 0xe2
      003DDC 94                    4101 	.db 0x94
      003DDD 80                    4102 	.db 0x80
      003DDE E2                    4103 	.db 0xe2
      003DDF 94                    4104 	.db 0x94
      003DE0 80                    4105 	.db 0x80
      003DE1 E2                    4106 	.db 0xe2
      003DE2 94                    4107 	.db 0x94
      003DE3 80                    4108 	.db 0x80
      003DE4 E2                    4109 	.db 0xe2
      003DE5 94                    4110 	.db 0x94
      003DE6 80                    4111 	.db 0x80
      003DE7 E2                    4112 	.db 0xe2
      003DE8 94                    4113 	.db 0x94
      003DE9 80                    4114 	.db 0x80
      003DEA E2                    4115 	.db 0xe2
      003DEB 94                    4116 	.db 0x94
      003DEC 80                    4117 	.db 0x80
      003DED E2                    4118 	.db 0xe2
      003DEE 94                    4119 	.db 0x94
      003DEF 80                    4120 	.db 0x80
      003DF0 E2                    4121 	.db 0xe2
      003DF1 94                    4122 	.db 0x94
      003DF2 BC                    4123 	.db 0xbc
      003DF3 E2                    4124 	.db 0xe2
      003DF4 94                    4125 	.db 0x94
      003DF5 80                    4126 	.db 0x80
      003DF6 E2                    4127 	.db 0xe2
      003DF7 94                    4128 	.db 0x94
      003DF8 80                    4129 	.db 0x80
      003DF9 E2                    4130 	.db 0xe2
      003DFA 94                    4131 	.db 0x94
      003DFB 80                    4132 	.db 0x80
      003DFC E2                    4133 	.db 0xe2
      003DFD 94                    4134 	.db 0x94
      003DFE 80                    4135 	.db 0x80
      003DFF E2                    4136 	.db 0xe2
      003E00 94                    4137 	.db 0x94
      003E01 80                    4138 	.db 0x80
      003E02 E2                    4139 	.db 0xe2
      003E03 94                    4140 	.db 0x94
      003E04 80                    4141 	.db 0x80
      003E05 E2                    4142 	.db 0xe2
      003E06 94                    4143 	.db 0x94
      003E07 80                    4144 	.db 0x80
      003E08 E2                    4145 	.db 0xe2
      003E09 94                    4146 	.db 0x94
      003E0A 80                    4147 	.db 0x80
      003E0B E2                    4148 	.db 0xe2
      003E0C 94                    4149 	.db 0x94
      003E0D 80                    4150 	.db 0x80
      003E0E E2                    4151 	.db 0xe2
      003E0F 94                    4152 	.db 0x94
      003E10 80                    4153 	.db 0x80
      003E11 E2                    4154 	.db 0xe2
      003E12 94                    4155 	.db 0x94
      003E13 80                    4156 	.db 0x80
      003E14 E2                    4157 	.db 0xe2
      003E15 94                    4158 	.db 0x94
      003E16 80                    4159 	.db 0x80
      003E17 E2                    4160 	.db 0xe2
      003E18 94                    4161 	.db 0x94
      003E19 80                    4162 	.db 0x80
      003E1A E2                    4163 	.db 0xe2
      003E1B 94                    4164 	.db 0x94
      003E1C 80                    4165 	.db 0x80
      003E1D E2                    4166 	.db 0xe2
      003E1E 94                    4167 	.db 0x94
      003E1F 80                    4168 	.db 0x80
      003E20 E2                    4169 	.db 0xe2
      003E21 94                    4170 	.db 0x94
      003E22 80                    4171 	.db 0x80
      003E23 E2                    4172 	.db 0xe2
      003E24 94                    4173 	.db 0x94
      003E25 80                    4174 	.db 0x80
      003E26 E2                    4175 	.db 0xe2
      003E27 94                    4176 	.db 0x94
      003E28 80                    4177 	.db 0x80
      003E29 E2                    4178 	.db 0xe2
      003E2A 94                    4179 	.db 0x94
      003E2B 80                    4180 	.db 0x80
      003E2C E2                    4181 	.db 0xe2
      003E2D 94                    4182 	.db 0x94
      003E2E 80                    4183 	.db 0x80
      003E2F E2                    4184 	.db 0xe2
      003E30 94                    4185 	.db 0x94
      003E31 80                    4186 	.db 0x80
      003E32 E2                    4187 	.db 0xe2
      003E33 94                    4188 	.db 0x94
      003E34 80                    4189 	.db 0x80
      003E35 E2                    4190 	.db 0xe2
      003E36 94                    4191 	.db 0x94
      003E37 80                    4192 	.db 0x80
      003E38 E2                    4193 	.db 0xe2
      003E39 94                    4194 	.db 0x94
      003E3A 80                    4195 	.db 0x80
      003E3B E2                    4196 	.db 0xe2
      003E3C 94                    4197 	.db 0x94
      003E3D 80                    4198 	.db 0x80
      003E3E E2                    4199 	.db 0xe2
      003E3F 94                    4200 	.db 0x94
      003E40 80                    4201 	.db 0x80
      003E41 E2                    4202 	.db 0xe2
      003E42 94                    4203 	.db 0x94
      003E43 80                    4204 	.db 0x80
      003E44 E2                    4205 	.db 0xe2
      003E45 94                    4206 	.db 0x94
      003E46 80                    4207 	.db 0x80
      003E47 E2                    4208 	.db 0xe2
      003E48 94                    4209 	.db 0x94
      003E49 80                    4210 	.db 0x80
      003E4A E2                    4211 	.db 0xe2
      003E4B 94                    4212 	.db 0x94
      003E4C 80                    4213 	.db 0x80
      003E4D E2                    4214 	.db 0xe2
      003E4E 94                    4215 	.db 0x94
      003E4F 80                    4216 	.db 0x80
      003E50 E2                    4217 	.db 0xe2
      003E51 94                    4218 	.db 0x94
      003E52 80                    4219 	.db 0x80
      003E53 E2                    4220 	.db 0xe2
      003E54 94                    4221 	.db 0x94
      003E55 80                    4222 	.db 0x80
      003E56 E2                    4223 	.db 0xe2
      003E57 94                    4224 	.db 0x94
      003E58 80                    4225 	.db 0x80
      003E59 E2                    4226 	.db 0xe2
      003E5A 94                    4227 	.db 0x94
      003E5B 80                    4228 	.db 0x80
      003E5C E2                    4229 	.db 0xe2
      003E5D 94                    4230 	.db 0x94
      003E5E 80                    4231 	.db 0x80
      003E5F E2                    4232 	.db 0xe2
      003E60 94                    4233 	.db 0x94
      003E61 80                    4234 	.db 0x80
      003E62 E2                    4235 	.db 0xe2
      003E63 94                    4236 	.db 0x94
      003E64 80                    4237 	.db 0x80
      003E65 E2                    4238 	.db 0xe2
      003E66 94                    4239 	.db 0x94
      003E67 80                    4240 	.db 0x80
      003E68 E2                    4241 	.db 0xe2
      003E69 94                    4242 	.db 0x94
      003E6A 80                    4243 	.db 0x80
      003E6B E2                    4244 	.db 0xe2
      003E6C 94                    4245 	.db 0x94
      003E6D 80                    4246 	.db 0x80
      003E6E E2                    4247 	.db 0xe2
      003E6F 94                    4248 	.db 0x94
      003E70 80                    4249 	.db 0x80
      003E71 E2                    4250 	.db 0xe2
      003E72 94                    4251 	.db 0x94
      003E73 80                    4252 	.db 0x80
      003E74 E2                    4253 	.db 0xe2
      003E75 94                    4254 	.db 0x94
      003E76 80                    4255 	.db 0x80
      003E77 E2                    4256 	.db 0xe2
      003E78 94                    4257 	.db 0x94
      003E79 A4                    4258 	.db 0xa4
      003E7A 0A                    4259 	.db 0x0a
      003E7B 0D                    4260 	.db 0x0d
      003E7C 00                    4261 	.db 0x00
                                   4262 	.area CSEG    (CODE)
                                   4263 	.area CONST   (CODE)
      003E7D                       4264 ___str_6:
      003E7D E2                    4265 	.db 0xe2
      003E7E 94                    4266 	.db 0x94
      003E7F 82                    4267 	.db 0x82
      003E80 20 20 20 20 20 52 20  4268 	.ascii "     R      "
             20 20 20 20 20
      003E8C E2                    4269 	.db 0xe2
      003E8D 94                    4270 	.db 0x94
      003E8E 82                    4271 	.db 0x82
      003E8F 20 52 65 61 64 20 66  4272 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      003EBB E2                    4273 	.db 0xe2
      003EBC 94                    4274 	.db 0x94
      003EBD 82                    4275 	.db 0x82
      003EBE 0A                    4276 	.db 0x0a
      003EBF 0D                    4277 	.db 0x0d
      003EC0 00                    4278 	.db 0x00
                                   4279 	.area CSEG    (CODE)
                                   4280 	.area CONST   (CODE)
      003EC1                       4281 ___str_7:
      003EC1 E2                    4282 	.db 0xe2
      003EC2 94                    4283 	.db 0x94
      003EC3 82                    4284 	.db 0x82
      003EC4 20 20 20 20 20 57 20  4285 	.ascii "     W      "
             20 20 20 20 20
      003ED0 E2                    4286 	.db 0xe2
      003ED1 94                    4287 	.db 0x94
      003ED2 82                    4288 	.db 0x82
      003ED3 20 57 72 69 74 65 20  4289 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      003EFF E2                    4290 	.db 0xe2
      003F00 94                    4291 	.db 0x94
      003F01 82                    4292 	.db 0x82
      003F02 0A                    4293 	.db 0x0a
      003F03 0D                    4294 	.db 0x0d
      003F04 00                    4295 	.db 0x00
                                   4296 	.area CSEG    (CODE)
                                   4297 	.area CONST   (CODE)
      003F05                       4298 ___str_8:
      003F05 E2                    4299 	.db 0xe2
      003F06 94                    4300 	.db 0x94
      003F07 82                    4301 	.db 0x82
      003F08 20 20 20 20 20 48 20  4302 	.ascii "     H      "
             20 20 20 20 20
      003F14 E2                    4303 	.db 0xe2
      003F15 94                    4304 	.db 0x94
      003F16 82                    4305 	.db 0x82
      003F17 20 44 69 73 70 6C 61  4306 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      003F43 E2                    4307 	.db 0xe2
      003F44 94                    4308 	.db 0x94
      003F45 82                    4309 	.db 0x82
      003F46 0A                    4310 	.db 0x0a
      003F47 0D                    4311 	.db 0x0d
      003F48 00                    4312 	.db 0x00
                                   4313 	.area CSEG    (CODE)
                                   4314 	.area CONST   (CODE)
      003F49                       4315 ___str_9:
      003F49 E2                    4316 	.db 0xe2
      003F4A 94                    4317 	.db 0x94
      003F4B 82                    4318 	.db 0x82
      003F4C 20 20 20 20 20 58 20  4319 	.ascii "     X      "
             20 20 20 20 20
      003F58 E2                    4320 	.db 0xe2
      003F59 94                    4321 	.db 0x94
      003F5A 82                    4322 	.db 0x82
      003F5B 20 52 65 73 65 74 20  4323 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      003F87 E2                    4324 	.db 0xe2
      003F88 94                    4325 	.db 0x94
      003F89 82                    4326 	.db 0x82
      003F8A 0A                    4327 	.db 0x0a
      003F8B 0D                    4328 	.db 0x0d
      003F8C 00                    4329 	.db 0x00
                                   4330 	.area CSEG    (CODE)
                                   4331 	.area CONST   (CODE)
      003F8D                       4332 ___str_10:
      003F8D E2                    4333 	.db 0xe2
      003F8E 94                    4334 	.db 0x94
      003F8F 82                    4335 	.db 0x82
      003F90 20 20 20 20 20 3F 20  4336 	.ascii "     ?      "
             20 20 20 20 20
      003F9C E2                    4337 	.db 0xe2
      003F9D 94                    4338 	.db 0x94
      003F9E 82                    4339 	.db 0x82
      003F9F 20 44 69 73 70 6C 61  4340 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      003FCB E2                    4341 	.db 0xe2
      003FCC 94                    4342 	.db 0x94
      003FCD 82                    4343 	.db 0x82
      003FCE 0A                    4344 	.db 0x0a
      003FCF 0D                    4345 	.db 0x0d
      003FD0 00                    4346 	.db 0x00
                                   4347 	.area CSEG    (CODE)
                                   4348 	.area CONST   (CODE)
      003FD1                       4349 ___str_11:
      003FD1 E2                    4350 	.db 0xe2
      003FD2 94                    4351 	.db 0x94
      003FD3 82                    4352 	.db 0x82
      003FD4 20 20 20 20 20 49 20  4353 	.ascii "     I      "
             20 20 20 20 20
      003FE0 E2                    4354 	.db 0xe2
      003FE1 94                    4355 	.db 0x94
      003FE2 82                    4356 	.db 0x82
      003FE3 20 49 4F 20 45 78 70  4357 	.ascii " IO Expander Mode                           "
             61 6E 64 65 72 20 4D
             6F 64 65 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      00400F E2                    4358 	.db 0xe2
      004010 94                    4359 	.db 0x94
      004011 82                    4360 	.db 0x82
      004012 0A                    4361 	.db 0x0a
      004013 0D                    4362 	.db 0x0d
      004014 00                    4363 	.db 0x00
                                   4364 	.area CSEG    (CODE)
                                   4365 	.area CONST   (CODE)
      004015                       4366 ___str_12:
      004015 E2                    4367 	.db 0xe2
      004016 94                    4368 	.db 0x94
      004017 82                    4369 	.db 0x82
      004018 20 20 20 20 20 4C 20  4370 	.ascii "     L      "
             20 20 20 20 20
      004024 E2                    4371 	.db 0xe2
      004025 94                    4372 	.db 0x94
      004026 82                    4373 	.db 0x82
      004027 20 45 78 69 74 20 49  4374 	.ascii " Exit IO Expander Mode                      "
             4F 20 45 78 70 61 6E
             64 65 72 20 4D 6F 64
             65 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004053 E2                    4375 	.db 0xe2
      004054 94                    4376 	.db 0x94
      004055 82                    4377 	.db 0x82
      004056 0A                    4378 	.db 0x0a
      004057 0D                    4379 	.db 0x0d
      004058 00                    4380 	.db 0x00
                                   4381 	.area CSEG    (CODE)
                                   4382 	.area CONST   (CODE)
      004059                       4383 ___str_13:
      004059 E2                    4384 	.db 0xe2
      00405A 94                    4385 	.db 0x94
      00405B 94                    4386 	.db 0x94
      00405C E2                    4387 	.db 0xe2
      00405D 94                    4388 	.db 0x94
      00405E 80                    4389 	.db 0x80
      00405F E2                    4390 	.db 0xe2
      004060 94                    4391 	.db 0x94
      004061 80                    4392 	.db 0x80
      004062 E2                    4393 	.db 0xe2
      004063 94                    4394 	.db 0x94
      004064 80                    4395 	.db 0x80
      004065 E2                    4396 	.db 0xe2
      004066 94                    4397 	.db 0x94
      004067 80                    4398 	.db 0x80
      004068 E2                    4399 	.db 0xe2
      004069 94                    4400 	.db 0x94
      00406A 80                    4401 	.db 0x80
      00406B E2                    4402 	.db 0xe2
      00406C 94                    4403 	.db 0x94
      00406D 80                    4404 	.db 0x80
      00406E E2                    4405 	.db 0xe2
      00406F 94                    4406 	.db 0x94
      004070 80                    4407 	.db 0x80
      004071 E2                    4408 	.db 0xe2
      004072 94                    4409 	.db 0x94
      004073 80                    4410 	.db 0x80
      004074 E2                    4411 	.db 0xe2
      004075 94                    4412 	.db 0x94
      004076 80                    4413 	.db 0x80
      004077 E2                    4414 	.db 0xe2
      004078 94                    4415 	.db 0x94
      004079 80                    4416 	.db 0x80
      00407A E2                    4417 	.db 0xe2
      00407B 94                    4418 	.db 0x94
      00407C 80                    4419 	.db 0x80
      00407D E2                    4420 	.db 0xe2
      00407E 94                    4421 	.db 0x94
      00407F 80                    4422 	.db 0x80
      004080 E2                    4423 	.db 0xe2
      004081 94                    4424 	.db 0x94
      004082 B4                    4425 	.db 0xb4
      004083 E2                    4426 	.db 0xe2
      004084 94                    4427 	.db 0x94
      004085 80                    4428 	.db 0x80
      004086 E2                    4429 	.db 0xe2
      004087 94                    4430 	.db 0x94
      004088 80                    4431 	.db 0x80
      004089 E2                    4432 	.db 0xe2
      00408A 94                    4433 	.db 0x94
      00408B 80                    4434 	.db 0x80
      00408C E2                    4435 	.db 0xe2
      00408D 94                    4436 	.db 0x94
      00408E 80                    4437 	.db 0x80
      00408F E2                    4438 	.db 0xe2
      004090 94                    4439 	.db 0x94
      004091 80                    4440 	.db 0x80
      004092 E2                    4441 	.db 0xe2
      004093 94                    4442 	.db 0x94
      004094 80                    4443 	.db 0x80
      004095 E2                    4444 	.db 0xe2
      004096 94                    4445 	.db 0x94
      004097 80                    4446 	.db 0x80
      004098 E2                    4447 	.db 0xe2
      004099 94                    4448 	.db 0x94
      00409A 80                    4449 	.db 0x80
      00409B E2                    4450 	.db 0xe2
      00409C 94                    4451 	.db 0x94
      00409D 80                    4452 	.db 0x80
      00409E E2                    4453 	.db 0xe2
      00409F 94                    4454 	.db 0x94
      0040A0 80                    4455 	.db 0x80
      0040A1 E2                    4456 	.db 0xe2
      0040A2 94                    4457 	.db 0x94
      0040A3 80                    4458 	.db 0x80
      0040A4 E2                    4459 	.db 0xe2
      0040A5 94                    4460 	.db 0x94
      0040A6 80                    4461 	.db 0x80
      0040A7 E2                    4462 	.db 0xe2
      0040A8 94                    4463 	.db 0x94
      0040A9 80                    4464 	.db 0x80
      0040AA E2                    4465 	.db 0xe2
      0040AB 94                    4466 	.db 0x94
      0040AC 80                    4467 	.db 0x80
      0040AD E2                    4468 	.db 0xe2
      0040AE 94                    4469 	.db 0x94
      0040AF 80                    4470 	.db 0x80
      0040B0 E2                    4471 	.db 0xe2
      0040B1 94                    4472 	.db 0x94
      0040B2 80                    4473 	.db 0x80
      0040B3 E2                    4474 	.db 0xe2
      0040B4 94                    4475 	.db 0x94
      0040B5 80                    4476 	.db 0x80
      0040B6 E2                    4477 	.db 0xe2
      0040B7 94                    4478 	.db 0x94
      0040B8 80                    4479 	.db 0x80
      0040B9 E2                    4480 	.db 0xe2
      0040BA 94                    4481 	.db 0x94
      0040BB 80                    4482 	.db 0x80
      0040BC E2                    4483 	.db 0xe2
      0040BD 94                    4484 	.db 0x94
      0040BE 80                    4485 	.db 0x80
      0040BF E2                    4486 	.db 0xe2
      0040C0 94                    4487 	.db 0x94
      0040C1 80                    4488 	.db 0x80
      0040C2 E2                    4489 	.db 0xe2
      0040C3 94                    4490 	.db 0x94
      0040C4 80                    4491 	.db 0x80
      0040C5 E2                    4492 	.db 0xe2
      0040C6 94                    4493 	.db 0x94
      0040C7 80                    4494 	.db 0x80
      0040C8 E2                    4495 	.db 0xe2
      0040C9 94                    4496 	.db 0x94
      0040CA 80                    4497 	.db 0x80
      0040CB E2                    4498 	.db 0xe2
      0040CC 94                    4499 	.db 0x94
      0040CD 80                    4500 	.db 0x80
      0040CE E2                    4501 	.db 0xe2
      0040CF 94                    4502 	.db 0x94
      0040D0 80                    4503 	.db 0x80
      0040D1 E2                    4504 	.db 0xe2
      0040D2 94                    4505 	.db 0x94
      0040D3 80                    4506 	.db 0x80
      0040D4 E2                    4507 	.db 0xe2
      0040D5 94                    4508 	.db 0x94
      0040D6 80                    4509 	.db 0x80
      0040D7 E2                    4510 	.db 0xe2
      0040D8 94                    4511 	.db 0x94
      0040D9 80                    4512 	.db 0x80
      0040DA E2                    4513 	.db 0xe2
      0040DB 94                    4514 	.db 0x94
      0040DC 80                    4515 	.db 0x80
      0040DD E2                    4516 	.db 0xe2
      0040DE 94                    4517 	.db 0x94
      0040DF 80                    4518 	.db 0x80
      0040E0 E2                    4519 	.db 0xe2
      0040E1 94                    4520 	.db 0x94
      0040E2 80                    4521 	.db 0x80
      0040E3 E2                    4522 	.db 0xe2
      0040E4 94                    4523 	.db 0x94
      0040E5 80                    4524 	.db 0x80
      0040E6 E2                    4525 	.db 0xe2
      0040E7 94                    4526 	.db 0x94
      0040E8 80                    4527 	.db 0x80
      0040E9 E2                    4528 	.db 0xe2
      0040EA 94                    4529 	.db 0x94
      0040EB 80                    4530 	.db 0x80
      0040EC E2                    4531 	.db 0xe2
      0040ED 94                    4532 	.db 0x94
      0040EE 80                    4533 	.db 0x80
      0040EF E2                    4534 	.db 0xe2
      0040F0 94                    4535 	.db 0x94
      0040F1 80                    4536 	.db 0x80
      0040F2 E2                    4537 	.db 0xe2
      0040F3 94                    4538 	.db 0x94
      0040F4 80                    4539 	.db 0x80
      0040F5 E2                    4540 	.db 0xe2
      0040F6 94                    4541 	.db 0x94
      0040F7 80                    4542 	.db 0x80
      0040F8 E2                    4543 	.db 0xe2
      0040F9 94                    4544 	.db 0x94
      0040FA 80                    4545 	.db 0x80
      0040FB E2                    4546 	.db 0xe2
      0040FC 94                    4547 	.db 0x94
      0040FD 80                    4548 	.db 0x80
      0040FE E2                    4549 	.db 0xe2
      0040FF 94                    4550 	.db 0x94
      004100 80                    4551 	.db 0x80
      004101 E2                    4552 	.db 0xe2
      004102 94                    4553 	.db 0x94
      004103 80                    4554 	.db 0x80
      004104 E2                    4555 	.db 0xe2
      004105 94                    4556 	.db 0x94
      004106 80                    4557 	.db 0x80
      004107 E2                    4558 	.db 0xe2
      004108 94                    4559 	.db 0x94
      004109 98                    4560 	.db 0x98
      00410A 0A                    4561 	.db 0x0a
      00410B 0D                    4562 	.db 0x0d
      00410C 00                    4563 	.db 0x00
                                   4564 	.area CSEG    (CODE)
                                   4565 	.area CONST   (CODE)
      00410D                       4566 ___str_14:
      00410D 7C 20 24 20 25 63     4567 	.ascii "| $ %c"
      004113 0A                    4568 	.db 0x0a
      004114 0D                    4569 	.db 0x0d
      004115 00                    4570 	.db 0x00
                                   4571 	.area CSEG    (CODE)
                                   4572 	.area CONST   (CODE)
      004116                       4573 ___str_15:
      004116 0A                    4574 	.db 0x0a
      004117 0D                    4575 	.db 0x0d
      004118 00                    4576 	.db 0x00
                                   4577 	.area CSEG    (CODE)
                                   4578 	.area CONST   (CODE)
      004119                       4579 ___str_16:
      004119 0A                    4580 	.db 0x0a
      00411A E2                    4581 	.db 0xe2
      00411B 94                    4582 	.db 0x94
      00411C 8C                    4583 	.db 0x8c
      00411D E2                    4584 	.db 0xe2
      00411E 94                    4585 	.db 0x94
      00411F 80                    4586 	.db 0x80
      004120 E2                    4587 	.db 0xe2
      004121 94                    4588 	.db 0x94
      004122 80                    4589 	.db 0x80
      004123 E2                    4590 	.db 0xe2
      004124 94                    4591 	.db 0x94
      004125 80                    4592 	.db 0x80
      004126 E2                    4593 	.db 0xe2
      004127 94                    4594 	.db 0x94
      004128 80                    4595 	.db 0x80
      004129 E2                    4596 	.db 0xe2
      00412A 94                    4597 	.db 0x94
      00412B 80                    4598 	.db 0x80
      00412C E2                    4599 	.db 0xe2
      00412D 94                    4600 	.db 0x94
      00412E 80                    4601 	.db 0x80
      00412F E2                    4602 	.db 0xe2
      004130 94                    4603 	.db 0x94
      004131 80                    4604 	.db 0x80
      004132 E2                    4605 	.db 0xe2
      004133 94                    4606 	.db 0x94
      004134 80                    4607 	.db 0x80
      004135 E2                    4608 	.db 0xe2
      004136 94                    4609 	.db 0x94
      004137 80                    4610 	.db 0x80
      004138 E2                    4611 	.db 0xe2
      004139 94                    4612 	.db 0x94
      00413A 80                    4613 	.db 0x80
      00413B E2                    4614 	.db 0xe2
      00413C 94                    4615 	.db 0x94
      00413D 80                    4616 	.db 0x80
      00413E E2                    4617 	.db 0xe2
      00413F 94                    4618 	.db 0x94
      004140 80                    4619 	.db 0x80
      004141 E2                    4620 	.db 0xe2
      004142 94                    4621 	.db 0x94
      004143 80                    4622 	.db 0x80
      004144 E2                    4623 	.db 0xe2
      004145 94                    4624 	.db 0x94
      004146 80                    4625 	.db 0x80
      004147 E2                    4626 	.db 0xe2
      004148 94                    4627 	.db 0x94
      004149 80                    4628 	.db 0x80
      00414A 20 57 52 49 54 45 20  4629 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      00415B E2                    4630 	.db 0xe2
      00415C 94                    4631 	.db 0x94
      00415D 80                    4632 	.db 0x80
      00415E E2                    4633 	.db 0xe2
      00415F 94                    4634 	.db 0x94
      004160 80                    4635 	.db 0x80
      004161 E2                    4636 	.db 0xe2
      004162 94                    4637 	.db 0x94
      004163 80                    4638 	.db 0x80
      004164 E2                    4639 	.db 0xe2
      004165 94                    4640 	.db 0x94
      004166 80                    4641 	.db 0x80
      004167 E2                    4642 	.db 0xe2
      004168 94                    4643 	.db 0x94
      004169 80                    4644 	.db 0x80
      00416A E2                    4645 	.db 0xe2
      00416B 94                    4646 	.db 0x94
      00416C 80                    4647 	.db 0x80
      00416D E2                    4648 	.db 0xe2
      00416E 94                    4649 	.db 0x94
      00416F 80                    4650 	.db 0x80
      004170 E2                    4651 	.db 0xe2
      004171 94                    4652 	.db 0x94
      004172 80                    4653 	.db 0x80
      004173 E2                    4654 	.db 0xe2
      004174 94                    4655 	.db 0x94
      004175 80                    4656 	.db 0x80
      004176 E2                    4657 	.db 0xe2
      004177 94                    4658 	.db 0x94
      004178 80                    4659 	.db 0x80
      004179 E2                    4660 	.db 0xe2
      00417A 94                    4661 	.db 0x94
      00417B 80                    4662 	.db 0x80
      00417C E2                    4663 	.db 0xe2
      00417D 94                    4664 	.db 0x94
      00417E 80                    4665 	.db 0x80
      00417F E2                    4666 	.db 0xe2
      004180 94                    4667 	.db 0x94
      004181 80                    4668 	.db 0x80
      004182 E2                    4669 	.db 0xe2
      004183 94                    4670 	.db 0x94
      004184 80                    4671 	.db 0x80
      004185 E2                    4672 	.db 0xe2
      004186 94                    4673 	.db 0x94
      004187 90                    4674 	.db 0x90
      004188 0A                    4675 	.db 0x0a
      004189 0D                    4676 	.db 0x0d
      00418A 00                    4677 	.db 0x00
                                   4678 	.area CSEG    (CODE)
                                   4679 	.area CONST   (CODE)
      00418B                       4680 ___str_17:
      00418B 0A                    4681 	.db 0x0a
      00418C E2                    4682 	.db 0xe2
      00418D 94                    4683 	.db 0x94
      00418E 8C                    4684 	.db 0x8c
      00418F E2                    4685 	.db 0xe2
      004190 94                    4686 	.db 0x94
      004191 80                    4687 	.db 0x80
      004192 E2                    4688 	.db 0xe2
      004193 94                    4689 	.db 0x94
      004194 80                    4690 	.db 0x80
      004195 E2                    4691 	.db 0xe2
      004196 94                    4692 	.db 0x94
      004197 80                    4693 	.db 0x80
      004198 E2                    4694 	.db 0xe2
      004199 94                    4695 	.db 0x94
      00419A 80                    4696 	.db 0x80
      00419B E2                    4697 	.db 0xe2
      00419C 94                    4698 	.db 0x94
      00419D 80                    4699 	.db 0x80
      00419E E2                    4700 	.db 0xe2
      00419F 94                    4701 	.db 0x94
      0041A0 80                    4702 	.db 0x80
      0041A1 E2                    4703 	.db 0xe2
      0041A2 94                    4704 	.db 0x94
      0041A3 80                    4705 	.db 0x80
      0041A4 E2                    4706 	.db 0xe2
      0041A5 94                    4707 	.db 0x94
      0041A6 80                    4708 	.db 0x80
      0041A7 E2                    4709 	.db 0xe2
      0041A8 94                    4710 	.db 0x94
      0041A9 80                    4711 	.db 0x80
      0041AA E2                    4712 	.db 0xe2
      0041AB 94                    4713 	.db 0x94
      0041AC 80                    4714 	.db 0x80
      0041AD E2                    4715 	.db 0xe2
      0041AE 94                    4716 	.db 0x94
      0041AF 80                    4717 	.db 0x80
      0041B0 E2                    4718 	.db 0xe2
      0041B1 94                    4719 	.db 0x94
      0041B2 80                    4720 	.db 0x80
      0041B3 E2                    4721 	.db 0xe2
      0041B4 94                    4722 	.db 0x94
      0041B5 80                    4723 	.db 0x80
      0041B6 E2                    4724 	.db 0xe2
      0041B7 94                    4725 	.db 0x94
      0041B8 80                    4726 	.db 0x80
      0041B9 E2                    4727 	.db 0xe2
      0041BA 94                    4728 	.db 0x94
      0041BB 80                    4729 	.db 0x80
      0041BC 20 52 45 41 44 20 4F  4730 	.ascii " READ OPERATION "
             50 45 52 41 54 49 4F
             4E 20
      0041CC E2                    4731 	.db 0xe2
      0041CD 94                    4732 	.db 0x94
      0041CE 80                    4733 	.db 0x80
      0041CF E2                    4734 	.db 0xe2
      0041D0 94                    4735 	.db 0x94
      0041D1 80                    4736 	.db 0x80
      0041D2 E2                    4737 	.db 0xe2
      0041D3 94                    4738 	.db 0x94
      0041D4 80                    4739 	.db 0x80
      0041D5 E2                    4740 	.db 0xe2
      0041D6 94                    4741 	.db 0x94
      0041D7 80                    4742 	.db 0x80
      0041D8 E2                    4743 	.db 0xe2
      0041D9 94                    4744 	.db 0x94
      0041DA 80                    4745 	.db 0x80
      0041DB E2                    4746 	.db 0xe2
      0041DC 94                    4747 	.db 0x94
      0041DD 80                    4748 	.db 0x80
      0041DE E2                    4749 	.db 0xe2
      0041DF 94                    4750 	.db 0x94
      0041E0 80                    4751 	.db 0x80
      0041E1 E2                    4752 	.db 0xe2
      0041E2 94                    4753 	.db 0x94
      0041E3 80                    4754 	.db 0x80
      0041E4 E2                    4755 	.db 0xe2
      0041E5 94                    4756 	.db 0x94
      0041E6 80                    4757 	.db 0x80
      0041E7 E2                    4758 	.db 0xe2
      0041E8 94                    4759 	.db 0x94
      0041E9 80                    4760 	.db 0x80
      0041EA E2                    4761 	.db 0xe2
      0041EB 94                    4762 	.db 0x94
      0041EC 80                    4763 	.db 0x80
      0041ED E2                    4764 	.db 0xe2
      0041EE 94                    4765 	.db 0x94
      0041EF 80                    4766 	.db 0x80
      0041F0 E2                    4767 	.db 0xe2
      0041F1 94                    4768 	.db 0x94
      0041F2 80                    4769 	.db 0x80
      0041F3 E2                    4770 	.db 0xe2
      0041F4 94                    4771 	.db 0x94
      0041F5 80                    4772 	.db 0x80
      0041F6 E2                    4773 	.db 0xe2
      0041F7 94                    4774 	.db 0x94
      0041F8 80                    4775 	.db 0x80
      0041F9 E2                    4776 	.db 0xe2
      0041FA 94                    4777 	.db 0x94
      0041FB 90                    4778 	.db 0x90
      0041FC 0A                    4779 	.db 0x0a
      0041FD 0D                    4780 	.db 0x0d
      0041FE 00                    4781 	.db 0x00
                                   4782 	.area CSEG    (CODE)
                                   4783 	.area CONST   (CODE)
      0041FF                       4784 ___str_18:
      0041FF 7C 20 52 65 61 64 69  4785 	.ascii "| Reading from Address 0x%03X           |"
             6E 67 20 66 72 6F 6D
             20 41 64 64 72 65 73
             73 20 30 78 25 30 33
             58 20 20 20 20 20 20
             20 20 20 20 20 7C
      004228 0A                    4786 	.db 0x0a
      004229 0D                    4787 	.db 0x0d
      00422A 00                    4788 	.db 0x00
                                   4789 	.area CSEG    (CODE)
                                   4790 	.area CONST   (CODE)
      00422B                       4791 ___str_19:
      00422B 0A                    4792 	.db 0x0a
      00422C E2                    4793 	.db 0xe2
      00422D 94                    4794 	.db 0x94
      00422E 8C                    4795 	.db 0x8c
      00422F E2                    4796 	.db 0xe2
      004230 94                    4797 	.db 0x94
      004231 80                    4798 	.db 0x80
      004232 E2                    4799 	.db 0xe2
      004233 94                    4800 	.db 0x94
      004234 80                    4801 	.db 0x80
      004235 E2                    4802 	.db 0xe2
      004236 94                    4803 	.db 0x94
      004237 80                    4804 	.db 0x80
      004238 E2                    4805 	.db 0xe2
      004239 94                    4806 	.db 0x94
      00423A 80                    4807 	.db 0x80
      00423B E2                    4808 	.db 0xe2
      00423C 94                    4809 	.db 0x94
      00423D 80                    4810 	.db 0x80
      00423E E2                    4811 	.db 0xe2
      00423F 94                    4812 	.db 0x94
      004240 80                    4813 	.db 0x80
      004241 E2                    4814 	.db 0xe2
      004242 94                    4815 	.db 0x94
      004243 80                    4816 	.db 0x80
      004244 E2                    4817 	.db 0xe2
      004245 94                    4818 	.db 0x94
      004246 80                    4819 	.db 0x80
      004247 E2                    4820 	.db 0xe2
      004248 94                    4821 	.db 0x94
      004249 80                    4822 	.db 0x80
      00424A E2                    4823 	.db 0xe2
      00424B 94                    4824 	.db 0x94
      00424C 80                    4825 	.db 0x80
      00424D E2                    4826 	.db 0xe2
      00424E 94                    4827 	.db 0x94
      00424F 80                    4828 	.db 0x80
      004250 E2                    4829 	.db 0xe2
      004251 94                    4830 	.db 0x94
      004252 80                    4831 	.db 0x80
      004253 E2                    4832 	.db 0xe2
      004254 94                    4833 	.db 0x94
      004255 80                    4834 	.db 0x80
      004256 E2                    4835 	.db 0xe2
      004257 94                    4836 	.db 0x94
      004258 80                    4837 	.db 0x80
      004259 E2                    4838 	.db 0xe2
      00425A 94                    4839 	.db 0x94
      00425B 80                    4840 	.db 0x80
      00425C 20 52 45 53 45 54 20  4841 	.ascii " RESET OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      00426D E2                    4842 	.db 0xe2
      00426E 94                    4843 	.db 0x94
      00426F 80                    4844 	.db 0x80
      004270 E2                    4845 	.db 0xe2
      004271 94                    4846 	.db 0x94
      004272 80                    4847 	.db 0x80
      004273 E2                    4848 	.db 0xe2
      004274 94                    4849 	.db 0x94
      004275 80                    4850 	.db 0x80
      004276 E2                    4851 	.db 0xe2
      004277 94                    4852 	.db 0x94
      004278 80                    4853 	.db 0x80
      004279 E2                    4854 	.db 0xe2
      00427A 94                    4855 	.db 0x94
      00427B 80                    4856 	.db 0x80
      00427C E2                    4857 	.db 0xe2
      00427D 94                    4858 	.db 0x94
      00427E 80                    4859 	.db 0x80
      00427F E2                    4860 	.db 0xe2
      004280 94                    4861 	.db 0x94
      004281 80                    4862 	.db 0x80
      004282 E2                    4863 	.db 0xe2
      004283 94                    4864 	.db 0x94
      004284 80                    4865 	.db 0x80
      004285 E2                    4866 	.db 0xe2
      004286 94                    4867 	.db 0x94
      004287 80                    4868 	.db 0x80
      004288 E2                    4869 	.db 0xe2
      004289 94                    4870 	.db 0x94
      00428A 80                    4871 	.db 0x80
      00428B E2                    4872 	.db 0xe2
      00428C 94                    4873 	.db 0x94
      00428D 80                    4874 	.db 0x80
      00428E E2                    4875 	.db 0xe2
      00428F 94                    4876 	.db 0x94
      004290 90                    4877 	.db 0x90
      004291 0A                    4878 	.db 0x0a
      004292 0D                    4879 	.db 0x0d
      004293 00                    4880 	.db 0x00
                                   4881 	.area CSEG    (CODE)
                                   4882 	.area CONST   (CODE)
      004294                       4883 ___str_20:
      004294 0A                    4884 	.db 0x0a
      004295 E2                    4885 	.db 0xe2
      004296 94                    4886 	.db 0x94
      004297 8C                    4887 	.db 0x8c
      004298 E2                    4888 	.db 0xe2
      004299 94                    4889 	.db 0x94
      00429A 80                    4890 	.db 0x80
      00429B E2                    4891 	.db 0xe2
      00429C 94                    4892 	.db 0x94
      00429D 80                    4893 	.db 0x80
      00429E E2                    4894 	.db 0xe2
      00429F 94                    4895 	.db 0x94
      0042A0 80                    4896 	.db 0x80
      0042A1 E2                    4897 	.db 0xe2
      0042A2 94                    4898 	.db 0x94
      0042A3 80                    4899 	.db 0x80
      0042A4 E2                    4900 	.db 0xe2
      0042A5 94                    4901 	.db 0x94
      0042A6 80                    4902 	.db 0x80
      0042A7 E2                    4903 	.db 0xe2
      0042A8 94                    4904 	.db 0x94
      0042A9 80                    4905 	.db 0x80
      0042AA E2                    4906 	.db 0xe2
      0042AB 94                    4907 	.db 0x94
      0042AC 80                    4908 	.db 0x80
      0042AD E2                    4909 	.db 0xe2
      0042AE 94                    4910 	.db 0x94
      0042AF 80                    4911 	.db 0x80
      0042B0 E2                    4912 	.db 0xe2
      0042B1 94                    4913 	.db 0x94
      0042B2 80                    4914 	.db 0x80
      0042B3 E2                    4915 	.db 0xe2
      0042B4 94                    4916 	.db 0x94
      0042B5 80                    4917 	.db 0x80
      0042B6 E2                    4918 	.db 0xe2
      0042B7 94                    4919 	.db 0x94
      0042B8 80                    4920 	.db 0x80
      0042B9 E2                    4921 	.db 0xe2
      0042BA 94                    4922 	.db 0x94
      0042BB 80                    4923 	.db 0x80
      0042BC E2                    4924 	.db 0xe2
      0042BD 94                    4925 	.db 0x94
      0042BE 80                    4926 	.db 0x80
      0042BF 20 48 45 58 20 44 55  4927 	.ascii " HEX DUMP OPERATION "
             4D 50 20 4F 50 45 52
             41 54 49 4F 4E 20
      0042D3 E2                    4928 	.db 0xe2
      0042D4 94                    4929 	.db 0x94
      0042D5 80                    4930 	.db 0x80
      0042D6 E2                    4931 	.db 0xe2
      0042D7 94                    4932 	.db 0x94
      0042D8 80                    4933 	.db 0x80
      0042D9 E2                    4934 	.db 0xe2
      0042DA 94                    4935 	.db 0x94
      0042DB 80                    4936 	.db 0x80
      0042DC E2                    4937 	.db 0xe2
      0042DD 94                    4938 	.db 0x94
      0042DE 80                    4939 	.db 0x80
      0042DF E2                    4940 	.db 0xe2
      0042E0 94                    4941 	.db 0x94
      0042E1 80                    4942 	.db 0x80
      0042E2 E2                    4943 	.db 0xe2
      0042E3 94                    4944 	.db 0x94
      0042E4 80                    4945 	.db 0x80
      0042E5 E2                    4946 	.db 0xe2
      0042E6 94                    4947 	.db 0x94
      0042E7 80                    4948 	.db 0x80
      0042E8 E2                    4949 	.db 0xe2
      0042E9 94                    4950 	.db 0x94
      0042EA 80                    4951 	.db 0x80
      0042EB E2                    4952 	.db 0xe2
      0042EC 94                    4953 	.db 0x94
      0042ED 80                    4954 	.db 0x80
      0042EE E2                    4955 	.db 0xe2
      0042EF 94                    4956 	.db 0x94
      0042F0 80                    4957 	.db 0x80
      0042F1 E2                    4958 	.db 0xe2
      0042F2 94                    4959 	.db 0x94
      0042F3 80                    4960 	.db 0x80
      0042F4 E2                    4961 	.db 0xe2
      0042F5 94                    4962 	.db 0x94
      0042F6 80                    4963 	.db 0x80
      0042F7 E2                    4964 	.db 0xe2
      0042F8 94                    4965 	.db 0x94
      0042F9 80                    4966 	.db 0x80
      0042FA E2                    4967 	.db 0xe2
      0042FB 94                    4968 	.db 0x94
      0042FC 80                    4969 	.db 0x80
      0042FD E2                    4970 	.db 0xe2
      0042FE 94                    4971 	.db 0x94
      0042FF 80                    4972 	.db 0x80
      004300 E2                    4973 	.db 0xe2
      004301 94                    4974 	.db 0x94
      004302 90                    4975 	.db 0x90
      004303 0A                    4976 	.db 0x0a
      004304 0D                    4977 	.db 0x0d
      004305 00                    4978 	.db 0x00
                                   4979 	.area CSEG    (CODE)
                                   4980 	.area CONST   (CODE)
      004306                       4981 ___str_21:
      004306 0A                    4982 	.db 0x0a
      004307 E2                    4983 	.db 0xe2
      004308 94                    4984 	.db 0x94
      004309 8C                    4985 	.db 0x8c
      00430A E2                    4986 	.db 0xe2
      00430B 94                    4987 	.db 0x94
      00430C 80                    4988 	.db 0x80
      00430D E2                    4989 	.db 0xe2
      00430E 94                    4990 	.db 0x94
      00430F 80                    4991 	.db 0x80
      004310 E2                    4992 	.db 0xe2
      004311 94                    4993 	.db 0x94
      004312 80                    4994 	.db 0x80
      004313 E2                    4995 	.db 0xe2
      004314 94                    4996 	.db 0x94
      004315 80                    4997 	.db 0x80
      004316 E2                    4998 	.db 0xe2
      004317 94                    4999 	.db 0x94
      004318 80                    5000 	.db 0x80
      004319 E2                    5001 	.db 0xe2
      00431A 94                    5002 	.db 0x94
      00431B 80                    5003 	.db 0x80
      00431C E2                    5004 	.db 0xe2
      00431D 94                    5005 	.db 0x94
      00431E 80                    5006 	.db 0x80
      00431F E2                    5007 	.db 0xe2
      004320 94                    5008 	.db 0x94
      004321 80                    5009 	.db 0x80
      004322 E2                    5010 	.db 0xe2
      004323 94                    5011 	.db 0x94
      004324 80                    5012 	.db 0x80
      004325 E2                    5013 	.db 0xe2
      004326 94                    5014 	.db 0x94
      004327 80                    5015 	.db 0x80
      004328 E2                    5016 	.db 0xe2
      004329 94                    5017 	.db 0x94
      00432A 80                    5018 	.db 0x80
      00432B E2                    5019 	.db 0xe2
      00432C 94                    5020 	.db 0x94
      00432D 80                    5021 	.db 0x80
      00432E E2                    5022 	.db 0xe2
      00432F 94                    5023 	.db 0x94
      004330 80                    5024 	.db 0x80
      004331 20 49 4F 20 45 58 50  5025 	.ascii " IO EXPANDER OPERATION "
             41 4E 44 45 52 20 4F
             50 45 52 41 54 49 4F
             4E 20
      004348 E2                    5026 	.db 0xe2
      004349 94                    5027 	.db 0x94
      00434A 80                    5028 	.db 0x80
      00434B E2                    5029 	.db 0xe2
      00434C 94                    5030 	.db 0x94
      00434D 80                    5031 	.db 0x80
      00434E E2                    5032 	.db 0xe2
      00434F 94                    5033 	.db 0x94
      004350 80                    5034 	.db 0x80
      004351 E2                    5035 	.db 0xe2
      004352 94                    5036 	.db 0x94
      004353 80                    5037 	.db 0x80
      004354 E2                    5038 	.db 0xe2
      004355 94                    5039 	.db 0x94
      004356 80                    5040 	.db 0x80
      004357 E2                    5041 	.db 0xe2
      004358 94                    5042 	.db 0x94
      004359 80                    5043 	.db 0x80
      00435A E2                    5044 	.db 0xe2
      00435B 94                    5045 	.db 0x94
      00435C 80                    5046 	.db 0x80
      00435D E2                    5047 	.db 0xe2
      00435E 94                    5048 	.db 0x94
      00435F 80                    5049 	.db 0x80
      004360 E2                    5050 	.db 0xe2
      004361 94                    5051 	.db 0x94
      004362 80                    5052 	.db 0x80
      004363 E2                    5053 	.db 0xe2
      004364 94                    5054 	.db 0x94
      004365 80                    5055 	.db 0x80
      004366 E2                    5056 	.db 0xe2
      004367 94                    5057 	.db 0x94
      004368 80                    5058 	.db 0x80
      004369 E2                    5059 	.db 0xe2
      00436A 94                    5060 	.db 0x94
      00436B 80                    5061 	.db 0x80
      00436C E2                    5062 	.db 0xe2
      00436D 94                    5063 	.db 0x94
      00436E 80                    5064 	.db 0x80
      00436F E2                    5065 	.db 0xe2
      004370 94                    5066 	.db 0x94
      004371 80                    5067 	.db 0x80
      004372 E2                    5068 	.db 0xe2
      004373 94                    5069 	.db 0x94
      004374 80                    5070 	.db 0x80
      004375 E2                    5071 	.db 0xe2
      004376 94                    5072 	.db 0x94
      004377 90                    5073 	.db 0x90
      004378 0A                    5074 	.db 0x0a
      004379 0D                    5075 	.db 0x0d
      00437A 00                    5076 	.db 0x00
                                   5077 	.area CSEG    (CODE)
                                   5078 	.area CONST   (CODE)
      00437B                       5079 ___str_22:
      00437B 0A                    5080 	.db 0x0a
      00437C E2                    5081 	.db 0xe2
      00437D 94                    5082 	.db 0x94
      00437E 8C                    5083 	.db 0x8c
      00437F E2                    5084 	.db 0xe2
      004380 94                    5085 	.db 0x94
      004381 80                    5086 	.db 0x80
      004382 E2                    5087 	.db 0xe2
      004383 94                    5088 	.db 0x94
      004384 80                    5089 	.db 0x80
      004385 E2                    5090 	.db 0xe2
      004386 94                    5091 	.db 0x94
      004387 80                    5092 	.db 0x80
      004388 E2                    5093 	.db 0xe2
      004389 94                    5094 	.db 0x94
      00438A 80                    5095 	.db 0x80
      00438B E2                    5096 	.db 0xe2
      00438C 94                    5097 	.db 0x94
      00438D 80                    5098 	.db 0x80
      00438E E2                    5099 	.db 0xe2
      00438F 94                    5100 	.db 0x94
      004390 80                    5101 	.db 0x80
      004391 E2                    5102 	.db 0xe2
      004392 94                    5103 	.db 0x94
      004393 80                    5104 	.db 0x80
      004394 E2                    5105 	.db 0xe2
      004395 94                    5106 	.db 0x94
      004396 80                    5107 	.db 0x80
      004397 E2                    5108 	.db 0xe2
      004398 94                    5109 	.db 0x94
      004399 80                    5110 	.db 0x80
      00439A E2                    5111 	.db 0xe2
      00439B 94                    5112 	.db 0x94
      00439C 80                    5113 	.db 0x80
      00439D E2                    5114 	.db 0xe2
      00439E 94                    5115 	.db 0x94
      00439F 80                    5116 	.db 0x80
      0043A0 E2                    5117 	.db 0xe2
      0043A1 94                    5118 	.db 0x94
      0043A2 80                    5119 	.db 0x80
      0043A3 E2                    5120 	.db 0xe2
      0043A4 94                    5121 	.db 0x94
      0043A5 80                    5122 	.db 0x80
      0043A6 20 20 45 58 49 54 20  5123 	.ascii "  EXIT IO EXPANDER   "
             49 4F 20 45 58 50 41
             4E 44 45 52 20 20 20
      0043BB E2                    5124 	.db 0xe2
      0043BC 94                    5125 	.db 0x94
      0043BD 80                    5126 	.db 0x80
      0043BE E2                    5127 	.db 0xe2
      0043BF 94                    5128 	.db 0x94
      0043C0 80                    5129 	.db 0x80
      0043C1 E2                    5130 	.db 0xe2
      0043C2 94                    5131 	.db 0x94
      0043C3 80                    5132 	.db 0x80
      0043C4 E2                    5133 	.db 0xe2
      0043C5 94                    5134 	.db 0x94
      0043C6 80                    5135 	.db 0x80
      0043C7 E2                    5136 	.db 0xe2
      0043C8 94                    5137 	.db 0x94
      0043C9 80                    5138 	.db 0x80
      0043CA E2                    5139 	.db 0xe2
      0043CB 94                    5140 	.db 0x94
      0043CC 80                    5141 	.db 0x80
      0043CD E2                    5142 	.db 0xe2
      0043CE 94                    5143 	.db 0x94
      0043CF 80                    5144 	.db 0x80
      0043D0 E2                    5145 	.db 0xe2
      0043D1 94                    5146 	.db 0x94
      0043D2 80                    5147 	.db 0x80
      0043D3 E2                    5148 	.db 0xe2
      0043D4 94                    5149 	.db 0x94
      0043D5 80                    5150 	.db 0x80
      0043D6 E2                    5151 	.db 0xe2
      0043D7 94                    5152 	.db 0x94
      0043D8 80                    5153 	.db 0x80
      0043D9 E2                    5154 	.db 0xe2
      0043DA 94                    5155 	.db 0x94
      0043DB 80                    5156 	.db 0x80
      0043DC E2                    5157 	.db 0xe2
      0043DD 94                    5158 	.db 0x94
      0043DE 80                    5159 	.db 0x80
      0043DF E2                    5160 	.db 0xe2
      0043E0 94                    5161 	.db 0x94
      0043E1 80                    5162 	.db 0x80
      0043E2 E2                    5163 	.db 0xe2
      0043E3 94                    5164 	.db 0x94
      0043E4 80                    5165 	.db 0x80
      0043E5 E2                    5166 	.db 0xe2
      0043E6 94                    5167 	.db 0x94
      0043E7 80                    5168 	.db 0x80
      0043E8 E2                    5169 	.db 0xe2
      0043E9 94                    5170 	.db 0x94
      0043EA 90                    5171 	.db 0x90
      0043EB 0A                    5172 	.db 0x0a
      0043EC 0D                    5173 	.db 0x0d
      0043ED 00                    5174 	.db 0x00
                                   5175 	.area CSEG    (CODE)
                                   5176 	.area CONST   (CODE)
      0043EE                       5177 ___str_23:
      0043EE 49 4E 56 41 4C 49 44  5178 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      0043FB 0A                    5179 	.db 0x0a
      0043FC 0D                    5180 	.db 0x0d
      0043FD 00                    5181 	.db 0x00
                                   5182 	.area CSEG    (CODE)
                                   5183 	.area CONST   (CODE)
      0043FE                       5184 ___str_24:
      0043FE E2                    5185 	.db 0xe2
      0043FF 94                    5186 	.db 0x94
      004400 82                    5187 	.db 0x82
      004401 20 45 6E 74 65 72 20  5188 	.ascii " Enter address (hex, up to 3 characters): "
             61 64 64 72 65 73 73
             20 28 68 65 78 2C 20
             75 70 20 74 6F 20 33
             20 63 68 61 72 61 63
             74 65 72 73 29 3A 20
      00442B 0A                    5189 	.db 0x0a
      00442C 0D                    5190 	.db 0x0d
      00442D 7C                    5191 	.ascii "|"
      00442E 00                    5192 	.db 0x00
                                   5193 	.area CSEG    (CODE)
                                   5194 	.area CONST   (CODE)
      00442F                       5195 ___str_25:
      00442F 7C 20 24 20           5196 	.ascii "| $ "
      004433 00                    5197 	.db 0x00
                                   5198 	.area CSEG    (CODE)
                                   5199 	.area CONST   (CODE)
      004434                       5200 ___str_26:
      004434 0A                    5201 	.db 0x0a
      004435 0D                    5202 	.db 0x0d
      004436 E2                    5203 	.db 0xe2
      004437 94                    5204 	.db 0x94
      004438 82                    5205 	.db 0x82
      004439 20 45 6E 74 65 72 65  5206 	.ascii " Entered address: 0x%03X"
             64 20 61 64 64 72 65
             73 73 3A 20 30 78 25
             30 33 58
      004451 0A                    5207 	.db 0x0a
      004452 0D                    5208 	.db 0x0d
      004453 00                    5209 	.db 0x00
                                   5210 	.area CSEG    (CODE)
                                   5211 	.area CONST   (CODE)
      004454                       5212 ___str_27:
      004454 E2                    5213 	.db 0xe2
      004455 95                    5214 	.db 0x95
      004456 94                    5215 	.db 0x94
      004457 E2                    5216 	.db 0xe2
      004458 95                    5217 	.db 0x95
      004459 90                    5218 	.db 0x90
      00445A E2                    5219 	.db 0xe2
      00445B 95                    5220 	.db 0x95
      00445C 90                    5221 	.db 0x90
      00445D E2                    5222 	.db 0xe2
      00445E 95                    5223 	.db 0x95
      00445F 90                    5224 	.db 0x90
      004460 E2                    5225 	.db 0xe2
      004461 95                    5226 	.db 0x95
      004462 90                    5227 	.db 0x90
      004463 E2                    5228 	.db 0xe2
      004464 95                    5229 	.db 0x95
      004465 90                    5230 	.db 0x90
      004466 E2                    5231 	.db 0xe2
      004467 95                    5232 	.db 0x95
      004468 90                    5233 	.db 0x90
      004469 E2                    5234 	.db 0xe2
      00446A 95                    5235 	.db 0x95
      00446B 90                    5236 	.db 0x90
      00446C E2                    5237 	.db 0xe2
      00446D 95                    5238 	.db 0x95
      00446E 90                    5239 	.db 0x90
      00446F E2                    5240 	.db 0xe2
      004470 95                    5241 	.db 0x95
      004471 90                    5242 	.db 0x90
      004472 E2                    5243 	.db 0xe2
      004473 95                    5244 	.db 0x95
      004474 90                    5245 	.db 0x90
      004475 E2                    5246 	.db 0xe2
      004476 95                    5247 	.db 0x95
      004477 90                    5248 	.db 0x90
      004478 E2                    5249 	.db 0xe2
      004479 95                    5250 	.db 0x95
      00447A 90                    5251 	.db 0x90
      00447B E2                    5252 	.db 0xe2
      00447C 95                    5253 	.db 0x95
      00447D 90                    5254 	.db 0x90
      00447E E2                    5255 	.db 0xe2
      00447F 95                    5256 	.db 0x95
      004480 90                    5257 	.db 0x90
      004481 E2                    5258 	.db 0xe2
      004482 95                    5259 	.db 0x95
      004483 90                    5260 	.db 0x90
      004484 E2                    5261 	.db 0xe2
      004485 95                    5262 	.db 0x95
      004486 90                    5263 	.db 0x90
      004487 E2                    5264 	.db 0xe2
      004488 95                    5265 	.db 0x95
      004489 90                    5266 	.db 0x90
      00448A E2                    5267 	.db 0xe2
      00448B 95                    5268 	.db 0x95
      00448C 90                    5269 	.db 0x90
      00448D E2                    5270 	.db 0xe2
      00448E 95                    5271 	.db 0x95
      00448F 90                    5272 	.db 0x90
      004490 E2                    5273 	.db 0xe2
      004491 95                    5274 	.db 0x95
      004492 90                    5275 	.db 0x90
      004493 E2                    5276 	.db 0xe2
      004494 95                    5277 	.db 0x95
      004495 90                    5278 	.db 0x90
      004496 E2                    5279 	.db 0xe2
      004497 95                    5280 	.db 0x95
      004498 90                    5281 	.db 0x90
      004499 E2                    5282 	.db 0xe2
      00449A 95                    5283 	.db 0x95
      00449B 90                    5284 	.db 0x90
      00449C E2                    5285 	.db 0xe2
      00449D 95                    5286 	.db 0x95
      00449E 90                    5287 	.db 0x90
      00449F E2                    5288 	.db 0xe2
      0044A0 95                    5289 	.db 0x95
      0044A1 90                    5290 	.db 0x90
      0044A2 E2                    5291 	.db 0xe2
      0044A3 95                    5292 	.db 0x95
      0044A4 90                    5293 	.db 0x90
      0044A5 E2                    5294 	.db 0xe2
      0044A6 95                    5295 	.db 0x95
      0044A7 90                    5296 	.db 0x90
      0044A8 E2                    5297 	.db 0xe2
      0044A9 95                    5298 	.db 0x95
      0044AA 90                    5299 	.db 0x90
      0044AB E2                    5300 	.db 0xe2
      0044AC 95                    5301 	.db 0x95
      0044AD 90                    5302 	.db 0x90
      0044AE E2                    5303 	.db 0xe2
      0044AF 95                    5304 	.db 0x95
      0044B0 90                    5305 	.db 0x90
      0044B1 E2                    5306 	.db 0xe2
      0044B2 95                    5307 	.db 0x95
      0044B3 90                    5308 	.db 0x90
      0044B4 E2                    5309 	.db 0xe2
      0044B5 95                    5310 	.db 0x95
      0044B6 90                    5311 	.db 0x90
      0044B7 E2                    5312 	.db 0xe2
      0044B8 95                    5313 	.db 0x95
      0044B9 90                    5314 	.db 0x90
      0044BA E2                    5315 	.db 0xe2
      0044BB 95                    5316 	.db 0x95
      0044BC 90                    5317 	.db 0x90
      0044BD E2                    5318 	.db 0xe2
      0044BE 95                    5319 	.db 0x95
      0044BF 90                    5320 	.db 0x90
      0044C0 E2                    5321 	.db 0xe2
      0044C1 95                    5322 	.db 0x95
      0044C2 90                    5323 	.db 0x90
      0044C3 E2                    5324 	.db 0xe2
      0044C4 95                    5325 	.db 0x95
      0044C5 90                    5326 	.db 0x90
      0044C6 E2                    5327 	.db 0xe2
      0044C7 95                    5328 	.db 0x95
      0044C8 90                    5329 	.db 0x90
      0044C9 E2                    5330 	.db 0xe2
      0044CA 95                    5331 	.db 0x95
      0044CB 90                    5332 	.db 0x90
      0044CC E2                    5333 	.db 0xe2
      0044CD 95                    5334 	.db 0x95
      0044CE 90                    5335 	.db 0x90
      0044CF E2                    5336 	.db 0xe2
      0044D0 95                    5337 	.db 0x95
      0044D1 90                    5338 	.db 0x90
      0044D2 E2                    5339 	.db 0xe2
      0044D3 95                    5340 	.db 0x95
      0044D4 90                    5341 	.db 0x90
      0044D5 E2                    5342 	.db 0xe2
      0044D6 95                    5343 	.db 0x95
      0044D7 97                    5344 	.db 0x97
      0044D8 0A                    5345 	.db 0x0a
      0044D9 0D                    5346 	.db 0x0d
      0044DA 00                    5347 	.db 0x00
                                   5348 	.area CSEG    (CODE)
                                   5349 	.area CONST   (CODE)
      0044DB                       5350 ___str_28:
      0044DB E2                    5351 	.db 0xe2
      0044DC 95                    5352 	.db 0x95
      0044DD 91                    5353 	.db 0x91
      0044DE 20 20 20 20 20 20 20  5354 	.ascii "       ! ADDRESS OUT OF RANGE !         "
             21 20 41 44 44 52 45
             53 53 20 4F 55 54 20
             4F 46 20 52 41 4E 47
             45 20 21 20 20 20 20
             20 20 20 20 20
      004506 E2                    5355 	.db 0xe2
      004507 95                    5356 	.db 0x95
      004508 91                    5357 	.db 0x91
      004509 0A                    5358 	.db 0x0a
      00450A 0D                    5359 	.db 0x0d
      00450B 00                    5360 	.db 0x00
                                   5361 	.area CSEG    (CODE)
                                   5362 	.area CONST   (CODE)
      00450C                       5363 ___str_29:
      00450C E2                    5364 	.db 0xe2
      00450D 95                    5365 	.db 0x95
      00450E 91                    5366 	.db 0x91
      00450F 20 20 20 20 20 50 6C  5367 	.ascii "     Please Enter Valid Address         "
             65 61 73 65 20 45 6E
             74 65 72 20 56 61 6C
             69 64 20 41 64 64 72
             65 73 73 20 20 20 20
             20 20 20 20 20
      004537 E2                    5368 	.db 0xe2
      004538 95                    5369 	.db 0x95
      004539 91                    5370 	.db 0x91
      00453A 0A                    5371 	.db 0x0a
      00453B 0D                    5372 	.db 0x0d
      00453C 00                    5373 	.db 0x00
                                   5374 	.area CSEG    (CODE)
                                   5375 	.area CONST   (CODE)
      00453D                       5376 ___str_30:
      00453D E2                    5377 	.db 0xe2
      00453E 95                    5378 	.db 0x95
      00453F 9A                    5379 	.db 0x9a
      004540 E2                    5380 	.db 0xe2
      004541 95                    5381 	.db 0x95
      004542 90                    5382 	.db 0x90
      004543 E2                    5383 	.db 0xe2
      004544 95                    5384 	.db 0x95
      004545 90                    5385 	.db 0x90
      004546 E2                    5386 	.db 0xe2
      004547 95                    5387 	.db 0x95
      004548 90                    5388 	.db 0x90
      004549 E2                    5389 	.db 0xe2
      00454A 95                    5390 	.db 0x95
      00454B 90                    5391 	.db 0x90
      00454C E2                    5392 	.db 0xe2
      00454D 95                    5393 	.db 0x95
      00454E 90                    5394 	.db 0x90
      00454F E2                    5395 	.db 0xe2
      004550 95                    5396 	.db 0x95
      004551 90                    5397 	.db 0x90
      004552 E2                    5398 	.db 0xe2
      004553 95                    5399 	.db 0x95
      004554 90                    5400 	.db 0x90
      004555 E2                    5401 	.db 0xe2
      004556 95                    5402 	.db 0x95
      004557 90                    5403 	.db 0x90
      004558 E2                    5404 	.db 0xe2
      004559 95                    5405 	.db 0x95
      00455A 90                    5406 	.db 0x90
      00455B E2                    5407 	.db 0xe2
      00455C 95                    5408 	.db 0x95
      00455D 90                    5409 	.db 0x90
      00455E E2                    5410 	.db 0xe2
      00455F 95                    5411 	.db 0x95
      004560 90                    5412 	.db 0x90
      004561 E2                    5413 	.db 0xe2
      004562 95                    5414 	.db 0x95
      004563 90                    5415 	.db 0x90
      004564 E2                    5416 	.db 0xe2
      004565 95                    5417 	.db 0x95
      004566 90                    5418 	.db 0x90
      004567 E2                    5419 	.db 0xe2
      004568 95                    5420 	.db 0x95
      004569 90                    5421 	.db 0x90
      00456A E2                    5422 	.db 0xe2
      00456B 95                    5423 	.db 0x95
      00456C 90                    5424 	.db 0x90
      00456D E2                    5425 	.db 0xe2
      00456E 95                    5426 	.db 0x95
      00456F 90                    5427 	.db 0x90
      004570 E2                    5428 	.db 0xe2
      004571 95                    5429 	.db 0x95
      004572 90                    5430 	.db 0x90
      004573 E2                    5431 	.db 0xe2
      004574 95                    5432 	.db 0x95
      004575 90                    5433 	.db 0x90
      004576 E2                    5434 	.db 0xe2
      004577 95                    5435 	.db 0x95
      004578 90                    5436 	.db 0x90
      004579 E2                    5437 	.db 0xe2
      00457A 95                    5438 	.db 0x95
      00457B 90                    5439 	.db 0x90
      00457C E2                    5440 	.db 0xe2
      00457D 95                    5441 	.db 0x95
      00457E 90                    5442 	.db 0x90
      00457F E2                    5443 	.db 0xe2
      004580 95                    5444 	.db 0x95
      004581 90                    5445 	.db 0x90
      004582 E2                    5446 	.db 0xe2
      004583 95                    5447 	.db 0x95
      004584 90                    5448 	.db 0x90
      004585 E2                    5449 	.db 0xe2
      004586 95                    5450 	.db 0x95
      004587 90                    5451 	.db 0x90
      004588 E2                    5452 	.db 0xe2
      004589 95                    5453 	.db 0x95
      00458A 90                    5454 	.db 0x90
      00458B E2                    5455 	.db 0xe2
      00458C 95                    5456 	.db 0x95
      00458D 90                    5457 	.db 0x90
      00458E E2                    5458 	.db 0xe2
      00458F 95                    5459 	.db 0x95
      004590 90                    5460 	.db 0x90
      004591 E2                    5461 	.db 0xe2
      004592 95                    5462 	.db 0x95
      004593 90                    5463 	.db 0x90
      004594 E2                    5464 	.db 0xe2
      004595 95                    5465 	.db 0x95
      004596 90                    5466 	.db 0x90
      004597 E2                    5467 	.db 0xe2
      004598 95                    5468 	.db 0x95
      004599 90                    5469 	.db 0x90
      00459A E2                    5470 	.db 0xe2
      00459B 95                    5471 	.db 0x95
      00459C 90                    5472 	.db 0x90
      00459D E2                    5473 	.db 0xe2
      00459E 95                    5474 	.db 0x95
      00459F 90                    5475 	.db 0x90
      0045A0 E2                    5476 	.db 0xe2
      0045A1 95                    5477 	.db 0x95
      0045A2 90                    5478 	.db 0x90
      0045A3 E2                    5479 	.db 0xe2
      0045A4 95                    5480 	.db 0x95
      0045A5 90                    5481 	.db 0x90
      0045A6 E2                    5482 	.db 0xe2
      0045A7 95                    5483 	.db 0x95
      0045A8 90                    5484 	.db 0x90
      0045A9 E2                    5485 	.db 0xe2
      0045AA 95                    5486 	.db 0x95
      0045AB 90                    5487 	.db 0x90
      0045AC E2                    5488 	.db 0xe2
      0045AD 95                    5489 	.db 0x95
      0045AE 90                    5490 	.db 0x90
      0045AF E2                    5491 	.db 0xe2
      0045B0 95                    5492 	.db 0x95
      0045B1 90                    5493 	.db 0x90
      0045B2 E2                    5494 	.db 0xe2
      0045B3 95                    5495 	.db 0x95
      0045B4 90                    5496 	.db 0x90
      0045B5 E2                    5497 	.db 0xe2
      0045B6 95                    5498 	.db 0x95
      0045B7 90                    5499 	.db 0x90
      0045B8 E2                    5500 	.db 0xe2
      0045B9 95                    5501 	.db 0x95
      0045BA 90                    5502 	.db 0x90
      0045BB E2                    5503 	.db 0xe2
      0045BC 95                    5504 	.db 0x95
      0045BD 90                    5505 	.db 0x90
      0045BE E2                    5506 	.db 0xe2
      0045BF 95                    5507 	.db 0x95
      0045C0 9D                    5508 	.db 0x9d
      0045C1 0A                    5509 	.db 0x0a
      0045C2 0D                    5510 	.db 0x0d
      0045C3 00                    5511 	.db 0x00
                                   5512 	.area CSEG    (CODE)
                                   5513 	.area CONST   (CODE)
      0045C4                       5514 ___str_31:
      0045C4 7C 20 42 6C 6F 63 6B  5515 	.ascii "| Block number %d                            "
             20 6E 75 6D 62 65 72
             20 25 64 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20
      0045F1 0A                    5516 	.db 0x0a
      0045F2 0D                    5517 	.db 0x0d
      0045F3 00                    5518 	.db 0x00
                                   5519 	.area CSEG    (CODE)
                                   5520 	.area CONST   (CODE)
      0045F4                       5521 ___str_32:
      0045F4 E2                    5522 	.db 0xe2
      0045F5 94                    5523 	.db 0x94
      0045F6 82                    5524 	.db 0x82
      0045F7 20 45 6E 74 65 72 20  5525 	.ascii " Enter data (hex, up to 2 characters): "
             64 61 74 61 20 28 68
             65 78 2C 20 75 70 20
             74 6F 20 32 20 63 68
             61 72 61 63 74 65 72
             73 29 3A 20
      00461E 0A                    5526 	.db 0x0a
      00461F 0D                    5527 	.db 0x0d
      004620 7C                    5528 	.ascii "|"
      004621 00                    5529 	.db 0x00
                                   5530 	.area CSEG    (CODE)
                                   5531 	.area CONST   (CODE)
      004622                       5532 ___str_33:
      004622 24 20                 5533 	.ascii "$ "
      004624 00                    5534 	.db 0x00
                                   5535 	.area CSEG    (CODE)
                                   5536 	.area CONST   (CODE)
      004625                       5537 ___str_34:
      004625 0A                    5538 	.db 0x0a
      004626 0D                    5539 	.db 0x0d
      004627 E2                    5540 	.db 0xe2
      004628 94                    5541 	.db 0x94
      004629 82                    5542 	.db 0x82
      00462A 20 45 6E 74 65 72 65  5543 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      00463F 0A                    5544 	.db 0x0a
      004640 0D                    5545 	.db 0x0d
      004641 00                    5546 	.db 0x00
                                   5547 	.area CSEG    (CODE)
                                   5548 	.area CONST   (CODE)
      004642                       5549 ___str_35:
      004642 44 61 74 61 20 6F 75  5550 	.ascii "Data out of Range"
             74 20 6F 66 20 52 61
             6E 67 65
      004653 0A                    5551 	.db 0x0a
      004654 0D                    5552 	.db 0x0d
      004655 00                    5553 	.db 0x00
                                   5554 	.area CSEG    (CODE)
                                   5555 	.area CONST   (CODE)
      004656                       5556 ___str_36:
      004656 45 72 72 6F 72 3A 20  5557 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      00467E 0A                    5558 	.db 0x0a
      00467F 0D                    5559 	.db 0x0d
      004680 00                    5560 	.db 0x00
                                   5561 	.area CSEG    (CODE)
                                   5562 	.area CONST   (CODE)
      004681                       5563 ___str_37:
      004681 45 72 72 6F 72 3A 20  5564 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      0046A1 0A                    5565 	.db 0x0a
      0046A2 0D                    5566 	.db 0x0d
      0046A3 00                    5567 	.db 0x00
                                   5568 	.area CSEG    (CODE)
                                   5569 	.area CONST   (CODE)
      0046A4                       5570 ___str_38:
      0046A4 45 72 72 6F 72 3A 20  5571 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      0046BA 0A                    5572 	.db 0x0a
      0046BB 0D                    5573 	.db 0x0d
      0046BC 00                    5574 	.db 0x00
                                   5575 	.area CSEG    (CODE)
                                   5576 	.area CONST   (CODE)
      0046BD                       5577 ___str_39:
      0046BD 7C 20 57 72 69 74 69  5578 	.ascii "| Writing at Address 0x%03X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 33 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      0046EF 0A                    5579 	.db 0x0a
      0046F0 0D                    5580 	.db 0x0d
      0046F1 00                    5581 	.db 0x00
                                   5582 	.area CSEG    (CODE)
                                   5583 	.area CONST   (CODE)
      0046F2                       5584 ___str_40:
      0046F2 E2                    5585 	.db 0xe2
      0046F3 94                    5586 	.db 0x94
      0046F4 82                    5587 	.db 0x82
      0046F5 20 57 72 69 74 65 20  5588 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      004724 E2                    5589 	.db 0xe2
      004725 94                    5590 	.db 0x94
      004726 82                    5591 	.db 0x82
      004727 0A                    5592 	.db 0x0a
      004728 0D                    5593 	.db 0x0d
      004729 00                    5594 	.db 0x00
                                   5595 	.area CSEG    (CODE)
                                   5596 	.area CONST   (CODE)
      00472A                       5597 ___str_41:
      00472A E2                    5598 	.db 0xe2
      00472B 94                    5599 	.db 0x94
      00472C 94                    5600 	.db 0x94
      00472D E2                    5601 	.db 0xe2
      00472E 94                    5602 	.db 0x94
      00472F 80                    5603 	.db 0x80
      004730 E2                    5604 	.db 0xe2
      004731 94                    5605 	.db 0x94
      004732 80                    5606 	.db 0x80
      004733 E2                    5607 	.db 0xe2
      004734 94                    5608 	.db 0x94
      004735 80                    5609 	.db 0x80
      004736 E2                    5610 	.db 0xe2
      004737 94                    5611 	.db 0x94
      004738 80                    5612 	.db 0x80
      004739 E2                    5613 	.db 0xe2
      00473A 94                    5614 	.db 0x94
      00473B 80                    5615 	.db 0x80
      00473C E2                    5616 	.db 0xe2
      00473D 94                    5617 	.db 0x94
      00473E 80                    5618 	.db 0x80
      00473F E2                    5619 	.db 0xe2
      004740 94                    5620 	.db 0x94
      004741 80                    5621 	.db 0x80
      004742 E2                    5622 	.db 0xe2
      004743 94                    5623 	.db 0x94
      004744 80                    5624 	.db 0x80
      004745 E2                    5625 	.db 0xe2
      004746 94                    5626 	.db 0x94
      004747 80                    5627 	.db 0x80
      004748 E2                    5628 	.db 0xe2
      004749 94                    5629 	.db 0x94
      00474A 80                    5630 	.db 0x80
      00474B E2                    5631 	.db 0xe2
      00474C 94                    5632 	.db 0x94
      00474D 80                    5633 	.db 0x80
      00474E E2                    5634 	.db 0xe2
      00474F 94                    5635 	.db 0x94
      004750 80                    5636 	.db 0x80
      004751 E2                    5637 	.db 0xe2
      004752 94                    5638 	.db 0x94
      004753 80                    5639 	.db 0x80
      004754 E2                    5640 	.db 0xe2
      004755 94                    5641 	.db 0x94
      004756 80                    5642 	.db 0x80
      004757 E2                    5643 	.db 0xe2
      004758 94                    5644 	.db 0x94
      004759 80                    5645 	.db 0x80
      00475A E2                    5646 	.db 0xe2
      00475B 94                    5647 	.db 0x94
      00475C 80                    5648 	.db 0x80
      00475D E2                    5649 	.db 0xe2
      00475E 94                    5650 	.db 0x94
      00475F 80                    5651 	.db 0x80
      004760 E2                    5652 	.db 0xe2
      004761 94                    5653 	.db 0x94
      004762 80                    5654 	.db 0x80
      004763 E2                    5655 	.db 0xe2
      004764 94                    5656 	.db 0x94
      004765 80                    5657 	.db 0x80
      004766 E2                    5658 	.db 0xe2
      004767 94                    5659 	.db 0x94
      004768 80                    5660 	.db 0x80
      004769 E2                    5661 	.db 0xe2
      00476A 94                    5662 	.db 0x94
      00476B 80                    5663 	.db 0x80
      00476C E2                    5664 	.db 0xe2
      00476D 94                    5665 	.db 0x94
      00476E 80                    5666 	.db 0x80
      00476F E2                    5667 	.db 0xe2
      004770 94                    5668 	.db 0x94
      004771 80                    5669 	.db 0x80
      004772 E2                    5670 	.db 0xe2
      004773 94                    5671 	.db 0x94
      004774 80                    5672 	.db 0x80
      004775 E2                    5673 	.db 0xe2
      004776 94                    5674 	.db 0x94
      004777 80                    5675 	.db 0x80
      004778 E2                    5676 	.db 0xe2
      004779 94                    5677 	.db 0x94
      00477A 80                    5678 	.db 0x80
      00477B E2                    5679 	.db 0xe2
      00477C 94                    5680 	.db 0x94
      00477D 80                    5681 	.db 0x80
      00477E E2                    5682 	.db 0xe2
      00477F 94                    5683 	.db 0x94
      004780 80                    5684 	.db 0x80
      004781 E2                    5685 	.db 0xe2
      004782 94                    5686 	.db 0x94
      004783 80                    5687 	.db 0x80
      004784 E2                    5688 	.db 0xe2
      004785 94                    5689 	.db 0x94
      004786 80                    5690 	.db 0x80
      004787 E2                    5691 	.db 0xe2
      004788 94                    5692 	.db 0x94
      004789 80                    5693 	.db 0x80
      00478A E2                    5694 	.db 0xe2
      00478B 94                    5695 	.db 0x94
      00478C 80                    5696 	.db 0x80
      00478D E2                    5697 	.db 0xe2
      00478E 94                    5698 	.db 0x94
      00478F 80                    5699 	.db 0x80
      004790 E2                    5700 	.db 0xe2
      004791 94                    5701 	.db 0x94
      004792 80                    5702 	.db 0x80
      004793 E2                    5703 	.db 0xe2
      004794 94                    5704 	.db 0x94
      004795 80                    5705 	.db 0x80
      004796 E2                    5706 	.db 0xe2
      004797 94                    5707 	.db 0x94
      004798 80                    5708 	.db 0x80
      004799 E2                    5709 	.db 0xe2
      00479A 94                    5710 	.db 0x94
      00479B 80                    5711 	.db 0x80
      00479C E2                    5712 	.db 0xe2
      00479D 94                    5713 	.db 0x94
      00479E 80                    5714 	.db 0x80
      00479F E2                    5715 	.db 0xe2
      0047A0 94                    5716 	.db 0x94
      0047A1 80                    5717 	.db 0x80
      0047A2 E2                    5718 	.db 0xe2
      0047A3 94                    5719 	.db 0x94
      0047A4 80                    5720 	.db 0x80
      0047A5 E2                    5721 	.db 0xe2
      0047A6 94                    5722 	.db 0x94
      0047A7 80                    5723 	.db 0x80
      0047A8 E2                    5724 	.db 0xe2
      0047A9 94                    5725 	.db 0x94
      0047AA 80                    5726 	.db 0x80
      0047AB E2                    5727 	.db 0xe2
      0047AC 94                    5728 	.db 0x94
      0047AD 80                    5729 	.db 0x80
      0047AE E2                    5730 	.db 0xe2
      0047AF 94                    5731 	.db 0x94
      0047B0 80                    5732 	.db 0x80
      0047B1 E2                    5733 	.db 0xe2
      0047B2 94                    5734 	.db 0x94
      0047B3 80                    5735 	.db 0x80
      0047B4 E2                    5736 	.db 0xe2
      0047B5 94                    5737 	.db 0x94
      0047B6 80                    5738 	.db 0x80
      0047B7 E2                    5739 	.db 0xe2
      0047B8 94                    5740 	.db 0x94
      0047B9 80                    5741 	.db 0x80
      0047BA E2                    5742 	.db 0xe2
      0047BB 94                    5743 	.db 0x94
      0047BC 98                    5744 	.db 0x98
      0047BD 0A                    5745 	.db 0x0a
      0047BE 0D                    5746 	.db 0x0d
      0047BF 00                    5747 	.db 0x00
                                   5748 	.area CSEG    (CODE)
                                   5749 	.area CONST   (CODE)
      0047C0                       5750 ___str_42:
      0047C0 45 72 72 6F 72 3A 20  5751 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      0047ED 0A                    5752 	.db 0x0a
      0047EE 0D                    5753 	.db 0x0d
      0047EF 00                    5754 	.db 0x00
                                   5755 	.area CSEG    (CODE)
                                   5756 	.area CONST   (CODE)
      0047F0                       5757 ___str_43:
      0047F0 45 72 72 6F 72 3A 20  5758 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      00481C 0A                    5759 	.db 0x0a
      00481D 0D                    5760 	.db 0x0d
      00481E 00                    5761 	.db 0x00
                                   5762 	.area CSEG    (CODE)
                                   5763 	.area CONST   (CODE)
      00481F                       5764 ___str_44:
      00481F 7C 20 30 78 25 30 33  5765 	.ascii "| 0x%03X : 0x%02X "
             58 20 3A 20 30 78 25
             30 32 58 20
      004831 0A                    5766 	.db 0x0a
      004832 0D                    5767 	.db 0x0d
      004833 00                    5768 	.db 0x00
                                   5769 	.area CSEG    (CODE)
                                   5770 	.area CONST   (CODE)
      004834                       5771 ___str_45:
      004834 E2                    5772 	.db 0xe2
      004835 94                    5773 	.db 0x94
      004836 82                    5774 	.db 0x82
      004837 20 52 65 61 64 20 73  5775 	.ascii " Read successful!                 "
             75 63 63 65 73 73 66
             75 6C 21 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20
      004859 E2                    5776 	.db 0xe2
      00485A 94                    5777 	.db 0x94
      00485B 82                    5778 	.db 0x82
      00485C 0A                    5779 	.db 0x0a
      00485D 0D                    5780 	.db 0x0d
      00485E 00                    5781 	.db 0x00
                                   5782 	.area CSEG    (CODE)
                                   5783 	.area CONST   (CODE)
      00485F                       5784 ___str_46:
      00485F 41 43 4B 20 44 49 44  5785 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      004871 0A                    5786 	.db 0x0a
      004872 0D                    5787 	.db 0x0d
      004873 00                    5788 	.db 0x00
                                   5789 	.area CSEG    (CODE)
                                   5790 	.area CONST   (CODE)
      004874                       5791 ___str_47:
      004874 0D                    5792 	.db 0x0d
      004875 0A                    5793 	.db 0x0a
      004876 2D 2D 2D 2D 2D 2D 2D  5794 	.ascii "------------------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      0048B2 2D 2D 2D 2D           5795 	.ascii "----"
      0048B6 0D                    5796 	.db 0x0d
      0048B7 0A                    5797 	.db 0x0a
      0048B8 00                    5798 	.db 0x00
                                   5799 	.area CSEG    (CODE)
                                   5800 	.area CONST   (CODE)
      0048B9                       5801 ___str_48:
      0048B9 20 20 20 20 20 20 20  5802 	.ascii "                    EEPROM Hex Dump                         "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 45
             45 50 52 4F 4D 20 48
             65 78 20 44 75 6D 70
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      0048F5 20 20 20 20 20 20     5803 	.ascii "      "
      0048FB 0D                    5804 	.db 0x0d
      0048FC 0A                    5805 	.db 0x0a
      0048FD 00                    5806 	.db 0x00
                                   5807 	.area CSEG    (CODE)
                                   5808 	.area CONST   (CODE)
      0048FE                       5809 ___str_49:
      0048FE 2D 2D 2D 2D 2D 2D 2D  5810 	.ascii "------------------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      00493A 2D 2D 2D 2D           5811 	.ascii "----"
      00493E 0D                    5812 	.db 0x0d
      00493F 0A                    5813 	.db 0x0a
      004940 00                    5814 	.db 0x00
                                   5815 	.area CSEG    (CODE)
                                   5816 	.area CONST   (CODE)
      004941                       5817 ___str_50:
      004941 20 20 20 20 20 30 20  5818 	.ascii "     0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F"
             20 31 20 20 32 20 20
             33 20 20 34 20 20 35
             20 20 36 20 20 37 20
             20 38 20 20 39 20 20
             41 20 20 42 20 20 43
             20 20 44 20 20 45 20
             20 46
      004974 0D                    5819 	.db 0x0d
      004975 0A                    5820 	.db 0x0a
      004976 00                    5821 	.db 0x00
                                   5822 	.area CSEG    (CODE)
                                   5823 	.area CONST   (CODE)
      004977                       5824 ___str_51:
      004977 25 30 33 58 3A 20     5825 	.ascii "%03X: "
      00497D 00                    5826 	.db 0x00
                                   5827 	.area CSEG    (CODE)
                                   5828 	.area CONST   (CODE)
      00497E                       5829 ___str_52:
      00497E 45 72 72 6F 72 3A 20  5830 	.ascii "Error: Device not responding"
             44 65 76 69 63 65 20
             6E 6F 74 20 72 65 73
             70 6F 6E 64 69 6E 67
      00499A 0D                    5831 	.db 0x0d
      00499B 0A                    5832 	.db 0x0a
      00499C 00                    5833 	.db 0x00
                                   5834 	.area CSEG    (CODE)
                                   5835 	.area CONST   (CODE)
      00499D                       5836 ___str_53:
      00499D 45 72 72 6F 72 3A 20  5837 	.ascii "Error: Address write failed"
             41 64 64 72 65 73 73
             20 77 72 69 74 65 20
             66 61 69 6C 65 64
      0049B8 0D                    5838 	.db 0x0d
      0049B9 0A                    5839 	.db 0x0a
      0049BA 00                    5840 	.db 0x00
                                   5841 	.area CSEG    (CODE)
                                   5842 	.area CONST   (CODE)
      0049BB                       5843 ___str_54:
      0049BB 45 72 72 6F 72 3A 20  5844 	.ascii "Error: Device not responding in read mode"
             44 65 76 69 63 65 20
             6E 6F 74 20 72 65 73
             70 6F 6E 64 69 6E 67
             20 69 6E 20 72 65 61
             64 20 6D 6F 64 65
      0049E4 0D                    5845 	.db 0x0d
      0049E5 0A                    5846 	.db 0x0a
      0049E6 00                    5847 	.db 0x00
                                   5848 	.area CSEG    (CODE)
                                   5849 	.area CONST   (CODE)
      0049E7                       5850 ___str_55:
      0049E7 25 30 32 58 20        5851 	.ascii "%02X "
      0049EC 00                    5852 	.db 0x00
                                   5853 	.area CSEG    (CODE)
                                   5854 	.area CONST   (CODE)
      0049ED                       5855 ___str_56:
      0049ED 20 20 20              5856 	.ascii "   "
      0049F0 00                    5857 	.db 0x00
                                   5858 	.area CSEG    (CODE)
                                   5859 	.area CONST   (CODE)
      0049F1                       5860 ___str_57:
      0049F1 20 7C 20              5861 	.ascii " | "
      0049F4 00                    5862 	.db 0x00
                                   5863 	.area CSEG    (CODE)
                                   5864 	.area CONST   (CODE)
      0049F5                       5865 ___str_58:
      0049F5 0D                    5866 	.db 0x0d
      0049F6 0A                    5867 	.db 0x0a
      0049F7 00                    5868 	.db 0x00
                                   5869 	.area CSEG    (CODE)
                                   5870 	.area CONST   (CODE)
      0049F8                       5871 ___str_59:
      0049F8 0A                    5872 	.db 0x0a
      0049F9 45 6E 74 65 72 20 53  5873 	.ascii "Enter Start Address for HEX Dump (000-7FF):"
             74 61 72 74 20 41 64
             64 72 65 73 73 20 66
             6F 72 20 48 45 58 20
             44 75 6D 70 20 28 30
             30 30 2D 37 46 46 29
             3A
      004A24 0D                    5874 	.db 0x0d
      004A25 0A                    5875 	.db 0x0a
      004A26 00                    5876 	.db 0x00
                                   5877 	.area CSEG    (CODE)
                                   5878 	.area CONST   (CODE)
      004A27                       5879 ___str_60:
      004A27 49 6E 76 61 6C 69 64  5880 	.ascii "Invalid Start Address! Must be between 0x000 and 0x7FF"
             20 53 74 61 72 74 20
             41 64 64 72 65 73 73
             21 20 4D 75 73 74 20
             62 65 20 62 65 74 77
             65 65 6E 20 30 78 30
             30 30 20 61 6E 64 20
             30 78 37 46 46
      004A5D 0D                    5881 	.db 0x0d
      004A5E 0A                    5882 	.db 0x0a
      004A5F 00                    5883 	.db 0x00
                                   5884 	.area CSEG    (CODE)
                                   5885 	.area CONST   (CODE)
      004A60                       5886 ___str_61:
      004A60 0A                    5887 	.db 0x0a
      004A61 45 6E 74 65 72 20 45  5888 	.ascii "Enter End Address for HEX Dump (000-7FF):"
             6E 64 20 41 64 64 72
             65 73 73 20 66 6F 72
             20 48 45 58 20 44 75
             6D 70 20 28 30 30 30
             2D 37 46 46 29 3A
      004A8A 0D                    5889 	.db 0x0d
      004A8B 0A                    5890 	.db 0x0a
      004A8C 00                    5891 	.db 0x00
                                   5892 	.area CSEG    (CODE)
                                   5893 	.area CONST   (CODE)
      004A8D                       5894 ___str_62:
      004A8D 49 6E 76 61 6C 69 64  5895 	.ascii "Invalid End Address! Must be between 0x%03X and 0x7FF"
             20 45 6E 64 20 41 64
             64 72 65 73 73 21 20
             4D 75 73 74 20 62 65
             20 62 65 74 77 65 65
             6E 20 30 78 25 30 33
             58 20 61 6E 64 20 30
             78 37 46 46
      004AC2 0D                    5896 	.db 0x0d
      004AC3 0A                    5897 	.db 0x0a
      004AC4 00                    5898 	.db 0x00
                                   5899 	.area CSEG    (CODE)
                                   5900 	.area CONST   (CODE)
      004AC5                       5901 ___str_63:
      004AC5 57 72 69 74 69 6E 67  5902 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      004AEA 0A                    5903 	.db 0x0a
      004AEB 0D                    5904 	.db 0x0d
      004AEC 00                    5905 	.db 0x00
                                   5906 	.area CSEG    (CODE)
                                   5907 	.area CONST   (CODE)
      004AED                       5908 ___str_64:
      004AED 52 65 61 64 20 62 61  5909 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      004B12 0A                    5910 	.db 0x0a
      004B13 0D                    5911 	.db 0x0d
      004B14 00                    5912 	.db 0x00
                                   5913 	.area CSEG    (CODE)
                                   5914 	.area CONST   (CODE)
      004B15                       5915 ___str_65:
      004B15 4D 41 54 43 48 20 2D  5916 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      004B33 0A                    5917 	.db 0x0a
      004B34 0D                    5918 	.db 0x0d
      004B35 00                    5919 	.db 0x00
                                   5920 	.area CSEG    (CODE)
                                   5921 	.area CONST   (CODE)
      004B36                       5922 ___str_66:
      004B36 45 52 52 4F 52 20 2D  5923 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      004B4C 0A                    5924 	.db 0x0a
      004B4D 0D                    5925 	.db 0x0d
      004B4E 00                    5926 	.db 0x00
                                   5927 	.area CSEG    (CODE)
                                   5928 	.area XINIT   (CODE)
      004B5A                       5929 __xinit__address_range_flag:
      004B5A 01 00                 5930 	.byte #0x01, #0x00	;  1
      004B5C                       5931 __xinit__data_range_flag:
      004B5C 01 00                 5932 	.byte #0x01, #0x00	;  1
      004B5E                       5933 __xinit__block:
      004B5E 00 00                 5934 	.byte #0x00, #0x00	; 0
                                   5935 	.area CABS    (ABS,CODE)
