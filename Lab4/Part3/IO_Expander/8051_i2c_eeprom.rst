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
      002092 74 25            [12]  672 	mov	a,#___str_0
      002094 C0 E0            [24]  673 	push	acc
      002096 74 3B            [12]  674 	mov	a,#(___str_0 >> 8)
      002098 C0 E0            [24]  675 	push	acc
      00209A 74 80            [12]  676 	mov	a,#0x80
      00209C C0 E0            [24]  677 	push	acc
      00209E 12 30 C3         [24]  678 	lcall	_printf
      0020A1 15 81            [12]  679 	dec	sp
      0020A3 15 81            [12]  680 	dec	sp
      0020A5 15 81            [12]  681 	dec	sp
                                    682 ;	8051_i2c_eeprom.c:99: printf("║           I2C Memory Management System v1.0            ║\n\r");
      0020A7 74 D7            [12]  683 	mov	a,#___str_1
      0020A9 C0 E0            [24]  684 	push	acc
      0020AB 74 3B            [12]  685 	mov	a,#(___str_1 >> 8)
      0020AD C0 E0            [24]  686 	push	acc
      0020AF 74 80            [12]  687 	mov	a,#0x80
      0020B1 C0 E0            [24]  688 	push	acc
      0020B3 12 30 C3         [24]  689 	lcall	_printf
      0020B6 15 81            [12]  690 	dec	sp
      0020B8 15 81            [12]  691 	dec	sp
      0020BA 15 81            [12]  692 	dec	sp
                                    693 ;	8051_i2c_eeprom.c:100: printf("╚════════════════════════════════════════════════════════╝\n\r");
      0020BC 74 18            [12]  694 	mov	a,#___str_2
      0020BE C0 E0            [24]  695 	push	acc
      0020C0 74 3C            [12]  696 	mov	a,#(___str_2 >> 8)
      0020C2 C0 E0            [24]  697 	push	acc
      0020C4 74 80            [12]  698 	mov	a,#0x80
      0020C6 C0 E0            [24]  699 	push	acc
      0020C8 12 30 C3         [24]  700 	lcall	_printf
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
      0020D2 74 C9            [12]  715 	mov	a,#___str_3
      0020D4 C0 E0            [24]  716 	push	acc
      0020D6 74 3C            [12]  717 	mov	a,#(___str_3 >> 8)
      0020D8 C0 E0            [24]  718 	push	acc
      0020DA 74 80            [12]  719 	mov	a,#0x80
      0020DC C0 E0            [24]  720 	push	acc
      0020DE 12 30 C3         [24]  721 	lcall	_printf
      0020E1 15 81            [12]  722 	dec	sp
      0020E3 15 81            [12]  723 	dec	sp
      0020E5 15 81            [12]  724 	dec	sp
                                    725 ;	8051_i2c_eeprom.c:110: printf("│  Command   │               Description                  │\n\r");
      0020E7 74 7F            [12]  726 	mov	a,#___str_4
      0020E9 C0 E0            [24]  727 	push	acc
      0020EB 74 3D            [12]  728 	mov	a,#(___str_4 >> 8)
      0020ED C0 E0            [24]  729 	push	acc
      0020EF 74 80            [12]  730 	mov	a,#0x80
      0020F1 C0 E0            [24]  731 	push	acc
      0020F3 12 30 C3         [24]  732 	lcall	_printf
      0020F6 15 81            [12]  733 	dec	sp
      0020F8 15 81            [12]  734 	dec	sp
      0020FA 15 81            [12]  735 	dec	sp
                                    736 ;	8051_i2c_eeprom.c:111: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      0020FC 74 C3            [12]  737 	mov	a,#___str_5
      0020FE C0 E0            [24]  738 	push	acc
      002100 74 3D            [12]  739 	mov	a,#(___str_5 >> 8)
      002102 C0 E0            [24]  740 	push	acc
      002104 74 80            [12]  741 	mov	a,#0x80
      002106 C0 E0            [24]  742 	push	acc
      002108 12 30 C3         [24]  743 	lcall	_printf
      00210B 15 81            [12]  744 	dec	sp
      00210D 15 81            [12]  745 	dec	sp
      00210F 15 81            [12]  746 	dec	sp
                                    747 ;	8051_i2c_eeprom.c:112: printf("│     R      │ Read from address                          │\n\r");
      002111 74 77            [12]  748 	mov	a,#___str_6
      002113 C0 E0            [24]  749 	push	acc
      002115 74 3E            [12]  750 	mov	a,#(___str_6 >> 8)
      002117 C0 E0            [24]  751 	push	acc
      002119 74 80            [12]  752 	mov	a,#0x80
      00211B C0 E0            [24]  753 	push	acc
      00211D 12 30 C3         [24]  754 	lcall	_printf
      002120 15 81            [12]  755 	dec	sp
      002122 15 81            [12]  756 	dec	sp
      002124 15 81            [12]  757 	dec	sp
                                    758 ;	8051_i2c_eeprom.c:113: printf("│     W      │ Write data to address                      │\n\r");
      002126 74 BB            [12]  759 	mov	a,#___str_7
      002128 C0 E0            [24]  760 	push	acc
      00212A 74 3E            [12]  761 	mov	a,#(___str_7 >> 8)
      00212C C0 E0            [24]  762 	push	acc
      00212E 74 80            [12]  763 	mov	a,#0x80
      002130 C0 E0            [24]  764 	push	acc
      002132 12 30 C3         [24]  765 	lcall	_printf
      002135 15 81            [12]  766 	dec	sp
      002137 15 81            [12]  767 	dec	sp
      002139 15 81            [12]  768 	dec	sp
                                    769 ;	8051_i2c_eeprom.c:114: printf("│     H      │ Display hex dump                           │\n\r");
      00213B 74 FF            [12]  770 	mov	a,#___str_8
      00213D C0 E0            [24]  771 	push	acc
      00213F 74 3E            [12]  772 	mov	a,#(___str_8 >> 8)
      002141 C0 E0            [24]  773 	push	acc
      002143 74 80            [12]  774 	mov	a,#0x80
      002145 C0 E0            [24]  775 	push	acc
      002147 12 30 C3         [24]  776 	lcall	_printf
      00214A 15 81            [12]  777 	dec	sp
      00214C 15 81            [12]  778 	dec	sp
      00214E 15 81            [12]  779 	dec	sp
                                    780 ;	8051_i2c_eeprom.c:115: printf("│     X      │ Reset memory system                        │\n\r");
      002150 74 43            [12]  781 	mov	a,#___str_9
      002152 C0 E0            [24]  782 	push	acc
      002154 74 3F            [12]  783 	mov	a,#(___str_9 >> 8)
      002156 C0 E0            [24]  784 	push	acc
      002158 74 80            [12]  785 	mov	a,#0x80
      00215A C0 E0            [24]  786 	push	acc
      00215C 12 30 C3         [24]  787 	lcall	_printf
      00215F 15 81            [12]  788 	dec	sp
      002161 15 81            [12]  789 	dec	sp
      002163 15 81            [12]  790 	dec	sp
                                    791 ;	8051_i2c_eeprom.c:116: printf("│     ?      │ Display this help menu                     │\n\r");
      002165 74 87            [12]  792 	mov	a,#___str_10
      002167 C0 E0            [24]  793 	push	acc
      002169 74 3F            [12]  794 	mov	a,#(___str_10 >> 8)
      00216B C0 E0            [24]  795 	push	acc
      00216D 74 80            [12]  796 	mov	a,#0x80
      00216F C0 E0            [24]  797 	push	acc
      002171 12 30 C3         [24]  798 	lcall	_printf
      002174 15 81            [12]  799 	dec	sp
      002176 15 81            [12]  800 	dec	sp
      002178 15 81            [12]  801 	dec	sp
                                    802 ;	8051_i2c_eeprom.c:117: printf("│     I      │ IO Expander                                │\n\r");
      00217A 74 CB            [12]  803 	mov	a,#___str_11
      00217C C0 E0            [24]  804 	push	acc
      00217E 74 3F            [12]  805 	mov	a,#(___str_11 >> 8)
      002180 C0 E0            [24]  806 	push	acc
      002182 74 80            [12]  807 	mov	a,#0x80
      002184 C0 E0            [24]  808 	push	acc
      002186 12 30 C3         [24]  809 	lcall	_printf
      002189 15 81            [12]  810 	dec	sp
      00218B 15 81            [12]  811 	dec	sp
      00218D 15 81            [12]  812 	dec	sp
                                    813 ;	8051_i2c_eeprom.c:118: printf("│     L      │ Leave IO Expander                          │\n\r");
      00218F 74 0F            [12]  814 	mov	a,#___str_12
      002191 C0 E0            [24]  815 	push	acc
      002193 74 40            [12]  816 	mov	a,#(___str_12 >> 8)
      002195 C0 E0            [24]  817 	push	acc
      002197 74 80            [12]  818 	mov	a,#0x80
      002199 C0 E0            [24]  819 	push	acc
      00219B 12 30 C3         [24]  820 	lcall	_printf
      00219E 15 81            [12]  821 	dec	sp
      0021A0 15 81            [12]  822 	dec	sp
      0021A2 15 81            [12]  823 	dec	sp
                                    824 ;	8051_i2c_eeprom.c:119: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      0021A4 74 53            [12]  825 	mov	a,#___str_13
      0021A6 C0 E0            [24]  826 	push	acc
      0021A8 74 40            [12]  827 	mov	a,#(___str_13 >> 8)
      0021AA C0 E0            [24]  828 	push	acc
      0021AC 74 80            [12]  829 	mov	a,#0x80
      0021AE C0 E0            [24]  830 	push	acc
      0021B0 12 30 C3         [24]  831 	lcall	_printf
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
      0021DC 12 23 FD         [24]  864 	lcall	_pcf8574_read_pin
      0021DF AF 82            [24]  865 	mov	r7,dpl
                                    866 ;	8051_i2c_eeprom.c:131: pcf8574_set_pin(7,data);
      0021E1 90 04 06         [24]  867 	mov	dptr,#_pcf8574_set_pin_PARM_2
      0021E4 EF               [12]  868 	mov	a,r7
      0021E5 F0               [24]  869 	movx	@dptr,a
      0021E6 75 82 07         [24]  870 	mov	dpl,#0x07
      0021E9 12 24 39         [24]  871 	lcall	_pcf8574_set_pin
                                    872 ;	8051_i2c_eeprom.c:134: }
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
                                    891 ;	8051_i2c_eeprom.c:136: void disable_interrupt0(void)
                                    892 ;	-----------------------------------------
                                    893 ;	 function disable_interrupt0
                                    894 ;	-----------------------------------------
      002209                        895 _disable_interrupt0:
                                    896 ;	8051_i2c_eeprom.c:139: IT0 = 0;           // Set INT0 to be edge-triggered
                                    897 ;	assignBit
      002209 C2 88            [12]  898 	clr	_IT0
                                    899 ;	8051_i2c_eeprom.c:140: EX0 = 0;          // Enable INT0 interrupt
                                    900 ;	assignBit
      00220B C2 A8            [12]  901 	clr	_EX0
                                    902 ;	8051_i2c_eeprom.c:141: EA = 0;           // Enable global interrupts
                                    903 ;	assignBit
      00220D C2 AF            [12]  904 	clr	_EA
                                    905 ;	8051_i2c_eeprom.c:142: }
      00220F 22               [24]  906 	ret
                                    907 ;------------------------------------------------------------
                                    908 ;Allocation info for local variables in function 'main'
                                    909 ;------------------------------------------------------------
                                    910 ;user_input                Allocated with name '_main_user_input_131072_66'
                                    911 ;addr                      Allocated with name '_main_addr_262145_69'
                                    912 ;data                      Allocated with name '_main_data_262146_71'
                                    913 ;addr                      Allocated with name '_main_addr_262145_74'
                                    914 ;------------------------------------------------------------
                                    915 ;	8051_i2c_eeprom.c:147: int main()
                                    916 ;	-----------------------------------------
                                    917 ;	 function main
                                    918 ;	-----------------------------------------
      002210                        919 _main:
                                    920 ;	8051_i2c_eeprom.c:150: P1 &= ~(1<<3);  // Set P1.3 as output
      002210 53 90 F7         [24]  921 	anl	_P1,#0xf7
                                    922 ;	8051_i2c_eeprom.c:151: P1 &= ~(1<<4);  // Set P1.4 as output
      002213 53 90 EF         [24]  923 	anl	_P1,#0xef
                                    924 ;	8051_i2c_eeprom.c:152: ui();
      002216 12 20 92         [24]  925 	lcall	_ui
                                    926 ;	8051_i2c_eeprom.c:153: command_menu();
      002219 12 20 D2         [24]  927 	lcall	_command_menu
                                    928 ;	8051_i2c_eeprom.c:154: i2c_start();
      00221C 12 2B 8A         [24]  929 	lcall	_i2c_start
                                    930 ;	8051_i2c_eeprom.c:155: while(1)
      00221F                        931 00117$:
                                    932 ;	8051_i2c_eeprom.c:157: char user_input = getchar();
      00221F 12 20 84         [24]  933 	lcall	_getchar
      002222 AE 82            [24]  934 	mov	r6,dpl
                                    935 ;	8051_i2c_eeprom.c:158: printf("| $ %c\n\r", user_input);
      002224 8E 05            [24]  936 	mov	ar5,r6
      002226 7F 00            [12]  937 	mov	r7,#0x00
      002228 C0 06            [24]  938 	push	ar6
      00222A C0 05            [24]  939 	push	ar5
      00222C C0 07            [24]  940 	push	ar7
      00222E 74 07            [12]  941 	mov	a,#___str_14
      002230 C0 E0            [24]  942 	push	acc
      002232 74 41            [12]  943 	mov	a,#(___str_14 >> 8)
      002234 C0 E0            [24]  944 	push	acc
      002236 74 80            [12]  945 	mov	a,#0x80
      002238 C0 E0            [24]  946 	push	acc
      00223A 12 30 C3         [24]  947 	lcall	_printf
      00223D E5 81            [12]  948 	mov	a,sp
      00223F 24 FB            [12]  949 	add	a,#0xfb
      002241 F5 81            [12]  950 	mov	sp,a
                                    951 ;	8051_i2c_eeprom.c:159: printf("\n\r");
      002243 74 10            [12]  952 	mov	a,#___str_15
      002245 C0 E0            [24]  953 	push	acc
      002247 74 41            [12]  954 	mov	a,#(___str_15 >> 8)
      002249 C0 E0            [24]  955 	push	acc
      00224B 74 80            [12]  956 	mov	a,#0x80
      00224D C0 E0            [24]  957 	push	acc
      00224F 12 30 C3         [24]  958 	lcall	_printf
      002252 15 81            [12]  959 	dec	sp
      002254 15 81            [12]  960 	dec	sp
      002256 15 81            [12]  961 	dec	sp
      002258 D0 06            [24]  962 	pop	ar6
                                    963 ;	8051_i2c_eeprom.c:160: switch(user_input)
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
      00226F 02 23 A0         [24]  974 	ljmp	00113$
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
      002282 02 23 B8         [24]  985 	ljmp	00114$
                                    986 ;	8051_i2c_eeprom.c:162: case 'W':
      002285                        987 00101$:
                                    988 ;	8051_i2c_eeprom.c:164: printf("\n┌─────────────── WRITE OPERATION ──────────────┐\n\r");
      002285 74 13            [12]  989 	mov	a,#___str_16
      002287 C0 E0            [24]  990 	push	acc
      002289 74 41            [12]  991 	mov	a,#(___str_16 >> 8)
      00228B C0 E0            [24]  992 	push	acc
      00228D 74 80            [12]  993 	mov	a,#0x80
      00228F C0 E0            [24]  994 	push	acc
      002291 12 30 C3         [24]  995 	lcall	_printf
      002294 15 81            [12]  996 	dec	sp
      002296 15 81            [12]  997 	dec	sp
      002298 15 81            [12]  998 	dec	sp
                                    999 ;	8051_i2c_eeprom.c:166: addr = take_address();
      00229A 12 24 90         [24] 1000 	lcall	_take_address
      00229D AE 82            [24] 1001 	mov	r6,dpl
      00229F AF 83            [24] 1002 	mov	r7,dph
                                   1003 ;	8051_i2c_eeprom.c:167: if(!address_range_flag) 
      0022A1 90 04 5C         [24] 1004 	mov	dptr,#_address_range_flag
      0022A4 E0               [24] 1005 	movx	a,@dptr
      0022A5 F5 F0            [12] 1006 	mov	b,a
      0022A7 A3               [24] 1007 	inc	dptr
      0022A8 E0               [24] 1008 	movx	a,@dptr
      0022A9 45 F0            [12] 1009 	orl	a,b
      0022AB 70 0C            [24] 1010 	jnz	00103$
                                   1011 ;	8051_i2c_eeprom.c:169: address_range_flag = 1;
      0022AD 90 04 5C         [24] 1012 	mov	dptr,#_address_range_flag
      0022B0 74 01            [12] 1013 	mov	a,#0x01
      0022B2 F0               [24] 1014 	movx	@dptr,a
      0022B3 E4               [12] 1015 	clr	a
      0022B4 A3               [24] 1016 	inc	dptr
      0022B5 F0               [24] 1017 	movx	@dptr,a
                                   1018 ;	8051_i2c_eeprom.c:170: break;
      0022B6 02 22 1F         [24] 1019 	ljmp	00117$
      0022B9                       1020 00103$:
                                   1021 ;	8051_i2c_eeprom.c:173: data = take_data();
      0022B9 C0 07            [24] 1022 	push	ar7
      0022BB C0 06            [24] 1023 	push	ar6
      0022BD 12 26 CE         [24] 1024 	lcall	_take_data
      0022C0 AD 82            [24] 1025 	mov	r5,dpl
      0022C2 D0 06            [24] 1026 	pop	ar6
      0022C4 D0 07            [24] 1027 	pop	ar7
                                   1028 ;	8051_i2c_eeprom.c:174: if(!data_range_flag) 
      0022C6 90 04 5E         [24] 1029 	mov	dptr,#_data_range_flag
      0022C9 E0               [24] 1030 	movx	a,@dptr
      0022CA F5 F0            [12] 1031 	mov	b,a
      0022CC A3               [24] 1032 	inc	dptr
      0022CD E0               [24] 1033 	movx	a,@dptr
      0022CE 45 F0            [12] 1034 	orl	a,b
      0022D0 70 0C            [24] 1035 	jnz	00105$
                                   1036 ;	8051_i2c_eeprom.c:176: data_range_flag = 1;
      0022D2 90 04 5E         [24] 1037 	mov	dptr,#_data_range_flag
      0022D5 74 01            [12] 1038 	mov	a,#0x01
      0022D7 F0               [24] 1039 	movx	@dptr,a
      0022D8 E4               [12] 1040 	clr	a
      0022D9 A3               [24] 1041 	inc	dptr
      0022DA F0               [24] 1042 	movx	@dptr,a
                                   1043 ;	8051_i2c_eeprom.c:177: break;
      0022DB 02 22 1F         [24] 1044 	ljmp	00117$
      0022DE                       1045 00105$:
                                   1046 ;	8051_i2c_eeprom.c:180: eeprom_write(addr, data);
      0022DE 90 04 14         [24] 1047 	mov	dptr,#_eeprom_write_PARM_2
      0022E1 ED               [12] 1048 	mov	a,r5
      0022E2 F0               [24] 1049 	movx	@dptr,a
      0022E3 8E 82            [24] 1050 	mov	dpl,r6
      0022E5 8F 83            [24] 1051 	mov	dph,r7
      0022E7 12 28 47         [24] 1052 	lcall	_eeprom_write
                                   1053 ;	8051_i2c_eeprom.c:181: break;
      0022EA 02 22 1F         [24] 1054 	ljmp	00117$
                                   1055 ;	8051_i2c_eeprom.c:183: case 'R':
      0022ED                       1056 00106$:
                                   1057 ;	8051_i2c_eeprom.c:185: printf("\n┌─────────────── READ OPERATION ───────────────┐\n\r");
      0022ED 74 85            [12] 1058 	mov	a,#___str_17
      0022EF C0 E0            [24] 1059 	push	acc
      0022F1 74 41            [12] 1060 	mov	a,#(___str_17 >> 8)
      0022F3 C0 E0            [24] 1061 	push	acc
      0022F5 74 80            [12] 1062 	mov	a,#0x80
      0022F7 C0 E0            [24] 1063 	push	acc
      0022F9 12 30 C3         [24] 1064 	lcall	_printf
      0022FC 15 81            [12] 1065 	dec	sp
      0022FE 15 81            [12] 1066 	dec	sp
      002300 15 81            [12] 1067 	dec	sp
                                   1068 ;	8051_i2c_eeprom.c:187: addr = take_address(); 
      002302 12 24 90         [24] 1069 	lcall	_take_address
      002305 AE 82            [24] 1070 	mov	r6,dpl
      002307 AF 83            [24] 1071 	mov	r7,dph
                                   1072 ;	8051_i2c_eeprom.c:188: if(!address_range_flag) 
      002309 90 04 5C         [24] 1073 	mov	dptr,#_address_range_flag
      00230C E0               [24] 1074 	movx	a,@dptr
      00230D F5 F0            [12] 1075 	mov	b,a
      00230F A3               [24] 1076 	inc	dptr
      002310 E0               [24] 1077 	movx	a,@dptr
      002311 45 F0            [12] 1078 	orl	a,b
      002313 70 0C            [24] 1079 	jnz	00108$
                                   1080 ;	8051_i2c_eeprom.c:190: address_range_flag = 1;
      002315 90 04 5C         [24] 1081 	mov	dptr,#_address_range_flag
      002318 74 01            [12] 1082 	mov	a,#0x01
      00231A F0               [24] 1083 	movx	@dptr,a
      00231B E4               [12] 1084 	clr	a
      00231C A3               [24] 1085 	inc	dptr
      00231D F0               [24] 1086 	movx	@dptr,a
                                   1087 ;	8051_i2c_eeprom.c:191: break;
      00231E 02 22 1F         [24] 1088 	ljmp	00117$
      002321                       1089 00108$:
                                   1090 ;	8051_i2c_eeprom.c:193: printf("| Reading from Address 0x%03X           |\n\r", addr);
      002321 C0 07            [24] 1091 	push	ar7
      002323 C0 06            [24] 1092 	push	ar6
      002325 C0 06            [24] 1093 	push	ar6
      002327 C0 07            [24] 1094 	push	ar7
      002329 74 F9            [12] 1095 	mov	a,#___str_18
      00232B C0 E0            [24] 1096 	push	acc
      00232D 74 41            [12] 1097 	mov	a,#(___str_18 >> 8)
      00232F C0 E0            [24] 1098 	push	acc
      002331 74 80            [12] 1099 	mov	a,#0x80
      002333 C0 E0            [24] 1100 	push	acc
      002335 12 30 C3         [24] 1101 	lcall	_printf
      002338 E5 81            [12] 1102 	mov	a,sp
      00233A 24 FB            [12] 1103 	add	a,#0xfb
      00233C F5 81            [12] 1104 	mov	sp,a
      00233E D0 06            [24] 1105 	pop	ar6
      002340 D0 07            [24] 1106 	pop	ar7
                                   1107 ;	8051_i2c_eeprom.c:194: eeprom_read(addr);
      002342 8E 82            [24] 1108 	mov	dpl,r6
      002344 8F 83            [24] 1109 	mov	dph,r7
      002346 12 29 89         [24] 1110 	lcall	_eeprom_read
                                   1111 ;	8051_i2c_eeprom.c:195: break;
      002349 02 22 1F         [24] 1112 	ljmp	00117$
                                   1113 ;	8051_i2c_eeprom.c:198: case '?':
      00234C                       1114 00109$:
                                   1115 ;	8051_i2c_eeprom.c:199: command_menu();
      00234C 12 20 D2         [24] 1116 	lcall	_command_menu
                                   1117 ;	8051_i2c_eeprom.c:200: break;
      00234F 02 22 1F         [24] 1118 	ljmp	00117$
                                   1119 ;	8051_i2c_eeprom.c:202: case 'X':
      002352                       1120 00110$:
                                   1121 ;	8051_i2c_eeprom.c:203: printf("\n┌─────────────── RESET OPERATION ───────────┐\n\r");
      002352 74 25            [12] 1122 	mov	a,#___str_19
      002354 C0 E0            [24] 1123 	push	acc
      002356 74 42            [12] 1124 	mov	a,#(___str_19 >> 8)
      002358 C0 E0            [24] 1125 	push	acc
      00235A 74 80            [12] 1126 	mov	a,#0x80
      00235C C0 E0            [24] 1127 	push	acc
      00235E 12 30 C3         [24] 1128 	lcall	_printf
      002361 15 81            [12] 1129 	dec	sp
      002363 15 81            [12] 1130 	dec	sp
      002365 15 81            [12] 1131 	dec	sp
                                   1132 ;	8051_i2c_eeprom.c:204: eeprom_reset();
      002367 12 2F 7A         [24] 1133 	lcall	_eeprom_reset
                                   1134 ;	8051_i2c_eeprom.c:205: break;
      00236A 02 22 1F         [24] 1135 	ljmp	00117$
                                   1136 ;	8051_i2c_eeprom.c:207: case 'H':
      00236D                       1137 00111$:
                                   1138 ;	8051_i2c_eeprom.c:208: printf("\n┌───────────── HEX DUMP OPERATION ───────────────┐\n\r");
      00236D 74 8E            [12] 1139 	mov	a,#___str_20
      00236F C0 E0            [24] 1140 	push	acc
      002371 74 42            [12] 1141 	mov	a,#(___str_20 >> 8)
      002373 C0 E0            [24] 1142 	push	acc
      002375 74 80            [12] 1143 	mov	a,#0x80
      002377 C0 E0            [24] 1144 	push	acc
      002379 12 30 C3         [24] 1145 	lcall	_printf
      00237C 15 81            [12] 1146 	dec	sp
      00237E 15 81            [12] 1147 	dec	sp
      002380 15 81            [12] 1148 	dec	sp
                                   1149 ;	8051_i2c_eeprom.c:210: handler_EEPROM_hexdump();
      002382 12 2E CE         [24] 1150 	lcall	_handler_EEPROM_hexdump
                                   1151 ;	8051_i2c_eeprom.c:212: case 'I':
      002385                       1152 00112$:
                                   1153 ;	8051_i2c_eeprom.c:213: printf("\n┌───────────── IO EXPANDER OPERATION ───────────────┐\n\r");
      002385 74 00            [12] 1154 	mov	a,#___str_21
      002387 C0 E0            [24] 1155 	push	acc
      002389 74 43            [12] 1156 	mov	a,#(___str_21 >> 8)
      00238B C0 E0            [24] 1157 	push	acc
      00238D 74 80            [12] 1158 	mov	a,#0x80
      00238F C0 E0            [24] 1159 	push	acc
      002391 12 30 C3         [24] 1160 	lcall	_printf
      002394 15 81            [12] 1161 	dec	sp
      002396 15 81            [12] 1162 	dec	sp
      002398 15 81            [12] 1163 	dec	sp
                                   1164 ;	8051_i2c_eeprom.c:214: enable_interrupt0();
      00239A 12 24 89         [24] 1165 	lcall	_enable_interrupt0
                                   1166 ;	8051_i2c_eeprom.c:215: pcf8574_init();
      00239D 12 23 D0         [24] 1167 	lcall	_pcf8574_init
                                   1168 ;	8051_i2c_eeprom.c:217: case 'L':
      0023A0                       1169 00113$:
                                   1170 ;	8051_i2c_eeprom.c:218: printf("\n┌───────────── IO EXPANDER LEAVE ───────────────┐\n\r");
      0023A0 74 75            [12] 1171 	mov	a,#___str_22
      0023A2 C0 E0            [24] 1172 	push	acc
      0023A4 74 43            [12] 1173 	mov	a,#(___str_22 >> 8)
      0023A6 C0 E0            [24] 1174 	push	acc
      0023A8 74 80            [12] 1175 	mov	a,#0x80
      0023AA C0 E0            [24] 1176 	push	acc
      0023AC 12 30 C3         [24] 1177 	lcall	_printf
      0023AF 15 81            [12] 1178 	dec	sp
      0023B1 15 81            [12] 1179 	dec	sp
      0023B3 15 81            [12] 1180 	dec	sp
                                   1181 ;	8051_i2c_eeprom.c:219: disable_interrupt0();
      0023B5 12 22 09         [24] 1182 	lcall	_disable_interrupt0
                                   1183 ;	8051_i2c_eeprom.c:222: default:
      0023B8                       1184 00114$:
                                   1185 ;	8051_i2c_eeprom.c:223: printf("INVALID INPUT\n\r");
      0023B8 74 E6            [12] 1186 	mov	a,#___str_23
      0023BA C0 E0            [24] 1187 	push	acc
      0023BC 74 43            [12] 1188 	mov	a,#(___str_23 >> 8)
      0023BE C0 E0            [24] 1189 	push	acc
      0023C0 74 80            [12] 1190 	mov	a,#0x80
      0023C2 C0 E0            [24] 1191 	push	acc
      0023C4 12 30 C3         [24] 1192 	lcall	_printf
      0023C7 15 81            [12] 1193 	dec	sp
      0023C9 15 81            [12] 1194 	dec	sp
      0023CB 15 81            [12] 1195 	dec	sp
                                   1196 ;	8051_i2c_eeprom.c:225: }
                                   1197 ;	8051_i2c_eeprom.c:228: }
      0023CD 02 22 1F         [24] 1198 	ljmp	00117$
                                   1199 ;------------------------------------------------------------
                                   1200 ;Allocation info for local variables in function 'pcf8574_init'
                                   1201 ;------------------------------------------------------------
                                   1202 ;	8051_i2c_eeprom.c:230: void pcf8574_init()
                                   1203 ;	-----------------------------------------
                                   1204 ;	 function pcf8574_init
                                   1205 ;	-----------------------------------------
      0023D0                       1206 _pcf8574_init:
                                   1207 ;	8051_i2c_eeprom.c:232: i2c_start();
      0023D0 12 2B 8A         [24] 1208 	lcall	_i2c_start
                                   1209 ;	8051_i2c_eeprom.c:233: i2c_write(PCF8574_I2C_WRITE_ADDRESS);
      0023D3 75 82 70         [24] 1210 	mov	dpl,#0x70
      0023D6 12 2A 9D         [24] 1211 	lcall	_i2c_write
                                   1212 ;	8051_i2c_eeprom.c:234: i2c_write(0xFF);
      0023D9 75 82 FF         [24] 1213 	mov	dpl,#0xff
      0023DC 12 2A 9D         [24] 1214 	lcall	_i2c_write
                                   1215 ;	8051_i2c_eeprom.c:235: i2c_stop();
                                   1216 ;	8051_i2c_eeprom.c:236: }
      0023DF 02 2F 6D         [24] 1217 	ljmp	_i2c_stop
                                   1218 ;------------------------------------------------------------
                                   1219 ;Allocation info for local variables in function 'pcf8574_read_port'
                                   1220 ;------------------------------------------------------------
                                   1221 ;data                      Allocated with name '_pcf8574_read_port_data_65536_78'
                                   1222 ;------------------------------------------------------------
                                   1223 ;	8051_i2c_eeprom.c:237: uint8_t pcf8574_read_port(void) {
                                   1224 ;	-----------------------------------------
                                   1225 ;	 function pcf8574_read_port
                                   1226 ;	-----------------------------------------
      0023E2                       1227 _pcf8574_read_port:
                                   1228 ;	8051_i2c_eeprom.c:239: i2c_start();
      0023E2 12 2B 8A         [24] 1229 	lcall	_i2c_start
                                   1230 ;	8051_i2c_eeprom.c:240: i2c_write(PCF8574_I2C_READ_ADDRESS);
      0023E5 75 82 71         [24] 1231 	mov	dpl,#0x71
      0023E8 12 2A 9D         [24] 1232 	lcall	_i2c_write
                                   1233 ;	8051_i2c_eeprom.c:241: data = i2c_read(0);
      0023EB 90 00 00         [24] 1234 	mov	dptr,#0x0000
      0023EE 12 2B 05         [24] 1235 	lcall	_i2c_read
      0023F1 AE 82            [24] 1236 	mov	r6,dpl
                                   1237 ;	8051_i2c_eeprom.c:242: i2c_stop();
      0023F3 C0 06            [24] 1238 	push	ar6
      0023F5 12 2F 6D         [24] 1239 	lcall	_i2c_stop
      0023F8 D0 06            [24] 1240 	pop	ar6
                                   1241 ;	8051_i2c_eeprom.c:243: return data;
      0023FA 8E 82            [24] 1242 	mov	dpl,r6
                                   1243 ;	8051_i2c_eeprom.c:244: }
      0023FC 22               [24] 1244 	ret
                                   1245 ;------------------------------------------------------------
                                   1246 ;Allocation info for local variables in function 'pcf8574_read_pin'
                                   1247 ;------------------------------------------------------------
                                   1248 ;pin                       Allocated with name '_pcf8574_read_pin_pin_65536_79'
                                   1249 ;port_state                Allocated with name '_pcf8574_read_pin_port_state_65536_80'
                                   1250 ;------------------------------------------------------------
                                   1251 ;	8051_i2c_eeprom.c:246: uint8_t pcf8574_read_pin(uint8_t pin) {
                                   1252 ;	-----------------------------------------
                                   1253 ;	 function pcf8574_read_pin
                                   1254 ;	-----------------------------------------
      0023FD                       1255 _pcf8574_read_pin:
      0023FD E5 82            [12] 1256 	mov	a,dpl
      0023FF 90 04 04         [24] 1257 	mov	dptr,#_pcf8574_read_pin_pin_65536_79
      002402 F0               [24] 1258 	movx	@dptr,a
                                   1259 ;	8051_i2c_eeprom.c:247: uint8_t port_state = pcf8574_read_port();
      002403 12 23 E2         [24] 1260 	lcall	_pcf8574_read_port
      002406 AF 82            [24] 1261 	mov	r7,dpl
                                   1262 ;	8051_i2c_eeprom.c:248: return (port_state >> pin) & 0x01;
      002408 90 04 04         [24] 1263 	mov	dptr,#_pcf8574_read_pin_pin_65536_79
      00240B E0               [24] 1264 	movx	a,@dptr
      00240C FE               [12] 1265 	mov	r6,a
      00240D 8E F0            [24] 1266 	mov	b,r6
      00240F 05 F0            [12] 1267 	inc	b
      002411 EF               [12] 1268 	mov	a,r7
      002412 80 02            [24] 1269 	sjmp	00104$
      002414                       1270 00103$:
      002414 C3               [12] 1271 	clr	c
      002415 13               [12] 1272 	rrc	a
      002416                       1273 00104$:
      002416 D5 F0 FB         [24] 1274 	djnz	b,00103$
      002419 54 01            [12] 1275 	anl	a,#0x01
                                   1276 ;	8051_i2c_eeprom.c:249: }
      00241B F5 82            [12] 1277 	mov	dpl,a
      00241D 22               [24] 1278 	ret
                                   1279 ;------------------------------------------------------------
                                   1280 ;Allocation info for local variables in function 'pcf8574_write_port'
                                   1281 ;------------------------------------------------------------
                                   1282 ;value                     Allocated with name '_pcf8574_write_port_value_65536_81'
                                   1283 ;------------------------------------------------------------
                                   1284 ;	8051_i2c_eeprom.c:251: void pcf8574_write_port(uint8_t value)
                                   1285 ;	-----------------------------------------
                                   1286 ;	 function pcf8574_write_port
                                   1287 ;	-----------------------------------------
      00241E                       1288 _pcf8574_write_port:
      00241E E5 82            [12] 1289 	mov	a,dpl
      002420 90 04 05         [24] 1290 	mov	dptr,#_pcf8574_write_port_value_65536_81
      002423 F0               [24] 1291 	movx	@dptr,a
                                   1292 ;	8051_i2c_eeprom.c:253: i2c_start();
      002424 12 2B 8A         [24] 1293 	lcall	_i2c_start
                                   1294 ;	8051_i2c_eeprom.c:254: i2c_write(PCF8574_I2C_WRITE_ADDRESS);
      002427 75 82 70         [24] 1295 	mov	dpl,#0x70
      00242A 12 2A 9D         [24] 1296 	lcall	_i2c_write
                                   1297 ;	8051_i2c_eeprom.c:255: i2c_write(value);
      00242D 90 04 05         [24] 1298 	mov	dptr,#_pcf8574_write_port_value_65536_81
      002430 E0               [24] 1299 	movx	a,@dptr
      002431 F5 82            [12] 1300 	mov	dpl,a
      002433 12 2A 9D         [24] 1301 	lcall	_i2c_write
                                   1302 ;	8051_i2c_eeprom.c:256: i2c_stop();
                                   1303 ;	8051_i2c_eeprom.c:257: }
      002436 02 2F 6D         [24] 1304 	ljmp	_i2c_stop
                                   1305 ;------------------------------------------------------------
                                   1306 ;Allocation info for local variables in function 'pcf8574_set_pin'
                                   1307 ;------------------------------------------------------------
                                   1308 ;value                     Allocated with name '_pcf8574_set_pin_PARM_2'
                                   1309 ;pin                       Allocated with name '_pcf8574_set_pin_pin_65536_83'
                                   1310 ;port_state                Allocated with name '_pcf8574_set_pin_port_state_65536_84'
                                   1311 ;------------------------------------------------------------
                                   1312 ;	8051_i2c_eeprom.c:259: void pcf8574_set_pin(uint8_t pin, uint8_t value) {
                                   1313 ;	-----------------------------------------
                                   1314 ;	 function pcf8574_set_pin
                                   1315 ;	-----------------------------------------
      002439                       1316 _pcf8574_set_pin:
      002439 E5 82            [12] 1317 	mov	a,dpl
      00243B 90 04 07         [24] 1318 	mov	dptr,#_pcf8574_set_pin_pin_65536_83
      00243E F0               [24] 1319 	movx	@dptr,a
                                   1320 ;	8051_i2c_eeprom.c:260: uint8_t port_state = pcf8574_read_port();
      00243F 12 23 E2         [24] 1321 	lcall	_pcf8574_read_port
      002442 AF 82            [24] 1322 	mov	r7,dpl
                                   1323 ;	8051_i2c_eeprom.c:261: if (value) {
      002444 90 04 06         [24] 1324 	mov	dptr,#_pcf8574_set_pin_PARM_2
      002447 E0               [24] 1325 	movx	a,@dptr
      002448 60 1D            [24] 1326 	jz	00102$
                                   1327 ;	8051_i2c_eeprom.c:262: port_state |= (1 << pin);  // Set pin high
      00244A 90 04 07         [24] 1328 	mov	dptr,#_pcf8574_set_pin_pin_65536_83
      00244D E0               [24] 1329 	movx	a,@dptr
      00244E FE               [12] 1330 	mov	r6,a
      00244F 8E F0            [24] 1331 	mov	b,r6
      002451 05 F0            [12] 1332 	inc	b
      002453 74 01            [12] 1333 	mov	a,#0x01
      002455 80 02            [24] 1334 	sjmp	00113$
      002457                       1335 00111$:
      002457 25 E0            [12] 1336 	add	a,acc
      002459                       1337 00113$:
      002459 D5 F0 FB         [24] 1338 	djnz	b,00111$
      00245C FE               [12] 1339 	mov	r6,a
      00245D 8F 05            [24] 1340 	mov	ar5,r7
      00245F 90 04 08         [24] 1341 	mov	dptr,#_pcf8574_set_pin_port_state_65536_84
      002462 EE               [12] 1342 	mov	a,r6
      002463 4D               [12] 1343 	orl	a,r5
      002464 F0               [24] 1344 	movx	@dptr,a
      002465 80 19            [24] 1345 	sjmp	00103$
      002467                       1346 00102$:
                                   1347 ;	8051_i2c_eeprom.c:264: port_state &= ~(1 << pin); // Set pin low
      002467 90 04 07         [24] 1348 	mov	dptr,#_pcf8574_set_pin_pin_65536_83
      00246A E0               [24] 1349 	movx	a,@dptr
      00246B FE               [12] 1350 	mov	r6,a
      00246C 8E F0            [24] 1351 	mov	b,r6
      00246E 05 F0            [12] 1352 	inc	b
      002470 74 01            [12] 1353 	mov	a,#0x01
      002472 80 02            [24] 1354 	sjmp	00116$
      002474                       1355 00114$:
      002474 25 E0            [12] 1356 	add	a,acc
      002476                       1357 00116$:
      002476 D5 F0 FB         [24] 1358 	djnz	b,00114$
      002479 F4               [12] 1359 	cpl	a
      00247A FE               [12] 1360 	mov	r6,a
      00247B 90 04 08         [24] 1361 	mov	dptr,#_pcf8574_set_pin_port_state_65536_84
      00247E 5F               [12] 1362 	anl	a,r7
      00247F F0               [24] 1363 	movx	@dptr,a
      002480                       1364 00103$:
                                   1365 ;	8051_i2c_eeprom.c:266: pcf8574_write_port(port_state);
      002480 90 04 08         [24] 1366 	mov	dptr,#_pcf8574_set_pin_port_state_65536_84
      002483 E0               [24] 1367 	movx	a,@dptr
      002484 F5 82            [12] 1368 	mov	dpl,a
                                   1369 ;	8051_i2c_eeprom.c:267: }
      002486 02 24 1E         [24] 1370 	ljmp	_pcf8574_write_port
                                   1371 ;------------------------------------------------------------
                                   1372 ;Allocation info for local variables in function 'enable_interrupt0'
                                   1373 ;------------------------------------------------------------
                                   1374 ;	8051_i2c_eeprom.c:269: void enable_interrupt0(void)
                                   1375 ;	-----------------------------------------
                                   1376 ;	 function enable_interrupt0
                                   1377 ;	-----------------------------------------
      002489                       1378 _enable_interrupt0:
                                   1379 ;	8051_i2c_eeprom.c:272: IT0 = 1;           // Set INT0 to be edge-triggered
                                   1380 ;	assignBit
      002489 D2 88            [12] 1381 	setb	_IT0
                                   1382 ;	8051_i2c_eeprom.c:273: EX0 = 1;          // Enable INT0 interrupt
                                   1383 ;	assignBit
      00248B D2 A8            [12] 1384 	setb	_EX0
                                   1385 ;	8051_i2c_eeprom.c:274: EA = 1;           // Enable global interrupts
                                   1386 ;	assignBit
      00248D D2 AF            [12] 1387 	setb	_EA
                                   1388 ;	8051_i2c_eeprom.c:275: }
      00248F 22               [24] 1389 	ret
                                   1390 ;------------------------------------------------------------
                                   1391 ;Allocation info for local variables in function 'take_address'
                                   1392 ;------------------------------------------------------------
                                   1393 ;input                     Allocated with name '_take_address_input_65537_90'
                                   1394 ;i                         Allocated with name '_take_address_i_65537_90'
                                   1395 ;c                         Allocated with name '_take_address_c_65537_90'
                                   1396 ;address                   Allocated with name '_take_address_address_65538_94'
                                   1397 ;block                     Allocated with name '_take_address_block_65539_98'
                                   1398 ;------------------------------------------------------------
                                   1399 ;	8051_i2c_eeprom.c:283: unsigned int take_address() 
                                   1400 ;	-----------------------------------------
                                   1401 ;	 function take_address
                                   1402 ;	-----------------------------------------
      002490                       1403 _take_address:
                                   1404 ;	8051_i2c_eeprom.c:285: printf("│ Enter address (hex, up to 3 characters): \n\r|");
      002490 74 F6            [12] 1405 	mov	a,#___str_24
      002492 C0 E0            [24] 1406 	push	acc
      002494 74 43            [12] 1407 	mov	a,#(___str_24 >> 8)
      002496 C0 E0            [24] 1408 	push	acc
      002498 74 80            [12] 1409 	mov	a,#0x80
      00249A C0 E0            [24] 1410 	push	acc
      00249C 12 30 C3         [24] 1411 	lcall	_printf
      00249F 15 81            [12] 1412 	dec	sp
      0024A1 15 81            [12] 1413 	dec	sp
      0024A3 15 81            [12] 1414 	dec	sp
                                   1415 ;	8051_i2c_eeprom.c:286: char input[4] = {0};  // Array for 3 hex chars + null terminator
      0024A5 90 04 09         [24] 1416 	mov	dptr,#_take_address_input_65537_90
      0024A8 E4               [12] 1417 	clr	a
      0024A9 F0               [24] 1418 	movx	@dptr,a
      0024AA 90 04 0A         [24] 1419 	mov	dptr,#(_take_address_input_65537_90 + 0x0001)
      0024AD F0               [24] 1420 	movx	@dptr,a
      0024AE 90 04 0B         [24] 1421 	mov	dptr,#(_take_address_input_65537_90 + 0x0002)
      0024B1 F0               [24] 1422 	movx	@dptr,a
      0024B2 90 04 0C         [24] 1423 	mov	dptr,#(_take_address_input_65537_90 + 0x0003)
      0024B5 F0               [24] 1424 	movx	@dptr,a
                                   1425 ;	8051_i2c_eeprom.c:290: printf("| $ ");
      0024B6 74 27            [12] 1426 	mov	a,#___str_25
      0024B8 C0 E0            [24] 1427 	push	acc
      0024BA 74 44            [12] 1428 	mov	a,#(___str_25 >> 8)
      0024BC C0 E0            [24] 1429 	push	acc
      0024BE 74 80            [12] 1430 	mov	a,#0x80
      0024C0 C0 E0            [24] 1431 	push	acc
      0024C2 12 30 C3         [24] 1432 	lcall	_printf
      0024C5 15 81            [12] 1433 	dec	sp
      0024C7 15 81            [12] 1434 	dec	sp
      0024C9 15 81            [12] 1435 	dec	sp
                                   1436 ;	8051_i2c_eeprom.c:292: while (i < 3) {
      0024CB 7E 00            [12] 1437 	mov	r6,#0x00
      0024CD 7F 00            [12] 1438 	mov	r7,#0x00
      0024CF                       1439 00111$:
      0024CF C3               [12] 1440 	clr	c
      0024D0 EE               [12] 1441 	mov	a,r6
      0024D1 94 03            [12] 1442 	subb	a,#0x03
      0024D3 EF               [12] 1443 	mov	a,r7
      0024D4 64 80            [12] 1444 	xrl	a,#0x80
      0024D6 94 80            [12] 1445 	subb	a,#0x80
      0024D8 50 5B            [24] 1446 	jnc	00113$
                                   1447 ;	8051_i2c_eeprom.c:294: c = getchar();
      0024DA C0 07            [24] 1448 	push	ar7
      0024DC C0 06            [24] 1449 	push	ar6
      0024DE 12 20 84         [24] 1450 	lcall	_getchar
      0024E1 AC 82            [24] 1451 	mov	r4,dpl
      0024E3 AD 83            [24] 1452 	mov	r5,dph
      0024E5 D0 06            [24] 1453 	pop	ar6
      0024E7 D0 07            [24] 1454 	pop	ar7
                                   1455 ;	8051_i2c_eeprom.c:297: if (c == '\r' || c == '\n') {
      0024E9 BC 0D 02         [24] 1456 	cjne	r4,#0x0d,00200$
      0024EC 80 47            [24] 1457 	sjmp	00113$
      0024EE                       1458 00200$:
      0024EE BC 0A 02         [24] 1459 	cjne	r4,#0x0a,00201$
      0024F1 80 42            [24] 1460 	sjmp	00113$
      0024F3                       1461 00201$:
                                   1462 ;	8051_i2c_eeprom.c:302: if ((c >= '0' && c <= '9') || 
      0024F3 BC 30 00         [24] 1463 	cjne	r4,#0x30,00202$
      0024F6                       1464 00202$:
      0024F6 40 05            [24] 1465 	jc	00108$
      0024F8 EC               [12] 1466 	mov	a,r4
      0024F9 24 C6            [12] 1467 	add	a,#0xff - 0x39
      0024FB 50 14            [24] 1468 	jnc	00104$
      0024FD                       1469 00108$:
                                   1470 ;	8051_i2c_eeprom.c:303: (c >= 'a' && c <= 'f') || 
      0024FD BC 61 00         [24] 1471 	cjne	r4,#0x61,00205$
      002500                       1472 00205$:
      002500 40 05            [24] 1473 	jc	00110$
      002502 EC               [12] 1474 	mov	a,r4
      002503 24 99            [12] 1475 	add	a,#0xff - 0x66
      002505 50 0A            [24] 1476 	jnc	00104$
      002507                       1477 00110$:
                                   1478 ;	8051_i2c_eeprom.c:304: (c >= 'A' && c <= 'F')) {
      002507 BC 41 00         [24] 1479 	cjne	r4,#0x41,00208$
      00250A                       1480 00208$:
      00250A 40 C3            [24] 1481 	jc	00111$
      00250C EC               [12] 1482 	mov	a,r4
      00250D 24 B9            [12] 1483 	add	a,#0xff - 0x46
      00250F 40 BE            [24] 1484 	jc	00111$
      002511                       1485 00104$:
                                   1486 ;	8051_i2c_eeprom.c:306: input[i] = c;
      002511 EE               [12] 1487 	mov	a,r6
      002512 24 09            [12] 1488 	add	a,#_take_address_input_65537_90
      002514 F5 82            [12] 1489 	mov	dpl,a
      002516 EF               [12] 1490 	mov	a,r7
      002517 34 04            [12] 1491 	addc	a,#(_take_address_input_65537_90 >> 8)
      002519 F5 83            [12] 1492 	mov	dph,a
      00251B EC               [12] 1493 	mov	a,r4
      00251C F0               [24] 1494 	movx	@dptr,a
                                   1495 ;	8051_i2c_eeprom.c:307: putchar(c);  // Echo character back
      00251D 7D 00            [12] 1496 	mov	r5,#0x00
      00251F 8C 82            [24] 1497 	mov	dpl,r4
      002521 8D 83            [24] 1498 	mov	dph,r5
      002523 C0 07            [24] 1499 	push	ar7
      002525 C0 06            [24] 1500 	push	ar6
      002527 12 20 65         [24] 1501 	lcall	_putchar
      00252A D0 06            [24] 1502 	pop	ar6
      00252C D0 07            [24] 1503 	pop	ar7
                                   1504 ;	8051_i2c_eeprom.c:308: i++;
      00252E 0E               [12] 1505 	inc	r6
      00252F BE 00 9D         [24] 1506 	cjne	r6,#0x00,00111$
      002532 0F               [12] 1507 	inc	r7
      002533 80 9A            [24] 1508 	sjmp	00111$
      002535                       1509 00113$:
                                   1510 ;	8051_i2c_eeprom.c:312: input[i] = '\0';  // Null-terminate the string
      002535 EE               [12] 1511 	mov	a,r6
      002536 24 09            [12] 1512 	add	a,#_take_address_input_65537_90
      002538 F5 82            [12] 1513 	mov	dpl,a
      00253A EF               [12] 1514 	mov	a,r7
      00253B 34 04            [12] 1515 	addc	a,#(_take_address_input_65537_90 >> 8)
      00253D F5 83            [12] 1516 	mov	dph,a
      00253F E4               [12] 1517 	clr	a
      002540 F0               [24] 1518 	movx	@dptr,a
                                   1519 ;	8051_i2c_eeprom.c:315: unsigned int address = 0;
      002541 90 04 0D         [24] 1520 	mov	dptr,#_take_address_address_65538_94
      002544 F0               [24] 1521 	movx	@dptr,a
      002545 A3               [24] 1522 	inc	dptr
      002546 F0               [24] 1523 	movx	@dptr,a
                                   1524 ;	8051_i2c_eeprom.c:316: for(i = 0; input[i] != '\0'; i++) {
      002547 7E 00            [12] 1525 	mov	r6,#0x00
      002549 7F 00            [12] 1526 	mov	r7,#0x00
      00254B                       1527 00129$:
      00254B EE               [12] 1528 	mov	a,r6
      00254C 24 09            [12] 1529 	add	a,#_take_address_input_65537_90
      00254E F5 82            [12] 1530 	mov	dpl,a
      002550 EF               [12] 1531 	mov	a,r7
      002551 34 04            [12] 1532 	addc	a,#(_take_address_input_65537_90 >> 8)
      002553 F5 83            [12] 1533 	mov	dph,a
      002555 E0               [24] 1534 	movx	a,@dptr
      002556 FD               [12] 1535 	mov	r5,a
      002557 70 03            [24] 1536 	jnz	00212$
      002559 02 26 04         [24] 1537 	ljmp	00125$
      00255C                       1538 00212$:
                                   1539 ;	8051_i2c_eeprom.c:317: address = address * 16;
      00255C 90 04 0D         [24] 1540 	mov	dptr,#_take_address_address_65538_94
      00255F E0               [24] 1541 	movx	a,@dptr
      002560 FB               [12] 1542 	mov	r3,a
      002561 A3               [24] 1543 	inc	dptr
      002562 E0               [24] 1544 	movx	a,@dptr
      002563 C4               [12] 1545 	swap	a
      002564 54 F0            [12] 1546 	anl	a,#0xf0
      002566 CB               [12] 1547 	xch	a,r3
      002567 C4               [12] 1548 	swap	a
      002568 CB               [12] 1549 	xch	a,r3
      002569 6B               [12] 1550 	xrl	a,r3
      00256A CB               [12] 1551 	xch	a,r3
      00256B 54 F0            [12] 1552 	anl	a,#0xf0
      00256D CB               [12] 1553 	xch	a,r3
      00256E 6B               [12] 1554 	xrl	a,r3
      00256F FC               [12] 1555 	mov	r4,a
      002570 90 04 0D         [24] 1556 	mov	dptr,#_take_address_address_65538_94
      002573 EB               [12] 1557 	mov	a,r3
      002574 F0               [24] 1558 	movx	@dptr,a
      002575 EC               [12] 1559 	mov	a,r4
      002576 A3               [24] 1560 	inc	dptr
      002577 F0               [24] 1561 	movx	@dptr,a
                                   1562 ;	8051_i2c_eeprom.c:318: if(input[i] >= '0' && input[i] <= '9')
      002578 BD 30 00         [24] 1563 	cjne	r5,#0x30,00213$
      00257B                       1564 00213$:
      00257B 40 23            [24] 1565 	jc	00122$
      00257D ED               [12] 1566 	mov	a,r5
      00257E 24 C6            [12] 1567 	add	a,#0xff - 0x39
      002580 40 1E            [24] 1568 	jc	00122$
                                   1569 ;	8051_i2c_eeprom.c:319: address += input[i] - '0';
      002582 7C 00            [12] 1570 	mov	r4,#0x00
      002584 ED               [12] 1571 	mov	a,r5
      002585 24 D0            [12] 1572 	add	a,#0xd0
      002587 FD               [12] 1573 	mov	r5,a
      002588 EC               [12] 1574 	mov	a,r4
      002589 34 FF            [12] 1575 	addc	a,#0xff
      00258B FC               [12] 1576 	mov	r4,a
      00258C 90 04 0D         [24] 1577 	mov	dptr,#_take_address_address_65538_94
      00258F E0               [24] 1578 	movx	a,@dptr
      002590 FA               [12] 1579 	mov	r2,a
      002591 A3               [24] 1580 	inc	dptr
      002592 E0               [24] 1581 	movx	a,@dptr
      002593 FB               [12] 1582 	mov	r3,a
      002594 90 04 0D         [24] 1583 	mov	dptr,#_take_address_address_65538_94
      002597 ED               [12] 1584 	mov	a,r5
      002598 2A               [12] 1585 	add	a,r2
      002599 F0               [24] 1586 	movx	@dptr,a
      00259A EC               [12] 1587 	mov	a,r4
      00259B 3B               [12] 1588 	addc	a,r3
      00259C A3               [24] 1589 	inc	dptr
      00259D F0               [24] 1590 	movx	@dptr,a
      00259E 80 5C            [24] 1591 	sjmp	00130$
      0025A0                       1592 00122$:
                                   1593 ;	8051_i2c_eeprom.c:320: else if(input[i] >= 'A' && input[i] <= 'F')
      0025A0 EE               [12] 1594 	mov	a,r6
      0025A1 24 09            [12] 1595 	add	a,#_take_address_input_65537_90
      0025A3 F5 82            [12] 1596 	mov	dpl,a
      0025A5 EF               [12] 1597 	mov	a,r7
      0025A6 34 04            [12] 1598 	addc	a,#(_take_address_input_65537_90 >> 8)
      0025A8 F5 83            [12] 1599 	mov	dph,a
      0025AA E0               [24] 1600 	movx	a,@dptr
      0025AB FD               [12] 1601 	mov	r5,a
      0025AC BD 41 00         [24] 1602 	cjne	r5,#0x41,00216$
      0025AF                       1603 00216$:
      0025AF 40 25            [24] 1604 	jc	00118$
      0025B1 ED               [12] 1605 	mov	a,r5
      0025B2 24 B9            [12] 1606 	add	a,#0xff - 0x46
      0025B4 40 20            [24] 1607 	jc	00118$
                                   1608 ;	8051_i2c_eeprom.c:321: address += input[i] - 'A' + 10;
      0025B6 8D 03            [24] 1609 	mov	ar3,r5
      0025B8 7C 00            [12] 1610 	mov	r4,#0x00
      0025BA 74 C9            [12] 1611 	mov	a,#0xc9
      0025BC 2B               [12] 1612 	add	a,r3
      0025BD FB               [12] 1613 	mov	r3,a
      0025BE 74 FF            [12] 1614 	mov	a,#0xff
      0025C0 3C               [12] 1615 	addc	a,r4
      0025C1 FC               [12] 1616 	mov	r4,a
      0025C2 90 04 0D         [24] 1617 	mov	dptr,#_take_address_address_65538_94
      0025C5 E0               [24] 1618 	movx	a,@dptr
      0025C6 F9               [12] 1619 	mov	r1,a
      0025C7 A3               [24] 1620 	inc	dptr
      0025C8 E0               [24] 1621 	movx	a,@dptr
      0025C9 FA               [12] 1622 	mov	r2,a
      0025CA 90 04 0D         [24] 1623 	mov	dptr,#_take_address_address_65538_94
      0025CD EB               [12] 1624 	mov	a,r3
      0025CE 29               [12] 1625 	add	a,r1
      0025CF F0               [24] 1626 	movx	@dptr,a
      0025D0 EC               [12] 1627 	mov	a,r4
      0025D1 3A               [12] 1628 	addc	a,r2
      0025D2 A3               [24] 1629 	inc	dptr
      0025D3 F0               [24] 1630 	movx	@dptr,a
      0025D4 80 26            [24] 1631 	sjmp	00130$
      0025D6                       1632 00118$:
                                   1633 ;	8051_i2c_eeprom.c:322: else if(input[i] >= 'a' && input[i] <= 'f')
      0025D6 BD 61 00         [24] 1634 	cjne	r5,#0x61,00219$
      0025D9                       1635 00219$:
      0025D9 40 21            [24] 1636 	jc	00130$
      0025DB ED               [12] 1637 	mov	a,r5
      0025DC 24 99            [12] 1638 	add	a,#0xff - 0x66
      0025DE 40 1C            [24] 1639 	jc	00130$
                                   1640 ;	8051_i2c_eeprom.c:323: address += input[i] - 'a' + 10;
      0025E0 7C 00            [12] 1641 	mov	r4,#0x00
      0025E2 74 A9            [12] 1642 	mov	a,#0xa9
      0025E4 2D               [12] 1643 	add	a,r5
      0025E5 FD               [12] 1644 	mov	r5,a
      0025E6 74 FF            [12] 1645 	mov	a,#0xff
      0025E8 3C               [12] 1646 	addc	a,r4
      0025E9 FC               [12] 1647 	mov	r4,a
      0025EA 90 04 0D         [24] 1648 	mov	dptr,#_take_address_address_65538_94
      0025ED E0               [24] 1649 	movx	a,@dptr
      0025EE FA               [12] 1650 	mov	r2,a
      0025EF A3               [24] 1651 	inc	dptr
      0025F0 E0               [24] 1652 	movx	a,@dptr
      0025F1 FB               [12] 1653 	mov	r3,a
      0025F2 90 04 0D         [24] 1654 	mov	dptr,#_take_address_address_65538_94
      0025F5 ED               [12] 1655 	mov	a,r5
      0025F6 2A               [12] 1656 	add	a,r2
      0025F7 F0               [24] 1657 	movx	@dptr,a
      0025F8 EC               [12] 1658 	mov	a,r4
      0025F9 3B               [12] 1659 	addc	a,r3
      0025FA A3               [24] 1660 	inc	dptr
      0025FB F0               [24] 1661 	movx	@dptr,a
      0025FC                       1662 00130$:
                                   1663 ;	8051_i2c_eeprom.c:316: for(i = 0; input[i] != '\0'; i++) {
      0025FC 0E               [12] 1664 	inc	r6
      0025FD BE 00 01         [24] 1665 	cjne	r6,#0x00,00222$
      002600 0F               [12] 1666 	inc	r7
      002601                       1667 00222$:
      002601 02 25 4B         [24] 1668 	ljmp	00129$
      002604                       1669 00125$:
                                   1670 ;	8051_i2c_eeprom.c:326: printf("\n\r│ Entered address: 0x%03X\n\r", address);
      002604 90 04 0D         [24] 1671 	mov	dptr,#_take_address_address_65538_94
      002607 E0               [24] 1672 	movx	a,@dptr
      002608 FE               [12] 1673 	mov	r6,a
      002609 A3               [24] 1674 	inc	dptr
      00260A E0               [24] 1675 	movx	a,@dptr
      00260B FF               [12] 1676 	mov	r7,a
      00260C C0 07            [24] 1677 	push	ar7
      00260E C0 06            [24] 1678 	push	ar6
      002610 C0 06            [24] 1679 	push	ar6
      002612 C0 07            [24] 1680 	push	ar7
      002614 74 2C            [12] 1681 	mov	a,#___str_26
      002616 C0 E0            [24] 1682 	push	acc
      002618 74 44            [12] 1683 	mov	a,#(___str_26 >> 8)
      00261A C0 E0            [24] 1684 	push	acc
      00261C 74 80            [12] 1685 	mov	a,#0x80
      00261E C0 E0            [24] 1686 	push	acc
      002620 12 30 C3         [24] 1687 	lcall	_printf
      002623 E5 81            [12] 1688 	mov	a,sp
      002625 24 FB            [12] 1689 	add	a,#0xfb
      002627 F5 81            [12] 1690 	mov	sp,a
      002629 D0 06            [24] 1691 	pop	ar6
      00262B D0 07            [24] 1692 	pop	ar7
                                   1693 ;	8051_i2c_eeprom.c:327: if(address > 0x7ff) 
      00262D C3               [12] 1694 	clr	c
      00262E 74 FF            [12] 1695 	mov	a,#0xff
      002630 9E               [12] 1696 	subb	a,r6
      002631 74 07            [12] 1697 	mov	a,#0x07
      002633 9F               [12] 1698 	subb	a,r7
      002634 50 5F            [24] 1699 	jnc	00127$
                                   1700 ;	8051_i2c_eeprom.c:329: printf("╔══════════════════════════════════════════╗\n\r");
      002636 74 4C            [12] 1701 	mov	a,#___str_27
      002638 C0 E0            [24] 1702 	push	acc
      00263A 74 44            [12] 1703 	mov	a,#(___str_27 >> 8)
      00263C C0 E0            [24] 1704 	push	acc
      00263E 74 80            [12] 1705 	mov	a,#0x80
      002640 C0 E0            [24] 1706 	push	acc
      002642 12 30 C3         [24] 1707 	lcall	_printf
      002645 15 81            [12] 1708 	dec	sp
      002647 15 81            [12] 1709 	dec	sp
      002649 15 81            [12] 1710 	dec	sp
                                   1711 ;	8051_i2c_eeprom.c:330: printf("║       ! ADDRESS OUT OF RANGE !         ║\n\r");
      00264B 74 D3            [12] 1712 	mov	a,#___str_28
      00264D C0 E0            [24] 1713 	push	acc
      00264F 74 44            [12] 1714 	mov	a,#(___str_28 >> 8)
      002651 C0 E0            [24] 1715 	push	acc
      002653 74 80            [12] 1716 	mov	a,#0x80
      002655 C0 E0            [24] 1717 	push	acc
      002657 12 30 C3         [24] 1718 	lcall	_printf
      00265A 15 81            [12] 1719 	dec	sp
      00265C 15 81            [12] 1720 	dec	sp
      00265E 15 81            [12] 1721 	dec	sp
                                   1722 ;	8051_i2c_eeprom.c:331: printf("║     Please Enter Valid Address         ║\n\r");
      002660 74 04            [12] 1723 	mov	a,#___str_29
      002662 C0 E0            [24] 1724 	push	acc
      002664 74 45            [12] 1725 	mov	a,#(___str_29 >> 8)
      002666 C0 E0            [24] 1726 	push	acc
      002668 74 80            [12] 1727 	mov	a,#0x80
      00266A C0 E0            [24] 1728 	push	acc
      00266C 12 30 C3         [24] 1729 	lcall	_printf
      00266F 15 81            [12] 1730 	dec	sp
      002671 15 81            [12] 1731 	dec	sp
      002673 15 81            [12] 1732 	dec	sp
                                   1733 ;	8051_i2c_eeprom.c:332: printf("╚══════════════════════════════════════════╝\n\r");
      002675 74 35            [12] 1734 	mov	a,#___str_30
      002677 C0 E0            [24] 1735 	push	acc
      002679 74 45            [12] 1736 	mov	a,#(___str_30 >> 8)
      00267B C0 E0            [24] 1737 	push	acc
      00267D 74 80            [12] 1738 	mov	a,#0x80
      00267F C0 E0            [24] 1739 	push	acc
      002681 12 30 C3         [24] 1740 	lcall	_printf
      002684 15 81            [12] 1741 	dec	sp
      002686 15 81            [12] 1742 	dec	sp
      002688 15 81            [12] 1743 	dec	sp
                                   1744 ;	8051_i2c_eeprom.c:333: address_range_flag = 0;
      00268A 90 04 5C         [24] 1745 	mov	dptr,#_address_range_flag
      00268D E4               [12] 1746 	clr	a
      00268E F0               [24] 1747 	movx	@dptr,a
      00268F A3               [24] 1748 	inc	dptr
      002690 F0               [24] 1749 	movx	@dptr,a
                                   1750 ;	8051_i2c_eeprom.c:334: return 0;
      002691 90 00 00         [24] 1751 	mov	dptr,#0x0000
      002694 22               [24] 1752 	ret
      002695                       1753 00127$:
                                   1754 ;	8051_i2c_eeprom.c:336: unsigned int block = address/256;       //block address
      002695 8F 04            [24] 1755 	mov	ar4,r7
      002697 7D 00            [12] 1756 	mov	r5,#0x00
                                   1757 ;	8051_i2c_eeprom.c:337: printf("| Block number %d                            \n\r", block);
      002699 C0 07            [24] 1758 	push	ar7
      00269B C0 06            [24] 1759 	push	ar6
      00269D C0 04            [24] 1760 	push	ar4
      00269F C0 05            [24] 1761 	push	ar5
      0026A1 74 BC            [12] 1762 	mov	a,#___str_31
      0026A3 C0 E0            [24] 1763 	push	acc
      0026A5 74 45            [12] 1764 	mov	a,#(___str_31 >> 8)
      0026A7 C0 E0            [24] 1765 	push	acc
      0026A9 74 80            [12] 1766 	mov	a,#0x80
      0026AB C0 E0            [24] 1767 	push	acc
      0026AD 12 30 C3         [24] 1768 	lcall	_printf
      0026B0 E5 81            [12] 1769 	mov	a,sp
      0026B2 24 FB            [12] 1770 	add	a,#0xfb
      0026B4 F5 81            [12] 1771 	mov	sp,a
      0026B6 D0 06            [24] 1772 	pop	ar6
      0026B8 D0 07            [24] 1773 	pop	ar7
                                   1774 ;	8051_i2c_eeprom.c:338: address = address%256;     //word address
      0026BA 90 04 0D         [24] 1775 	mov	dptr,#_take_address_address_65538_94
      0026BD EE               [12] 1776 	mov	a,r6
      0026BE F0               [24] 1777 	movx	@dptr,a
      0026BF E4               [12] 1778 	clr	a
      0026C0 A3               [24] 1779 	inc	dptr
      0026C1 F0               [24] 1780 	movx	@dptr,a
                                   1781 ;	8051_i2c_eeprom.c:341: return address;
      0026C2 90 04 0D         [24] 1782 	mov	dptr,#_take_address_address_65538_94
      0026C5 E0               [24] 1783 	movx	a,@dptr
      0026C6 FE               [12] 1784 	mov	r6,a
      0026C7 A3               [24] 1785 	inc	dptr
      0026C8 E0               [24] 1786 	movx	a,@dptr
                                   1787 ;	8051_i2c_eeprom.c:342: }
      0026C9 8E 82            [24] 1788 	mov	dpl,r6
      0026CB F5 83            [12] 1789 	mov	dph,a
      0026CD 22               [24] 1790 	ret
                                   1791 ;------------------------------------------------------------
                                   1792 ;Allocation info for local variables in function 'take_data'
                                   1793 ;------------------------------------------------------------
                                   1794 ;input                     Allocated with name '_take_data_input_65537_100'
                                   1795 ;i                         Allocated with name '_take_data_i_65537_100'
                                   1796 ;c                         Allocated with name '_take_data_c_65537_100'
                                   1797 ;data                      Allocated with name '_take_data_data_65538_104'
                                   1798 ;------------------------------------------------------------
                                   1799 ;	8051_i2c_eeprom.c:350: unsigned char take_data()
                                   1800 ;	-----------------------------------------
                                   1801 ;	 function take_data
                                   1802 ;	-----------------------------------------
      0026CE                       1803 _take_data:
                                   1804 ;	8051_i2c_eeprom.c:352: printf("│ Enter data (hex, up to 2 characters): \n\r|");
      0026CE 74 EC            [12] 1805 	mov	a,#___str_32
      0026D0 C0 E0            [24] 1806 	push	acc
      0026D2 74 45            [12] 1807 	mov	a,#(___str_32 >> 8)
      0026D4 C0 E0            [24] 1808 	push	acc
      0026D6 74 80            [12] 1809 	mov	a,#0x80
      0026D8 C0 E0            [24] 1810 	push	acc
      0026DA 12 30 C3         [24] 1811 	lcall	_printf
      0026DD 15 81            [12] 1812 	dec	sp
      0026DF 15 81            [12] 1813 	dec	sp
      0026E1 15 81            [12] 1814 	dec	sp
                                   1815 ;	8051_i2c_eeprom.c:353: char input[4] = {0};  // Array for 3 hex chars + null terminator
      0026E3 90 04 0F         [24] 1816 	mov	dptr,#_take_data_input_65537_100
      0026E6 E4               [12] 1817 	clr	a
      0026E7 F0               [24] 1818 	movx	@dptr,a
      0026E8 90 04 10         [24] 1819 	mov	dptr,#(_take_data_input_65537_100 + 0x0001)
      0026EB F0               [24] 1820 	movx	@dptr,a
      0026EC 90 04 11         [24] 1821 	mov	dptr,#(_take_data_input_65537_100 + 0x0002)
      0026EF F0               [24] 1822 	movx	@dptr,a
      0026F0 90 04 12         [24] 1823 	mov	dptr,#(_take_data_input_65537_100 + 0x0003)
      0026F3 F0               [24] 1824 	movx	@dptr,a
                                   1825 ;	8051_i2c_eeprom.c:357: printf("$ ");
      0026F4 74 1A            [12] 1826 	mov	a,#___str_33
      0026F6 C0 E0            [24] 1827 	push	acc
      0026F8 74 46            [12] 1828 	mov	a,#(___str_33 >> 8)
      0026FA C0 E0            [24] 1829 	push	acc
      0026FC 74 80            [12] 1830 	mov	a,#0x80
      0026FE C0 E0            [24] 1831 	push	acc
      002700 12 30 C3         [24] 1832 	lcall	_printf
      002703 15 81            [12] 1833 	dec	sp
      002705 15 81            [12] 1834 	dec	sp
      002707 15 81            [12] 1835 	dec	sp
                                   1836 ;	8051_i2c_eeprom.c:359: while (i < 3) {
      002709 7E 00            [12] 1837 	mov	r6,#0x00
      00270B 7F 00            [12] 1838 	mov	r7,#0x00
      00270D                       1839 00111$:
      00270D C3               [12] 1840 	clr	c
      00270E EE               [12] 1841 	mov	a,r6
      00270F 94 03            [12] 1842 	subb	a,#0x03
      002711 EF               [12] 1843 	mov	a,r7
      002712 64 80            [12] 1844 	xrl	a,#0x80
      002714 94 80            [12] 1845 	subb	a,#0x80
      002716 50 5B            [24] 1846 	jnc	00113$
                                   1847 ;	8051_i2c_eeprom.c:361: c = getchar();
      002718 C0 07            [24] 1848 	push	ar7
      00271A C0 06            [24] 1849 	push	ar6
      00271C 12 20 84         [24] 1850 	lcall	_getchar
      00271F AC 82            [24] 1851 	mov	r4,dpl
      002721 AD 83            [24] 1852 	mov	r5,dph
      002723 D0 06            [24] 1853 	pop	ar6
      002725 D0 07            [24] 1854 	pop	ar7
                                   1855 ;	8051_i2c_eeprom.c:364: if (c == '\r' || c == '\n') {
      002727 BC 0D 02         [24] 1856 	cjne	r4,#0x0d,00200$
      00272A 80 47            [24] 1857 	sjmp	00113$
      00272C                       1858 00200$:
      00272C BC 0A 02         [24] 1859 	cjne	r4,#0x0a,00201$
      00272F 80 42            [24] 1860 	sjmp	00113$
      002731                       1861 00201$:
                                   1862 ;	8051_i2c_eeprom.c:369: if ((c >= '0' && c <= '9') ||
      002731 BC 30 00         [24] 1863 	cjne	r4,#0x30,00202$
      002734                       1864 00202$:
      002734 40 05            [24] 1865 	jc	00108$
      002736 EC               [12] 1866 	mov	a,r4
      002737 24 C6            [12] 1867 	add	a,#0xff - 0x39
      002739 50 14            [24] 1868 	jnc	00104$
      00273B                       1869 00108$:
                                   1870 ;	8051_i2c_eeprom.c:370: (c >= 'a' && c <= 'f') ||
      00273B BC 61 00         [24] 1871 	cjne	r4,#0x61,00205$
      00273E                       1872 00205$:
      00273E 40 05            [24] 1873 	jc	00110$
      002740 EC               [12] 1874 	mov	a,r4
      002741 24 99            [12] 1875 	add	a,#0xff - 0x66
      002743 50 0A            [24] 1876 	jnc	00104$
      002745                       1877 00110$:
                                   1878 ;	8051_i2c_eeprom.c:371: (c >= 'A' && c <= 'F')) {
      002745 BC 41 00         [24] 1879 	cjne	r4,#0x41,00208$
      002748                       1880 00208$:
      002748 40 C3            [24] 1881 	jc	00111$
      00274A EC               [12] 1882 	mov	a,r4
      00274B 24 B9            [12] 1883 	add	a,#0xff - 0x46
      00274D 40 BE            [24] 1884 	jc	00111$
      00274F                       1885 00104$:
                                   1886 ;	8051_i2c_eeprom.c:373: input[i] = c;
      00274F EE               [12] 1887 	mov	a,r6
      002750 24 0F            [12] 1888 	add	a,#_take_data_input_65537_100
      002752 F5 82            [12] 1889 	mov	dpl,a
      002754 EF               [12] 1890 	mov	a,r7
      002755 34 04            [12] 1891 	addc	a,#(_take_data_input_65537_100 >> 8)
      002757 F5 83            [12] 1892 	mov	dph,a
      002759 EC               [12] 1893 	mov	a,r4
      00275A F0               [24] 1894 	movx	@dptr,a
                                   1895 ;	8051_i2c_eeprom.c:374: putchar(c);  // Echo character back
      00275B 7D 00            [12] 1896 	mov	r5,#0x00
      00275D 8C 82            [24] 1897 	mov	dpl,r4
      00275F 8D 83            [24] 1898 	mov	dph,r5
      002761 C0 07            [24] 1899 	push	ar7
      002763 C0 06            [24] 1900 	push	ar6
      002765 12 20 65         [24] 1901 	lcall	_putchar
      002768 D0 06            [24] 1902 	pop	ar6
      00276A D0 07            [24] 1903 	pop	ar7
                                   1904 ;	8051_i2c_eeprom.c:375: i++;
      00276C 0E               [12] 1905 	inc	r6
      00276D BE 00 9D         [24] 1906 	cjne	r6,#0x00,00111$
      002770 0F               [12] 1907 	inc	r7
      002771 80 9A            [24] 1908 	sjmp	00111$
      002773                       1909 00113$:
                                   1910 ;	8051_i2c_eeprom.c:379: input[i] = '\0';  // Null-terminate the string
      002773 EE               [12] 1911 	mov	a,r6
      002774 24 0F            [12] 1912 	add	a,#_take_data_input_65537_100
      002776 F5 82            [12] 1913 	mov	dpl,a
      002778 EF               [12] 1914 	mov	a,r7
      002779 34 04            [12] 1915 	addc	a,#(_take_data_input_65537_100 >> 8)
      00277B F5 83            [12] 1916 	mov	dph,a
      00277D E4               [12] 1917 	clr	a
      00277E F0               [24] 1918 	movx	@dptr,a
                                   1919 ;	8051_i2c_eeprom.c:382: unsigned char data = 0;
      00277F 90 04 13         [24] 1920 	mov	dptr,#_take_data_data_65538_104
      002782 F0               [24] 1921 	movx	@dptr,a
                                   1922 ;	8051_i2c_eeprom.c:383: for (i = 0; input[i] != '\0'; i++) {
      002783 7E 00            [12] 1923 	mov	r6,#0x00
      002785 7F 00            [12] 1924 	mov	r7,#0x00
      002787                       1925 00129$:
      002787 EE               [12] 1926 	mov	a,r6
      002788 24 0F            [12] 1927 	add	a,#_take_data_input_65537_100
      00278A F5 82            [12] 1928 	mov	dpl,a
      00278C EF               [12] 1929 	mov	a,r7
      00278D 34 04            [12] 1930 	addc	a,#(_take_data_input_65537_100 >> 8)
      00278F F5 83            [12] 1931 	mov	dph,a
      002791 E0               [24] 1932 	movx	a,@dptr
      002792 FD               [12] 1933 	mov	r5,a
      002793 70 03            [24] 1934 	jnz	00212$
      002795 02 27 FA         [24] 1935 	ljmp	00125$
      002798                       1936 00212$:
                                   1937 ;	8051_i2c_eeprom.c:384: data = data * 16;
      002798 90 04 13         [24] 1938 	mov	dptr,#_take_data_data_65538_104
      00279B E0               [24] 1939 	movx	a,@dptr
      00279C C4               [12] 1940 	swap	a
      00279D 54 F0            [12] 1941 	anl	a,#0xf0
      00279F FC               [12] 1942 	mov	r4,a
      0027A0 F0               [24] 1943 	movx	@dptr,a
                                   1944 ;	8051_i2c_eeprom.c:385: if (input[i] >= '0' && input[i] <= '9')
      0027A1 BD 30 00         [24] 1945 	cjne	r5,#0x30,00213$
      0027A4                       1946 00213$:
      0027A4 40 12            [24] 1947 	jc	00122$
      0027A6 ED               [12] 1948 	mov	a,r5
      0027A7 24 C6            [12] 1949 	add	a,#0xff - 0x39
      0027A9 40 0D            [24] 1950 	jc	00122$
                                   1951 ;	8051_i2c_eeprom.c:386: data += input[i] - '0';
      0027AB ED               [12] 1952 	mov	a,r5
      0027AC 24 D0            [12] 1953 	add	a,#0xd0
      0027AE FD               [12] 1954 	mov	r5,a
      0027AF 90 04 13         [24] 1955 	mov	dptr,#_take_data_data_65538_104
      0027B2 E0               [24] 1956 	movx	a,@dptr
      0027B3 FC               [12] 1957 	mov	r4,a
      0027B4 2D               [12] 1958 	add	a,r5
      0027B5 F0               [24] 1959 	movx	@dptr,a
      0027B6 80 3A            [24] 1960 	sjmp	00130$
      0027B8                       1961 00122$:
                                   1962 ;	8051_i2c_eeprom.c:387: else if (input[i] >= 'A' && input[i] <= 'F')
      0027B8 EE               [12] 1963 	mov	a,r6
      0027B9 24 0F            [12] 1964 	add	a,#_take_data_input_65537_100
      0027BB F5 82            [12] 1965 	mov	dpl,a
      0027BD EF               [12] 1966 	mov	a,r7
      0027BE 34 04            [12] 1967 	addc	a,#(_take_data_input_65537_100 >> 8)
      0027C0 F5 83            [12] 1968 	mov	dph,a
      0027C2 E0               [24] 1969 	movx	a,@dptr
      0027C3 FD               [12] 1970 	mov	r5,a
      0027C4 BD 41 00         [24] 1971 	cjne	r5,#0x41,00216$
      0027C7                       1972 00216$:
      0027C7 40 14            [24] 1973 	jc	00118$
      0027C9 ED               [12] 1974 	mov	a,r5
      0027CA 24 B9            [12] 1975 	add	a,#0xff - 0x46
      0027CC 40 0F            [24] 1976 	jc	00118$
                                   1977 ;	8051_i2c_eeprom.c:388: data += input[i] - 'A' + 10;
      0027CE 8D 04            [24] 1978 	mov	ar4,r5
      0027D0 74 C9            [12] 1979 	mov	a,#0xc9
      0027D2 2C               [12] 1980 	add	a,r4
      0027D3 FC               [12] 1981 	mov	r4,a
      0027D4 90 04 13         [24] 1982 	mov	dptr,#_take_data_data_65538_104
      0027D7 E0               [24] 1983 	movx	a,@dptr
      0027D8 FB               [12] 1984 	mov	r3,a
      0027D9 2C               [12] 1985 	add	a,r4
      0027DA F0               [24] 1986 	movx	@dptr,a
      0027DB 80 15            [24] 1987 	sjmp	00130$
      0027DD                       1988 00118$:
                                   1989 ;	8051_i2c_eeprom.c:389: else if (input[i] >= 'a' && input[i] <= 'f')
      0027DD BD 61 00         [24] 1990 	cjne	r5,#0x61,00219$
      0027E0                       1991 00219$:
      0027E0 40 10            [24] 1992 	jc	00130$
      0027E2 ED               [12] 1993 	mov	a,r5
      0027E3 24 99            [12] 1994 	add	a,#0xff - 0x66
      0027E5 40 0B            [24] 1995 	jc	00130$
                                   1996 ;	8051_i2c_eeprom.c:390: data += input[i] - 'a' + 10;
      0027E7 74 A9            [12] 1997 	mov	a,#0xa9
      0027E9 2D               [12] 1998 	add	a,r5
      0027EA FD               [12] 1999 	mov	r5,a
      0027EB 90 04 13         [24] 2000 	mov	dptr,#_take_data_data_65538_104
      0027EE E0               [24] 2001 	movx	a,@dptr
      0027EF FC               [12] 2002 	mov	r4,a
      0027F0 2D               [12] 2003 	add	a,r5
      0027F1 F0               [24] 2004 	movx	@dptr,a
      0027F2                       2005 00130$:
                                   2006 ;	8051_i2c_eeprom.c:383: for (i = 0; input[i] != '\0'; i++) {
      0027F2 0E               [12] 2007 	inc	r6
      0027F3 BE 00 01         [24] 2008 	cjne	r6,#0x00,00222$
      0027F6 0F               [12] 2009 	inc	r7
      0027F7                       2010 00222$:
      0027F7 02 27 87         [24] 2011 	ljmp	00129$
      0027FA                       2012 00125$:
                                   2013 ;	8051_i2c_eeprom.c:393: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      0027FA 90 04 13         [24] 2014 	mov	dptr,#_take_data_data_65538_104
      0027FD E0               [24] 2015 	movx	a,@dptr
      0027FE FF               [12] 2016 	mov	r7,a
      0027FF FD               [12] 2017 	mov	r5,a
      002800 7E 00            [12] 2018 	mov	r6,#0x00
      002802 C0 07            [24] 2019 	push	ar7
      002804 C0 05            [24] 2020 	push	ar5
      002806 C0 06            [24] 2021 	push	ar6
      002808 74 1D            [12] 2022 	mov	a,#___str_34
      00280A C0 E0            [24] 2023 	push	acc
      00280C 74 46            [12] 2024 	mov	a,#(___str_34 >> 8)
      00280E C0 E0            [24] 2025 	push	acc
      002810 74 80            [12] 2026 	mov	a,#0x80
      002812 C0 E0            [24] 2027 	push	acc
      002814 12 30 C3         [24] 2028 	lcall	_printf
      002817 E5 81            [12] 2029 	mov	a,sp
      002819 24 FB            [12] 2030 	add	a,#0xfb
      00281B F5 81            [12] 2031 	mov	sp,a
      00281D D0 07            [24] 2032 	pop	ar7
                                   2033 ;	8051_i2c_eeprom.c:394: if(data > 0xfe)
      00281F EF               [12] 2034 	mov	a,r7
      002820 24 01            [12] 2035 	add	a,#0xff - 0xfe
      002822 50 20            [24] 2036 	jnc	00127$
                                   2037 ;	8051_i2c_eeprom.c:396: printf("Data out of Range\n\r");
      002824 74 3A            [12] 2038 	mov	a,#___str_35
      002826 C0 E0            [24] 2039 	push	acc
      002828 74 46            [12] 2040 	mov	a,#(___str_35 >> 8)
      00282A C0 E0            [24] 2041 	push	acc
      00282C 74 80            [12] 2042 	mov	a,#0x80
      00282E C0 E0            [24] 2043 	push	acc
      002830 12 30 C3         [24] 2044 	lcall	_printf
      002833 15 81            [12] 2045 	dec	sp
      002835 15 81            [12] 2046 	dec	sp
      002837 15 81            [12] 2047 	dec	sp
                                   2048 ;	8051_i2c_eeprom.c:397: data_range_flag = 0;
      002839 90 04 5E         [24] 2049 	mov	dptr,#_data_range_flag
      00283C E4               [12] 2050 	clr	a
      00283D F0               [24] 2051 	movx	@dptr,a
      00283E A3               [24] 2052 	inc	dptr
      00283F F0               [24] 2053 	movx	@dptr,a
                                   2054 ;	8051_i2c_eeprom.c:398: return 0;
      002840 75 82 00         [24] 2055 	mov	dpl,#0x00
      002843 22               [24] 2056 	ret
      002844                       2057 00127$:
                                   2058 ;	8051_i2c_eeprom.c:400: return data;
      002844 8F 82            [24] 2059 	mov	dpl,r7
                                   2060 ;	8051_i2c_eeprom.c:402: }
      002846 22               [24] 2061 	ret
                                   2062 ;------------------------------------------------------------
                                   2063 ;Allocation info for local variables in function 'eeprom_write'
                                   2064 ;------------------------------------------------------------
                                   2065 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                   2066 ;address                   Allocated with name '_eeprom_write_address_65536_108'
                                   2067 ;i                         Allocated with name '_eeprom_write_i_131072_113'
                                   2068 ;------------------------------------------------------------
                                   2069 ;	8051_i2c_eeprom.c:418: int eeprom_write(unsigned int address, unsigned char data) 
                                   2070 ;	-----------------------------------------
                                   2071 ;	 function eeprom_write
                                   2072 ;	-----------------------------------------
      002847                       2073 _eeprom_write:
      002847 AF 83            [24] 2074 	mov	r7,dph
      002849 E5 82            [12] 2075 	mov	a,dpl
      00284B 90 04 15         [24] 2076 	mov	dptr,#_eeprom_write_address_65536_108
      00284E F0               [24] 2077 	movx	@dptr,a
      00284F EF               [12] 2078 	mov	a,r7
      002850 A3               [24] 2079 	inc	dptr
      002851 F0               [24] 2080 	movx	@dptr,a
                                   2081 ;	8051_i2c_eeprom.c:421: i2c_start();
      002852 12 2B 8A         [24] 2082 	lcall	_i2c_start
                                   2083 ;	8051_i2c_eeprom.c:424: if(!i2c_write(EEPROM_ID | block | WRITE)) {
      002855 90 04 60         [24] 2084 	mov	dptr,#_block
      002858 E0               [24] 2085 	movx	a,@dptr
      002859 FE               [12] 2086 	mov	r6,a
      00285A A3               [24] 2087 	inc	dptr
      00285B E0               [24] 2088 	movx	a,@dptr
      00285C 43 06 A0         [24] 2089 	orl	ar6,#0xa0
      00285F 8E 82            [24] 2090 	mov	dpl,r6
      002861 12 2A 9D         [24] 2091 	lcall	_i2c_write
      002864 E5 82            [12] 2092 	mov	a,dpl
      002866 85 83 F0         [24] 2093 	mov	b,dph
      002869 45 F0            [12] 2094 	orl	a,b
      00286B 70 1C            [24] 2095 	jnz	00102$
                                   2096 ;	8051_i2c_eeprom.c:425: printf("Error: No ACK for device address (write)\n\r");
      00286D 74 4E            [12] 2097 	mov	a,#___str_36
      00286F C0 E0            [24] 2098 	push	acc
      002871 74 46            [12] 2099 	mov	a,#(___str_36 >> 8)
      002873 C0 E0            [24] 2100 	push	acc
      002875 74 80            [12] 2101 	mov	a,#0x80
      002877 C0 E0            [24] 2102 	push	acc
      002879 12 30 C3         [24] 2103 	lcall	_printf
      00287C 15 81            [12] 2104 	dec	sp
      00287E 15 81            [12] 2105 	dec	sp
      002880 15 81            [12] 2106 	dec	sp
                                   2107 ;	8051_i2c_eeprom.c:426: i2c_stop();
      002882 12 2F 6D         [24] 2108 	lcall	_i2c_stop
                                   2109 ;	8051_i2c_eeprom.c:427: return 0;
      002885 90 00 00         [24] 2110 	mov	dptr,#0x0000
      002888 22               [24] 2111 	ret
      002889                       2112 00102$:
                                   2113 ;	8051_i2c_eeprom.c:431: if(!i2c_write((unsigned char)address)) {
      002889 90 04 15         [24] 2114 	mov	dptr,#_eeprom_write_address_65536_108
      00288C E0               [24] 2115 	movx	a,@dptr
      00288D FE               [12] 2116 	mov	r6,a
      00288E A3               [24] 2117 	inc	dptr
      00288F E0               [24] 2118 	movx	a,@dptr
      002890 FF               [12] 2119 	mov	r7,a
      002891 8E 05            [24] 2120 	mov	ar5,r6
      002893 8D 82            [24] 2121 	mov	dpl,r5
      002895 C0 07            [24] 2122 	push	ar7
      002897 C0 06            [24] 2123 	push	ar6
      002899 12 2A 9D         [24] 2124 	lcall	_i2c_write
      00289C E5 82            [12] 2125 	mov	a,dpl
      00289E 85 83 F0         [24] 2126 	mov	b,dph
      0028A1 D0 06            [24] 2127 	pop	ar6
      0028A3 D0 07            [24] 2128 	pop	ar7
      0028A5 45 F0            [12] 2129 	orl	a,b
      0028A7 70 1C            [24] 2130 	jnz	00104$
                                   2131 ;	8051_i2c_eeprom.c:432: printf("Error: No ACK for memory address\n\r");
      0028A9 74 79            [12] 2132 	mov	a,#___str_37
      0028AB C0 E0            [24] 2133 	push	acc
      0028AD 74 46            [12] 2134 	mov	a,#(___str_37 >> 8)
      0028AF C0 E0            [24] 2135 	push	acc
      0028B1 74 80            [12] 2136 	mov	a,#0x80
      0028B3 C0 E0            [24] 2137 	push	acc
      0028B5 12 30 C3         [24] 2138 	lcall	_printf
      0028B8 15 81            [12] 2139 	dec	sp
      0028BA 15 81            [12] 2140 	dec	sp
      0028BC 15 81            [12] 2141 	dec	sp
                                   2142 ;	8051_i2c_eeprom.c:433: i2c_stop();
      0028BE 12 2F 6D         [24] 2143 	lcall	_i2c_stop
                                   2144 ;	8051_i2c_eeprom.c:434: return 0;
      0028C1 90 00 00         [24] 2145 	mov	dptr,#0x0000
      0028C4 22               [24] 2146 	ret
      0028C5                       2147 00104$:
                                   2148 ;	8051_i2c_eeprom.c:438: if(!i2c_write(data)) {
      0028C5 90 04 14         [24] 2149 	mov	dptr,#_eeprom_write_PARM_2
      0028C8 E0               [24] 2150 	movx	a,@dptr
      0028C9 FD               [12] 2151 	mov	r5,a
      0028CA F5 82            [12] 2152 	mov	dpl,a
      0028CC C0 07            [24] 2153 	push	ar7
      0028CE C0 06            [24] 2154 	push	ar6
      0028D0 C0 05            [24] 2155 	push	ar5
      0028D2 12 2A 9D         [24] 2156 	lcall	_i2c_write
      0028D5 E5 82            [12] 2157 	mov	a,dpl
      0028D7 85 83 F0         [24] 2158 	mov	b,dph
      0028DA D0 05            [24] 2159 	pop	ar5
      0028DC D0 06            [24] 2160 	pop	ar6
      0028DE D0 07            [24] 2161 	pop	ar7
      0028E0 45 F0            [12] 2162 	orl	a,b
      0028E2 70 1C            [24] 2163 	jnz	00106$
                                   2164 ;	8051_i2c_eeprom.c:439: printf("Error: No ACK for data\n\r");
      0028E4 74 9C            [12] 2165 	mov	a,#___str_38
      0028E6 C0 E0            [24] 2166 	push	acc
      0028E8 74 46            [12] 2167 	mov	a,#(___str_38 >> 8)
      0028EA C0 E0            [24] 2168 	push	acc
      0028EC 74 80            [12] 2169 	mov	a,#0x80
      0028EE C0 E0            [24] 2170 	push	acc
      0028F0 12 30 C3         [24] 2171 	lcall	_printf
      0028F3 15 81            [12] 2172 	dec	sp
      0028F5 15 81            [12] 2173 	dec	sp
      0028F7 15 81            [12] 2174 	dec	sp
                                   2175 ;	8051_i2c_eeprom.c:440: i2c_stop();
      0028F9 12 2F 6D         [24] 2176 	lcall	_i2c_stop
                                   2177 ;	8051_i2c_eeprom.c:441: return 0;
      0028FC 90 00 00         [24] 2178 	mov	dptr,#0x0000
      0028FF 22               [24] 2179 	ret
      002900                       2180 00106$:
                                   2181 ;	8051_i2c_eeprom.c:444: i2c_stop();
      002900 C0 07            [24] 2182 	push	ar7
      002902 C0 06            [24] 2183 	push	ar6
      002904 C0 05            [24] 2184 	push	ar5
      002906 12 2F 6D         [24] 2185 	lcall	_i2c_stop
      002909 D0 05            [24] 2186 	pop	ar5
      00290B D0 06            [24] 2187 	pop	ar6
      00290D D0 07            [24] 2188 	pop	ar7
                                   2189 ;	8051_i2c_eeprom.c:446: for(int i = 0; i<10; i++)
      00290F 7B 00            [12] 2190 	mov	r3,#0x00
      002911 7C 00            [12] 2191 	mov	r4,#0x00
      002913                       2192 00109$:
      002913 C3               [12] 2193 	clr	c
      002914 EB               [12] 2194 	mov	a,r3
      002915 94 0A            [12] 2195 	subb	a,#0x0a
      002917 EC               [12] 2196 	mov	a,r4
      002918 64 80            [12] 2197 	xrl	a,#0x80
      00291A 94 80            [12] 2198 	subb	a,#0x80
      00291C 50 1E            [24] 2199 	jnc	00107$
                                   2200 ;	8051_i2c_eeprom.c:448: i2c_delay();
      00291E C0 07            [24] 2201 	push	ar7
      002920 C0 06            [24] 2202 	push	ar6
      002922 C0 05            [24] 2203 	push	ar5
      002924 C0 04            [24] 2204 	push	ar4
      002926 C0 03            [24] 2205 	push	ar3
      002928 12 2F A6         [24] 2206 	lcall	_i2c_delay
      00292B D0 03            [24] 2207 	pop	ar3
      00292D D0 04            [24] 2208 	pop	ar4
      00292F D0 05            [24] 2209 	pop	ar5
      002931 D0 06            [24] 2210 	pop	ar6
      002933 D0 07            [24] 2211 	pop	ar7
                                   2212 ;	8051_i2c_eeprom.c:446: for(int i = 0; i<10; i++)
      002935 0B               [12] 2213 	inc	r3
      002936 BB 00 DA         [24] 2214 	cjne	r3,#0x00,00109$
      002939 0C               [12] 2215 	inc	r4
      00293A 80 D7            [24] 2216 	sjmp	00109$
      00293C                       2217 00107$:
                                   2218 ;	8051_i2c_eeprom.c:451: printf("| Writing at Address 0x%03X Data 0x%02X          |\n\r", address, data);
      00293C 7C 00            [12] 2219 	mov	r4,#0x00
      00293E C0 05            [24] 2220 	push	ar5
      002940 C0 04            [24] 2221 	push	ar4
      002942 C0 06            [24] 2222 	push	ar6
      002944 C0 07            [24] 2223 	push	ar7
      002946 74 B5            [12] 2224 	mov	a,#___str_39
      002948 C0 E0            [24] 2225 	push	acc
      00294A 74 46            [12] 2226 	mov	a,#(___str_39 >> 8)
      00294C C0 E0            [24] 2227 	push	acc
      00294E 74 80            [12] 2228 	mov	a,#0x80
      002950 C0 E0            [24] 2229 	push	acc
      002952 12 30 C3         [24] 2230 	lcall	_printf
      002955 E5 81            [12] 2231 	mov	a,sp
      002957 24 F9            [12] 2232 	add	a,#0xf9
      002959 F5 81            [12] 2233 	mov	sp,a
                                   2234 ;	8051_i2c_eeprom.c:452: printf("│ Write successful!                             │\n\r");
      00295B 74 EA            [12] 2235 	mov	a,#___str_40
      00295D C0 E0            [24] 2236 	push	acc
      00295F 74 46            [12] 2237 	mov	a,#(___str_40 >> 8)
      002961 C0 E0            [24] 2238 	push	acc
      002963 74 80            [12] 2239 	mov	a,#0x80
      002965 C0 E0            [24] 2240 	push	acc
      002967 12 30 C3         [24] 2241 	lcall	_printf
      00296A 15 81            [12] 2242 	dec	sp
      00296C 15 81            [12] 2243 	dec	sp
      00296E 15 81            [12] 2244 	dec	sp
                                   2245 ;	8051_i2c_eeprom.c:453: printf("└───────────────────────────────────────────────┘\n\r");
      002970 74 22            [12] 2246 	mov	a,#___str_41
      002972 C0 E0            [24] 2247 	push	acc
      002974 74 47            [12] 2248 	mov	a,#(___str_41 >> 8)
      002976 C0 E0            [24] 2249 	push	acc
      002978 74 80            [12] 2250 	mov	a,#0x80
      00297A C0 E0            [24] 2251 	push	acc
      00297C 12 30 C3         [24] 2252 	lcall	_printf
      00297F 15 81            [12] 2253 	dec	sp
      002981 15 81            [12] 2254 	dec	sp
      002983 15 81            [12] 2255 	dec	sp
                                   2256 ;	8051_i2c_eeprom.c:454: return 1;  // Success
      002985 90 00 01         [24] 2257 	mov	dptr,#0x0001
                                   2258 ;	8051_i2c_eeprom.c:464: }
      002988 22               [24] 2259 	ret
                                   2260 ;------------------------------------------------------------
                                   2261 ;Allocation info for local variables in function 'eeprom_read'
                                   2262 ;------------------------------------------------------------
                                   2263 ;address                   Allocated with name '_eeprom_read_address_65536_115'
                                   2264 ;result                    Allocated with name '_eeprom_read_result_65536_116'
                                   2265 ;------------------------------------------------------------
                                   2266 ;	8051_i2c_eeprom.c:480: int eeprom_read(unsigned int address)
                                   2267 ;	-----------------------------------------
                                   2268 ;	 function eeprom_read
                                   2269 ;	-----------------------------------------
      002989                       2270 _eeprom_read:
      002989 AF 83            [24] 2271 	mov	r7,dph
      00298B E5 82            [12] 2272 	mov	a,dpl
      00298D 90 04 17         [24] 2273 	mov	dptr,#_eeprom_read_address_65536_115
      002990 F0               [24] 2274 	movx	@dptr,a
      002991 EF               [12] 2275 	mov	a,r7
      002992 A3               [24] 2276 	inc	dptr
      002993 F0               [24] 2277 	movx	@dptr,a
                                   2278 ;	8051_i2c_eeprom.c:486: i2c_start();
      002994 12 2B 8A         [24] 2279 	lcall	_i2c_start
                                   2280 ;	8051_i2c_eeprom.c:489: if(!i2c_write(EEPROM_ID | WRITE)) {
      002997 75 82 A0         [24] 2281 	mov	dpl,#0xa0
      00299A 12 2A 9D         [24] 2282 	lcall	_i2c_write
      00299D E5 82            [12] 2283 	mov	a,dpl
      00299F 85 83 F0         [24] 2284 	mov	b,dph
      0029A2 45 F0            [12] 2285 	orl	a,b
      0029A4 70 1C            [24] 2286 	jnz	00102$
                                   2287 ;	8051_i2c_eeprom.c:490: printf("Error: No ACK for device address (write mode)\n\r");
      0029A6 74 B8            [12] 2288 	mov	a,#___str_42
      0029A8 C0 E0            [24] 2289 	push	acc
      0029AA 74 47            [12] 2290 	mov	a,#(___str_42 >> 8)
      0029AC C0 E0            [24] 2291 	push	acc
      0029AE 74 80            [12] 2292 	mov	a,#0x80
      0029B0 C0 E0            [24] 2293 	push	acc
      0029B2 12 30 C3         [24] 2294 	lcall	_printf
      0029B5 15 81            [12] 2295 	dec	sp
      0029B7 15 81            [12] 2296 	dec	sp
      0029B9 15 81            [12] 2297 	dec	sp
                                   2298 ;	8051_i2c_eeprom.c:491: i2c_stop();
      0029BB 12 2F 6D         [24] 2299 	lcall	_i2c_stop
                                   2300 ;	8051_i2c_eeprom.c:492: return -1;
      0029BE 90 FF FF         [24] 2301 	mov	dptr,#0xffff
      0029C1 22               [24] 2302 	ret
      0029C2                       2303 00102$:
                                   2304 ;	8051_i2c_eeprom.c:496: if(!i2c_write((unsigned char)address)) {
      0029C2 90 04 17         [24] 2305 	mov	dptr,#_eeprom_read_address_65536_115
      0029C5 E0               [24] 2306 	movx	a,@dptr
      0029C6 FE               [12] 2307 	mov	r6,a
      0029C7 A3               [24] 2308 	inc	dptr
      0029C8 E0               [24] 2309 	movx	a,@dptr
      0029C9 FF               [12] 2310 	mov	r7,a
      0029CA 8E 05            [24] 2311 	mov	ar5,r6
      0029CC 8D 82            [24] 2312 	mov	dpl,r5
      0029CE C0 07            [24] 2313 	push	ar7
      0029D0 C0 06            [24] 2314 	push	ar6
      0029D2 12 2A 9D         [24] 2315 	lcall	_i2c_write
      0029D5 E5 82            [12] 2316 	mov	a,dpl
      0029D7 85 83 F0         [24] 2317 	mov	b,dph
      0029DA D0 06            [24] 2318 	pop	ar6
      0029DC D0 07            [24] 2319 	pop	ar7
      0029DE 45 F0            [12] 2320 	orl	a,b
      0029E0 70 1C            [24] 2321 	jnz	00104$
                                   2322 ;	8051_i2c_eeprom.c:497: printf("Error: No ACK for memory address\n\r");
      0029E2 74 79            [12] 2323 	mov	a,#___str_37
      0029E4 C0 E0            [24] 2324 	push	acc
      0029E6 74 46            [12] 2325 	mov	a,#(___str_37 >> 8)
      0029E8 C0 E0            [24] 2326 	push	acc
      0029EA 74 80            [12] 2327 	mov	a,#0x80
      0029EC C0 E0            [24] 2328 	push	acc
      0029EE 12 30 C3         [24] 2329 	lcall	_printf
      0029F1 15 81            [12] 2330 	dec	sp
      0029F3 15 81            [12] 2331 	dec	sp
      0029F5 15 81            [12] 2332 	dec	sp
                                   2333 ;	8051_i2c_eeprom.c:498: i2c_stop();
      0029F7 12 2F 6D         [24] 2334 	lcall	_i2c_stop
                                   2335 ;	8051_i2c_eeprom.c:499: return -1;
      0029FA 90 FF FF         [24] 2336 	mov	dptr,#0xffff
      0029FD 22               [24] 2337 	ret
      0029FE                       2338 00104$:
                                   2339 ;	8051_i2c_eeprom.c:503: i2c_start();
      0029FE C0 07            [24] 2340 	push	ar7
      002A00 C0 06            [24] 2341 	push	ar6
      002A02 12 2B 8A         [24] 2342 	lcall	_i2c_start
                                   2343 ;	8051_i2c_eeprom.c:506: if(!i2c_write(EEPROM_ID | READ)) {
      002A05 75 82 A1         [24] 2344 	mov	dpl,#0xa1
      002A08 12 2A 9D         [24] 2345 	lcall	_i2c_write
      002A0B E5 82            [12] 2346 	mov	a,dpl
      002A0D 85 83 F0         [24] 2347 	mov	b,dph
      002A10 D0 06            [24] 2348 	pop	ar6
      002A12 D0 07            [24] 2349 	pop	ar7
      002A14 45 F0            [12] 2350 	orl	a,b
      002A16 70 1C            [24] 2351 	jnz	00106$
                                   2352 ;	8051_i2c_eeprom.c:507: printf("Error: No ACK for device address (read mode)\n\r");
      002A18 74 E8            [12] 2353 	mov	a,#___str_43
      002A1A C0 E0            [24] 2354 	push	acc
      002A1C 74 47            [12] 2355 	mov	a,#(___str_43 >> 8)
      002A1E C0 E0            [24] 2356 	push	acc
      002A20 74 80            [12] 2357 	mov	a,#0x80
      002A22 C0 E0            [24] 2358 	push	acc
      002A24 12 30 C3         [24] 2359 	lcall	_printf
      002A27 15 81            [12] 2360 	dec	sp
      002A29 15 81            [12] 2361 	dec	sp
      002A2B 15 81            [12] 2362 	dec	sp
                                   2363 ;	8051_i2c_eeprom.c:508: i2c_stop();
      002A2D 12 2F 6D         [24] 2364 	lcall	_i2c_stop
                                   2365 ;	8051_i2c_eeprom.c:509: return -1;
      002A30 90 FF FF         [24] 2366 	mov	dptr,#0xffff
      002A33 22               [24] 2367 	ret
      002A34                       2368 00106$:
                                   2369 ;	8051_i2c_eeprom.c:513: result = i2c_read(0);  // 0 means send NACK
      002A34 90 00 00         [24] 2370 	mov	dptr,#0x0000
      002A37 C0 07            [24] 2371 	push	ar7
      002A39 C0 06            [24] 2372 	push	ar6
      002A3B 12 2B 05         [24] 2373 	lcall	_i2c_read
      002A3E AC 82            [24] 2374 	mov	r4,dpl
      002A40 D0 06            [24] 2375 	pop	ar6
      002A42 D0 07            [24] 2376 	pop	ar7
                                   2377 ;	8051_i2c_eeprom.c:515: printf("| 0x%03X : 0x%02X \n\r", address, result);
      002A44 7D 00            [12] 2378 	mov	r5,#0x00
      002A46 C0 05            [24] 2379 	push	ar5
      002A48 C0 04            [24] 2380 	push	ar4
      002A4A C0 04            [24] 2381 	push	ar4
      002A4C C0 05            [24] 2382 	push	ar5
      002A4E C0 06            [24] 2383 	push	ar6
      002A50 C0 07            [24] 2384 	push	ar7
      002A52 74 17            [12] 2385 	mov	a,#___str_44
      002A54 C0 E0            [24] 2386 	push	acc
      002A56 74 48            [12] 2387 	mov	a,#(___str_44 >> 8)
      002A58 C0 E0            [24] 2388 	push	acc
      002A5A 74 80            [12] 2389 	mov	a,#0x80
      002A5C C0 E0            [24] 2390 	push	acc
      002A5E 12 30 C3         [24] 2391 	lcall	_printf
      002A61 E5 81            [12] 2392 	mov	a,sp
      002A63 24 F9            [12] 2393 	add	a,#0xf9
      002A65 F5 81            [12] 2394 	mov	sp,a
                                   2395 ;	8051_i2c_eeprom.c:516: printf("│ Read successful!                 │\n\r");
      002A67 74 2C            [12] 2396 	mov	a,#___str_45
      002A69 C0 E0            [24] 2397 	push	acc
      002A6B 74 48            [12] 2398 	mov	a,#(___str_45 >> 8)
      002A6D C0 E0            [24] 2399 	push	acc
      002A6F 74 80            [12] 2400 	mov	a,#0x80
      002A71 C0 E0            [24] 2401 	push	acc
      002A73 12 30 C3         [24] 2402 	lcall	_printf
      002A76 15 81            [12] 2403 	dec	sp
      002A78 15 81            [12] 2404 	dec	sp
      002A7A 15 81            [12] 2405 	dec	sp
                                   2406 ;	8051_i2c_eeprom.c:517: printf("└───────────────────────────────────────────────┘\n\r");
      002A7C 74 22            [12] 2407 	mov	a,#___str_41
      002A7E C0 E0            [24] 2408 	push	acc
      002A80 74 47            [12] 2409 	mov	a,#(___str_41 >> 8)
      002A82 C0 E0            [24] 2410 	push	acc
      002A84 74 80            [12] 2411 	mov	a,#0x80
      002A86 C0 E0            [24] 2412 	push	acc
      002A88 12 30 C3         [24] 2413 	lcall	_printf
      002A8B 15 81            [12] 2414 	dec	sp
      002A8D 15 81            [12] 2415 	dec	sp
      002A8F 15 81            [12] 2416 	dec	sp
                                   2417 ;	8051_i2c_eeprom.c:518: i2c_stop();
      002A91 12 2F 6D         [24] 2418 	lcall	_i2c_stop
      002A94 D0 04            [24] 2419 	pop	ar4
      002A96 D0 05            [24] 2420 	pop	ar5
                                   2421 ;	8051_i2c_eeprom.c:519: return result;
      002A98 8C 82            [24] 2422 	mov	dpl,r4
      002A9A 8D 83            [24] 2423 	mov	dph,r5
                                   2424 ;	8051_i2c_eeprom.c:520: }
      002A9C 22               [24] 2425 	ret
                                   2426 ;------------------------------------------------------------
                                   2427 ;Allocation info for local variables in function 'i2c_write'
                                   2428 ;------------------------------------------------------------
                                   2429 ;data                      Allocated with name '_i2c_write_data_65536_120'
                                   2430 ;i                         Allocated with name '_i2c_write_i_65536_121'
                                   2431 ;------------------------------------------------------------
                                   2432 ;	8051_i2c_eeprom.c:531: int i2c_write(unsigned char data)
                                   2433 ;	-----------------------------------------
                                   2434 ;	 function i2c_write
                                   2435 ;	-----------------------------------------
      002A9D                       2436 _i2c_write:
      002A9D E5 82            [12] 2437 	mov	a,dpl
      002A9F 90 04 19         [24] 2438 	mov	dptr,#_i2c_write_data_65536_120
      002AA2 F0               [24] 2439 	movx	@dptr,a
                                   2440 ;	8051_i2c_eeprom.c:535: for(i=0;i<=7;i++)
      002AA3 7E 00            [12] 2441 	mov	r6,#0x00
      002AA5 7F 00            [12] 2442 	mov	r7,#0x00
      002AA7                       2443 00104$:
                                   2444 ;	8051_i2c_eeprom.c:537: SDA = (data & 0x80) ? 1 : 0;    //msb first
      002AA7 90 04 19         [24] 2445 	mov	dptr,#_i2c_write_data_65536_120
      002AAA E0               [24] 2446 	movx	a,@dptr
      002AAB FD               [12] 2447 	mov	r5,a
      002AAC 23               [12] 2448 	rl	a
      002AAD 54 01            [12] 2449 	anl	a,#0x01
      002AAF 24 FF            [12] 2450 	add	a,#0xff
      002AB1 92 94            [24] 2451 	mov	_P1_4,c
                                   2452 ;	8051_i2c_eeprom.c:538: i2c_delay();        // Setup time for data
      002AB3 C0 07            [24] 2453 	push	ar7
      002AB5 C0 06            [24] 2454 	push	ar6
      002AB7 C0 05            [24] 2455 	push	ar5
      002AB9 12 2F A6         [24] 2456 	lcall	_i2c_delay
                                   2457 ;	8051_i2c_eeprom.c:539: SCL=1;
                                   2458 ;	assignBit
      002ABC D2 93            [12] 2459 	setb	_P1_3
                                   2460 ;	8051_i2c_eeprom.c:540: i2c_delay();        // Hold time for clock
      002ABE 12 2F A6         [24] 2461 	lcall	_i2c_delay
      002AC1 D0 05            [24] 2462 	pop	ar5
      002AC3 D0 06            [24] 2463 	pop	ar6
      002AC5 D0 07            [24] 2464 	pop	ar7
                                   2465 ;	8051_i2c_eeprom.c:541: SCL=0;
                                   2466 ;	assignBit
      002AC7 C2 93            [12] 2467 	clr	_P1_3
                                   2468 ;	8051_i2c_eeprom.c:542: data = data << 1;
      002AC9 ED               [12] 2469 	mov	a,r5
      002ACA 2D               [12] 2470 	add	a,r5
      002ACB 90 04 19         [24] 2471 	mov	dptr,#_i2c_write_data_65536_120
      002ACE F0               [24] 2472 	movx	@dptr,a
                                   2473 ;	8051_i2c_eeprom.c:535: for(i=0;i<=7;i++)
      002ACF 0E               [12] 2474 	inc	r6
      002AD0 BE 00 01         [24] 2475 	cjne	r6,#0x00,00121$
      002AD3 0F               [12] 2476 	inc	r7
      002AD4                       2477 00121$:
      002AD4 C3               [12] 2478 	clr	c
      002AD5 74 07            [12] 2479 	mov	a,#0x07
      002AD7 9E               [12] 2480 	subb	a,r6
      002AD8 E4               [12] 2481 	clr	a
      002AD9 9F               [12] 2482 	subb	a,r7
      002ADA 50 CB            [24] 2483 	jnc	00104$
                                   2484 ;	8051_i2c_eeprom.c:546: SDA = 1;            // Release SDA for slave
                                   2485 ;	assignBit
      002ADC D2 94            [12] 2486 	setb	_P1_4
                                   2487 ;	8051_i2c_eeprom.c:547: SCL = 1;            // 9th clock pulse for ACK
                                   2488 ;	assignBit
      002ADE D2 93            [12] 2489 	setb	_P1_3
                                   2490 ;	8051_i2c_eeprom.c:548: i2c_delay();
      002AE0 12 2F A6         [24] 2491 	lcall	_i2c_delay
                                   2492 ;	8051_i2c_eeprom.c:549: if(SDA == 1)        // If SDA is still high, no ACK received
      002AE3 30 94 19         [24] 2493 	jnb	_P1_4,00103$
                                   2494 ;	8051_i2c_eeprom.c:552: printf("ACK DID NOT ARRIVE\n\r");
      002AE6 74 57            [12] 2495 	mov	a,#___str_46
      002AE8 C0 E0            [24] 2496 	push	acc
      002AEA 74 48            [12] 2497 	mov	a,#(___str_46 >> 8)
      002AEC C0 E0            [24] 2498 	push	acc
      002AEE 74 80            [12] 2499 	mov	a,#0x80
      002AF0 C0 E0            [24] 2500 	push	acc
      002AF2 12 30 C3         [24] 2501 	lcall	_printf
      002AF5 15 81            [12] 2502 	dec	sp
      002AF7 15 81            [12] 2503 	dec	sp
      002AF9 15 81            [12] 2504 	dec	sp
                                   2505 ;	8051_i2c_eeprom.c:553: return 0;       // Error
      002AFB 90 00 00         [24] 2506 	mov	dptr,#0x0000
      002AFE 22               [24] 2507 	ret
      002AFF                       2508 00103$:
                                   2509 ;	8051_i2c_eeprom.c:555: SCL = 0;
                                   2510 ;	assignBit
      002AFF C2 93            [12] 2511 	clr	_P1_3
                                   2512 ;	8051_i2c_eeprom.c:557: return 1;           // Success
      002B01 90 00 01         [24] 2513 	mov	dptr,#0x0001
                                   2514 ;	8051_i2c_eeprom.c:559: }
      002B04 22               [24] 2515 	ret
                                   2516 ;------------------------------------------------------------
                                   2517 ;Allocation info for local variables in function 'i2c_read'
                                   2518 ;------------------------------------------------------------
                                   2519 ;ACK                       Allocated with name '_i2c_read_ACK_65536_125'
                                   2520 ;buff                      Allocated with name '_i2c_read_buff_65536_126'
                                   2521 ;i                         Allocated with name '_i2c_read_i_131072_127'
                                   2522 ;------------------------------------------------------------
                                   2523 ;	8051_i2c_eeprom.c:569: int i2c_read(int ACK)
                                   2524 ;	-----------------------------------------
                                   2525 ;	 function i2c_read
                                   2526 ;	-----------------------------------------
      002B05                       2527 _i2c_read:
      002B05 AF 83            [24] 2528 	mov	r7,dph
      002B07 E5 82            [12] 2529 	mov	a,dpl
      002B09 90 04 1A         [24] 2530 	mov	dptr,#_i2c_read_ACK_65536_125
      002B0C F0               [24] 2531 	movx	@dptr,a
      002B0D EF               [12] 2532 	mov	a,r7
      002B0E A3               [24] 2533 	inc	dptr
      002B0F F0               [24] 2534 	movx	@dptr,a
                                   2535 ;	8051_i2c_eeprom.c:571: unsigned char buff=0;
      002B10 90 04 1C         [24] 2536 	mov	dptr,#_i2c_read_buff_65536_126
      002B13 E4               [12] 2537 	clr	a
      002B14 F0               [24] 2538 	movx	@dptr,a
                                   2539 ;	8051_i2c_eeprom.c:572: SCL = 0;
                                   2540 ;	assignBit
      002B15 C2 93            [12] 2541 	clr	_P1_3
                                   2542 ;	8051_i2c_eeprom.c:573: for(int i=0;i<8;i++)
      002B17 7E 00            [12] 2543 	mov	r6,#0x00
      002B19 7F 00            [12] 2544 	mov	r7,#0x00
      002B1B                       2545 00103$:
      002B1B C3               [12] 2546 	clr	c
      002B1C EE               [12] 2547 	mov	a,r6
      002B1D 94 08            [12] 2548 	subb	a,#0x08
      002B1F EF               [12] 2549 	mov	a,r7
      002B20 64 80            [12] 2550 	xrl	a,#0x80
      002B22 94 80            [12] 2551 	subb	a,#0x80
      002B24 50 40            [24] 2552 	jnc	00101$
                                   2553 ;	8051_i2c_eeprom.c:575: SCL = 1;
                                   2554 ;	assignBit
      002B26 D2 93            [12] 2555 	setb	_P1_3
                                   2556 ;	8051_i2c_eeprom.c:576: i2c_delay();
      002B28 C0 07            [24] 2557 	push	ar7
      002B2A C0 06            [24] 2558 	push	ar6
      002B2C 12 2F A6         [24] 2559 	lcall	_i2c_delay
      002B2F D0 06            [24] 2560 	pop	ar6
      002B31 D0 07            [24] 2561 	pop	ar7
                                   2562 ;	8051_i2c_eeprom.c:577: buff |= (SDA << (7 - i));
      002B33 A2 94            [12] 2563 	mov	c,_P1_4
      002B35 E4               [12] 2564 	clr	a
      002B36 33               [12] 2565 	rlc	a
      002B37 FD               [12] 2566 	mov	r5,a
      002B38 8E 04            [24] 2567 	mov	ar4,r6
      002B3A 74 07            [12] 2568 	mov	a,#0x07
      002B3C C3               [12] 2569 	clr	c
      002B3D 9C               [12] 2570 	subb	a,r4
      002B3E FC               [12] 2571 	mov	r4,a
      002B3F 8C F0            [24] 2572 	mov	b,r4
      002B41 05 F0            [12] 2573 	inc	b
      002B43 ED               [12] 2574 	mov	a,r5
      002B44 80 02            [24] 2575 	sjmp	00119$
      002B46                       2576 00117$:
      002B46 25 E0            [12] 2577 	add	a,acc
      002B48                       2578 00119$:
      002B48 D5 F0 FB         [24] 2579 	djnz	b,00117$
      002B4B FC               [12] 2580 	mov	r4,a
      002B4C 90 04 1C         [24] 2581 	mov	dptr,#_i2c_read_buff_65536_126
      002B4F E0               [24] 2582 	movx	a,@dptr
      002B50 4C               [12] 2583 	orl	a,r4
      002B51 F0               [24] 2584 	movx	@dptr,a
                                   2585 ;	8051_i2c_eeprom.c:578: i2c_delay();
      002B52 C0 07            [24] 2586 	push	ar7
      002B54 C0 06            [24] 2587 	push	ar6
      002B56 12 2F A6         [24] 2588 	lcall	_i2c_delay
      002B59 D0 06            [24] 2589 	pop	ar6
      002B5B D0 07            [24] 2590 	pop	ar7
                                   2591 ;	8051_i2c_eeprom.c:579: SCL=0;
                                   2592 ;	assignBit
      002B5D C2 93            [12] 2593 	clr	_P1_3
                                   2594 ;	8051_i2c_eeprom.c:573: for(int i=0;i<8;i++)
      002B5F 0E               [12] 2595 	inc	r6
      002B60 BE 00 B8         [24] 2596 	cjne	r6,#0x00,00103$
      002B63 0F               [12] 2597 	inc	r7
      002B64 80 B5            [24] 2598 	sjmp	00103$
      002B66                       2599 00101$:
                                   2600 ;	8051_i2c_eeprom.c:583: SDA = !ACK;         // ACK = 0, NACK = 1
      002B66 90 04 1A         [24] 2601 	mov	dptr,#_i2c_read_ACK_65536_125
      002B69 E0               [24] 2602 	movx	a,@dptr
      002B6A FE               [12] 2603 	mov	r6,a
      002B6B A3               [24] 2604 	inc	dptr
      002B6C E0               [24] 2605 	movx	a,@dptr
      002B6D 4E               [12] 2606 	orl	a,r6
      002B6E B4 01 00         [24] 2607 	cjne	a,#0x01,00121$
      002B71                       2608 00121$:
      002B71 E4               [12] 2609 	clr	a
      002B72 33               [12] 2610 	rlc	a
      002B73 24 FF            [12] 2611 	add	a,#0xff
      002B75 92 94            [24] 2612 	mov	_P1_4,c
                                   2613 ;	8051_i2c_eeprom.c:584: SCL = 1;
                                   2614 ;	assignBit
      002B77 D2 93            [12] 2615 	setb	_P1_3
                                   2616 ;	8051_i2c_eeprom.c:585: i2c_delay();
      002B79 12 2F A6         [24] 2617 	lcall	_i2c_delay
                                   2618 ;	8051_i2c_eeprom.c:586: SCL = 0;
                                   2619 ;	assignBit
      002B7C C2 93            [12] 2620 	clr	_P1_3
                                   2621 ;	8051_i2c_eeprom.c:588: return buff;
      002B7E 90 04 1C         [24] 2622 	mov	dptr,#_i2c_read_buff_65536_126
      002B81 E0               [24] 2623 	movx	a,@dptr
      002B82 FF               [12] 2624 	mov	r7,a
      002B83 7E 00            [12] 2625 	mov	r6,#0x00
      002B85 8F 82            [24] 2626 	mov	dpl,r7
      002B87 8E 83            [24] 2627 	mov	dph,r6
                                   2628 ;	8051_i2c_eeprom.c:589: }
      002B89 22               [24] 2629 	ret
                                   2630 ;------------------------------------------------------------
                                   2631 ;Allocation info for local variables in function 'i2c_start'
                                   2632 ;------------------------------------------------------------
                                   2633 ;	8051_i2c_eeprom.c:596: void i2c_start(void)
                                   2634 ;	-----------------------------------------
                                   2635 ;	 function i2c_start
                                   2636 ;	-----------------------------------------
      002B8A                       2637 _i2c_start:
                                   2638 ;	8051_i2c_eeprom.c:598: i2c_delay();
      002B8A 12 2F A6         [24] 2639 	lcall	_i2c_delay
                                   2640 ;	8051_i2c_eeprom.c:599: SDA = 1;
                                   2641 ;	assignBit
      002B8D D2 94            [12] 2642 	setb	_P1_4
                                   2643 ;	8051_i2c_eeprom.c:600: i2c_delay();
      002B8F 12 2F A6         [24] 2644 	lcall	_i2c_delay
                                   2645 ;	8051_i2c_eeprom.c:601: SCL = 1;
                                   2646 ;	assignBit
      002B92 D2 93            [12] 2647 	setb	_P1_3
                                   2648 ;	8051_i2c_eeprom.c:602: i2c_delay();
      002B94 12 2F A6         [24] 2649 	lcall	_i2c_delay
                                   2650 ;	8051_i2c_eeprom.c:603: SDA = 0;
                                   2651 ;	assignBit
      002B97 C2 94            [12] 2652 	clr	_P1_4
                                   2653 ;	8051_i2c_eeprom.c:604: i2c_delay();
      002B99 12 2F A6         [24] 2654 	lcall	_i2c_delay
                                   2655 ;	8051_i2c_eeprom.c:605: SCL = 0;
                                   2656 ;	assignBit
      002B9C C2 93            [12] 2657 	clr	_P1_3
                                   2658 ;	8051_i2c_eeprom.c:606: }
      002B9E 22               [24] 2659 	ret
                                   2660 ;------------------------------------------------------------
                                   2661 ;Allocation info for local variables in function 'EEPROM_hexdump'
                                   2662 ;------------------------------------------------------------
                                   2663 ;end_address               Allocated with name '_EEPROM_hexdump_PARM_2'
                                   2664 ;start_address             Allocated with name '_EEPROM_hexdump_start_address_65536_131'
                                   2665 ;num_bytes                 Allocated with name '_EEPROM_hexdump_num_bytes_65537_133'
                                   2666 ;current_address           Allocated with name '_EEPROM_hexdump_current_address_65537_133'
                                   2667 ;i                         Allocated with name '_EEPROM_hexdump_i_196609_135'
                                   2668 ;data                      Allocated with name '_EEPROM_hexdump_data_327682_141'
                                   2669 ;i                         Allocated with name '_EEPROM_hexdump_i_196609_143'
                                   2670 ;data                      Allocated with name '_EEPROM_hexdump_data_327682_146'
                                   2671 ;------------------------------------------------------------
                                   2672 ;	8051_i2c_eeprom.c:615: int EEPROM_hexdump(uint16_t start_address, uint16_t end_address) {
                                   2673 ;	-----------------------------------------
                                   2674 ;	 function EEPROM_hexdump
                                   2675 ;	-----------------------------------------
      002B9F                       2676 _EEPROM_hexdump:
      002B9F AF 83            [24] 2677 	mov	r7,dph
      002BA1 E5 82            [12] 2678 	mov	a,dpl
      002BA3 90 04 1F         [24] 2679 	mov	dptr,#_EEPROM_hexdump_start_address_65536_131
      002BA6 F0               [24] 2680 	movx	@dptr,a
      002BA7 EF               [12] 2681 	mov	a,r7
      002BA8 A3               [24] 2682 	inc	dptr
      002BA9 F0               [24] 2683 	movx	@dptr,a
                                   2684 ;	8051_i2c_eeprom.c:617: printf("\r\n----------------------------------------------------------------\r\n");
      002BAA 74 6C            [12] 2685 	mov	a,#___str_47
      002BAC C0 E0            [24] 2686 	push	acc
      002BAE 74 48            [12] 2687 	mov	a,#(___str_47 >> 8)
      002BB0 C0 E0            [24] 2688 	push	acc
      002BB2 74 80            [12] 2689 	mov	a,#0x80
      002BB4 C0 E0            [24] 2690 	push	acc
      002BB6 12 30 C3         [24] 2691 	lcall	_printf
      002BB9 15 81            [12] 2692 	dec	sp
      002BBB 15 81            [12] 2693 	dec	sp
      002BBD 15 81            [12] 2694 	dec	sp
                                   2695 ;	8051_i2c_eeprom.c:618: printf("                    EEPROM Hex Dump                               \r\n");
      002BBF 74 B1            [12] 2696 	mov	a,#___str_48
      002BC1 C0 E0            [24] 2697 	push	acc
      002BC3 74 48            [12] 2698 	mov	a,#(___str_48 >> 8)
      002BC5 C0 E0            [24] 2699 	push	acc
      002BC7 74 80            [12] 2700 	mov	a,#0x80
      002BC9 C0 E0            [24] 2701 	push	acc
      002BCB 12 30 C3         [24] 2702 	lcall	_printf
      002BCE 15 81            [12] 2703 	dec	sp
      002BD0 15 81            [12] 2704 	dec	sp
      002BD2 15 81            [12] 2705 	dec	sp
                                   2706 ;	8051_i2c_eeprom.c:619: printf("----------------------------------------------------------------\r\n");
      002BD4 74 F6            [12] 2707 	mov	a,#___str_49
      002BD6 C0 E0            [24] 2708 	push	acc
      002BD8 74 48            [12] 2709 	mov	a,#(___str_49 >> 8)
      002BDA C0 E0            [24] 2710 	push	acc
      002BDC 74 80            [12] 2711 	mov	a,#0x80
      002BDE C0 E0            [24] 2712 	push	acc
      002BE0 12 30 C3         [24] 2713 	lcall	_printf
      002BE3 15 81            [12] 2714 	dec	sp
      002BE5 15 81            [12] 2715 	dec	sp
      002BE7 15 81            [12] 2716 	dec	sp
                                   2717 ;	8051_i2c_eeprom.c:620: printf("     0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F\r\n");
      002BE9 74 39            [12] 2718 	mov	a,#___str_50
      002BEB C0 E0            [24] 2719 	push	acc
      002BED 74 49            [12] 2720 	mov	a,#(___str_50 >> 8)
      002BEF C0 E0            [24] 2721 	push	acc
      002BF1 74 80            [12] 2722 	mov	a,#0x80
      002BF3 C0 E0            [24] 2723 	push	acc
      002BF5 12 30 C3         [24] 2724 	lcall	_printf
      002BF8 15 81            [12] 2725 	dec	sp
      002BFA 15 81            [12] 2726 	dec	sp
      002BFC 15 81            [12] 2727 	dec	sp
                                   2728 ;	8051_i2c_eeprom.c:624: uint16_t current_address = start_address;
      002BFE 90 04 1F         [24] 2729 	mov	dptr,#_EEPROM_hexdump_start_address_65536_131
      002C01 E0               [24] 2730 	movx	a,@dptr
      002C02 FE               [12] 2731 	mov	r6,a
      002C03 A3               [24] 2732 	inc	dptr
      002C04 E0               [24] 2733 	movx	a,@dptr
      002C05 FF               [12] 2734 	mov	r7,a
      002C06 90 04 21         [24] 2735 	mov	dptr,#_EEPROM_hexdump_current_address_65537_133
      002C09 EE               [12] 2736 	mov	a,r6
      002C0A F0               [24] 2737 	movx	@dptr,a
      002C0B EF               [12] 2738 	mov	a,r7
      002C0C A3               [24] 2739 	inc	dptr
      002C0D F0               [24] 2740 	movx	@dptr,a
                                   2741 ;	8051_i2c_eeprom.c:627: while (current_address <= end_address) {
      002C0E 90 04 1D         [24] 2742 	mov	dptr,#_EEPROM_hexdump_PARM_2
      002C11 E0               [24] 2743 	movx	a,@dptr
      002C12 FE               [12] 2744 	mov	r6,a
      002C13 A3               [24] 2745 	inc	dptr
      002C14 E0               [24] 2746 	movx	a,@dptr
      002C15 FF               [12] 2747 	mov	r7,a
      002C16                       2748 00119$:
      002C16 90 04 21         [24] 2749 	mov	dptr,#_EEPROM_hexdump_current_address_65537_133
      002C19 E0               [24] 2750 	movx	a,@dptr
      002C1A FC               [12] 2751 	mov	r4,a
      002C1B A3               [24] 2752 	inc	dptr
      002C1C E0               [24] 2753 	movx	a,@dptr
      002C1D FD               [12] 2754 	mov	r5,a
      002C1E C3               [12] 2755 	clr	c
      002C1F EE               [12] 2756 	mov	a,r6
      002C20 9C               [12] 2757 	subb	a,r4
      002C21 EF               [12] 2758 	mov	a,r7
      002C22 9D               [12] 2759 	subb	a,r5
      002C23 50 03            [24] 2760 	jnc	00183$
      002C25 02 2E B5         [24] 2761 	ljmp	00121$
      002C28                       2762 00183$:
                                   2763 ;	8051_i2c_eeprom.c:629: printf("%03X: ", current_address & 0xFFF0);
      002C28 53 04 F0         [24] 2764 	anl	ar4,#0xf0
      002C2B C0 07            [24] 2765 	push	ar7
      002C2D C0 06            [24] 2766 	push	ar6
      002C2F C0 04            [24] 2767 	push	ar4
      002C31 C0 05            [24] 2768 	push	ar5
      002C33 74 6F            [12] 2769 	mov	a,#___str_51
      002C35 C0 E0            [24] 2770 	push	acc
      002C37 74 49            [12] 2771 	mov	a,#(___str_51 >> 8)
      002C39 C0 E0            [24] 2772 	push	acc
      002C3B 74 80            [12] 2773 	mov	a,#0x80
      002C3D C0 E0            [24] 2774 	push	acc
      002C3F 12 30 C3         [24] 2775 	lcall	_printf
      002C42 E5 81            [12] 2776 	mov	a,sp
      002C44 24 FB            [12] 2777 	add	a,#0xfb
      002C46 F5 81            [12] 2778 	mov	sp,a
      002C48 D0 06            [24] 2779 	pop	ar6
      002C4A D0 07            [24] 2780 	pop	ar7
                                   2781 ;	8051_i2c_eeprom.c:632: for (uint8_t i = 0; i < 16; i++) {
      002C4C 7D 00            [12] 2782 	mov	r5,#0x00
      002C4E                       2783 00123$:
      002C4E BD 10 00         [24] 2784 	cjne	r5,#0x10,00184$
      002C51                       2785 00184$:
      002C51 40 03            [24] 2786 	jc	00185$
      002C53 02 2D 8A         [24] 2787 	ljmp	00110$
      002C56                       2788 00185$:
                                   2789 ;	8051_i2c_eeprom.c:633: if (current_address + i <= end_address) {
      002C56 8D 03            [24] 2790 	mov	ar3,r5
      002C58 7C 00            [12] 2791 	mov	r4,#0x00
      002C5A 90 04 21         [24] 2792 	mov	dptr,#_EEPROM_hexdump_current_address_65537_133
      002C5D E0               [24] 2793 	movx	a,@dptr
      002C5E F9               [12] 2794 	mov	r1,a
      002C5F A3               [24] 2795 	inc	dptr
      002C60 E0               [24] 2796 	movx	a,@dptr
      002C61 FA               [12] 2797 	mov	r2,a
      002C62 C0 05            [24] 2798 	push	ar5
      002C64 89 00            [24] 2799 	mov	ar0,r1
      002C66 8A 05            [24] 2800 	mov	ar5,r2
      002C68 EB               [12] 2801 	mov	a,r3
      002C69 28               [12] 2802 	add	a,r0
      002C6A F8               [12] 2803 	mov	r0,a
      002C6B EC               [12] 2804 	mov	a,r4
      002C6C 3D               [12] 2805 	addc	a,r5
      002C6D FD               [12] 2806 	mov	r5,a
      002C6E C3               [12] 2807 	clr	c
      002C6F EE               [12] 2808 	mov	a,r6
      002C70 98               [12] 2809 	subb	a,r0
      002C71 EF               [12] 2810 	mov	a,r7
      002C72 9D               [12] 2811 	subb	a,r5
      002C73 D0 05            [24] 2812 	pop	ar5
      002C75 50 03            [24] 2813 	jnc	00186$
      002C77 02 2D 65         [24] 2814 	ljmp	00108$
      002C7A                       2815 00186$:
                                   2816 ;	8051_i2c_eeprom.c:635: i2c_start();
      002C7A C0 07            [24] 2817 	push	ar7
      002C7C C0 06            [24] 2818 	push	ar6
      002C7E C0 05            [24] 2819 	push	ar5
      002C80 C0 02            [24] 2820 	push	ar2
      002C82 C0 01            [24] 2821 	push	ar1
      002C84 12 2B 8A         [24] 2822 	lcall	_i2c_start
                                   2823 ;	8051_i2c_eeprom.c:638: if (!i2c_write(EEPROM_ID | WRITE)) {
      002C87 75 82 A0         [24] 2824 	mov	dpl,#0xa0
      002C8A 12 2A 9D         [24] 2825 	lcall	_i2c_write
      002C8D E5 82            [12] 2826 	mov	a,dpl
      002C8F 85 83 F0         [24] 2827 	mov	b,dph
      002C92 D0 01            [24] 2828 	pop	ar1
      002C94 D0 02            [24] 2829 	pop	ar2
      002C96 D0 05            [24] 2830 	pop	ar5
      002C98 D0 06            [24] 2831 	pop	ar6
      002C9A D0 07            [24] 2832 	pop	ar7
      002C9C 45 F0            [12] 2833 	orl	a,b
      002C9E 70 1C            [24] 2834 	jnz	00102$
                                   2835 ;	8051_i2c_eeprom.c:639: printf("Error: Device not responding\r\n");
      002CA0 74 76            [12] 2836 	mov	a,#___str_52
      002CA2 C0 E0            [24] 2837 	push	acc
      002CA4 74 49            [12] 2838 	mov	a,#(___str_52 >> 8)
      002CA6 C0 E0            [24] 2839 	push	acc
      002CA8 74 80            [12] 2840 	mov	a,#0x80
      002CAA C0 E0            [24] 2841 	push	acc
      002CAC 12 30 C3         [24] 2842 	lcall	_printf
      002CAF 15 81            [12] 2843 	dec	sp
      002CB1 15 81            [12] 2844 	dec	sp
      002CB3 15 81            [12] 2845 	dec	sp
                                   2846 ;	8051_i2c_eeprom.c:640: i2c_stop();
      002CB5 12 2F 6D         [24] 2847 	lcall	_i2c_stop
                                   2848 ;	8051_i2c_eeprom.c:641: return 0;
      002CB8 90 00 00         [24] 2849 	mov	dptr,#0x0000
      002CBB 22               [24] 2850 	ret
      002CBC                       2851 00102$:
                                   2852 ;	8051_i2c_eeprom.c:645: if (!i2c_write((unsigned char)(current_address + i))) {
      002CBC ED               [12] 2853 	mov	a,r5
      002CBD 29               [12] 2854 	add	a,r1
      002CBE F5 82            [12] 2855 	mov	dpl,a
      002CC0 C0 07            [24] 2856 	push	ar7
      002CC2 C0 06            [24] 2857 	push	ar6
      002CC4 C0 05            [24] 2858 	push	ar5
      002CC6 12 2A 9D         [24] 2859 	lcall	_i2c_write
      002CC9 E5 82            [12] 2860 	mov	a,dpl
      002CCB 85 83 F0         [24] 2861 	mov	b,dph
      002CCE D0 05            [24] 2862 	pop	ar5
      002CD0 D0 06            [24] 2863 	pop	ar6
      002CD2 D0 07            [24] 2864 	pop	ar7
      002CD4 45 F0            [12] 2865 	orl	a,b
      002CD6 70 1C            [24] 2866 	jnz	00104$
                                   2867 ;	8051_i2c_eeprom.c:646: printf("Error: Address write failed\r\n");
      002CD8 74 95            [12] 2868 	mov	a,#___str_53
      002CDA C0 E0            [24] 2869 	push	acc
      002CDC 74 49            [12] 2870 	mov	a,#(___str_53 >> 8)
      002CDE C0 E0            [24] 2871 	push	acc
      002CE0 74 80            [12] 2872 	mov	a,#0x80
      002CE2 C0 E0            [24] 2873 	push	acc
      002CE4 12 30 C3         [24] 2874 	lcall	_printf
      002CE7 15 81            [12] 2875 	dec	sp
      002CE9 15 81            [12] 2876 	dec	sp
      002CEB 15 81            [12] 2877 	dec	sp
                                   2878 ;	8051_i2c_eeprom.c:647: i2c_stop();
      002CED 12 2F 6D         [24] 2879 	lcall	_i2c_stop
                                   2880 ;	8051_i2c_eeprom.c:648: return 0;
      002CF0 90 00 00         [24] 2881 	mov	dptr,#0x0000
      002CF3 22               [24] 2882 	ret
      002CF4                       2883 00104$:
                                   2884 ;	8051_i2c_eeprom.c:652: i2c_start();
      002CF4 C0 07            [24] 2885 	push	ar7
      002CF6 C0 06            [24] 2886 	push	ar6
      002CF8 C0 05            [24] 2887 	push	ar5
      002CFA 12 2B 8A         [24] 2888 	lcall	_i2c_start
                                   2889 ;	8051_i2c_eeprom.c:655: if (!i2c_write(EEPROM_ID | READ)) {
      002CFD 75 82 A1         [24] 2890 	mov	dpl,#0xa1
      002D00 12 2A 9D         [24] 2891 	lcall	_i2c_write
      002D03 E5 82            [12] 2892 	mov	a,dpl
      002D05 85 83 F0         [24] 2893 	mov	b,dph
      002D08 D0 05            [24] 2894 	pop	ar5
      002D0A D0 06            [24] 2895 	pop	ar6
      002D0C D0 07            [24] 2896 	pop	ar7
      002D0E 45 F0            [12] 2897 	orl	a,b
      002D10 70 1C            [24] 2898 	jnz	00106$
                                   2899 ;	8051_i2c_eeprom.c:656: printf("Error: Device not responding in read mode\r\n");
      002D12 74 B3            [12] 2900 	mov	a,#___str_54
      002D14 C0 E0            [24] 2901 	push	acc
      002D16 74 49            [12] 2902 	mov	a,#(___str_54 >> 8)
      002D18 C0 E0            [24] 2903 	push	acc
      002D1A 74 80            [12] 2904 	mov	a,#0x80
      002D1C C0 E0            [24] 2905 	push	acc
      002D1E 12 30 C3         [24] 2906 	lcall	_printf
      002D21 15 81            [12] 2907 	dec	sp
      002D23 15 81            [12] 2908 	dec	sp
      002D25 15 81            [12] 2909 	dec	sp
                                   2910 ;	8051_i2c_eeprom.c:657: i2c_stop();
      002D27 12 2F 6D         [24] 2911 	lcall	_i2c_stop
                                   2912 ;	8051_i2c_eeprom.c:658: return 0;
      002D2A 90 00 00         [24] 2913 	mov	dptr,#0x0000
      002D2D 22               [24] 2914 	ret
      002D2E                       2915 00106$:
                                   2916 ;	8051_i2c_eeprom.c:662: unsigned char data = i2c_read(0);
      002D2E 90 00 00         [24] 2917 	mov	dptr,#0x0000
      002D31 C0 07            [24] 2918 	push	ar7
      002D33 C0 06            [24] 2919 	push	ar6
      002D35 C0 05            [24] 2920 	push	ar5
      002D37 12 2B 05         [24] 2921 	lcall	_i2c_read
      002D3A AB 82            [24] 2922 	mov	r3,dpl
                                   2923 ;	8051_i2c_eeprom.c:663: printf("%02X ", data);
      002D3C 7C 00            [12] 2924 	mov	r4,#0x00
      002D3E C0 03            [24] 2925 	push	ar3
      002D40 C0 04            [24] 2926 	push	ar4
      002D42 74 DF            [12] 2927 	mov	a,#___str_55
      002D44 C0 E0            [24] 2928 	push	acc
      002D46 74 49            [12] 2929 	mov	a,#(___str_55 >> 8)
      002D48 C0 E0            [24] 2930 	push	acc
      002D4A 74 80            [12] 2931 	mov	a,#0x80
      002D4C C0 E0            [24] 2932 	push	acc
      002D4E 12 30 C3         [24] 2933 	lcall	_printf
      002D51 E5 81            [12] 2934 	mov	a,sp
      002D53 24 FB            [12] 2935 	add	a,#0xfb
      002D55 F5 81            [12] 2936 	mov	sp,a
                                   2937 ;	8051_i2c_eeprom.c:665: i2c_stop();
      002D57 12 2F 6D         [24] 2938 	lcall	_i2c_stop
                                   2939 ;	8051_i2c_eeprom.c:666: i2c_delay(); // Small delay between reads
      002D5A 12 2F A6         [24] 2940 	lcall	_i2c_delay
      002D5D D0 05            [24] 2941 	pop	ar5
      002D5F D0 06            [24] 2942 	pop	ar6
      002D61 D0 07            [24] 2943 	pop	ar7
      002D63 80 21            [24] 2944 	sjmp	00124$
      002D65                       2945 00108$:
                                   2946 ;	8051_i2c_eeprom.c:668: printf("   "); // Print spaces for addresses beyond end_address
      002D65 C0 07            [24] 2947 	push	ar7
      002D67 C0 06            [24] 2948 	push	ar6
      002D69 C0 05            [24] 2949 	push	ar5
      002D6B 74 E5            [12] 2950 	mov	a,#___str_56
      002D6D C0 E0            [24] 2951 	push	acc
      002D6F 74 49            [12] 2952 	mov	a,#(___str_56 >> 8)
      002D71 C0 E0            [24] 2953 	push	acc
      002D73 74 80            [12] 2954 	mov	a,#0x80
      002D75 C0 E0            [24] 2955 	push	acc
      002D77 12 30 C3         [24] 2956 	lcall	_printf
      002D7A 15 81            [12] 2957 	dec	sp
      002D7C 15 81            [12] 2958 	dec	sp
      002D7E 15 81            [12] 2959 	dec	sp
      002D80 D0 05            [24] 2960 	pop	ar5
      002D82 D0 06            [24] 2961 	pop	ar6
      002D84 D0 07            [24] 2962 	pop	ar7
      002D86                       2963 00124$:
                                   2964 ;	8051_i2c_eeprom.c:632: for (uint8_t i = 0; i < 16; i++) {
      002D86 0D               [12] 2965 	inc	r5
      002D87 02 2C 4E         [24] 2966 	ljmp	00123$
      002D8A                       2967 00110$:
                                   2968 ;	8051_i2c_eeprom.c:673: printf(" | ");
      002D8A C0 07            [24] 2969 	push	ar7
      002D8C C0 06            [24] 2970 	push	ar6
      002D8E 74 E9            [12] 2971 	mov	a,#___str_57
      002D90 C0 E0            [24] 2972 	push	acc
      002D92 74 49            [12] 2973 	mov	a,#(___str_57 >> 8)
      002D94 C0 E0            [24] 2974 	push	acc
      002D96 74 80            [12] 2975 	mov	a,#0x80
      002D98 C0 E0            [24] 2976 	push	acc
      002D9A 12 30 C3         [24] 2977 	lcall	_printf
      002D9D 15 81            [12] 2978 	dec	sp
      002D9F 15 81            [12] 2979 	dec	sp
      002DA1 15 81            [12] 2980 	dec	sp
      002DA3 D0 06            [24] 2981 	pop	ar6
      002DA5 D0 07            [24] 2982 	pop	ar7
                                   2983 ;	8051_i2c_eeprom.c:674: for (uint8_t i = 0; i < 16; i++) {
      002DA7 90 04 21         [24] 2984 	mov	dptr,#_EEPROM_hexdump_current_address_65537_133
      002DAA E0               [24] 2985 	movx	a,@dptr
      002DAB FC               [12] 2986 	mov	r4,a
      002DAC A3               [24] 2987 	inc	dptr
      002DAD E0               [24] 2988 	movx	a,@dptr
      002DAE FD               [12] 2989 	mov	r5,a
      002DAF 7B 00            [12] 2990 	mov	r3,#0x00
      002DB1                       2991 00126$:
      002DB1 BB 10 00         [24] 2992 	cjne	r3,#0x10,00190$
      002DB4                       2993 00190$:
      002DB4 40 03            [24] 2994 	jc	00191$
      002DB6 02 2E 7E         [24] 2995 	ljmp	00118$
      002DB9                       2996 00191$:
                                   2997 ;	8051_i2c_eeprom.c:675: if (current_address + i <= end_address) {
      002DB9 8B 01            [24] 2998 	mov	ar1,r3
      002DBB 7A 00            [12] 2999 	mov	r2,#0x00
      002DBD C0 03            [24] 3000 	push	ar3
      002DBF 8C 00            [24] 3001 	mov	ar0,r4
      002DC1 8D 03            [24] 3002 	mov	ar3,r5
      002DC3 E9               [12] 3003 	mov	a,r1
      002DC4 28               [12] 3004 	add	a,r0
      002DC5 F8               [12] 3005 	mov	r0,a
      002DC6 EA               [12] 3006 	mov	a,r2
      002DC7 3B               [12] 3007 	addc	a,r3
      002DC8 FB               [12] 3008 	mov	r3,a
      002DC9 C3               [12] 3009 	clr	c
      002DCA EE               [12] 3010 	mov	a,r6
      002DCB 98               [12] 3011 	subb	a,r0
      002DCC EF               [12] 3012 	mov	a,r7
      002DCD 9B               [12] 3013 	subb	a,r3
      002DCE D0 03            [24] 3014 	pop	ar3
      002DD0 50 03            [24] 3015 	jnc	00192$
      002DD2 02 2E 60         [24] 3016 	ljmp	00116$
      002DD5                       3017 00192$:
                                   3018 ;	8051_i2c_eeprom.c:677: i2c_start();
      002DD5 C0 07            [24] 3019 	push	ar7
      002DD7 C0 06            [24] 3020 	push	ar6
      002DD9 C0 05            [24] 3021 	push	ar5
      002DDB C0 04            [24] 3022 	push	ar4
      002DDD C0 03            [24] 3023 	push	ar3
      002DDF 12 2B 8A         [24] 3024 	lcall	_i2c_start
                                   3025 ;	8051_i2c_eeprom.c:678: i2c_write(EEPROM_ID | WRITE);
      002DE2 75 82 A0         [24] 3026 	mov	dpl,#0xa0
      002DE5 12 2A 9D         [24] 3027 	lcall	_i2c_write
      002DE8 D0 03            [24] 3028 	pop	ar3
      002DEA D0 04            [24] 3029 	pop	ar4
                                   3030 ;	8051_i2c_eeprom.c:679: i2c_write((unsigned char)(current_address + i));
      002DEC 8C 02            [24] 3031 	mov	ar2,r4
      002DEE EB               [12] 3032 	mov	a,r3
      002DEF 2A               [12] 3033 	add	a,r2
      002DF0 F5 82            [12] 3034 	mov	dpl,a
      002DF2 C0 04            [24] 3035 	push	ar4
      002DF4 C0 03            [24] 3036 	push	ar3
      002DF6 12 2A 9D         [24] 3037 	lcall	_i2c_write
                                   3038 ;	8051_i2c_eeprom.c:680: i2c_start();
      002DF9 12 2B 8A         [24] 3039 	lcall	_i2c_start
                                   3040 ;	8051_i2c_eeprom.c:681: i2c_write(EEPROM_ID | READ);
      002DFC 75 82 A1         [24] 3041 	mov	dpl,#0xa1
      002DFF 12 2A 9D         [24] 3042 	lcall	_i2c_write
                                   3043 ;	8051_i2c_eeprom.c:682: unsigned char data = i2c_read(0);
      002E02 90 00 00         [24] 3044 	mov	dptr,#0x0000
      002E05 12 2B 05         [24] 3045 	lcall	_i2c_read
      002E08 A9 82            [24] 3046 	mov	r1,dpl
                                   3047 ;	8051_i2c_eeprom.c:683: i2c_stop();
      002E0A C0 01            [24] 3048 	push	ar1
      002E0C 12 2F 6D         [24] 3049 	lcall	_i2c_stop
      002E0F D0 01            [24] 3050 	pop	ar1
      002E11 D0 03            [24] 3051 	pop	ar3
      002E13 D0 04            [24] 3052 	pop	ar4
      002E15 D0 05            [24] 3053 	pop	ar5
      002E17 D0 06            [24] 3054 	pop	ar6
      002E19 D0 07            [24] 3055 	pop	ar7
                                   3056 ;	8051_i2c_eeprom.c:686: if (data >= 32 && data <= 126) {
      002E1B B9 20 00         [24] 3057 	cjne	r1,#0x20,00193$
      002E1E                       3058 00193$:
      002E1E 40 24            [24] 3059 	jc	00112$
      002E20 E9               [12] 3060 	mov	a,r1
      002E21 24 81            [12] 3061 	add	a,#0xff - 0x7e
      002E23 40 1F            [24] 3062 	jc	00112$
                                   3063 ;	8051_i2c_eeprom.c:687: putchar(data);
      002E25 7A 00            [12] 3064 	mov	r2,#0x00
      002E27 89 82            [24] 3065 	mov	dpl,r1
      002E29 8A 83            [24] 3066 	mov	dph,r2
      002E2B C0 07            [24] 3067 	push	ar7
      002E2D C0 06            [24] 3068 	push	ar6
      002E2F C0 05            [24] 3069 	push	ar5
      002E31 C0 04            [24] 3070 	push	ar4
      002E33 C0 03            [24] 3071 	push	ar3
      002E35 12 20 65         [24] 3072 	lcall	_putchar
      002E38 D0 03            [24] 3073 	pop	ar3
      002E3A D0 04            [24] 3074 	pop	ar4
      002E3C D0 05            [24] 3075 	pop	ar5
      002E3E D0 06            [24] 3076 	pop	ar6
      002E40 D0 07            [24] 3077 	pop	ar7
      002E42 80 36            [24] 3078 	sjmp	00127$
      002E44                       3079 00112$:
                                   3080 ;	8051_i2c_eeprom.c:689: putchar('.');
      002E44 90 00 2E         [24] 3081 	mov	dptr,#0x002e
      002E47 C0 07            [24] 3082 	push	ar7
      002E49 C0 06            [24] 3083 	push	ar6
      002E4B C0 05            [24] 3084 	push	ar5
      002E4D C0 04            [24] 3085 	push	ar4
      002E4F C0 03            [24] 3086 	push	ar3
      002E51 12 20 65         [24] 3087 	lcall	_putchar
      002E54 D0 03            [24] 3088 	pop	ar3
      002E56 D0 04            [24] 3089 	pop	ar4
      002E58 D0 05            [24] 3090 	pop	ar5
      002E5A D0 06            [24] 3091 	pop	ar6
      002E5C D0 07            [24] 3092 	pop	ar7
      002E5E 80 1A            [24] 3093 	sjmp	00127$
      002E60                       3094 00116$:
                                   3095 ;	8051_i2c_eeprom.c:692: putchar(' ');
      002E60 90 00 20         [24] 3096 	mov	dptr,#0x0020
      002E63 C0 07            [24] 3097 	push	ar7
      002E65 C0 06            [24] 3098 	push	ar6
      002E67 C0 05            [24] 3099 	push	ar5
      002E69 C0 04            [24] 3100 	push	ar4
      002E6B C0 03            [24] 3101 	push	ar3
      002E6D 12 20 65         [24] 3102 	lcall	_putchar
      002E70 D0 03            [24] 3103 	pop	ar3
      002E72 D0 04            [24] 3104 	pop	ar4
      002E74 D0 05            [24] 3105 	pop	ar5
      002E76 D0 06            [24] 3106 	pop	ar6
      002E78 D0 07            [24] 3107 	pop	ar7
      002E7A                       3108 00127$:
                                   3109 ;	8051_i2c_eeprom.c:674: for (uint8_t i = 0; i < 16; i++) {
      002E7A 0B               [12] 3110 	inc	r3
      002E7B 02 2D B1         [24] 3111 	ljmp	00126$
      002E7E                       3112 00118$:
                                   3113 ;	8051_i2c_eeprom.c:696: printf("\r\n");
      002E7E C0 07            [24] 3114 	push	ar7
      002E80 C0 06            [24] 3115 	push	ar6
      002E82 74 ED            [12] 3116 	mov	a,#___str_58
      002E84 C0 E0            [24] 3117 	push	acc
      002E86 74 49            [12] 3118 	mov	a,#(___str_58 >> 8)
      002E88 C0 E0            [24] 3119 	push	acc
      002E8A 74 80            [12] 3120 	mov	a,#0x80
      002E8C C0 E0            [24] 3121 	push	acc
      002E8E 12 30 C3         [24] 3122 	lcall	_printf
      002E91 15 81            [12] 3123 	dec	sp
      002E93 15 81            [12] 3124 	dec	sp
      002E95 15 81            [12] 3125 	dec	sp
      002E97 D0 06            [24] 3126 	pop	ar6
      002E99 D0 07            [24] 3127 	pop	ar7
                                   3128 ;	8051_i2c_eeprom.c:697: current_address += 16;
      002E9B 90 04 21         [24] 3129 	mov	dptr,#_EEPROM_hexdump_current_address_65537_133
      002E9E E0               [24] 3130 	movx	a,@dptr
      002E9F FC               [12] 3131 	mov	r4,a
      002EA0 A3               [24] 3132 	inc	dptr
      002EA1 E0               [24] 3133 	movx	a,@dptr
      002EA2 FD               [12] 3134 	mov	r5,a
      002EA3 74 10            [12] 3135 	mov	a,#0x10
      002EA5 2C               [12] 3136 	add	a,r4
      002EA6 FC               [12] 3137 	mov	r4,a
      002EA7 E4               [12] 3138 	clr	a
      002EA8 3D               [12] 3139 	addc	a,r5
      002EA9 FD               [12] 3140 	mov	r5,a
      002EAA 90 04 21         [24] 3141 	mov	dptr,#_EEPROM_hexdump_current_address_65537_133
      002EAD EC               [12] 3142 	mov	a,r4
      002EAE F0               [24] 3143 	movx	@dptr,a
      002EAF ED               [12] 3144 	mov	a,r5
      002EB0 A3               [24] 3145 	inc	dptr
      002EB1 F0               [24] 3146 	movx	@dptr,a
      002EB2 02 2C 16         [24] 3147 	ljmp	00119$
      002EB5                       3148 00121$:
                                   3149 ;	8051_i2c_eeprom.c:700: printf("----------------------------------------------------------------\r\n");
      002EB5 74 F6            [12] 3150 	mov	a,#___str_49
      002EB7 C0 E0            [24] 3151 	push	acc
      002EB9 74 48            [12] 3152 	mov	a,#(___str_49 >> 8)
      002EBB C0 E0            [24] 3153 	push	acc
      002EBD 74 80            [12] 3154 	mov	a,#0x80
      002EBF C0 E0            [24] 3155 	push	acc
      002EC1 12 30 C3         [24] 3156 	lcall	_printf
      002EC4 15 81            [12] 3157 	dec	sp
      002EC6 15 81            [12] 3158 	dec	sp
      002EC8 15 81            [12] 3159 	dec	sp
                                   3160 ;	8051_i2c_eeprom.c:701: return 1;
      002ECA 90 00 01         [24] 3161 	mov	dptr,#0x0001
                                   3162 ;	8051_i2c_eeprom.c:702: }
      002ECD 22               [24] 3163 	ret
                                   3164 ;------------------------------------------------------------
                                   3165 ;Allocation info for local variables in function 'handler_EEPROM_hexdump'
                                   3166 ;------------------------------------------------------------
                                   3167 ;start_addr                Allocated with name '_handler_EEPROM_hexdump_start_addr_65537_152'
                                   3168 ;end_addr                  Allocated with name '_handler_EEPROM_hexdump_end_addr_65538_154'
                                   3169 ;------------------------------------------------------------
                                   3170 ;	8051_i2c_eeprom.c:705: void handler_EEPROM_hexdump(void) {
                                   3171 ;	-----------------------------------------
                                   3172 ;	 function handler_EEPROM_hexdump
                                   3173 ;	-----------------------------------------
      002ECE                       3174 _handler_EEPROM_hexdump:
                                   3175 ;	8051_i2c_eeprom.c:706: printf("\nEnter Start Address for HEX Dump (000-7FF):\r\n");
      002ECE 74 F0            [12] 3176 	mov	a,#___str_59
      002ED0 C0 E0            [24] 3177 	push	acc
      002ED2 74 49            [12] 3178 	mov	a,#(___str_59 >> 8)
      002ED4 C0 E0            [24] 3179 	push	acc
      002ED6 74 80            [12] 3180 	mov	a,#0x80
      002ED8 C0 E0            [24] 3181 	push	acc
      002EDA 12 30 C3         [24] 3182 	lcall	_printf
      002EDD 15 81            [12] 3183 	dec	sp
      002EDF 15 81            [12] 3184 	dec	sp
      002EE1 15 81            [12] 3185 	dec	sp
                                   3186 ;	8051_i2c_eeprom.c:707: uint16_t start_addr = take_address();
      002EE3 12 24 90         [24] 3187 	lcall	_take_address
      002EE6 AE 82            [24] 3188 	mov	r6,dpl
      002EE8 AF 83            [24] 3189 	mov	r7,dph
                                   3190 ;	8051_i2c_eeprom.c:709: if (start_addr > ADDR_MAX) {
      002EEA 8E 04            [24] 3191 	mov	ar4,r6
      002EEC 8F 05            [24] 3192 	mov	ar5,r7
      002EEE C3               [12] 3193 	clr	c
      002EEF 74 FF            [12] 3194 	mov	a,#0xff
      002EF1 9C               [12] 3195 	subb	a,r4
      002EF2 74 07            [12] 3196 	mov	a,#0x07
      002EF4 9D               [12] 3197 	subb	a,r5
      002EF5 50 16            [24] 3198 	jnc	00102$
                                   3199 ;	8051_i2c_eeprom.c:710: printf("Invalid Start Address! Must be between 0x000 and 0x7FF\r\n");
      002EF7 74 1F            [12] 3200 	mov	a,#___str_60
      002EF9 C0 E0            [24] 3201 	push	acc
      002EFB 74 4A            [12] 3202 	mov	a,#(___str_60 >> 8)
      002EFD C0 E0            [24] 3203 	push	acc
      002EFF 74 80            [12] 3204 	mov	a,#0x80
      002F01 C0 E0            [24] 3205 	push	acc
      002F03 12 30 C3         [24] 3206 	lcall	_printf
      002F06 15 81            [12] 3207 	dec	sp
      002F08 15 81            [12] 3208 	dec	sp
      002F0A 15 81            [12] 3209 	dec	sp
                                   3210 ;	8051_i2c_eeprom.c:711: return;
      002F0C 22               [24] 3211 	ret
      002F0D                       3212 00102$:
                                   3213 ;	8051_i2c_eeprom.c:714: printf("\nEnter End Address for HEX Dump (000-7FF):\r\n");
      002F0D C0 07            [24] 3214 	push	ar7
      002F0F C0 06            [24] 3215 	push	ar6
      002F11 74 58            [12] 3216 	mov	a,#___str_61
      002F13 C0 E0            [24] 3217 	push	acc
      002F15 74 4A            [12] 3218 	mov	a,#(___str_61 >> 8)
      002F17 C0 E0            [24] 3219 	push	acc
      002F19 74 80            [12] 3220 	mov	a,#0x80
      002F1B C0 E0            [24] 3221 	push	acc
      002F1D 12 30 C3         [24] 3222 	lcall	_printf
      002F20 15 81            [12] 3223 	dec	sp
      002F22 15 81            [12] 3224 	dec	sp
      002F24 15 81            [12] 3225 	dec	sp
                                   3226 ;	8051_i2c_eeprom.c:715: uint16_t end_addr = take_address();
      002F26 12 24 90         [24] 3227 	lcall	_take_address
      002F29 AC 82            [24] 3228 	mov	r4,dpl
      002F2B AD 83            [24] 3229 	mov	r5,dph
      002F2D D0 06            [24] 3230 	pop	ar6
      002F2F D0 07            [24] 3231 	pop	ar7
                                   3232 ;	8051_i2c_eeprom.c:717: if (end_addr > ADDR_MAX || end_addr < start_addr) {
      002F31 8C 02            [24] 3233 	mov	ar2,r4
      002F33 8D 03            [24] 3234 	mov	ar3,r5
      002F35 C3               [12] 3235 	clr	c
      002F36 74 FF            [12] 3236 	mov	a,#0xff
      002F38 9A               [12] 3237 	subb	a,r2
      002F39 74 07            [12] 3238 	mov	a,#0x07
      002F3B 9B               [12] 3239 	subb	a,r3
      002F3C 40 06            [24] 3240 	jc	00103$
      002F3E EC               [12] 3241 	mov	a,r4
      002F3F 9E               [12] 3242 	subb	a,r6
      002F40 ED               [12] 3243 	mov	a,r5
      002F41 9F               [12] 3244 	subb	a,r7
      002F42 50 1A            [24] 3245 	jnc	00104$
      002F44                       3246 00103$:
                                   3247 ;	8051_i2c_eeprom.c:718: printf("Invalid End Address! Must be between 0x%03X and 0x7FF\r\n", start_addr);
      002F44 C0 06            [24] 3248 	push	ar6
      002F46 C0 07            [24] 3249 	push	ar7
      002F48 74 85            [12] 3250 	mov	a,#___str_62
      002F4A C0 E0            [24] 3251 	push	acc
      002F4C 74 4A            [12] 3252 	mov	a,#(___str_62 >> 8)
      002F4E C0 E0            [24] 3253 	push	acc
      002F50 74 80            [12] 3254 	mov	a,#0x80
      002F52 C0 E0            [24] 3255 	push	acc
      002F54 12 30 C3         [24] 3256 	lcall	_printf
      002F57 E5 81            [12] 3257 	mov	a,sp
      002F59 24 FB            [12] 3258 	add	a,#0xfb
      002F5B F5 81            [12] 3259 	mov	sp,a
                                   3260 ;	8051_i2c_eeprom.c:719: return;
      002F5D 22               [24] 3261 	ret
      002F5E                       3262 00104$:
                                   3263 ;	8051_i2c_eeprom.c:722: EEPROM_hexdump(start_addr, end_addr);
      002F5E 90 04 1D         [24] 3264 	mov	dptr,#_EEPROM_hexdump_PARM_2
      002F61 EC               [12] 3265 	mov	a,r4
      002F62 F0               [24] 3266 	movx	@dptr,a
      002F63 ED               [12] 3267 	mov	a,r5
      002F64 A3               [24] 3268 	inc	dptr
      002F65 F0               [24] 3269 	movx	@dptr,a
      002F66 8E 82            [24] 3270 	mov	dpl,r6
      002F68 8F 83            [24] 3271 	mov	dph,r7
                                   3272 ;	8051_i2c_eeprom.c:723: }
      002F6A 02 2B 9F         [24] 3273 	ljmp	_EEPROM_hexdump
                                   3274 ;------------------------------------------------------------
                                   3275 ;Allocation info for local variables in function 'i2c_stop'
                                   3276 ;------------------------------------------------------------
                                   3277 ;	8051_i2c_eeprom.c:855: void i2c_stop(void)
                                   3278 ;	-----------------------------------------
                                   3279 ;	 function i2c_stop
                                   3280 ;	-----------------------------------------
      002F6D                       3281 _i2c_stop:
                                   3282 ;	8051_i2c_eeprom.c:857: SDA = 0;
                                   3283 ;	assignBit
      002F6D C2 94            [12] 3284 	clr	_P1_4
                                   3285 ;	8051_i2c_eeprom.c:858: i2c_delay();
      002F6F 12 2F A6         [24] 3286 	lcall	_i2c_delay
                                   3287 ;	8051_i2c_eeprom.c:859: SCL = 1;
                                   3288 ;	assignBit
      002F72 D2 93            [12] 3289 	setb	_P1_3
                                   3290 ;	8051_i2c_eeprom.c:860: i2c_delay();
      002F74 12 2F A6         [24] 3291 	lcall	_i2c_delay
                                   3292 ;	8051_i2c_eeprom.c:861: SDA = 1; 
                                   3293 ;	assignBit
      002F77 D2 94            [12] 3294 	setb	_P1_4
                                   3295 ;	8051_i2c_eeprom.c:862: }
      002F79 22               [24] 3296 	ret
                                   3297 ;------------------------------------------------------------
                                   3298 ;Allocation info for local variables in function 'eeprom_reset'
                                   3299 ;------------------------------------------------------------
                                   3300 ;i                         Allocated with name '_eeprom_reset_i_131072_159'
                                   3301 ;------------------------------------------------------------
                                   3302 ;	8051_i2c_eeprom.c:872: void eeprom_reset()
                                   3303 ;	-----------------------------------------
                                   3304 ;	 function eeprom_reset
                                   3305 ;	-----------------------------------------
      002F7A                       3306 _eeprom_reset:
                                   3307 ;	8051_i2c_eeprom.c:874: i2c_start();
      002F7A 12 2B 8A         [24] 3308 	lcall	_i2c_start
                                   3309 ;	8051_i2c_eeprom.c:875: SDA = 0;
                                   3310 ;	assignBit
      002F7D C2 94            [12] 3311 	clr	_P1_4
                                   3312 ;	8051_i2c_eeprom.c:876: SDA = 1;
                                   3313 ;	assignBit
      002F7F D2 94            [12] 3314 	setb	_P1_4
                                   3315 ;	8051_i2c_eeprom.c:877: for(int i = 0; i<10; i++)
      002F81 7E 00            [12] 3316 	mov	r6,#0x00
      002F83 7F 00            [12] 3317 	mov	r7,#0x00
      002F85                       3318 00103$:
      002F85 C3               [12] 3319 	clr	c
      002F86 EE               [12] 3320 	mov	a,r6
      002F87 94 0A            [12] 3321 	subb	a,#0x0a
      002F89 EF               [12] 3322 	mov	a,r7
      002F8A 64 80            [12] 3323 	xrl	a,#0x80
      002F8C 94 80            [12] 3324 	subb	a,#0x80
      002F8E 50 0B            [24] 3325 	jnc	00101$
                                   3326 ;	8051_i2c_eeprom.c:879: SCL = 0;
                                   3327 ;	assignBit
      002F90 C2 93            [12] 3328 	clr	_P1_3
                                   3329 ;	8051_i2c_eeprom.c:880: SCL = 1;
                                   3330 ;	assignBit
      002F92 D2 93            [12] 3331 	setb	_P1_3
                                   3332 ;	8051_i2c_eeprom.c:877: for(int i = 0; i<10; i++)
      002F94 0E               [12] 3333 	inc	r6
      002F95 BE 00 ED         [24] 3334 	cjne	r6,#0x00,00103$
      002F98 0F               [12] 3335 	inc	r7
      002F99 80 EA            [24] 3336 	sjmp	00103$
      002F9B                       3337 00101$:
                                   3338 ;	8051_i2c_eeprom.c:882: i2c_start();
      002F9B 12 2B 8A         [24] 3339 	lcall	_i2c_start
                                   3340 ;	8051_i2c_eeprom.c:883: SDA = 0;
                                   3341 ;	assignBit
      002F9E C2 94            [12] 3342 	clr	_P1_4
                                   3343 ;	8051_i2c_eeprom.c:884: i2c_stop();
      002FA0 12 2F 6D         [24] 3344 	lcall	_i2c_stop
                                   3345 ;	8051_i2c_eeprom.c:885: SDA = 1;
                                   3346 ;	assignBit
      002FA3 D2 94            [12] 3347 	setb	_P1_4
                                   3348 ;	8051_i2c_eeprom.c:886: }
      002FA5 22               [24] 3349 	ret
                                   3350 ;------------------------------------------------------------
                                   3351 ;Allocation info for local variables in function 'i2c_delay'
                                   3352 ;------------------------------------------------------------
                                   3353 ;i                         Allocated with name '_i2c_delay_i_131072_162'
                                   3354 ;------------------------------------------------------------
                                   3355 ;	8051_i2c_eeprom.c:895: void i2c_delay() 
                                   3356 ;	-----------------------------------------
                                   3357 ;	 function i2c_delay
                                   3358 ;	-----------------------------------------
      002FA6                       3359 _i2c_delay:
                                   3360 ;	8051_i2c_eeprom.c:903: for(int i = 0; i<500; i++);
      002FA6 7E 00            [12] 3361 	mov	r6,#0x00
      002FA8 7F 00            [12] 3362 	mov	r7,#0x00
      002FAA                       3363 00103$:
      002FAA C3               [12] 3364 	clr	c
      002FAB EE               [12] 3365 	mov	a,r6
      002FAC 94 F4            [12] 3366 	subb	a,#0xf4
      002FAE EF               [12] 3367 	mov	a,r7
      002FAF 64 80            [12] 3368 	xrl	a,#0x80
      002FB1 94 81            [12] 3369 	subb	a,#0x81
      002FB3 50 07            [24] 3370 	jnc	00105$
      002FB5 0E               [12] 3371 	inc	r6
      002FB6 BE 00 F1         [24] 3372 	cjne	r6,#0x00,00103$
      002FB9 0F               [12] 3373 	inc	r7
      002FBA 80 EE            [24] 3374 	sjmp	00103$
      002FBC                       3375 00105$:
                                   3376 ;	8051_i2c_eeprom.c:904: }
      002FBC 22               [24] 3377 	ret
                                   3378 ;------------------------------------------------------------
                                   3379 ;Allocation info for local variables in function 'test_function'
                                   3380 ;------------------------------------------------------------
                                   3381 ;test_data                 Allocated with name '_test_function_test_data_65537_164'
                                   3382 ;address                   Allocated with name '_test_function_address_65537_164'
                                   3383 ;i                         Allocated with name '_test_function_i_131073_165'
                                   3384 ;read_data                 Allocated with name '_test_function_read_data_65538_167'
                                   3385 ;------------------------------------------------------------
                                   3386 ;	8051_i2c_eeprom.c:906: void test_function()
                                   3387 ;	-----------------------------------------
                                   3388 ;	 function test_function
                                   3389 ;	-----------------------------------------
      002FBD                       3390 _test_function:
                                   3391 ;	8051_i2c_eeprom.c:908: i2c_start();
      002FBD 12 2B 8A         [24] 3392 	lcall	_i2c_start
                                   3393 ;	8051_i2c_eeprom.c:909: i2c_delay();
      002FC0 12 2F A6         [24] 3394 	lcall	_i2c_delay
                                   3395 ;	8051_i2c_eeprom.c:915: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      002FC3 74 02            [12] 3396 	mov	a,#0x02
      002FC5 C0 E0            [24] 3397 	push	acc
      002FC7 E4               [12] 3398 	clr	a
      002FC8 C0 E0            [24] 3399 	push	acc
      002FCA 74 26            [12] 3400 	mov	a,#0x26
      002FCC C0 E0            [24] 3401 	push	acc
      002FCE E4               [12] 3402 	clr	a
      002FCF C0 E0            [24] 3403 	push	acc
      002FD1 74 BD            [12] 3404 	mov	a,#___str_63
      002FD3 C0 E0            [24] 3405 	push	acc
      002FD5 74 4A            [12] 3406 	mov	a,#(___str_63 >> 8)
      002FD7 C0 E0            [24] 3407 	push	acc
      002FD9 74 80            [12] 3408 	mov	a,#0x80
      002FDB C0 E0            [24] 3409 	push	acc
      002FDD 12 30 C3         [24] 3410 	lcall	_printf
      002FE0 E5 81            [12] 3411 	mov	a,sp
      002FE2 24 F9            [12] 3412 	add	a,#0xf9
      002FE4 F5 81            [12] 3413 	mov	sp,a
                                   3414 ;	8051_i2c_eeprom.c:916: eeprom_write(address, test_data);
      002FE6 90 04 14         [24] 3415 	mov	dptr,#_eeprom_write_PARM_2
      002FE9 74 26            [12] 3416 	mov	a,#0x26
      002FEB F0               [24] 3417 	movx	@dptr,a
      002FEC 90 00 02         [24] 3418 	mov	dptr,#0x0002
      002FEF 12 28 47         [24] 3419 	lcall	_eeprom_write
                                   3420 ;	8051_i2c_eeprom.c:917: i2c_stop();
      002FF2 12 2F 6D         [24] 3421 	lcall	_i2c_stop
                                   3422 ;	8051_i2c_eeprom.c:919: for(int i = 0; i<100; i++)
      002FF5 7E 00            [12] 3423 	mov	r6,#0x00
      002FF7 7F 00            [12] 3424 	mov	r7,#0x00
      002FF9                       3425 00106$:
      002FF9 C3               [12] 3426 	clr	c
      002FFA EE               [12] 3427 	mov	a,r6
      002FFB 94 64            [12] 3428 	subb	a,#0x64
      002FFD EF               [12] 3429 	mov	a,r7
      002FFE 64 80            [12] 3430 	xrl	a,#0x80
      003000 94 80            [12] 3431 	subb	a,#0x80
      003002 50 12            [24] 3432 	jnc	00101$
                                   3433 ;	8051_i2c_eeprom.c:921: i2c_delay();
      003004 C0 07            [24] 3434 	push	ar7
      003006 C0 06            [24] 3435 	push	ar6
      003008 12 2F A6         [24] 3436 	lcall	_i2c_delay
      00300B D0 06            [24] 3437 	pop	ar6
      00300D D0 07            [24] 3438 	pop	ar7
                                   3439 ;	8051_i2c_eeprom.c:919: for(int i = 0; i<100; i++)
      00300F 0E               [12] 3440 	inc	r6
      003010 BE 00 E6         [24] 3441 	cjne	r6,#0x00,00106$
      003013 0F               [12] 3442 	inc	r7
      003014 80 E3            [24] 3443 	sjmp	00106$
      003016                       3444 00101$:
                                   3445 ;	8051_i2c_eeprom.c:925: unsigned char read_data = eeprom_read(address);
      003016 90 00 02         [24] 3446 	mov	dptr,#0x0002
      003019 12 29 89         [24] 3447 	lcall	_eeprom_read
      00301C AE 82            [24] 3448 	mov	r6,dpl
                                   3449 ;	8051_i2c_eeprom.c:926: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      00301E 8E 05            [24] 3450 	mov	ar5,r6
      003020 7F 00            [12] 3451 	mov	r7,#0x00
      003022 C0 06            [24] 3452 	push	ar6
      003024 C0 05            [24] 3453 	push	ar5
      003026 C0 07            [24] 3454 	push	ar7
      003028 74 02            [12] 3455 	mov	a,#0x02
      00302A C0 E0            [24] 3456 	push	acc
      00302C E4               [12] 3457 	clr	a
      00302D C0 E0            [24] 3458 	push	acc
      00302F 74 E5            [12] 3459 	mov	a,#___str_64
      003031 C0 E0            [24] 3460 	push	acc
      003033 74 4A            [12] 3461 	mov	a,#(___str_64 >> 8)
      003035 C0 E0            [24] 3462 	push	acc
      003037 74 80            [12] 3463 	mov	a,#0x80
      003039 C0 E0            [24] 3464 	push	acc
      00303B 12 30 C3         [24] 3465 	lcall	_printf
      00303E E5 81            [12] 3466 	mov	a,sp
      003040 24 F9            [12] 3467 	add	a,#0xf9
      003042 F5 81            [12] 3468 	mov	sp,a
      003044 D0 06            [24] 3469 	pop	ar6
                                   3470 ;	8051_i2c_eeprom.c:929: if(read_data == test_data) {
      003046 BE 26 16         [24] 3471 	cjne	r6,#0x26,00103$
                                   3472 ;	8051_i2c_eeprom.c:930: printf("MATCH - Write/Read successful!\n\r");
      003049 74 0D            [12] 3473 	mov	a,#___str_65
      00304B C0 E0            [24] 3474 	push	acc
      00304D 74 4B            [12] 3475 	mov	a,#(___str_65 >> 8)
      00304F C0 E0            [24] 3476 	push	acc
      003051 74 80            [12] 3477 	mov	a,#0x80
      003053 C0 E0            [24] 3478 	push	acc
      003055 12 30 C3         [24] 3479 	lcall	_printf
      003058 15 81            [12] 3480 	dec	sp
      00305A 15 81            [12] 3481 	dec	sp
      00305C 15 81            [12] 3482 	dec	sp
      00305E 22               [24] 3483 	ret
      00305F                       3484 00103$:
                                   3485 ;	8051_i2c_eeprom.c:932: printf("ERROR - Data mismatch!\n\r");
      00305F 74 2E            [12] 3486 	mov	a,#___str_66
      003061 C0 E0            [24] 3487 	push	acc
      003063 74 4B            [12] 3488 	mov	a,#(___str_66 >> 8)
      003065 C0 E0            [24] 3489 	push	acc
      003067 74 80            [12] 3490 	mov	a,#0x80
      003069 C0 E0            [24] 3491 	push	acc
      00306B 12 30 C3         [24] 3492 	lcall	_printf
      00306E 15 81            [12] 3493 	dec	sp
      003070 15 81            [12] 3494 	dec	sp
      003072 15 81            [12] 3495 	dec	sp
                                   3496 ;	8051_i2c_eeprom.c:936: }
      003074 22               [24] 3497 	ret
                                   3498 	.area CSEG    (CODE)
                                   3499 	.area CONST   (CODE)
                                   3500 	.area CONST   (CODE)
      003B25                       3501 ___str_0:
      003B25 0A                    3502 	.db 0x0a
      003B26 E2                    3503 	.db 0xe2
      003B27 95                    3504 	.db 0x95
      003B28 94                    3505 	.db 0x94
      003B29 E2                    3506 	.db 0xe2
      003B2A 95                    3507 	.db 0x95
      003B2B 90                    3508 	.db 0x90
      003B2C E2                    3509 	.db 0xe2
      003B2D 95                    3510 	.db 0x95
      003B2E 90                    3511 	.db 0x90
      003B2F E2                    3512 	.db 0xe2
      003B30 95                    3513 	.db 0x95
      003B31 90                    3514 	.db 0x90
      003B32 E2                    3515 	.db 0xe2
      003B33 95                    3516 	.db 0x95
      003B34 90                    3517 	.db 0x90
      003B35 E2                    3518 	.db 0xe2
      003B36 95                    3519 	.db 0x95
      003B37 90                    3520 	.db 0x90
      003B38 E2                    3521 	.db 0xe2
      003B39 95                    3522 	.db 0x95
      003B3A 90                    3523 	.db 0x90
      003B3B E2                    3524 	.db 0xe2
      003B3C 95                    3525 	.db 0x95
      003B3D 90                    3526 	.db 0x90
      003B3E E2                    3527 	.db 0xe2
      003B3F 95                    3528 	.db 0x95
      003B40 90                    3529 	.db 0x90
      003B41 E2                    3530 	.db 0xe2
      003B42 95                    3531 	.db 0x95
      003B43 90                    3532 	.db 0x90
      003B44 E2                    3533 	.db 0xe2
      003B45 95                    3534 	.db 0x95
      003B46 90                    3535 	.db 0x90
      003B47 E2                    3536 	.db 0xe2
      003B48 95                    3537 	.db 0x95
      003B49 90                    3538 	.db 0x90
      003B4A E2                    3539 	.db 0xe2
      003B4B 95                    3540 	.db 0x95
      003B4C 90                    3541 	.db 0x90
      003B4D E2                    3542 	.db 0xe2
      003B4E 95                    3543 	.db 0x95
      003B4F 90                    3544 	.db 0x90
      003B50 E2                    3545 	.db 0xe2
      003B51 95                    3546 	.db 0x95
      003B52 90                    3547 	.db 0x90
      003B53 E2                    3548 	.db 0xe2
      003B54 95                    3549 	.db 0x95
      003B55 90                    3550 	.db 0x90
      003B56 E2                    3551 	.db 0xe2
      003B57 95                    3552 	.db 0x95
      003B58 90                    3553 	.db 0x90
      003B59 E2                    3554 	.db 0xe2
      003B5A 95                    3555 	.db 0x95
      003B5B 90                    3556 	.db 0x90
      003B5C E2                    3557 	.db 0xe2
      003B5D 95                    3558 	.db 0x95
      003B5E 90                    3559 	.db 0x90
      003B5F E2                    3560 	.db 0xe2
      003B60 95                    3561 	.db 0x95
      003B61 90                    3562 	.db 0x90
      003B62 E2                    3563 	.db 0xe2
      003B63 95                    3564 	.db 0x95
      003B64 90                    3565 	.db 0x90
      003B65 E2                    3566 	.db 0xe2
      003B66 95                    3567 	.db 0x95
      003B67 90                    3568 	.db 0x90
      003B68 E2                    3569 	.db 0xe2
      003B69 95                    3570 	.db 0x95
      003B6A 90                    3571 	.db 0x90
      003B6B E2                    3572 	.db 0xe2
      003B6C 95                    3573 	.db 0x95
      003B6D 90                    3574 	.db 0x90
      003B6E E2                    3575 	.db 0xe2
      003B6F 95                    3576 	.db 0x95
      003B70 90                    3577 	.db 0x90
      003B71 E2                    3578 	.db 0xe2
      003B72 95                    3579 	.db 0x95
      003B73 90                    3580 	.db 0x90
      003B74 E2                    3581 	.db 0xe2
      003B75 95                    3582 	.db 0x95
      003B76 90                    3583 	.db 0x90
      003B77 E2                    3584 	.db 0xe2
      003B78 95                    3585 	.db 0x95
      003B79 90                    3586 	.db 0x90
      003B7A E2                    3587 	.db 0xe2
      003B7B 95                    3588 	.db 0x95
      003B7C 90                    3589 	.db 0x90
      003B7D E2                    3590 	.db 0xe2
      003B7E 95                    3591 	.db 0x95
      003B7F 90                    3592 	.db 0x90
      003B80 E2                    3593 	.db 0xe2
      003B81 95                    3594 	.db 0x95
      003B82 90                    3595 	.db 0x90
      003B83 E2                    3596 	.db 0xe2
      003B84 95                    3597 	.db 0x95
      003B85 90                    3598 	.db 0x90
      003B86 E2                    3599 	.db 0xe2
      003B87 95                    3600 	.db 0x95
      003B88 90                    3601 	.db 0x90
      003B89 E2                    3602 	.db 0xe2
      003B8A 95                    3603 	.db 0x95
      003B8B 90                    3604 	.db 0x90
      003B8C E2                    3605 	.db 0xe2
      003B8D 95                    3606 	.db 0x95
      003B8E 90                    3607 	.db 0x90
      003B8F E2                    3608 	.db 0xe2
      003B90 95                    3609 	.db 0x95
      003B91 90                    3610 	.db 0x90
      003B92 E2                    3611 	.db 0xe2
      003B93 95                    3612 	.db 0x95
      003B94 90                    3613 	.db 0x90
      003B95 E2                    3614 	.db 0xe2
      003B96 95                    3615 	.db 0x95
      003B97 90                    3616 	.db 0x90
      003B98 E2                    3617 	.db 0xe2
      003B99 95                    3618 	.db 0x95
      003B9A 90                    3619 	.db 0x90
      003B9B E2                    3620 	.db 0xe2
      003B9C 95                    3621 	.db 0x95
      003B9D 90                    3622 	.db 0x90
      003B9E E2                    3623 	.db 0xe2
      003B9F 95                    3624 	.db 0x95
      003BA0 90                    3625 	.db 0x90
      003BA1 E2                    3626 	.db 0xe2
      003BA2 95                    3627 	.db 0x95
      003BA3 90                    3628 	.db 0x90
      003BA4 E2                    3629 	.db 0xe2
      003BA5 95                    3630 	.db 0x95
      003BA6 90                    3631 	.db 0x90
      003BA7 E2                    3632 	.db 0xe2
      003BA8 95                    3633 	.db 0x95
      003BA9 90                    3634 	.db 0x90
      003BAA E2                    3635 	.db 0xe2
      003BAB 95                    3636 	.db 0x95
      003BAC 90                    3637 	.db 0x90
      003BAD E2                    3638 	.db 0xe2
      003BAE 95                    3639 	.db 0x95
      003BAF 90                    3640 	.db 0x90
      003BB0 E2                    3641 	.db 0xe2
      003BB1 95                    3642 	.db 0x95
      003BB2 90                    3643 	.db 0x90
      003BB3 E2                    3644 	.db 0xe2
      003BB4 95                    3645 	.db 0x95
      003BB5 90                    3646 	.db 0x90
      003BB6 E2                    3647 	.db 0xe2
      003BB7 95                    3648 	.db 0x95
      003BB8 90                    3649 	.db 0x90
      003BB9 E2                    3650 	.db 0xe2
      003BBA 95                    3651 	.db 0x95
      003BBB 90                    3652 	.db 0x90
      003BBC E2                    3653 	.db 0xe2
      003BBD 95                    3654 	.db 0x95
      003BBE 90                    3655 	.db 0x90
      003BBF E2                    3656 	.db 0xe2
      003BC0 95                    3657 	.db 0x95
      003BC1 90                    3658 	.db 0x90
      003BC2 E2                    3659 	.db 0xe2
      003BC3 95                    3660 	.db 0x95
      003BC4 90                    3661 	.db 0x90
      003BC5 E2                    3662 	.db 0xe2
      003BC6 95                    3663 	.db 0x95
      003BC7 90                    3664 	.db 0x90
      003BC8 E2                    3665 	.db 0xe2
      003BC9 95                    3666 	.db 0x95
      003BCA 90                    3667 	.db 0x90
      003BCB E2                    3668 	.db 0xe2
      003BCC 95                    3669 	.db 0x95
      003BCD 90                    3670 	.db 0x90
      003BCE E2                    3671 	.db 0xe2
      003BCF 95                    3672 	.db 0x95
      003BD0 90                    3673 	.db 0x90
      003BD1 E2                    3674 	.db 0xe2
      003BD2 95                    3675 	.db 0x95
      003BD3 97                    3676 	.db 0x97
      003BD4 0A                    3677 	.db 0x0a
      003BD5 0D                    3678 	.db 0x0d
      003BD6 00                    3679 	.db 0x00
                                   3680 	.area CSEG    (CODE)
                                   3681 	.area CONST   (CODE)
      003BD7                       3682 ___str_1:
      003BD7 E2                    3683 	.db 0xe2
      003BD8 95                    3684 	.db 0x95
      003BD9 91                    3685 	.db 0x91
      003BDA 20 20 20 20 20 20 20  3686 	.ascii "           I2C Memory Management System v1.0            "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
      003C12 E2                    3687 	.db 0xe2
      003C13 95                    3688 	.db 0x95
      003C14 91                    3689 	.db 0x91
      003C15 0A                    3690 	.db 0x0a
      003C16 0D                    3691 	.db 0x0d
      003C17 00                    3692 	.db 0x00
                                   3693 	.area CSEG    (CODE)
                                   3694 	.area CONST   (CODE)
      003C18                       3695 ___str_2:
      003C18 E2                    3696 	.db 0xe2
      003C19 95                    3697 	.db 0x95
      003C1A 9A                    3698 	.db 0x9a
      003C1B E2                    3699 	.db 0xe2
      003C1C 95                    3700 	.db 0x95
      003C1D 90                    3701 	.db 0x90
      003C1E E2                    3702 	.db 0xe2
      003C1F 95                    3703 	.db 0x95
      003C20 90                    3704 	.db 0x90
      003C21 E2                    3705 	.db 0xe2
      003C22 95                    3706 	.db 0x95
      003C23 90                    3707 	.db 0x90
      003C24 E2                    3708 	.db 0xe2
      003C25 95                    3709 	.db 0x95
      003C26 90                    3710 	.db 0x90
      003C27 E2                    3711 	.db 0xe2
      003C28 95                    3712 	.db 0x95
      003C29 90                    3713 	.db 0x90
      003C2A E2                    3714 	.db 0xe2
      003C2B 95                    3715 	.db 0x95
      003C2C 90                    3716 	.db 0x90
      003C2D E2                    3717 	.db 0xe2
      003C2E 95                    3718 	.db 0x95
      003C2F 90                    3719 	.db 0x90
      003C30 E2                    3720 	.db 0xe2
      003C31 95                    3721 	.db 0x95
      003C32 90                    3722 	.db 0x90
      003C33 E2                    3723 	.db 0xe2
      003C34 95                    3724 	.db 0x95
      003C35 90                    3725 	.db 0x90
      003C36 E2                    3726 	.db 0xe2
      003C37 95                    3727 	.db 0x95
      003C38 90                    3728 	.db 0x90
      003C39 E2                    3729 	.db 0xe2
      003C3A 95                    3730 	.db 0x95
      003C3B 90                    3731 	.db 0x90
      003C3C E2                    3732 	.db 0xe2
      003C3D 95                    3733 	.db 0x95
      003C3E 90                    3734 	.db 0x90
      003C3F E2                    3735 	.db 0xe2
      003C40 95                    3736 	.db 0x95
      003C41 90                    3737 	.db 0x90
      003C42 E2                    3738 	.db 0xe2
      003C43 95                    3739 	.db 0x95
      003C44 90                    3740 	.db 0x90
      003C45 E2                    3741 	.db 0xe2
      003C46 95                    3742 	.db 0x95
      003C47 90                    3743 	.db 0x90
      003C48 E2                    3744 	.db 0xe2
      003C49 95                    3745 	.db 0x95
      003C4A 90                    3746 	.db 0x90
      003C4B E2                    3747 	.db 0xe2
      003C4C 95                    3748 	.db 0x95
      003C4D 90                    3749 	.db 0x90
      003C4E E2                    3750 	.db 0xe2
      003C4F 95                    3751 	.db 0x95
      003C50 90                    3752 	.db 0x90
      003C51 E2                    3753 	.db 0xe2
      003C52 95                    3754 	.db 0x95
      003C53 90                    3755 	.db 0x90
      003C54 E2                    3756 	.db 0xe2
      003C55 95                    3757 	.db 0x95
      003C56 90                    3758 	.db 0x90
      003C57 E2                    3759 	.db 0xe2
      003C58 95                    3760 	.db 0x95
      003C59 90                    3761 	.db 0x90
      003C5A E2                    3762 	.db 0xe2
      003C5B 95                    3763 	.db 0x95
      003C5C 90                    3764 	.db 0x90
      003C5D E2                    3765 	.db 0xe2
      003C5E 95                    3766 	.db 0x95
      003C5F 90                    3767 	.db 0x90
      003C60 E2                    3768 	.db 0xe2
      003C61 95                    3769 	.db 0x95
      003C62 90                    3770 	.db 0x90
      003C63 E2                    3771 	.db 0xe2
      003C64 95                    3772 	.db 0x95
      003C65 90                    3773 	.db 0x90
      003C66 E2                    3774 	.db 0xe2
      003C67 95                    3775 	.db 0x95
      003C68 90                    3776 	.db 0x90
      003C69 E2                    3777 	.db 0xe2
      003C6A 95                    3778 	.db 0x95
      003C6B 90                    3779 	.db 0x90
      003C6C E2                    3780 	.db 0xe2
      003C6D 95                    3781 	.db 0x95
      003C6E 90                    3782 	.db 0x90
      003C6F E2                    3783 	.db 0xe2
      003C70 95                    3784 	.db 0x95
      003C71 90                    3785 	.db 0x90
      003C72 E2                    3786 	.db 0xe2
      003C73 95                    3787 	.db 0x95
      003C74 90                    3788 	.db 0x90
      003C75 E2                    3789 	.db 0xe2
      003C76 95                    3790 	.db 0x95
      003C77 90                    3791 	.db 0x90
      003C78 E2                    3792 	.db 0xe2
      003C79 95                    3793 	.db 0x95
      003C7A 90                    3794 	.db 0x90
      003C7B E2                    3795 	.db 0xe2
      003C7C 95                    3796 	.db 0x95
      003C7D 90                    3797 	.db 0x90
      003C7E E2                    3798 	.db 0xe2
      003C7F 95                    3799 	.db 0x95
      003C80 90                    3800 	.db 0x90
      003C81 E2                    3801 	.db 0xe2
      003C82 95                    3802 	.db 0x95
      003C83 90                    3803 	.db 0x90
      003C84 E2                    3804 	.db 0xe2
      003C85 95                    3805 	.db 0x95
      003C86 90                    3806 	.db 0x90
      003C87 E2                    3807 	.db 0xe2
      003C88 95                    3808 	.db 0x95
      003C89 90                    3809 	.db 0x90
      003C8A E2                    3810 	.db 0xe2
      003C8B 95                    3811 	.db 0x95
      003C8C 90                    3812 	.db 0x90
      003C8D E2                    3813 	.db 0xe2
      003C8E 95                    3814 	.db 0x95
      003C8F 90                    3815 	.db 0x90
      003C90 E2                    3816 	.db 0xe2
      003C91 95                    3817 	.db 0x95
      003C92 90                    3818 	.db 0x90
      003C93 E2                    3819 	.db 0xe2
      003C94 95                    3820 	.db 0x95
      003C95 90                    3821 	.db 0x90
      003C96 E2                    3822 	.db 0xe2
      003C97 95                    3823 	.db 0x95
      003C98 90                    3824 	.db 0x90
      003C99 E2                    3825 	.db 0xe2
      003C9A 95                    3826 	.db 0x95
      003C9B 90                    3827 	.db 0x90
      003C9C E2                    3828 	.db 0xe2
      003C9D 95                    3829 	.db 0x95
      003C9E 90                    3830 	.db 0x90
      003C9F E2                    3831 	.db 0xe2
      003CA0 95                    3832 	.db 0x95
      003CA1 90                    3833 	.db 0x90
      003CA2 E2                    3834 	.db 0xe2
      003CA3 95                    3835 	.db 0x95
      003CA4 90                    3836 	.db 0x90
      003CA5 E2                    3837 	.db 0xe2
      003CA6 95                    3838 	.db 0x95
      003CA7 90                    3839 	.db 0x90
      003CA8 E2                    3840 	.db 0xe2
      003CA9 95                    3841 	.db 0x95
      003CAA 90                    3842 	.db 0x90
      003CAB E2                    3843 	.db 0xe2
      003CAC 95                    3844 	.db 0x95
      003CAD 90                    3845 	.db 0x90
      003CAE E2                    3846 	.db 0xe2
      003CAF 95                    3847 	.db 0x95
      003CB0 90                    3848 	.db 0x90
      003CB1 E2                    3849 	.db 0xe2
      003CB2 95                    3850 	.db 0x95
      003CB3 90                    3851 	.db 0x90
      003CB4 E2                    3852 	.db 0xe2
      003CB5 95                    3853 	.db 0x95
      003CB6 90                    3854 	.db 0x90
      003CB7 E2                    3855 	.db 0xe2
      003CB8 95                    3856 	.db 0x95
      003CB9 90                    3857 	.db 0x90
      003CBA E2                    3858 	.db 0xe2
      003CBB 95                    3859 	.db 0x95
      003CBC 90                    3860 	.db 0x90
      003CBD E2                    3861 	.db 0xe2
      003CBE 95                    3862 	.db 0x95
      003CBF 90                    3863 	.db 0x90
      003CC0 E2                    3864 	.db 0xe2
      003CC1 95                    3865 	.db 0x95
      003CC2 90                    3866 	.db 0x90
      003CC3 E2                    3867 	.db 0xe2
      003CC4 95                    3868 	.db 0x95
      003CC5 9D                    3869 	.db 0x9d
      003CC6 0A                    3870 	.db 0x0a
      003CC7 0D                    3871 	.db 0x0d
      003CC8 00                    3872 	.db 0x00
                                   3873 	.area CSEG    (CODE)
                                   3874 	.area CONST   (CODE)
      003CC9                       3875 ___str_3:
      003CC9 0A                    3876 	.db 0x0a
      003CCA 0D                    3877 	.db 0x0d
      003CCB E2                    3878 	.db 0xe2
      003CCC 94                    3879 	.db 0x94
      003CCD 8C                    3880 	.db 0x8c
      003CCE E2                    3881 	.db 0xe2
      003CCF 94                    3882 	.db 0x94
      003CD0 80                    3883 	.db 0x80
      003CD1 E2                    3884 	.db 0xe2
      003CD2 94                    3885 	.db 0x94
      003CD3 80                    3886 	.db 0x80
      003CD4 E2                    3887 	.db 0xe2
      003CD5 94                    3888 	.db 0x94
      003CD6 80                    3889 	.db 0x80
      003CD7 E2                    3890 	.db 0xe2
      003CD8 94                    3891 	.db 0x94
      003CD9 80                    3892 	.db 0x80
      003CDA E2                    3893 	.db 0xe2
      003CDB 94                    3894 	.db 0x94
      003CDC 80                    3895 	.db 0x80
      003CDD E2                    3896 	.db 0xe2
      003CDE 94                    3897 	.db 0x94
      003CDF 80                    3898 	.db 0x80
      003CE0 E2                    3899 	.db 0xe2
      003CE1 94                    3900 	.db 0x94
      003CE2 80                    3901 	.db 0x80
      003CE3 E2                    3902 	.db 0xe2
      003CE4 94                    3903 	.db 0x94
      003CE5 80                    3904 	.db 0x80
      003CE6 E2                    3905 	.db 0xe2
      003CE7 94                    3906 	.db 0x94
      003CE8 80                    3907 	.db 0x80
      003CE9 E2                    3908 	.db 0xe2
      003CEA 94                    3909 	.db 0x94
      003CEB 80                    3910 	.db 0x80
      003CEC E2                    3911 	.db 0xe2
      003CED 94                    3912 	.db 0x94
      003CEE 80                    3913 	.db 0x80
      003CEF E2                    3914 	.db 0xe2
      003CF0 94                    3915 	.db 0x94
      003CF1 80                    3916 	.db 0x80
      003CF2 E2                    3917 	.db 0xe2
      003CF3 94                    3918 	.db 0x94
      003CF4 AC                    3919 	.db 0xac
      003CF5 E2                    3920 	.db 0xe2
      003CF6 94                    3921 	.db 0x94
      003CF7 80                    3922 	.db 0x80
      003CF8 E2                    3923 	.db 0xe2
      003CF9 94                    3924 	.db 0x94
      003CFA 80                    3925 	.db 0x80
      003CFB E2                    3926 	.db 0xe2
      003CFC 94                    3927 	.db 0x94
      003CFD 80                    3928 	.db 0x80
      003CFE E2                    3929 	.db 0xe2
      003CFF 94                    3930 	.db 0x94
      003D00 80                    3931 	.db 0x80
      003D01 E2                    3932 	.db 0xe2
      003D02 94                    3933 	.db 0x94
      003D03 80                    3934 	.db 0x80
      003D04 E2                    3935 	.db 0xe2
      003D05 94                    3936 	.db 0x94
      003D06 80                    3937 	.db 0x80
      003D07 E2                    3938 	.db 0xe2
      003D08 94                    3939 	.db 0x94
      003D09 80                    3940 	.db 0x80
      003D0A E2                    3941 	.db 0xe2
      003D0B 94                    3942 	.db 0x94
      003D0C 80                    3943 	.db 0x80
      003D0D E2                    3944 	.db 0xe2
      003D0E 94                    3945 	.db 0x94
      003D0F 80                    3946 	.db 0x80
      003D10 E2                    3947 	.db 0xe2
      003D11 94                    3948 	.db 0x94
      003D12 80                    3949 	.db 0x80
      003D13 E2                    3950 	.db 0xe2
      003D14 94                    3951 	.db 0x94
      003D15 80                    3952 	.db 0x80
      003D16 E2                    3953 	.db 0xe2
      003D17 94                    3954 	.db 0x94
      003D18 80                    3955 	.db 0x80
      003D19 E2                    3956 	.db 0xe2
      003D1A 94                    3957 	.db 0x94
      003D1B 80                    3958 	.db 0x80
      003D1C E2                    3959 	.db 0xe2
      003D1D 94                    3960 	.db 0x94
      003D1E 80                    3961 	.db 0x80
      003D1F E2                    3962 	.db 0xe2
      003D20 94                    3963 	.db 0x94
      003D21 80                    3964 	.db 0x80
      003D22 E2                    3965 	.db 0xe2
      003D23 94                    3966 	.db 0x94
      003D24 80                    3967 	.db 0x80
      003D25 E2                    3968 	.db 0xe2
      003D26 94                    3969 	.db 0x94
      003D27 80                    3970 	.db 0x80
      003D28 E2                    3971 	.db 0xe2
      003D29 94                    3972 	.db 0x94
      003D2A 80                    3973 	.db 0x80
      003D2B E2                    3974 	.db 0xe2
      003D2C 94                    3975 	.db 0x94
      003D2D 80                    3976 	.db 0x80
      003D2E E2                    3977 	.db 0xe2
      003D2F 94                    3978 	.db 0x94
      003D30 80                    3979 	.db 0x80
      003D31 E2                    3980 	.db 0xe2
      003D32 94                    3981 	.db 0x94
      003D33 80                    3982 	.db 0x80
      003D34 E2                    3983 	.db 0xe2
      003D35 94                    3984 	.db 0x94
      003D36 80                    3985 	.db 0x80
      003D37 E2                    3986 	.db 0xe2
      003D38 94                    3987 	.db 0x94
      003D39 80                    3988 	.db 0x80
      003D3A E2                    3989 	.db 0xe2
      003D3B 94                    3990 	.db 0x94
      003D3C 80                    3991 	.db 0x80
      003D3D E2                    3992 	.db 0xe2
      003D3E 94                    3993 	.db 0x94
      003D3F 80                    3994 	.db 0x80
      003D40 E2                    3995 	.db 0xe2
      003D41 94                    3996 	.db 0x94
      003D42 80                    3997 	.db 0x80
      003D43 E2                    3998 	.db 0xe2
      003D44 94                    3999 	.db 0x94
      003D45 80                    4000 	.db 0x80
      003D46 E2                    4001 	.db 0xe2
      003D47 94                    4002 	.db 0x94
      003D48 80                    4003 	.db 0x80
      003D49 E2                    4004 	.db 0xe2
      003D4A 94                    4005 	.db 0x94
      003D4B 80                    4006 	.db 0x80
      003D4C E2                    4007 	.db 0xe2
      003D4D 94                    4008 	.db 0x94
      003D4E 80                    4009 	.db 0x80
      003D4F E2                    4010 	.db 0xe2
      003D50 94                    4011 	.db 0x94
      003D51 80                    4012 	.db 0x80
      003D52 E2                    4013 	.db 0xe2
      003D53 94                    4014 	.db 0x94
      003D54 80                    4015 	.db 0x80
      003D55 E2                    4016 	.db 0xe2
      003D56 94                    4017 	.db 0x94
      003D57 80                    4018 	.db 0x80
      003D58 E2                    4019 	.db 0xe2
      003D59 94                    4020 	.db 0x94
      003D5A 80                    4021 	.db 0x80
      003D5B E2                    4022 	.db 0xe2
      003D5C 94                    4023 	.db 0x94
      003D5D 80                    4024 	.db 0x80
      003D5E E2                    4025 	.db 0xe2
      003D5F 94                    4026 	.db 0x94
      003D60 80                    4027 	.db 0x80
      003D61 E2                    4028 	.db 0xe2
      003D62 94                    4029 	.db 0x94
      003D63 80                    4030 	.db 0x80
      003D64 E2                    4031 	.db 0xe2
      003D65 94                    4032 	.db 0x94
      003D66 80                    4033 	.db 0x80
      003D67 E2                    4034 	.db 0xe2
      003D68 94                    4035 	.db 0x94
      003D69 80                    4036 	.db 0x80
      003D6A E2                    4037 	.db 0xe2
      003D6B 94                    4038 	.db 0x94
      003D6C 80                    4039 	.db 0x80
      003D6D E2                    4040 	.db 0xe2
      003D6E 94                    4041 	.db 0x94
      003D6F 80                    4042 	.db 0x80
      003D70 E2                    4043 	.db 0xe2
      003D71 94                    4044 	.db 0x94
      003D72 80                    4045 	.db 0x80
      003D73 E2                    4046 	.db 0xe2
      003D74 94                    4047 	.db 0x94
      003D75 80                    4048 	.db 0x80
      003D76 E2                    4049 	.db 0xe2
      003D77 94                    4050 	.db 0x94
      003D78 80                    4051 	.db 0x80
      003D79 E2                    4052 	.db 0xe2
      003D7A 94                    4053 	.db 0x94
      003D7B 90                    4054 	.db 0x90
      003D7C 0A                    4055 	.db 0x0a
      003D7D 0D                    4056 	.db 0x0d
      003D7E 00                    4057 	.db 0x00
                                   4058 	.area CSEG    (CODE)
                                   4059 	.area CONST   (CODE)
      003D7F                       4060 ___str_4:
      003D7F E2                    4061 	.db 0xe2
      003D80 94                    4062 	.db 0x94
      003D81 82                    4063 	.db 0x82
      003D82 20 20 43 6F 6D 6D 61  4064 	.ascii "  Command   "
             6E 64 20 20 20
      003D8E E2                    4065 	.db 0xe2
      003D8F 94                    4066 	.db 0x94
      003D90 82                    4067 	.db 0x82
      003D91 20 20 20 20 20 20 20  4068 	.ascii "               Description                  "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      003DBD E2                    4069 	.db 0xe2
      003DBE 94                    4070 	.db 0x94
      003DBF 82                    4071 	.db 0x82
      003DC0 0A                    4072 	.db 0x0a
      003DC1 0D                    4073 	.db 0x0d
      003DC2 00                    4074 	.db 0x00
                                   4075 	.area CSEG    (CODE)
                                   4076 	.area CONST   (CODE)
      003DC3                       4077 ___str_5:
      003DC3 E2                    4078 	.db 0xe2
      003DC4 94                    4079 	.db 0x94
      003DC5 9C                    4080 	.db 0x9c
      003DC6 E2                    4081 	.db 0xe2
      003DC7 94                    4082 	.db 0x94
      003DC8 80                    4083 	.db 0x80
      003DC9 E2                    4084 	.db 0xe2
      003DCA 94                    4085 	.db 0x94
      003DCB 80                    4086 	.db 0x80
      003DCC E2                    4087 	.db 0xe2
      003DCD 94                    4088 	.db 0x94
      003DCE 80                    4089 	.db 0x80
      003DCF E2                    4090 	.db 0xe2
      003DD0 94                    4091 	.db 0x94
      003DD1 80                    4092 	.db 0x80
      003DD2 E2                    4093 	.db 0xe2
      003DD3 94                    4094 	.db 0x94
      003DD4 80                    4095 	.db 0x80
      003DD5 E2                    4096 	.db 0xe2
      003DD6 94                    4097 	.db 0x94
      003DD7 80                    4098 	.db 0x80
      003DD8 E2                    4099 	.db 0xe2
      003DD9 94                    4100 	.db 0x94
      003DDA 80                    4101 	.db 0x80
      003DDB E2                    4102 	.db 0xe2
      003DDC 94                    4103 	.db 0x94
      003DDD 80                    4104 	.db 0x80
      003DDE E2                    4105 	.db 0xe2
      003DDF 94                    4106 	.db 0x94
      003DE0 80                    4107 	.db 0x80
      003DE1 E2                    4108 	.db 0xe2
      003DE2 94                    4109 	.db 0x94
      003DE3 80                    4110 	.db 0x80
      003DE4 E2                    4111 	.db 0xe2
      003DE5 94                    4112 	.db 0x94
      003DE6 80                    4113 	.db 0x80
      003DE7 E2                    4114 	.db 0xe2
      003DE8 94                    4115 	.db 0x94
      003DE9 80                    4116 	.db 0x80
      003DEA E2                    4117 	.db 0xe2
      003DEB 94                    4118 	.db 0x94
      003DEC BC                    4119 	.db 0xbc
      003DED E2                    4120 	.db 0xe2
      003DEE 94                    4121 	.db 0x94
      003DEF 80                    4122 	.db 0x80
      003DF0 E2                    4123 	.db 0xe2
      003DF1 94                    4124 	.db 0x94
      003DF2 80                    4125 	.db 0x80
      003DF3 E2                    4126 	.db 0xe2
      003DF4 94                    4127 	.db 0x94
      003DF5 80                    4128 	.db 0x80
      003DF6 E2                    4129 	.db 0xe2
      003DF7 94                    4130 	.db 0x94
      003DF8 80                    4131 	.db 0x80
      003DF9 E2                    4132 	.db 0xe2
      003DFA 94                    4133 	.db 0x94
      003DFB 80                    4134 	.db 0x80
      003DFC E2                    4135 	.db 0xe2
      003DFD 94                    4136 	.db 0x94
      003DFE 80                    4137 	.db 0x80
      003DFF E2                    4138 	.db 0xe2
      003E00 94                    4139 	.db 0x94
      003E01 80                    4140 	.db 0x80
      003E02 E2                    4141 	.db 0xe2
      003E03 94                    4142 	.db 0x94
      003E04 80                    4143 	.db 0x80
      003E05 E2                    4144 	.db 0xe2
      003E06 94                    4145 	.db 0x94
      003E07 80                    4146 	.db 0x80
      003E08 E2                    4147 	.db 0xe2
      003E09 94                    4148 	.db 0x94
      003E0A 80                    4149 	.db 0x80
      003E0B E2                    4150 	.db 0xe2
      003E0C 94                    4151 	.db 0x94
      003E0D 80                    4152 	.db 0x80
      003E0E E2                    4153 	.db 0xe2
      003E0F 94                    4154 	.db 0x94
      003E10 80                    4155 	.db 0x80
      003E11 E2                    4156 	.db 0xe2
      003E12 94                    4157 	.db 0x94
      003E13 80                    4158 	.db 0x80
      003E14 E2                    4159 	.db 0xe2
      003E15 94                    4160 	.db 0x94
      003E16 80                    4161 	.db 0x80
      003E17 E2                    4162 	.db 0xe2
      003E18 94                    4163 	.db 0x94
      003E19 80                    4164 	.db 0x80
      003E1A E2                    4165 	.db 0xe2
      003E1B 94                    4166 	.db 0x94
      003E1C 80                    4167 	.db 0x80
      003E1D E2                    4168 	.db 0xe2
      003E1E 94                    4169 	.db 0x94
      003E1F 80                    4170 	.db 0x80
      003E20 E2                    4171 	.db 0xe2
      003E21 94                    4172 	.db 0x94
      003E22 80                    4173 	.db 0x80
      003E23 E2                    4174 	.db 0xe2
      003E24 94                    4175 	.db 0x94
      003E25 80                    4176 	.db 0x80
      003E26 E2                    4177 	.db 0xe2
      003E27 94                    4178 	.db 0x94
      003E28 80                    4179 	.db 0x80
      003E29 E2                    4180 	.db 0xe2
      003E2A 94                    4181 	.db 0x94
      003E2B 80                    4182 	.db 0x80
      003E2C E2                    4183 	.db 0xe2
      003E2D 94                    4184 	.db 0x94
      003E2E 80                    4185 	.db 0x80
      003E2F E2                    4186 	.db 0xe2
      003E30 94                    4187 	.db 0x94
      003E31 80                    4188 	.db 0x80
      003E32 E2                    4189 	.db 0xe2
      003E33 94                    4190 	.db 0x94
      003E34 80                    4191 	.db 0x80
      003E35 E2                    4192 	.db 0xe2
      003E36 94                    4193 	.db 0x94
      003E37 80                    4194 	.db 0x80
      003E38 E2                    4195 	.db 0xe2
      003E39 94                    4196 	.db 0x94
      003E3A 80                    4197 	.db 0x80
      003E3B E2                    4198 	.db 0xe2
      003E3C 94                    4199 	.db 0x94
      003E3D 80                    4200 	.db 0x80
      003E3E E2                    4201 	.db 0xe2
      003E3F 94                    4202 	.db 0x94
      003E40 80                    4203 	.db 0x80
      003E41 E2                    4204 	.db 0xe2
      003E42 94                    4205 	.db 0x94
      003E43 80                    4206 	.db 0x80
      003E44 E2                    4207 	.db 0xe2
      003E45 94                    4208 	.db 0x94
      003E46 80                    4209 	.db 0x80
      003E47 E2                    4210 	.db 0xe2
      003E48 94                    4211 	.db 0x94
      003E49 80                    4212 	.db 0x80
      003E4A E2                    4213 	.db 0xe2
      003E4B 94                    4214 	.db 0x94
      003E4C 80                    4215 	.db 0x80
      003E4D E2                    4216 	.db 0xe2
      003E4E 94                    4217 	.db 0x94
      003E4F 80                    4218 	.db 0x80
      003E50 E2                    4219 	.db 0xe2
      003E51 94                    4220 	.db 0x94
      003E52 80                    4221 	.db 0x80
      003E53 E2                    4222 	.db 0xe2
      003E54 94                    4223 	.db 0x94
      003E55 80                    4224 	.db 0x80
      003E56 E2                    4225 	.db 0xe2
      003E57 94                    4226 	.db 0x94
      003E58 80                    4227 	.db 0x80
      003E59 E2                    4228 	.db 0xe2
      003E5A 94                    4229 	.db 0x94
      003E5B 80                    4230 	.db 0x80
      003E5C E2                    4231 	.db 0xe2
      003E5D 94                    4232 	.db 0x94
      003E5E 80                    4233 	.db 0x80
      003E5F E2                    4234 	.db 0xe2
      003E60 94                    4235 	.db 0x94
      003E61 80                    4236 	.db 0x80
      003E62 E2                    4237 	.db 0xe2
      003E63 94                    4238 	.db 0x94
      003E64 80                    4239 	.db 0x80
      003E65 E2                    4240 	.db 0xe2
      003E66 94                    4241 	.db 0x94
      003E67 80                    4242 	.db 0x80
      003E68 E2                    4243 	.db 0xe2
      003E69 94                    4244 	.db 0x94
      003E6A 80                    4245 	.db 0x80
      003E6B E2                    4246 	.db 0xe2
      003E6C 94                    4247 	.db 0x94
      003E6D 80                    4248 	.db 0x80
      003E6E E2                    4249 	.db 0xe2
      003E6F 94                    4250 	.db 0x94
      003E70 80                    4251 	.db 0x80
      003E71 E2                    4252 	.db 0xe2
      003E72 94                    4253 	.db 0x94
      003E73 A4                    4254 	.db 0xa4
      003E74 0A                    4255 	.db 0x0a
      003E75 0D                    4256 	.db 0x0d
      003E76 00                    4257 	.db 0x00
                                   4258 	.area CSEG    (CODE)
                                   4259 	.area CONST   (CODE)
      003E77                       4260 ___str_6:
      003E77 E2                    4261 	.db 0xe2
      003E78 94                    4262 	.db 0x94
      003E79 82                    4263 	.db 0x82
      003E7A 20 20 20 20 20 52 20  4264 	.ascii "     R      "
             20 20 20 20 20
      003E86 E2                    4265 	.db 0xe2
      003E87 94                    4266 	.db 0x94
      003E88 82                    4267 	.db 0x82
      003E89 20 52 65 61 64 20 66  4268 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      003EB5 E2                    4269 	.db 0xe2
      003EB6 94                    4270 	.db 0x94
      003EB7 82                    4271 	.db 0x82
      003EB8 0A                    4272 	.db 0x0a
      003EB9 0D                    4273 	.db 0x0d
      003EBA 00                    4274 	.db 0x00
                                   4275 	.area CSEG    (CODE)
                                   4276 	.area CONST   (CODE)
      003EBB                       4277 ___str_7:
      003EBB E2                    4278 	.db 0xe2
      003EBC 94                    4279 	.db 0x94
      003EBD 82                    4280 	.db 0x82
      003EBE 20 20 20 20 20 57 20  4281 	.ascii "     W      "
             20 20 20 20 20
      003ECA E2                    4282 	.db 0xe2
      003ECB 94                    4283 	.db 0x94
      003ECC 82                    4284 	.db 0x82
      003ECD 20 57 72 69 74 65 20  4285 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      003EF9 E2                    4286 	.db 0xe2
      003EFA 94                    4287 	.db 0x94
      003EFB 82                    4288 	.db 0x82
      003EFC 0A                    4289 	.db 0x0a
      003EFD 0D                    4290 	.db 0x0d
      003EFE 00                    4291 	.db 0x00
                                   4292 	.area CSEG    (CODE)
                                   4293 	.area CONST   (CODE)
      003EFF                       4294 ___str_8:
      003EFF E2                    4295 	.db 0xe2
      003F00 94                    4296 	.db 0x94
      003F01 82                    4297 	.db 0x82
      003F02 20 20 20 20 20 48 20  4298 	.ascii "     H      "
             20 20 20 20 20
      003F0E E2                    4299 	.db 0xe2
      003F0F 94                    4300 	.db 0x94
      003F10 82                    4301 	.db 0x82
      003F11 20 44 69 73 70 6C 61  4302 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      003F3D E2                    4303 	.db 0xe2
      003F3E 94                    4304 	.db 0x94
      003F3F 82                    4305 	.db 0x82
      003F40 0A                    4306 	.db 0x0a
      003F41 0D                    4307 	.db 0x0d
      003F42 00                    4308 	.db 0x00
                                   4309 	.area CSEG    (CODE)
                                   4310 	.area CONST   (CODE)
      003F43                       4311 ___str_9:
      003F43 E2                    4312 	.db 0xe2
      003F44 94                    4313 	.db 0x94
      003F45 82                    4314 	.db 0x82
      003F46 20 20 20 20 20 58 20  4315 	.ascii "     X      "
             20 20 20 20 20
      003F52 E2                    4316 	.db 0xe2
      003F53 94                    4317 	.db 0x94
      003F54 82                    4318 	.db 0x82
      003F55 20 52 65 73 65 74 20  4319 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      003F81 E2                    4320 	.db 0xe2
      003F82 94                    4321 	.db 0x94
      003F83 82                    4322 	.db 0x82
      003F84 0A                    4323 	.db 0x0a
      003F85 0D                    4324 	.db 0x0d
      003F86 00                    4325 	.db 0x00
                                   4326 	.area CSEG    (CODE)
                                   4327 	.area CONST   (CODE)
      003F87                       4328 ___str_10:
      003F87 E2                    4329 	.db 0xe2
      003F88 94                    4330 	.db 0x94
      003F89 82                    4331 	.db 0x82
      003F8A 20 20 20 20 20 3F 20  4332 	.ascii "     ?      "
             20 20 20 20 20
      003F96 E2                    4333 	.db 0xe2
      003F97 94                    4334 	.db 0x94
      003F98 82                    4335 	.db 0x82
      003F99 20 44 69 73 70 6C 61  4336 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      003FC5 E2                    4337 	.db 0xe2
      003FC6 94                    4338 	.db 0x94
      003FC7 82                    4339 	.db 0x82
      003FC8 0A                    4340 	.db 0x0a
      003FC9 0D                    4341 	.db 0x0d
      003FCA 00                    4342 	.db 0x00
                                   4343 	.area CSEG    (CODE)
                                   4344 	.area CONST   (CODE)
      003FCB                       4345 ___str_11:
      003FCB E2                    4346 	.db 0xe2
      003FCC 94                    4347 	.db 0x94
      003FCD 82                    4348 	.db 0x82
      003FCE 20 20 20 20 20 49 20  4349 	.ascii "     I      "
             20 20 20 20 20
      003FDA E2                    4350 	.db 0xe2
      003FDB 94                    4351 	.db 0x94
      003FDC 82                    4352 	.db 0x82
      003FDD 20 49 4F 20 45 78 70  4353 	.ascii " IO Expander                                "
             61 6E 64 65 72 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004009 E2                    4354 	.db 0xe2
      00400A 94                    4355 	.db 0x94
      00400B 82                    4356 	.db 0x82
      00400C 0A                    4357 	.db 0x0a
      00400D 0D                    4358 	.db 0x0d
      00400E 00                    4359 	.db 0x00
                                   4360 	.area CSEG    (CODE)
                                   4361 	.area CONST   (CODE)
      00400F                       4362 ___str_12:
      00400F E2                    4363 	.db 0xe2
      004010 94                    4364 	.db 0x94
      004011 82                    4365 	.db 0x82
      004012 20 20 20 20 20 4C 20  4366 	.ascii "     L      "
             20 20 20 20 20
      00401E E2                    4367 	.db 0xe2
      00401F 94                    4368 	.db 0x94
      004020 82                    4369 	.db 0x82
      004021 20 4C 65 61 76 65 20  4370 	.ascii " Leave IO Expander                          "
             49 4F 20 45 78 70 61
             6E 64 65 72 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      00404D E2                    4371 	.db 0xe2
      00404E 94                    4372 	.db 0x94
      00404F 82                    4373 	.db 0x82
      004050 0A                    4374 	.db 0x0a
      004051 0D                    4375 	.db 0x0d
      004052 00                    4376 	.db 0x00
                                   4377 	.area CSEG    (CODE)
                                   4378 	.area CONST   (CODE)
      004053                       4379 ___str_13:
      004053 E2                    4380 	.db 0xe2
      004054 94                    4381 	.db 0x94
      004055 94                    4382 	.db 0x94
      004056 E2                    4383 	.db 0xe2
      004057 94                    4384 	.db 0x94
      004058 80                    4385 	.db 0x80
      004059 E2                    4386 	.db 0xe2
      00405A 94                    4387 	.db 0x94
      00405B 80                    4388 	.db 0x80
      00405C E2                    4389 	.db 0xe2
      00405D 94                    4390 	.db 0x94
      00405E 80                    4391 	.db 0x80
      00405F E2                    4392 	.db 0xe2
      004060 94                    4393 	.db 0x94
      004061 80                    4394 	.db 0x80
      004062 E2                    4395 	.db 0xe2
      004063 94                    4396 	.db 0x94
      004064 80                    4397 	.db 0x80
      004065 E2                    4398 	.db 0xe2
      004066 94                    4399 	.db 0x94
      004067 80                    4400 	.db 0x80
      004068 E2                    4401 	.db 0xe2
      004069 94                    4402 	.db 0x94
      00406A 80                    4403 	.db 0x80
      00406B E2                    4404 	.db 0xe2
      00406C 94                    4405 	.db 0x94
      00406D 80                    4406 	.db 0x80
      00406E E2                    4407 	.db 0xe2
      00406F 94                    4408 	.db 0x94
      004070 80                    4409 	.db 0x80
      004071 E2                    4410 	.db 0xe2
      004072 94                    4411 	.db 0x94
      004073 80                    4412 	.db 0x80
      004074 E2                    4413 	.db 0xe2
      004075 94                    4414 	.db 0x94
      004076 80                    4415 	.db 0x80
      004077 E2                    4416 	.db 0xe2
      004078 94                    4417 	.db 0x94
      004079 80                    4418 	.db 0x80
      00407A E2                    4419 	.db 0xe2
      00407B 94                    4420 	.db 0x94
      00407C B4                    4421 	.db 0xb4
      00407D E2                    4422 	.db 0xe2
      00407E 94                    4423 	.db 0x94
      00407F 80                    4424 	.db 0x80
      004080 E2                    4425 	.db 0xe2
      004081 94                    4426 	.db 0x94
      004082 80                    4427 	.db 0x80
      004083 E2                    4428 	.db 0xe2
      004084 94                    4429 	.db 0x94
      004085 80                    4430 	.db 0x80
      004086 E2                    4431 	.db 0xe2
      004087 94                    4432 	.db 0x94
      004088 80                    4433 	.db 0x80
      004089 E2                    4434 	.db 0xe2
      00408A 94                    4435 	.db 0x94
      00408B 80                    4436 	.db 0x80
      00408C E2                    4437 	.db 0xe2
      00408D 94                    4438 	.db 0x94
      00408E 80                    4439 	.db 0x80
      00408F E2                    4440 	.db 0xe2
      004090 94                    4441 	.db 0x94
      004091 80                    4442 	.db 0x80
      004092 E2                    4443 	.db 0xe2
      004093 94                    4444 	.db 0x94
      004094 80                    4445 	.db 0x80
      004095 E2                    4446 	.db 0xe2
      004096 94                    4447 	.db 0x94
      004097 80                    4448 	.db 0x80
      004098 E2                    4449 	.db 0xe2
      004099 94                    4450 	.db 0x94
      00409A 80                    4451 	.db 0x80
      00409B E2                    4452 	.db 0xe2
      00409C 94                    4453 	.db 0x94
      00409D 80                    4454 	.db 0x80
      00409E E2                    4455 	.db 0xe2
      00409F 94                    4456 	.db 0x94
      0040A0 80                    4457 	.db 0x80
      0040A1 E2                    4458 	.db 0xe2
      0040A2 94                    4459 	.db 0x94
      0040A3 80                    4460 	.db 0x80
      0040A4 E2                    4461 	.db 0xe2
      0040A5 94                    4462 	.db 0x94
      0040A6 80                    4463 	.db 0x80
      0040A7 E2                    4464 	.db 0xe2
      0040A8 94                    4465 	.db 0x94
      0040A9 80                    4466 	.db 0x80
      0040AA E2                    4467 	.db 0xe2
      0040AB 94                    4468 	.db 0x94
      0040AC 80                    4469 	.db 0x80
      0040AD E2                    4470 	.db 0xe2
      0040AE 94                    4471 	.db 0x94
      0040AF 80                    4472 	.db 0x80
      0040B0 E2                    4473 	.db 0xe2
      0040B1 94                    4474 	.db 0x94
      0040B2 80                    4475 	.db 0x80
      0040B3 E2                    4476 	.db 0xe2
      0040B4 94                    4477 	.db 0x94
      0040B5 80                    4478 	.db 0x80
      0040B6 E2                    4479 	.db 0xe2
      0040B7 94                    4480 	.db 0x94
      0040B8 80                    4481 	.db 0x80
      0040B9 E2                    4482 	.db 0xe2
      0040BA 94                    4483 	.db 0x94
      0040BB 80                    4484 	.db 0x80
      0040BC E2                    4485 	.db 0xe2
      0040BD 94                    4486 	.db 0x94
      0040BE 80                    4487 	.db 0x80
      0040BF E2                    4488 	.db 0xe2
      0040C0 94                    4489 	.db 0x94
      0040C1 80                    4490 	.db 0x80
      0040C2 E2                    4491 	.db 0xe2
      0040C3 94                    4492 	.db 0x94
      0040C4 80                    4493 	.db 0x80
      0040C5 E2                    4494 	.db 0xe2
      0040C6 94                    4495 	.db 0x94
      0040C7 80                    4496 	.db 0x80
      0040C8 E2                    4497 	.db 0xe2
      0040C9 94                    4498 	.db 0x94
      0040CA 80                    4499 	.db 0x80
      0040CB E2                    4500 	.db 0xe2
      0040CC 94                    4501 	.db 0x94
      0040CD 80                    4502 	.db 0x80
      0040CE E2                    4503 	.db 0xe2
      0040CF 94                    4504 	.db 0x94
      0040D0 80                    4505 	.db 0x80
      0040D1 E2                    4506 	.db 0xe2
      0040D2 94                    4507 	.db 0x94
      0040D3 80                    4508 	.db 0x80
      0040D4 E2                    4509 	.db 0xe2
      0040D5 94                    4510 	.db 0x94
      0040D6 80                    4511 	.db 0x80
      0040D7 E2                    4512 	.db 0xe2
      0040D8 94                    4513 	.db 0x94
      0040D9 80                    4514 	.db 0x80
      0040DA E2                    4515 	.db 0xe2
      0040DB 94                    4516 	.db 0x94
      0040DC 80                    4517 	.db 0x80
      0040DD E2                    4518 	.db 0xe2
      0040DE 94                    4519 	.db 0x94
      0040DF 80                    4520 	.db 0x80
      0040E0 E2                    4521 	.db 0xe2
      0040E1 94                    4522 	.db 0x94
      0040E2 80                    4523 	.db 0x80
      0040E3 E2                    4524 	.db 0xe2
      0040E4 94                    4525 	.db 0x94
      0040E5 80                    4526 	.db 0x80
      0040E6 E2                    4527 	.db 0xe2
      0040E7 94                    4528 	.db 0x94
      0040E8 80                    4529 	.db 0x80
      0040E9 E2                    4530 	.db 0xe2
      0040EA 94                    4531 	.db 0x94
      0040EB 80                    4532 	.db 0x80
      0040EC E2                    4533 	.db 0xe2
      0040ED 94                    4534 	.db 0x94
      0040EE 80                    4535 	.db 0x80
      0040EF E2                    4536 	.db 0xe2
      0040F0 94                    4537 	.db 0x94
      0040F1 80                    4538 	.db 0x80
      0040F2 E2                    4539 	.db 0xe2
      0040F3 94                    4540 	.db 0x94
      0040F4 80                    4541 	.db 0x80
      0040F5 E2                    4542 	.db 0xe2
      0040F6 94                    4543 	.db 0x94
      0040F7 80                    4544 	.db 0x80
      0040F8 E2                    4545 	.db 0xe2
      0040F9 94                    4546 	.db 0x94
      0040FA 80                    4547 	.db 0x80
      0040FB E2                    4548 	.db 0xe2
      0040FC 94                    4549 	.db 0x94
      0040FD 80                    4550 	.db 0x80
      0040FE E2                    4551 	.db 0xe2
      0040FF 94                    4552 	.db 0x94
      004100 80                    4553 	.db 0x80
      004101 E2                    4554 	.db 0xe2
      004102 94                    4555 	.db 0x94
      004103 98                    4556 	.db 0x98
      004104 0A                    4557 	.db 0x0a
      004105 0D                    4558 	.db 0x0d
      004106 00                    4559 	.db 0x00
                                   4560 	.area CSEG    (CODE)
                                   4561 	.area CONST   (CODE)
      004107                       4562 ___str_14:
      004107 7C 20 24 20 25 63     4563 	.ascii "| $ %c"
      00410D 0A                    4564 	.db 0x0a
      00410E 0D                    4565 	.db 0x0d
      00410F 00                    4566 	.db 0x00
                                   4567 	.area CSEG    (CODE)
                                   4568 	.area CONST   (CODE)
      004110                       4569 ___str_15:
      004110 0A                    4570 	.db 0x0a
      004111 0D                    4571 	.db 0x0d
      004112 00                    4572 	.db 0x00
                                   4573 	.area CSEG    (CODE)
                                   4574 	.area CONST   (CODE)
      004113                       4575 ___str_16:
      004113 0A                    4576 	.db 0x0a
      004114 E2                    4577 	.db 0xe2
      004115 94                    4578 	.db 0x94
      004116 8C                    4579 	.db 0x8c
      004117 E2                    4580 	.db 0xe2
      004118 94                    4581 	.db 0x94
      004119 80                    4582 	.db 0x80
      00411A E2                    4583 	.db 0xe2
      00411B 94                    4584 	.db 0x94
      00411C 80                    4585 	.db 0x80
      00411D E2                    4586 	.db 0xe2
      00411E 94                    4587 	.db 0x94
      00411F 80                    4588 	.db 0x80
      004120 E2                    4589 	.db 0xe2
      004121 94                    4590 	.db 0x94
      004122 80                    4591 	.db 0x80
      004123 E2                    4592 	.db 0xe2
      004124 94                    4593 	.db 0x94
      004125 80                    4594 	.db 0x80
      004126 E2                    4595 	.db 0xe2
      004127 94                    4596 	.db 0x94
      004128 80                    4597 	.db 0x80
      004129 E2                    4598 	.db 0xe2
      00412A 94                    4599 	.db 0x94
      00412B 80                    4600 	.db 0x80
      00412C E2                    4601 	.db 0xe2
      00412D 94                    4602 	.db 0x94
      00412E 80                    4603 	.db 0x80
      00412F E2                    4604 	.db 0xe2
      004130 94                    4605 	.db 0x94
      004131 80                    4606 	.db 0x80
      004132 E2                    4607 	.db 0xe2
      004133 94                    4608 	.db 0x94
      004134 80                    4609 	.db 0x80
      004135 E2                    4610 	.db 0xe2
      004136 94                    4611 	.db 0x94
      004137 80                    4612 	.db 0x80
      004138 E2                    4613 	.db 0xe2
      004139 94                    4614 	.db 0x94
      00413A 80                    4615 	.db 0x80
      00413B E2                    4616 	.db 0xe2
      00413C 94                    4617 	.db 0x94
      00413D 80                    4618 	.db 0x80
      00413E E2                    4619 	.db 0xe2
      00413F 94                    4620 	.db 0x94
      004140 80                    4621 	.db 0x80
      004141 E2                    4622 	.db 0xe2
      004142 94                    4623 	.db 0x94
      004143 80                    4624 	.db 0x80
      004144 20 57 52 49 54 45 20  4625 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      004155 E2                    4626 	.db 0xe2
      004156 94                    4627 	.db 0x94
      004157 80                    4628 	.db 0x80
      004158 E2                    4629 	.db 0xe2
      004159 94                    4630 	.db 0x94
      00415A 80                    4631 	.db 0x80
      00415B E2                    4632 	.db 0xe2
      00415C 94                    4633 	.db 0x94
      00415D 80                    4634 	.db 0x80
      00415E E2                    4635 	.db 0xe2
      00415F 94                    4636 	.db 0x94
      004160 80                    4637 	.db 0x80
      004161 E2                    4638 	.db 0xe2
      004162 94                    4639 	.db 0x94
      004163 80                    4640 	.db 0x80
      004164 E2                    4641 	.db 0xe2
      004165 94                    4642 	.db 0x94
      004166 80                    4643 	.db 0x80
      004167 E2                    4644 	.db 0xe2
      004168 94                    4645 	.db 0x94
      004169 80                    4646 	.db 0x80
      00416A E2                    4647 	.db 0xe2
      00416B 94                    4648 	.db 0x94
      00416C 80                    4649 	.db 0x80
      00416D E2                    4650 	.db 0xe2
      00416E 94                    4651 	.db 0x94
      00416F 80                    4652 	.db 0x80
      004170 E2                    4653 	.db 0xe2
      004171 94                    4654 	.db 0x94
      004172 80                    4655 	.db 0x80
      004173 E2                    4656 	.db 0xe2
      004174 94                    4657 	.db 0x94
      004175 80                    4658 	.db 0x80
      004176 E2                    4659 	.db 0xe2
      004177 94                    4660 	.db 0x94
      004178 80                    4661 	.db 0x80
      004179 E2                    4662 	.db 0xe2
      00417A 94                    4663 	.db 0x94
      00417B 80                    4664 	.db 0x80
      00417C E2                    4665 	.db 0xe2
      00417D 94                    4666 	.db 0x94
      00417E 80                    4667 	.db 0x80
      00417F E2                    4668 	.db 0xe2
      004180 94                    4669 	.db 0x94
      004181 90                    4670 	.db 0x90
      004182 0A                    4671 	.db 0x0a
      004183 0D                    4672 	.db 0x0d
      004184 00                    4673 	.db 0x00
                                   4674 	.area CSEG    (CODE)
                                   4675 	.area CONST   (CODE)
      004185                       4676 ___str_17:
      004185 0A                    4677 	.db 0x0a
      004186 E2                    4678 	.db 0xe2
      004187 94                    4679 	.db 0x94
      004188 8C                    4680 	.db 0x8c
      004189 E2                    4681 	.db 0xe2
      00418A 94                    4682 	.db 0x94
      00418B 80                    4683 	.db 0x80
      00418C E2                    4684 	.db 0xe2
      00418D 94                    4685 	.db 0x94
      00418E 80                    4686 	.db 0x80
      00418F E2                    4687 	.db 0xe2
      004190 94                    4688 	.db 0x94
      004191 80                    4689 	.db 0x80
      004192 E2                    4690 	.db 0xe2
      004193 94                    4691 	.db 0x94
      004194 80                    4692 	.db 0x80
      004195 E2                    4693 	.db 0xe2
      004196 94                    4694 	.db 0x94
      004197 80                    4695 	.db 0x80
      004198 E2                    4696 	.db 0xe2
      004199 94                    4697 	.db 0x94
      00419A 80                    4698 	.db 0x80
      00419B E2                    4699 	.db 0xe2
      00419C 94                    4700 	.db 0x94
      00419D 80                    4701 	.db 0x80
      00419E E2                    4702 	.db 0xe2
      00419F 94                    4703 	.db 0x94
      0041A0 80                    4704 	.db 0x80
      0041A1 E2                    4705 	.db 0xe2
      0041A2 94                    4706 	.db 0x94
      0041A3 80                    4707 	.db 0x80
      0041A4 E2                    4708 	.db 0xe2
      0041A5 94                    4709 	.db 0x94
      0041A6 80                    4710 	.db 0x80
      0041A7 E2                    4711 	.db 0xe2
      0041A8 94                    4712 	.db 0x94
      0041A9 80                    4713 	.db 0x80
      0041AA E2                    4714 	.db 0xe2
      0041AB 94                    4715 	.db 0x94
      0041AC 80                    4716 	.db 0x80
      0041AD E2                    4717 	.db 0xe2
      0041AE 94                    4718 	.db 0x94
      0041AF 80                    4719 	.db 0x80
      0041B0 E2                    4720 	.db 0xe2
      0041B1 94                    4721 	.db 0x94
      0041B2 80                    4722 	.db 0x80
      0041B3 E2                    4723 	.db 0xe2
      0041B4 94                    4724 	.db 0x94
      0041B5 80                    4725 	.db 0x80
      0041B6 20 52 45 41 44 20 4F  4726 	.ascii " READ OPERATION "
             50 45 52 41 54 49 4F
             4E 20
      0041C6 E2                    4727 	.db 0xe2
      0041C7 94                    4728 	.db 0x94
      0041C8 80                    4729 	.db 0x80
      0041C9 E2                    4730 	.db 0xe2
      0041CA 94                    4731 	.db 0x94
      0041CB 80                    4732 	.db 0x80
      0041CC E2                    4733 	.db 0xe2
      0041CD 94                    4734 	.db 0x94
      0041CE 80                    4735 	.db 0x80
      0041CF E2                    4736 	.db 0xe2
      0041D0 94                    4737 	.db 0x94
      0041D1 80                    4738 	.db 0x80
      0041D2 E2                    4739 	.db 0xe2
      0041D3 94                    4740 	.db 0x94
      0041D4 80                    4741 	.db 0x80
      0041D5 E2                    4742 	.db 0xe2
      0041D6 94                    4743 	.db 0x94
      0041D7 80                    4744 	.db 0x80
      0041D8 E2                    4745 	.db 0xe2
      0041D9 94                    4746 	.db 0x94
      0041DA 80                    4747 	.db 0x80
      0041DB E2                    4748 	.db 0xe2
      0041DC 94                    4749 	.db 0x94
      0041DD 80                    4750 	.db 0x80
      0041DE E2                    4751 	.db 0xe2
      0041DF 94                    4752 	.db 0x94
      0041E0 80                    4753 	.db 0x80
      0041E1 E2                    4754 	.db 0xe2
      0041E2 94                    4755 	.db 0x94
      0041E3 80                    4756 	.db 0x80
      0041E4 E2                    4757 	.db 0xe2
      0041E5 94                    4758 	.db 0x94
      0041E6 80                    4759 	.db 0x80
      0041E7 E2                    4760 	.db 0xe2
      0041E8 94                    4761 	.db 0x94
      0041E9 80                    4762 	.db 0x80
      0041EA E2                    4763 	.db 0xe2
      0041EB 94                    4764 	.db 0x94
      0041EC 80                    4765 	.db 0x80
      0041ED E2                    4766 	.db 0xe2
      0041EE 94                    4767 	.db 0x94
      0041EF 80                    4768 	.db 0x80
      0041F0 E2                    4769 	.db 0xe2
      0041F1 94                    4770 	.db 0x94
      0041F2 80                    4771 	.db 0x80
      0041F3 E2                    4772 	.db 0xe2
      0041F4 94                    4773 	.db 0x94
      0041F5 90                    4774 	.db 0x90
      0041F6 0A                    4775 	.db 0x0a
      0041F7 0D                    4776 	.db 0x0d
      0041F8 00                    4777 	.db 0x00
                                   4778 	.area CSEG    (CODE)
                                   4779 	.area CONST   (CODE)
      0041F9                       4780 ___str_18:
      0041F9 7C 20 52 65 61 64 69  4781 	.ascii "| Reading from Address 0x%03X           |"
             6E 67 20 66 72 6F 6D
             20 41 64 64 72 65 73
             73 20 30 78 25 30 33
             58 20 20 20 20 20 20
             20 20 20 20 20 7C
      004222 0A                    4782 	.db 0x0a
      004223 0D                    4783 	.db 0x0d
      004224 00                    4784 	.db 0x00
                                   4785 	.area CSEG    (CODE)
                                   4786 	.area CONST   (CODE)
      004225                       4787 ___str_19:
      004225 0A                    4788 	.db 0x0a
      004226 E2                    4789 	.db 0xe2
      004227 94                    4790 	.db 0x94
      004228 8C                    4791 	.db 0x8c
      004229 E2                    4792 	.db 0xe2
      00422A 94                    4793 	.db 0x94
      00422B 80                    4794 	.db 0x80
      00422C E2                    4795 	.db 0xe2
      00422D 94                    4796 	.db 0x94
      00422E 80                    4797 	.db 0x80
      00422F E2                    4798 	.db 0xe2
      004230 94                    4799 	.db 0x94
      004231 80                    4800 	.db 0x80
      004232 E2                    4801 	.db 0xe2
      004233 94                    4802 	.db 0x94
      004234 80                    4803 	.db 0x80
      004235 E2                    4804 	.db 0xe2
      004236 94                    4805 	.db 0x94
      004237 80                    4806 	.db 0x80
      004238 E2                    4807 	.db 0xe2
      004239 94                    4808 	.db 0x94
      00423A 80                    4809 	.db 0x80
      00423B E2                    4810 	.db 0xe2
      00423C 94                    4811 	.db 0x94
      00423D 80                    4812 	.db 0x80
      00423E E2                    4813 	.db 0xe2
      00423F 94                    4814 	.db 0x94
      004240 80                    4815 	.db 0x80
      004241 E2                    4816 	.db 0xe2
      004242 94                    4817 	.db 0x94
      004243 80                    4818 	.db 0x80
      004244 E2                    4819 	.db 0xe2
      004245 94                    4820 	.db 0x94
      004246 80                    4821 	.db 0x80
      004247 E2                    4822 	.db 0xe2
      004248 94                    4823 	.db 0x94
      004249 80                    4824 	.db 0x80
      00424A E2                    4825 	.db 0xe2
      00424B 94                    4826 	.db 0x94
      00424C 80                    4827 	.db 0x80
      00424D E2                    4828 	.db 0xe2
      00424E 94                    4829 	.db 0x94
      00424F 80                    4830 	.db 0x80
      004250 E2                    4831 	.db 0xe2
      004251 94                    4832 	.db 0x94
      004252 80                    4833 	.db 0x80
      004253 E2                    4834 	.db 0xe2
      004254 94                    4835 	.db 0x94
      004255 80                    4836 	.db 0x80
      004256 20 52 45 53 45 54 20  4837 	.ascii " RESET OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      004267 E2                    4838 	.db 0xe2
      004268 94                    4839 	.db 0x94
      004269 80                    4840 	.db 0x80
      00426A E2                    4841 	.db 0xe2
      00426B 94                    4842 	.db 0x94
      00426C 80                    4843 	.db 0x80
      00426D E2                    4844 	.db 0xe2
      00426E 94                    4845 	.db 0x94
      00426F 80                    4846 	.db 0x80
      004270 E2                    4847 	.db 0xe2
      004271 94                    4848 	.db 0x94
      004272 80                    4849 	.db 0x80
      004273 E2                    4850 	.db 0xe2
      004274 94                    4851 	.db 0x94
      004275 80                    4852 	.db 0x80
      004276 E2                    4853 	.db 0xe2
      004277 94                    4854 	.db 0x94
      004278 80                    4855 	.db 0x80
      004279 E2                    4856 	.db 0xe2
      00427A 94                    4857 	.db 0x94
      00427B 80                    4858 	.db 0x80
      00427C E2                    4859 	.db 0xe2
      00427D 94                    4860 	.db 0x94
      00427E 80                    4861 	.db 0x80
      00427F E2                    4862 	.db 0xe2
      004280 94                    4863 	.db 0x94
      004281 80                    4864 	.db 0x80
      004282 E2                    4865 	.db 0xe2
      004283 94                    4866 	.db 0x94
      004284 80                    4867 	.db 0x80
      004285 E2                    4868 	.db 0xe2
      004286 94                    4869 	.db 0x94
      004287 80                    4870 	.db 0x80
      004288 E2                    4871 	.db 0xe2
      004289 94                    4872 	.db 0x94
      00428A 90                    4873 	.db 0x90
      00428B 0A                    4874 	.db 0x0a
      00428C 0D                    4875 	.db 0x0d
      00428D 00                    4876 	.db 0x00
                                   4877 	.area CSEG    (CODE)
                                   4878 	.area CONST   (CODE)
      00428E                       4879 ___str_20:
      00428E 0A                    4880 	.db 0x0a
      00428F E2                    4881 	.db 0xe2
      004290 94                    4882 	.db 0x94
      004291 8C                    4883 	.db 0x8c
      004292 E2                    4884 	.db 0xe2
      004293 94                    4885 	.db 0x94
      004294 80                    4886 	.db 0x80
      004295 E2                    4887 	.db 0xe2
      004296 94                    4888 	.db 0x94
      004297 80                    4889 	.db 0x80
      004298 E2                    4890 	.db 0xe2
      004299 94                    4891 	.db 0x94
      00429A 80                    4892 	.db 0x80
      00429B E2                    4893 	.db 0xe2
      00429C 94                    4894 	.db 0x94
      00429D 80                    4895 	.db 0x80
      00429E E2                    4896 	.db 0xe2
      00429F 94                    4897 	.db 0x94
      0042A0 80                    4898 	.db 0x80
      0042A1 E2                    4899 	.db 0xe2
      0042A2 94                    4900 	.db 0x94
      0042A3 80                    4901 	.db 0x80
      0042A4 E2                    4902 	.db 0xe2
      0042A5 94                    4903 	.db 0x94
      0042A6 80                    4904 	.db 0x80
      0042A7 E2                    4905 	.db 0xe2
      0042A8 94                    4906 	.db 0x94
      0042A9 80                    4907 	.db 0x80
      0042AA E2                    4908 	.db 0xe2
      0042AB 94                    4909 	.db 0x94
      0042AC 80                    4910 	.db 0x80
      0042AD E2                    4911 	.db 0xe2
      0042AE 94                    4912 	.db 0x94
      0042AF 80                    4913 	.db 0x80
      0042B0 E2                    4914 	.db 0xe2
      0042B1 94                    4915 	.db 0x94
      0042B2 80                    4916 	.db 0x80
      0042B3 E2                    4917 	.db 0xe2
      0042B4 94                    4918 	.db 0x94
      0042B5 80                    4919 	.db 0x80
      0042B6 E2                    4920 	.db 0xe2
      0042B7 94                    4921 	.db 0x94
      0042B8 80                    4922 	.db 0x80
      0042B9 20 48 45 58 20 44 55  4923 	.ascii " HEX DUMP OPERATION "
             4D 50 20 4F 50 45 52
             41 54 49 4F 4E 20
      0042CD E2                    4924 	.db 0xe2
      0042CE 94                    4925 	.db 0x94
      0042CF 80                    4926 	.db 0x80
      0042D0 E2                    4927 	.db 0xe2
      0042D1 94                    4928 	.db 0x94
      0042D2 80                    4929 	.db 0x80
      0042D3 E2                    4930 	.db 0xe2
      0042D4 94                    4931 	.db 0x94
      0042D5 80                    4932 	.db 0x80
      0042D6 E2                    4933 	.db 0xe2
      0042D7 94                    4934 	.db 0x94
      0042D8 80                    4935 	.db 0x80
      0042D9 E2                    4936 	.db 0xe2
      0042DA 94                    4937 	.db 0x94
      0042DB 80                    4938 	.db 0x80
      0042DC E2                    4939 	.db 0xe2
      0042DD 94                    4940 	.db 0x94
      0042DE 80                    4941 	.db 0x80
      0042DF E2                    4942 	.db 0xe2
      0042E0 94                    4943 	.db 0x94
      0042E1 80                    4944 	.db 0x80
      0042E2 E2                    4945 	.db 0xe2
      0042E3 94                    4946 	.db 0x94
      0042E4 80                    4947 	.db 0x80
      0042E5 E2                    4948 	.db 0xe2
      0042E6 94                    4949 	.db 0x94
      0042E7 80                    4950 	.db 0x80
      0042E8 E2                    4951 	.db 0xe2
      0042E9 94                    4952 	.db 0x94
      0042EA 80                    4953 	.db 0x80
      0042EB E2                    4954 	.db 0xe2
      0042EC 94                    4955 	.db 0x94
      0042ED 80                    4956 	.db 0x80
      0042EE E2                    4957 	.db 0xe2
      0042EF 94                    4958 	.db 0x94
      0042F0 80                    4959 	.db 0x80
      0042F1 E2                    4960 	.db 0xe2
      0042F2 94                    4961 	.db 0x94
      0042F3 80                    4962 	.db 0x80
      0042F4 E2                    4963 	.db 0xe2
      0042F5 94                    4964 	.db 0x94
      0042F6 80                    4965 	.db 0x80
      0042F7 E2                    4966 	.db 0xe2
      0042F8 94                    4967 	.db 0x94
      0042F9 80                    4968 	.db 0x80
      0042FA E2                    4969 	.db 0xe2
      0042FB 94                    4970 	.db 0x94
      0042FC 90                    4971 	.db 0x90
      0042FD 0A                    4972 	.db 0x0a
      0042FE 0D                    4973 	.db 0x0d
      0042FF 00                    4974 	.db 0x00
                                   4975 	.area CSEG    (CODE)
                                   4976 	.area CONST   (CODE)
      004300                       4977 ___str_21:
      004300 0A                    4978 	.db 0x0a
      004301 E2                    4979 	.db 0xe2
      004302 94                    4980 	.db 0x94
      004303 8C                    4981 	.db 0x8c
      004304 E2                    4982 	.db 0xe2
      004305 94                    4983 	.db 0x94
      004306 80                    4984 	.db 0x80
      004307 E2                    4985 	.db 0xe2
      004308 94                    4986 	.db 0x94
      004309 80                    4987 	.db 0x80
      00430A E2                    4988 	.db 0xe2
      00430B 94                    4989 	.db 0x94
      00430C 80                    4990 	.db 0x80
      00430D E2                    4991 	.db 0xe2
      00430E 94                    4992 	.db 0x94
      00430F 80                    4993 	.db 0x80
      004310 E2                    4994 	.db 0xe2
      004311 94                    4995 	.db 0x94
      004312 80                    4996 	.db 0x80
      004313 E2                    4997 	.db 0xe2
      004314 94                    4998 	.db 0x94
      004315 80                    4999 	.db 0x80
      004316 E2                    5000 	.db 0xe2
      004317 94                    5001 	.db 0x94
      004318 80                    5002 	.db 0x80
      004319 E2                    5003 	.db 0xe2
      00431A 94                    5004 	.db 0x94
      00431B 80                    5005 	.db 0x80
      00431C E2                    5006 	.db 0xe2
      00431D 94                    5007 	.db 0x94
      00431E 80                    5008 	.db 0x80
      00431F E2                    5009 	.db 0xe2
      004320 94                    5010 	.db 0x94
      004321 80                    5011 	.db 0x80
      004322 E2                    5012 	.db 0xe2
      004323 94                    5013 	.db 0x94
      004324 80                    5014 	.db 0x80
      004325 E2                    5015 	.db 0xe2
      004326 94                    5016 	.db 0x94
      004327 80                    5017 	.db 0x80
      004328 E2                    5018 	.db 0xe2
      004329 94                    5019 	.db 0x94
      00432A 80                    5020 	.db 0x80
      00432B 20 49 4F 20 45 58 50  5021 	.ascii " IO EXPANDER OPERATION "
             41 4E 44 45 52 20 4F
             50 45 52 41 54 49 4F
             4E 20
      004342 E2                    5022 	.db 0xe2
      004343 94                    5023 	.db 0x94
      004344 80                    5024 	.db 0x80
      004345 E2                    5025 	.db 0xe2
      004346 94                    5026 	.db 0x94
      004347 80                    5027 	.db 0x80
      004348 E2                    5028 	.db 0xe2
      004349 94                    5029 	.db 0x94
      00434A 80                    5030 	.db 0x80
      00434B E2                    5031 	.db 0xe2
      00434C 94                    5032 	.db 0x94
      00434D 80                    5033 	.db 0x80
      00434E E2                    5034 	.db 0xe2
      00434F 94                    5035 	.db 0x94
      004350 80                    5036 	.db 0x80
      004351 E2                    5037 	.db 0xe2
      004352 94                    5038 	.db 0x94
      004353 80                    5039 	.db 0x80
      004354 E2                    5040 	.db 0xe2
      004355 94                    5041 	.db 0x94
      004356 80                    5042 	.db 0x80
      004357 E2                    5043 	.db 0xe2
      004358 94                    5044 	.db 0x94
      004359 80                    5045 	.db 0x80
      00435A E2                    5046 	.db 0xe2
      00435B 94                    5047 	.db 0x94
      00435C 80                    5048 	.db 0x80
      00435D E2                    5049 	.db 0xe2
      00435E 94                    5050 	.db 0x94
      00435F 80                    5051 	.db 0x80
      004360 E2                    5052 	.db 0xe2
      004361 94                    5053 	.db 0x94
      004362 80                    5054 	.db 0x80
      004363 E2                    5055 	.db 0xe2
      004364 94                    5056 	.db 0x94
      004365 80                    5057 	.db 0x80
      004366 E2                    5058 	.db 0xe2
      004367 94                    5059 	.db 0x94
      004368 80                    5060 	.db 0x80
      004369 E2                    5061 	.db 0xe2
      00436A 94                    5062 	.db 0x94
      00436B 80                    5063 	.db 0x80
      00436C E2                    5064 	.db 0xe2
      00436D 94                    5065 	.db 0x94
      00436E 80                    5066 	.db 0x80
      00436F E2                    5067 	.db 0xe2
      004370 94                    5068 	.db 0x94
      004371 90                    5069 	.db 0x90
      004372 0A                    5070 	.db 0x0a
      004373 0D                    5071 	.db 0x0d
      004374 00                    5072 	.db 0x00
                                   5073 	.area CSEG    (CODE)
                                   5074 	.area CONST   (CODE)
      004375                       5075 ___str_22:
      004375 0A                    5076 	.db 0x0a
      004376 E2                    5077 	.db 0xe2
      004377 94                    5078 	.db 0x94
      004378 8C                    5079 	.db 0x8c
      004379 E2                    5080 	.db 0xe2
      00437A 94                    5081 	.db 0x94
      00437B 80                    5082 	.db 0x80
      00437C E2                    5083 	.db 0xe2
      00437D 94                    5084 	.db 0x94
      00437E 80                    5085 	.db 0x80
      00437F E2                    5086 	.db 0xe2
      004380 94                    5087 	.db 0x94
      004381 80                    5088 	.db 0x80
      004382 E2                    5089 	.db 0xe2
      004383 94                    5090 	.db 0x94
      004384 80                    5091 	.db 0x80
      004385 E2                    5092 	.db 0xe2
      004386 94                    5093 	.db 0x94
      004387 80                    5094 	.db 0x80
      004388 E2                    5095 	.db 0xe2
      004389 94                    5096 	.db 0x94
      00438A 80                    5097 	.db 0x80
      00438B E2                    5098 	.db 0xe2
      00438C 94                    5099 	.db 0x94
      00438D 80                    5100 	.db 0x80
      00438E E2                    5101 	.db 0xe2
      00438F 94                    5102 	.db 0x94
      004390 80                    5103 	.db 0x80
      004391 E2                    5104 	.db 0xe2
      004392 94                    5105 	.db 0x94
      004393 80                    5106 	.db 0x80
      004394 E2                    5107 	.db 0xe2
      004395 94                    5108 	.db 0x94
      004396 80                    5109 	.db 0x80
      004397 E2                    5110 	.db 0xe2
      004398 94                    5111 	.db 0x94
      004399 80                    5112 	.db 0x80
      00439A E2                    5113 	.db 0xe2
      00439B 94                    5114 	.db 0x94
      00439C 80                    5115 	.db 0x80
      00439D E2                    5116 	.db 0xe2
      00439E 94                    5117 	.db 0x94
      00439F 80                    5118 	.db 0x80
      0043A0 20 49 4F 20 45 58 50  5119 	.ascii " IO EXPANDER LEAVE "
             41 4E 44 45 52 20 4C
             45 41 56 45 20
      0043B3 E2                    5120 	.db 0xe2
      0043B4 94                    5121 	.db 0x94
      0043B5 80                    5122 	.db 0x80
      0043B6 E2                    5123 	.db 0xe2
      0043B7 94                    5124 	.db 0x94
      0043B8 80                    5125 	.db 0x80
      0043B9 E2                    5126 	.db 0xe2
      0043BA 94                    5127 	.db 0x94
      0043BB 80                    5128 	.db 0x80
      0043BC E2                    5129 	.db 0xe2
      0043BD 94                    5130 	.db 0x94
      0043BE 80                    5131 	.db 0x80
      0043BF E2                    5132 	.db 0xe2
      0043C0 94                    5133 	.db 0x94
      0043C1 80                    5134 	.db 0x80
      0043C2 E2                    5135 	.db 0xe2
      0043C3 94                    5136 	.db 0x94
      0043C4 80                    5137 	.db 0x80
      0043C5 E2                    5138 	.db 0xe2
      0043C6 94                    5139 	.db 0x94
      0043C7 80                    5140 	.db 0x80
      0043C8 E2                    5141 	.db 0xe2
      0043C9 94                    5142 	.db 0x94
      0043CA 80                    5143 	.db 0x80
      0043CB E2                    5144 	.db 0xe2
      0043CC 94                    5145 	.db 0x94
      0043CD 80                    5146 	.db 0x80
      0043CE E2                    5147 	.db 0xe2
      0043CF 94                    5148 	.db 0x94
      0043D0 80                    5149 	.db 0x80
      0043D1 E2                    5150 	.db 0xe2
      0043D2 94                    5151 	.db 0x94
      0043D3 80                    5152 	.db 0x80
      0043D4 E2                    5153 	.db 0xe2
      0043D5 94                    5154 	.db 0x94
      0043D6 80                    5155 	.db 0x80
      0043D7 E2                    5156 	.db 0xe2
      0043D8 94                    5157 	.db 0x94
      0043D9 80                    5158 	.db 0x80
      0043DA E2                    5159 	.db 0xe2
      0043DB 94                    5160 	.db 0x94
      0043DC 80                    5161 	.db 0x80
      0043DD E2                    5162 	.db 0xe2
      0043DE 94                    5163 	.db 0x94
      0043DF 80                    5164 	.db 0x80
      0043E0 E2                    5165 	.db 0xe2
      0043E1 94                    5166 	.db 0x94
      0043E2 90                    5167 	.db 0x90
      0043E3 0A                    5168 	.db 0x0a
      0043E4 0D                    5169 	.db 0x0d
      0043E5 00                    5170 	.db 0x00
                                   5171 	.area CSEG    (CODE)
                                   5172 	.area CONST   (CODE)
      0043E6                       5173 ___str_23:
      0043E6 49 4E 56 41 4C 49 44  5174 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      0043F3 0A                    5175 	.db 0x0a
      0043F4 0D                    5176 	.db 0x0d
      0043F5 00                    5177 	.db 0x00
                                   5178 	.area CSEG    (CODE)
                                   5179 	.area CONST   (CODE)
      0043F6                       5180 ___str_24:
      0043F6 E2                    5181 	.db 0xe2
      0043F7 94                    5182 	.db 0x94
      0043F8 82                    5183 	.db 0x82
      0043F9 20 45 6E 74 65 72 20  5184 	.ascii " Enter address (hex, up to 3 characters): "
             61 64 64 72 65 73 73
             20 28 68 65 78 2C 20
             75 70 20 74 6F 20 33
             20 63 68 61 72 61 63
             74 65 72 73 29 3A 20
      004423 0A                    5185 	.db 0x0a
      004424 0D                    5186 	.db 0x0d
      004425 7C                    5187 	.ascii "|"
      004426 00                    5188 	.db 0x00
                                   5189 	.area CSEG    (CODE)
                                   5190 	.area CONST   (CODE)
      004427                       5191 ___str_25:
      004427 7C 20 24 20           5192 	.ascii "| $ "
      00442B 00                    5193 	.db 0x00
                                   5194 	.area CSEG    (CODE)
                                   5195 	.area CONST   (CODE)
      00442C                       5196 ___str_26:
      00442C 0A                    5197 	.db 0x0a
      00442D 0D                    5198 	.db 0x0d
      00442E E2                    5199 	.db 0xe2
      00442F 94                    5200 	.db 0x94
      004430 82                    5201 	.db 0x82
      004431 20 45 6E 74 65 72 65  5202 	.ascii " Entered address: 0x%03X"
             64 20 61 64 64 72 65
             73 73 3A 20 30 78 25
             30 33 58
      004449 0A                    5203 	.db 0x0a
      00444A 0D                    5204 	.db 0x0d
      00444B 00                    5205 	.db 0x00
                                   5206 	.area CSEG    (CODE)
                                   5207 	.area CONST   (CODE)
      00444C                       5208 ___str_27:
      00444C E2                    5209 	.db 0xe2
      00444D 95                    5210 	.db 0x95
      00444E 94                    5211 	.db 0x94
      00444F E2                    5212 	.db 0xe2
      004450 95                    5213 	.db 0x95
      004451 90                    5214 	.db 0x90
      004452 E2                    5215 	.db 0xe2
      004453 95                    5216 	.db 0x95
      004454 90                    5217 	.db 0x90
      004455 E2                    5218 	.db 0xe2
      004456 95                    5219 	.db 0x95
      004457 90                    5220 	.db 0x90
      004458 E2                    5221 	.db 0xe2
      004459 95                    5222 	.db 0x95
      00445A 90                    5223 	.db 0x90
      00445B E2                    5224 	.db 0xe2
      00445C 95                    5225 	.db 0x95
      00445D 90                    5226 	.db 0x90
      00445E E2                    5227 	.db 0xe2
      00445F 95                    5228 	.db 0x95
      004460 90                    5229 	.db 0x90
      004461 E2                    5230 	.db 0xe2
      004462 95                    5231 	.db 0x95
      004463 90                    5232 	.db 0x90
      004464 E2                    5233 	.db 0xe2
      004465 95                    5234 	.db 0x95
      004466 90                    5235 	.db 0x90
      004467 E2                    5236 	.db 0xe2
      004468 95                    5237 	.db 0x95
      004469 90                    5238 	.db 0x90
      00446A E2                    5239 	.db 0xe2
      00446B 95                    5240 	.db 0x95
      00446C 90                    5241 	.db 0x90
      00446D E2                    5242 	.db 0xe2
      00446E 95                    5243 	.db 0x95
      00446F 90                    5244 	.db 0x90
      004470 E2                    5245 	.db 0xe2
      004471 95                    5246 	.db 0x95
      004472 90                    5247 	.db 0x90
      004473 E2                    5248 	.db 0xe2
      004474 95                    5249 	.db 0x95
      004475 90                    5250 	.db 0x90
      004476 E2                    5251 	.db 0xe2
      004477 95                    5252 	.db 0x95
      004478 90                    5253 	.db 0x90
      004479 E2                    5254 	.db 0xe2
      00447A 95                    5255 	.db 0x95
      00447B 90                    5256 	.db 0x90
      00447C E2                    5257 	.db 0xe2
      00447D 95                    5258 	.db 0x95
      00447E 90                    5259 	.db 0x90
      00447F E2                    5260 	.db 0xe2
      004480 95                    5261 	.db 0x95
      004481 90                    5262 	.db 0x90
      004482 E2                    5263 	.db 0xe2
      004483 95                    5264 	.db 0x95
      004484 90                    5265 	.db 0x90
      004485 E2                    5266 	.db 0xe2
      004486 95                    5267 	.db 0x95
      004487 90                    5268 	.db 0x90
      004488 E2                    5269 	.db 0xe2
      004489 95                    5270 	.db 0x95
      00448A 90                    5271 	.db 0x90
      00448B E2                    5272 	.db 0xe2
      00448C 95                    5273 	.db 0x95
      00448D 90                    5274 	.db 0x90
      00448E E2                    5275 	.db 0xe2
      00448F 95                    5276 	.db 0x95
      004490 90                    5277 	.db 0x90
      004491 E2                    5278 	.db 0xe2
      004492 95                    5279 	.db 0x95
      004493 90                    5280 	.db 0x90
      004494 E2                    5281 	.db 0xe2
      004495 95                    5282 	.db 0x95
      004496 90                    5283 	.db 0x90
      004497 E2                    5284 	.db 0xe2
      004498 95                    5285 	.db 0x95
      004499 90                    5286 	.db 0x90
      00449A E2                    5287 	.db 0xe2
      00449B 95                    5288 	.db 0x95
      00449C 90                    5289 	.db 0x90
      00449D E2                    5290 	.db 0xe2
      00449E 95                    5291 	.db 0x95
      00449F 90                    5292 	.db 0x90
      0044A0 E2                    5293 	.db 0xe2
      0044A1 95                    5294 	.db 0x95
      0044A2 90                    5295 	.db 0x90
      0044A3 E2                    5296 	.db 0xe2
      0044A4 95                    5297 	.db 0x95
      0044A5 90                    5298 	.db 0x90
      0044A6 E2                    5299 	.db 0xe2
      0044A7 95                    5300 	.db 0x95
      0044A8 90                    5301 	.db 0x90
      0044A9 E2                    5302 	.db 0xe2
      0044AA 95                    5303 	.db 0x95
      0044AB 90                    5304 	.db 0x90
      0044AC E2                    5305 	.db 0xe2
      0044AD 95                    5306 	.db 0x95
      0044AE 90                    5307 	.db 0x90
      0044AF E2                    5308 	.db 0xe2
      0044B0 95                    5309 	.db 0x95
      0044B1 90                    5310 	.db 0x90
      0044B2 E2                    5311 	.db 0xe2
      0044B3 95                    5312 	.db 0x95
      0044B4 90                    5313 	.db 0x90
      0044B5 E2                    5314 	.db 0xe2
      0044B6 95                    5315 	.db 0x95
      0044B7 90                    5316 	.db 0x90
      0044B8 E2                    5317 	.db 0xe2
      0044B9 95                    5318 	.db 0x95
      0044BA 90                    5319 	.db 0x90
      0044BB E2                    5320 	.db 0xe2
      0044BC 95                    5321 	.db 0x95
      0044BD 90                    5322 	.db 0x90
      0044BE E2                    5323 	.db 0xe2
      0044BF 95                    5324 	.db 0x95
      0044C0 90                    5325 	.db 0x90
      0044C1 E2                    5326 	.db 0xe2
      0044C2 95                    5327 	.db 0x95
      0044C3 90                    5328 	.db 0x90
      0044C4 E2                    5329 	.db 0xe2
      0044C5 95                    5330 	.db 0x95
      0044C6 90                    5331 	.db 0x90
      0044C7 E2                    5332 	.db 0xe2
      0044C8 95                    5333 	.db 0x95
      0044C9 90                    5334 	.db 0x90
      0044CA E2                    5335 	.db 0xe2
      0044CB 95                    5336 	.db 0x95
      0044CC 90                    5337 	.db 0x90
      0044CD E2                    5338 	.db 0xe2
      0044CE 95                    5339 	.db 0x95
      0044CF 97                    5340 	.db 0x97
      0044D0 0A                    5341 	.db 0x0a
      0044D1 0D                    5342 	.db 0x0d
      0044D2 00                    5343 	.db 0x00
                                   5344 	.area CSEG    (CODE)
                                   5345 	.area CONST   (CODE)
      0044D3                       5346 ___str_28:
      0044D3 E2                    5347 	.db 0xe2
      0044D4 95                    5348 	.db 0x95
      0044D5 91                    5349 	.db 0x91
      0044D6 20 20 20 20 20 20 20  5350 	.ascii "       ! ADDRESS OUT OF RANGE !         "
             21 20 41 44 44 52 45
             53 53 20 4F 55 54 20
             4F 46 20 52 41 4E 47
             45 20 21 20 20 20 20
             20 20 20 20 20
      0044FE E2                    5351 	.db 0xe2
      0044FF 95                    5352 	.db 0x95
      004500 91                    5353 	.db 0x91
      004501 0A                    5354 	.db 0x0a
      004502 0D                    5355 	.db 0x0d
      004503 00                    5356 	.db 0x00
                                   5357 	.area CSEG    (CODE)
                                   5358 	.area CONST   (CODE)
      004504                       5359 ___str_29:
      004504 E2                    5360 	.db 0xe2
      004505 95                    5361 	.db 0x95
      004506 91                    5362 	.db 0x91
      004507 20 20 20 20 20 50 6C  5363 	.ascii "     Please Enter Valid Address         "
             65 61 73 65 20 45 6E
             74 65 72 20 56 61 6C
             69 64 20 41 64 64 72
             65 73 73 20 20 20 20
             20 20 20 20 20
      00452F E2                    5364 	.db 0xe2
      004530 95                    5365 	.db 0x95
      004531 91                    5366 	.db 0x91
      004532 0A                    5367 	.db 0x0a
      004533 0D                    5368 	.db 0x0d
      004534 00                    5369 	.db 0x00
                                   5370 	.area CSEG    (CODE)
                                   5371 	.area CONST   (CODE)
      004535                       5372 ___str_30:
      004535 E2                    5373 	.db 0xe2
      004536 95                    5374 	.db 0x95
      004537 9A                    5375 	.db 0x9a
      004538 E2                    5376 	.db 0xe2
      004539 95                    5377 	.db 0x95
      00453A 90                    5378 	.db 0x90
      00453B E2                    5379 	.db 0xe2
      00453C 95                    5380 	.db 0x95
      00453D 90                    5381 	.db 0x90
      00453E E2                    5382 	.db 0xe2
      00453F 95                    5383 	.db 0x95
      004540 90                    5384 	.db 0x90
      004541 E2                    5385 	.db 0xe2
      004542 95                    5386 	.db 0x95
      004543 90                    5387 	.db 0x90
      004544 E2                    5388 	.db 0xe2
      004545 95                    5389 	.db 0x95
      004546 90                    5390 	.db 0x90
      004547 E2                    5391 	.db 0xe2
      004548 95                    5392 	.db 0x95
      004549 90                    5393 	.db 0x90
      00454A E2                    5394 	.db 0xe2
      00454B 95                    5395 	.db 0x95
      00454C 90                    5396 	.db 0x90
      00454D E2                    5397 	.db 0xe2
      00454E 95                    5398 	.db 0x95
      00454F 90                    5399 	.db 0x90
      004550 E2                    5400 	.db 0xe2
      004551 95                    5401 	.db 0x95
      004552 90                    5402 	.db 0x90
      004553 E2                    5403 	.db 0xe2
      004554 95                    5404 	.db 0x95
      004555 90                    5405 	.db 0x90
      004556 E2                    5406 	.db 0xe2
      004557 95                    5407 	.db 0x95
      004558 90                    5408 	.db 0x90
      004559 E2                    5409 	.db 0xe2
      00455A 95                    5410 	.db 0x95
      00455B 90                    5411 	.db 0x90
      00455C E2                    5412 	.db 0xe2
      00455D 95                    5413 	.db 0x95
      00455E 90                    5414 	.db 0x90
      00455F E2                    5415 	.db 0xe2
      004560 95                    5416 	.db 0x95
      004561 90                    5417 	.db 0x90
      004562 E2                    5418 	.db 0xe2
      004563 95                    5419 	.db 0x95
      004564 90                    5420 	.db 0x90
      004565 E2                    5421 	.db 0xe2
      004566 95                    5422 	.db 0x95
      004567 90                    5423 	.db 0x90
      004568 E2                    5424 	.db 0xe2
      004569 95                    5425 	.db 0x95
      00456A 90                    5426 	.db 0x90
      00456B E2                    5427 	.db 0xe2
      00456C 95                    5428 	.db 0x95
      00456D 90                    5429 	.db 0x90
      00456E E2                    5430 	.db 0xe2
      00456F 95                    5431 	.db 0x95
      004570 90                    5432 	.db 0x90
      004571 E2                    5433 	.db 0xe2
      004572 95                    5434 	.db 0x95
      004573 90                    5435 	.db 0x90
      004574 E2                    5436 	.db 0xe2
      004575 95                    5437 	.db 0x95
      004576 90                    5438 	.db 0x90
      004577 E2                    5439 	.db 0xe2
      004578 95                    5440 	.db 0x95
      004579 90                    5441 	.db 0x90
      00457A E2                    5442 	.db 0xe2
      00457B 95                    5443 	.db 0x95
      00457C 90                    5444 	.db 0x90
      00457D E2                    5445 	.db 0xe2
      00457E 95                    5446 	.db 0x95
      00457F 90                    5447 	.db 0x90
      004580 E2                    5448 	.db 0xe2
      004581 95                    5449 	.db 0x95
      004582 90                    5450 	.db 0x90
      004583 E2                    5451 	.db 0xe2
      004584 95                    5452 	.db 0x95
      004585 90                    5453 	.db 0x90
      004586 E2                    5454 	.db 0xe2
      004587 95                    5455 	.db 0x95
      004588 90                    5456 	.db 0x90
      004589 E2                    5457 	.db 0xe2
      00458A 95                    5458 	.db 0x95
      00458B 90                    5459 	.db 0x90
      00458C E2                    5460 	.db 0xe2
      00458D 95                    5461 	.db 0x95
      00458E 90                    5462 	.db 0x90
      00458F E2                    5463 	.db 0xe2
      004590 95                    5464 	.db 0x95
      004591 90                    5465 	.db 0x90
      004592 E2                    5466 	.db 0xe2
      004593 95                    5467 	.db 0x95
      004594 90                    5468 	.db 0x90
      004595 E2                    5469 	.db 0xe2
      004596 95                    5470 	.db 0x95
      004597 90                    5471 	.db 0x90
      004598 E2                    5472 	.db 0xe2
      004599 95                    5473 	.db 0x95
      00459A 90                    5474 	.db 0x90
      00459B E2                    5475 	.db 0xe2
      00459C 95                    5476 	.db 0x95
      00459D 90                    5477 	.db 0x90
      00459E E2                    5478 	.db 0xe2
      00459F 95                    5479 	.db 0x95
      0045A0 90                    5480 	.db 0x90
      0045A1 E2                    5481 	.db 0xe2
      0045A2 95                    5482 	.db 0x95
      0045A3 90                    5483 	.db 0x90
      0045A4 E2                    5484 	.db 0xe2
      0045A5 95                    5485 	.db 0x95
      0045A6 90                    5486 	.db 0x90
      0045A7 E2                    5487 	.db 0xe2
      0045A8 95                    5488 	.db 0x95
      0045A9 90                    5489 	.db 0x90
      0045AA E2                    5490 	.db 0xe2
      0045AB 95                    5491 	.db 0x95
      0045AC 90                    5492 	.db 0x90
      0045AD E2                    5493 	.db 0xe2
      0045AE 95                    5494 	.db 0x95
      0045AF 90                    5495 	.db 0x90
      0045B0 E2                    5496 	.db 0xe2
      0045B1 95                    5497 	.db 0x95
      0045B2 90                    5498 	.db 0x90
      0045B3 E2                    5499 	.db 0xe2
      0045B4 95                    5500 	.db 0x95
      0045B5 90                    5501 	.db 0x90
      0045B6 E2                    5502 	.db 0xe2
      0045B7 95                    5503 	.db 0x95
      0045B8 9D                    5504 	.db 0x9d
      0045B9 0A                    5505 	.db 0x0a
      0045BA 0D                    5506 	.db 0x0d
      0045BB 00                    5507 	.db 0x00
                                   5508 	.area CSEG    (CODE)
                                   5509 	.area CONST   (CODE)
      0045BC                       5510 ___str_31:
      0045BC 7C 20 42 6C 6F 63 6B  5511 	.ascii "| Block number %d                            "
             20 6E 75 6D 62 65 72
             20 25 64 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20
      0045E9 0A                    5512 	.db 0x0a
      0045EA 0D                    5513 	.db 0x0d
      0045EB 00                    5514 	.db 0x00
                                   5515 	.area CSEG    (CODE)
                                   5516 	.area CONST   (CODE)
      0045EC                       5517 ___str_32:
      0045EC E2                    5518 	.db 0xe2
      0045ED 94                    5519 	.db 0x94
      0045EE 82                    5520 	.db 0x82
      0045EF 20 45 6E 74 65 72 20  5521 	.ascii " Enter data (hex, up to 2 characters): "
             64 61 74 61 20 28 68
             65 78 2C 20 75 70 20
             74 6F 20 32 20 63 68
             61 72 61 63 74 65 72
             73 29 3A 20
      004616 0A                    5522 	.db 0x0a
      004617 0D                    5523 	.db 0x0d
      004618 7C                    5524 	.ascii "|"
      004619 00                    5525 	.db 0x00
                                   5526 	.area CSEG    (CODE)
                                   5527 	.area CONST   (CODE)
      00461A                       5528 ___str_33:
      00461A 24 20                 5529 	.ascii "$ "
      00461C 00                    5530 	.db 0x00
                                   5531 	.area CSEG    (CODE)
                                   5532 	.area CONST   (CODE)
      00461D                       5533 ___str_34:
      00461D 0A                    5534 	.db 0x0a
      00461E 0D                    5535 	.db 0x0d
      00461F E2                    5536 	.db 0xe2
      004620 94                    5537 	.db 0x94
      004621 82                    5538 	.db 0x82
      004622 20 45 6E 74 65 72 65  5539 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      004637 0A                    5540 	.db 0x0a
      004638 0D                    5541 	.db 0x0d
      004639 00                    5542 	.db 0x00
                                   5543 	.area CSEG    (CODE)
                                   5544 	.area CONST   (CODE)
      00463A                       5545 ___str_35:
      00463A 44 61 74 61 20 6F 75  5546 	.ascii "Data out of Range"
             74 20 6F 66 20 52 61
             6E 67 65
      00464B 0A                    5547 	.db 0x0a
      00464C 0D                    5548 	.db 0x0d
      00464D 00                    5549 	.db 0x00
                                   5550 	.area CSEG    (CODE)
                                   5551 	.area CONST   (CODE)
      00464E                       5552 ___str_36:
      00464E 45 72 72 6F 72 3A 20  5553 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      004676 0A                    5554 	.db 0x0a
      004677 0D                    5555 	.db 0x0d
      004678 00                    5556 	.db 0x00
                                   5557 	.area CSEG    (CODE)
                                   5558 	.area CONST   (CODE)
      004679                       5559 ___str_37:
      004679 45 72 72 6F 72 3A 20  5560 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      004699 0A                    5561 	.db 0x0a
      00469A 0D                    5562 	.db 0x0d
      00469B 00                    5563 	.db 0x00
                                   5564 	.area CSEG    (CODE)
                                   5565 	.area CONST   (CODE)
      00469C                       5566 ___str_38:
      00469C 45 72 72 6F 72 3A 20  5567 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      0046B2 0A                    5568 	.db 0x0a
      0046B3 0D                    5569 	.db 0x0d
      0046B4 00                    5570 	.db 0x00
                                   5571 	.area CSEG    (CODE)
                                   5572 	.area CONST   (CODE)
      0046B5                       5573 ___str_39:
      0046B5 7C 20 57 72 69 74 69  5574 	.ascii "| Writing at Address 0x%03X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 33 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      0046E7 0A                    5575 	.db 0x0a
      0046E8 0D                    5576 	.db 0x0d
      0046E9 00                    5577 	.db 0x00
                                   5578 	.area CSEG    (CODE)
                                   5579 	.area CONST   (CODE)
      0046EA                       5580 ___str_40:
      0046EA E2                    5581 	.db 0xe2
      0046EB 94                    5582 	.db 0x94
      0046EC 82                    5583 	.db 0x82
      0046ED 20 57 72 69 74 65 20  5584 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      00471C E2                    5585 	.db 0xe2
      00471D 94                    5586 	.db 0x94
      00471E 82                    5587 	.db 0x82
      00471F 0A                    5588 	.db 0x0a
      004720 0D                    5589 	.db 0x0d
      004721 00                    5590 	.db 0x00
                                   5591 	.area CSEG    (CODE)
                                   5592 	.area CONST   (CODE)
      004722                       5593 ___str_41:
      004722 E2                    5594 	.db 0xe2
      004723 94                    5595 	.db 0x94
      004724 94                    5596 	.db 0x94
      004725 E2                    5597 	.db 0xe2
      004726 94                    5598 	.db 0x94
      004727 80                    5599 	.db 0x80
      004728 E2                    5600 	.db 0xe2
      004729 94                    5601 	.db 0x94
      00472A 80                    5602 	.db 0x80
      00472B E2                    5603 	.db 0xe2
      00472C 94                    5604 	.db 0x94
      00472D 80                    5605 	.db 0x80
      00472E E2                    5606 	.db 0xe2
      00472F 94                    5607 	.db 0x94
      004730 80                    5608 	.db 0x80
      004731 E2                    5609 	.db 0xe2
      004732 94                    5610 	.db 0x94
      004733 80                    5611 	.db 0x80
      004734 E2                    5612 	.db 0xe2
      004735 94                    5613 	.db 0x94
      004736 80                    5614 	.db 0x80
      004737 E2                    5615 	.db 0xe2
      004738 94                    5616 	.db 0x94
      004739 80                    5617 	.db 0x80
      00473A E2                    5618 	.db 0xe2
      00473B 94                    5619 	.db 0x94
      00473C 80                    5620 	.db 0x80
      00473D E2                    5621 	.db 0xe2
      00473E 94                    5622 	.db 0x94
      00473F 80                    5623 	.db 0x80
      004740 E2                    5624 	.db 0xe2
      004741 94                    5625 	.db 0x94
      004742 80                    5626 	.db 0x80
      004743 E2                    5627 	.db 0xe2
      004744 94                    5628 	.db 0x94
      004745 80                    5629 	.db 0x80
      004746 E2                    5630 	.db 0xe2
      004747 94                    5631 	.db 0x94
      004748 80                    5632 	.db 0x80
      004749 E2                    5633 	.db 0xe2
      00474A 94                    5634 	.db 0x94
      00474B 80                    5635 	.db 0x80
      00474C E2                    5636 	.db 0xe2
      00474D 94                    5637 	.db 0x94
      00474E 80                    5638 	.db 0x80
      00474F E2                    5639 	.db 0xe2
      004750 94                    5640 	.db 0x94
      004751 80                    5641 	.db 0x80
      004752 E2                    5642 	.db 0xe2
      004753 94                    5643 	.db 0x94
      004754 80                    5644 	.db 0x80
      004755 E2                    5645 	.db 0xe2
      004756 94                    5646 	.db 0x94
      004757 80                    5647 	.db 0x80
      004758 E2                    5648 	.db 0xe2
      004759 94                    5649 	.db 0x94
      00475A 80                    5650 	.db 0x80
      00475B E2                    5651 	.db 0xe2
      00475C 94                    5652 	.db 0x94
      00475D 80                    5653 	.db 0x80
      00475E E2                    5654 	.db 0xe2
      00475F 94                    5655 	.db 0x94
      004760 80                    5656 	.db 0x80
      004761 E2                    5657 	.db 0xe2
      004762 94                    5658 	.db 0x94
      004763 80                    5659 	.db 0x80
      004764 E2                    5660 	.db 0xe2
      004765 94                    5661 	.db 0x94
      004766 80                    5662 	.db 0x80
      004767 E2                    5663 	.db 0xe2
      004768 94                    5664 	.db 0x94
      004769 80                    5665 	.db 0x80
      00476A E2                    5666 	.db 0xe2
      00476B 94                    5667 	.db 0x94
      00476C 80                    5668 	.db 0x80
      00476D E2                    5669 	.db 0xe2
      00476E 94                    5670 	.db 0x94
      00476F 80                    5671 	.db 0x80
      004770 E2                    5672 	.db 0xe2
      004771 94                    5673 	.db 0x94
      004772 80                    5674 	.db 0x80
      004773 E2                    5675 	.db 0xe2
      004774 94                    5676 	.db 0x94
      004775 80                    5677 	.db 0x80
      004776 E2                    5678 	.db 0xe2
      004777 94                    5679 	.db 0x94
      004778 80                    5680 	.db 0x80
      004779 E2                    5681 	.db 0xe2
      00477A 94                    5682 	.db 0x94
      00477B 80                    5683 	.db 0x80
      00477C E2                    5684 	.db 0xe2
      00477D 94                    5685 	.db 0x94
      00477E 80                    5686 	.db 0x80
      00477F E2                    5687 	.db 0xe2
      004780 94                    5688 	.db 0x94
      004781 80                    5689 	.db 0x80
      004782 E2                    5690 	.db 0xe2
      004783 94                    5691 	.db 0x94
      004784 80                    5692 	.db 0x80
      004785 E2                    5693 	.db 0xe2
      004786 94                    5694 	.db 0x94
      004787 80                    5695 	.db 0x80
      004788 E2                    5696 	.db 0xe2
      004789 94                    5697 	.db 0x94
      00478A 80                    5698 	.db 0x80
      00478B E2                    5699 	.db 0xe2
      00478C 94                    5700 	.db 0x94
      00478D 80                    5701 	.db 0x80
      00478E E2                    5702 	.db 0xe2
      00478F 94                    5703 	.db 0x94
      004790 80                    5704 	.db 0x80
      004791 E2                    5705 	.db 0xe2
      004792 94                    5706 	.db 0x94
      004793 80                    5707 	.db 0x80
      004794 E2                    5708 	.db 0xe2
      004795 94                    5709 	.db 0x94
      004796 80                    5710 	.db 0x80
      004797 E2                    5711 	.db 0xe2
      004798 94                    5712 	.db 0x94
      004799 80                    5713 	.db 0x80
      00479A E2                    5714 	.db 0xe2
      00479B 94                    5715 	.db 0x94
      00479C 80                    5716 	.db 0x80
      00479D E2                    5717 	.db 0xe2
      00479E 94                    5718 	.db 0x94
      00479F 80                    5719 	.db 0x80
      0047A0 E2                    5720 	.db 0xe2
      0047A1 94                    5721 	.db 0x94
      0047A2 80                    5722 	.db 0x80
      0047A3 E2                    5723 	.db 0xe2
      0047A4 94                    5724 	.db 0x94
      0047A5 80                    5725 	.db 0x80
      0047A6 E2                    5726 	.db 0xe2
      0047A7 94                    5727 	.db 0x94
      0047A8 80                    5728 	.db 0x80
      0047A9 E2                    5729 	.db 0xe2
      0047AA 94                    5730 	.db 0x94
      0047AB 80                    5731 	.db 0x80
      0047AC E2                    5732 	.db 0xe2
      0047AD 94                    5733 	.db 0x94
      0047AE 80                    5734 	.db 0x80
      0047AF E2                    5735 	.db 0xe2
      0047B0 94                    5736 	.db 0x94
      0047B1 80                    5737 	.db 0x80
      0047B2 E2                    5738 	.db 0xe2
      0047B3 94                    5739 	.db 0x94
      0047B4 98                    5740 	.db 0x98
      0047B5 0A                    5741 	.db 0x0a
      0047B6 0D                    5742 	.db 0x0d
      0047B7 00                    5743 	.db 0x00
                                   5744 	.area CSEG    (CODE)
                                   5745 	.area CONST   (CODE)
      0047B8                       5746 ___str_42:
      0047B8 45 72 72 6F 72 3A 20  5747 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      0047E5 0A                    5748 	.db 0x0a
      0047E6 0D                    5749 	.db 0x0d
      0047E7 00                    5750 	.db 0x00
                                   5751 	.area CSEG    (CODE)
                                   5752 	.area CONST   (CODE)
      0047E8                       5753 ___str_43:
      0047E8 45 72 72 6F 72 3A 20  5754 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      004814 0A                    5755 	.db 0x0a
      004815 0D                    5756 	.db 0x0d
      004816 00                    5757 	.db 0x00
                                   5758 	.area CSEG    (CODE)
                                   5759 	.area CONST   (CODE)
      004817                       5760 ___str_44:
      004817 7C 20 30 78 25 30 33  5761 	.ascii "| 0x%03X : 0x%02X "
             58 20 3A 20 30 78 25
             30 32 58 20
      004829 0A                    5762 	.db 0x0a
      00482A 0D                    5763 	.db 0x0d
      00482B 00                    5764 	.db 0x00
                                   5765 	.area CSEG    (CODE)
                                   5766 	.area CONST   (CODE)
      00482C                       5767 ___str_45:
      00482C E2                    5768 	.db 0xe2
      00482D 94                    5769 	.db 0x94
      00482E 82                    5770 	.db 0x82
      00482F 20 52 65 61 64 20 73  5771 	.ascii " Read successful!                 "
             75 63 63 65 73 73 66
             75 6C 21 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20
      004851 E2                    5772 	.db 0xe2
      004852 94                    5773 	.db 0x94
      004853 82                    5774 	.db 0x82
      004854 0A                    5775 	.db 0x0a
      004855 0D                    5776 	.db 0x0d
      004856 00                    5777 	.db 0x00
                                   5778 	.area CSEG    (CODE)
                                   5779 	.area CONST   (CODE)
      004857                       5780 ___str_46:
      004857 41 43 4B 20 44 49 44  5781 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      004869 0A                    5782 	.db 0x0a
      00486A 0D                    5783 	.db 0x0d
      00486B 00                    5784 	.db 0x00
                                   5785 	.area CSEG    (CODE)
                                   5786 	.area CONST   (CODE)
      00486C                       5787 ___str_47:
      00486C 0D                    5788 	.db 0x0d
      00486D 0A                    5789 	.db 0x0a
      00486E 2D 2D 2D 2D 2D 2D 2D  5790 	.ascii "------------------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      0048AA 2D 2D 2D 2D           5791 	.ascii "----"
      0048AE 0D                    5792 	.db 0x0d
      0048AF 0A                    5793 	.db 0x0a
      0048B0 00                    5794 	.db 0x00
                                   5795 	.area CSEG    (CODE)
                                   5796 	.area CONST   (CODE)
      0048B1                       5797 ___str_48:
      0048B1 20 20 20 20 20 20 20  5798 	.ascii "                    EEPROM Hex Dump                         "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 45
             45 50 52 4F 4D 20 48
             65 78 20 44 75 6D 70
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      0048ED 20 20 20 20 20 20     5799 	.ascii "      "
      0048F3 0D                    5800 	.db 0x0d
      0048F4 0A                    5801 	.db 0x0a
      0048F5 00                    5802 	.db 0x00
                                   5803 	.area CSEG    (CODE)
                                   5804 	.area CONST   (CODE)
      0048F6                       5805 ___str_49:
      0048F6 2D 2D 2D 2D 2D 2D 2D  5806 	.ascii "------------------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      004932 2D 2D 2D 2D           5807 	.ascii "----"
      004936 0D                    5808 	.db 0x0d
      004937 0A                    5809 	.db 0x0a
      004938 00                    5810 	.db 0x00
                                   5811 	.area CSEG    (CODE)
                                   5812 	.area CONST   (CODE)
      004939                       5813 ___str_50:
      004939 20 20 20 20 20 30 20  5814 	.ascii "     0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F"
             20 31 20 20 32 20 20
             33 20 20 34 20 20 35
             20 20 36 20 20 37 20
             20 38 20 20 39 20 20
             41 20 20 42 20 20 43
             20 20 44 20 20 45 20
             20 46
      00496C 0D                    5815 	.db 0x0d
      00496D 0A                    5816 	.db 0x0a
      00496E 00                    5817 	.db 0x00
                                   5818 	.area CSEG    (CODE)
                                   5819 	.area CONST   (CODE)
      00496F                       5820 ___str_51:
      00496F 25 30 33 58 3A 20     5821 	.ascii "%03X: "
      004975 00                    5822 	.db 0x00
                                   5823 	.area CSEG    (CODE)
                                   5824 	.area CONST   (CODE)
      004976                       5825 ___str_52:
      004976 45 72 72 6F 72 3A 20  5826 	.ascii "Error: Device not responding"
             44 65 76 69 63 65 20
             6E 6F 74 20 72 65 73
             70 6F 6E 64 69 6E 67
      004992 0D                    5827 	.db 0x0d
      004993 0A                    5828 	.db 0x0a
      004994 00                    5829 	.db 0x00
                                   5830 	.area CSEG    (CODE)
                                   5831 	.area CONST   (CODE)
      004995                       5832 ___str_53:
      004995 45 72 72 6F 72 3A 20  5833 	.ascii "Error: Address write failed"
             41 64 64 72 65 73 73
             20 77 72 69 74 65 20
             66 61 69 6C 65 64
      0049B0 0D                    5834 	.db 0x0d
      0049B1 0A                    5835 	.db 0x0a
      0049B2 00                    5836 	.db 0x00
                                   5837 	.area CSEG    (CODE)
                                   5838 	.area CONST   (CODE)
      0049B3                       5839 ___str_54:
      0049B3 45 72 72 6F 72 3A 20  5840 	.ascii "Error: Device not responding in read mode"
             44 65 76 69 63 65 20
             6E 6F 74 20 72 65 73
             70 6F 6E 64 69 6E 67
             20 69 6E 20 72 65 61
             64 20 6D 6F 64 65
      0049DC 0D                    5841 	.db 0x0d
      0049DD 0A                    5842 	.db 0x0a
      0049DE 00                    5843 	.db 0x00
                                   5844 	.area CSEG    (CODE)
                                   5845 	.area CONST   (CODE)
      0049DF                       5846 ___str_55:
      0049DF 25 30 32 58 20        5847 	.ascii "%02X "
      0049E4 00                    5848 	.db 0x00
                                   5849 	.area CSEG    (CODE)
                                   5850 	.area CONST   (CODE)
      0049E5                       5851 ___str_56:
      0049E5 20 20 20              5852 	.ascii "   "
      0049E8 00                    5853 	.db 0x00
                                   5854 	.area CSEG    (CODE)
                                   5855 	.area CONST   (CODE)
      0049E9                       5856 ___str_57:
      0049E9 20 7C 20              5857 	.ascii " | "
      0049EC 00                    5858 	.db 0x00
                                   5859 	.area CSEG    (CODE)
                                   5860 	.area CONST   (CODE)
      0049ED                       5861 ___str_58:
      0049ED 0D                    5862 	.db 0x0d
      0049EE 0A                    5863 	.db 0x0a
      0049EF 00                    5864 	.db 0x00
                                   5865 	.area CSEG    (CODE)
                                   5866 	.area CONST   (CODE)
      0049F0                       5867 ___str_59:
      0049F0 0A                    5868 	.db 0x0a
      0049F1 45 6E 74 65 72 20 53  5869 	.ascii "Enter Start Address for HEX Dump (000-7FF):"
             74 61 72 74 20 41 64
             64 72 65 73 73 20 66
             6F 72 20 48 45 58 20
             44 75 6D 70 20 28 30
             30 30 2D 37 46 46 29
             3A
      004A1C 0D                    5870 	.db 0x0d
      004A1D 0A                    5871 	.db 0x0a
      004A1E 00                    5872 	.db 0x00
                                   5873 	.area CSEG    (CODE)
                                   5874 	.area CONST   (CODE)
      004A1F                       5875 ___str_60:
      004A1F 49 6E 76 61 6C 69 64  5876 	.ascii "Invalid Start Address! Must be between 0x000 and 0x7FF"
             20 53 74 61 72 74 20
             41 64 64 72 65 73 73
             21 20 4D 75 73 74 20
             62 65 20 62 65 74 77
             65 65 6E 20 30 78 30
             30 30 20 61 6E 64 20
             30 78 37 46 46
      004A55 0D                    5877 	.db 0x0d
      004A56 0A                    5878 	.db 0x0a
      004A57 00                    5879 	.db 0x00
                                   5880 	.area CSEG    (CODE)
                                   5881 	.area CONST   (CODE)
      004A58                       5882 ___str_61:
      004A58 0A                    5883 	.db 0x0a
      004A59 45 6E 74 65 72 20 45  5884 	.ascii "Enter End Address for HEX Dump (000-7FF):"
             6E 64 20 41 64 64 72
             65 73 73 20 66 6F 72
             20 48 45 58 20 44 75
             6D 70 20 28 30 30 30
             2D 37 46 46 29 3A
      004A82 0D                    5885 	.db 0x0d
      004A83 0A                    5886 	.db 0x0a
      004A84 00                    5887 	.db 0x00
                                   5888 	.area CSEG    (CODE)
                                   5889 	.area CONST   (CODE)
      004A85                       5890 ___str_62:
      004A85 49 6E 76 61 6C 69 64  5891 	.ascii "Invalid End Address! Must be between 0x%03X and 0x7FF"
             20 45 6E 64 20 41 64
             64 72 65 73 73 21 20
             4D 75 73 74 20 62 65
             20 62 65 74 77 65 65
             6E 20 30 78 25 30 33
             58 20 61 6E 64 20 30
             78 37 46 46
      004ABA 0D                    5892 	.db 0x0d
      004ABB 0A                    5893 	.db 0x0a
      004ABC 00                    5894 	.db 0x00
                                   5895 	.area CSEG    (CODE)
                                   5896 	.area CONST   (CODE)
      004ABD                       5897 ___str_63:
      004ABD 57 72 69 74 69 6E 67  5898 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      004AE2 0A                    5899 	.db 0x0a
      004AE3 0D                    5900 	.db 0x0d
      004AE4 00                    5901 	.db 0x00
                                   5902 	.area CSEG    (CODE)
                                   5903 	.area CONST   (CODE)
      004AE5                       5904 ___str_64:
      004AE5 52 65 61 64 20 62 61  5905 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      004B0A 0A                    5906 	.db 0x0a
      004B0B 0D                    5907 	.db 0x0d
      004B0C 00                    5908 	.db 0x00
                                   5909 	.area CSEG    (CODE)
                                   5910 	.area CONST   (CODE)
      004B0D                       5911 ___str_65:
      004B0D 4D 41 54 43 48 20 2D  5912 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      004B2B 0A                    5913 	.db 0x0a
      004B2C 0D                    5914 	.db 0x0d
      004B2D 00                    5915 	.db 0x00
                                   5916 	.area CSEG    (CODE)
                                   5917 	.area CONST   (CODE)
      004B2E                       5918 ___str_66:
      004B2E 45 52 52 4F 52 20 2D  5919 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      004B44 0A                    5920 	.db 0x0a
      004B45 0D                    5921 	.db 0x0d
      004B46 00                    5922 	.db 0x00
                                   5923 	.area CSEG    (CODE)
                                   5924 	.area XINIT   (CODE)
      004B52                       5925 __xinit__address_range_flag:
      004B52 01 00                 5926 	.byte #0x01, #0x00	;  1
      004B54                       5927 __xinit__data_range_flag:
      004B54 01 00                 5928 	.byte #0x01, #0x00	;  1
      004B56                       5929 __xinit__block:
      004B56 00 00                 5930 	.byte #0x00, #0x00	; 0
                                   5931 	.area CABS    (ABS,CODE)
