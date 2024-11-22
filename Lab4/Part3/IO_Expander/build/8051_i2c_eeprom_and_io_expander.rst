                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module 8051_i2c_eeprom_and_io_expander
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _external_ISR0
                                     13 	.globl _pcf8574_init
                                     14 	.globl _pcf8574_set_pin
                                     15 	.globl _pcf8574_read_pin
                                     16 	.globl _i2c_start
                                     17 	.globl _handler_EEPROM_hexdump
                                     18 	.globl _eeprom_reset
                                     19 	.globl _eeprom_read
                                     20 	.globl _eeprom_write
                                     21 	.globl _ui
                                     22 	.globl _command_menu
                                     23 	.globl _take_address
                                     24 	.globl _take_data
                                     25 	.globl _getchar
                                     26 	.globl _disable_interrupt0
                                     27 	.globl _enable_interrupt0
                                     28 	.globl _printf
                                     29 	.globl _CY
                                     30 	.globl _AC
                                     31 	.globl _F0
                                     32 	.globl _RS1
                                     33 	.globl _RS0
                                     34 	.globl _OV
                                     35 	.globl _F1
                                     36 	.globl _P
                                     37 	.globl _PS
                                     38 	.globl _PT1
                                     39 	.globl _PX1
                                     40 	.globl _PT0
                                     41 	.globl _PX0
                                     42 	.globl _RD
                                     43 	.globl _WR
                                     44 	.globl _T1
                                     45 	.globl _T0
                                     46 	.globl _INT1
                                     47 	.globl _INT0
                                     48 	.globl _TXD
                                     49 	.globl _RXD
                                     50 	.globl _P3_7
                                     51 	.globl _P3_6
                                     52 	.globl _P3_5
                                     53 	.globl _P3_4
                                     54 	.globl _P3_3
                                     55 	.globl _P3_2
                                     56 	.globl _P3_1
                                     57 	.globl _P3_0
                                     58 	.globl _EA
                                     59 	.globl _ES
                                     60 	.globl _ET1
                                     61 	.globl _EX1
                                     62 	.globl _ET0
                                     63 	.globl _EX0
                                     64 	.globl _P2_7
                                     65 	.globl _P2_6
                                     66 	.globl _P2_5
                                     67 	.globl _P2_4
                                     68 	.globl _P2_3
                                     69 	.globl _P2_2
                                     70 	.globl _P2_1
                                     71 	.globl _P2_0
                                     72 	.globl _SM0
                                     73 	.globl _SM1
                                     74 	.globl _SM2
                                     75 	.globl _REN
                                     76 	.globl _TB8
                                     77 	.globl _RB8
                                     78 	.globl _TI
                                     79 	.globl _RI
                                     80 	.globl _P1_7
                                     81 	.globl _P1_6
                                     82 	.globl _P1_5
                                     83 	.globl _P1_4
                                     84 	.globl _P1_3
                                     85 	.globl _P1_2
                                     86 	.globl _P1_1
                                     87 	.globl _P1_0
                                     88 	.globl _TF1
                                     89 	.globl _TR1
                                     90 	.globl _TF0
                                     91 	.globl _TR0
                                     92 	.globl _IE1
                                     93 	.globl _IT1
                                     94 	.globl _IE0
                                     95 	.globl _IT0
                                     96 	.globl _P0_7
                                     97 	.globl _P0_6
                                     98 	.globl _P0_5
                                     99 	.globl _P0_4
                                    100 	.globl _P0_3
                                    101 	.globl _P0_2
                                    102 	.globl _P0_1
                                    103 	.globl _P0_0
                                    104 	.globl _P5_7
                                    105 	.globl _P5_6
                                    106 	.globl _P5_5
                                    107 	.globl _P5_4
                                    108 	.globl _P5_3
                                    109 	.globl _P5_2
                                    110 	.globl _P5_1
                                    111 	.globl _P5_0
                                    112 	.globl _P4_7
                                    113 	.globl _P4_6
                                    114 	.globl _P4_5
                                    115 	.globl _P4_4
                                    116 	.globl _P4_3
                                    117 	.globl _P4_2
                                    118 	.globl _P4_1
                                    119 	.globl _P4_0
                                    120 	.globl _PX0L
                                    121 	.globl _PT0L
                                    122 	.globl _PX1L
                                    123 	.globl _PT1L
                                    124 	.globl _PSL
                                    125 	.globl _PT2L
                                    126 	.globl _PPCL
                                    127 	.globl _EC
                                    128 	.globl _CCF0
                                    129 	.globl _CCF1
                                    130 	.globl _CCF2
                                    131 	.globl _CCF3
                                    132 	.globl _CCF4
                                    133 	.globl _CR
                                    134 	.globl _CF
                                    135 	.globl _TF2
                                    136 	.globl _EXF2
                                    137 	.globl _RCLK
                                    138 	.globl _TCLK
                                    139 	.globl _EXEN2
                                    140 	.globl _TR2
                                    141 	.globl _C_T2
                                    142 	.globl _CP_RL2
                                    143 	.globl _T2CON_7
                                    144 	.globl _T2CON_6
                                    145 	.globl _T2CON_5
                                    146 	.globl _T2CON_4
                                    147 	.globl _T2CON_3
                                    148 	.globl _T2CON_2
                                    149 	.globl _T2CON_1
                                    150 	.globl _T2CON_0
                                    151 	.globl _PT2
                                    152 	.globl _ET2
                                    153 	.globl _B
                                    154 	.globl _ACC
                                    155 	.globl _PSW
                                    156 	.globl _IP
                                    157 	.globl _P3
                                    158 	.globl _IE
                                    159 	.globl _P2
                                    160 	.globl _SBUF
                                    161 	.globl _SCON
                                    162 	.globl _P1
                                    163 	.globl _TH1
                                    164 	.globl _TH0
                                    165 	.globl _TL1
                                    166 	.globl _TL0
                                    167 	.globl _TMOD
                                    168 	.globl _TCON
                                    169 	.globl _PCON
                                    170 	.globl _DPH
                                    171 	.globl _DPL
                                    172 	.globl _SP
                                    173 	.globl _P0
                                    174 	.globl _EECON
                                    175 	.globl _KBF
                                    176 	.globl _KBE
                                    177 	.globl _KBLS
                                    178 	.globl _BRL
                                    179 	.globl _BDRCON
                                    180 	.globl _T2MOD
                                    181 	.globl _SPDAT
                                    182 	.globl _SPSTA
                                    183 	.globl _SPCON
                                    184 	.globl _SADEN
                                    185 	.globl _SADDR
                                    186 	.globl _WDTPRG
                                    187 	.globl _WDTRST
                                    188 	.globl _P5
                                    189 	.globl _P4
                                    190 	.globl _IPH1
                                    191 	.globl _IPL1
                                    192 	.globl _IPH0
                                    193 	.globl _IPL0
                                    194 	.globl _IEN1
                                    195 	.globl _IEN0
                                    196 	.globl _CMOD
                                    197 	.globl _CL
                                    198 	.globl _CH
                                    199 	.globl _CCON
                                    200 	.globl _CCAPM4
                                    201 	.globl _CCAPM3
                                    202 	.globl _CCAPM2
                                    203 	.globl _CCAPM1
                                    204 	.globl _CCAPM0
                                    205 	.globl _CCAP4L
                                    206 	.globl _CCAP3L
                                    207 	.globl _CCAP2L
                                    208 	.globl _CCAP1L
                                    209 	.globl _CCAP0L
                                    210 	.globl _CCAP4H
                                    211 	.globl _CCAP3H
                                    212 	.globl _CCAP2H
                                    213 	.globl _CCAP1H
                                    214 	.globl _CCAP0H
                                    215 	.globl _CKCON1
                                    216 	.globl _CKCON0
                                    217 	.globl _CKRL
                                    218 	.globl _AUXR1
                                    219 	.globl _AUXR
                                    220 	.globl _TH2
                                    221 	.globl _TL2
                                    222 	.globl _RCAP2H
                                    223 	.globl _RCAP2L
                                    224 	.globl _T2CON
                                    225 ;--------------------------------------------------------
                                    226 ; special function registers
                                    227 ;--------------------------------------------------------
                                    228 	.area RSEG    (ABS,DATA)
      000000                        229 	.org 0x0000
                           0000C8   230 _T2CON	=	0x00c8
                           0000CA   231 _RCAP2L	=	0x00ca
                           0000CB   232 _RCAP2H	=	0x00cb
                           0000CC   233 _TL2	=	0x00cc
                           0000CD   234 _TH2	=	0x00cd
                           00008E   235 _AUXR	=	0x008e
                           0000A2   236 _AUXR1	=	0x00a2
                           000097   237 _CKRL	=	0x0097
                           00008F   238 _CKCON0	=	0x008f
                           0000AF   239 _CKCON1	=	0x00af
                           0000FA   240 _CCAP0H	=	0x00fa
                           0000FB   241 _CCAP1H	=	0x00fb
                           0000FC   242 _CCAP2H	=	0x00fc
                           0000FD   243 _CCAP3H	=	0x00fd
                           0000FE   244 _CCAP4H	=	0x00fe
                           0000EA   245 _CCAP0L	=	0x00ea
                           0000EB   246 _CCAP1L	=	0x00eb
                           0000EC   247 _CCAP2L	=	0x00ec
                           0000ED   248 _CCAP3L	=	0x00ed
                           0000EE   249 _CCAP4L	=	0x00ee
                           0000DA   250 _CCAPM0	=	0x00da
                           0000DB   251 _CCAPM1	=	0x00db
                           0000DC   252 _CCAPM2	=	0x00dc
                           0000DD   253 _CCAPM3	=	0x00dd
                           0000DE   254 _CCAPM4	=	0x00de
                           0000D8   255 _CCON	=	0x00d8
                           0000F9   256 _CH	=	0x00f9
                           0000E9   257 _CL	=	0x00e9
                           0000D9   258 _CMOD	=	0x00d9
                           0000A8   259 _IEN0	=	0x00a8
                           0000B1   260 _IEN1	=	0x00b1
                           0000B8   261 _IPL0	=	0x00b8
                           0000B7   262 _IPH0	=	0x00b7
                           0000B2   263 _IPL1	=	0x00b2
                           0000B3   264 _IPH1	=	0x00b3
                           0000C0   265 _P4	=	0x00c0
                           0000E8   266 _P5	=	0x00e8
                           0000A6   267 _WDTRST	=	0x00a6
                           0000A7   268 _WDTPRG	=	0x00a7
                           0000A9   269 _SADDR	=	0x00a9
                           0000B9   270 _SADEN	=	0x00b9
                           0000C3   271 _SPCON	=	0x00c3
                           0000C4   272 _SPSTA	=	0x00c4
                           0000C5   273 _SPDAT	=	0x00c5
                           0000C9   274 _T2MOD	=	0x00c9
                           00009B   275 _BDRCON	=	0x009b
                           00009A   276 _BRL	=	0x009a
                           00009C   277 _KBLS	=	0x009c
                           00009D   278 _KBE	=	0x009d
                           00009E   279 _KBF	=	0x009e
                           0000D2   280 _EECON	=	0x00d2
                           000080   281 _P0	=	0x0080
                           000081   282 _SP	=	0x0081
                           000082   283 _DPL	=	0x0082
                           000083   284 _DPH	=	0x0083
                           000087   285 _PCON	=	0x0087
                           000088   286 _TCON	=	0x0088
                           000089   287 _TMOD	=	0x0089
                           00008A   288 _TL0	=	0x008a
                           00008B   289 _TL1	=	0x008b
                           00008C   290 _TH0	=	0x008c
                           00008D   291 _TH1	=	0x008d
                           000090   292 _P1	=	0x0090
                           000098   293 _SCON	=	0x0098
                           000099   294 _SBUF	=	0x0099
                           0000A0   295 _P2	=	0x00a0
                           0000A8   296 _IE	=	0x00a8
                           0000B0   297 _P3	=	0x00b0
                           0000B8   298 _IP	=	0x00b8
                           0000D0   299 _PSW	=	0x00d0
                           0000E0   300 _ACC	=	0x00e0
                           0000F0   301 _B	=	0x00f0
                                    302 ;--------------------------------------------------------
                                    303 ; special function bits
                                    304 ;--------------------------------------------------------
                                    305 	.area RSEG    (ABS,DATA)
      000000                        306 	.org 0x0000
                           0000AD   307 _ET2	=	0x00ad
                           0000BD   308 _PT2	=	0x00bd
                           0000C8   309 _T2CON_0	=	0x00c8
                           0000C9   310 _T2CON_1	=	0x00c9
                           0000CA   311 _T2CON_2	=	0x00ca
                           0000CB   312 _T2CON_3	=	0x00cb
                           0000CC   313 _T2CON_4	=	0x00cc
                           0000CD   314 _T2CON_5	=	0x00cd
                           0000CE   315 _T2CON_6	=	0x00ce
                           0000CF   316 _T2CON_7	=	0x00cf
                           0000C8   317 _CP_RL2	=	0x00c8
                           0000C9   318 _C_T2	=	0x00c9
                           0000CA   319 _TR2	=	0x00ca
                           0000CB   320 _EXEN2	=	0x00cb
                           0000CC   321 _TCLK	=	0x00cc
                           0000CD   322 _RCLK	=	0x00cd
                           0000CE   323 _EXF2	=	0x00ce
                           0000CF   324 _TF2	=	0x00cf
                           0000DF   325 _CF	=	0x00df
                           0000DE   326 _CR	=	0x00de
                           0000DC   327 _CCF4	=	0x00dc
                           0000DB   328 _CCF3	=	0x00db
                           0000DA   329 _CCF2	=	0x00da
                           0000D9   330 _CCF1	=	0x00d9
                           0000D8   331 _CCF0	=	0x00d8
                           0000AE   332 _EC	=	0x00ae
                           0000BE   333 _PPCL	=	0x00be
                           0000BD   334 _PT2L	=	0x00bd
                           0000BC   335 _PSL	=	0x00bc
                           0000BB   336 _PT1L	=	0x00bb
                           0000BA   337 _PX1L	=	0x00ba
                           0000B9   338 _PT0L	=	0x00b9
                           0000B8   339 _PX0L	=	0x00b8
                           0000C0   340 _P4_0	=	0x00c0
                           0000C1   341 _P4_1	=	0x00c1
                           0000C2   342 _P4_2	=	0x00c2
                           0000C3   343 _P4_3	=	0x00c3
                           0000C4   344 _P4_4	=	0x00c4
                           0000C5   345 _P4_5	=	0x00c5
                           0000C6   346 _P4_6	=	0x00c6
                           0000C7   347 _P4_7	=	0x00c7
                           0000E8   348 _P5_0	=	0x00e8
                           0000E9   349 _P5_1	=	0x00e9
                           0000EA   350 _P5_2	=	0x00ea
                           0000EB   351 _P5_3	=	0x00eb
                           0000EC   352 _P5_4	=	0x00ec
                           0000ED   353 _P5_5	=	0x00ed
                           0000EE   354 _P5_6	=	0x00ee
                           0000EF   355 _P5_7	=	0x00ef
                           000080   356 _P0_0	=	0x0080
                           000081   357 _P0_1	=	0x0081
                           000082   358 _P0_2	=	0x0082
                           000083   359 _P0_3	=	0x0083
                           000084   360 _P0_4	=	0x0084
                           000085   361 _P0_5	=	0x0085
                           000086   362 _P0_6	=	0x0086
                           000087   363 _P0_7	=	0x0087
                           000088   364 _IT0	=	0x0088
                           000089   365 _IE0	=	0x0089
                           00008A   366 _IT1	=	0x008a
                           00008B   367 _IE1	=	0x008b
                           00008C   368 _TR0	=	0x008c
                           00008D   369 _TF0	=	0x008d
                           00008E   370 _TR1	=	0x008e
                           00008F   371 _TF1	=	0x008f
                           000090   372 _P1_0	=	0x0090
                           000091   373 _P1_1	=	0x0091
                           000092   374 _P1_2	=	0x0092
                           000093   375 _P1_3	=	0x0093
                           000094   376 _P1_4	=	0x0094
                           000095   377 _P1_5	=	0x0095
                           000096   378 _P1_6	=	0x0096
                           000097   379 _P1_7	=	0x0097
                           000098   380 _RI	=	0x0098
                           000099   381 _TI	=	0x0099
                           00009A   382 _RB8	=	0x009a
                           00009B   383 _TB8	=	0x009b
                           00009C   384 _REN	=	0x009c
                           00009D   385 _SM2	=	0x009d
                           00009E   386 _SM1	=	0x009e
                           00009F   387 _SM0	=	0x009f
                           0000A0   388 _P2_0	=	0x00a0
                           0000A1   389 _P2_1	=	0x00a1
                           0000A2   390 _P2_2	=	0x00a2
                           0000A3   391 _P2_3	=	0x00a3
                           0000A4   392 _P2_4	=	0x00a4
                           0000A5   393 _P2_5	=	0x00a5
                           0000A6   394 _P2_6	=	0x00a6
                           0000A7   395 _P2_7	=	0x00a7
                           0000A8   396 _EX0	=	0x00a8
                           0000A9   397 _ET0	=	0x00a9
                           0000AA   398 _EX1	=	0x00aa
                           0000AB   399 _ET1	=	0x00ab
                           0000AC   400 _ES	=	0x00ac
                           0000AF   401 _EA	=	0x00af
                           0000B0   402 _P3_0	=	0x00b0
                           0000B1   403 _P3_1	=	0x00b1
                           0000B2   404 _P3_2	=	0x00b2
                           0000B3   405 _P3_3	=	0x00b3
                           0000B4   406 _P3_4	=	0x00b4
                           0000B5   407 _P3_5	=	0x00b5
                           0000B6   408 _P3_6	=	0x00b6
                           0000B7   409 _P3_7	=	0x00b7
                           0000B0   410 _RXD	=	0x00b0
                           0000B1   411 _TXD	=	0x00b1
                           0000B2   412 _INT0	=	0x00b2
                           0000B3   413 _INT1	=	0x00b3
                           0000B4   414 _T0	=	0x00b4
                           0000B5   415 _T1	=	0x00b5
                           0000B6   416 _WR	=	0x00b6
                           0000B7   417 _RD	=	0x00b7
                           0000B8   418 _PX0	=	0x00b8
                           0000B9   419 _PT0	=	0x00b9
                           0000BA   420 _PX1	=	0x00ba
                           0000BB   421 _PT1	=	0x00bb
                           0000BC   422 _PS	=	0x00bc
                           0000D0   423 _P	=	0x00d0
                           0000D1   424 _F1	=	0x00d1
                           0000D2   425 _OV	=	0x00d2
                           0000D3   426 _RS0	=	0x00d3
                           0000D4   427 _RS1	=	0x00d4
                           0000D5   428 _F0	=	0x00d5
                           0000D6   429 _AC	=	0x00d6
                           0000D7   430 _CY	=	0x00d7
                                    431 ;--------------------------------------------------------
                                    432 ; overlayable register banks
                                    433 ;--------------------------------------------------------
                                    434 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        435 	.ds 8
                                    436 ;--------------------------------------------------------
                                    437 ; overlayable bit register bank
                                    438 ;--------------------------------------------------------
                                    439 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        440 bits:
      000020                        441 	.ds 1
                           008000   442 	b0 = bits[0]
                           008100   443 	b1 = bits[1]
                           008200   444 	b2 = bits[2]
                           008300   445 	b3 = bits[3]
                           008400   446 	b4 = bits[4]
                           008500   447 	b5 = bits[5]
                           008600   448 	b6 = bits[6]
                           008700   449 	b7 = bits[7]
                                    450 ;--------------------------------------------------------
                                    451 ; internal ram data
                                    452 ;--------------------------------------------------------
                                    453 	.area DSEG    (DATA)
                                    454 ;--------------------------------------------------------
                                    455 ; overlayable items in internal ram 
                                    456 ;--------------------------------------------------------
                                    457 ;--------------------------------------------------------
                                    458 ; Stack segment in internal ram 
                                    459 ;--------------------------------------------------------
                                    460 	.area	SSEG
      000021                        461 __start__stack:
      000021                        462 	.ds	1
                                    463 
                                    464 ;--------------------------------------------------------
                                    465 ; indirectly addressable internal ram data
                                    466 ;--------------------------------------------------------
                                    467 	.area ISEG    (DATA)
                                    468 ;--------------------------------------------------------
                                    469 ; absolute internal ram data
                                    470 ;--------------------------------------------------------
                                    471 	.area IABS    (ABS,DATA)
                                    472 	.area IABS    (ABS,DATA)
                                    473 ;--------------------------------------------------------
                                    474 ; bit data
                                    475 ;--------------------------------------------------------
                                    476 	.area BSEG    (BIT)
                                    477 ;--------------------------------------------------------
                                    478 ; paged external ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area PSEG    (PAG,XDATA)
                                    481 ;--------------------------------------------------------
                                    482 ; external ram data
                                    483 ;--------------------------------------------------------
                                    484 	.area XSEG    (XDATA)
                                    485 ;--------------------------------------------------------
                                    486 ; absolute external ram data
                                    487 ;--------------------------------------------------------
                                    488 	.area XABS    (ABS,XDATA)
                                    489 ;--------------------------------------------------------
                                    490 ; external initialized ram data
                                    491 ;--------------------------------------------------------
                                    492 	.area XISEG   (XDATA)
                                    493 	.area HOME    (CODE)
                                    494 	.area GSINIT0 (CODE)
                                    495 	.area GSINIT1 (CODE)
                                    496 	.area GSINIT2 (CODE)
                                    497 	.area GSINIT3 (CODE)
                                    498 	.area GSINIT4 (CODE)
                                    499 	.area GSINIT5 (CODE)
                                    500 	.area GSINIT  (CODE)
                                    501 	.area GSFINAL (CODE)
                                    502 	.area CSEG    (CODE)
                                    503 ;--------------------------------------------------------
                                    504 ; interrupt vector 
                                    505 ;--------------------------------------------------------
                                    506 	.area HOME    (CODE)
      002000                        507 __interrupt_vect:
      002000 02 20 09         [24]  508 	ljmp	__sdcc_gsinit_startup
      002003 02 20 65         [24]  509 	ljmp	_external_ISR0
                                    510 ;--------------------------------------------------------
                                    511 ; global & static initialisations
                                    512 ;--------------------------------------------------------
                                    513 	.area HOME    (CODE)
                                    514 	.area GSINIT  (CODE)
                                    515 	.area GSFINAL (CODE)
                                    516 	.area GSINIT  (CODE)
                                    517 	.globl __sdcc_gsinit_startup
                                    518 	.globl __sdcc_program_startup
                                    519 	.globl __start__stack
                                    520 	.globl __mcs51_genXINIT
                                    521 	.globl __mcs51_genXRAMCLEAR
                                    522 	.globl __mcs51_genRAMCLEAR
                                    523 	.area GSFINAL (CODE)
      002062 02 20 06         [24]  524 	ljmp	__sdcc_program_startup
                                    525 ;--------------------------------------------------------
                                    526 ; Home
                                    527 ;--------------------------------------------------------
                                    528 	.area HOME    (CODE)
                                    529 	.area HOME    (CODE)
      002006                        530 __sdcc_program_startup:
      002006 02 20 B4         [24]  531 	ljmp	_main
                                    532 ;	return from main will return to caller
                                    533 ;--------------------------------------------------------
                                    534 ; code
                                    535 ;--------------------------------------------------------
                                    536 	.area CSEG    (CODE)
                                    537 ;------------------------------------------------------------
                                    538 ;Allocation info for local variables in function 'external_ISR0'
                                    539 ;------------------------------------------------------------
                                    540 ;data                      Allocated with name '_external_ISR0_data_65536_59'
                                    541 ;------------------------------------------------------------
                                    542 ;	src/8051_i2c_eeprom_and_io_expander.c:36: void external_ISR0(void) __interrupt (0)
                                    543 ;	-----------------------------------------
                                    544 ;	 function external_ISR0
                                    545 ;	-----------------------------------------
      002065                        546 _external_ISR0:
                           000007   547 	ar7 = 0x07
                           000006   548 	ar6 = 0x06
                           000005   549 	ar5 = 0x05
                           000004   550 	ar4 = 0x04
                           000003   551 	ar3 = 0x03
                           000002   552 	ar2 = 0x02
                           000001   553 	ar1 = 0x01
                           000000   554 	ar0 = 0x00
      002065 C0 20            [24]  555 	push	bits
      002067 C0 E0            [24]  556 	push	acc
      002069 C0 F0            [24]  557 	push	b
      00206B C0 82            [24]  558 	push	dpl
      00206D C0 83            [24]  559 	push	dph
      00206F C0 07            [24]  560 	push	(0+7)
      002071 C0 06            [24]  561 	push	(0+6)
      002073 C0 05            [24]  562 	push	(0+5)
      002075 C0 04            [24]  563 	push	(0+4)
      002077 C0 03            [24]  564 	push	(0+3)
      002079 C0 02            [24]  565 	push	(0+2)
      00207B C0 01            [24]  566 	push	(0+1)
      00207D C0 00            [24]  567 	push	(0+0)
      00207F C0 D0            [24]  568 	push	psw
      002081 75 D0 00         [24]  569 	mov	psw,#0x00
                                    570 ;	src/8051_i2c_eeprom_and_io_expander.c:41: data=pcf8574_read_pin(0);
      002084 75 82 00         [24]  571 	mov	dpl,#0x00
      002087 12 22 A7         [24]  572 	lcall	_pcf8574_read_pin
      00208A AF 82            [24]  573 	mov	r7,dpl
                                    574 ;	src/8051_i2c_eeprom_and_io_expander.c:43: pcf8574_set_pin(7,data);
      00208C 90 04 02         [24]  575 	mov	dptr,#_pcf8574_set_pin_PARM_2
      00208F EF               [12]  576 	mov	a,r7
      002090 F0               [24]  577 	movx	@dptr,a
      002091 75 82 07         [24]  578 	mov	dpl,#0x07
      002094 12 22 E3         [24]  579 	lcall	_pcf8574_set_pin
                                    580 ;	src/8051_i2c_eeprom_and_io_expander.c:45: }
      002097 D0 D0            [24]  581 	pop	psw
      002099 D0 00            [24]  582 	pop	(0+0)
      00209B D0 01            [24]  583 	pop	(0+1)
      00209D D0 02            [24]  584 	pop	(0+2)
      00209F D0 03            [24]  585 	pop	(0+3)
      0020A1 D0 04            [24]  586 	pop	(0+4)
      0020A3 D0 05            [24]  587 	pop	(0+5)
      0020A5 D0 06            [24]  588 	pop	(0+6)
      0020A7 D0 07            [24]  589 	pop	(0+7)
      0020A9 D0 83            [24]  590 	pop	dph
      0020AB D0 82            [24]  591 	pop	dpl
      0020AD D0 F0            [24]  592 	pop	b
      0020AF D0 E0            [24]  593 	pop	acc
      0020B1 D0 20            [24]  594 	pop	bits
      0020B3 32               [24]  595 	reti
                                    596 ;------------------------------------------------------------
                                    597 ;Allocation info for local variables in function 'main'
                                    598 ;------------------------------------------------------------
                                    599 ;user_input                Allocated with name '_main_user_input_131072_61'
                                    600 ;addr                      Allocated with name '_main_addr_262145_64'
                                    601 ;data                      Allocated with name '_main_data_262146_66'
                                    602 ;addr                      Allocated with name '_main_addr_262145_69'
                                    603 ;------------------------------------------------------------
                                    604 ;	src/8051_i2c_eeprom_and_io_expander.c:52: int main()
                                    605 ;	-----------------------------------------
                                    606 ;	 function main
                                    607 ;	-----------------------------------------
      0020B4                        608 _main:
                                    609 ;	src/8051_i2c_eeprom_and_io_expander.c:55: P1 &= ~(1<<3);  // Set P1.3 as output
      0020B4 53 90 F7         [24]  610 	anl	_P1,#0xf7
                                    611 ;	src/8051_i2c_eeprom_and_io_expander.c:56: P1 &= ~(1<<4);  // Set P1.4 as output
      0020B7 53 90 EF         [24]  612 	anl	_P1,#0xef
                                    613 ;	src/8051_i2c_eeprom_and_io_expander.c:57: ui();
      0020BA 12 2B 9C         [24]  614 	lcall	_ui
                                    615 ;	src/8051_i2c_eeprom_and_io_expander.c:58: command_menu();
      0020BD 12 2B DC         [24]  616 	lcall	_command_menu
                                    617 ;	src/8051_i2c_eeprom_and_io_expander.c:59: i2c_start();
      0020C0 12 29 D4         [24]  618 	lcall	_i2c_start
                                    619 ;	src/8051_i2c_eeprom_and_io_expander.c:60: while(1)
      0020C3                        620 00117$:
                                    621 ;	src/8051_i2c_eeprom_and_io_expander.c:62: char user_input = getchar();
      0020C3 12 29 A2         [24]  622 	lcall	_getchar
      0020C6 AE 82            [24]  623 	mov	r6,dpl
                                    624 ;	src/8051_i2c_eeprom_and_io_expander.c:63: printf("| $ %c\n\r", user_input);
      0020C8 8E 05            [24]  625 	mov	ar5,r6
      0020CA 7F 00            [12]  626 	mov	r7,#0x00
      0020CC C0 06            [24]  627 	push	ar6
      0020CE C0 05            [24]  628 	push	ar5
      0020D0 C0 07            [24]  629 	push	ar7
      0020D2 74 2B            [12]  630 	mov	a,#___str_0
      0020D4 C0 E0            [24]  631 	push	acc
      0020D6 74 3B            [12]  632 	mov	a,#(___str_0 >> 8)
      0020D8 C0 E0            [24]  633 	push	acc
      0020DA 74 80            [12]  634 	mov	a,#0x80
      0020DC C0 E0            [24]  635 	push	acc
      0020DE 12 30 C9         [24]  636 	lcall	_printf
      0020E1 E5 81            [12]  637 	mov	a,sp
      0020E3 24 FB            [12]  638 	add	a,#0xfb
      0020E5 F5 81            [12]  639 	mov	sp,a
                                    640 ;	src/8051_i2c_eeprom_and_io_expander.c:64: printf("\n\r");
      0020E7 74 34            [12]  641 	mov	a,#___str_1
      0020E9 C0 E0            [24]  642 	push	acc
      0020EB 74 3B            [12]  643 	mov	a,#(___str_1 >> 8)
      0020ED C0 E0            [24]  644 	push	acc
      0020EF 74 80            [12]  645 	mov	a,#0x80
      0020F1 C0 E0            [24]  646 	push	acc
      0020F3 12 30 C9         [24]  647 	lcall	_printf
      0020F6 15 81            [12]  648 	dec	sp
      0020F8 15 81            [12]  649 	dec	sp
      0020FA 15 81            [12]  650 	dec	sp
      0020FC D0 06            [24]  651 	pop	ar6
                                    652 ;	src/8051_i2c_eeprom_and_io_expander.c:65: switch(user_input)
      0020FE BE 3F 03         [24]  653 	cjne	r6,#0x3f,00165$
      002101 02 21 F0         [24]  654 	ljmp	00109$
      002104                        655 00165$:
      002104 BE 48 03         [24]  656 	cjne	r6,#0x48,00166$
      002107 02 22 11         [24]  657 	ljmp	00111$
      00210A                        658 00166$:
      00210A BE 49 03         [24]  659 	cjne	r6,#0x49,00167$
      00210D 02 22 29         [24]  660 	ljmp	00112$
      002110                        661 00167$:
      002110 BE 4C 03         [24]  662 	cjne	r6,#0x4c,00168$
      002113 02 22 47         [24]  663 	ljmp	00113$
      002116                        664 00168$:
      002116 BE 52 02         [24]  665 	cjne	r6,#0x52,00169$
      002119 80 76            [24]  666 	sjmp	00106$
      00211B                        667 00169$:
      00211B BE 57 02         [24]  668 	cjne	r6,#0x57,00170$
      00211E 80 09            [24]  669 	sjmp	00101$
      002120                        670 00170$:
      002120 BE 58 03         [24]  671 	cjne	r6,#0x58,00171$
      002123 02 21 F6         [24]  672 	ljmp	00110$
      002126                        673 00171$:
      002126 02 22 62         [24]  674 	ljmp	00114$
                                    675 ;	src/8051_i2c_eeprom_and_io_expander.c:67: case 'W':
      002129                        676 00101$:
                                    677 ;	src/8051_i2c_eeprom_and_io_expander.c:69: printf("\n┌─────────────── WRITE OPERATION ──────────────┐\n\r");
      002129 74 37            [12]  678 	mov	a,#___str_2
      00212B C0 E0            [24]  679 	push	acc
      00212D 74 3B            [12]  680 	mov	a,#(___str_2 >> 8)
      00212F C0 E0            [24]  681 	push	acc
      002131 74 80            [12]  682 	mov	a,#0x80
      002133 C0 E0            [24]  683 	push	acc
      002135 12 30 C9         [24]  684 	lcall	_printf
      002138 15 81            [12]  685 	dec	sp
      00213A 15 81            [12]  686 	dec	sp
      00213C 15 81            [12]  687 	dec	sp
                                    688 ;	src/8051_i2c_eeprom_and_io_expander.c:71: addr = take_address();
      00213E 12 2C C4         [24]  689 	lcall	_take_address
      002141 AE 82            [24]  690 	mov	r6,dpl
      002143 AF 83            [24]  691 	mov	r7,dph
                                    692 ;	src/8051_i2c_eeprom_and_io_expander.c:72: if(!address_range_flag) 
      002145 90 04 5A         [24]  693 	mov	dptr,#_address_range_flag
      002148 E0               [24]  694 	movx	a,@dptr
      002149 F5 F0            [12]  695 	mov	b,a
      00214B A3               [24]  696 	inc	dptr
      00214C E0               [24]  697 	movx	a,@dptr
      00214D 45 F0            [12]  698 	orl	a,b
      00214F 70 0C            [24]  699 	jnz	00103$
                                    700 ;	src/8051_i2c_eeprom_and_io_expander.c:74: address_range_flag = 1;
      002151 90 04 5A         [24]  701 	mov	dptr,#_address_range_flag
      002154 74 01            [12]  702 	mov	a,#0x01
      002156 F0               [24]  703 	movx	@dptr,a
      002157 E4               [12]  704 	clr	a
      002158 A3               [24]  705 	inc	dptr
      002159 F0               [24]  706 	movx	@dptr,a
                                    707 ;	src/8051_i2c_eeprom_and_io_expander.c:75: break;
      00215A 02 20 C3         [24]  708 	ljmp	00117$
      00215D                        709 00103$:
                                    710 ;	src/8051_i2c_eeprom_and_io_expander.c:78: data = take_data();
      00215D C0 07            [24]  711 	push	ar7
      00215F C0 06            [24]  712 	push	ar6
      002161 12 2F 02         [24]  713 	lcall	_take_data
      002164 AD 82            [24]  714 	mov	r5,dpl
      002166 D0 06            [24]  715 	pop	ar6
      002168 D0 07            [24]  716 	pop	ar7
                                    717 ;	src/8051_i2c_eeprom_and_io_expander.c:79: if(!data_range_flag) 
      00216A 90 04 5C         [24]  718 	mov	dptr,#_data_range_flag
      00216D E0               [24]  719 	movx	a,@dptr
      00216E F5 F0            [12]  720 	mov	b,a
      002170 A3               [24]  721 	inc	dptr
      002171 E0               [24]  722 	movx	a,@dptr
      002172 45 F0            [12]  723 	orl	a,b
      002174 70 0C            [24]  724 	jnz	00105$
                                    725 ;	src/8051_i2c_eeprom_and_io_expander.c:81: data_range_flag = 1;
      002176 90 04 5C         [24]  726 	mov	dptr,#_data_range_flag
      002179 74 01            [12]  727 	mov	a,#0x01
      00217B F0               [24]  728 	movx	@dptr,a
      00217C E4               [12]  729 	clr	a
      00217D A3               [24]  730 	inc	dptr
      00217E F0               [24]  731 	movx	@dptr,a
                                    732 ;	src/8051_i2c_eeprom_and_io_expander.c:82: break;
      00217F 02 20 C3         [24]  733 	ljmp	00117$
      002182                        734 00105$:
                                    735 ;	src/8051_i2c_eeprom_and_io_expander.c:85: eeprom_write(addr, data);
      002182 90 04 05         [24]  736 	mov	dptr,#_eeprom_write_PARM_2
      002185 ED               [12]  737 	mov	a,r5
      002186 F0               [24]  738 	movx	@dptr,a
      002187 8E 82            [24]  739 	mov	dpl,r6
      002189 8F 83            [24]  740 	mov	dph,r7
      00218B 12 23 33         [24]  741 	lcall	_eeprom_write
                                    742 ;	src/8051_i2c_eeprom_and_io_expander.c:86: break;
      00218E 02 20 C3         [24]  743 	ljmp	00117$
                                    744 ;	src/8051_i2c_eeprom_and_io_expander.c:88: case 'R':
      002191                        745 00106$:
                                    746 ;	src/8051_i2c_eeprom_and_io_expander.c:90: printf("\n┌─────────────── READ OPERATION ───────────────┐\n\r");
      002191 74 A9            [12]  747 	mov	a,#___str_3
      002193 C0 E0            [24]  748 	push	acc
      002195 74 3B            [12]  749 	mov	a,#(___str_3 >> 8)
      002197 C0 E0            [24]  750 	push	acc
      002199 74 80            [12]  751 	mov	a,#0x80
      00219B C0 E0            [24]  752 	push	acc
      00219D 12 30 C9         [24]  753 	lcall	_printf
      0021A0 15 81            [12]  754 	dec	sp
      0021A2 15 81            [12]  755 	dec	sp
      0021A4 15 81            [12]  756 	dec	sp
                                    757 ;	src/8051_i2c_eeprom_and_io_expander.c:92: addr = take_address(); 
      0021A6 12 2C C4         [24]  758 	lcall	_take_address
      0021A9 AE 82            [24]  759 	mov	r6,dpl
      0021AB AF 83            [24]  760 	mov	r7,dph
                                    761 ;	src/8051_i2c_eeprom_and_io_expander.c:93: if(!address_range_flag) 
      0021AD 90 04 5A         [24]  762 	mov	dptr,#_address_range_flag
      0021B0 E0               [24]  763 	movx	a,@dptr
      0021B1 F5 F0            [12]  764 	mov	b,a
      0021B3 A3               [24]  765 	inc	dptr
      0021B4 E0               [24]  766 	movx	a,@dptr
      0021B5 45 F0            [12]  767 	orl	a,b
      0021B7 70 0C            [24]  768 	jnz	00108$
                                    769 ;	src/8051_i2c_eeprom_and_io_expander.c:95: address_range_flag = 1;
      0021B9 90 04 5A         [24]  770 	mov	dptr,#_address_range_flag
      0021BC 74 01            [12]  771 	mov	a,#0x01
      0021BE F0               [24]  772 	movx	@dptr,a
      0021BF E4               [12]  773 	clr	a
      0021C0 A3               [24]  774 	inc	dptr
      0021C1 F0               [24]  775 	movx	@dptr,a
                                    776 ;	src/8051_i2c_eeprom_and_io_expander.c:96: break;
      0021C2 02 20 C3         [24]  777 	ljmp	00117$
      0021C5                        778 00108$:
                                    779 ;	src/8051_i2c_eeprom_and_io_expander.c:98: printf("| Reading from Address 0x%03X           |\n\r", addr);
      0021C5 C0 07            [24]  780 	push	ar7
      0021C7 C0 06            [24]  781 	push	ar6
      0021C9 C0 06            [24]  782 	push	ar6
      0021CB C0 07            [24]  783 	push	ar7
      0021CD 74 1D            [12]  784 	mov	a,#___str_4
      0021CF C0 E0            [24]  785 	push	acc
      0021D1 74 3C            [12]  786 	mov	a,#(___str_4 >> 8)
      0021D3 C0 E0            [24]  787 	push	acc
      0021D5 74 80            [12]  788 	mov	a,#0x80
      0021D7 C0 E0            [24]  789 	push	acc
      0021D9 12 30 C9         [24]  790 	lcall	_printf
      0021DC E5 81            [12]  791 	mov	a,sp
      0021DE 24 FB            [12]  792 	add	a,#0xfb
      0021E0 F5 81            [12]  793 	mov	sp,a
      0021E2 D0 06            [24]  794 	pop	ar6
      0021E4 D0 07            [24]  795 	pop	ar7
                                    796 ;	src/8051_i2c_eeprom_and_io_expander.c:99: eeprom_read(addr);
      0021E6 8E 82            [24]  797 	mov	dpl,r6
      0021E8 8F 83            [24]  798 	mov	dph,r7
      0021EA 12 24 75         [24]  799 	lcall	_eeprom_read
                                    800 ;	src/8051_i2c_eeprom_and_io_expander.c:100: break;
      0021ED 02 20 C3         [24]  801 	ljmp	00117$
                                    802 ;	src/8051_i2c_eeprom_and_io_expander.c:103: case '?':
      0021F0                        803 00109$:
                                    804 ;	src/8051_i2c_eeprom_and_io_expander.c:104: command_menu();
      0021F0 12 2B DC         [24]  805 	lcall	_command_menu
                                    806 ;	src/8051_i2c_eeprom_and_io_expander.c:105: break;
      0021F3 02 20 C3         [24]  807 	ljmp	00117$
                                    808 ;	src/8051_i2c_eeprom_and_io_expander.c:107: case 'X':
      0021F6                        809 00110$:
                                    810 ;	src/8051_i2c_eeprom_and_io_expander.c:108: printf("\n┌─────────────── RESET OPERATION ───────────┐\n\r");
      0021F6 74 49            [12]  811 	mov	a,#___str_5
      0021F8 C0 E0            [24]  812 	push	acc
      0021FA 74 3C            [12]  813 	mov	a,#(___str_5 >> 8)
      0021FC C0 E0            [24]  814 	push	acc
      0021FE 74 80            [12]  815 	mov	a,#0x80
      002200 C0 E0            [24]  816 	push	acc
      002202 12 30 C9         [24]  817 	lcall	_printf
      002205 15 81            [12]  818 	dec	sp
      002207 15 81            [12]  819 	dec	sp
      002209 15 81            [12]  820 	dec	sp
                                    821 ;	src/8051_i2c_eeprom_and_io_expander.c:109: eeprom_reset();
      00220B 12 29 57         [24]  822 	lcall	_eeprom_reset
                                    823 ;	src/8051_i2c_eeprom_and_io_expander.c:110: break;
      00220E 02 20 C3         [24]  824 	ljmp	00117$
                                    825 ;	src/8051_i2c_eeprom_and_io_expander.c:112: case 'H':
      002211                        826 00111$:
                                    827 ;	src/8051_i2c_eeprom_and_io_expander.c:113: printf("\n┌───────────── HEX DUMP OPERATION ───────────────┐\n\r");
      002211 74 B2            [12]  828 	mov	a,#___str_6
      002213 C0 E0            [24]  829 	push	acc
      002215 74 3C            [12]  830 	mov	a,#(___str_6 >> 8)
      002217 C0 E0            [24]  831 	push	acc
      002219 74 80            [12]  832 	mov	a,#0x80
      00221B C0 E0            [24]  833 	push	acc
      00221D 12 30 C9         [24]  834 	lcall	_printf
      002220 15 81            [12]  835 	dec	sp
      002222 15 81            [12]  836 	dec	sp
      002224 15 81            [12]  837 	dec	sp
                                    838 ;	src/8051_i2c_eeprom_and_io_expander.c:115: handler_EEPROM_hexdump();
      002226 12 28 B8         [24]  839 	lcall	_handler_EEPROM_hexdump
                                    840 ;	src/8051_i2c_eeprom_and_io_expander.c:117: case 'I':
      002229                        841 00112$:
                                    842 ;	src/8051_i2c_eeprom_and_io_expander.c:118: printf("\n┌───────────── IO EXPANDER OPERATION ───────────────┐\n\r");
      002229 74 24            [12]  843 	mov	a,#___str_7
      00222B C0 E0            [24]  844 	push	acc
      00222D 74 3D            [12]  845 	mov	a,#(___str_7 >> 8)
      00222F C0 E0            [24]  846 	push	acc
      002231 74 80            [12]  847 	mov	a,#0x80
      002233 C0 E0            [24]  848 	push	acc
      002235 12 30 C9         [24]  849 	lcall	_printf
      002238 15 81            [12]  850 	dec	sp
      00223A 15 81            [12]  851 	dec	sp
      00223C 15 81            [12]  852 	dec	sp
                                    853 ;	src/8051_i2c_eeprom_and_io_expander.c:119: enable_interrupt0();
      00223E 12 2B 95         [24]  854 	lcall	_enable_interrupt0
                                    855 ;	src/8051_i2c_eeprom_and_io_expander.c:120: pcf8574_init();
      002241 12 22 7A         [24]  856 	lcall	_pcf8574_init
                                    857 ;	src/8051_i2c_eeprom_and_io_expander.c:121: break;
      002244 02 20 C3         [24]  858 	ljmp	00117$
                                    859 ;	src/8051_i2c_eeprom_and_io_expander.c:123: case 'L':
      002247                        860 00113$:
                                    861 ;	src/8051_i2c_eeprom_and_io_expander.c:124: printf("\n┌─────────────  EXIT IO EXPANDER   ───────────────┐\n\r");
      002247 74 99            [12]  862 	mov	a,#___str_8
      002249 C0 E0            [24]  863 	push	acc
      00224B 74 3D            [12]  864 	mov	a,#(___str_8 >> 8)
      00224D C0 E0            [24]  865 	push	acc
      00224F 74 80            [12]  866 	mov	a,#0x80
      002251 C0 E0            [24]  867 	push	acc
      002253 12 30 C9         [24]  868 	lcall	_printf
      002256 15 81            [12]  869 	dec	sp
      002258 15 81            [12]  870 	dec	sp
      00225A 15 81            [12]  871 	dec	sp
                                    872 ;	src/8051_i2c_eeprom_and_io_expander.c:125: disable_interrupt0();
      00225C 12 2B 8E         [24]  873 	lcall	_disable_interrupt0
                                    874 ;	src/8051_i2c_eeprom_and_io_expander.c:126: break;
      00225F 02 20 C3         [24]  875 	ljmp	00117$
                                    876 ;	src/8051_i2c_eeprom_and_io_expander.c:129: default:
      002262                        877 00114$:
                                    878 ;	src/8051_i2c_eeprom_and_io_expander.c:130: printf("INVALID INPUT\n\r");
      002262 74 0C            [12]  879 	mov	a,#___str_9
      002264 C0 E0            [24]  880 	push	acc
      002266 74 3E            [12]  881 	mov	a,#(___str_9 >> 8)
      002268 C0 E0            [24]  882 	push	acc
      00226A 74 80            [12]  883 	mov	a,#0x80
      00226C C0 E0            [24]  884 	push	acc
      00226E 12 30 C9         [24]  885 	lcall	_printf
      002271 15 81            [12]  886 	dec	sp
      002273 15 81            [12]  887 	dec	sp
      002275 15 81            [12]  888 	dec	sp
                                    889 ;	src/8051_i2c_eeprom_and_io_expander.c:132: }
                                    890 ;	src/8051_i2c_eeprom_and_io_expander.c:135: }
      002277 02 20 C3         [24]  891 	ljmp	00117$
                                    892 	.area CSEG    (CODE)
                                    893 	.area CONST   (CODE)
                                    894 	.area CONST   (CODE)
      003B2B                        895 ___str_0:
      003B2B 7C 20 24 20 25 63      896 	.ascii "| $ %c"
      003B31 0A                     897 	.db 0x0a
      003B32 0D                     898 	.db 0x0d
      003B33 00                     899 	.db 0x00
                                    900 	.area CSEG    (CODE)
                                    901 	.area CONST   (CODE)
      003B34                        902 ___str_1:
      003B34 0A                     903 	.db 0x0a
      003B35 0D                     904 	.db 0x0d
      003B36 00                     905 	.db 0x00
                                    906 	.area CSEG    (CODE)
                                    907 	.area CONST   (CODE)
      003B37                        908 ___str_2:
      003B37 0A                     909 	.db 0x0a
      003B38 E2                     910 	.db 0xe2
      003B39 94                     911 	.db 0x94
      003B3A 8C                     912 	.db 0x8c
      003B3B E2                     913 	.db 0xe2
      003B3C 94                     914 	.db 0x94
      003B3D 80                     915 	.db 0x80
      003B3E E2                     916 	.db 0xe2
      003B3F 94                     917 	.db 0x94
      003B40 80                     918 	.db 0x80
      003B41 E2                     919 	.db 0xe2
      003B42 94                     920 	.db 0x94
      003B43 80                     921 	.db 0x80
      003B44 E2                     922 	.db 0xe2
      003B45 94                     923 	.db 0x94
      003B46 80                     924 	.db 0x80
      003B47 E2                     925 	.db 0xe2
      003B48 94                     926 	.db 0x94
      003B49 80                     927 	.db 0x80
      003B4A E2                     928 	.db 0xe2
      003B4B 94                     929 	.db 0x94
      003B4C 80                     930 	.db 0x80
      003B4D E2                     931 	.db 0xe2
      003B4E 94                     932 	.db 0x94
      003B4F 80                     933 	.db 0x80
      003B50 E2                     934 	.db 0xe2
      003B51 94                     935 	.db 0x94
      003B52 80                     936 	.db 0x80
      003B53 E2                     937 	.db 0xe2
      003B54 94                     938 	.db 0x94
      003B55 80                     939 	.db 0x80
      003B56 E2                     940 	.db 0xe2
      003B57 94                     941 	.db 0x94
      003B58 80                     942 	.db 0x80
      003B59 E2                     943 	.db 0xe2
      003B5A 94                     944 	.db 0x94
      003B5B 80                     945 	.db 0x80
      003B5C E2                     946 	.db 0xe2
      003B5D 94                     947 	.db 0x94
      003B5E 80                     948 	.db 0x80
      003B5F E2                     949 	.db 0xe2
      003B60 94                     950 	.db 0x94
      003B61 80                     951 	.db 0x80
      003B62 E2                     952 	.db 0xe2
      003B63 94                     953 	.db 0x94
      003B64 80                     954 	.db 0x80
      003B65 E2                     955 	.db 0xe2
      003B66 94                     956 	.db 0x94
      003B67 80                     957 	.db 0x80
      003B68 20 57 52 49 54 45 20   958 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      003B79 E2                     959 	.db 0xe2
      003B7A 94                     960 	.db 0x94
      003B7B 80                     961 	.db 0x80
      003B7C E2                     962 	.db 0xe2
      003B7D 94                     963 	.db 0x94
      003B7E 80                     964 	.db 0x80
      003B7F E2                     965 	.db 0xe2
      003B80 94                     966 	.db 0x94
      003B81 80                     967 	.db 0x80
      003B82 E2                     968 	.db 0xe2
      003B83 94                     969 	.db 0x94
      003B84 80                     970 	.db 0x80
      003B85 E2                     971 	.db 0xe2
      003B86 94                     972 	.db 0x94
      003B87 80                     973 	.db 0x80
      003B88 E2                     974 	.db 0xe2
      003B89 94                     975 	.db 0x94
      003B8A 80                     976 	.db 0x80
      003B8B E2                     977 	.db 0xe2
      003B8C 94                     978 	.db 0x94
      003B8D 80                     979 	.db 0x80
      003B8E E2                     980 	.db 0xe2
      003B8F 94                     981 	.db 0x94
      003B90 80                     982 	.db 0x80
      003B91 E2                     983 	.db 0xe2
      003B92 94                     984 	.db 0x94
      003B93 80                     985 	.db 0x80
      003B94 E2                     986 	.db 0xe2
      003B95 94                     987 	.db 0x94
      003B96 80                     988 	.db 0x80
      003B97 E2                     989 	.db 0xe2
      003B98 94                     990 	.db 0x94
      003B99 80                     991 	.db 0x80
      003B9A E2                     992 	.db 0xe2
      003B9B 94                     993 	.db 0x94
      003B9C 80                     994 	.db 0x80
      003B9D E2                     995 	.db 0xe2
      003B9E 94                     996 	.db 0x94
      003B9F 80                     997 	.db 0x80
      003BA0 E2                     998 	.db 0xe2
      003BA1 94                     999 	.db 0x94
      003BA2 80                    1000 	.db 0x80
      003BA3 E2                    1001 	.db 0xe2
      003BA4 94                    1002 	.db 0x94
      003BA5 90                    1003 	.db 0x90
      003BA6 0A                    1004 	.db 0x0a
      003BA7 0D                    1005 	.db 0x0d
      003BA8 00                    1006 	.db 0x00
                                   1007 	.area CSEG    (CODE)
                                   1008 	.area CONST   (CODE)
      003BA9                       1009 ___str_3:
      003BA9 0A                    1010 	.db 0x0a
      003BAA E2                    1011 	.db 0xe2
      003BAB 94                    1012 	.db 0x94
      003BAC 8C                    1013 	.db 0x8c
      003BAD E2                    1014 	.db 0xe2
      003BAE 94                    1015 	.db 0x94
      003BAF 80                    1016 	.db 0x80
      003BB0 E2                    1017 	.db 0xe2
      003BB1 94                    1018 	.db 0x94
      003BB2 80                    1019 	.db 0x80
      003BB3 E2                    1020 	.db 0xe2
      003BB4 94                    1021 	.db 0x94
      003BB5 80                    1022 	.db 0x80
      003BB6 E2                    1023 	.db 0xe2
      003BB7 94                    1024 	.db 0x94
      003BB8 80                    1025 	.db 0x80
      003BB9 E2                    1026 	.db 0xe2
      003BBA 94                    1027 	.db 0x94
      003BBB 80                    1028 	.db 0x80
      003BBC E2                    1029 	.db 0xe2
      003BBD 94                    1030 	.db 0x94
      003BBE 80                    1031 	.db 0x80
      003BBF E2                    1032 	.db 0xe2
      003BC0 94                    1033 	.db 0x94
      003BC1 80                    1034 	.db 0x80
      003BC2 E2                    1035 	.db 0xe2
      003BC3 94                    1036 	.db 0x94
      003BC4 80                    1037 	.db 0x80
      003BC5 E2                    1038 	.db 0xe2
      003BC6 94                    1039 	.db 0x94
      003BC7 80                    1040 	.db 0x80
      003BC8 E2                    1041 	.db 0xe2
      003BC9 94                    1042 	.db 0x94
      003BCA 80                    1043 	.db 0x80
      003BCB E2                    1044 	.db 0xe2
      003BCC 94                    1045 	.db 0x94
      003BCD 80                    1046 	.db 0x80
      003BCE E2                    1047 	.db 0xe2
      003BCF 94                    1048 	.db 0x94
      003BD0 80                    1049 	.db 0x80
      003BD1 E2                    1050 	.db 0xe2
      003BD2 94                    1051 	.db 0x94
      003BD3 80                    1052 	.db 0x80
      003BD4 E2                    1053 	.db 0xe2
      003BD5 94                    1054 	.db 0x94
      003BD6 80                    1055 	.db 0x80
      003BD7 E2                    1056 	.db 0xe2
      003BD8 94                    1057 	.db 0x94
      003BD9 80                    1058 	.db 0x80
      003BDA 20 52 45 41 44 20 4F  1059 	.ascii " READ OPERATION "
             50 45 52 41 54 49 4F
             4E 20
      003BEA E2                    1060 	.db 0xe2
      003BEB 94                    1061 	.db 0x94
      003BEC 80                    1062 	.db 0x80
      003BED E2                    1063 	.db 0xe2
      003BEE 94                    1064 	.db 0x94
      003BEF 80                    1065 	.db 0x80
      003BF0 E2                    1066 	.db 0xe2
      003BF1 94                    1067 	.db 0x94
      003BF2 80                    1068 	.db 0x80
      003BF3 E2                    1069 	.db 0xe2
      003BF4 94                    1070 	.db 0x94
      003BF5 80                    1071 	.db 0x80
      003BF6 E2                    1072 	.db 0xe2
      003BF7 94                    1073 	.db 0x94
      003BF8 80                    1074 	.db 0x80
      003BF9 E2                    1075 	.db 0xe2
      003BFA 94                    1076 	.db 0x94
      003BFB 80                    1077 	.db 0x80
      003BFC E2                    1078 	.db 0xe2
      003BFD 94                    1079 	.db 0x94
      003BFE 80                    1080 	.db 0x80
      003BFF E2                    1081 	.db 0xe2
      003C00 94                    1082 	.db 0x94
      003C01 80                    1083 	.db 0x80
      003C02 E2                    1084 	.db 0xe2
      003C03 94                    1085 	.db 0x94
      003C04 80                    1086 	.db 0x80
      003C05 E2                    1087 	.db 0xe2
      003C06 94                    1088 	.db 0x94
      003C07 80                    1089 	.db 0x80
      003C08 E2                    1090 	.db 0xe2
      003C09 94                    1091 	.db 0x94
      003C0A 80                    1092 	.db 0x80
      003C0B E2                    1093 	.db 0xe2
      003C0C 94                    1094 	.db 0x94
      003C0D 80                    1095 	.db 0x80
      003C0E E2                    1096 	.db 0xe2
      003C0F 94                    1097 	.db 0x94
      003C10 80                    1098 	.db 0x80
      003C11 E2                    1099 	.db 0xe2
      003C12 94                    1100 	.db 0x94
      003C13 80                    1101 	.db 0x80
      003C14 E2                    1102 	.db 0xe2
      003C15 94                    1103 	.db 0x94
      003C16 80                    1104 	.db 0x80
      003C17 E2                    1105 	.db 0xe2
      003C18 94                    1106 	.db 0x94
      003C19 90                    1107 	.db 0x90
      003C1A 0A                    1108 	.db 0x0a
      003C1B 0D                    1109 	.db 0x0d
      003C1C 00                    1110 	.db 0x00
                                   1111 	.area CSEG    (CODE)
                                   1112 	.area CONST   (CODE)
      003C1D                       1113 ___str_4:
      003C1D 7C 20 52 65 61 64 69  1114 	.ascii "| Reading from Address 0x%03X           |"
             6E 67 20 66 72 6F 6D
             20 41 64 64 72 65 73
             73 20 30 78 25 30 33
             58 20 20 20 20 20 20
             20 20 20 20 20 7C
      003C46 0A                    1115 	.db 0x0a
      003C47 0D                    1116 	.db 0x0d
      003C48 00                    1117 	.db 0x00
                                   1118 	.area CSEG    (CODE)
                                   1119 	.area CONST   (CODE)
      003C49                       1120 ___str_5:
      003C49 0A                    1121 	.db 0x0a
      003C4A E2                    1122 	.db 0xe2
      003C4B 94                    1123 	.db 0x94
      003C4C 8C                    1124 	.db 0x8c
      003C4D E2                    1125 	.db 0xe2
      003C4E 94                    1126 	.db 0x94
      003C4F 80                    1127 	.db 0x80
      003C50 E2                    1128 	.db 0xe2
      003C51 94                    1129 	.db 0x94
      003C52 80                    1130 	.db 0x80
      003C53 E2                    1131 	.db 0xe2
      003C54 94                    1132 	.db 0x94
      003C55 80                    1133 	.db 0x80
      003C56 E2                    1134 	.db 0xe2
      003C57 94                    1135 	.db 0x94
      003C58 80                    1136 	.db 0x80
      003C59 E2                    1137 	.db 0xe2
      003C5A 94                    1138 	.db 0x94
      003C5B 80                    1139 	.db 0x80
      003C5C E2                    1140 	.db 0xe2
      003C5D 94                    1141 	.db 0x94
      003C5E 80                    1142 	.db 0x80
      003C5F E2                    1143 	.db 0xe2
      003C60 94                    1144 	.db 0x94
      003C61 80                    1145 	.db 0x80
      003C62 E2                    1146 	.db 0xe2
      003C63 94                    1147 	.db 0x94
      003C64 80                    1148 	.db 0x80
      003C65 E2                    1149 	.db 0xe2
      003C66 94                    1150 	.db 0x94
      003C67 80                    1151 	.db 0x80
      003C68 E2                    1152 	.db 0xe2
      003C69 94                    1153 	.db 0x94
      003C6A 80                    1154 	.db 0x80
      003C6B E2                    1155 	.db 0xe2
      003C6C 94                    1156 	.db 0x94
      003C6D 80                    1157 	.db 0x80
      003C6E E2                    1158 	.db 0xe2
      003C6F 94                    1159 	.db 0x94
      003C70 80                    1160 	.db 0x80
      003C71 E2                    1161 	.db 0xe2
      003C72 94                    1162 	.db 0x94
      003C73 80                    1163 	.db 0x80
      003C74 E2                    1164 	.db 0xe2
      003C75 94                    1165 	.db 0x94
      003C76 80                    1166 	.db 0x80
      003C77 E2                    1167 	.db 0xe2
      003C78 94                    1168 	.db 0x94
      003C79 80                    1169 	.db 0x80
      003C7A 20 52 45 53 45 54 20  1170 	.ascii " RESET OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      003C8B E2                    1171 	.db 0xe2
      003C8C 94                    1172 	.db 0x94
      003C8D 80                    1173 	.db 0x80
      003C8E E2                    1174 	.db 0xe2
      003C8F 94                    1175 	.db 0x94
      003C90 80                    1176 	.db 0x80
      003C91 E2                    1177 	.db 0xe2
      003C92 94                    1178 	.db 0x94
      003C93 80                    1179 	.db 0x80
      003C94 E2                    1180 	.db 0xe2
      003C95 94                    1181 	.db 0x94
      003C96 80                    1182 	.db 0x80
      003C97 E2                    1183 	.db 0xe2
      003C98 94                    1184 	.db 0x94
      003C99 80                    1185 	.db 0x80
      003C9A E2                    1186 	.db 0xe2
      003C9B 94                    1187 	.db 0x94
      003C9C 80                    1188 	.db 0x80
      003C9D E2                    1189 	.db 0xe2
      003C9E 94                    1190 	.db 0x94
      003C9F 80                    1191 	.db 0x80
      003CA0 E2                    1192 	.db 0xe2
      003CA1 94                    1193 	.db 0x94
      003CA2 80                    1194 	.db 0x80
      003CA3 E2                    1195 	.db 0xe2
      003CA4 94                    1196 	.db 0x94
      003CA5 80                    1197 	.db 0x80
      003CA6 E2                    1198 	.db 0xe2
      003CA7 94                    1199 	.db 0x94
      003CA8 80                    1200 	.db 0x80
      003CA9 E2                    1201 	.db 0xe2
      003CAA 94                    1202 	.db 0x94
      003CAB 80                    1203 	.db 0x80
      003CAC E2                    1204 	.db 0xe2
      003CAD 94                    1205 	.db 0x94
      003CAE 90                    1206 	.db 0x90
      003CAF 0A                    1207 	.db 0x0a
      003CB0 0D                    1208 	.db 0x0d
      003CB1 00                    1209 	.db 0x00
                                   1210 	.area CSEG    (CODE)
                                   1211 	.area CONST   (CODE)
      003CB2                       1212 ___str_6:
      003CB2 0A                    1213 	.db 0x0a
      003CB3 E2                    1214 	.db 0xe2
      003CB4 94                    1215 	.db 0x94
      003CB5 8C                    1216 	.db 0x8c
      003CB6 E2                    1217 	.db 0xe2
      003CB7 94                    1218 	.db 0x94
      003CB8 80                    1219 	.db 0x80
      003CB9 E2                    1220 	.db 0xe2
      003CBA 94                    1221 	.db 0x94
      003CBB 80                    1222 	.db 0x80
      003CBC E2                    1223 	.db 0xe2
      003CBD 94                    1224 	.db 0x94
      003CBE 80                    1225 	.db 0x80
      003CBF E2                    1226 	.db 0xe2
      003CC0 94                    1227 	.db 0x94
      003CC1 80                    1228 	.db 0x80
      003CC2 E2                    1229 	.db 0xe2
      003CC3 94                    1230 	.db 0x94
      003CC4 80                    1231 	.db 0x80
      003CC5 E2                    1232 	.db 0xe2
      003CC6 94                    1233 	.db 0x94
      003CC7 80                    1234 	.db 0x80
      003CC8 E2                    1235 	.db 0xe2
      003CC9 94                    1236 	.db 0x94
      003CCA 80                    1237 	.db 0x80
      003CCB E2                    1238 	.db 0xe2
      003CCC 94                    1239 	.db 0x94
      003CCD 80                    1240 	.db 0x80
      003CCE E2                    1241 	.db 0xe2
      003CCF 94                    1242 	.db 0x94
      003CD0 80                    1243 	.db 0x80
      003CD1 E2                    1244 	.db 0xe2
      003CD2 94                    1245 	.db 0x94
      003CD3 80                    1246 	.db 0x80
      003CD4 E2                    1247 	.db 0xe2
      003CD5 94                    1248 	.db 0x94
      003CD6 80                    1249 	.db 0x80
      003CD7 E2                    1250 	.db 0xe2
      003CD8 94                    1251 	.db 0x94
      003CD9 80                    1252 	.db 0x80
      003CDA E2                    1253 	.db 0xe2
      003CDB 94                    1254 	.db 0x94
      003CDC 80                    1255 	.db 0x80
      003CDD 20 48 45 58 20 44 55  1256 	.ascii " HEX DUMP OPERATION "
             4D 50 20 4F 50 45 52
             41 54 49 4F 4E 20
      003CF1 E2                    1257 	.db 0xe2
      003CF2 94                    1258 	.db 0x94
      003CF3 80                    1259 	.db 0x80
      003CF4 E2                    1260 	.db 0xe2
      003CF5 94                    1261 	.db 0x94
      003CF6 80                    1262 	.db 0x80
      003CF7 E2                    1263 	.db 0xe2
      003CF8 94                    1264 	.db 0x94
      003CF9 80                    1265 	.db 0x80
      003CFA E2                    1266 	.db 0xe2
      003CFB 94                    1267 	.db 0x94
      003CFC 80                    1268 	.db 0x80
      003CFD E2                    1269 	.db 0xe2
      003CFE 94                    1270 	.db 0x94
      003CFF 80                    1271 	.db 0x80
      003D00 E2                    1272 	.db 0xe2
      003D01 94                    1273 	.db 0x94
      003D02 80                    1274 	.db 0x80
      003D03 E2                    1275 	.db 0xe2
      003D04 94                    1276 	.db 0x94
      003D05 80                    1277 	.db 0x80
      003D06 E2                    1278 	.db 0xe2
      003D07 94                    1279 	.db 0x94
      003D08 80                    1280 	.db 0x80
      003D09 E2                    1281 	.db 0xe2
      003D0A 94                    1282 	.db 0x94
      003D0B 80                    1283 	.db 0x80
      003D0C E2                    1284 	.db 0xe2
      003D0D 94                    1285 	.db 0x94
      003D0E 80                    1286 	.db 0x80
      003D0F E2                    1287 	.db 0xe2
      003D10 94                    1288 	.db 0x94
      003D11 80                    1289 	.db 0x80
      003D12 E2                    1290 	.db 0xe2
      003D13 94                    1291 	.db 0x94
      003D14 80                    1292 	.db 0x80
      003D15 E2                    1293 	.db 0xe2
      003D16 94                    1294 	.db 0x94
      003D17 80                    1295 	.db 0x80
      003D18 E2                    1296 	.db 0xe2
      003D19 94                    1297 	.db 0x94
      003D1A 80                    1298 	.db 0x80
      003D1B E2                    1299 	.db 0xe2
      003D1C 94                    1300 	.db 0x94
      003D1D 80                    1301 	.db 0x80
      003D1E E2                    1302 	.db 0xe2
      003D1F 94                    1303 	.db 0x94
      003D20 90                    1304 	.db 0x90
      003D21 0A                    1305 	.db 0x0a
      003D22 0D                    1306 	.db 0x0d
      003D23 00                    1307 	.db 0x00
                                   1308 	.area CSEG    (CODE)
                                   1309 	.area CONST   (CODE)
      003D24                       1310 ___str_7:
      003D24 0A                    1311 	.db 0x0a
      003D25 E2                    1312 	.db 0xe2
      003D26 94                    1313 	.db 0x94
      003D27 8C                    1314 	.db 0x8c
      003D28 E2                    1315 	.db 0xe2
      003D29 94                    1316 	.db 0x94
      003D2A 80                    1317 	.db 0x80
      003D2B E2                    1318 	.db 0xe2
      003D2C 94                    1319 	.db 0x94
      003D2D 80                    1320 	.db 0x80
      003D2E E2                    1321 	.db 0xe2
      003D2F 94                    1322 	.db 0x94
      003D30 80                    1323 	.db 0x80
      003D31 E2                    1324 	.db 0xe2
      003D32 94                    1325 	.db 0x94
      003D33 80                    1326 	.db 0x80
      003D34 E2                    1327 	.db 0xe2
      003D35 94                    1328 	.db 0x94
      003D36 80                    1329 	.db 0x80
      003D37 E2                    1330 	.db 0xe2
      003D38 94                    1331 	.db 0x94
      003D39 80                    1332 	.db 0x80
      003D3A E2                    1333 	.db 0xe2
      003D3B 94                    1334 	.db 0x94
      003D3C 80                    1335 	.db 0x80
      003D3D E2                    1336 	.db 0xe2
      003D3E 94                    1337 	.db 0x94
      003D3F 80                    1338 	.db 0x80
      003D40 E2                    1339 	.db 0xe2
      003D41 94                    1340 	.db 0x94
      003D42 80                    1341 	.db 0x80
      003D43 E2                    1342 	.db 0xe2
      003D44 94                    1343 	.db 0x94
      003D45 80                    1344 	.db 0x80
      003D46 E2                    1345 	.db 0xe2
      003D47 94                    1346 	.db 0x94
      003D48 80                    1347 	.db 0x80
      003D49 E2                    1348 	.db 0xe2
      003D4A 94                    1349 	.db 0x94
      003D4B 80                    1350 	.db 0x80
      003D4C E2                    1351 	.db 0xe2
      003D4D 94                    1352 	.db 0x94
      003D4E 80                    1353 	.db 0x80
      003D4F 20 49 4F 20 45 58 50  1354 	.ascii " IO EXPANDER OPERATION "
             41 4E 44 45 52 20 4F
             50 45 52 41 54 49 4F
             4E 20
      003D66 E2                    1355 	.db 0xe2
      003D67 94                    1356 	.db 0x94
      003D68 80                    1357 	.db 0x80
      003D69 E2                    1358 	.db 0xe2
      003D6A 94                    1359 	.db 0x94
      003D6B 80                    1360 	.db 0x80
      003D6C E2                    1361 	.db 0xe2
      003D6D 94                    1362 	.db 0x94
      003D6E 80                    1363 	.db 0x80
      003D6F E2                    1364 	.db 0xe2
      003D70 94                    1365 	.db 0x94
      003D71 80                    1366 	.db 0x80
      003D72 E2                    1367 	.db 0xe2
      003D73 94                    1368 	.db 0x94
      003D74 80                    1369 	.db 0x80
      003D75 E2                    1370 	.db 0xe2
      003D76 94                    1371 	.db 0x94
      003D77 80                    1372 	.db 0x80
      003D78 E2                    1373 	.db 0xe2
      003D79 94                    1374 	.db 0x94
      003D7A 80                    1375 	.db 0x80
      003D7B E2                    1376 	.db 0xe2
      003D7C 94                    1377 	.db 0x94
      003D7D 80                    1378 	.db 0x80
      003D7E E2                    1379 	.db 0xe2
      003D7F 94                    1380 	.db 0x94
      003D80 80                    1381 	.db 0x80
      003D81 E2                    1382 	.db 0xe2
      003D82 94                    1383 	.db 0x94
      003D83 80                    1384 	.db 0x80
      003D84 E2                    1385 	.db 0xe2
      003D85 94                    1386 	.db 0x94
      003D86 80                    1387 	.db 0x80
      003D87 E2                    1388 	.db 0xe2
      003D88 94                    1389 	.db 0x94
      003D89 80                    1390 	.db 0x80
      003D8A E2                    1391 	.db 0xe2
      003D8B 94                    1392 	.db 0x94
      003D8C 80                    1393 	.db 0x80
      003D8D E2                    1394 	.db 0xe2
      003D8E 94                    1395 	.db 0x94
      003D8F 80                    1396 	.db 0x80
      003D90 E2                    1397 	.db 0xe2
      003D91 94                    1398 	.db 0x94
      003D92 80                    1399 	.db 0x80
      003D93 E2                    1400 	.db 0xe2
      003D94 94                    1401 	.db 0x94
      003D95 90                    1402 	.db 0x90
      003D96 0A                    1403 	.db 0x0a
      003D97 0D                    1404 	.db 0x0d
      003D98 00                    1405 	.db 0x00
                                   1406 	.area CSEG    (CODE)
                                   1407 	.area CONST   (CODE)
      003D99                       1408 ___str_8:
      003D99 0A                    1409 	.db 0x0a
      003D9A E2                    1410 	.db 0xe2
      003D9B 94                    1411 	.db 0x94
      003D9C 8C                    1412 	.db 0x8c
      003D9D E2                    1413 	.db 0xe2
      003D9E 94                    1414 	.db 0x94
      003D9F 80                    1415 	.db 0x80
      003DA0 E2                    1416 	.db 0xe2
      003DA1 94                    1417 	.db 0x94
      003DA2 80                    1418 	.db 0x80
      003DA3 E2                    1419 	.db 0xe2
      003DA4 94                    1420 	.db 0x94
      003DA5 80                    1421 	.db 0x80
      003DA6 E2                    1422 	.db 0xe2
      003DA7 94                    1423 	.db 0x94
      003DA8 80                    1424 	.db 0x80
      003DA9 E2                    1425 	.db 0xe2
      003DAA 94                    1426 	.db 0x94
      003DAB 80                    1427 	.db 0x80
      003DAC E2                    1428 	.db 0xe2
      003DAD 94                    1429 	.db 0x94
      003DAE 80                    1430 	.db 0x80
      003DAF E2                    1431 	.db 0xe2
      003DB0 94                    1432 	.db 0x94
      003DB1 80                    1433 	.db 0x80
      003DB2 E2                    1434 	.db 0xe2
      003DB3 94                    1435 	.db 0x94
      003DB4 80                    1436 	.db 0x80
      003DB5 E2                    1437 	.db 0xe2
      003DB6 94                    1438 	.db 0x94
      003DB7 80                    1439 	.db 0x80
      003DB8 E2                    1440 	.db 0xe2
      003DB9 94                    1441 	.db 0x94
      003DBA 80                    1442 	.db 0x80
      003DBB E2                    1443 	.db 0xe2
      003DBC 94                    1444 	.db 0x94
      003DBD 80                    1445 	.db 0x80
      003DBE E2                    1446 	.db 0xe2
      003DBF 94                    1447 	.db 0x94
      003DC0 80                    1448 	.db 0x80
      003DC1 E2                    1449 	.db 0xe2
      003DC2 94                    1450 	.db 0x94
      003DC3 80                    1451 	.db 0x80
      003DC4 20 20 45 58 49 54 20  1452 	.ascii "  EXIT IO EXPANDER   "
             49 4F 20 45 58 50 41
             4E 44 45 52 20 20 20
      003DD9 E2                    1453 	.db 0xe2
      003DDA 94                    1454 	.db 0x94
      003DDB 80                    1455 	.db 0x80
      003DDC E2                    1456 	.db 0xe2
      003DDD 94                    1457 	.db 0x94
      003DDE 80                    1458 	.db 0x80
      003DDF E2                    1459 	.db 0xe2
      003DE0 94                    1460 	.db 0x94
      003DE1 80                    1461 	.db 0x80
      003DE2 E2                    1462 	.db 0xe2
      003DE3 94                    1463 	.db 0x94
      003DE4 80                    1464 	.db 0x80
      003DE5 E2                    1465 	.db 0xe2
      003DE6 94                    1466 	.db 0x94
      003DE7 80                    1467 	.db 0x80
      003DE8 E2                    1468 	.db 0xe2
      003DE9 94                    1469 	.db 0x94
      003DEA 80                    1470 	.db 0x80
      003DEB E2                    1471 	.db 0xe2
      003DEC 94                    1472 	.db 0x94
      003DED 80                    1473 	.db 0x80
      003DEE E2                    1474 	.db 0xe2
      003DEF 94                    1475 	.db 0x94
      003DF0 80                    1476 	.db 0x80
      003DF1 E2                    1477 	.db 0xe2
      003DF2 94                    1478 	.db 0x94
      003DF3 80                    1479 	.db 0x80
      003DF4 E2                    1480 	.db 0xe2
      003DF5 94                    1481 	.db 0x94
      003DF6 80                    1482 	.db 0x80
      003DF7 E2                    1483 	.db 0xe2
      003DF8 94                    1484 	.db 0x94
      003DF9 80                    1485 	.db 0x80
      003DFA E2                    1486 	.db 0xe2
      003DFB 94                    1487 	.db 0x94
      003DFC 80                    1488 	.db 0x80
      003DFD E2                    1489 	.db 0xe2
      003DFE 94                    1490 	.db 0x94
      003DFF 80                    1491 	.db 0x80
      003E00 E2                    1492 	.db 0xe2
      003E01 94                    1493 	.db 0x94
      003E02 80                    1494 	.db 0x80
      003E03 E2                    1495 	.db 0xe2
      003E04 94                    1496 	.db 0x94
      003E05 80                    1497 	.db 0x80
      003E06 E2                    1498 	.db 0xe2
      003E07 94                    1499 	.db 0x94
      003E08 90                    1500 	.db 0x90
      003E09 0A                    1501 	.db 0x0a
      003E0A 0D                    1502 	.db 0x0d
      003E0B 00                    1503 	.db 0x00
                                   1504 	.area CSEG    (CODE)
                                   1505 	.area CONST   (CODE)
      003E0C                       1506 ___str_9:
      003E0C 49 4E 56 41 4C 49 44  1507 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      003E19 0A                    1508 	.db 0x0a
      003E1A 0D                    1509 	.db 0x0d
      003E1B 00                    1510 	.db 0x00
                                   1511 	.area CSEG    (CODE)
                                   1512 	.area XINIT   (CODE)
                                   1513 	.area CABS    (ABS,CODE)
