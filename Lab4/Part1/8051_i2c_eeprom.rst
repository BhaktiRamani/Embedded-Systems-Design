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
      000404                        475 _take_address_input_65537_63:
      000404                        476 	.ds 4
      000408                        477 _take_address_address_65538_67:
      000408                        478 	.ds 2
      00040A                        479 _take_data_input_65537_73:
      00040A                        480 	.ds 4
      00040E                        481 _take_data_data_65538_77:
      00040E                        482 	.ds 1
      00040F                        483 _eeprom_write_PARM_2:
      00040F                        484 	.ds 1
      000410                        485 _eeprom_write_address_65536_81:
      000410                        486 	.ds 2
      000412                        487 _eeprom_read_address_65536_88:
      000412                        488 	.ds 2
      000414                        489 _i2c_write_data_65536_93:
      000414                        490 	.ds 1
      000415                        491 _i2c_read_ACK_65536_98:
      000415                        492 	.ds 2
      000417                        493 _i2c_read_buff_65536_99:
      000417                        494 	.ds 1
                                    495 ;--------------------------------------------------------
                                    496 ; absolute external ram data
                                    497 ;--------------------------------------------------------
                                    498 	.area XABS    (ABS,XDATA)
                                    499 ;--------------------------------------------------------
                                    500 ; external initialized ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area XISEG   (XDATA)
      000451                        503 _block:
      000451                        504 	.ds 2
                                    505 	.area HOME    (CODE)
                                    506 	.area GSINIT0 (CODE)
                                    507 	.area GSINIT1 (CODE)
                                    508 	.area GSINIT2 (CODE)
                                    509 	.area GSINIT3 (CODE)
                                    510 	.area GSINIT4 (CODE)
                                    511 	.area GSINIT5 (CODE)
                                    512 	.area GSINIT  (CODE)
                                    513 	.area GSFINAL (CODE)
                                    514 	.area CSEG    (CODE)
                                    515 ;--------------------------------------------------------
                                    516 ; interrupt vector 
                                    517 ;--------------------------------------------------------
                                    518 	.area HOME    (CODE)
      003000                        519 __interrupt_vect:
      003000 02 30 06         [24]  520 	ljmp	__sdcc_gsinit_startup
                                    521 ;--------------------------------------------------------
                                    522 ; global & static initialisations
                                    523 ;--------------------------------------------------------
                                    524 	.area HOME    (CODE)
                                    525 	.area GSINIT  (CODE)
                                    526 	.area GSFINAL (CODE)
                                    527 	.area GSINIT  (CODE)
                                    528 	.globl __sdcc_gsinit_startup
                                    529 	.globl __sdcc_program_startup
                                    530 	.globl __start__stack
                                    531 	.globl __mcs51_genXINIT
                                    532 	.globl __mcs51_genXRAMCLEAR
                                    533 	.globl __mcs51_genRAMCLEAR
                                    534 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  535 	ljmp	__sdcc_program_startup
                                    536 ;--------------------------------------------------------
                                    537 ; Home
                                    538 ;--------------------------------------------------------
                                    539 	.area HOME    (CODE)
                                    540 	.area HOME    (CODE)
      003003                        541 __sdcc_program_startup:
      003003 02 31 A2         [24]  542 	ljmp	_main
                                    543 ;	return from main will return to caller
                                    544 ;--------------------------------------------------------
                                    545 ; code
                                    546 ;--------------------------------------------------------
                                    547 	.area CSEG    (CODE)
                                    548 ;------------------------------------------------------------
                                    549 ;Allocation info for local variables in function 'putchar'
                                    550 ;------------------------------------------------------------
                                    551 ;charToSend                Allocated with name '_putchar_charToSend_65536_48'
                                    552 ;------------------------------------------------------------
                                    553 ;	8051_i2c_eeprom.c:27: int putchar(int charToSend) {
                                    554 ;	-----------------------------------------
                                    555 ;	 function putchar
                                    556 ;	-----------------------------------------
      003062                        557 _putchar:
                           000007   558 	ar7 = 0x07
                           000006   559 	ar6 = 0x06
                           000005   560 	ar5 = 0x05
                           000004   561 	ar4 = 0x04
                           000003   562 	ar3 = 0x03
                           000002   563 	ar2 = 0x02
                           000001   564 	ar1 = 0x01
                           000000   565 	ar0 = 0x00
      003062 AF 83            [24]  566 	mov	r7,dph
      003064 E5 82            [12]  567 	mov	a,dpl
      003066 90 04 02         [24]  568 	mov	dptr,#_putchar_charToSend_65536_48
      003069 F0               [24]  569 	movx	@dptr,a
      00306A EF               [12]  570 	mov	a,r7
      00306B A3               [24]  571 	inc	dptr
      00306C F0               [24]  572 	movx	@dptr,a
                                    573 ;	8051_i2c_eeprom.c:28: SBUF = charToSend;  // Send character to serial buffer
      00306D 90 04 02         [24]  574 	mov	dptr,#_putchar_charToSend_65536_48
      003070 E0               [24]  575 	movx	a,@dptr
      003071 FE               [12]  576 	mov	r6,a
      003072 A3               [24]  577 	inc	dptr
      003073 E0               [24]  578 	movx	a,@dptr
      003074 FF               [12]  579 	mov	r7,a
      003075 8E 99            [24]  580 	mov	_SBUF,r6
                                    581 ;	8051_i2c_eeprom.c:29: while (!TI);        // Wait for transmission to complete
      003077                        582 00101$:
                                    583 ;	8051_i2c_eeprom.c:30: TI = 0;            // Clear transmission interrupt flag
                                    584 ;	assignBit
      003077 10 99 02         [24]  585 	jbc	_TI,00114$
      00307A 80 FB            [24]  586 	sjmp	00101$
      00307C                        587 00114$:
                                    588 ;	8051_i2c_eeprom.c:31: return charToSend;
      00307C 8E 82            [24]  589 	mov	dpl,r6
      00307E 8F 83            [24]  590 	mov	dph,r7
                                    591 ;	8051_i2c_eeprom.c:32: }
      003080 22               [24]  592 	ret
                                    593 ;------------------------------------------------------------
                                    594 ;Allocation info for local variables in function 'getchar'
                                    595 ;------------------------------------------------------------
                                    596 ;	8051_i2c_eeprom.c:34: int getchar(void) 
                                    597 ;	-----------------------------------------
                                    598 ;	 function getchar
                                    599 ;	-----------------------------------------
      003081                        600 _getchar:
                                    601 ;	8051_i2c_eeprom.c:36: while (!RI);        // Wait for reception to complete
      003081                        602 00101$:
                                    603 ;	8051_i2c_eeprom.c:37: RI = 0;            // Clear reception interrupt flag
                                    604 ;	assignBit
      003081 10 98 02         [24]  605 	jbc	_RI,00114$
      003084 80 FB            [24]  606 	sjmp	00101$
      003086                        607 00114$:
                                    608 ;	8051_i2c_eeprom.c:38: return SBUF;       // Return received character
      003086 AE 99            [24]  609 	mov	r6,_SBUF
      003088 7F 00            [12]  610 	mov	r7,#0x00
      00308A 8E 82            [24]  611 	mov	dpl,r6
      00308C 8F 83            [24]  612 	mov	dph,r7
                                    613 ;	8051_i2c_eeprom.c:39: }
      00308E 22               [24]  614 	ret
                                    615 ;------------------------------------------------------------
                                    616 ;Allocation info for local variables in function 'ui'
                                    617 ;------------------------------------------------------------
                                    618 ;	8051_i2c_eeprom.c:41: void ui()
                                    619 ;	-----------------------------------------
                                    620 ;	 function ui
                                    621 ;	-----------------------------------------
      00308F                        622 _ui:
                                    623 ;	8051_i2c_eeprom.c:43: printf("\n╔════════════════════════════════════════════════════════╗\n\r");
      00308F 74 51            [12]  624 	mov	a,#___str_0
      003091 C0 E0            [24]  625 	push	acc
      003093 74 45            [12]  626 	mov	a,#(___str_0 >> 8)
      003095 C0 E0            [24]  627 	push	acc
      003097 74 80            [12]  628 	mov	a,#0x80
      003099 C0 E0            [24]  629 	push	acc
      00309B 12 3A EF         [24]  630 	lcall	_printf
      00309E 15 81            [12]  631 	dec	sp
      0030A0 15 81            [12]  632 	dec	sp
      0030A2 15 81            [12]  633 	dec	sp
                                    634 ;	8051_i2c_eeprom.c:44: printf("║           I2C Memory Management System v1.0             ║\n\r");
      0030A4 74 03            [12]  635 	mov	a,#___str_1
      0030A6 C0 E0            [24]  636 	push	acc
      0030A8 74 46            [12]  637 	mov	a,#(___str_1 >> 8)
      0030AA C0 E0            [24]  638 	push	acc
      0030AC 74 80            [12]  639 	mov	a,#0x80
      0030AE C0 E0            [24]  640 	push	acc
      0030B0 12 3A EF         [24]  641 	lcall	_printf
      0030B3 15 81            [12]  642 	dec	sp
      0030B5 15 81            [12]  643 	dec	sp
      0030B7 15 81            [12]  644 	dec	sp
                                    645 ;	8051_i2c_eeprom.c:45: printf("╚════════════════════════════════════════════════════════╝\n\r");
      0030B9 74 45            [12]  646 	mov	a,#___str_2
      0030BB C0 E0            [24]  647 	push	acc
      0030BD 74 46            [12]  648 	mov	a,#(___str_2 >> 8)
      0030BF C0 E0            [24]  649 	push	acc
      0030C1 74 80            [12]  650 	mov	a,#0x80
      0030C3 C0 E0            [24]  651 	push	acc
      0030C5 12 3A EF         [24]  652 	lcall	_printf
      0030C8 15 81            [12]  653 	dec	sp
      0030CA 15 81            [12]  654 	dec	sp
      0030CC 15 81            [12]  655 	dec	sp
                                    656 ;	8051_i2c_eeprom.c:47: }
      0030CE 22               [24]  657 	ret
                                    658 ;------------------------------------------------------------
                                    659 ;Allocation info for local variables in function 'command_menu'
                                    660 ;------------------------------------------------------------
                                    661 ;	8051_i2c_eeprom.c:49: void command_menu()
                                    662 ;	-----------------------------------------
                                    663 ;	 function command_menu
                                    664 ;	-----------------------------------------
      0030CF                        665 _command_menu:
                                    666 ;	8051_i2c_eeprom.c:51: printf("\n\r┌────────────┬────────────────────────────────────────────┐\n\r");
      0030CF 74 F6            [12]  667 	mov	a,#___str_3
      0030D1 C0 E0            [24]  668 	push	acc
      0030D3 74 46            [12]  669 	mov	a,#(___str_3 >> 8)
      0030D5 C0 E0            [24]  670 	push	acc
      0030D7 74 80            [12]  671 	mov	a,#0x80
      0030D9 C0 E0            [24]  672 	push	acc
      0030DB 12 3A EF         [24]  673 	lcall	_printf
      0030DE 15 81            [12]  674 	dec	sp
      0030E0 15 81            [12]  675 	dec	sp
      0030E2 15 81            [12]  676 	dec	sp
                                    677 ;	8051_i2c_eeprom.c:52: printf("│  Command   │               Description                   │\n\r");
      0030E4 74 AC            [12]  678 	mov	a,#___str_4
      0030E6 C0 E0            [24]  679 	push	acc
      0030E8 74 47            [12]  680 	mov	a,#(___str_4 >> 8)
      0030EA C0 E0            [24]  681 	push	acc
      0030EC 74 80            [12]  682 	mov	a,#0x80
      0030EE C0 E0            [24]  683 	push	acc
      0030F0 12 3A EF         [24]  684 	lcall	_printf
      0030F3 15 81            [12]  685 	dec	sp
      0030F5 15 81            [12]  686 	dec	sp
      0030F7 15 81            [12]  687 	dec	sp
                                    688 ;	8051_i2c_eeprom.c:53: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      0030F9 74 F1            [12]  689 	mov	a,#___str_5
      0030FB C0 E0            [24]  690 	push	acc
      0030FD 74 47            [12]  691 	mov	a,#(___str_5 >> 8)
      0030FF C0 E0            [24]  692 	push	acc
      003101 74 80            [12]  693 	mov	a,#0x80
      003103 C0 E0            [24]  694 	push	acc
      003105 12 3A EF         [24]  695 	lcall	_printf
      003108 15 81            [12]  696 	dec	sp
      00310A 15 81            [12]  697 	dec	sp
      00310C 15 81            [12]  698 	dec	sp
                                    699 ;	8051_i2c_eeprom.c:54: printf("│     R      │ Read from address                          │\n\r");
      00310E 74 A5            [12]  700 	mov	a,#___str_6
      003110 C0 E0            [24]  701 	push	acc
      003112 74 48            [12]  702 	mov	a,#(___str_6 >> 8)
      003114 C0 E0            [24]  703 	push	acc
      003116 74 80            [12]  704 	mov	a,#0x80
      003118 C0 E0            [24]  705 	push	acc
      00311A 12 3A EF         [24]  706 	lcall	_printf
      00311D 15 81            [12]  707 	dec	sp
      00311F 15 81            [12]  708 	dec	sp
      003121 15 81            [12]  709 	dec	sp
                                    710 ;	8051_i2c_eeprom.c:55: printf("│     W      │ Write data to address                      │\n\r");
      003123 74 E9            [12]  711 	mov	a,#___str_7
      003125 C0 E0            [24]  712 	push	acc
      003127 74 48            [12]  713 	mov	a,#(___str_7 >> 8)
      003129 C0 E0            [24]  714 	push	acc
      00312B 74 80            [12]  715 	mov	a,#0x80
      00312D C0 E0            [24]  716 	push	acc
      00312F 12 3A EF         [24]  717 	lcall	_printf
      003132 15 81            [12]  718 	dec	sp
      003134 15 81            [12]  719 	dec	sp
      003136 15 81            [12]  720 	dec	sp
                                    721 ;	8051_i2c_eeprom.c:56: printf("│     H      │ Display hex dump                           │\n\r");
      003138 74 2D            [12]  722 	mov	a,#___str_8
      00313A C0 E0            [24]  723 	push	acc
      00313C 74 49            [12]  724 	mov	a,#(___str_8 >> 8)
      00313E C0 E0            [24]  725 	push	acc
      003140 74 80            [12]  726 	mov	a,#0x80
      003142 C0 E0            [24]  727 	push	acc
      003144 12 3A EF         [24]  728 	lcall	_printf
      003147 15 81            [12]  729 	dec	sp
      003149 15 81            [12]  730 	dec	sp
      00314B 15 81            [12]  731 	dec	sp
                                    732 ;	8051_i2c_eeprom.c:57: printf("│     X      │ Reset memory system                        │\n\r");
      00314D 74 71            [12]  733 	mov	a,#___str_9
      00314F C0 E0            [24]  734 	push	acc
      003151 74 49            [12]  735 	mov	a,#(___str_9 >> 8)
      003153 C0 E0            [24]  736 	push	acc
      003155 74 80            [12]  737 	mov	a,#0x80
      003157 C0 E0            [24]  738 	push	acc
      003159 12 3A EF         [24]  739 	lcall	_printf
      00315C 15 81            [12]  740 	dec	sp
      00315E 15 81            [12]  741 	dec	sp
      003160 15 81            [12]  742 	dec	sp
                                    743 ;	8051_i2c_eeprom.c:58: printf("│     ?      │ Display this help menu                     │\n\r");
      003162 74 B5            [12]  744 	mov	a,#___str_10
      003164 C0 E0            [24]  745 	push	acc
      003166 74 49            [12]  746 	mov	a,#(___str_10 >> 8)
      003168 C0 E0            [24]  747 	push	acc
      00316A 74 80            [12]  748 	mov	a,#0x80
      00316C C0 E0            [24]  749 	push	acc
      00316E 12 3A EF         [24]  750 	lcall	_printf
      003171 15 81            [12]  751 	dec	sp
      003173 15 81            [12]  752 	dec	sp
      003175 15 81            [12]  753 	dec	sp
                                    754 ;	8051_i2c_eeprom.c:59: printf("│     Q      │ Quit program                              │\n\r");
      003177 74 F9            [12]  755 	mov	a,#___str_11
      003179 C0 E0            [24]  756 	push	acc
      00317B 74 49            [12]  757 	mov	a,#(___str_11 >> 8)
      00317D C0 E0            [24]  758 	push	acc
      00317F 74 80            [12]  759 	mov	a,#0x80
      003181 C0 E0            [24]  760 	push	acc
      003183 12 3A EF         [24]  761 	lcall	_printf
      003186 15 81            [12]  762 	dec	sp
      003188 15 81            [12]  763 	dec	sp
      00318A 15 81            [12]  764 	dec	sp
                                    765 ;	8051_i2c_eeprom.c:60: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      00318C 74 3C            [12]  766 	mov	a,#___str_12
      00318E C0 E0            [24]  767 	push	acc
      003190 74 4A            [12]  768 	mov	a,#(___str_12 >> 8)
      003192 C0 E0            [24]  769 	push	acc
      003194 74 80            [12]  770 	mov	a,#0x80
      003196 C0 E0            [24]  771 	push	acc
      003198 12 3A EF         [24]  772 	lcall	_printf
      00319B 15 81            [12]  773 	dec	sp
      00319D 15 81            [12]  774 	dec	sp
      00319F 15 81            [12]  775 	dec	sp
                                    776 ;	8051_i2c_eeprom.c:63: }
      0031A1 22               [24]  777 	ret
                                    778 ;------------------------------------------------------------
                                    779 ;Allocation info for local variables in function 'main'
                                    780 ;------------------------------------------------------------
                                    781 ;user_input                Allocated with name '_main_user_input_131072_55'
                                    782 ;addr                      Allocated with name '_main_addr_262145_58'
                                    783 ;data                      Allocated with name '_main_data_262146_59'
                                    784 ;addr                      Allocated with name '_main_addr_262145_61'
                                    785 ;------------------------------------------------------------
                                    786 ;	8051_i2c_eeprom.c:64: int main()
                                    787 ;	-----------------------------------------
                                    788 ;	 function main
                                    789 ;	-----------------------------------------
      0031A2                        790 _main:
                                    791 ;	8051_i2c_eeprom.c:67: P1 &= ~(1<<3);  // Set P1.3 as output
      0031A2 53 90 F7         [24]  792 	anl	_P1,#0xf7
                                    793 ;	8051_i2c_eeprom.c:68: P1 &= ~(1<<4);  // Set P1.4 as output
      0031A5 53 90 EF         [24]  794 	anl	_P1,#0xef
                                    795 ;	8051_i2c_eeprom.c:69: ui();
      0031A8 12 30 8F         [24]  796 	lcall	_ui
                                    797 ;	8051_i2c_eeprom.c:70: command_menu();
      0031AB 12 30 CF         [24]  798 	lcall	_command_menu
                                    799 ;	8051_i2c_eeprom.c:71: i2c_start();
      0031AE 12 39 B0         [24]  800 	lcall	_i2c_start
                                    801 ;	8051_i2c_eeprom.c:72: while(1)
      0031B1                        802 00107$:
                                    803 ;	8051_i2c_eeprom.c:74: char user_input = getchar();
      0031B1 12 30 81         [24]  804 	lcall	_getchar
      0031B4 AE 82            [24]  805 	mov	r6,dpl
                                    806 ;	8051_i2c_eeprom.c:75: printf("$ %c\n\r", user_input);
      0031B6 8E 05            [24]  807 	mov	ar5,r6
      0031B8 7F 00            [12]  808 	mov	r7,#0x00
      0031BA C0 06            [24]  809 	push	ar6
      0031BC C0 05            [24]  810 	push	ar5
      0031BE C0 07            [24]  811 	push	ar7
      0031C0 74 F0            [12]  812 	mov	a,#___str_13
      0031C2 C0 E0            [24]  813 	push	acc
      0031C4 74 4A            [12]  814 	mov	a,#(___str_13 >> 8)
      0031C6 C0 E0            [24]  815 	push	acc
      0031C8 74 80            [12]  816 	mov	a,#0x80
      0031CA C0 E0            [24]  817 	push	acc
      0031CC 12 3A EF         [24]  818 	lcall	_printf
      0031CF E5 81            [12]  819 	mov	a,sp
      0031D1 24 FB            [12]  820 	add	a,#0xfb
      0031D3 F5 81            [12]  821 	mov	sp,a
      0031D5 D0 06            [24]  822 	pop	ar6
                                    823 ;	8051_i2c_eeprom.c:76: switch(user_input)
      0031D7 BE 3F 03         [24]  824 	cjne	r6,#0x3f,00127$
      0031DA 02 32 96         [24]  825 	ljmp	00103$
      0031DD                        826 00127$:
      0031DD BE 52 02         [24]  827 	cjne	r6,#0x52,00128$
      0031E0 80 6D            [24]  828 	sjmp	00102$
      0031E2                        829 00128$:
      0031E2 BE 57 02         [24]  830 	cjne	r6,#0x57,00129$
      0031E5 80 03            [24]  831 	sjmp	00130$
      0031E7                        832 00129$:
      0031E7 02 32 9C         [24]  833 	ljmp	00104$
      0031EA                        834 00130$:
                                    835 ;	8051_i2c_eeprom.c:80: printf("\n┌─────────────── WRITE OPERATION ──────────────┐\n\r");
      0031EA 74 F7            [12]  836 	mov	a,#___str_14
      0031EC C0 E0            [24]  837 	push	acc
      0031EE 74 4A            [12]  838 	mov	a,#(___str_14 >> 8)
      0031F0 C0 E0            [24]  839 	push	acc
      0031F2 74 80            [12]  840 	mov	a,#0x80
      0031F4 C0 E0            [24]  841 	push	acc
      0031F6 12 3A EF         [24]  842 	lcall	_printf
      0031F9 15 81            [12]  843 	dec	sp
      0031FB 15 81            [12]  844 	dec	sp
      0031FD 15 81            [12]  845 	dec	sp
                                    846 ;	8051_i2c_eeprom.c:82: addr = take_address(); 
      0031FF 12 32 B4         [24]  847 	lcall	_take_address
      003202 AE 82            [24]  848 	mov	r6,dpl
      003204 AF 83            [24]  849 	mov	r7,dph
                                    850 ;	8051_i2c_eeprom.c:84: data = take_data();
      003206 C0 07            [24]  851 	push	ar7
      003208 C0 06            [24]  852 	push	ar6
      00320A 12 34 CE         [24]  853 	lcall	_take_data
      00320D AD 82            [24]  854 	mov	r5,dpl
      00320F D0 06            [24]  855 	pop	ar6
      003211 D0 07            [24]  856 	pop	ar7
                                    857 ;	8051_i2c_eeprom.c:85: printf("|Writing at Address 0x%03X Data 0x%02X          |\n\r", addr, data);
      003213 8D 03            [24]  858 	mov	ar3,r5
      003215 7C 00            [12]  859 	mov	r4,#0x00
      003217 C0 07            [24]  860 	push	ar7
      003219 C0 06            [24]  861 	push	ar6
      00321B C0 05            [24]  862 	push	ar5
      00321D C0 03            [24]  863 	push	ar3
      00321F C0 04            [24]  864 	push	ar4
      003221 C0 06            [24]  865 	push	ar6
      003223 C0 07            [24]  866 	push	ar7
      003225 74 69            [12]  867 	mov	a,#___str_15
      003227 C0 E0            [24]  868 	push	acc
      003229 74 4B            [12]  869 	mov	a,#(___str_15 >> 8)
      00322B C0 E0            [24]  870 	push	acc
      00322D 74 80            [12]  871 	mov	a,#0x80
      00322F C0 E0            [24]  872 	push	acc
      003231 12 3A EF         [24]  873 	lcall	_printf
      003234 E5 81            [12]  874 	mov	a,sp
      003236 24 F9            [12]  875 	add	a,#0xf9
      003238 F5 81            [12]  876 	mov	sp,a
      00323A D0 05            [24]  877 	pop	ar5
      00323C D0 06            [24]  878 	pop	ar6
      00323E D0 07            [24]  879 	pop	ar7
                                    880 ;	8051_i2c_eeprom.c:86: eeprom_write(addr, data);
      003240 90 04 0F         [24]  881 	mov	dptr,#_eeprom_write_PARM_2
      003243 ED               [12]  882 	mov	a,r5
      003244 F0               [24]  883 	movx	@dptr,a
      003245 8E 82            [24]  884 	mov	dpl,r6
      003247 8F 83            [24]  885 	mov	dph,r7
      003249 12 36 40         [24]  886 	lcall	_eeprom_write
                                    887 ;	8051_i2c_eeprom.c:87: break;
      00324C 02 31 B1         [24]  888 	ljmp	00107$
                                    889 ;	8051_i2c_eeprom.c:89: case 'R':
      00324F                        890 00102$:
                                    891 ;	8051_i2c_eeprom.c:91: printf("\n┌─────────────── READ OPERATION ───────────────┐\n\r");
      00324F 74 9D            [12]  892 	mov	a,#___str_16
      003251 C0 E0            [24]  893 	push	acc
      003253 74 4B            [12]  894 	mov	a,#(___str_16 >> 8)
      003255 C0 E0            [24]  895 	push	acc
      003257 74 80            [12]  896 	mov	a,#0x80
      003259 C0 E0            [24]  897 	push	acc
      00325B 12 3A EF         [24]  898 	lcall	_printf
      00325E 15 81            [12]  899 	dec	sp
      003260 15 81            [12]  900 	dec	sp
      003262 15 81            [12]  901 	dec	sp
                                    902 ;	8051_i2c_eeprom.c:93: addr = take_address(); 
      003264 12 32 B4         [24]  903 	lcall	_take_address
      003267 AE 82            [24]  904 	mov	r6,dpl
      003269 AF 83            [24]  905 	mov	r7,dph
                                    906 ;	8051_i2c_eeprom.c:94: printf("|Reading from Address 0x%03X           |\n\r", addr);
      00326B C0 07            [24]  907 	push	ar7
      00326D C0 06            [24]  908 	push	ar6
      00326F C0 06            [24]  909 	push	ar6
      003271 C0 07            [24]  910 	push	ar7
      003273 74 11            [12]  911 	mov	a,#___str_17
      003275 C0 E0            [24]  912 	push	acc
      003277 74 4C            [12]  913 	mov	a,#(___str_17 >> 8)
      003279 C0 E0            [24]  914 	push	acc
      00327B 74 80            [12]  915 	mov	a,#0x80
      00327D C0 E0            [24]  916 	push	acc
      00327F 12 3A EF         [24]  917 	lcall	_printf
      003282 E5 81            [12]  918 	mov	a,sp
      003284 24 FB            [12]  919 	add	a,#0xfb
      003286 F5 81            [12]  920 	mov	sp,a
      003288 D0 06            [24]  921 	pop	ar6
      00328A D0 07            [24]  922 	pop	ar7
                                    923 ;	8051_i2c_eeprom.c:95: eeprom_read(addr);
      00328C 8E 82            [24]  924 	mov	dpl,r6
      00328E 8F 83            [24]  925 	mov	dph,r7
      003290 12 37 82         [24]  926 	lcall	_eeprom_read
                                    927 ;	8051_i2c_eeprom.c:96: break;
      003293 02 31 B1         [24]  928 	ljmp	00107$
                                    929 ;	8051_i2c_eeprom.c:99: case '?':
      003296                        930 00103$:
                                    931 ;	8051_i2c_eeprom.c:100: command_menu();
      003296 12 30 CF         [24]  932 	lcall	_command_menu
                                    933 ;	8051_i2c_eeprom.c:101: break;
      003299 02 31 B1         [24]  934 	ljmp	00107$
                                    935 ;	8051_i2c_eeprom.c:103: default:
      00329C                        936 00104$:
                                    937 ;	8051_i2c_eeprom.c:104: printf("INVALID INPUT\n\r");
      00329C 74 3C            [12]  938 	mov	a,#___str_18
      00329E C0 E0            [24]  939 	push	acc
      0032A0 74 4C            [12]  940 	mov	a,#(___str_18 >> 8)
      0032A2 C0 E0            [24]  941 	push	acc
      0032A4 74 80            [12]  942 	mov	a,#0x80
      0032A6 C0 E0            [24]  943 	push	acc
      0032A8 12 3A EF         [24]  944 	lcall	_printf
      0032AB 15 81            [12]  945 	dec	sp
      0032AD 15 81            [12]  946 	dec	sp
      0032AF 15 81            [12]  947 	dec	sp
                                    948 ;	8051_i2c_eeprom.c:106: }
                                    949 ;	8051_i2c_eeprom.c:109: }
      0032B1 02 31 B1         [24]  950 	ljmp	00107$
                                    951 ;------------------------------------------------------------
                                    952 ;Allocation info for local variables in function 'take_address'
                                    953 ;------------------------------------------------------------
                                    954 ;input                     Allocated with name '_take_address_input_65537_63'
                                    955 ;i                         Allocated with name '_take_address_i_65537_63'
                                    956 ;c                         Allocated with name '_take_address_c_65537_63'
                                    957 ;address                   Allocated with name '_take_address_address_65538_67'
                                    958 ;block                     Allocated with name '_take_address_block_65539_71'
                                    959 ;------------------------------------------------------------
                                    960 ;	8051_i2c_eeprom.c:111: unsigned int take_address() 
                                    961 ;	-----------------------------------------
                                    962 ;	 function take_address
                                    963 ;	-----------------------------------------
      0032B4                        964 _take_address:
                                    965 ;	8051_i2c_eeprom.c:113: printf("│ Enter address (hex, up to 3 characters): \n\r|");
      0032B4 74 4C            [12]  966 	mov	a,#___str_19
      0032B6 C0 E0            [24]  967 	push	acc
      0032B8 74 4C            [12]  968 	mov	a,#(___str_19 >> 8)
      0032BA C0 E0            [24]  969 	push	acc
      0032BC 74 80            [12]  970 	mov	a,#0x80
      0032BE C0 E0            [24]  971 	push	acc
      0032C0 12 3A EF         [24]  972 	lcall	_printf
      0032C3 15 81            [12]  973 	dec	sp
      0032C5 15 81            [12]  974 	dec	sp
      0032C7 15 81            [12]  975 	dec	sp
                                    976 ;	8051_i2c_eeprom.c:114: char input[4] = {0};  // Array for 3 hex chars + null terminator
      0032C9 90 04 04         [24]  977 	mov	dptr,#_take_address_input_65537_63
      0032CC E4               [12]  978 	clr	a
      0032CD F0               [24]  979 	movx	@dptr,a
      0032CE 90 04 05         [24]  980 	mov	dptr,#(_take_address_input_65537_63 + 0x0001)
      0032D1 F0               [24]  981 	movx	@dptr,a
      0032D2 90 04 06         [24]  982 	mov	dptr,#(_take_address_input_65537_63 + 0x0002)
      0032D5 F0               [24]  983 	movx	@dptr,a
      0032D6 90 04 07         [24]  984 	mov	dptr,#(_take_address_input_65537_63 + 0x0003)
      0032D9 F0               [24]  985 	movx	@dptr,a
                                    986 ;	8051_i2c_eeprom.c:118: printf("$ ");
      0032DA 74 7D            [12]  987 	mov	a,#___str_20
      0032DC C0 E0            [24]  988 	push	acc
      0032DE 74 4C            [12]  989 	mov	a,#(___str_20 >> 8)
      0032E0 C0 E0            [24]  990 	push	acc
      0032E2 74 80            [12]  991 	mov	a,#0x80
      0032E4 C0 E0            [24]  992 	push	acc
      0032E6 12 3A EF         [24]  993 	lcall	_printf
      0032E9 15 81            [12]  994 	dec	sp
      0032EB 15 81            [12]  995 	dec	sp
      0032ED 15 81            [12]  996 	dec	sp
                                    997 ;	8051_i2c_eeprom.c:120: while (i < 3) {
      0032EF 7E 00            [12]  998 	mov	r6,#0x00
      0032F1 7F 00            [12]  999 	mov	r7,#0x00
      0032F3                       1000 00111$:
      0032F3 C3               [12] 1001 	clr	c
      0032F4 EE               [12] 1002 	mov	a,r6
      0032F5 94 03            [12] 1003 	subb	a,#0x03
      0032F7 EF               [12] 1004 	mov	a,r7
      0032F8 64 80            [12] 1005 	xrl	a,#0x80
      0032FA 94 80            [12] 1006 	subb	a,#0x80
      0032FC 50 5B            [24] 1007 	jnc	00113$
                                   1008 ;	8051_i2c_eeprom.c:122: c = getchar();
      0032FE C0 07            [24] 1009 	push	ar7
      003300 C0 06            [24] 1010 	push	ar6
      003302 12 30 81         [24] 1011 	lcall	_getchar
      003305 AC 82            [24] 1012 	mov	r4,dpl
      003307 AD 83            [24] 1013 	mov	r5,dph
      003309 D0 06            [24] 1014 	pop	ar6
      00330B D0 07            [24] 1015 	pop	ar7
                                   1016 ;	8051_i2c_eeprom.c:125: if (c == '\r' || c == '\n') {
      00330D BC 0D 02         [24] 1017 	cjne	r4,#0x0d,00200$
      003310 80 47            [24] 1018 	sjmp	00113$
      003312                       1019 00200$:
      003312 BC 0A 02         [24] 1020 	cjne	r4,#0x0a,00201$
      003315 80 42            [24] 1021 	sjmp	00113$
      003317                       1022 00201$:
                                   1023 ;	8051_i2c_eeprom.c:130: if ((c >= '0' && c <= '9') || 
      003317 BC 30 00         [24] 1024 	cjne	r4,#0x30,00202$
      00331A                       1025 00202$:
      00331A 40 05            [24] 1026 	jc	00108$
      00331C EC               [12] 1027 	mov	a,r4
      00331D 24 C6            [12] 1028 	add	a,#0xff - 0x39
      00331F 50 14            [24] 1029 	jnc	00104$
      003321                       1030 00108$:
                                   1031 ;	8051_i2c_eeprom.c:131: (c >= 'a' && c <= 'f') || 
      003321 BC 61 00         [24] 1032 	cjne	r4,#0x61,00205$
      003324                       1033 00205$:
      003324 40 05            [24] 1034 	jc	00110$
      003326 EC               [12] 1035 	mov	a,r4
      003327 24 99            [12] 1036 	add	a,#0xff - 0x66
      003329 50 0A            [24] 1037 	jnc	00104$
      00332B                       1038 00110$:
                                   1039 ;	8051_i2c_eeprom.c:132: (c >= 'A' && c <= 'F')) {
      00332B BC 41 00         [24] 1040 	cjne	r4,#0x41,00208$
      00332E                       1041 00208$:
      00332E 40 C3            [24] 1042 	jc	00111$
      003330 EC               [12] 1043 	mov	a,r4
      003331 24 B9            [12] 1044 	add	a,#0xff - 0x46
      003333 40 BE            [24] 1045 	jc	00111$
      003335                       1046 00104$:
                                   1047 ;	8051_i2c_eeprom.c:134: input[i] = c;
      003335 EE               [12] 1048 	mov	a,r6
      003336 24 04            [12] 1049 	add	a,#_take_address_input_65537_63
      003338 F5 82            [12] 1050 	mov	dpl,a
      00333A EF               [12] 1051 	mov	a,r7
      00333B 34 04            [12] 1052 	addc	a,#(_take_address_input_65537_63 >> 8)
      00333D F5 83            [12] 1053 	mov	dph,a
      00333F EC               [12] 1054 	mov	a,r4
      003340 F0               [24] 1055 	movx	@dptr,a
                                   1056 ;	8051_i2c_eeprom.c:135: putchar(c);  // Echo character back
      003341 7D 00            [12] 1057 	mov	r5,#0x00
      003343 8C 82            [24] 1058 	mov	dpl,r4
      003345 8D 83            [24] 1059 	mov	dph,r5
      003347 C0 07            [24] 1060 	push	ar7
      003349 C0 06            [24] 1061 	push	ar6
      00334B 12 30 62         [24] 1062 	lcall	_putchar
      00334E D0 06            [24] 1063 	pop	ar6
      003350 D0 07            [24] 1064 	pop	ar7
                                   1065 ;	8051_i2c_eeprom.c:136: i++;
      003352 0E               [12] 1066 	inc	r6
      003353 BE 00 9D         [24] 1067 	cjne	r6,#0x00,00111$
      003356 0F               [12] 1068 	inc	r7
      003357 80 9A            [24] 1069 	sjmp	00111$
      003359                       1070 00113$:
                                   1071 ;	8051_i2c_eeprom.c:140: input[i] = '\0';  // Null-terminate the string
      003359 EE               [12] 1072 	mov	a,r6
      00335A 24 04            [12] 1073 	add	a,#_take_address_input_65537_63
      00335C F5 82            [12] 1074 	mov	dpl,a
      00335E EF               [12] 1075 	mov	a,r7
      00335F 34 04            [12] 1076 	addc	a,#(_take_address_input_65537_63 >> 8)
      003361 F5 83            [12] 1077 	mov	dph,a
      003363 E4               [12] 1078 	clr	a
      003364 F0               [24] 1079 	movx	@dptr,a
                                   1080 ;	8051_i2c_eeprom.c:143: unsigned int address = 0;
      003365 90 04 08         [24] 1081 	mov	dptr,#_take_address_address_65538_67
      003368 F0               [24] 1082 	movx	@dptr,a
      003369 A3               [24] 1083 	inc	dptr
      00336A F0               [24] 1084 	movx	@dptr,a
                                   1085 ;	8051_i2c_eeprom.c:144: for(i = 0; input[i] != '\0'; i++) {
      00336B 7E 00            [12] 1086 	mov	r6,#0x00
      00336D 7F 00            [12] 1087 	mov	r7,#0x00
      00336F                       1088 00129$:
      00336F EE               [12] 1089 	mov	a,r6
      003370 24 04            [12] 1090 	add	a,#_take_address_input_65537_63
      003372 F5 82            [12] 1091 	mov	dpl,a
      003374 EF               [12] 1092 	mov	a,r7
      003375 34 04            [12] 1093 	addc	a,#(_take_address_input_65537_63 >> 8)
      003377 F5 83            [12] 1094 	mov	dph,a
      003379 E0               [24] 1095 	movx	a,@dptr
      00337A FD               [12] 1096 	mov	r5,a
      00337B 70 03            [24] 1097 	jnz	00212$
      00337D 02 34 28         [24] 1098 	ljmp	00125$
      003380                       1099 00212$:
                                   1100 ;	8051_i2c_eeprom.c:145: address = address * 16;
      003380 90 04 08         [24] 1101 	mov	dptr,#_take_address_address_65538_67
      003383 E0               [24] 1102 	movx	a,@dptr
      003384 FB               [12] 1103 	mov	r3,a
      003385 A3               [24] 1104 	inc	dptr
      003386 E0               [24] 1105 	movx	a,@dptr
      003387 C4               [12] 1106 	swap	a
      003388 54 F0            [12] 1107 	anl	a,#0xf0
      00338A CB               [12] 1108 	xch	a,r3
      00338B C4               [12] 1109 	swap	a
      00338C CB               [12] 1110 	xch	a,r3
      00338D 6B               [12] 1111 	xrl	a,r3
      00338E CB               [12] 1112 	xch	a,r3
      00338F 54 F0            [12] 1113 	anl	a,#0xf0
      003391 CB               [12] 1114 	xch	a,r3
      003392 6B               [12] 1115 	xrl	a,r3
      003393 FC               [12] 1116 	mov	r4,a
      003394 90 04 08         [24] 1117 	mov	dptr,#_take_address_address_65538_67
      003397 EB               [12] 1118 	mov	a,r3
      003398 F0               [24] 1119 	movx	@dptr,a
      003399 EC               [12] 1120 	mov	a,r4
      00339A A3               [24] 1121 	inc	dptr
      00339B F0               [24] 1122 	movx	@dptr,a
                                   1123 ;	8051_i2c_eeprom.c:146: if(input[i] >= '0' && input[i] <= '9')
      00339C BD 30 00         [24] 1124 	cjne	r5,#0x30,00213$
      00339F                       1125 00213$:
      00339F 40 23            [24] 1126 	jc	00122$
      0033A1 ED               [12] 1127 	mov	a,r5
      0033A2 24 C6            [12] 1128 	add	a,#0xff - 0x39
      0033A4 40 1E            [24] 1129 	jc	00122$
                                   1130 ;	8051_i2c_eeprom.c:147: address += input[i] - '0';
      0033A6 7C 00            [12] 1131 	mov	r4,#0x00
      0033A8 ED               [12] 1132 	mov	a,r5
      0033A9 24 D0            [12] 1133 	add	a,#0xd0
      0033AB FD               [12] 1134 	mov	r5,a
      0033AC EC               [12] 1135 	mov	a,r4
      0033AD 34 FF            [12] 1136 	addc	a,#0xff
      0033AF FC               [12] 1137 	mov	r4,a
      0033B0 90 04 08         [24] 1138 	mov	dptr,#_take_address_address_65538_67
      0033B3 E0               [24] 1139 	movx	a,@dptr
      0033B4 FA               [12] 1140 	mov	r2,a
      0033B5 A3               [24] 1141 	inc	dptr
      0033B6 E0               [24] 1142 	movx	a,@dptr
      0033B7 FB               [12] 1143 	mov	r3,a
      0033B8 90 04 08         [24] 1144 	mov	dptr,#_take_address_address_65538_67
      0033BB ED               [12] 1145 	mov	a,r5
      0033BC 2A               [12] 1146 	add	a,r2
      0033BD F0               [24] 1147 	movx	@dptr,a
      0033BE EC               [12] 1148 	mov	a,r4
      0033BF 3B               [12] 1149 	addc	a,r3
      0033C0 A3               [24] 1150 	inc	dptr
      0033C1 F0               [24] 1151 	movx	@dptr,a
      0033C2 80 5C            [24] 1152 	sjmp	00130$
      0033C4                       1153 00122$:
                                   1154 ;	8051_i2c_eeprom.c:148: else if(input[i] >= 'A' && input[i] <= 'F')
      0033C4 EE               [12] 1155 	mov	a,r6
      0033C5 24 04            [12] 1156 	add	a,#_take_address_input_65537_63
      0033C7 F5 82            [12] 1157 	mov	dpl,a
      0033C9 EF               [12] 1158 	mov	a,r7
      0033CA 34 04            [12] 1159 	addc	a,#(_take_address_input_65537_63 >> 8)
      0033CC F5 83            [12] 1160 	mov	dph,a
      0033CE E0               [24] 1161 	movx	a,@dptr
      0033CF FD               [12] 1162 	mov	r5,a
      0033D0 BD 41 00         [24] 1163 	cjne	r5,#0x41,00216$
      0033D3                       1164 00216$:
      0033D3 40 25            [24] 1165 	jc	00118$
      0033D5 ED               [12] 1166 	mov	a,r5
      0033D6 24 B9            [12] 1167 	add	a,#0xff - 0x46
      0033D8 40 20            [24] 1168 	jc	00118$
                                   1169 ;	8051_i2c_eeprom.c:149: address += input[i] - 'A' + 10;
      0033DA 8D 03            [24] 1170 	mov	ar3,r5
      0033DC 7C 00            [12] 1171 	mov	r4,#0x00
      0033DE 74 C9            [12] 1172 	mov	a,#0xc9
      0033E0 2B               [12] 1173 	add	a,r3
      0033E1 FB               [12] 1174 	mov	r3,a
      0033E2 74 FF            [12] 1175 	mov	a,#0xff
      0033E4 3C               [12] 1176 	addc	a,r4
      0033E5 FC               [12] 1177 	mov	r4,a
      0033E6 90 04 08         [24] 1178 	mov	dptr,#_take_address_address_65538_67
      0033E9 E0               [24] 1179 	movx	a,@dptr
      0033EA F9               [12] 1180 	mov	r1,a
      0033EB A3               [24] 1181 	inc	dptr
      0033EC E0               [24] 1182 	movx	a,@dptr
      0033ED FA               [12] 1183 	mov	r2,a
      0033EE 90 04 08         [24] 1184 	mov	dptr,#_take_address_address_65538_67
      0033F1 EB               [12] 1185 	mov	a,r3
      0033F2 29               [12] 1186 	add	a,r1
      0033F3 F0               [24] 1187 	movx	@dptr,a
      0033F4 EC               [12] 1188 	mov	a,r4
      0033F5 3A               [12] 1189 	addc	a,r2
      0033F6 A3               [24] 1190 	inc	dptr
      0033F7 F0               [24] 1191 	movx	@dptr,a
      0033F8 80 26            [24] 1192 	sjmp	00130$
      0033FA                       1193 00118$:
                                   1194 ;	8051_i2c_eeprom.c:150: else if(input[i] >= 'a' && input[i] <= 'f')
      0033FA BD 61 00         [24] 1195 	cjne	r5,#0x61,00219$
      0033FD                       1196 00219$:
      0033FD 40 21            [24] 1197 	jc	00130$
      0033FF ED               [12] 1198 	mov	a,r5
      003400 24 99            [12] 1199 	add	a,#0xff - 0x66
      003402 40 1C            [24] 1200 	jc	00130$
                                   1201 ;	8051_i2c_eeprom.c:151: address += input[i] - 'a' + 10;
      003404 7C 00            [12] 1202 	mov	r4,#0x00
      003406 74 A9            [12] 1203 	mov	a,#0xa9
      003408 2D               [12] 1204 	add	a,r5
      003409 FD               [12] 1205 	mov	r5,a
      00340A 74 FF            [12] 1206 	mov	a,#0xff
      00340C 3C               [12] 1207 	addc	a,r4
      00340D FC               [12] 1208 	mov	r4,a
      00340E 90 04 08         [24] 1209 	mov	dptr,#_take_address_address_65538_67
      003411 E0               [24] 1210 	movx	a,@dptr
      003412 FA               [12] 1211 	mov	r2,a
      003413 A3               [24] 1212 	inc	dptr
      003414 E0               [24] 1213 	movx	a,@dptr
      003415 FB               [12] 1214 	mov	r3,a
      003416 90 04 08         [24] 1215 	mov	dptr,#_take_address_address_65538_67
      003419 ED               [12] 1216 	mov	a,r5
      00341A 2A               [12] 1217 	add	a,r2
      00341B F0               [24] 1218 	movx	@dptr,a
      00341C EC               [12] 1219 	mov	a,r4
      00341D 3B               [12] 1220 	addc	a,r3
      00341E A3               [24] 1221 	inc	dptr
      00341F F0               [24] 1222 	movx	@dptr,a
      003420                       1223 00130$:
                                   1224 ;	8051_i2c_eeprom.c:144: for(i = 0; input[i] != '\0'; i++) {
      003420 0E               [12] 1225 	inc	r6
      003421 BE 00 01         [24] 1226 	cjne	r6,#0x00,00222$
      003424 0F               [12] 1227 	inc	r7
      003425                       1228 00222$:
      003425 02 33 6F         [24] 1229 	ljmp	00129$
      003428                       1230 00125$:
                                   1231 ;	8051_i2c_eeprom.c:154: printf("\n\r│ Entered address: 0x%03X\n\r", address);
      003428 90 04 08         [24] 1232 	mov	dptr,#_take_address_address_65538_67
      00342B E0               [24] 1233 	movx	a,@dptr
      00342C FE               [12] 1234 	mov	r6,a
      00342D A3               [24] 1235 	inc	dptr
      00342E E0               [24] 1236 	movx	a,@dptr
      00342F FF               [12] 1237 	mov	r7,a
      003430 C0 07            [24] 1238 	push	ar7
      003432 C0 06            [24] 1239 	push	ar6
      003434 C0 06            [24] 1240 	push	ar6
      003436 C0 07            [24] 1241 	push	ar7
      003438 74 80            [12] 1242 	mov	a,#___str_21
      00343A C0 E0            [24] 1243 	push	acc
      00343C 74 4C            [12] 1244 	mov	a,#(___str_21 >> 8)
      00343E C0 E0            [24] 1245 	push	acc
      003440 74 80            [12] 1246 	mov	a,#0x80
      003442 C0 E0            [24] 1247 	push	acc
      003444 12 3A EF         [24] 1248 	lcall	_printf
      003447 E5 81            [12] 1249 	mov	a,sp
      003449 24 FB            [12] 1250 	add	a,#0xfb
      00344B F5 81            [12] 1251 	mov	sp,a
      00344D D0 06            [24] 1252 	pop	ar6
      00344F D0 07            [24] 1253 	pop	ar7
                                   1254 ;	8051_i2c_eeprom.c:155: if(address > 0x7ff) 
      003451 C3               [12] 1255 	clr	c
      003452 74 FF            [12] 1256 	mov	a,#0xff
      003454 9E               [12] 1257 	subb	a,r6
      003455 74 07            [12] 1258 	mov	a,#0x07
      003457 9F               [12] 1259 	subb	a,r7
      003458 50 19            [24] 1260 	jnc	00127$
                                   1261 ;	8051_i2c_eeprom.c:157: printf("Address out of Range\n\r");
      00345A 74 A0            [12] 1262 	mov	a,#___str_22
      00345C C0 E0            [24] 1263 	push	acc
      00345E 74 4C            [12] 1264 	mov	a,#(___str_22 >> 8)
      003460 C0 E0            [24] 1265 	push	acc
      003462 74 80            [12] 1266 	mov	a,#0x80
      003464 C0 E0            [24] 1267 	push	acc
      003466 12 3A EF         [24] 1268 	lcall	_printf
      003469 15 81            [12] 1269 	dec	sp
      00346B 15 81            [12] 1270 	dec	sp
      00346D 15 81            [12] 1271 	dec	sp
                                   1272 ;	8051_i2c_eeprom.c:158: return 0;
      00346F 90 00 00         [24] 1273 	mov	dptr,#0x0000
      003472 22               [24] 1274 	ret
      003473                       1275 00127$:
                                   1276 ;	8051_i2c_eeprom.c:160: unsigned int block = address/256;       //block address
      003473 8F 04            [24] 1277 	mov	ar4,r7
      003475 7D 00            [12] 1278 	mov	r5,#0x00
                                   1279 ;	8051_i2c_eeprom.c:161: printf("Block number %d\n\r", block);
      003477 C0 07            [24] 1280 	push	ar7
      003479 C0 06            [24] 1281 	push	ar6
      00347B C0 04            [24] 1282 	push	ar4
      00347D C0 05            [24] 1283 	push	ar5
      00347F 74 B7            [12] 1284 	mov	a,#___str_23
      003481 C0 E0            [24] 1285 	push	acc
      003483 74 4C            [12] 1286 	mov	a,#(___str_23 >> 8)
      003485 C0 E0            [24] 1287 	push	acc
      003487 74 80            [12] 1288 	mov	a,#0x80
      003489 C0 E0            [24] 1289 	push	acc
      00348B 12 3A EF         [24] 1290 	lcall	_printf
      00348E E5 81            [12] 1291 	mov	a,sp
      003490 24 FB            [12] 1292 	add	a,#0xfb
      003492 F5 81            [12] 1293 	mov	sp,a
      003494 D0 06            [24] 1294 	pop	ar6
      003496 D0 07            [24] 1295 	pop	ar7
                                   1296 ;	8051_i2c_eeprom.c:162: address = address%256;     //word address
      003498 90 04 08         [24] 1297 	mov	dptr,#_take_address_address_65538_67
      00349B EE               [12] 1298 	mov	a,r6
      00349C F0               [24] 1299 	movx	@dptr,a
      00349D E4               [12] 1300 	clr	a
      00349E A3               [24] 1301 	inc	dptr
      00349F F0               [24] 1302 	movx	@dptr,a
                                   1303 ;	8051_i2c_eeprom.c:163: printf("address now  0x%03X\n\r", address);
      0034A0 90 04 08         [24] 1304 	mov	dptr,#_take_address_address_65538_67
      0034A3 E0               [24] 1305 	movx	a,@dptr
      0034A4 FE               [12] 1306 	mov	r6,a
      0034A5 A3               [24] 1307 	inc	dptr
      0034A6 E0               [24] 1308 	movx	a,@dptr
      0034A7 FF               [12] 1309 	mov	r7,a
      0034A8 C0 07            [24] 1310 	push	ar7
      0034AA C0 06            [24] 1311 	push	ar6
      0034AC C0 06            [24] 1312 	push	ar6
      0034AE C0 07            [24] 1313 	push	ar7
      0034B0 74 C9            [12] 1314 	mov	a,#___str_24
      0034B2 C0 E0            [24] 1315 	push	acc
      0034B4 74 4C            [12] 1316 	mov	a,#(___str_24 >> 8)
      0034B6 C0 E0            [24] 1317 	push	acc
      0034B8 74 80            [12] 1318 	mov	a,#0x80
      0034BA C0 E0            [24] 1319 	push	acc
      0034BC 12 3A EF         [24] 1320 	lcall	_printf
      0034BF E5 81            [12] 1321 	mov	a,sp
      0034C1 24 FB            [12] 1322 	add	a,#0xfb
      0034C3 F5 81            [12] 1323 	mov	sp,a
      0034C5 D0 06            [24] 1324 	pop	ar6
      0034C7 D0 07            [24] 1325 	pop	ar7
                                   1326 ;	8051_i2c_eeprom.c:165: return address;
      0034C9 8E 82            [24] 1327 	mov	dpl,r6
      0034CB 8F 83            [24] 1328 	mov	dph,r7
                                   1329 ;	8051_i2c_eeprom.c:166: }
      0034CD 22               [24] 1330 	ret
                                   1331 ;------------------------------------------------------------
                                   1332 ;Allocation info for local variables in function 'take_data'
                                   1333 ;------------------------------------------------------------
                                   1334 ;input                     Allocated with name '_take_data_input_65537_73'
                                   1335 ;i                         Allocated with name '_take_data_i_65537_73'
                                   1336 ;c                         Allocated with name '_take_data_c_65537_73'
                                   1337 ;data                      Allocated with name '_take_data_data_65538_77'
                                   1338 ;------------------------------------------------------------
                                   1339 ;	8051_i2c_eeprom.c:168: unsigned char take_data()
                                   1340 ;	-----------------------------------------
                                   1341 ;	 function take_data
                                   1342 ;	-----------------------------------------
      0034CE                       1343 _take_data:
                                   1344 ;	8051_i2c_eeprom.c:170: printf("│ Enter data (hex, up to 2 characters): \n\r|");
      0034CE 74 DF            [12] 1345 	mov	a,#___str_25
      0034D0 C0 E0            [24] 1346 	push	acc
      0034D2 74 4C            [12] 1347 	mov	a,#(___str_25 >> 8)
      0034D4 C0 E0            [24] 1348 	push	acc
      0034D6 74 80            [12] 1349 	mov	a,#0x80
      0034D8 C0 E0            [24] 1350 	push	acc
      0034DA 12 3A EF         [24] 1351 	lcall	_printf
      0034DD 15 81            [12] 1352 	dec	sp
      0034DF 15 81            [12] 1353 	dec	sp
      0034E1 15 81            [12] 1354 	dec	sp
                                   1355 ;	8051_i2c_eeprom.c:171: char input[4] = {0};  // Array for 3 hex chars + null terminator
      0034E3 90 04 0A         [24] 1356 	mov	dptr,#_take_data_input_65537_73
      0034E6 E4               [12] 1357 	clr	a
      0034E7 F0               [24] 1358 	movx	@dptr,a
      0034E8 90 04 0B         [24] 1359 	mov	dptr,#(_take_data_input_65537_73 + 0x0001)
      0034EB F0               [24] 1360 	movx	@dptr,a
      0034EC 90 04 0C         [24] 1361 	mov	dptr,#(_take_data_input_65537_73 + 0x0002)
      0034EF F0               [24] 1362 	movx	@dptr,a
      0034F0 90 04 0D         [24] 1363 	mov	dptr,#(_take_data_input_65537_73 + 0x0003)
      0034F3 F0               [24] 1364 	movx	@dptr,a
                                   1365 ;	8051_i2c_eeprom.c:175: printf("$ ");
      0034F4 74 7D            [12] 1366 	mov	a,#___str_20
      0034F6 C0 E0            [24] 1367 	push	acc
      0034F8 74 4C            [12] 1368 	mov	a,#(___str_20 >> 8)
      0034FA C0 E0            [24] 1369 	push	acc
      0034FC 74 80            [12] 1370 	mov	a,#0x80
      0034FE C0 E0            [24] 1371 	push	acc
      003500 12 3A EF         [24] 1372 	lcall	_printf
      003503 15 81            [12] 1373 	dec	sp
      003505 15 81            [12] 1374 	dec	sp
      003507 15 81            [12] 1375 	dec	sp
                                   1376 ;	8051_i2c_eeprom.c:177: while (i < 3) {
      003509 7E 00            [12] 1377 	mov	r6,#0x00
      00350B 7F 00            [12] 1378 	mov	r7,#0x00
      00350D                       1379 00111$:
      00350D C3               [12] 1380 	clr	c
      00350E EE               [12] 1381 	mov	a,r6
      00350F 94 03            [12] 1382 	subb	a,#0x03
      003511 EF               [12] 1383 	mov	a,r7
      003512 64 80            [12] 1384 	xrl	a,#0x80
      003514 94 80            [12] 1385 	subb	a,#0x80
      003516 50 5B            [24] 1386 	jnc	00113$
                                   1387 ;	8051_i2c_eeprom.c:179: c = getchar();
      003518 C0 07            [24] 1388 	push	ar7
      00351A C0 06            [24] 1389 	push	ar6
      00351C 12 30 81         [24] 1390 	lcall	_getchar
      00351F AC 82            [24] 1391 	mov	r4,dpl
      003521 AD 83            [24] 1392 	mov	r5,dph
      003523 D0 06            [24] 1393 	pop	ar6
      003525 D0 07            [24] 1394 	pop	ar7
                                   1395 ;	8051_i2c_eeprom.c:182: if (c == '\r' || c == '\n') {
      003527 BC 0D 02         [24] 1396 	cjne	r4,#0x0d,00200$
      00352A 80 47            [24] 1397 	sjmp	00113$
      00352C                       1398 00200$:
      00352C BC 0A 02         [24] 1399 	cjne	r4,#0x0a,00201$
      00352F 80 42            [24] 1400 	sjmp	00113$
      003531                       1401 00201$:
                                   1402 ;	8051_i2c_eeprom.c:187: if ((c >= '0' && c <= '9') || 
      003531 BC 30 00         [24] 1403 	cjne	r4,#0x30,00202$
      003534                       1404 00202$:
      003534 40 05            [24] 1405 	jc	00108$
      003536 EC               [12] 1406 	mov	a,r4
      003537 24 C6            [12] 1407 	add	a,#0xff - 0x39
      003539 50 14            [24] 1408 	jnc	00104$
      00353B                       1409 00108$:
                                   1410 ;	8051_i2c_eeprom.c:188: (c >= 'a' && c <= 'f') || 
      00353B BC 61 00         [24] 1411 	cjne	r4,#0x61,00205$
      00353E                       1412 00205$:
      00353E 40 05            [24] 1413 	jc	00110$
      003540 EC               [12] 1414 	mov	a,r4
      003541 24 99            [12] 1415 	add	a,#0xff - 0x66
      003543 50 0A            [24] 1416 	jnc	00104$
      003545                       1417 00110$:
                                   1418 ;	8051_i2c_eeprom.c:189: (c >= 'A' && c <= 'F')) {
      003545 BC 41 00         [24] 1419 	cjne	r4,#0x41,00208$
      003548                       1420 00208$:
      003548 40 C3            [24] 1421 	jc	00111$
      00354A EC               [12] 1422 	mov	a,r4
      00354B 24 B9            [12] 1423 	add	a,#0xff - 0x46
      00354D 40 BE            [24] 1424 	jc	00111$
      00354F                       1425 00104$:
                                   1426 ;	8051_i2c_eeprom.c:191: input[i] = c;
      00354F EE               [12] 1427 	mov	a,r6
      003550 24 0A            [12] 1428 	add	a,#_take_data_input_65537_73
      003552 F5 82            [12] 1429 	mov	dpl,a
      003554 EF               [12] 1430 	mov	a,r7
      003555 34 04            [12] 1431 	addc	a,#(_take_data_input_65537_73 >> 8)
      003557 F5 83            [12] 1432 	mov	dph,a
      003559 EC               [12] 1433 	mov	a,r4
      00355A F0               [24] 1434 	movx	@dptr,a
                                   1435 ;	8051_i2c_eeprom.c:192: putchar(c);  // Echo character back
      00355B 7D 00            [12] 1436 	mov	r5,#0x00
      00355D 8C 82            [24] 1437 	mov	dpl,r4
      00355F 8D 83            [24] 1438 	mov	dph,r5
      003561 C0 07            [24] 1439 	push	ar7
      003563 C0 06            [24] 1440 	push	ar6
      003565 12 30 62         [24] 1441 	lcall	_putchar
      003568 D0 06            [24] 1442 	pop	ar6
      00356A D0 07            [24] 1443 	pop	ar7
                                   1444 ;	8051_i2c_eeprom.c:193: i++;
      00356C 0E               [12] 1445 	inc	r6
      00356D BE 00 9D         [24] 1446 	cjne	r6,#0x00,00111$
      003570 0F               [12] 1447 	inc	r7
      003571 80 9A            [24] 1448 	sjmp	00111$
      003573                       1449 00113$:
                                   1450 ;	8051_i2c_eeprom.c:197: input[i] = '\0';  // Null-terminate the string
      003573 EE               [12] 1451 	mov	a,r6
      003574 24 0A            [12] 1452 	add	a,#_take_data_input_65537_73
      003576 F5 82            [12] 1453 	mov	dpl,a
      003578 EF               [12] 1454 	mov	a,r7
      003579 34 04            [12] 1455 	addc	a,#(_take_data_input_65537_73 >> 8)
      00357B F5 83            [12] 1456 	mov	dph,a
      00357D E4               [12] 1457 	clr	a
      00357E F0               [24] 1458 	movx	@dptr,a
                                   1459 ;	8051_i2c_eeprom.c:200: unsigned char data = 0;
      00357F 90 04 0E         [24] 1460 	mov	dptr,#_take_data_data_65538_77
      003582 F0               [24] 1461 	movx	@dptr,a
                                   1462 ;	8051_i2c_eeprom.c:201: for (i = 0; input[i] != '\0'; i++) {
      003583 7E 00            [12] 1463 	mov	r6,#0x00
      003585 7F 00            [12] 1464 	mov	r7,#0x00
      003587                       1465 00129$:
      003587 EE               [12] 1466 	mov	a,r6
      003588 24 0A            [12] 1467 	add	a,#_take_data_input_65537_73
      00358A F5 82            [12] 1468 	mov	dpl,a
      00358C EF               [12] 1469 	mov	a,r7
      00358D 34 04            [12] 1470 	addc	a,#(_take_data_input_65537_73 >> 8)
      00358F F5 83            [12] 1471 	mov	dph,a
      003591 E0               [24] 1472 	movx	a,@dptr
      003592 FD               [12] 1473 	mov	r5,a
      003593 70 03            [24] 1474 	jnz	00212$
      003595 02 35 FA         [24] 1475 	ljmp	00125$
      003598                       1476 00212$:
                                   1477 ;	8051_i2c_eeprom.c:202: data = data * 16;
      003598 90 04 0E         [24] 1478 	mov	dptr,#_take_data_data_65538_77
      00359B E0               [24] 1479 	movx	a,@dptr
      00359C C4               [12] 1480 	swap	a
      00359D 54 F0            [12] 1481 	anl	a,#0xf0
      00359F FC               [12] 1482 	mov	r4,a
      0035A0 F0               [24] 1483 	movx	@dptr,a
                                   1484 ;	8051_i2c_eeprom.c:203: if (input[i] >= '0' && input[i] <= '9')
      0035A1 BD 30 00         [24] 1485 	cjne	r5,#0x30,00213$
      0035A4                       1486 00213$:
      0035A4 40 12            [24] 1487 	jc	00122$
      0035A6 ED               [12] 1488 	mov	a,r5
      0035A7 24 C6            [12] 1489 	add	a,#0xff - 0x39
      0035A9 40 0D            [24] 1490 	jc	00122$
                                   1491 ;	8051_i2c_eeprom.c:204: data += input[i] - '0';
      0035AB ED               [12] 1492 	mov	a,r5
      0035AC 24 D0            [12] 1493 	add	a,#0xd0
      0035AE FD               [12] 1494 	mov	r5,a
      0035AF 90 04 0E         [24] 1495 	mov	dptr,#_take_data_data_65538_77
      0035B2 E0               [24] 1496 	movx	a,@dptr
      0035B3 FC               [12] 1497 	mov	r4,a
      0035B4 2D               [12] 1498 	add	a,r5
      0035B5 F0               [24] 1499 	movx	@dptr,a
      0035B6 80 3A            [24] 1500 	sjmp	00130$
      0035B8                       1501 00122$:
                                   1502 ;	8051_i2c_eeprom.c:205: else if (input[i] >= 'A' && input[i] <= 'F')
      0035B8 EE               [12] 1503 	mov	a,r6
      0035B9 24 0A            [12] 1504 	add	a,#_take_data_input_65537_73
      0035BB F5 82            [12] 1505 	mov	dpl,a
      0035BD EF               [12] 1506 	mov	a,r7
      0035BE 34 04            [12] 1507 	addc	a,#(_take_data_input_65537_73 >> 8)
      0035C0 F5 83            [12] 1508 	mov	dph,a
      0035C2 E0               [24] 1509 	movx	a,@dptr
      0035C3 FD               [12] 1510 	mov	r5,a
      0035C4 BD 41 00         [24] 1511 	cjne	r5,#0x41,00216$
      0035C7                       1512 00216$:
      0035C7 40 14            [24] 1513 	jc	00118$
      0035C9 ED               [12] 1514 	mov	a,r5
      0035CA 24 B9            [12] 1515 	add	a,#0xff - 0x46
      0035CC 40 0F            [24] 1516 	jc	00118$
                                   1517 ;	8051_i2c_eeprom.c:206: data += input[i] - 'A' + 10;
      0035CE 8D 04            [24] 1518 	mov	ar4,r5
      0035D0 74 C9            [12] 1519 	mov	a,#0xc9
      0035D2 2C               [12] 1520 	add	a,r4
      0035D3 FC               [12] 1521 	mov	r4,a
      0035D4 90 04 0E         [24] 1522 	mov	dptr,#_take_data_data_65538_77
      0035D7 E0               [24] 1523 	movx	a,@dptr
      0035D8 FB               [12] 1524 	mov	r3,a
      0035D9 2C               [12] 1525 	add	a,r4
      0035DA F0               [24] 1526 	movx	@dptr,a
      0035DB 80 15            [24] 1527 	sjmp	00130$
      0035DD                       1528 00118$:
                                   1529 ;	8051_i2c_eeprom.c:207: else if (input[i] >= 'a' && input[i] <= 'f')
      0035DD BD 61 00         [24] 1530 	cjne	r5,#0x61,00219$
      0035E0                       1531 00219$:
      0035E0 40 10            [24] 1532 	jc	00130$
      0035E2 ED               [12] 1533 	mov	a,r5
      0035E3 24 99            [12] 1534 	add	a,#0xff - 0x66
      0035E5 40 0B            [24] 1535 	jc	00130$
                                   1536 ;	8051_i2c_eeprom.c:208: data += input[i] - 'a' + 10;
      0035E7 74 A9            [12] 1537 	mov	a,#0xa9
      0035E9 2D               [12] 1538 	add	a,r5
      0035EA FD               [12] 1539 	mov	r5,a
      0035EB 90 04 0E         [24] 1540 	mov	dptr,#_take_data_data_65538_77
      0035EE E0               [24] 1541 	movx	a,@dptr
      0035EF FC               [12] 1542 	mov	r4,a
      0035F0 2D               [12] 1543 	add	a,r5
      0035F1 F0               [24] 1544 	movx	@dptr,a
      0035F2                       1545 00130$:
                                   1546 ;	8051_i2c_eeprom.c:201: for (i = 0; input[i] != '\0'; i++) {
      0035F2 0E               [12] 1547 	inc	r6
      0035F3 BE 00 01         [24] 1548 	cjne	r6,#0x00,00222$
      0035F6 0F               [12] 1549 	inc	r7
      0035F7                       1550 00222$:
      0035F7 02 35 87         [24] 1551 	ljmp	00129$
      0035FA                       1552 00125$:
                                   1553 ;	8051_i2c_eeprom.c:211: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      0035FA 90 04 0E         [24] 1554 	mov	dptr,#_take_data_data_65538_77
      0035FD E0               [24] 1555 	movx	a,@dptr
      0035FE FF               [12] 1556 	mov	r7,a
      0035FF FD               [12] 1557 	mov	r5,a
      003600 7E 00            [12] 1558 	mov	r6,#0x00
      003602 C0 07            [24] 1559 	push	ar7
      003604 C0 05            [24] 1560 	push	ar5
      003606 C0 06            [24] 1561 	push	ar6
      003608 74 0D            [12] 1562 	mov	a,#___str_26
      00360A C0 E0            [24] 1563 	push	acc
      00360C 74 4D            [12] 1564 	mov	a,#(___str_26 >> 8)
      00360E C0 E0            [24] 1565 	push	acc
      003610 74 80            [12] 1566 	mov	a,#0x80
      003612 C0 E0            [24] 1567 	push	acc
      003614 12 3A EF         [24] 1568 	lcall	_printf
      003617 E5 81            [12] 1569 	mov	a,sp
      003619 24 FB            [12] 1570 	add	a,#0xfb
      00361B F5 81            [12] 1571 	mov	sp,a
      00361D D0 07            [24] 1572 	pop	ar7
                                   1573 ;	8051_i2c_eeprom.c:212: if(data > 254) 
      00361F EF               [12] 1574 	mov	a,r7
      003620 24 01            [12] 1575 	add	a,#0xff - 0xfe
      003622 50 19            [24] 1576 	jnc	00127$
                                   1577 ;	8051_i2c_eeprom.c:214: printf("Data out of Range\n\r");
      003624 74 2A            [12] 1578 	mov	a,#___str_27
      003626 C0 E0            [24] 1579 	push	acc
      003628 74 4D            [12] 1580 	mov	a,#(___str_27 >> 8)
      00362A C0 E0            [24] 1581 	push	acc
      00362C 74 80            [12] 1582 	mov	a,#0x80
      00362E C0 E0            [24] 1583 	push	acc
      003630 12 3A EF         [24] 1584 	lcall	_printf
      003633 15 81            [12] 1585 	dec	sp
      003635 15 81            [12] 1586 	dec	sp
      003637 15 81            [12] 1587 	dec	sp
                                   1588 ;	8051_i2c_eeprom.c:215: return 0;
      003639 75 82 00         [24] 1589 	mov	dpl,#0x00
      00363C 22               [24] 1590 	ret
      00363D                       1591 00127$:
                                   1592 ;	8051_i2c_eeprom.c:217: return data;
      00363D 8F 82            [24] 1593 	mov	dpl,r7
                                   1594 ;	8051_i2c_eeprom.c:219: }
      00363F 22               [24] 1595 	ret
                                   1596 ;------------------------------------------------------------
                                   1597 ;Allocation info for local variables in function 'eeprom_write'
                                   1598 ;------------------------------------------------------------
                                   1599 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                   1600 ;address                   Allocated with name '_eeprom_write_address_65536_81'
                                   1601 ;i                         Allocated with name '_eeprom_write_i_131072_86'
                                   1602 ;------------------------------------------------------------
                                   1603 ;	8051_i2c_eeprom.c:221: int eeprom_write(unsigned int address, unsigned char data) 
                                   1604 ;	-----------------------------------------
                                   1605 ;	 function eeprom_write
                                   1606 ;	-----------------------------------------
      003640                       1607 _eeprom_write:
      003640 AF 83            [24] 1608 	mov	r7,dph
      003642 E5 82            [12] 1609 	mov	a,dpl
      003644 90 04 10         [24] 1610 	mov	dptr,#_eeprom_write_address_65536_81
      003647 F0               [24] 1611 	movx	@dptr,a
      003648 EF               [12] 1612 	mov	a,r7
      003649 A3               [24] 1613 	inc	dptr
      00364A F0               [24] 1614 	movx	@dptr,a
                                   1615 ;	8051_i2c_eeprom.c:224: i2c_start();
      00364B 12 39 B0         [24] 1616 	lcall	_i2c_start
                                   1617 ;	8051_i2c_eeprom.c:227: if(!i2c_write(EEPROM_ID | block | WRITE)) {
      00364E 90 04 51         [24] 1618 	mov	dptr,#_block
      003651 E0               [24] 1619 	movx	a,@dptr
      003652 FE               [12] 1620 	mov	r6,a
      003653 A3               [24] 1621 	inc	dptr
      003654 E0               [24] 1622 	movx	a,@dptr
      003655 43 06 A0         [24] 1623 	orl	ar6,#0xa0
      003658 8E 82            [24] 1624 	mov	dpl,r6
      00365A 12 38 C3         [24] 1625 	lcall	_i2c_write
      00365D E5 82            [12] 1626 	mov	a,dpl
      00365F 85 83 F0         [24] 1627 	mov	b,dph
      003662 45 F0            [12] 1628 	orl	a,b
      003664 70 1C            [24] 1629 	jnz	00102$
                                   1630 ;	8051_i2c_eeprom.c:228: printf("Error: No ACK for device address (write)\n\r");
      003666 74 3E            [12] 1631 	mov	a,#___str_28
      003668 C0 E0            [24] 1632 	push	acc
      00366A 74 4D            [12] 1633 	mov	a,#(___str_28 >> 8)
      00366C C0 E0            [24] 1634 	push	acc
      00366E 74 80            [12] 1635 	mov	a,#0x80
      003670 C0 E0            [24] 1636 	push	acc
      003672 12 3A EF         [24] 1637 	lcall	_printf
      003675 15 81            [12] 1638 	dec	sp
      003677 15 81            [12] 1639 	dec	sp
      003679 15 81            [12] 1640 	dec	sp
                                   1641 ;	8051_i2c_eeprom.c:229: i2c_stop();
      00367B 12 39 C5         [24] 1642 	lcall	_i2c_stop
                                   1643 ;	8051_i2c_eeprom.c:230: return 0;
      00367E 90 00 00         [24] 1644 	mov	dptr,#0x0000
      003681 22               [24] 1645 	ret
      003682                       1646 00102$:
                                   1647 ;	8051_i2c_eeprom.c:234: if(!i2c_write((unsigned char)address)) {
      003682 90 04 10         [24] 1648 	mov	dptr,#_eeprom_write_address_65536_81
      003685 E0               [24] 1649 	movx	a,@dptr
      003686 FE               [12] 1650 	mov	r6,a
      003687 A3               [24] 1651 	inc	dptr
      003688 E0               [24] 1652 	movx	a,@dptr
      003689 FF               [12] 1653 	mov	r7,a
      00368A 8E 05            [24] 1654 	mov	ar5,r6
      00368C 8D 82            [24] 1655 	mov	dpl,r5
      00368E C0 07            [24] 1656 	push	ar7
      003690 C0 06            [24] 1657 	push	ar6
      003692 12 38 C3         [24] 1658 	lcall	_i2c_write
      003695 E5 82            [12] 1659 	mov	a,dpl
      003697 85 83 F0         [24] 1660 	mov	b,dph
      00369A D0 06            [24] 1661 	pop	ar6
      00369C D0 07            [24] 1662 	pop	ar7
      00369E 45 F0            [12] 1663 	orl	a,b
      0036A0 70 1C            [24] 1664 	jnz	00104$
                                   1665 ;	8051_i2c_eeprom.c:235: printf("Error: No ACK for memory address\n\r");
      0036A2 74 69            [12] 1666 	mov	a,#___str_29
      0036A4 C0 E0            [24] 1667 	push	acc
      0036A6 74 4D            [12] 1668 	mov	a,#(___str_29 >> 8)
      0036A8 C0 E0            [24] 1669 	push	acc
      0036AA 74 80            [12] 1670 	mov	a,#0x80
      0036AC C0 E0            [24] 1671 	push	acc
      0036AE 12 3A EF         [24] 1672 	lcall	_printf
      0036B1 15 81            [12] 1673 	dec	sp
      0036B3 15 81            [12] 1674 	dec	sp
      0036B5 15 81            [12] 1675 	dec	sp
                                   1676 ;	8051_i2c_eeprom.c:236: i2c_stop();
      0036B7 12 39 C5         [24] 1677 	lcall	_i2c_stop
                                   1678 ;	8051_i2c_eeprom.c:237: return 0;
      0036BA 90 00 00         [24] 1679 	mov	dptr,#0x0000
      0036BD 22               [24] 1680 	ret
      0036BE                       1681 00104$:
                                   1682 ;	8051_i2c_eeprom.c:241: if(!i2c_write(data)) {
      0036BE 90 04 0F         [24] 1683 	mov	dptr,#_eeprom_write_PARM_2
      0036C1 E0               [24] 1684 	movx	a,@dptr
      0036C2 FD               [12] 1685 	mov	r5,a
      0036C3 F5 82            [12] 1686 	mov	dpl,a
      0036C5 C0 07            [24] 1687 	push	ar7
      0036C7 C0 06            [24] 1688 	push	ar6
      0036C9 C0 05            [24] 1689 	push	ar5
      0036CB 12 38 C3         [24] 1690 	lcall	_i2c_write
      0036CE E5 82            [12] 1691 	mov	a,dpl
      0036D0 85 83 F0         [24] 1692 	mov	b,dph
      0036D3 D0 05            [24] 1693 	pop	ar5
      0036D5 D0 06            [24] 1694 	pop	ar6
      0036D7 D0 07            [24] 1695 	pop	ar7
      0036D9 45 F0            [12] 1696 	orl	a,b
      0036DB 70 1C            [24] 1697 	jnz	00106$
                                   1698 ;	8051_i2c_eeprom.c:242: printf("Error: No ACK for data\n\r");
      0036DD 74 8C            [12] 1699 	mov	a,#___str_30
      0036DF C0 E0            [24] 1700 	push	acc
      0036E1 74 4D            [12] 1701 	mov	a,#(___str_30 >> 8)
      0036E3 C0 E0            [24] 1702 	push	acc
      0036E5 74 80            [12] 1703 	mov	a,#0x80
      0036E7 C0 E0            [24] 1704 	push	acc
      0036E9 12 3A EF         [24] 1705 	lcall	_printf
      0036EC 15 81            [12] 1706 	dec	sp
      0036EE 15 81            [12] 1707 	dec	sp
      0036F0 15 81            [12] 1708 	dec	sp
                                   1709 ;	8051_i2c_eeprom.c:243: i2c_stop();
      0036F2 12 39 C5         [24] 1710 	lcall	_i2c_stop
                                   1711 ;	8051_i2c_eeprom.c:244: return 0;
      0036F5 90 00 00         [24] 1712 	mov	dptr,#0x0000
      0036F8 22               [24] 1713 	ret
      0036F9                       1714 00106$:
                                   1715 ;	8051_i2c_eeprom.c:247: i2c_stop();
      0036F9 C0 07            [24] 1716 	push	ar7
      0036FB C0 06            [24] 1717 	push	ar6
      0036FD C0 05            [24] 1718 	push	ar5
      0036FF 12 39 C5         [24] 1719 	lcall	_i2c_stop
      003702 D0 05            [24] 1720 	pop	ar5
      003704 D0 06            [24] 1721 	pop	ar6
      003706 D0 07            [24] 1722 	pop	ar7
                                   1723 ;	8051_i2c_eeprom.c:249: for(int i = 0; i<100; i++)
      003708 7B 00            [12] 1724 	mov	r3,#0x00
      00370A 7C 00            [12] 1725 	mov	r4,#0x00
      00370C                       1726 00109$:
      00370C C3               [12] 1727 	clr	c
      00370D EB               [12] 1728 	mov	a,r3
      00370E 94 64            [12] 1729 	subb	a,#0x64
      003710 EC               [12] 1730 	mov	a,r4
      003711 64 80            [12] 1731 	xrl	a,#0x80
      003713 94 80            [12] 1732 	subb	a,#0x80
      003715 50 1E            [24] 1733 	jnc	00107$
                                   1734 ;	8051_i2c_eeprom.c:251: i2c_delay();
      003717 C0 07            [24] 1735 	push	ar7
      003719 C0 06            [24] 1736 	push	ar6
      00371B C0 05            [24] 1737 	push	ar5
      00371D C0 04            [24] 1738 	push	ar4
      00371F C0 03            [24] 1739 	push	ar3
      003721 12 39 D2         [24] 1740 	lcall	_i2c_delay
      003724 D0 03            [24] 1741 	pop	ar3
      003726 D0 04            [24] 1742 	pop	ar4
      003728 D0 05            [24] 1743 	pop	ar5
      00372A D0 06            [24] 1744 	pop	ar6
      00372C D0 07            [24] 1745 	pop	ar7
                                   1746 ;	8051_i2c_eeprom.c:249: for(int i = 0; i<100; i++)
      00372E 0B               [12] 1747 	inc	r3
      00372F BB 00 DA         [24] 1748 	cjne	r3,#0x00,00109$
      003732 0C               [12] 1749 	inc	r4
      003733 80 D7            [24] 1750 	sjmp	00109$
      003735                       1751 00107$:
                                   1752 ;	8051_i2c_eeprom.c:253: printf("| Writing at Address 0x%03X Data 0x%02X          |\n\r", address, data);
      003735 7C 00            [12] 1753 	mov	r4,#0x00
      003737 C0 05            [24] 1754 	push	ar5
      003739 C0 04            [24] 1755 	push	ar4
      00373B C0 06            [24] 1756 	push	ar6
      00373D C0 07            [24] 1757 	push	ar7
      00373F 74 A5            [12] 1758 	mov	a,#___str_31
      003741 C0 E0            [24] 1759 	push	acc
      003743 74 4D            [12] 1760 	mov	a,#(___str_31 >> 8)
      003745 C0 E0            [24] 1761 	push	acc
      003747 74 80            [12] 1762 	mov	a,#0x80
      003749 C0 E0            [24] 1763 	push	acc
      00374B 12 3A EF         [24] 1764 	lcall	_printf
      00374E E5 81            [12] 1765 	mov	a,sp
      003750 24 F9            [12] 1766 	add	a,#0xf9
      003752 F5 81            [12] 1767 	mov	sp,a
                                   1768 ;	8051_i2c_eeprom.c:254: printf("│ Write successful!                             │\n\r");
      003754 74 DA            [12] 1769 	mov	a,#___str_32
      003756 C0 E0            [24] 1770 	push	acc
      003758 74 4D            [12] 1771 	mov	a,#(___str_32 >> 8)
      00375A C0 E0            [24] 1772 	push	acc
      00375C 74 80            [12] 1773 	mov	a,#0x80
      00375E C0 E0            [24] 1774 	push	acc
      003760 12 3A EF         [24] 1775 	lcall	_printf
      003763 15 81            [12] 1776 	dec	sp
      003765 15 81            [12] 1777 	dec	sp
      003767 15 81            [12] 1778 	dec	sp
                                   1779 ;	8051_i2c_eeprom.c:255: printf("└───────────────────────────────────────────────┘\n\r");
      003769 74 12            [12] 1780 	mov	a,#___str_33
      00376B C0 E0            [24] 1781 	push	acc
      00376D 74 4E            [12] 1782 	mov	a,#(___str_33 >> 8)
      00376F C0 E0            [24] 1783 	push	acc
      003771 74 80            [12] 1784 	mov	a,#0x80
      003773 C0 E0            [24] 1785 	push	acc
      003775 12 3A EF         [24] 1786 	lcall	_printf
      003778 15 81            [12] 1787 	dec	sp
      00377A 15 81            [12] 1788 	dec	sp
      00377C 15 81            [12] 1789 	dec	sp
                                   1790 ;	8051_i2c_eeprom.c:256: return 1;  // Success
      00377E 90 00 01         [24] 1791 	mov	dptr,#0x0001
                                   1792 ;	8051_i2c_eeprom.c:258: }
      003781 22               [24] 1793 	ret
                                   1794 ;------------------------------------------------------------
                                   1795 ;Allocation info for local variables in function 'eeprom_read'
                                   1796 ;------------------------------------------------------------
                                   1797 ;address                   Allocated with name '_eeprom_read_address_65536_88'
                                   1798 ;result                    Allocated with name '_eeprom_read_result_65536_89'
                                   1799 ;------------------------------------------------------------
                                   1800 ;	8051_i2c_eeprom.c:260: int eeprom_read(unsigned int address) 
                                   1801 ;	-----------------------------------------
                                   1802 ;	 function eeprom_read
                                   1803 ;	-----------------------------------------
      003782                       1804 _eeprom_read:
      003782 AF 83            [24] 1805 	mov	r7,dph
      003784 E5 82            [12] 1806 	mov	a,dpl
      003786 90 04 12         [24] 1807 	mov	dptr,#_eeprom_read_address_65536_88
      003789 F0               [24] 1808 	movx	@dptr,a
      00378A EF               [12] 1809 	mov	a,r7
      00378B A3               [24] 1810 	inc	dptr
      00378C F0               [24] 1811 	movx	@dptr,a
                                   1812 ;	8051_i2c_eeprom.c:266: i2c_start();
      00378D 12 39 B0         [24] 1813 	lcall	_i2c_start
                                   1814 ;	8051_i2c_eeprom.c:269: if(!i2c_write(EEPROM_ID | WRITE)) {
      003790 75 82 A0         [24] 1815 	mov	dpl,#0xa0
      003793 12 38 C3         [24] 1816 	lcall	_i2c_write
      003796 E5 82            [12] 1817 	mov	a,dpl
      003798 85 83 F0         [24] 1818 	mov	b,dph
      00379B 45 F0            [12] 1819 	orl	a,b
      00379D 70 1C            [24] 1820 	jnz	00102$
                                   1821 ;	8051_i2c_eeprom.c:270: printf("Error: No ACK for device address (write mode)\n\r");
      00379F 74 A8            [12] 1822 	mov	a,#___str_34
      0037A1 C0 E0            [24] 1823 	push	acc
      0037A3 74 4E            [12] 1824 	mov	a,#(___str_34 >> 8)
      0037A5 C0 E0            [24] 1825 	push	acc
      0037A7 74 80            [12] 1826 	mov	a,#0x80
      0037A9 C0 E0            [24] 1827 	push	acc
      0037AB 12 3A EF         [24] 1828 	lcall	_printf
      0037AE 15 81            [12] 1829 	dec	sp
      0037B0 15 81            [12] 1830 	dec	sp
      0037B2 15 81            [12] 1831 	dec	sp
                                   1832 ;	8051_i2c_eeprom.c:271: i2c_stop();
      0037B4 12 39 C5         [24] 1833 	lcall	_i2c_stop
                                   1834 ;	8051_i2c_eeprom.c:272: return -1;
      0037B7 90 FF FF         [24] 1835 	mov	dptr,#0xffff
      0037BA 22               [24] 1836 	ret
      0037BB                       1837 00102$:
                                   1838 ;	8051_i2c_eeprom.c:276: if(!i2c_write((unsigned char)address)) {
      0037BB 90 04 12         [24] 1839 	mov	dptr,#_eeprom_read_address_65536_88
      0037BE E0               [24] 1840 	movx	a,@dptr
      0037BF FE               [12] 1841 	mov	r6,a
      0037C0 A3               [24] 1842 	inc	dptr
      0037C1 E0               [24] 1843 	movx	a,@dptr
      0037C2 FF               [12] 1844 	mov	r7,a
      0037C3 8E 05            [24] 1845 	mov	ar5,r6
      0037C5 8D 82            [24] 1846 	mov	dpl,r5
      0037C7 C0 07            [24] 1847 	push	ar7
      0037C9 C0 06            [24] 1848 	push	ar6
      0037CB 12 38 C3         [24] 1849 	lcall	_i2c_write
      0037CE E5 82            [12] 1850 	mov	a,dpl
      0037D0 85 83 F0         [24] 1851 	mov	b,dph
      0037D3 D0 06            [24] 1852 	pop	ar6
      0037D5 D0 07            [24] 1853 	pop	ar7
      0037D7 45 F0            [12] 1854 	orl	a,b
      0037D9 70 1C            [24] 1855 	jnz	00104$
                                   1856 ;	8051_i2c_eeprom.c:277: printf("Error: No ACK for memory address\n\r");
      0037DB 74 69            [12] 1857 	mov	a,#___str_29
      0037DD C0 E0            [24] 1858 	push	acc
      0037DF 74 4D            [12] 1859 	mov	a,#(___str_29 >> 8)
      0037E1 C0 E0            [24] 1860 	push	acc
      0037E3 74 80            [12] 1861 	mov	a,#0x80
      0037E5 C0 E0            [24] 1862 	push	acc
      0037E7 12 3A EF         [24] 1863 	lcall	_printf
      0037EA 15 81            [12] 1864 	dec	sp
      0037EC 15 81            [12] 1865 	dec	sp
      0037EE 15 81            [12] 1866 	dec	sp
                                   1867 ;	8051_i2c_eeprom.c:278: i2c_stop();
      0037F0 12 39 C5         [24] 1868 	lcall	_i2c_stop
                                   1869 ;	8051_i2c_eeprom.c:279: return -1;
      0037F3 90 FF FF         [24] 1870 	mov	dptr,#0xffff
      0037F6 22               [24] 1871 	ret
      0037F7                       1872 00104$:
                                   1873 ;	8051_i2c_eeprom.c:283: i2c_start();
      0037F7 C0 07            [24] 1874 	push	ar7
      0037F9 C0 06            [24] 1875 	push	ar6
      0037FB 12 39 B0         [24] 1876 	lcall	_i2c_start
                                   1877 ;	8051_i2c_eeprom.c:286: if(!i2c_write(EEPROM_ID | READ)) {
      0037FE 75 82 A1         [24] 1878 	mov	dpl,#0xa1
      003801 12 38 C3         [24] 1879 	lcall	_i2c_write
      003804 E5 82            [12] 1880 	mov	a,dpl
      003806 85 83 F0         [24] 1881 	mov	b,dph
      003809 D0 06            [24] 1882 	pop	ar6
      00380B D0 07            [24] 1883 	pop	ar7
      00380D 45 F0            [12] 1884 	orl	a,b
      00380F 70 1C            [24] 1885 	jnz	00106$
                                   1886 ;	8051_i2c_eeprom.c:287: printf("Error: No ACK for device address (read mode)\n\r");
      003811 74 D8            [12] 1887 	mov	a,#___str_35
      003813 C0 E0            [24] 1888 	push	acc
      003815 74 4E            [12] 1889 	mov	a,#(___str_35 >> 8)
      003817 C0 E0            [24] 1890 	push	acc
      003819 74 80            [12] 1891 	mov	a,#0x80
      00381B C0 E0            [24] 1892 	push	acc
      00381D 12 3A EF         [24] 1893 	lcall	_printf
      003820 15 81            [12] 1894 	dec	sp
      003822 15 81            [12] 1895 	dec	sp
      003824 15 81            [12] 1896 	dec	sp
                                   1897 ;	8051_i2c_eeprom.c:288: i2c_stop();
      003826 12 39 C5         [24] 1898 	lcall	_i2c_stop
                                   1899 ;	8051_i2c_eeprom.c:289: return -1;
      003829 90 FF FF         [24] 1900 	mov	dptr,#0xffff
      00382C 22               [24] 1901 	ret
      00382D                       1902 00106$:
                                   1903 ;	8051_i2c_eeprom.c:293: result = i2c_read(0);  // 0 means send NACK
      00382D 90 00 00         [24] 1904 	mov	dptr,#0x0000
      003830 C0 07            [24] 1905 	push	ar7
      003832 C0 06            [24] 1906 	push	ar6
      003834 12 39 2B         [24] 1907 	lcall	_i2c_read
      003837 AC 82            [24] 1908 	mov	r4,dpl
      003839 D0 06            [24] 1909 	pop	ar6
      00383B D0 07            [24] 1910 	pop	ar7
                                   1911 ;	8051_i2c_eeprom.c:294: printf("│ Reading from Adress: 0x%03X Data: 0x%02X                    \n\r", address, result);
      00383D 7D 00            [12] 1912 	mov	r5,#0x00
      00383F C0 07            [24] 1913 	push	ar7
      003841 C0 06            [24] 1914 	push	ar6
      003843 C0 05            [24] 1915 	push	ar5
      003845 C0 04            [24] 1916 	push	ar4
      003847 C0 04            [24] 1917 	push	ar4
      003849 C0 05            [24] 1918 	push	ar5
      00384B C0 06            [24] 1919 	push	ar6
      00384D C0 07            [24] 1920 	push	ar7
      00384F 74 07            [12] 1921 	mov	a,#___str_36
      003851 C0 E0            [24] 1922 	push	acc
      003853 74 4F            [12] 1923 	mov	a,#(___str_36 >> 8)
      003855 C0 E0            [24] 1924 	push	acc
      003857 74 80            [12] 1925 	mov	a,#0x80
      003859 C0 E0            [24] 1926 	push	acc
      00385B 12 3A EF         [24] 1927 	lcall	_printf
      00385E E5 81            [12] 1928 	mov	a,sp
      003860 24 F9            [12] 1929 	add	a,#0xf9
      003862 F5 81            [12] 1930 	mov	sp,a
      003864 D0 04            [24] 1931 	pop	ar4
      003866 D0 05            [24] 1932 	pop	ar5
      003868 D0 06            [24] 1933 	pop	ar6
      00386A D0 07            [24] 1934 	pop	ar7
                                   1935 ;	8051_i2c_eeprom.c:295: printf("| 0x%03X : 0x%02X \n\r", address, result);
      00386C C0 05            [24] 1936 	push	ar5
      00386E C0 04            [24] 1937 	push	ar4
      003870 C0 04            [24] 1938 	push	ar4
      003872 C0 05            [24] 1939 	push	ar5
      003874 C0 06            [24] 1940 	push	ar6
      003876 C0 07            [24] 1941 	push	ar7
      003878 74 4A            [12] 1942 	mov	a,#___str_37
      00387A C0 E0            [24] 1943 	push	acc
      00387C 74 4F            [12] 1944 	mov	a,#(___str_37 >> 8)
      00387E C0 E0            [24] 1945 	push	acc
      003880 74 80            [12] 1946 	mov	a,#0x80
      003882 C0 E0            [24] 1947 	push	acc
      003884 12 3A EF         [24] 1948 	lcall	_printf
      003887 E5 81            [12] 1949 	mov	a,sp
      003889 24 F9            [12] 1950 	add	a,#0xf9
      00388B F5 81            [12] 1951 	mov	sp,a
                                   1952 ;	8051_i2c_eeprom.c:296: printf("│ Read successful!                 │\n\r");
      00388D 74 5F            [12] 1953 	mov	a,#___str_38
      00388F C0 E0            [24] 1954 	push	acc
      003891 74 4F            [12] 1955 	mov	a,#(___str_38 >> 8)
      003893 C0 E0            [24] 1956 	push	acc
      003895 74 80            [12] 1957 	mov	a,#0x80
      003897 C0 E0            [24] 1958 	push	acc
      003899 12 3A EF         [24] 1959 	lcall	_printf
      00389C 15 81            [12] 1960 	dec	sp
      00389E 15 81            [12] 1961 	dec	sp
      0038A0 15 81            [12] 1962 	dec	sp
                                   1963 ;	8051_i2c_eeprom.c:297: printf("└───────────────────────────────────────────────┘\n\r");
      0038A2 74 12            [12] 1964 	mov	a,#___str_33
      0038A4 C0 E0            [24] 1965 	push	acc
      0038A6 74 4E            [12] 1966 	mov	a,#(___str_33 >> 8)
      0038A8 C0 E0            [24] 1967 	push	acc
      0038AA 74 80            [12] 1968 	mov	a,#0x80
      0038AC C0 E0            [24] 1969 	push	acc
      0038AE 12 3A EF         [24] 1970 	lcall	_printf
      0038B1 15 81            [12] 1971 	dec	sp
      0038B3 15 81            [12] 1972 	dec	sp
      0038B5 15 81            [12] 1973 	dec	sp
                                   1974 ;	8051_i2c_eeprom.c:298: i2c_stop();
      0038B7 12 39 C5         [24] 1975 	lcall	_i2c_stop
      0038BA D0 04            [24] 1976 	pop	ar4
      0038BC D0 05            [24] 1977 	pop	ar5
                                   1978 ;	8051_i2c_eeprom.c:299: return result;
      0038BE 8C 82            [24] 1979 	mov	dpl,r4
      0038C0 8D 83            [24] 1980 	mov	dph,r5
                                   1981 ;	8051_i2c_eeprom.c:300: }
      0038C2 22               [24] 1982 	ret
                                   1983 ;------------------------------------------------------------
                                   1984 ;Allocation info for local variables in function 'i2c_write'
                                   1985 ;------------------------------------------------------------
                                   1986 ;data                      Allocated with name '_i2c_write_data_65536_93'
                                   1987 ;i                         Allocated with name '_i2c_write_i_65536_94'
                                   1988 ;------------------------------------------------------------
                                   1989 ;	8051_i2c_eeprom.c:303: int i2c_write(unsigned char data)
                                   1990 ;	-----------------------------------------
                                   1991 ;	 function i2c_write
                                   1992 ;	-----------------------------------------
      0038C3                       1993 _i2c_write:
      0038C3 E5 82            [12] 1994 	mov	a,dpl
      0038C5 90 04 14         [24] 1995 	mov	dptr,#_i2c_write_data_65536_93
      0038C8 F0               [24] 1996 	movx	@dptr,a
                                   1997 ;	8051_i2c_eeprom.c:307: for(i=0;i<=7;i++)
      0038C9 7E 00            [12] 1998 	mov	r6,#0x00
      0038CB 7F 00            [12] 1999 	mov	r7,#0x00
      0038CD                       2000 00104$:
                                   2001 ;	8051_i2c_eeprom.c:309: SDA = (data & 0x80) ? 1 : 0;    //msb first
      0038CD 90 04 14         [24] 2002 	mov	dptr,#_i2c_write_data_65536_93
      0038D0 E0               [24] 2003 	movx	a,@dptr
      0038D1 FD               [12] 2004 	mov	r5,a
      0038D2 23               [12] 2005 	rl	a
      0038D3 54 01            [12] 2006 	anl	a,#0x01
      0038D5 24 FF            [12] 2007 	add	a,#0xff
      0038D7 92 94            [24] 2008 	mov	_P1_4,c
                                   2009 ;	8051_i2c_eeprom.c:310: i2c_delay();        // Setup time for data
      0038D9 C0 07            [24] 2010 	push	ar7
      0038DB C0 06            [24] 2011 	push	ar6
      0038DD C0 05            [24] 2012 	push	ar5
      0038DF 12 39 D2         [24] 2013 	lcall	_i2c_delay
                                   2014 ;	8051_i2c_eeprom.c:311: SCL=1;
                                   2015 ;	assignBit
      0038E2 D2 93            [12] 2016 	setb	_P1_3
                                   2017 ;	8051_i2c_eeprom.c:312: i2c_delay();        // Hold time for clock
      0038E4 12 39 D2         [24] 2018 	lcall	_i2c_delay
      0038E7 D0 05            [24] 2019 	pop	ar5
      0038E9 D0 06            [24] 2020 	pop	ar6
      0038EB D0 07            [24] 2021 	pop	ar7
                                   2022 ;	8051_i2c_eeprom.c:313: SCL=0;
                                   2023 ;	assignBit
      0038ED C2 93            [12] 2024 	clr	_P1_3
                                   2025 ;	8051_i2c_eeprom.c:314: data = data << 1;
      0038EF ED               [12] 2026 	mov	a,r5
      0038F0 2D               [12] 2027 	add	a,r5
      0038F1 90 04 14         [24] 2028 	mov	dptr,#_i2c_write_data_65536_93
      0038F4 F0               [24] 2029 	movx	@dptr,a
                                   2030 ;	8051_i2c_eeprom.c:307: for(i=0;i<=7;i++)
      0038F5 0E               [12] 2031 	inc	r6
      0038F6 BE 00 01         [24] 2032 	cjne	r6,#0x00,00121$
      0038F9 0F               [12] 2033 	inc	r7
      0038FA                       2034 00121$:
      0038FA C3               [12] 2035 	clr	c
      0038FB 74 07            [12] 2036 	mov	a,#0x07
      0038FD 9E               [12] 2037 	subb	a,r6
      0038FE E4               [12] 2038 	clr	a
      0038FF 9F               [12] 2039 	subb	a,r7
      003900 50 CB            [24] 2040 	jnc	00104$
                                   2041 ;	8051_i2c_eeprom.c:318: SDA = 1;            // Release SDA for slave
                                   2042 ;	assignBit
      003902 D2 94            [12] 2043 	setb	_P1_4
                                   2044 ;	8051_i2c_eeprom.c:319: SCL = 1;            // 9th clock pulse for ACK
                                   2045 ;	assignBit
      003904 D2 93            [12] 2046 	setb	_P1_3
                                   2047 ;	8051_i2c_eeprom.c:320: i2c_delay();
      003906 12 39 D2         [24] 2048 	lcall	_i2c_delay
                                   2049 ;	8051_i2c_eeprom.c:321: if(SDA == 1)        // If SDA is still high, no ACK received
      003909 30 94 19         [24] 2050 	jnb	_P1_4,00103$
                                   2051 ;	8051_i2c_eeprom.c:324: printf("ACK DID NOT ARRIVE\n\r");
      00390C 74 8A            [12] 2052 	mov	a,#___str_39
      00390E C0 E0            [24] 2053 	push	acc
      003910 74 4F            [12] 2054 	mov	a,#(___str_39 >> 8)
      003912 C0 E0            [24] 2055 	push	acc
      003914 74 80            [12] 2056 	mov	a,#0x80
      003916 C0 E0            [24] 2057 	push	acc
      003918 12 3A EF         [24] 2058 	lcall	_printf
      00391B 15 81            [12] 2059 	dec	sp
      00391D 15 81            [12] 2060 	dec	sp
      00391F 15 81            [12] 2061 	dec	sp
                                   2062 ;	8051_i2c_eeprom.c:325: return 0;       // Error
      003921 90 00 00         [24] 2063 	mov	dptr,#0x0000
      003924 22               [24] 2064 	ret
      003925                       2065 00103$:
                                   2066 ;	8051_i2c_eeprom.c:327: SCL = 0;
                                   2067 ;	assignBit
      003925 C2 93            [12] 2068 	clr	_P1_3
                                   2069 ;	8051_i2c_eeprom.c:329: return 1;           // Success
      003927 90 00 01         [24] 2070 	mov	dptr,#0x0001
                                   2071 ;	8051_i2c_eeprom.c:331: }
      00392A 22               [24] 2072 	ret
                                   2073 ;------------------------------------------------------------
                                   2074 ;Allocation info for local variables in function 'i2c_read'
                                   2075 ;------------------------------------------------------------
                                   2076 ;ACK                       Allocated with name '_i2c_read_ACK_65536_98'
                                   2077 ;buff                      Allocated with name '_i2c_read_buff_65536_99'
                                   2078 ;i                         Allocated with name '_i2c_read_i_131072_100'
                                   2079 ;------------------------------------------------------------
                                   2080 ;	8051_i2c_eeprom.c:332: int i2c_read(int ACK)
                                   2081 ;	-----------------------------------------
                                   2082 ;	 function i2c_read
                                   2083 ;	-----------------------------------------
      00392B                       2084 _i2c_read:
      00392B AF 83            [24] 2085 	mov	r7,dph
      00392D E5 82            [12] 2086 	mov	a,dpl
      00392F 90 04 15         [24] 2087 	mov	dptr,#_i2c_read_ACK_65536_98
      003932 F0               [24] 2088 	movx	@dptr,a
      003933 EF               [12] 2089 	mov	a,r7
      003934 A3               [24] 2090 	inc	dptr
      003935 F0               [24] 2091 	movx	@dptr,a
                                   2092 ;	8051_i2c_eeprom.c:334: unsigned char buff=0;
      003936 90 04 17         [24] 2093 	mov	dptr,#_i2c_read_buff_65536_99
      003939 E4               [12] 2094 	clr	a
      00393A F0               [24] 2095 	movx	@dptr,a
                                   2096 ;	8051_i2c_eeprom.c:335: SCL = 0;
                                   2097 ;	assignBit
      00393B C2 93            [12] 2098 	clr	_P1_3
                                   2099 ;	8051_i2c_eeprom.c:336: for(int i=0;i<8;i++)
      00393D 7E 00            [12] 2100 	mov	r6,#0x00
      00393F 7F 00            [12] 2101 	mov	r7,#0x00
      003941                       2102 00103$:
      003941 C3               [12] 2103 	clr	c
      003942 EE               [12] 2104 	mov	a,r6
      003943 94 08            [12] 2105 	subb	a,#0x08
      003945 EF               [12] 2106 	mov	a,r7
      003946 64 80            [12] 2107 	xrl	a,#0x80
      003948 94 80            [12] 2108 	subb	a,#0x80
      00394A 50 40            [24] 2109 	jnc	00101$
                                   2110 ;	8051_i2c_eeprom.c:338: SCL = 1;
                                   2111 ;	assignBit
      00394C D2 93            [12] 2112 	setb	_P1_3
                                   2113 ;	8051_i2c_eeprom.c:339: i2c_delay();
      00394E C0 07            [24] 2114 	push	ar7
      003950 C0 06            [24] 2115 	push	ar6
      003952 12 39 D2         [24] 2116 	lcall	_i2c_delay
      003955 D0 06            [24] 2117 	pop	ar6
      003957 D0 07            [24] 2118 	pop	ar7
                                   2119 ;	8051_i2c_eeprom.c:340: buff |= (SDA << (7 - i));
      003959 A2 94            [12] 2120 	mov	c,_P1_4
      00395B E4               [12] 2121 	clr	a
      00395C 33               [12] 2122 	rlc	a
      00395D FD               [12] 2123 	mov	r5,a
      00395E 8E 04            [24] 2124 	mov	ar4,r6
      003960 74 07            [12] 2125 	mov	a,#0x07
      003962 C3               [12] 2126 	clr	c
      003963 9C               [12] 2127 	subb	a,r4
      003964 FC               [12] 2128 	mov	r4,a
      003965 8C F0            [24] 2129 	mov	b,r4
      003967 05 F0            [12] 2130 	inc	b
      003969 ED               [12] 2131 	mov	a,r5
      00396A 80 02            [24] 2132 	sjmp	00119$
      00396C                       2133 00117$:
      00396C 25 E0            [12] 2134 	add	a,acc
      00396E                       2135 00119$:
      00396E D5 F0 FB         [24] 2136 	djnz	b,00117$
      003971 FC               [12] 2137 	mov	r4,a
      003972 90 04 17         [24] 2138 	mov	dptr,#_i2c_read_buff_65536_99
      003975 E0               [24] 2139 	movx	a,@dptr
      003976 4C               [12] 2140 	orl	a,r4
      003977 F0               [24] 2141 	movx	@dptr,a
                                   2142 ;	8051_i2c_eeprom.c:341: i2c_delay();
      003978 C0 07            [24] 2143 	push	ar7
      00397A C0 06            [24] 2144 	push	ar6
      00397C 12 39 D2         [24] 2145 	lcall	_i2c_delay
      00397F D0 06            [24] 2146 	pop	ar6
      003981 D0 07            [24] 2147 	pop	ar7
                                   2148 ;	8051_i2c_eeprom.c:342: SCL=0;
                                   2149 ;	assignBit
      003983 C2 93            [12] 2150 	clr	_P1_3
                                   2151 ;	8051_i2c_eeprom.c:336: for(int i=0;i<8;i++)
      003985 0E               [12] 2152 	inc	r6
      003986 BE 00 B8         [24] 2153 	cjne	r6,#0x00,00103$
      003989 0F               [12] 2154 	inc	r7
      00398A 80 B5            [24] 2155 	sjmp	00103$
      00398C                       2156 00101$:
                                   2157 ;	8051_i2c_eeprom.c:346: SDA = !ACK;         // ACK = 0, NACK = 1
      00398C 90 04 15         [24] 2158 	mov	dptr,#_i2c_read_ACK_65536_98
      00398F E0               [24] 2159 	movx	a,@dptr
      003990 FE               [12] 2160 	mov	r6,a
      003991 A3               [24] 2161 	inc	dptr
      003992 E0               [24] 2162 	movx	a,@dptr
      003993 4E               [12] 2163 	orl	a,r6
      003994 B4 01 00         [24] 2164 	cjne	a,#0x01,00121$
      003997                       2165 00121$:
      003997 E4               [12] 2166 	clr	a
      003998 33               [12] 2167 	rlc	a
      003999 24 FF            [12] 2168 	add	a,#0xff
      00399B 92 94            [24] 2169 	mov	_P1_4,c
                                   2170 ;	8051_i2c_eeprom.c:347: SCL = 1;
                                   2171 ;	assignBit
      00399D D2 93            [12] 2172 	setb	_P1_3
                                   2173 ;	8051_i2c_eeprom.c:348: i2c_delay();
      00399F 12 39 D2         [24] 2174 	lcall	_i2c_delay
                                   2175 ;	8051_i2c_eeprom.c:349: SCL = 0;
                                   2176 ;	assignBit
      0039A2 C2 93            [12] 2177 	clr	_P1_3
                                   2178 ;	8051_i2c_eeprom.c:351: return buff;
      0039A4 90 04 17         [24] 2179 	mov	dptr,#_i2c_read_buff_65536_99
      0039A7 E0               [24] 2180 	movx	a,@dptr
      0039A8 FF               [12] 2181 	mov	r7,a
      0039A9 7E 00            [12] 2182 	mov	r6,#0x00
      0039AB 8F 82            [24] 2183 	mov	dpl,r7
      0039AD 8E 83            [24] 2184 	mov	dph,r6
                                   2185 ;	8051_i2c_eeprom.c:352: }
      0039AF 22               [24] 2186 	ret
                                   2187 ;------------------------------------------------------------
                                   2188 ;Allocation info for local variables in function 'i2c_start'
                                   2189 ;------------------------------------------------------------
                                   2190 ;	8051_i2c_eeprom.c:353: void i2c_start(void)
                                   2191 ;	-----------------------------------------
                                   2192 ;	 function i2c_start
                                   2193 ;	-----------------------------------------
      0039B0                       2194 _i2c_start:
                                   2195 ;	8051_i2c_eeprom.c:355: i2c_delay();
      0039B0 12 39 D2         [24] 2196 	lcall	_i2c_delay
                                   2197 ;	8051_i2c_eeprom.c:356: SDA = 1;
                                   2198 ;	assignBit
      0039B3 D2 94            [12] 2199 	setb	_P1_4
                                   2200 ;	8051_i2c_eeprom.c:357: i2c_delay();
      0039B5 12 39 D2         [24] 2201 	lcall	_i2c_delay
                                   2202 ;	8051_i2c_eeprom.c:358: SCL = 1;
                                   2203 ;	assignBit
      0039B8 D2 93            [12] 2204 	setb	_P1_3
                                   2205 ;	8051_i2c_eeprom.c:359: i2c_delay();
      0039BA 12 39 D2         [24] 2206 	lcall	_i2c_delay
                                   2207 ;	8051_i2c_eeprom.c:360: SDA = 0;
                                   2208 ;	assignBit
      0039BD C2 94            [12] 2209 	clr	_P1_4
                                   2210 ;	8051_i2c_eeprom.c:361: i2c_delay();
      0039BF 12 39 D2         [24] 2211 	lcall	_i2c_delay
                                   2212 ;	8051_i2c_eeprom.c:362: SCL = 0;
                                   2213 ;	assignBit
      0039C2 C2 93            [12] 2214 	clr	_P1_3
                                   2215 ;	8051_i2c_eeprom.c:363: }
      0039C4 22               [24] 2216 	ret
                                   2217 ;------------------------------------------------------------
                                   2218 ;Allocation info for local variables in function 'i2c_stop'
                                   2219 ;------------------------------------------------------------
                                   2220 ;	8051_i2c_eeprom.c:365: void i2c_stop(void)
                                   2221 ;	-----------------------------------------
                                   2222 ;	 function i2c_stop
                                   2223 ;	-----------------------------------------
      0039C5                       2224 _i2c_stop:
                                   2225 ;	8051_i2c_eeprom.c:367: SDA = 0;
                                   2226 ;	assignBit
      0039C5 C2 94            [12] 2227 	clr	_P1_4
                                   2228 ;	8051_i2c_eeprom.c:368: i2c_delay();
      0039C7 12 39 D2         [24] 2229 	lcall	_i2c_delay
                                   2230 ;	8051_i2c_eeprom.c:369: SCL = 1;
                                   2231 ;	assignBit
      0039CA D2 93            [12] 2232 	setb	_P1_3
                                   2233 ;	8051_i2c_eeprom.c:370: i2c_delay();
      0039CC 12 39 D2         [24] 2234 	lcall	_i2c_delay
                                   2235 ;	8051_i2c_eeprom.c:371: SDA = 1; 
                                   2236 ;	assignBit
      0039CF D2 94            [12] 2237 	setb	_P1_4
                                   2238 ;	8051_i2c_eeprom.c:372: }
      0039D1 22               [24] 2239 	ret
                                   2240 ;------------------------------------------------------------
                                   2241 ;Allocation info for local variables in function 'i2c_delay'
                                   2242 ;------------------------------------------------------------
                                   2243 ;i                         Allocated with name '_i2c_delay_i_131072_107'
                                   2244 ;------------------------------------------------------------
                                   2245 ;	8051_i2c_eeprom.c:374: void i2c_delay() 
                                   2246 ;	-----------------------------------------
                                   2247 ;	 function i2c_delay
                                   2248 ;	-----------------------------------------
      0039D2                       2249 _i2c_delay:
                                   2250 ;	8051_i2c_eeprom.c:382: for(int i = 0; i<500; i++);
      0039D2 7E 00            [12] 2251 	mov	r6,#0x00
      0039D4 7F 00            [12] 2252 	mov	r7,#0x00
      0039D6                       2253 00103$:
      0039D6 C3               [12] 2254 	clr	c
      0039D7 EE               [12] 2255 	mov	a,r6
      0039D8 94 F4            [12] 2256 	subb	a,#0xf4
      0039DA EF               [12] 2257 	mov	a,r7
      0039DB 64 80            [12] 2258 	xrl	a,#0x80
      0039DD 94 81            [12] 2259 	subb	a,#0x81
      0039DF 50 07            [24] 2260 	jnc	00105$
      0039E1 0E               [12] 2261 	inc	r6
      0039E2 BE 00 F1         [24] 2262 	cjne	r6,#0x00,00103$
      0039E5 0F               [12] 2263 	inc	r7
      0039E6 80 EE            [24] 2264 	sjmp	00103$
      0039E8                       2265 00105$:
                                   2266 ;	8051_i2c_eeprom.c:383: }
      0039E8 22               [24] 2267 	ret
                                   2268 ;------------------------------------------------------------
                                   2269 ;Allocation info for local variables in function 'test_function'
                                   2270 ;------------------------------------------------------------
                                   2271 ;test_data                 Allocated with name '_test_function_test_data_65537_109'
                                   2272 ;address                   Allocated with name '_test_function_address_65537_109'
                                   2273 ;i                         Allocated with name '_test_function_i_131073_110'
                                   2274 ;read_data                 Allocated with name '_test_function_read_data_65538_112'
                                   2275 ;------------------------------------------------------------
                                   2276 ;	8051_i2c_eeprom.c:385: void test_function()
                                   2277 ;	-----------------------------------------
                                   2278 ;	 function test_function
                                   2279 ;	-----------------------------------------
      0039E9                       2280 _test_function:
                                   2281 ;	8051_i2c_eeprom.c:387: i2c_start();
      0039E9 12 39 B0         [24] 2282 	lcall	_i2c_start
                                   2283 ;	8051_i2c_eeprom.c:388: i2c_delay();
      0039EC 12 39 D2         [24] 2284 	lcall	_i2c_delay
                                   2285 ;	8051_i2c_eeprom.c:394: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      0039EF 74 02            [12] 2286 	mov	a,#0x02
      0039F1 C0 E0            [24] 2287 	push	acc
      0039F3 E4               [12] 2288 	clr	a
      0039F4 C0 E0            [24] 2289 	push	acc
      0039F6 74 26            [12] 2290 	mov	a,#0x26
      0039F8 C0 E0            [24] 2291 	push	acc
      0039FA E4               [12] 2292 	clr	a
      0039FB C0 E0            [24] 2293 	push	acc
      0039FD 74 9F            [12] 2294 	mov	a,#___str_40
      0039FF C0 E0            [24] 2295 	push	acc
      003A01 74 4F            [12] 2296 	mov	a,#(___str_40 >> 8)
      003A03 C0 E0            [24] 2297 	push	acc
      003A05 74 80            [12] 2298 	mov	a,#0x80
      003A07 C0 E0            [24] 2299 	push	acc
      003A09 12 3A EF         [24] 2300 	lcall	_printf
      003A0C E5 81            [12] 2301 	mov	a,sp
      003A0E 24 F9            [12] 2302 	add	a,#0xf9
      003A10 F5 81            [12] 2303 	mov	sp,a
                                   2304 ;	8051_i2c_eeprom.c:395: eeprom_write(address, test_data);
      003A12 90 04 0F         [24] 2305 	mov	dptr,#_eeprom_write_PARM_2
      003A15 74 26            [12] 2306 	mov	a,#0x26
      003A17 F0               [24] 2307 	movx	@dptr,a
      003A18 90 00 02         [24] 2308 	mov	dptr,#0x0002
      003A1B 12 36 40         [24] 2309 	lcall	_eeprom_write
                                   2310 ;	8051_i2c_eeprom.c:396: i2c_stop();
      003A1E 12 39 C5         [24] 2311 	lcall	_i2c_stop
                                   2312 ;	8051_i2c_eeprom.c:398: for(int i = 0; i<100; i++)
      003A21 7E 00            [12] 2313 	mov	r6,#0x00
      003A23 7F 00            [12] 2314 	mov	r7,#0x00
      003A25                       2315 00106$:
      003A25 C3               [12] 2316 	clr	c
      003A26 EE               [12] 2317 	mov	a,r6
      003A27 94 64            [12] 2318 	subb	a,#0x64
      003A29 EF               [12] 2319 	mov	a,r7
      003A2A 64 80            [12] 2320 	xrl	a,#0x80
      003A2C 94 80            [12] 2321 	subb	a,#0x80
      003A2E 50 12            [24] 2322 	jnc	00101$
                                   2323 ;	8051_i2c_eeprom.c:400: i2c_delay();
      003A30 C0 07            [24] 2324 	push	ar7
      003A32 C0 06            [24] 2325 	push	ar6
      003A34 12 39 D2         [24] 2326 	lcall	_i2c_delay
      003A37 D0 06            [24] 2327 	pop	ar6
      003A39 D0 07            [24] 2328 	pop	ar7
                                   2329 ;	8051_i2c_eeprom.c:398: for(int i = 0; i<100; i++)
      003A3B 0E               [12] 2330 	inc	r6
      003A3C BE 00 E6         [24] 2331 	cjne	r6,#0x00,00106$
      003A3F 0F               [12] 2332 	inc	r7
      003A40 80 E3            [24] 2333 	sjmp	00106$
      003A42                       2334 00101$:
                                   2335 ;	8051_i2c_eeprom.c:404: unsigned char read_data = eeprom_read(address);
      003A42 90 00 02         [24] 2336 	mov	dptr,#0x0002
      003A45 12 37 82         [24] 2337 	lcall	_eeprom_read
      003A48 AE 82            [24] 2338 	mov	r6,dpl
                                   2339 ;	8051_i2c_eeprom.c:405: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      003A4A 8E 05            [24] 2340 	mov	ar5,r6
      003A4C 7F 00            [12] 2341 	mov	r7,#0x00
      003A4E C0 06            [24] 2342 	push	ar6
      003A50 C0 05            [24] 2343 	push	ar5
      003A52 C0 07            [24] 2344 	push	ar7
      003A54 74 02            [12] 2345 	mov	a,#0x02
      003A56 C0 E0            [24] 2346 	push	acc
      003A58 E4               [12] 2347 	clr	a
      003A59 C0 E0            [24] 2348 	push	acc
      003A5B 74 C7            [12] 2349 	mov	a,#___str_41
      003A5D C0 E0            [24] 2350 	push	acc
      003A5F 74 4F            [12] 2351 	mov	a,#(___str_41 >> 8)
      003A61 C0 E0            [24] 2352 	push	acc
      003A63 74 80            [12] 2353 	mov	a,#0x80
      003A65 C0 E0            [24] 2354 	push	acc
      003A67 12 3A EF         [24] 2355 	lcall	_printf
      003A6A E5 81            [12] 2356 	mov	a,sp
      003A6C 24 F9            [12] 2357 	add	a,#0xf9
      003A6E F5 81            [12] 2358 	mov	sp,a
      003A70 D0 06            [24] 2359 	pop	ar6
                                   2360 ;	8051_i2c_eeprom.c:408: if(read_data == test_data) {
      003A72 BE 26 16         [24] 2361 	cjne	r6,#0x26,00103$
                                   2362 ;	8051_i2c_eeprom.c:409: printf("MATCH - Write/Read successful!\n\r");
      003A75 74 EF            [12] 2363 	mov	a,#___str_42
      003A77 C0 E0            [24] 2364 	push	acc
      003A79 74 4F            [12] 2365 	mov	a,#(___str_42 >> 8)
      003A7B C0 E0            [24] 2366 	push	acc
      003A7D 74 80            [12] 2367 	mov	a,#0x80
      003A7F C0 E0            [24] 2368 	push	acc
      003A81 12 3A EF         [24] 2369 	lcall	_printf
      003A84 15 81            [12] 2370 	dec	sp
      003A86 15 81            [12] 2371 	dec	sp
      003A88 15 81            [12] 2372 	dec	sp
      003A8A 22               [24] 2373 	ret
      003A8B                       2374 00103$:
                                   2375 ;	8051_i2c_eeprom.c:411: printf("ERROR - Data mismatch!\n\r");
      003A8B 74 10            [12] 2376 	mov	a,#___str_43
      003A8D C0 E0            [24] 2377 	push	acc
      003A8F 74 50            [12] 2378 	mov	a,#(___str_43 >> 8)
      003A91 C0 E0            [24] 2379 	push	acc
      003A93 74 80            [12] 2380 	mov	a,#0x80
      003A95 C0 E0            [24] 2381 	push	acc
      003A97 12 3A EF         [24] 2382 	lcall	_printf
      003A9A 15 81            [12] 2383 	dec	sp
      003A9C 15 81            [12] 2384 	dec	sp
      003A9E 15 81            [12] 2385 	dec	sp
                                   2386 ;	8051_i2c_eeprom.c:415: }
      003AA0 22               [24] 2387 	ret
                                   2388 	.area CSEG    (CODE)
                                   2389 	.area CONST   (CODE)
                                   2390 	.area CONST   (CODE)
      004551                       2391 ___str_0:
      004551 0A                    2392 	.db 0x0a
      004552 E2                    2393 	.db 0xe2
      004553 95                    2394 	.db 0x95
      004554 94                    2395 	.db 0x94
      004555 E2                    2396 	.db 0xe2
      004556 95                    2397 	.db 0x95
      004557 90                    2398 	.db 0x90
      004558 E2                    2399 	.db 0xe2
      004559 95                    2400 	.db 0x95
      00455A 90                    2401 	.db 0x90
      00455B E2                    2402 	.db 0xe2
      00455C 95                    2403 	.db 0x95
      00455D 90                    2404 	.db 0x90
      00455E E2                    2405 	.db 0xe2
      00455F 95                    2406 	.db 0x95
      004560 90                    2407 	.db 0x90
      004561 E2                    2408 	.db 0xe2
      004562 95                    2409 	.db 0x95
      004563 90                    2410 	.db 0x90
      004564 E2                    2411 	.db 0xe2
      004565 95                    2412 	.db 0x95
      004566 90                    2413 	.db 0x90
      004567 E2                    2414 	.db 0xe2
      004568 95                    2415 	.db 0x95
      004569 90                    2416 	.db 0x90
      00456A E2                    2417 	.db 0xe2
      00456B 95                    2418 	.db 0x95
      00456C 90                    2419 	.db 0x90
      00456D E2                    2420 	.db 0xe2
      00456E 95                    2421 	.db 0x95
      00456F 90                    2422 	.db 0x90
      004570 E2                    2423 	.db 0xe2
      004571 95                    2424 	.db 0x95
      004572 90                    2425 	.db 0x90
      004573 E2                    2426 	.db 0xe2
      004574 95                    2427 	.db 0x95
      004575 90                    2428 	.db 0x90
      004576 E2                    2429 	.db 0xe2
      004577 95                    2430 	.db 0x95
      004578 90                    2431 	.db 0x90
      004579 E2                    2432 	.db 0xe2
      00457A 95                    2433 	.db 0x95
      00457B 90                    2434 	.db 0x90
      00457C E2                    2435 	.db 0xe2
      00457D 95                    2436 	.db 0x95
      00457E 90                    2437 	.db 0x90
      00457F E2                    2438 	.db 0xe2
      004580 95                    2439 	.db 0x95
      004581 90                    2440 	.db 0x90
      004582 E2                    2441 	.db 0xe2
      004583 95                    2442 	.db 0x95
      004584 90                    2443 	.db 0x90
      004585 E2                    2444 	.db 0xe2
      004586 95                    2445 	.db 0x95
      004587 90                    2446 	.db 0x90
      004588 E2                    2447 	.db 0xe2
      004589 95                    2448 	.db 0x95
      00458A 90                    2449 	.db 0x90
      00458B E2                    2450 	.db 0xe2
      00458C 95                    2451 	.db 0x95
      00458D 90                    2452 	.db 0x90
      00458E E2                    2453 	.db 0xe2
      00458F 95                    2454 	.db 0x95
      004590 90                    2455 	.db 0x90
      004591 E2                    2456 	.db 0xe2
      004592 95                    2457 	.db 0x95
      004593 90                    2458 	.db 0x90
      004594 E2                    2459 	.db 0xe2
      004595 95                    2460 	.db 0x95
      004596 90                    2461 	.db 0x90
      004597 E2                    2462 	.db 0xe2
      004598 95                    2463 	.db 0x95
      004599 90                    2464 	.db 0x90
      00459A E2                    2465 	.db 0xe2
      00459B 95                    2466 	.db 0x95
      00459C 90                    2467 	.db 0x90
      00459D E2                    2468 	.db 0xe2
      00459E 95                    2469 	.db 0x95
      00459F 90                    2470 	.db 0x90
      0045A0 E2                    2471 	.db 0xe2
      0045A1 95                    2472 	.db 0x95
      0045A2 90                    2473 	.db 0x90
      0045A3 E2                    2474 	.db 0xe2
      0045A4 95                    2475 	.db 0x95
      0045A5 90                    2476 	.db 0x90
      0045A6 E2                    2477 	.db 0xe2
      0045A7 95                    2478 	.db 0x95
      0045A8 90                    2479 	.db 0x90
      0045A9 E2                    2480 	.db 0xe2
      0045AA 95                    2481 	.db 0x95
      0045AB 90                    2482 	.db 0x90
      0045AC E2                    2483 	.db 0xe2
      0045AD 95                    2484 	.db 0x95
      0045AE 90                    2485 	.db 0x90
      0045AF E2                    2486 	.db 0xe2
      0045B0 95                    2487 	.db 0x95
      0045B1 90                    2488 	.db 0x90
      0045B2 E2                    2489 	.db 0xe2
      0045B3 95                    2490 	.db 0x95
      0045B4 90                    2491 	.db 0x90
      0045B5 E2                    2492 	.db 0xe2
      0045B6 95                    2493 	.db 0x95
      0045B7 90                    2494 	.db 0x90
      0045B8 E2                    2495 	.db 0xe2
      0045B9 95                    2496 	.db 0x95
      0045BA 90                    2497 	.db 0x90
      0045BB E2                    2498 	.db 0xe2
      0045BC 95                    2499 	.db 0x95
      0045BD 90                    2500 	.db 0x90
      0045BE E2                    2501 	.db 0xe2
      0045BF 95                    2502 	.db 0x95
      0045C0 90                    2503 	.db 0x90
      0045C1 E2                    2504 	.db 0xe2
      0045C2 95                    2505 	.db 0x95
      0045C3 90                    2506 	.db 0x90
      0045C4 E2                    2507 	.db 0xe2
      0045C5 95                    2508 	.db 0x95
      0045C6 90                    2509 	.db 0x90
      0045C7 E2                    2510 	.db 0xe2
      0045C8 95                    2511 	.db 0x95
      0045C9 90                    2512 	.db 0x90
      0045CA E2                    2513 	.db 0xe2
      0045CB 95                    2514 	.db 0x95
      0045CC 90                    2515 	.db 0x90
      0045CD E2                    2516 	.db 0xe2
      0045CE 95                    2517 	.db 0x95
      0045CF 90                    2518 	.db 0x90
      0045D0 E2                    2519 	.db 0xe2
      0045D1 95                    2520 	.db 0x95
      0045D2 90                    2521 	.db 0x90
      0045D3 E2                    2522 	.db 0xe2
      0045D4 95                    2523 	.db 0x95
      0045D5 90                    2524 	.db 0x90
      0045D6 E2                    2525 	.db 0xe2
      0045D7 95                    2526 	.db 0x95
      0045D8 90                    2527 	.db 0x90
      0045D9 E2                    2528 	.db 0xe2
      0045DA 95                    2529 	.db 0x95
      0045DB 90                    2530 	.db 0x90
      0045DC E2                    2531 	.db 0xe2
      0045DD 95                    2532 	.db 0x95
      0045DE 90                    2533 	.db 0x90
      0045DF E2                    2534 	.db 0xe2
      0045E0 95                    2535 	.db 0x95
      0045E1 90                    2536 	.db 0x90
      0045E2 E2                    2537 	.db 0xe2
      0045E3 95                    2538 	.db 0x95
      0045E4 90                    2539 	.db 0x90
      0045E5 E2                    2540 	.db 0xe2
      0045E6 95                    2541 	.db 0x95
      0045E7 90                    2542 	.db 0x90
      0045E8 E2                    2543 	.db 0xe2
      0045E9 95                    2544 	.db 0x95
      0045EA 90                    2545 	.db 0x90
      0045EB E2                    2546 	.db 0xe2
      0045EC 95                    2547 	.db 0x95
      0045ED 90                    2548 	.db 0x90
      0045EE E2                    2549 	.db 0xe2
      0045EF 95                    2550 	.db 0x95
      0045F0 90                    2551 	.db 0x90
      0045F1 E2                    2552 	.db 0xe2
      0045F2 95                    2553 	.db 0x95
      0045F3 90                    2554 	.db 0x90
      0045F4 E2                    2555 	.db 0xe2
      0045F5 95                    2556 	.db 0x95
      0045F6 90                    2557 	.db 0x90
      0045F7 E2                    2558 	.db 0xe2
      0045F8 95                    2559 	.db 0x95
      0045F9 90                    2560 	.db 0x90
      0045FA E2                    2561 	.db 0xe2
      0045FB 95                    2562 	.db 0x95
      0045FC 90                    2563 	.db 0x90
      0045FD E2                    2564 	.db 0xe2
      0045FE 95                    2565 	.db 0x95
      0045FF 97                    2566 	.db 0x97
      004600 0A                    2567 	.db 0x0a
      004601 0D                    2568 	.db 0x0d
      004602 00                    2569 	.db 0x00
                                   2570 	.area CSEG    (CODE)
                                   2571 	.area CONST   (CODE)
      004603                       2572 ___str_1:
      004603 E2                    2573 	.db 0xe2
      004604 95                    2574 	.db 0x95
      004605 91                    2575 	.db 0x91
      004606 20 20 20 20 20 20 20  2576 	.ascii "           I2C Memory Management System v1.0             "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
             20
      00463F E2                    2577 	.db 0xe2
      004640 95                    2578 	.db 0x95
      004641 91                    2579 	.db 0x91
      004642 0A                    2580 	.db 0x0a
      004643 0D                    2581 	.db 0x0d
      004644 00                    2582 	.db 0x00
                                   2583 	.area CSEG    (CODE)
                                   2584 	.area CONST   (CODE)
      004645                       2585 ___str_2:
      004645 E2                    2586 	.db 0xe2
      004646 95                    2587 	.db 0x95
      004647 9A                    2588 	.db 0x9a
      004648 E2                    2589 	.db 0xe2
      004649 95                    2590 	.db 0x95
      00464A 90                    2591 	.db 0x90
      00464B E2                    2592 	.db 0xe2
      00464C 95                    2593 	.db 0x95
      00464D 90                    2594 	.db 0x90
      00464E E2                    2595 	.db 0xe2
      00464F 95                    2596 	.db 0x95
      004650 90                    2597 	.db 0x90
      004651 E2                    2598 	.db 0xe2
      004652 95                    2599 	.db 0x95
      004653 90                    2600 	.db 0x90
      004654 E2                    2601 	.db 0xe2
      004655 95                    2602 	.db 0x95
      004656 90                    2603 	.db 0x90
      004657 E2                    2604 	.db 0xe2
      004658 95                    2605 	.db 0x95
      004659 90                    2606 	.db 0x90
      00465A E2                    2607 	.db 0xe2
      00465B 95                    2608 	.db 0x95
      00465C 90                    2609 	.db 0x90
      00465D E2                    2610 	.db 0xe2
      00465E 95                    2611 	.db 0x95
      00465F 90                    2612 	.db 0x90
      004660 E2                    2613 	.db 0xe2
      004661 95                    2614 	.db 0x95
      004662 90                    2615 	.db 0x90
      004663 E2                    2616 	.db 0xe2
      004664 95                    2617 	.db 0x95
      004665 90                    2618 	.db 0x90
      004666 E2                    2619 	.db 0xe2
      004667 95                    2620 	.db 0x95
      004668 90                    2621 	.db 0x90
      004669 E2                    2622 	.db 0xe2
      00466A 95                    2623 	.db 0x95
      00466B 90                    2624 	.db 0x90
      00466C E2                    2625 	.db 0xe2
      00466D 95                    2626 	.db 0x95
      00466E 90                    2627 	.db 0x90
      00466F E2                    2628 	.db 0xe2
      004670 95                    2629 	.db 0x95
      004671 90                    2630 	.db 0x90
      004672 E2                    2631 	.db 0xe2
      004673 95                    2632 	.db 0x95
      004674 90                    2633 	.db 0x90
      004675 E2                    2634 	.db 0xe2
      004676 95                    2635 	.db 0x95
      004677 90                    2636 	.db 0x90
      004678 E2                    2637 	.db 0xe2
      004679 95                    2638 	.db 0x95
      00467A 90                    2639 	.db 0x90
      00467B E2                    2640 	.db 0xe2
      00467C 95                    2641 	.db 0x95
      00467D 90                    2642 	.db 0x90
      00467E E2                    2643 	.db 0xe2
      00467F 95                    2644 	.db 0x95
      004680 90                    2645 	.db 0x90
      004681 E2                    2646 	.db 0xe2
      004682 95                    2647 	.db 0x95
      004683 90                    2648 	.db 0x90
      004684 E2                    2649 	.db 0xe2
      004685 95                    2650 	.db 0x95
      004686 90                    2651 	.db 0x90
      004687 E2                    2652 	.db 0xe2
      004688 95                    2653 	.db 0x95
      004689 90                    2654 	.db 0x90
      00468A E2                    2655 	.db 0xe2
      00468B 95                    2656 	.db 0x95
      00468C 90                    2657 	.db 0x90
      00468D E2                    2658 	.db 0xe2
      00468E 95                    2659 	.db 0x95
      00468F 90                    2660 	.db 0x90
      004690 E2                    2661 	.db 0xe2
      004691 95                    2662 	.db 0x95
      004692 90                    2663 	.db 0x90
      004693 E2                    2664 	.db 0xe2
      004694 95                    2665 	.db 0x95
      004695 90                    2666 	.db 0x90
      004696 E2                    2667 	.db 0xe2
      004697 95                    2668 	.db 0x95
      004698 90                    2669 	.db 0x90
      004699 E2                    2670 	.db 0xe2
      00469A 95                    2671 	.db 0x95
      00469B 90                    2672 	.db 0x90
      00469C E2                    2673 	.db 0xe2
      00469D 95                    2674 	.db 0x95
      00469E 90                    2675 	.db 0x90
      00469F E2                    2676 	.db 0xe2
      0046A0 95                    2677 	.db 0x95
      0046A1 90                    2678 	.db 0x90
      0046A2 E2                    2679 	.db 0xe2
      0046A3 95                    2680 	.db 0x95
      0046A4 90                    2681 	.db 0x90
      0046A5 E2                    2682 	.db 0xe2
      0046A6 95                    2683 	.db 0x95
      0046A7 90                    2684 	.db 0x90
      0046A8 E2                    2685 	.db 0xe2
      0046A9 95                    2686 	.db 0x95
      0046AA 90                    2687 	.db 0x90
      0046AB E2                    2688 	.db 0xe2
      0046AC 95                    2689 	.db 0x95
      0046AD 90                    2690 	.db 0x90
      0046AE E2                    2691 	.db 0xe2
      0046AF 95                    2692 	.db 0x95
      0046B0 90                    2693 	.db 0x90
      0046B1 E2                    2694 	.db 0xe2
      0046B2 95                    2695 	.db 0x95
      0046B3 90                    2696 	.db 0x90
      0046B4 E2                    2697 	.db 0xe2
      0046B5 95                    2698 	.db 0x95
      0046B6 90                    2699 	.db 0x90
      0046B7 E2                    2700 	.db 0xe2
      0046B8 95                    2701 	.db 0x95
      0046B9 90                    2702 	.db 0x90
      0046BA E2                    2703 	.db 0xe2
      0046BB 95                    2704 	.db 0x95
      0046BC 90                    2705 	.db 0x90
      0046BD E2                    2706 	.db 0xe2
      0046BE 95                    2707 	.db 0x95
      0046BF 90                    2708 	.db 0x90
      0046C0 E2                    2709 	.db 0xe2
      0046C1 95                    2710 	.db 0x95
      0046C2 90                    2711 	.db 0x90
      0046C3 E2                    2712 	.db 0xe2
      0046C4 95                    2713 	.db 0x95
      0046C5 90                    2714 	.db 0x90
      0046C6 E2                    2715 	.db 0xe2
      0046C7 95                    2716 	.db 0x95
      0046C8 90                    2717 	.db 0x90
      0046C9 E2                    2718 	.db 0xe2
      0046CA 95                    2719 	.db 0x95
      0046CB 90                    2720 	.db 0x90
      0046CC E2                    2721 	.db 0xe2
      0046CD 95                    2722 	.db 0x95
      0046CE 90                    2723 	.db 0x90
      0046CF E2                    2724 	.db 0xe2
      0046D0 95                    2725 	.db 0x95
      0046D1 90                    2726 	.db 0x90
      0046D2 E2                    2727 	.db 0xe2
      0046D3 95                    2728 	.db 0x95
      0046D4 90                    2729 	.db 0x90
      0046D5 E2                    2730 	.db 0xe2
      0046D6 95                    2731 	.db 0x95
      0046D7 90                    2732 	.db 0x90
      0046D8 E2                    2733 	.db 0xe2
      0046D9 95                    2734 	.db 0x95
      0046DA 90                    2735 	.db 0x90
      0046DB E2                    2736 	.db 0xe2
      0046DC 95                    2737 	.db 0x95
      0046DD 90                    2738 	.db 0x90
      0046DE E2                    2739 	.db 0xe2
      0046DF 95                    2740 	.db 0x95
      0046E0 90                    2741 	.db 0x90
      0046E1 E2                    2742 	.db 0xe2
      0046E2 95                    2743 	.db 0x95
      0046E3 90                    2744 	.db 0x90
      0046E4 E2                    2745 	.db 0xe2
      0046E5 95                    2746 	.db 0x95
      0046E6 90                    2747 	.db 0x90
      0046E7 E2                    2748 	.db 0xe2
      0046E8 95                    2749 	.db 0x95
      0046E9 90                    2750 	.db 0x90
      0046EA E2                    2751 	.db 0xe2
      0046EB 95                    2752 	.db 0x95
      0046EC 90                    2753 	.db 0x90
      0046ED E2                    2754 	.db 0xe2
      0046EE 95                    2755 	.db 0x95
      0046EF 90                    2756 	.db 0x90
      0046F0 E2                    2757 	.db 0xe2
      0046F1 95                    2758 	.db 0x95
      0046F2 9D                    2759 	.db 0x9d
      0046F3 0A                    2760 	.db 0x0a
      0046F4 0D                    2761 	.db 0x0d
      0046F5 00                    2762 	.db 0x00
                                   2763 	.area CSEG    (CODE)
                                   2764 	.area CONST   (CODE)
      0046F6                       2765 ___str_3:
      0046F6 0A                    2766 	.db 0x0a
      0046F7 0D                    2767 	.db 0x0d
      0046F8 E2                    2768 	.db 0xe2
      0046F9 94                    2769 	.db 0x94
      0046FA 8C                    2770 	.db 0x8c
      0046FB E2                    2771 	.db 0xe2
      0046FC 94                    2772 	.db 0x94
      0046FD 80                    2773 	.db 0x80
      0046FE E2                    2774 	.db 0xe2
      0046FF 94                    2775 	.db 0x94
      004700 80                    2776 	.db 0x80
      004701 E2                    2777 	.db 0xe2
      004702 94                    2778 	.db 0x94
      004703 80                    2779 	.db 0x80
      004704 E2                    2780 	.db 0xe2
      004705 94                    2781 	.db 0x94
      004706 80                    2782 	.db 0x80
      004707 E2                    2783 	.db 0xe2
      004708 94                    2784 	.db 0x94
      004709 80                    2785 	.db 0x80
      00470A E2                    2786 	.db 0xe2
      00470B 94                    2787 	.db 0x94
      00470C 80                    2788 	.db 0x80
      00470D E2                    2789 	.db 0xe2
      00470E 94                    2790 	.db 0x94
      00470F 80                    2791 	.db 0x80
      004710 E2                    2792 	.db 0xe2
      004711 94                    2793 	.db 0x94
      004712 80                    2794 	.db 0x80
      004713 E2                    2795 	.db 0xe2
      004714 94                    2796 	.db 0x94
      004715 80                    2797 	.db 0x80
      004716 E2                    2798 	.db 0xe2
      004717 94                    2799 	.db 0x94
      004718 80                    2800 	.db 0x80
      004719 E2                    2801 	.db 0xe2
      00471A 94                    2802 	.db 0x94
      00471B 80                    2803 	.db 0x80
      00471C E2                    2804 	.db 0xe2
      00471D 94                    2805 	.db 0x94
      00471E 80                    2806 	.db 0x80
      00471F E2                    2807 	.db 0xe2
      004720 94                    2808 	.db 0x94
      004721 AC                    2809 	.db 0xac
      004722 E2                    2810 	.db 0xe2
      004723 94                    2811 	.db 0x94
      004724 80                    2812 	.db 0x80
      004725 E2                    2813 	.db 0xe2
      004726 94                    2814 	.db 0x94
      004727 80                    2815 	.db 0x80
      004728 E2                    2816 	.db 0xe2
      004729 94                    2817 	.db 0x94
      00472A 80                    2818 	.db 0x80
      00472B E2                    2819 	.db 0xe2
      00472C 94                    2820 	.db 0x94
      00472D 80                    2821 	.db 0x80
      00472E E2                    2822 	.db 0xe2
      00472F 94                    2823 	.db 0x94
      004730 80                    2824 	.db 0x80
      004731 E2                    2825 	.db 0xe2
      004732 94                    2826 	.db 0x94
      004733 80                    2827 	.db 0x80
      004734 E2                    2828 	.db 0xe2
      004735 94                    2829 	.db 0x94
      004736 80                    2830 	.db 0x80
      004737 E2                    2831 	.db 0xe2
      004738 94                    2832 	.db 0x94
      004739 80                    2833 	.db 0x80
      00473A E2                    2834 	.db 0xe2
      00473B 94                    2835 	.db 0x94
      00473C 80                    2836 	.db 0x80
      00473D E2                    2837 	.db 0xe2
      00473E 94                    2838 	.db 0x94
      00473F 80                    2839 	.db 0x80
      004740 E2                    2840 	.db 0xe2
      004741 94                    2841 	.db 0x94
      004742 80                    2842 	.db 0x80
      004743 E2                    2843 	.db 0xe2
      004744 94                    2844 	.db 0x94
      004745 80                    2845 	.db 0x80
      004746 E2                    2846 	.db 0xe2
      004747 94                    2847 	.db 0x94
      004748 80                    2848 	.db 0x80
      004749 E2                    2849 	.db 0xe2
      00474A 94                    2850 	.db 0x94
      00474B 80                    2851 	.db 0x80
      00474C E2                    2852 	.db 0xe2
      00474D 94                    2853 	.db 0x94
      00474E 80                    2854 	.db 0x80
      00474F E2                    2855 	.db 0xe2
      004750 94                    2856 	.db 0x94
      004751 80                    2857 	.db 0x80
      004752 E2                    2858 	.db 0xe2
      004753 94                    2859 	.db 0x94
      004754 80                    2860 	.db 0x80
      004755 E2                    2861 	.db 0xe2
      004756 94                    2862 	.db 0x94
      004757 80                    2863 	.db 0x80
      004758 E2                    2864 	.db 0xe2
      004759 94                    2865 	.db 0x94
      00475A 80                    2866 	.db 0x80
      00475B E2                    2867 	.db 0xe2
      00475C 94                    2868 	.db 0x94
      00475D 80                    2869 	.db 0x80
      00475E E2                    2870 	.db 0xe2
      00475F 94                    2871 	.db 0x94
      004760 80                    2872 	.db 0x80
      004761 E2                    2873 	.db 0xe2
      004762 94                    2874 	.db 0x94
      004763 80                    2875 	.db 0x80
      004764 E2                    2876 	.db 0xe2
      004765 94                    2877 	.db 0x94
      004766 80                    2878 	.db 0x80
      004767 E2                    2879 	.db 0xe2
      004768 94                    2880 	.db 0x94
      004769 80                    2881 	.db 0x80
      00476A E2                    2882 	.db 0xe2
      00476B 94                    2883 	.db 0x94
      00476C 80                    2884 	.db 0x80
      00476D E2                    2885 	.db 0xe2
      00476E 94                    2886 	.db 0x94
      00476F 80                    2887 	.db 0x80
      004770 E2                    2888 	.db 0xe2
      004771 94                    2889 	.db 0x94
      004772 80                    2890 	.db 0x80
      004773 E2                    2891 	.db 0xe2
      004774 94                    2892 	.db 0x94
      004775 80                    2893 	.db 0x80
      004776 E2                    2894 	.db 0xe2
      004777 94                    2895 	.db 0x94
      004778 80                    2896 	.db 0x80
      004779 E2                    2897 	.db 0xe2
      00477A 94                    2898 	.db 0x94
      00477B 80                    2899 	.db 0x80
      00477C E2                    2900 	.db 0xe2
      00477D 94                    2901 	.db 0x94
      00477E 80                    2902 	.db 0x80
      00477F E2                    2903 	.db 0xe2
      004780 94                    2904 	.db 0x94
      004781 80                    2905 	.db 0x80
      004782 E2                    2906 	.db 0xe2
      004783 94                    2907 	.db 0x94
      004784 80                    2908 	.db 0x80
      004785 E2                    2909 	.db 0xe2
      004786 94                    2910 	.db 0x94
      004787 80                    2911 	.db 0x80
      004788 E2                    2912 	.db 0xe2
      004789 94                    2913 	.db 0x94
      00478A 80                    2914 	.db 0x80
      00478B E2                    2915 	.db 0xe2
      00478C 94                    2916 	.db 0x94
      00478D 80                    2917 	.db 0x80
      00478E E2                    2918 	.db 0xe2
      00478F 94                    2919 	.db 0x94
      004790 80                    2920 	.db 0x80
      004791 E2                    2921 	.db 0xe2
      004792 94                    2922 	.db 0x94
      004793 80                    2923 	.db 0x80
      004794 E2                    2924 	.db 0xe2
      004795 94                    2925 	.db 0x94
      004796 80                    2926 	.db 0x80
      004797 E2                    2927 	.db 0xe2
      004798 94                    2928 	.db 0x94
      004799 80                    2929 	.db 0x80
      00479A E2                    2930 	.db 0xe2
      00479B 94                    2931 	.db 0x94
      00479C 80                    2932 	.db 0x80
      00479D E2                    2933 	.db 0xe2
      00479E 94                    2934 	.db 0x94
      00479F 80                    2935 	.db 0x80
      0047A0 E2                    2936 	.db 0xe2
      0047A1 94                    2937 	.db 0x94
      0047A2 80                    2938 	.db 0x80
      0047A3 E2                    2939 	.db 0xe2
      0047A4 94                    2940 	.db 0x94
      0047A5 80                    2941 	.db 0x80
      0047A6 E2                    2942 	.db 0xe2
      0047A7 94                    2943 	.db 0x94
      0047A8 90                    2944 	.db 0x90
      0047A9 0A                    2945 	.db 0x0a
      0047AA 0D                    2946 	.db 0x0d
      0047AB 00                    2947 	.db 0x00
                                   2948 	.area CSEG    (CODE)
                                   2949 	.area CONST   (CODE)
      0047AC                       2950 ___str_4:
      0047AC E2                    2951 	.db 0xe2
      0047AD 94                    2952 	.db 0x94
      0047AE 82                    2953 	.db 0x82
      0047AF 20 20 43 6F 6D 6D 61  2954 	.ascii "  Command   "
             6E 64 20 20 20
      0047BB E2                    2955 	.db 0xe2
      0047BC 94                    2956 	.db 0x94
      0047BD 82                    2957 	.db 0x82
      0047BE 20 20 20 20 20 20 20  2958 	.ascii "               Description                   "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20
      0047EB E2                    2959 	.db 0xe2
      0047EC 94                    2960 	.db 0x94
      0047ED 82                    2961 	.db 0x82
      0047EE 0A                    2962 	.db 0x0a
      0047EF 0D                    2963 	.db 0x0d
      0047F0 00                    2964 	.db 0x00
                                   2965 	.area CSEG    (CODE)
                                   2966 	.area CONST   (CODE)
      0047F1                       2967 ___str_5:
      0047F1 E2                    2968 	.db 0xe2
      0047F2 94                    2969 	.db 0x94
      0047F3 9C                    2970 	.db 0x9c
      0047F4 E2                    2971 	.db 0xe2
      0047F5 94                    2972 	.db 0x94
      0047F6 80                    2973 	.db 0x80
      0047F7 E2                    2974 	.db 0xe2
      0047F8 94                    2975 	.db 0x94
      0047F9 80                    2976 	.db 0x80
      0047FA E2                    2977 	.db 0xe2
      0047FB 94                    2978 	.db 0x94
      0047FC 80                    2979 	.db 0x80
      0047FD E2                    2980 	.db 0xe2
      0047FE 94                    2981 	.db 0x94
      0047FF 80                    2982 	.db 0x80
      004800 E2                    2983 	.db 0xe2
      004801 94                    2984 	.db 0x94
      004802 80                    2985 	.db 0x80
      004803 E2                    2986 	.db 0xe2
      004804 94                    2987 	.db 0x94
      004805 80                    2988 	.db 0x80
      004806 E2                    2989 	.db 0xe2
      004807 94                    2990 	.db 0x94
      004808 80                    2991 	.db 0x80
      004809 E2                    2992 	.db 0xe2
      00480A 94                    2993 	.db 0x94
      00480B 80                    2994 	.db 0x80
      00480C E2                    2995 	.db 0xe2
      00480D 94                    2996 	.db 0x94
      00480E 80                    2997 	.db 0x80
      00480F E2                    2998 	.db 0xe2
      004810 94                    2999 	.db 0x94
      004811 80                    3000 	.db 0x80
      004812 E2                    3001 	.db 0xe2
      004813 94                    3002 	.db 0x94
      004814 80                    3003 	.db 0x80
      004815 E2                    3004 	.db 0xe2
      004816 94                    3005 	.db 0x94
      004817 80                    3006 	.db 0x80
      004818 E2                    3007 	.db 0xe2
      004819 94                    3008 	.db 0x94
      00481A BC                    3009 	.db 0xbc
      00481B E2                    3010 	.db 0xe2
      00481C 94                    3011 	.db 0x94
      00481D 80                    3012 	.db 0x80
      00481E E2                    3013 	.db 0xe2
      00481F 94                    3014 	.db 0x94
      004820 80                    3015 	.db 0x80
      004821 E2                    3016 	.db 0xe2
      004822 94                    3017 	.db 0x94
      004823 80                    3018 	.db 0x80
      004824 E2                    3019 	.db 0xe2
      004825 94                    3020 	.db 0x94
      004826 80                    3021 	.db 0x80
      004827 E2                    3022 	.db 0xe2
      004828 94                    3023 	.db 0x94
      004829 80                    3024 	.db 0x80
      00482A E2                    3025 	.db 0xe2
      00482B 94                    3026 	.db 0x94
      00482C 80                    3027 	.db 0x80
      00482D E2                    3028 	.db 0xe2
      00482E 94                    3029 	.db 0x94
      00482F 80                    3030 	.db 0x80
      004830 E2                    3031 	.db 0xe2
      004831 94                    3032 	.db 0x94
      004832 80                    3033 	.db 0x80
      004833 E2                    3034 	.db 0xe2
      004834 94                    3035 	.db 0x94
      004835 80                    3036 	.db 0x80
      004836 E2                    3037 	.db 0xe2
      004837 94                    3038 	.db 0x94
      004838 80                    3039 	.db 0x80
      004839 E2                    3040 	.db 0xe2
      00483A 94                    3041 	.db 0x94
      00483B 80                    3042 	.db 0x80
      00483C E2                    3043 	.db 0xe2
      00483D 94                    3044 	.db 0x94
      00483E 80                    3045 	.db 0x80
      00483F E2                    3046 	.db 0xe2
      004840 94                    3047 	.db 0x94
      004841 80                    3048 	.db 0x80
      004842 E2                    3049 	.db 0xe2
      004843 94                    3050 	.db 0x94
      004844 80                    3051 	.db 0x80
      004845 E2                    3052 	.db 0xe2
      004846 94                    3053 	.db 0x94
      004847 80                    3054 	.db 0x80
      004848 E2                    3055 	.db 0xe2
      004849 94                    3056 	.db 0x94
      00484A 80                    3057 	.db 0x80
      00484B E2                    3058 	.db 0xe2
      00484C 94                    3059 	.db 0x94
      00484D 80                    3060 	.db 0x80
      00484E E2                    3061 	.db 0xe2
      00484F 94                    3062 	.db 0x94
      004850 80                    3063 	.db 0x80
      004851 E2                    3064 	.db 0xe2
      004852 94                    3065 	.db 0x94
      004853 80                    3066 	.db 0x80
      004854 E2                    3067 	.db 0xe2
      004855 94                    3068 	.db 0x94
      004856 80                    3069 	.db 0x80
      004857 E2                    3070 	.db 0xe2
      004858 94                    3071 	.db 0x94
      004859 80                    3072 	.db 0x80
      00485A E2                    3073 	.db 0xe2
      00485B 94                    3074 	.db 0x94
      00485C 80                    3075 	.db 0x80
      00485D E2                    3076 	.db 0xe2
      00485E 94                    3077 	.db 0x94
      00485F 80                    3078 	.db 0x80
      004860 E2                    3079 	.db 0xe2
      004861 94                    3080 	.db 0x94
      004862 80                    3081 	.db 0x80
      004863 E2                    3082 	.db 0xe2
      004864 94                    3083 	.db 0x94
      004865 80                    3084 	.db 0x80
      004866 E2                    3085 	.db 0xe2
      004867 94                    3086 	.db 0x94
      004868 80                    3087 	.db 0x80
      004869 E2                    3088 	.db 0xe2
      00486A 94                    3089 	.db 0x94
      00486B 80                    3090 	.db 0x80
      00486C E2                    3091 	.db 0xe2
      00486D 94                    3092 	.db 0x94
      00486E 80                    3093 	.db 0x80
      00486F E2                    3094 	.db 0xe2
      004870 94                    3095 	.db 0x94
      004871 80                    3096 	.db 0x80
      004872 E2                    3097 	.db 0xe2
      004873 94                    3098 	.db 0x94
      004874 80                    3099 	.db 0x80
      004875 E2                    3100 	.db 0xe2
      004876 94                    3101 	.db 0x94
      004877 80                    3102 	.db 0x80
      004878 E2                    3103 	.db 0xe2
      004879 94                    3104 	.db 0x94
      00487A 80                    3105 	.db 0x80
      00487B E2                    3106 	.db 0xe2
      00487C 94                    3107 	.db 0x94
      00487D 80                    3108 	.db 0x80
      00487E E2                    3109 	.db 0xe2
      00487F 94                    3110 	.db 0x94
      004880 80                    3111 	.db 0x80
      004881 E2                    3112 	.db 0xe2
      004882 94                    3113 	.db 0x94
      004883 80                    3114 	.db 0x80
      004884 E2                    3115 	.db 0xe2
      004885 94                    3116 	.db 0x94
      004886 80                    3117 	.db 0x80
      004887 E2                    3118 	.db 0xe2
      004888 94                    3119 	.db 0x94
      004889 80                    3120 	.db 0x80
      00488A E2                    3121 	.db 0xe2
      00488B 94                    3122 	.db 0x94
      00488C 80                    3123 	.db 0x80
      00488D E2                    3124 	.db 0xe2
      00488E 94                    3125 	.db 0x94
      00488F 80                    3126 	.db 0x80
      004890 E2                    3127 	.db 0xe2
      004891 94                    3128 	.db 0x94
      004892 80                    3129 	.db 0x80
      004893 E2                    3130 	.db 0xe2
      004894 94                    3131 	.db 0x94
      004895 80                    3132 	.db 0x80
      004896 E2                    3133 	.db 0xe2
      004897 94                    3134 	.db 0x94
      004898 80                    3135 	.db 0x80
      004899 E2                    3136 	.db 0xe2
      00489A 94                    3137 	.db 0x94
      00489B 80                    3138 	.db 0x80
      00489C E2                    3139 	.db 0xe2
      00489D 94                    3140 	.db 0x94
      00489E 80                    3141 	.db 0x80
      00489F E2                    3142 	.db 0xe2
      0048A0 94                    3143 	.db 0x94
      0048A1 A4                    3144 	.db 0xa4
      0048A2 0A                    3145 	.db 0x0a
      0048A3 0D                    3146 	.db 0x0d
      0048A4 00                    3147 	.db 0x00
                                   3148 	.area CSEG    (CODE)
                                   3149 	.area CONST   (CODE)
      0048A5                       3150 ___str_6:
      0048A5 E2                    3151 	.db 0xe2
      0048A6 94                    3152 	.db 0x94
      0048A7 82                    3153 	.db 0x82
      0048A8 20 20 20 20 20 52 20  3154 	.ascii "     R      "
             20 20 20 20 20
      0048B4 E2                    3155 	.db 0xe2
      0048B5 94                    3156 	.db 0x94
      0048B6 82                    3157 	.db 0x82
      0048B7 20 52 65 61 64 20 66  3158 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0048E3 E2                    3159 	.db 0xe2
      0048E4 94                    3160 	.db 0x94
      0048E5 82                    3161 	.db 0x82
      0048E6 0A                    3162 	.db 0x0a
      0048E7 0D                    3163 	.db 0x0d
      0048E8 00                    3164 	.db 0x00
                                   3165 	.area CSEG    (CODE)
                                   3166 	.area CONST   (CODE)
      0048E9                       3167 ___str_7:
      0048E9 E2                    3168 	.db 0xe2
      0048EA 94                    3169 	.db 0x94
      0048EB 82                    3170 	.db 0x82
      0048EC 20 20 20 20 20 57 20  3171 	.ascii "     W      "
             20 20 20 20 20
      0048F8 E2                    3172 	.db 0xe2
      0048F9 94                    3173 	.db 0x94
      0048FA 82                    3174 	.db 0x82
      0048FB 20 57 72 69 74 65 20  3175 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004927 E2                    3176 	.db 0xe2
      004928 94                    3177 	.db 0x94
      004929 82                    3178 	.db 0x82
      00492A 0A                    3179 	.db 0x0a
      00492B 0D                    3180 	.db 0x0d
      00492C 00                    3181 	.db 0x00
                                   3182 	.area CSEG    (CODE)
                                   3183 	.area CONST   (CODE)
      00492D                       3184 ___str_8:
      00492D E2                    3185 	.db 0xe2
      00492E 94                    3186 	.db 0x94
      00492F 82                    3187 	.db 0x82
      004930 20 20 20 20 20 48 20  3188 	.ascii "     H      "
             20 20 20 20 20
      00493C E2                    3189 	.db 0xe2
      00493D 94                    3190 	.db 0x94
      00493E 82                    3191 	.db 0x82
      00493F 20 44 69 73 70 6C 61  3192 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      00496B E2                    3193 	.db 0xe2
      00496C 94                    3194 	.db 0x94
      00496D 82                    3195 	.db 0x82
      00496E 0A                    3196 	.db 0x0a
      00496F 0D                    3197 	.db 0x0d
      004970 00                    3198 	.db 0x00
                                   3199 	.area CSEG    (CODE)
                                   3200 	.area CONST   (CODE)
      004971                       3201 ___str_9:
      004971 E2                    3202 	.db 0xe2
      004972 94                    3203 	.db 0x94
      004973 82                    3204 	.db 0x82
      004974 20 20 20 20 20 58 20  3205 	.ascii "     X      "
             20 20 20 20 20
      004980 E2                    3206 	.db 0xe2
      004981 94                    3207 	.db 0x94
      004982 82                    3208 	.db 0x82
      004983 20 52 65 73 65 74 20  3209 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0049AF E2                    3210 	.db 0xe2
      0049B0 94                    3211 	.db 0x94
      0049B1 82                    3212 	.db 0x82
      0049B2 0A                    3213 	.db 0x0a
      0049B3 0D                    3214 	.db 0x0d
      0049B4 00                    3215 	.db 0x00
                                   3216 	.area CSEG    (CODE)
                                   3217 	.area CONST   (CODE)
      0049B5                       3218 ___str_10:
      0049B5 E2                    3219 	.db 0xe2
      0049B6 94                    3220 	.db 0x94
      0049B7 82                    3221 	.db 0x82
      0049B8 20 20 20 20 20 3F 20  3222 	.ascii "     ?      "
             20 20 20 20 20
      0049C4 E2                    3223 	.db 0xe2
      0049C5 94                    3224 	.db 0x94
      0049C6 82                    3225 	.db 0x82
      0049C7 20 44 69 73 70 6C 61  3226 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0049F3 E2                    3227 	.db 0xe2
      0049F4 94                    3228 	.db 0x94
      0049F5 82                    3229 	.db 0x82
      0049F6 0A                    3230 	.db 0x0a
      0049F7 0D                    3231 	.db 0x0d
      0049F8 00                    3232 	.db 0x00
                                   3233 	.area CSEG    (CODE)
                                   3234 	.area CONST   (CODE)
      0049F9                       3235 ___str_11:
      0049F9 E2                    3236 	.db 0xe2
      0049FA 94                    3237 	.db 0x94
      0049FB 82                    3238 	.db 0x82
      0049FC 20 20 20 20 20 51 20  3239 	.ascii "     Q      "
             20 20 20 20 20
      004A08 E2                    3240 	.db 0xe2
      004A09 94                    3241 	.db 0x94
      004A0A 82                    3242 	.db 0x82
      004A0B 20 51 75 69 74 20 70  3243 	.ascii " Quit program                              "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20
      004A36 E2                    3244 	.db 0xe2
      004A37 94                    3245 	.db 0x94
      004A38 82                    3246 	.db 0x82
      004A39 0A                    3247 	.db 0x0a
      004A3A 0D                    3248 	.db 0x0d
      004A3B 00                    3249 	.db 0x00
                                   3250 	.area CSEG    (CODE)
                                   3251 	.area CONST   (CODE)
      004A3C                       3252 ___str_12:
      004A3C E2                    3253 	.db 0xe2
      004A3D 94                    3254 	.db 0x94
      004A3E 94                    3255 	.db 0x94
      004A3F E2                    3256 	.db 0xe2
      004A40 94                    3257 	.db 0x94
      004A41 80                    3258 	.db 0x80
      004A42 E2                    3259 	.db 0xe2
      004A43 94                    3260 	.db 0x94
      004A44 80                    3261 	.db 0x80
      004A45 E2                    3262 	.db 0xe2
      004A46 94                    3263 	.db 0x94
      004A47 80                    3264 	.db 0x80
      004A48 E2                    3265 	.db 0xe2
      004A49 94                    3266 	.db 0x94
      004A4A 80                    3267 	.db 0x80
      004A4B E2                    3268 	.db 0xe2
      004A4C 94                    3269 	.db 0x94
      004A4D 80                    3270 	.db 0x80
      004A4E E2                    3271 	.db 0xe2
      004A4F 94                    3272 	.db 0x94
      004A50 80                    3273 	.db 0x80
      004A51 E2                    3274 	.db 0xe2
      004A52 94                    3275 	.db 0x94
      004A53 80                    3276 	.db 0x80
      004A54 E2                    3277 	.db 0xe2
      004A55 94                    3278 	.db 0x94
      004A56 80                    3279 	.db 0x80
      004A57 E2                    3280 	.db 0xe2
      004A58 94                    3281 	.db 0x94
      004A59 80                    3282 	.db 0x80
      004A5A E2                    3283 	.db 0xe2
      004A5B 94                    3284 	.db 0x94
      004A5C 80                    3285 	.db 0x80
      004A5D E2                    3286 	.db 0xe2
      004A5E 94                    3287 	.db 0x94
      004A5F 80                    3288 	.db 0x80
      004A60 E2                    3289 	.db 0xe2
      004A61 94                    3290 	.db 0x94
      004A62 80                    3291 	.db 0x80
      004A63 E2                    3292 	.db 0xe2
      004A64 94                    3293 	.db 0x94
      004A65 B4                    3294 	.db 0xb4
      004A66 E2                    3295 	.db 0xe2
      004A67 94                    3296 	.db 0x94
      004A68 80                    3297 	.db 0x80
      004A69 E2                    3298 	.db 0xe2
      004A6A 94                    3299 	.db 0x94
      004A6B 80                    3300 	.db 0x80
      004A6C E2                    3301 	.db 0xe2
      004A6D 94                    3302 	.db 0x94
      004A6E 80                    3303 	.db 0x80
      004A6F E2                    3304 	.db 0xe2
      004A70 94                    3305 	.db 0x94
      004A71 80                    3306 	.db 0x80
      004A72 E2                    3307 	.db 0xe2
      004A73 94                    3308 	.db 0x94
      004A74 80                    3309 	.db 0x80
      004A75 E2                    3310 	.db 0xe2
      004A76 94                    3311 	.db 0x94
      004A77 80                    3312 	.db 0x80
      004A78 E2                    3313 	.db 0xe2
      004A79 94                    3314 	.db 0x94
      004A7A 80                    3315 	.db 0x80
      004A7B E2                    3316 	.db 0xe2
      004A7C 94                    3317 	.db 0x94
      004A7D 80                    3318 	.db 0x80
      004A7E E2                    3319 	.db 0xe2
      004A7F 94                    3320 	.db 0x94
      004A80 80                    3321 	.db 0x80
      004A81 E2                    3322 	.db 0xe2
      004A82 94                    3323 	.db 0x94
      004A83 80                    3324 	.db 0x80
      004A84 E2                    3325 	.db 0xe2
      004A85 94                    3326 	.db 0x94
      004A86 80                    3327 	.db 0x80
      004A87 E2                    3328 	.db 0xe2
      004A88 94                    3329 	.db 0x94
      004A89 80                    3330 	.db 0x80
      004A8A E2                    3331 	.db 0xe2
      004A8B 94                    3332 	.db 0x94
      004A8C 80                    3333 	.db 0x80
      004A8D E2                    3334 	.db 0xe2
      004A8E 94                    3335 	.db 0x94
      004A8F 80                    3336 	.db 0x80
      004A90 E2                    3337 	.db 0xe2
      004A91 94                    3338 	.db 0x94
      004A92 80                    3339 	.db 0x80
      004A93 E2                    3340 	.db 0xe2
      004A94 94                    3341 	.db 0x94
      004A95 80                    3342 	.db 0x80
      004A96 E2                    3343 	.db 0xe2
      004A97 94                    3344 	.db 0x94
      004A98 80                    3345 	.db 0x80
      004A99 E2                    3346 	.db 0xe2
      004A9A 94                    3347 	.db 0x94
      004A9B 80                    3348 	.db 0x80
      004A9C E2                    3349 	.db 0xe2
      004A9D 94                    3350 	.db 0x94
      004A9E 80                    3351 	.db 0x80
      004A9F E2                    3352 	.db 0xe2
      004AA0 94                    3353 	.db 0x94
      004AA1 80                    3354 	.db 0x80
      004AA2 E2                    3355 	.db 0xe2
      004AA3 94                    3356 	.db 0x94
      004AA4 80                    3357 	.db 0x80
      004AA5 E2                    3358 	.db 0xe2
      004AA6 94                    3359 	.db 0x94
      004AA7 80                    3360 	.db 0x80
      004AA8 E2                    3361 	.db 0xe2
      004AA9 94                    3362 	.db 0x94
      004AAA 80                    3363 	.db 0x80
      004AAB E2                    3364 	.db 0xe2
      004AAC 94                    3365 	.db 0x94
      004AAD 80                    3366 	.db 0x80
      004AAE E2                    3367 	.db 0xe2
      004AAF 94                    3368 	.db 0x94
      004AB0 80                    3369 	.db 0x80
      004AB1 E2                    3370 	.db 0xe2
      004AB2 94                    3371 	.db 0x94
      004AB3 80                    3372 	.db 0x80
      004AB4 E2                    3373 	.db 0xe2
      004AB5 94                    3374 	.db 0x94
      004AB6 80                    3375 	.db 0x80
      004AB7 E2                    3376 	.db 0xe2
      004AB8 94                    3377 	.db 0x94
      004AB9 80                    3378 	.db 0x80
      004ABA E2                    3379 	.db 0xe2
      004ABB 94                    3380 	.db 0x94
      004ABC 80                    3381 	.db 0x80
      004ABD E2                    3382 	.db 0xe2
      004ABE 94                    3383 	.db 0x94
      004ABF 80                    3384 	.db 0x80
      004AC0 E2                    3385 	.db 0xe2
      004AC1 94                    3386 	.db 0x94
      004AC2 80                    3387 	.db 0x80
      004AC3 E2                    3388 	.db 0xe2
      004AC4 94                    3389 	.db 0x94
      004AC5 80                    3390 	.db 0x80
      004AC6 E2                    3391 	.db 0xe2
      004AC7 94                    3392 	.db 0x94
      004AC8 80                    3393 	.db 0x80
      004AC9 E2                    3394 	.db 0xe2
      004ACA 94                    3395 	.db 0x94
      004ACB 80                    3396 	.db 0x80
      004ACC E2                    3397 	.db 0xe2
      004ACD 94                    3398 	.db 0x94
      004ACE 80                    3399 	.db 0x80
      004ACF E2                    3400 	.db 0xe2
      004AD0 94                    3401 	.db 0x94
      004AD1 80                    3402 	.db 0x80
      004AD2 E2                    3403 	.db 0xe2
      004AD3 94                    3404 	.db 0x94
      004AD4 80                    3405 	.db 0x80
      004AD5 E2                    3406 	.db 0xe2
      004AD6 94                    3407 	.db 0x94
      004AD7 80                    3408 	.db 0x80
      004AD8 E2                    3409 	.db 0xe2
      004AD9 94                    3410 	.db 0x94
      004ADA 80                    3411 	.db 0x80
      004ADB E2                    3412 	.db 0xe2
      004ADC 94                    3413 	.db 0x94
      004ADD 80                    3414 	.db 0x80
      004ADE E2                    3415 	.db 0xe2
      004ADF 94                    3416 	.db 0x94
      004AE0 80                    3417 	.db 0x80
      004AE1 E2                    3418 	.db 0xe2
      004AE2 94                    3419 	.db 0x94
      004AE3 80                    3420 	.db 0x80
      004AE4 E2                    3421 	.db 0xe2
      004AE5 94                    3422 	.db 0x94
      004AE6 80                    3423 	.db 0x80
      004AE7 E2                    3424 	.db 0xe2
      004AE8 94                    3425 	.db 0x94
      004AE9 80                    3426 	.db 0x80
      004AEA E2                    3427 	.db 0xe2
      004AEB 94                    3428 	.db 0x94
      004AEC 98                    3429 	.db 0x98
      004AED 0A                    3430 	.db 0x0a
      004AEE 0D                    3431 	.db 0x0d
      004AEF 00                    3432 	.db 0x00
                                   3433 	.area CSEG    (CODE)
                                   3434 	.area CONST   (CODE)
      004AF0                       3435 ___str_13:
      004AF0 24 20 25 63           3436 	.ascii "$ %c"
      004AF4 0A                    3437 	.db 0x0a
      004AF5 0D                    3438 	.db 0x0d
      004AF6 00                    3439 	.db 0x00
                                   3440 	.area CSEG    (CODE)
                                   3441 	.area CONST   (CODE)
      004AF7                       3442 ___str_14:
      004AF7 0A                    3443 	.db 0x0a
      004AF8 E2                    3444 	.db 0xe2
      004AF9 94                    3445 	.db 0x94
      004AFA 8C                    3446 	.db 0x8c
      004AFB E2                    3447 	.db 0xe2
      004AFC 94                    3448 	.db 0x94
      004AFD 80                    3449 	.db 0x80
      004AFE E2                    3450 	.db 0xe2
      004AFF 94                    3451 	.db 0x94
      004B00 80                    3452 	.db 0x80
      004B01 E2                    3453 	.db 0xe2
      004B02 94                    3454 	.db 0x94
      004B03 80                    3455 	.db 0x80
      004B04 E2                    3456 	.db 0xe2
      004B05 94                    3457 	.db 0x94
      004B06 80                    3458 	.db 0x80
      004B07 E2                    3459 	.db 0xe2
      004B08 94                    3460 	.db 0x94
      004B09 80                    3461 	.db 0x80
      004B0A E2                    3462 	.db 0xe2
      004B0B 94                    3463 	.db 0x94
      004B0C 80                    3464 	.db 0x80
      004B0D E2                    3465 	.db 0xe2
      004B0E 94                    3466 	.db 0x94
      004B0F 80                    3467 	.db 0x80
      004B10 E2                    3468 	.db 0xe2
      004B11 94                    3469 	.db 0x94
      004B12 80                    3470 	.db 0x80
      004B13 E2                    3471 	.db 0xe2
      004B14 94                    3472 	.db 0x94
      004B15 80                    3473 	.db 0x80
      004B16 E2                    3474 	.db 0xe2
      004B17 94                    3475 	.db 0x94
      004B18 80                    3476 	.db 0x80
      004B19 E2                    3477 	.db 0xe2
      004B1A 94                    3478 	.db 0x94
      004B1B 80                    3479 	.db 0x80
      004B1C E2                    3480 	.db 0xe2
      004B1D 94                    3481 	.db 0x94
      004B1E 80                    3482 	.db 0x80
      004B1F E2                    3483 	.db 0xe2
      004B20 94                    3484 	.db 0x94
      004B21 80                    3485 	.db 0x80
      004B22 E2                    3486 	.db 0xe2
      004B23 94                    3487 	.db 0x94
      004B24 80                    3488 	.db 0x80
      004B25 E2                    3489 	.db 0xe2
      004B26 94                    3490 	.db 0x94
      004B27 80                    3491 	.db 0x80
      004B28 20 57 52 49 54 45 20  3492 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      004B39 E2                    3493 	.db 0xe2
      004B3A 94                    3494 	.db 0x94
      004B3B 80                    3495 	.db 0x80
      004B3C E2                    3496 	.db 0xe2
      004B3D 94                    3497 	.db 0x94
      004B3E 80                    3498 	.db 0x80
      004B3F E2                    3499 	.db 0xe2
      004B40 94                    3500 	.db 0x94
      004B41 80                    3501 	.db 0x80
      004B42 E2                    3502 	.db 0xe2
      004B43 94                    3503 	.db 0x94
      004B44 80                    3504 	.db 0x80
      004B45 E2                    3505 	.db 0xe2
      004B46 94                    3506 	.db 0x94
      004B47 80                    3507 	.db 0x80
      004B48 E2                    3508 	.db 0xe2
      004B49 94                    3509 	.db 0x94
      004B4A 80                    3510 	.db 0x80
      004B4B E2                    3511 	.db 0xe2
      004B4C 94                    3512 	.db 0x94
      004B4D 80                    3513 	.db 0x80
      004B4E E2                    3514 	.db 0xe2
      004B4F 94                    3515 	.db 0x94
      004B50 80                    3516 	.db 0x80
      004B51 E2                    3517 	.db 0xe2
      004B52 94                    3518 	.db 0x94
      004B53 80                    3519 	.db 0x80
      004B54 E2                    3520 	.db 0xe2
      004B55 94                    3521 	.db 0x94
      004B56 80                    3522 	.db 0x80
      004B57 E2                    3523 	.db 0xe2
      004B58 94                    3524 	.db 0x94
      004B59 80                    3525 	.db 0x80
      004B5A E2                    3526 	.db 0xe2
      004B5B 94                    3527 	.db 0x94
      004B5C 80                    3528 	.db 0x80
      004B5D E2                    3529 	.db 0xe2
      004B5E 94                    3530 	.db 0x94
      004B5F 80                    3531 	.db 0x80
      004B60 E2                    3532 	.db 0xe2
      004B61 94                    3533 	.db 0x94
      004B62 80                    3534 	.db 0x80
      004B63 E2                    3535 	.db 0xe2
      004B64 94                    3536 	.db 0x94
      004B65 90                    3537 	.db 0x90
      004B66 0A                    3538 	.db 0x0a
      004B67 0D                    3539 	.db 0x0d
      004B68 00                    3540 	.db 0x00
                                   3541 	.area CSEG    (CODE)
                                   3542 	.area CONST   (CODE)
      004B69                       3543 ___str_15:
      004B69 7C 57 72 69 74 69 6E  3544 	.ascii "|Writing at Address 0x%03X Data 0x%02X          |"
             67 20 61 74 20 41 64
             64 72 65 73 73 20 30
             78 25 30 33 58 20 44
             61 74 61 20 30 78 25
             30 32 58 20 20 20 20
             20 20 20 20 20 20 7C
      004B9A 0A                    3545 	.db 0x0a
      004B9B 0D                    3546 	.db 0x0d
      004B9C 00                    3547 	.db 0x00
                                   3548 	.area CSEG    (CODE)
                                   3549 	.area CONST   (CODE)
      004B9D                       3550 ___str_16:
      004B9D 0A                    3551 	.db 0x0a
      004B9E E2                    3552 	.db 0xe2
      004B9F 94                    3553 	.db 0x94
      004BA0 8C                    3554 	.db 0x8c
      004BA1 E2                    3555 	.db 0xe2
      004BA2 94                    3556 	.db 0x94
      004BA3 80                    3557 	.db 0x80
      004BA4 E2                    3558 	.db 0xe2
      004BA5 94                    3559 	.db 0x94
      004BA6 80                    3560 	.db 0x80
      004BA7 E2                    3561 	.db 0xe2
      004BA8 94                    3562 	.db 0x94
      004BA9 80                    3563 	.db 0x80
      004BAA E2                    3564 	.db 0xe2
      004BAB 94                    3565 	.db 0x94
      004BAC 80                    3566 	.db 0x80
      004BAD E2                    3567 	.db 0xe2
      004BAE 94                    3568 	.db 0x94
      004BAF 80                    3569 	.db 0x80
      004BB0 E2                    3570 	.db 0xe2
      004BB1 94                    3571 	.db 0x94
      004BB2 80                    3572 	.db 0x80
      004BB3 E2                    3573 	.db 0xe2
      004BB4 94                    3574 	.db 0x94
      004BB5 80                    3575 	.db 0x80
      004BB6 E2                    3576 	.db 0xe2
      004BB7 94                    3577 	.db 0x94
      004BB8 80                    3578 	.db 0x80
      004BB9 E2                    3579 	.db 0xe2
      004BBA 94                    3580 	.db 0x94
      004BBB 80                    3581 	.db 0x80
      004BBC E2                    3582 	.db 0xe2
      004BBD 94                    3583 	.db 0x94
      004BBE 80                    3584 	.db 0x80
      004BBF E2                    3585 	.db 0xe2
      004BC0 94                    3586 	.db 0x94
      004BC1 80                    3587 	.db 0x80
      004BC2 E2                    3588 	.db 0xe2
      004BC3 94                    3589 	.db 0x94
      004BC4 80                    3590 	.db 0x80
      004BC5 E2                    3591 	.db 0xe2
      004BC6 94                    3592 	.db 0x94
      004BC7 80                    3593 	.db 0x80
      004BC8 E2                    3594 	.db 0xe2
      004BC9 94                    3595 	.db 0x94
      004BCA 80                    3596 	.db 0x80
      004BCB E2                    3597 	.db 0xe2
      004BCC 94                    3598 	.db 0x94
      004BCD 80                    3599 	.db 0x80
      004BCE 20 52 45 41 44 20 4F  3600 	.ascii " READ OPERATION "
             50 45 52 41 54 49 4F
             4E 20
      004BDE E2                    3601 	.db 0xe2
      004BDF 94                    3602 	.db 0x94
      004BE0 80                    3603 	.db 0x80
      004BE1 E2                    3604 	.db 0xe2
      004BE2 94                    3605 	.db 0x94
      004BE3 80                    3606 	.db 0x80
      004BE4 E2                    3607 	.db 0xe2
      004BE5 94                    3608 	.db 0x94
      004BE6 80                    3609 	.db 0x80
      004BE7 E2                    3610 	.db 0xe2
      004BE8 94                    3611 	.db 0x94
      004BE9 80                    3612 	.db 0x80
      004BEA E2                    3613 	.db 0xe2
      004BEB 94                    3614 	.db 0x94
      004BEC 80                    3615 	.db 0x80
      004BED E2                    3616 	.db 0xe2
      004BEE 94                    3617 	.db 0x94
      004BEF 80                    3618 	.db 0x80
      004BF0 E2                    3619 	.db 0xe2
      004BF1 94                    3620 	.db 0x94
      004BF2 80                    3621 	.db 0x80
      004BF3 E2                    3622 	.db 0xe2
      004BF4 94                    3623 	.db 0x94
      004BF5 80                    3624 	.db 0x80
      004BF6 E2                    3625 	.db 0xe2
      004BF7 94                    3626 	.db 0x94
      004BF8 80                    3627 	.db 0x80
      004BF9 E2                    3628 	.db 0xe2
      004BFA 94                    3629 	.db 0x94
      004BFB 80                    3630 	.db 0x80
      004BFC E2                    3631 	.db 0xe2
      004BFD 94                    3632 	.db 0x94
      004BFE 80                    3633 	.db 0x80
      004BFF E2                    3634 	.db 0xe2
      004C00 94                    3635 	.db 0x94
      004C01 80                    3636 	.db 0x80
      004C02 E2                    3637 	.db 0xe2
      004C03 94                    3638 	.db 0x94
      004C04 80                    3639 	.db 0x80
      004C05 E2                    3640 	.db 0xe2
      004C06 94                    3641 	.db 0x94
      004C07 80                    3642 	.db 0x80
      004C08 E2                    3643 	.db 0xe2
      004C09 94                    3644 	.db 0x94
      004C0A 80                    3645 	.db 0x80
      004C0B E2                    3646 	.db 0xe2
      004C0C 94                    3647 	.db 0x94
      004C0D 90                    3648 	.db 0x90
      004C0E 0A                    3649 	.db 0x0a
      004C0F 0D                    3650 	.db 0x0d
      004C10 00                    3651 	.db 0x00
                                   3652 	.area CSEG    (CODE)
                                   3653 	.area CONST   (CODE)
      004C11                       3654 ___str_17:
      004C11 7C 52 65 61 64 69 6E  3655 	.ascii "|Reading from Address 0x%03X           |"
             67 20 66 72 6F 6D 20
             41 64 64 72 65 73 73
             20 30 78 25 30 33 58
             20 20 20 20 20 20 20
             20 20 20 20 7C
      004C39 0A                    3656 	.db 0x0a
      004C3A 0D                    3657 	.db 0x0d
      004C3B 00                    3658 	.db 0x00
                                   3659 	.area CSEG    (CODE)
                                   3660 	.area CONST   (CODE)
      004C3C                       3661 ___str_18:
      004C3C 49 4E 56 41 4C 49 44  3662 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      004C49 0A                    3663 	.db 0x0a
      004C4A 0D                    3664 	.db 0x0d
      004C4B 00                    3665 	.db 0x00
                                   3666 	.area CSEG    (CODE)
                                   3667 	.area CONST   (CODE)
      004C4C                       3668 ___str_19:
      004C4C E2                    3669 	.db 0xe2
      004C4D 94                    3670 	.db 0x94
      004C4E 82                    3671 	.db 0x82
      004C4F 20 45 6E 74 65 72 20  3672 	.ascii " Enter address (hex, up to 3 characters): "
             61 64 64 72 65 73 73
             20 28 68 65 78 2C 20
             75 70 20 74 6F 20 33
             20 63 68 61 72 61 63
             74 65 72 73 29 3A 20
      004C79 0A                    3673 	.db 0x0a
      004C7A 0D                    3674 	.db 0x0d
      004C7B 7C                    3675 	.ascii "|"
      004C7C 00                    3676 	.db 0x00
                                   3677 	.area CSEG    (CODE)
                                   3678 	.area CONST   (CODE)
      004C7D                       3679 ___str_20:
      004C7D 24 20                 3680 	.ascii "$ "
      004C7F 00                    3681 	.db 0x00
                                   3682 	.area CSEG    (CODE)
                                   3683 	.area CONST   (CODE)
      004C80                       3684 ___str_21:
      004C80 0A                    3685 	.db 0x0a
      004C81 0D                    3686 	.db 0x0d
      004C82 E2                    3687 	.db 0xe2
      004C83 94                    3688 	.db 0x94
      004C84 82                    3689 	.db 0x82
      004C85 20 45 6E 74 65 72 65  3690 	.ascii " Entered address: 0x%03X"
             64 20 61 64 64 72 65
             73 73 3A 20 30 78 25
             30 33 58
      004C9D 0A                    3691 	.db 0x0a
      004C9E 0D                    3692 	.db 0x0d
      004C9F 00                    3693 	.db 0x00
                                   3694 	.area CSEG    (CODE)
                                   3695 	.area CONST   (CODE)
      004CA0                       3696 ___str_22:
      004CA0 41 64 64 72 65 73 73  3697 	.ascii "Address out of Range"
             20 6F 75 74 20 6F 66
             20 52 61 6E 67 65
      004CB4 0A                    3698 	.db 0x0a
      004CB5 0D                    3699 	.db 0x0d
      004CB6 00                    3700 	.db 0x00
                                   3701 	.area CSEG    (CODE)
                                   3702 	.area CONST   (CODE)
      004CB7                       3703 ___str_23:
      004CB7 42 6C 6F 63 6B 20 6E  3704 	.ascii "Block number %d"
             75 6D 62 65 72 20 25
             64
      004CC6 0A                    3705 	.db 0x0a
      004CC7 0D                    3706 	.db 0x0d
      004CC8 00                    3707 	.db 0x00
                                   3708 	.area CSEG    (CODE)
                                   3709 	.area CONST   (CODE)
      004CC9                       3710 ___str_24:
      004CC9 61 64 64 72 65 73 73  3711 	.ascii "address now  0x%03X"
             20 6E 6F 77 20 20 30
             78 25 30 33 58
      004CDC 0A                    3712 	.db 0x0a
      004CDD 0D                    3713 	.db 0x0d
      004CDE 00                    3714 	.db 0x00
                                   3715 	.area CSEG    (CODE)
                                   3716 	.area CONST   (CODE)
      004CDF                       3717 ___str_25:
      004CDF E2                    3718 	.db 0xe2
      004CE0 94                    3719 	.db 0x94
      004CE1 82                    3720 	.db 0x82
      004CE2 20 45 6E 74 65 72 20  3721 	.ascii " Enter data (hex, up to 2 characters): "
             64 61 74 61 20 28 68
             65 78 2C 20 75 70 20
             74 6F 20 32 20 63 68
             61 72 61 63 74 65 72
             73 29 3A 20
      004D09 0A                    3722 	.db 0x0a
      004D0A 0D                    3723 	.db 0x0d
      004D0B 7C                    3724 	.ascii "|"
      004D0C 00                    3725 	.db 0x00
                                   3726 	.area CSEG    (CODE)
                                   3727 	.area CONST   (CODE)
      004D0D                       3728 ___str_26:
      004D0D 0A                    3729 	.db 0x0a
      004D0E 0D                    3730 	.db 0x0d
      004D0F E2                    3731 	.db 0xe2
      004D10 94                    3732 	.db 0x94
      004D11 82                    3733 	.db 0x82
      004D12 20 45 6E 74 65 72 65  3734 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      004D27 0A                    3735 	.db 0x0a
      004D28 0D                    3736 	.db 0x0d
      004D29 00                    3737 	.db 0x00
                                   3738 	.area CSEG    (CODE)
                                   3739 	.area CONST   (CODE)
      004D2A                       3740 ___str_27:
      004D2A 44 61 74 61 20 6F 75  3741 	.ascii "Data out of Range"
             74 20 6F 66 20 52 61
             6E 67 65
      004D3B 0A                    3742 	.db 0x0a
      004D3C 0D                    3743 	.db 0x0d
      004D3D 00                    3744 	.db 0x00
                                   3745 	.area CSEG    (CODE)
                                   3746 	.area CONST   (CODE)
      004D3E                       3747 ___str_28:
      004D3E 45 72 72 6F 72 3A 20  3748 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      004D66 0A                    3749 	.db 0x0a
      004D67 0D                    3750 	.db 0x0d
      004D68 00                    3751 	.db 0x00
                                   3752 	.area CSEG    (CODE)
                                   3753 	.area CONST   (CODE)
      004D69                       3754 ___str_29:
      004D69 45 72 72 6F 72 3A 20  3755 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      004D89 0A                    3756 	.db 0x0a
      004D8A 0D                    3757 	.db 0x0d
      004D8B 00                    3758 	.db 0x00
                                   3759 	.area CSEG    (CODE)
                                   3760 	.area CONST   (CODE)
      004D8C                       3761 ___str_30:
      004D8C 45 72 72 6F 72 3A 20  3762 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      004DA2 0A                    3763 	.db 0x0a
      004DA3 0D                    3764 	.db 0x0d
      004DA4 00                    3765 	.db 0x00
                                   3766 	.area CSEG    (CODE)
                                   3767 	.area CONST   (CODE)
      004DA5                       3768 ___str_31:
      004DA5 7C 20 57 72 69 74 69  3769 	.ascii "| Writing at Address 0x%03X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 33 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      004DD7 0A                    3770 	.db 0x0a
      004DD8 0D                    3771 	.db 0x0d
      004DD9 00                    3772 	.db 0x00
                                   3773 	.area CSEG    (CODE)
                                   3774 	.area CONST   (CODE)
      004DDA                       3775 ___str_32:
      004DDA E2                    3776 	.db 0xe2
      004DDB 94                    3777 	.db 0x94
      004DDC 82                    3778 	.db 0x82
      004DDD 20 57 72 69 74 65 20  3779 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      004E0C E2                    3780 	.db 0xe2
      004E0D 94                    3781 	.db 0x94
      004E0E 82                    3782 	.db 0x82
      004E0F 0A                    3783 	.db 0x0a
      004E10 0D                    3784 	.db 0x0d
      004E11 00                    3785 	.db 0x00
                                   3786 	.area CSEG    (CODE)
                                   3787 	.area CONST   (CODE)
      004E12                       3788 ___str_33:
      004E12 E2                    3789 	.db 0xe2
      004E13 94                    3790 	.db 0x94
      004E14 94                    3791 	.db 0x94
      004E15 E2                    3792 	.db 0xe2
      004E16 94                    3793 	.db 0x94
      004E17 80                    3794 	.db 0x80
      004E18 E2                    3795 	.db 0xe2
      004E19 94                    3796 	.db 0x94
      004E1A 80                    3797 	.db 0x80
      004E1B E2                    3798 	.db 0xe2
      004E1C 94                    3799 	.db 0x94
      004E1D 80                    3800 	.db 0x80
      004E1E E2                    3801 	.db 0xe2
      004E1F 94                    3802 	.db 0x94
      004E20 80                    3803 	.db 0x80
      004E21 E2                    3804 	.db 0xe2
      004E22 94                    3805 	.db 0x94
      004E23 80                    3806 	.db 0x80
      004E24 E2                    3807 	.db 0xe2
      004E25 94                    3808 	.db 0x94
      004E26 80                    3809 	.db 0x80
      004E27 E2                    3810 	.db 0xe2
      004E28 94                    3811 	.db 0x94
      004E29 80                    3812 	.db 0x80
      004E2A E2                    3813 	.db 0xe2
      004E2B 94                    3814 	.db 0x94
      004E2C 80                    3815 	.db 0x80
      004E2D E2                    3816 	.db 0xe2
      004E2E 94                    3817 	.db 0x94
      004E2F 80                    3818 	.db 0x80
      004E30 E2                    3819 	.db 0xe2
      004E31 94                    3820 	.db 0x94
      004E32 80                    3821 	.db 0x80
      004E33 E2                    3822 	.db 0xe2
      004E34 94                    3823 	.db 0x94
      004E35 80                    3824 	.db 0x80
      004E36 E2                    3825 	.db 0xe2
      004E37 94                    3826 	.db 0x94
      004E38 80                    3827 	.db 0x80
      004E39 E2                    3828 	.db 0xe2
      004E3A 94                    3829 	.db 0x94
      004E3B 80                    3830 	.db 0x80
      004E3C E2                    3831 	.db 0xe2
      004E3D 94                    3832 	.db 0x94
      004E3E 80                    3833 	.db 0x80
      004E3F E2                    3834 	.db 0xe2
      004E40 94                    3835 	.db 0x94
      004E41 80                    3836 	.db 0x80
      004E42 E2                    3837 	.db 0xe2
      004E43 94                    3838 	.db 0x94
      004E44 80                    3839 	.db 0x80
      004E45 E2                    3840 	.db 0xe2
      004E46 94                    3841 	.db 0x94
      004E47 80                    3842 	.db 0x80
      004E48 E2                    3843 	.db 0xe2
      004E49 94                    3844 	.db 0x94
      004E4A 80                    3845 	.db 0x80
      004E4B E2                    3846 	.db 0xe2
      004E4C 94                    3847 	.db 0x94
      004E4D 80                    3848 	.db 0x80
      004E4E E2                    3849 	.db 0xe2
      004E4F 94                    3850 	.db 0x94
      004E50 80                    3851 	.db 0x80
      004E51 E2                    3852 	.db 0xe2
      004E52 94                    3853 	.db 0x94
      004E53 80                    3854 	.db 0x80
      004E54 E2                    3855 	.db 0xe2
      004E55 94                    3856 	.db 0x94
      004E56 80                    3857 	.db 0x80
      004E57 E2                    3858 	.db 0xe2
      004E58 94                    3859 	.db 0x94
      004E59 80                    3860 	.db 0x80
      004E5A E2                    3861 	.db 0xe2
      004E5B 94                    3862 	.db 0x94
      004E5C 80                    3863 	.db 0x80
      004E5D E2                    3864 	.db 0xe2
      004E5E 94                    3865 	.db 0x94
      004E5F 80                    3866 	.db 0x80
      004E60 E2                    3867 	.db 0xe2
      004E61 94                    3868 	.db 0x94
      004E62 80                    3869 	.db 0x80
      004E63 E2                    3870 	.db 0xe2
      004E64 94                    3871 	.db 0x94
      004E65 80                    3872 	.db 0x80
      004E66 E2                    3873 	.db 0xe2
      004E67 94                    3874 	.db 0x94
      004E68 80                    3875 	.db 0x80
      004E69 E2                    3876 	.db 0xe2
      004E6A 94                    3877 	.db 0x94
      004E6B 80                    3878 	.db 0x80
      004E6C E2                    3879 	.db 0xe2
      004E6D 94                    3880 	.db 0x94
      004E6E 80                    3881 	.db 0x80
      004E6F E2                    3882 	.db 0xe2
      004E70 94                    3883 	.db 0x94
      004E71 80                    3884 	.db 0x80
      004E72 E2                    3885 	.db 0xe2
      004E73 94                    3886 	.db 0x94
      004E74 80                    3887 	.db 0x80
      004E75 E2                    3888 	.db 0xe2
      004E76 94                    3889 	.db 0x94
      004E77 80                    3890 	.db 0x80
      004E78 E2                    3891 	.db 0xe2
      004E79 94                    3892 	.db 0x94
      004E7A 80                    3893 	.db 0x80
      004E7B E2                    3894 	.db 0xe2
      004E7C 94                    3895 	.db 0x94
      004E7D 80                    3896 	.db 0x80
      004E7E E2                    3897 	.db 0xe2
      004E7F 94                    3898 	.db 0x94
      004E80 80                    3899 	.db 0x80
      004E81 E2                    3900 	.db 0xe2
      004E82 94                    3901 	.db 0x94
      004E83 80                    3902 	.db 0x80
      004E84 E2                    3903 	.db 0xe2
      004E85 94                    3904 	.db 0x94
      004E86 80                    3905 	.db 0x80
      004E87 E2                    3906 	.db 0xe2
      004E88 94                    3907 	.db 0x94
      004E89 80                    3908 	.db 0x80
      004E8A E2                    3909 	.db 0xe2
      004E8B 94                    3910 	.db 0x94
      004E8C 80                    3911 	.db 0x80
      004E8D E2                    3912 	.db 0xe2
      004E8E 94                    3913 	.db 0x94
      004E8F 80                    3914 	.db 0x80
      004E90 E2                    3915 	.db 0xe2
      004E91 94                    3916 	.db 0x94
      004E92 80                    3917 	.db 0x80
      004E93 E2                    3918 	.db 0xe2
      004E94 94                    3919 	.db 0x94
      004E95 80                    3920 	.db 0x80
      004E96 E2                    3921 	.db 0xe2
      004E97 94                    3922 	.db 0x94
      004E98 80                    3923 	.db 0x80
      004E99 E2                    3924 	.db 0xe2
      004E9A 94                    3925 	.db 0x94
      004E9B 80                    3926 	.db 0x80
      004E9C E2                    3927 	.db 0xe2
      004E9D 94                    3928 	.db 0x94
      004E9E 80                    3929 	.db 0x80
      004E9F E2                    3930 	.db 0xe2
      004EA0 94                    3931 	.db 0x94
      004EA1 80                    3932 	.db 0x80
      004EA2 E2                    3933 	.db 0xe2
      004EA3 94                    3934 	.db 0x94
      004EA4 98                    3935 	.db 0x98
      004EA5 0A                    3936 	.db 0x0a
      004EA6 0D                    3937 	.db 0x0d
      004EA7 00                    3938 	.db 0x00
                                   3939 	.area CSEG    (CODE)
                                   3940 	.area CONST   (CODE)
      004EA8                       3941 ___str_34:
      004EA8 45 72 72 6F 72 3A 20  3942 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      004ED5 0A                    3943 	.db 0x0a
      004ED6 0D                    3944 	.db 0x0d
      004ED7 00                    3945 	.db 0x00
                                   3946 	.area CSEG    (CODE)
                                   3947 	.area CONST   (CODE)
      004ED8                       3948 ___str_35:
      004ED8 45 72 72 6F 72 3A 20  3949 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      004F04 0A                    3950 	.db 0x0a
      004F05 0D                    3951 	.db 0x0d
      004F06 00                    3952 	.db 0x00
                                   3953 	.area CSEG    (CODE)
                                   3954 	.area CONST   (CODE)
      004F07                       3955 ___str_36:
      004F07 E2                    3956 	.db 0xe2
      004F08 94                    3957 	.db 0x94
      004F09 82                    3958 	.db 0x82
      004F0A 20 52 65 61 64 69 6E  3959 	.ascii " Reading from Adress: 0x%03X Data: 0x%02X                   "
             67 20 66 72 6F 6D 20
             41 64 72 65 73 73 3A
             20 30 78 25 30 33 58
             20 44 61 74 61 3A 20
             30 78 25 30 32 58 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      004F46 20                    3960 	.ascii " "
      004F47 0A                    3961 	.db 0x0a
      004F48 0D                    3962 	.db 0x0d
      004F49 00                    3963 	.db 0x00
                                   3964 	.area CSEG    (CODE)
                                   3965 	.area CONST   (CODE)
      004F4A                       3966 ___str_37:
      004F4A 7C 20 30 78 25 30 33  3967 	.ascii "| 0x%03X : 0x%02X "
             58 20 3A 20 30 78 25
             30 32 58 20
      004F5C 0A                    3968 	.db 0x0a
      004F5D 0D                    3969 	.db 0x0d
      004F5E 00                    3970 	.db 0x00
                                   3971 	.area CSEG    (CODE)
                                   3972 	.area CONST   (CODE)
      004F5F                       3973 ___str_38:
      004F5F E2                    3974 	.db 0xe2
      004F60 94                    3975 	.db 0x94
      004F61 82                    3976 	.db 0x82
      004F62 20 52 65 61 64 20 73  3977 	.ascii " Read successful!                 "
             75 63 63 65 73 73 66
             75 6C 21 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20
      004F84 E2                    3978 	.db 0xe2
      004F85 94                    3979 	.db 0x94
      004F86 82                    3980 	.db 0x82
      004F87 0A                    3981 	.db 0x0a
      004F88 0D                    3982 	.db 0x0d
      004F89 00                    3983 	.db 0x00
                                   3984 	.area CSEG    (CODE)
                                   3985 	.area CONST   (CODE)
      004F8A                       3986 ___str_39:
      004F8A 41 43 4B 20 44 49 44  3987 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      004F9C 0A                    3988 	.db 0x0a
      004F9D 0D                    3989 	.db 0x0d
      004F9E 00                    3990 	.db 0x00
                                   3991 	.area CSEG    (CODE)
                                   3992 	.area CONST   (CODE)
      004F9F                       3993 ___str_40:
      004F9F 57 72 69 74 69 6E 67  3994 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      004FC4 0A                    3995 	.db 0x0a
      004FC5 0D                    3996 	.db 0x0d
      004FC6 00                    3997 	.db 0x00
                                   3998 	.area CSEG    (CODE)
                                   3999 	.area CONST   (CODE)
      004FC7                       4000 ___str_41:
      004FC7 52 65 61 64 20 62 61  4001 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      004FEC 0A                    4002 	.db 0x0a
      004FED 0D                    4003 	.db 0x0d
      004FEE 00                    4004 	.db 0x00
                                   4005 	.area CSEG    (CODE)
                                   4006 	.area CONST   (CODE)
      004FEF                       4007 ___str_42:
      004FEF 4D 41 54 43 48 20 2D  4008 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      00500D 0A                    4009 	.db 0x0a
      00500E 0D                    4010 	.db 0x0d
      00500F 00                    4011 	.db 0x00
                                   4012 	.area CSEG    (CODE)
                                   4013 	.area CONST   (CODE)
      005010                       4014 ___str_43:
      005010 45 52 52 4F 52 20 2D  4015 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      005026 0A                    4016 	.db 0x0a
      005027 0D                    4017 	.db 0x0d
      005028 00                    4018 	.db 0x00
                                   4019 	.area CSEG    (CODE)
                                   4020 	.area XINIT   (CODE)
      005034                       4021 __xinit__block:
      005034 00 00                 4022 	.byte #0x00, #0x00	; 0
                                   4023 	.area CABS    (ABS,CODE)
