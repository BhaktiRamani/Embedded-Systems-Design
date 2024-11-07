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
      000412                        487 _eeprom_read_address_65536_89:
      000412                        488 	.ds 2
      000414                        489 _i2c_write_data_65536_95:
      000414                        490 	.ds 1
      000415                        491 _i2c_read_ACK_65536_100:
      000415                        492 	.ds 2
      000417                        493 _i2c_read_buff_65536_101:
      000417                        494 	.ds 1
                                    495 ;--------------------------------------------------------
                                    496 ; absolute external ram data
                                    497 ;--------------------------------------------------------
                                    498 	.area XABS    (ABS,XDATA)
                                    499 ;--------------------------------------------------------
                                    500 ; external initialized ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area XISEG   (XDATA)
      000451                        503 _address_range_flag:
      000451                        504 	.ds 2
      000453                        505 _data_range_flag:
      000453                        506 	.ds 2
      000455                        507 _block:
      000455                        508 	.ds 2
                                    509 	.area HOME    (CODE)
                                    510 	.area GSINIT0 (CODE)
                                    511 	.area GSINIT1 (CODE)
                                    512 	.area GSINIT2 (CODE)
                                    513 	.area GSINIT3 (CODE)
                                    514 	.area GSINIT4 (CODE)
                                    515 	.area GSINIT5 (CODE)
                                    516 	.area GSINIT  (CODE)
                                    517 	.area GSFINAL (CODE)
                                    518 	.area CSEG    (CODE)
                                    519 ;--------------------------------------------------------
                                    520 ; interrupt vector 
                                    521 ;--------------------------------------------------------
                                    522 	.area HOME    (CODE)
      003000                        523 __interrupt_vect:
      003000 02 30 06         [24]  524 	ljmp	__sdcc_gsinit_startup
                                    525 ;--------------------------------------------------------
                                    526 ; global & static initialisations
                                    527 ;--------------------------------------------------------
                                    528 	.area HOME    (CODE)
                                    529 	.area GSINIT  (CODE)
                                    530 	.area GSFINAL (CODE)
                                    531 	.area GSINIT  (CODE)
                                    532 	.globl __sdcc_gsinit_startup
                                    533 	.globl __sdcc_program_startup
                                    534 	.globl __start__stack
                                    535 	.globl __mcs51_genXINIT
                                    536 	.globl __mcs51_genXRAMCLEAR
                                    537 	.globl __mcs51_genRAMCLEAR
                                    538 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  539 	ljmp	__sdcc_program_startup
                                    540 ;--------------------------------------------------------
                                    541 ; Home
                                    542 ;--------------------------------------------------------
                                    543 	.area HOME    (CODE)
                                    544 	.area HOME    (CODE)
      003003                        545 __sdcc_program_startup:
      003003 02 31 A2         [24]  546 	ljmp	_main
                                    547 ;	return from main will return to caller
                                    548 ;--------------------------------------------------------
                                    549 ; code
                                    550 ;--------------------------------------------------------
                                    551 	.area CSEG    (CODE)
                                    552 ;------------------------------------------------------------
                                    553 ;Allocation info for local variables in function 'putchar'
                                    554 ;------------------------------------------------------------
                                    555 ;charToSend                Allocated with name '_putchar_charToSend_65536_48'
                                    556 ;------------------------------------------------------------
                                    557 ;	8051_i2c_eeprom.c:30: int putchar(int charToSend) {
                                    558 ;	-----------------------------------------
                                    559 ;	 function putchar
                                    560 ;	-----------------------------------------
      003062                        561 _putchar:
                           000007   562 	ar7 = 0x07
                           000006   563 	ar6 = 0x06
                           000005   564 	ar5 = 0x05
                           000004   565 	ar4 = 0x04
                           000003   566 	ar3 = 0x03
                           000002   567 	ar2 = 0x02
                           000001   568 	ar1 = 0x01
                           000000   569 	ar0 = 0x00
      003062 AF 83            [24]  570 	mov	r7,dph
      003064 E5 82            [12]  571 	mov	a,dpl
      003066 90 04 02         [24]  572 	mov	dptr,#_putchar_charToSend_65536_48
      003069 F0               [24]  573 	movx	@dptr,a
      00306A EF               [12]  574 	mov	a,r7
      00306B A3               [24]  575 	inc	dptr
      00306C F0               [24]  576 	movx	@dptr,a
                                    577 ;	8051_i2c_eeprom.c:31: SBUF = charToSend;  // Send character to serial buffer
      00306D 90 04 02         [24]  578 	mov	dptr,#_putchar_charToSend_65536_48
      003070 E0               [24]  579 	movx	a,@dptr
      003071 FE               [12]  580 	mov	r6,a
      003072 A3               [24]  581 	inc	dptr
      003073 E0               [24]  582 	movx	a,@dptr
      003074 FF               [12]  583 	mov	r7,a
      003075 8E 99            [24]  584 	mov	_SBUF,r6
                                    585 ;	8051_i2c_eeprom.c:32: while (!TI);        // Wait for transmission to complete
      003077                        586 00101$:
                                    587 ;	8051_i2c_eeprom.c:33: TI = 0;            // Clear transmission interrupt flag
                                    588 ;	assignBit
      003077 10 99 02         [24]  589 	jbc	_TI,00114$
      00307A 80 FB            [24]  590 	sjmp	00101$
      00307C                        591 00114$:
                                    592 ;	8051_i2c_eeprom.c:34: return charToSend;
      00307C 8E 82            [24]  593 	mov	dpl,r6
      00307E 8F 83            [24]  594 	mov	dph,r7
                                    595 ;	8051_i2c_eeprom.c:35: }
      003080 22               [24]  596 	ret
                                    597 ;------------------------------------------------------------
                                    598 ;Allocation info for local variables in function 'getchar'
                                    599 ;------------------------------------------------------------
                                    600 ;	8051_i2c_eeprom.c:37: int getchar(void) 
                                    601 ;	-----------------------------------------
                                    602 ;	 function getchar
                                    603 ;	-----------------------------------------
      003081                        604 _getchar:
                                    605 ;	8051_i2c_eeprom.c:39: while (!RI);        // Wait for reception to complete
      003081                        606 00101$:
                                    607 ;	8051_i2c_eeprom.c:40: RI = 0;            // Clear reception interrupt flag
                                    608 ;	assignBit
      003081 10 98 02         [24]  609 	jbc	_RI,00114$
      003084 80 FB            [24]  610 	sjmp	00101$
      003086                        611 00114$:
                                    612 ;	8051_i2c_eeprom.c:41: return SBUF;       // Return received character
      003086 AE 99            [24]  613 	mov	r6,_SBUF
      003088 7F 00            [12]  614 	mov	r7,#0x00
      00308A 8E 82            [24]  615 	mov	dpl,r6
      00308C 8F 83            [24]  616 	mov	dph,r7
                                    617 ;	8051_i2c_eeprom.c:42: }
      00308E 22               [24]  618 	ret
                                    619 ;------------------------------------------------------------
                                    620 ;Allocation info for local variables in function 'ui'
                                    621 ;------------------------------------------------------------
                                    622 ;	8051_i2c_eeprom.c:44: void ui()
                                    623 ;	-----------------------------------------
                                    624 ;	 function ui
                                    625 ;	-----------------------------------------
      00308F                        626 _ui:
                                    627 ;	8051_i2c_eeprom.c:46: printf("\n╔════════════════════════════════════════════════════════╗\n\r");
      00308F 74 A3            [12]  628 	mov	a,#___str_0
      003091 C0 E0            [24]  629 	push	acc
      003093 74 45            [12]  630 	mov	a,#(___str_0 >> 8)
      003095 C0 E0            [24]  631 	push	acc
      003097 74 80            [12]  632 	mov	a,#0x80
      003099 C0 E0            [24]  633 	push	acc
      00309B 12 3B 41         [24]  634 	lcall	_printf
      00309E 15 81            [12]  635 	dec	sp
      0030A0 15 81            [12]  636 	dec	sp
      0030A2 15 81            [12]  637 	dec	sp
                                    638 ;	8051_i2c_eeprom.c:47: printf("║           I2C Memory Management System v1.0            ║\n\r");
      0030A4 74 55            [12]  639 	mov	a,#___str_1
      0030A6 C0 E0            [24]  640 	push	acc
      0030A8 74 46            [12]  641 	mov	a,#(___str_1 >> 8)
      0030AA C0 E0            [24]  642 	push	acc
      0030AC 74 80            [12]  643 	mov	a,#0x80
      0030AE C0 E0            [24]  644 	push	acc
      0030B0 12 3B 41         [24]  645 	lcall	_printf
      0030B3 15 81            [12]  646 	dec	sp
      0030B5 15 81            [12]  647 	dec	sp
      0030B7 15 81            [12]  648 	dec	sp
                                    649 ;	8051_i2c_eeprom.c:48: printf("╚════════════════════════════════════════════════════════╝\n\r");
      0030B9 74 96            [12]  650 	mov	a,#___str_2
      0030BB C0 E0            [24]  651 	push	acc
      0030BD 74 46            [12]  652 	mov	a,#(___str_2 >> 8)
      0030BF C0 E0            [24]  653 	push	acc
      0030C1 74 80            [12]  654 	mov	a,#0x80
      0030C3 C0 E0            [24]  655 	push	acc
      0030C5 12 3B 41         [24]  656 	lcall	_printf
      0030C8 15 81            [12]  657 	dec	sp
      0030CA 15 81            [12]  658 	dec	sp
      0030CC 15 81            [12]  659 	dec	sp
                                    660 ;	8051_i2c_eeprom.c:50: }
      0030CE 22               [24]  661 	ret
                                    662 ;------------------------------------------------------------
                                    663 ;Allocation info for local variables in function 'command_menu'
                                    664 ;------------------------------------------------------------
                                    665 ;	8051_i2c_eeprom.c:52: void command_menu()
                                    666 ;	-----------------------------------------
                                    667 ;	 function command_menu
                                    668 ;	-----------------------------------------
      0030CF                        669 _command_menu:
                                    670 ;	8051_i2c_eeprom.c:54: printf("\n\r┌────────────┬────────────────────────────────────────────┐\n\r");
      0030CF 74 47            [12]  671 	mov	a,#___str_3
      0030D1 C0 E0            [24]  672 	push	acc
      0030D3 74 47            [12]  673 	mov	a,#(___str_3 >> 8)
      0030D5 C0 E0            [24]  674 	push	acc
      0030D7 74 80            [12]  675 	mov	a,#0x80
      0030D9 C0 E0            [24]  676 	push	acc
      0030DB 12 3B 41         [24]  677 	lcall	_printf
      0030DE 15 81            [12]  678 	dec	sp
      0030E0 15 81            [12]  679 	dec	sp
      0030E2 15 81            [12]  680 	dec	sp
                                    681 ;	8051_i2c_eeprom.c:55: printf("│  Command   │               Description                  │\n\r");
      0030E4 74 FD            [12]  682 	mov	a,#___str_4
      0030E6 C0 E0            [24]  683 	push	acc
      0030E8 74 47            [12]  684 	mov	a,#(___str_4 >> 8)
      0030EA C0 E0            [24]  685 	push	acc
      0030EC 74 80            [12]  686 	mov	a,#0x80
      0030EE C0 E0            [24]  687 	push	acc
      0030F0 12 3B 41         [24]  688 	lcall	_printf
      0030F3 15 81            [12]  689 	dec	sp
      0030F5 15 81            [12]  690 	dec	sp
      0030F7 15 81            [12]  691 	dec	sp
                                    692 ;	8051_i2c_eeprom.c:56: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      0030F9 74 41            [12]  693 	mov	a,#___str_5
      0030FB C0 E0            [24]  694 	push	acc
      0030FD 74 48            [12]  695 	mov	a,#(___str_5 >> 8)
      0030FF C0 E0            [24]  696 	push	acc
      003101 74 80            [12]  697 	mov	a,#0x80
      003103 C0 E0            [24]  698 	push	acc
      003105 12 3B 41         [24]  699 	lcall	_printf
      003108 15 81            [12]  700 	dec	sp
      00310A 15 81            [12]  701 	dec	sp
      00310C 15 81            [12]  702 	dec	sp
                                    703 ;	8051_i2c_eeprom.c:57: printf("│     R      │ Read from address                          │\n\r");
      00310E 74 F5            [12]  704 	mov	a,#___str_6
      003110 C0 E0            [24]  705 	push	acc
      003112 74 48            [12]  706 	mov	a,#(___str_6 >> 8)
      003114 C0 E0            [24]  707 	push	acc
      003116 74 80            [12]  708 	mov	a,#0x80
      003118 C0 E0            [24]  709 	push	acc
      00311A 12 3B 41         [24]  710 	lcall	_printf
      00311D 15 81            [12]  711 	dec	sp
      00311F 15 81            [12]  712 	dec	sp
      003121 15 81            [12]  713 	dec	sp
                                    714 ;	8051_i2c_eeprom.c:58: printf("│     W      │ Write data to address                      │\n\r");
      003123 74 39            [12]  715 	mov	a,#___str_7
      003125 C0 E0            [24]  716 	push	acc
      003127 74 49            [12]  717 	mov	a,#(___str_7 >> 8)
      003129 C0 E0            [24]  718 	push	acc
      00312B 74 80            [12]  719 	mov	a,#0x80
      00312D C0 E0            [24]  720 	push	acc
      00312F 12 3B 41         [24]  721 	lcall	_printf
      003132 15 81            [12]  722 	dec	sp
      003134 15 81            [12]  723 	dec	sp
      003136 15 81            [12]  724 	dec	sp
                                    725 ;	8051_i2c_eeprom.c:59: printf("│     H      │ Display hex dump                           │\n\r");
      003138 74 7D            [12]  726 	mov	a,#___str_8
      00313A C0 E0            [24]  727 	push	acc
      00313C 74 49            [12]  728 	mov	a,#(___str_8 >> 8)
      00313E C0 E0            [24]  729 	push	acc
      003140 74 80            [12]  730 	mov	a,#0x80
      003142 C0 E0            [24]  731 	push	acc
      003144 12 3B 41         [24]  732 	lcall	_printf
      003147 15 81            [12]  733 	dec	sp
      003149 15 81            [12]  734 	dec	sp
      00314B 15 81            [12]  735 	dec	sp
                                    736 ;	8051_i2c_eeprom.c:60: printf("│     X      │ Reset memory system                        │\n\r");
      00314D 74 C1            [12]  737 	mov	a,#___str_9
      00314F C0 E0            [24]  738 	push	acc
      003151 74 49            [12]  739 	mov	a,#(___str_9 >> 8)
      003153 C0 E0            [24]  740 	push	acc
      003155 74 80            [12]  741 	mov	a,#0x80
      003157 C0 E0            [24]  742 	push	acc
      003159 12 3B 41         [24]  743 	lcall	_printf
      00315C 15 81            [12]  744 	dec	sp
      00315E 15 81            [12]  745 	dec	sp
      003160 15 81            [12]  746 	dec	sp
                                    747 ;	8051_i2c_eeprom.c:61: printf("│     ?      │ Display this help menu                     │\n\r");
      003162 74 05            [12]  748 	mov	a,#___str_10
      003164 C0 E0            [24]  749 	push	acc
      003166 74 4A            [12]  750 	mov	a,#(___str_10 >> 8)
      003168 C0 E0            [24]  751 	push	acc
      00316A 74 80            [12]  752 	mov	a,#0x80
      00316C C0 E0            [24]  753 	push	acc
      00316E 12 3B 41         [24]  754 	lcall	_printf
      003171 15 81            [12]  755 	dec	sp
      003173 15 81            [12]  756 	dec	sp
      003175 15 81            [12]  757 	dec	sp
                                    758 ;	8051_i2c_eeprom.c:62: printf("│     Q      │ Quit program                               │\n\r");
      003177 74 49            [12]  759 	mov	a,#___str_11
      003179 C0 E0            [24]  760 	push	acc
      00317B 74 4A            [12]  761 	mov	a,#(___str_11 >> 8)
      00317D C0 E0            [24]  762 	push	acc
      00317F 74 80            [12]  763 	mov	a,#0x80
      003181 C0 E0            [24]  764 	push	acc
      003183 12 3B 41         [24]  765 	lcall	_printf
      003186 15 81            [12]  766 	dec	sp
      003188 15 81            [12]  767 	dec	sp
      00318A 15 81            [12]  768 	dec	sp
                                    769 ;	8051_i2c_eeprom.c:63: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      00318C 74 8D            [12]  770 	mov	a,#___str_12
      00318E C0 E0            [24]  771 	push	acc
      003190 74 4A            [12]  772 	mov	a,#(___str_12 >> 8)
      003192 C0 E0            [24]  773 	push	acc
      003194 74 80            [12]  774 	mov	a,#0x80
      003196 C0 E0            [24]  775 	push	acc
      003198 12 3B 41         [24]  776 	lcall	_printf
      00319B 15 81            [12]  777 	dec	sp
      00319D 15 81            [12]  778 	dec	sp
      00319F 15 81            [12]  779 	dec	sp
                                    780 ;	8051_i2c_eeprom.c:66: }
      0031A1 22               [24]  781 	ret
                                    782 ;------------------------------------------------------------
                                    783 ;Allocation info for local variables in function 'main'
                                    784 ;------------------------------------------------------------
                                    785 ;user_input                Allocated with name '_main_user_input_131072_55'
                                    786 ;addr                      Allocated with name '_main_addr_262145_58'
                                    787 ;data                      Allocated with name '_main_data_262146_59'
                                    788 ;addr                      Allocated with name '_main_addr_262145_61'
                                    789 ;------------------------------------------------------------
                                    790 ;	8051_i2c_eeprom.c:67: int main()
                                    791 ;	-----------------------------------------
                                    792 ;	 function main
                                    793 ;	-----------------------------------------
      0031A2                        794 _main:
                                    795 ;	8051_i2c_eeprom.c:70: P1 &= ~(1<<3);  // Set P1.3 as output
      0031A2 53 90 F7         [24]  796 	anl	_P1,#0xf7
                                    797 ;	8051_i2c_eeprom.c:71: P1 &= ~(1<<4);  // Set P1.4 as output
      0031A5 53 90 EF         [24]  798 	anl	_P1,#0xef
                                    799 ;	8051_i2c_eeprom.c:72: ui();
      0031A8 12 30 8F         [24]  800 	lcall	_ui
                                    801 ;	8051_i2c_eeprom.c:73: command_menu();
      0031AB 12 30 CF         [24]  802 	lcall	_command_menu
                                    803 ;	8051_i2c_eeprom.c:74: i2c_start();
      0031AE 12 3A 02         [24]  804 	lcall	_i2c_start
                                    805 ;	8051_i2c_eeprom.c:75: while(1)
      0031B1                        806 00107$:
                                    807 ;	8051_i2c_eeprom.c:77: char user_input = getchar();
      0031B1 12 30 81         [24]  808 	lcall	_getchar
      0031B4 AE 82            [24]  809 	mov	r6,dpl
                                    810 ;	8051_i2c_eeprom.c:78: printf("$ %c\n\r", user_input);
      0031B6 8E 05            [24]  811 	mov	ar5,r6
      0031B8 7F 00            [12]  812 	mov	r7,#0x00
      0031BA C0 06            [24]  813 	push	ar6
      0031BC C0 05            [24]  814 	push	ar5
      0031BE C0 07            [24]  815 	push	ar7
      0031C0 74 41            [12]  816 	mov	a,#___str_13
      0031C2 C0 E0            [24]  817 	push	acc
      0031C4 74 4B            [12]  818 	mov	a,#(___str_13 >> 8)
      0031C6 C0 E0            [24]  819 	push	acc
      0031C8 74 80            [12]  820 	mov	a,#0x80
      0031CA C0 E0            [24]  821 	push	acc
      0031CC 12 3B 41         [24]  822 	lcall	_printf
      0031CF E5 81            [12]  823 	mov	a,sp
      0031D1 24 FB            [12]  824 	add	a,#0xfb
      0031D3 F5 81            [12]  825 	mov	sp,a
      0031D5 D0 06            [24]  826 	pop	ar6
                                    827 ;	8051_i2c_eeprom.c:79: switch(user_input)
      0031D7 BE 3F 03         [24]  828 	cjne	r6,#0x3f,00127$
      0031DA 02 32 68         [24]  829 	ljmp	00103$
      0031DD                        830 00127$:
      0031DD BE 52 02         [24]  831 	cjne	r6,#0x52,00128$
      0031E0 80 3F            [24]  832 	sjmp	00102$
      0031E2                        833 00128$:
      0031E2 BE 57 02         [24]  834 	cjne	r6,#0x57,00129$
      0031E5 80 03            [24]  835 	sjmp	00130$
      0031E7                        836 00129$:
      0031E7 02 32 6E         [24]  837 	ljmp	00104$
      0031EA                        838 00130$:
                                    839 ;	8051_i2c_eeprom.c:83: printf("\n┌─────────────── WRITE OPERATION ──────────────┐\n\r");
      0031EA 74 48            [12]  840 	mov	a,#___str_14
      0031EC C0 E0            [24]  841 	push	acc
      0031EE 74 4B            [12]  842 	mov	a,#(___str_14 >> 8)
      0031F0 C0 E0            [24]  843 	push	acc
      0031F2 74 80            [12]  844 	mov	a,#0x80
      0031F4 C0 E0            [24]  845 	push	acc
      0031F6 12 3B 41         [24]  846 	lcall	_printf
      0031F9 15 81            [12]  847 	dec	sp
      0031FB 15 81            [12]  848 	dec	sp
      0031FD 15 81            [12]  849 	dec	sp
                                    850 ;	8051_i2c_eeprom.c:85: addr = take_address(); 
      0031FF 12 32 86         [24]  851 	lcall	_take_address
      003202 AE 82            [24]  852 	mov	r6,dpl
      003204 AF 83            [24]  853 	mov	r7,dph
                                    854 ;	8051_i2c_eeprom.c:87: data = take_data();
      003206 C0 07            [24]  855 	push	ar7
      003208 C0 06            [24]  856 	push	ar6
      00320A 12 34 A7         [24]  857 	lcall	_take_data
      00320D AD 82            [24]  858 	mov	r5,dpl
      00320F D0 06            [24]  859 	pop	ar6
      003211 D0 07            [24]  860 	pop	ar7
                                    861 ;	8051_i2c_eeprom.c:88: eeprom_write(addr, data);
      003213 90 04 0F         [24]  862 	mov	dptr,#_eeprom_write_PARM_2
      003216 ED               [12]  863 	mov	a,r5
      003217 F0               [24]  864 	movx	@dptr,a
      003218 8E 82            [24]  865 	mov	dpl,r6
      00321A 8F 83            [24]  866 	mov	dph,r7
      00321C 12 36 20         [24]  867 	lcall	_eeprom_write
                                    868 ;	8051_i2c_eeprom.c:89: break;
                                    869 ;	8051_i2c_eeprom.c:91: case 'R':
      00321F 80 90            [24]  870 	sjmp	00107$
      003221                        871 00102$:
                                    872 ;	8051_i2c_eeprom.c:93: printf("\n┌─────────────── READ OPERATION ───────────────┐\n\r");
      003221 74 BA            [12]  873 	mov	a,#___str_15
      003223 C0 E0            [24]  874 	push	acc
      003225 74 4B            [12]  875 	mov	a,#(___str_15 >> 8)
      003227 C0 E0            [24]  876 	push	acc
      003229 74 80            [12]  877 	mov	a,#0x80
      00322B C0 E0            [24]  878 	push	acc
      00322D 12 3B 41         [24]  879 	lcall	_printf
      003230 15 81            [12]  880 	dec	sp
      003232 15 81            [12]  881 	dec	sp
      003234 15 81            [12]  882 	dec	sp
                                    883 ;	8051_i2c_eeprom.c:95: addr = take_address(); 
      003236 12 32 86         [24]  884 	lcall	_take_address
      003239 AE 82            [24]  885 	mov	r6,dpl
      00323B AF 83            [24]  886 	mov	r7,dph
                                    887 ;	8051_i2c_eeprom.c:96: printf("| Reading from Address 0x%03X           |\n\r", addr);
      00323D C0 07            [24]  888 	push	ar7
      00323F C0 06            [24]  889 	push	ar6
      003241 C0 06            [24]  890 	push	ar6
      003243 C0 07            [24]  891 	push	ar7
      003245 74 2E            [12]  892 	mov	a,#___str_16
      003247 C0 E0            [24]  893 	push	acc
      003249 74 4C            [12]  894 	mov	a,#(___str_16 >> 8)
      00324B C0 E0            [24]  895 	push	acc
      00324D 74 80            [12]  896 	mov	a,#0x80
      00324F C0 E0            [24]  897 	push	acc
      003251 12 3B 41         [24]  898 	lcall	_printf
      003254 E5 81            [12]  899 	mov	a,sp
      003256 24 FB            [12]  900 	add	a,#0xfb
      003258 F5 81            [12]  901 	mov	sp,a
      00325A D0 06            [24]  902 	pop	ar6
      00325C D0 07            [24]  903 	pop	ar7
                                    904 ;	8051_i2c_eeprom.c:97: eeprom_read(addr);
      00325E 8E 82            [24]  905 	mov	dpl,r6
      003260 8F 83            [24]  906 	mov	dph,r7
      003262 12 37 A2         [24]  907 	lcall	_eeprom_read
                                    908 ;	8051_i2c_eeprom.c:98: break;
      003265 02 31 B1         [24]  909 	ljmp	00107$
                                    910 ;	8051_i2c_eeprom.c:101: case '?':
      003268                        911 00103$:
                                    912 ;	8051_i2c_eeprom.c:102: command_menu();
      003268 12 30 CF         [24]  913 	lcall	_command_menu
                                    914 ;	8051_i2c_eeprom.c:103: break;
      00326B 02 31 B1         [24]  915 	ljmp	00107$
                                    916 ;	8051_i2c_eeprom.c:105: default:
      00326E                        917 00104$:
                                    918 ;	8051_i2c_eeprom.c:106: printf("INVALID INPUT\n\r");
      00326E 74 5A            [12]  919 	mov	a,#___str_17
      003270 C0 E0            [24]  920 	push	acc
      003272 74 4C            [12]  921 	mov	a,#(___str_17 >> 8)
      003274 C0 E0            [24]  922 	push	acc
      003276 74 80            [12]  923 	mov	a,#0x80
      003278 C0 E0            [24]  924 	push	acc
      00327A 12 3B 41         [24]  925 	lcall	_printf
      00327D 15 81            [12]  926 	dec	sp
      00327F 15 81            [12]  927 	dec	sp
      003281 15 81            [12]  928 	dec	sp
                                    929 ;	8051_i2c_eeprom.c:108: }
                                    930 ;	8051_i2c_eeprom.c:111: }
      003283 02 31 B1         [24]  931 	ljmp	00107$
                                    932 ;------------------------------------------------------------
                                    933 ;Allocation info for local variables in function 'take_address'
                                    934 ;------------------------------------------------------------
                                    935 ;input                     Allocated with name '_take_address_input_65537_63'
                                    936 ;i                         Allocated with name '_take_address_i_65537_63'
                                    937 ;c                         Allocated with name '_take_address_c_65537_63'
                                    938 ;address                   Allocated with name '_take_address_address_65538_67'
                                    939 ;block                     Allocated with name '_take_address_block_65539_71'
                                    940 ;------------------------------------------------------------
                                    941 ;	8051_i2c_eeprom.c:113: unsigned int take_address() 
                                    942 ;	-----------------------------------------
                                    943 ;	 function take_address
                                    944 ;	-----------------------------------------
      003286                        945 _take_address:
                                    946 ;	8051_i2c_eeprom.c:115: printf("│ Enter address (hex, up to 3 characters): \n\r|");
      003286 74 6A            [12]  947 	mov	a,#___str_18
      003288 C0 E0            [24]  948 	push	acc
      00328A 74 4C            [12]  949 	mov	a,#(___str_18 >> 8)
      00328C C0 E0            [24]  950 	push	acc
      00328E 74 80            [12]  951 	mov	a,#0x80
      003290 C0 E0            [24]  952 	push	acc
      003292 12 3B 41         [24]  953 	lcall	_printf
      003295 15 81            [12]  954 	dec	sp
      003297 15 81            [12]  955 	dec	sp
      003299 15 81            [12]  956 	dec	sp
                                    957 ;	8051_i2c_eeprom.c:116: char input[4] = {0};  // Array for 3 hex chars + null terminator
      00329B 90 04 04         [24]  958 	mov	dptr,#_take_address_input_65537_63
      00329E E4               [12]  959 	clr	a
      00329F F0               [24]  960 	movx	@dptr,a
      0032A0 90 04 05         [24]  961 	mov	dptr,#(_take_address_input_65537_63 + 0x0001)
      0032A3 F0               [24]  962 	movx	@dptr,a
      0032A4 90 04 06         [24]  963 	mov	dptr,#(_take_address_input_65537_63 + 0x0002)
      0032A7 F0               [24]  964 	movx	@dptr,a
      0032A8 90 04 07         [24]  965 	mov	dptr,#(_take_address_input_65537_63 + 0x0003)
      0032AB F0               [24]  966 	movx	@dptr,a
                                    967 ;	8051_i2c_eeprom.c:120: printf("$ ");
      0032AC 74 9B            [12]  968 	mov	a,#___str_19
      0032AE C0 E0            [24]  969 	push	acc
      0032B0 74 4C            [12]  970 	mov	a,#(___str_19 >> 8)
      0032B2 C0 E0            [24]  971 	push	acc
      0032B4 74 80            [12]  972 	mov	a,#0x80
      0032B6 C0 E0            [24]  973 	push	acc
      0032B8 12 3B 41         [24]  974 	lcall	_printf
      0032BB 15 81            [12]  975 	dec	sp
      0032BD 15 81            [12]  976 	dec	sp
      0032BF 15 81            [12]  977 	dec	sp
                                    978 ;	8051_i2c_eeprom.c:122: while (i < 3) {
      0032C1 7E 00            [12]  979 	mov	r6,#0x00
      0032C3 7F 00            [12]  980 	mov	r7,#0x00
      0032C5                        981 00111$:
      0032C5 C3               [12]  982 	clr	c
      0032C6 EE               [12]  983 	mov	a,r6
      0032C7 94 03            [12]  984 	subb	a,#0x03
      0032C9 EF               [12]  985 	mov	a,r7
      0032CA 64 80            [12]  986 	xrl	a,#0x80
      0032CC 94 80            [12]  987 	subb	a,#0x80
      0032CE 50 5B            [24]  988 	jnc	00113$
                                    989 ;	8051_i2c_eeprom.c:124: c = getchar();
      0032D0 C0 07            [24]  990 	push	ar7
      0032D2 C0 06            [24]  991 	push	ar6
      0032D4 12 30 81         [24]  992 	lcall	_getchar
      0032D7 AC 82            [24]  993 	mov	r4,dpl
      0032D9 AD 83            [24]  994 	mov	r5,dph
      0032DB D0 06            [24]  995 	pop	ar6
      0032DD D0 07            [24]  996 	pop	ar7
                                    997 ;	8051_i2c_eeprom.c:127: if (c == '\r' || c == '\n') {
      0032DF BC 0D 02         [24]  998 	cjne	r4,#0x0d,00200$
      0032E2 80 47            [24]  999 	sjmp	00113$
      0032E4                       1000 00200$:
      0032E4 BC 0A 02         [24] 1001 	cjne	r4,#0x0a,00201$
      0032E7 80 42            [24] 1002 	sjmp	00113$
      0032E9                       1003 00201$:
                                   1004 ;	8051_i2c_eeprom.c:132: if ((c >= '0' && c <= '9') || 
      0032E9 BC 30 00         [24] 1005 	cjne	r4,#0x30,00202$
      0032EC                       1006 00202$:
      0032EC 40 05            [24] 1007 	jc	00108$
      0032EE EC               [12] 1008 	mov	a,r4
      0032EF 24 C6            [12] 1009 	add	a,#0xff - 0x39
      0032F1 50 14            [24] 1010 	jnc	00104$
      0032F3                       1011 00108$:
                                   1012 ;	8051_i2c_eeprom.c:133: (c >= 'a' && c <= 'f') || 
      0032F3 BC 61 00         [24] 1013 	cjne	r4,#0x61,00205$
      0032F6                       1014 00205$:
      0032F6 40 05            [24] 1015 	jc	00110$
      0032F8 EC               [12] 1016 	mov	a,r4
      0032F9 24 99            [12] 1017 	add	a,#0xff - 0x66
      0032FB 50 0A            [24] 1018 	jnc	00104$
      0032FD                       1019 00110$:
                                   1020 ;	8051_i2c_eeprom.c:134: (c >= 'A' && c <= 'F')) {
      0032FD BC 41 00         [24] 1021 	cjne	r4,#0x41,00208$
      003300                       1022 00208$:
      003300 40 C3            [24] 1023 	jc	00111$
      003302 EC               [12] 1024 	mov	a,r4
      003303 24 B9            [12] 1025 	add	a,#0xff - 0x46
      003305 40 BE            [24] 1026 	jc	00111$
      003307                       1027 00104$:
                                   1028 ;	8051_i2c_eeprom.c:136: input[i] = c;
      003307 EE               [12] 1029 	mov	a,r6
      003308 24 04            [12] 1030 	add	a,#_take_address_input_65537_63
      00330A F5 82            [12] 1031 	mov	dpl,a
      00330C EF               [12] 1032 	mov	a,r7
      00330D 34 04            [12] 1033 	addc	a,#(_take_address_input_65537_63 >> 8)
      00330F F5 83            [12] 1034 	mov	dph,a
      003311 EC               [12] 1035 	mov	a,r4
      003312 F0               [24] 1036 	movx	@dptr,a
                                   1037 ;	8051_i2c_eeprom.c:137: putchar(c);  // Echo character back
      003313 7D 00            [12] 1038 	mov	r5,#0x00
      003315 8C 82            [24] 1039 	mov	dpl,r4
      003317 8D 83            [24] 1040 	mov	dph,r5
      003319 C0 07            [24] 1041 	push	ar7
      00331B C0 06            [24] 1042 	push	ar6
      00331D 12 30 62         [24] 1043 	lcall	_putchar
      003320 D0 06            [24] 1044 	pop	ar6
      003322 D0 07            [24] 1045 	pop	ar7
                                   1046 ;	8051_i2c_eeprom.c:138: i++;
      003324 0E               [12] 1047 	inc	r6
      003325 BE 00 9D         [24] 1048 	cjne	r6,#0x00,00111$
      003328 0F               [12] 1049 	inc	r7
      003329 80 9A            [24] 1050 	sjmp	00111$
      00332B                       1051 00113$:
                                   1052 ;	8051_i2c_eeprom.c:142: input[i] = '\0';  // Null-terminate the string
      00332B EE               [12] 1053 	mov	a,r6
      00332C 24 04            [12] 1054 	add	a,#_take_address_input_65537_63
      00332E F5 82            [12] 1055 	mov	dpl,a
      003330 EF               [12] 1056 	mov	a,r7
      003331 34 04            [12] 1057 	addc	a,#(_take_address_input_65537_63 >> 8)
      003333 F5 83            [12] 1058 	mov	dph,a
      003335 E4               [12] 1059 	clr	a
      003336 F0               [24] 1060 	movx	@dptr,a
                                   1061 ;	8051_i2c_eeprom.c:145: unsigned int address = 0;
      003337 90 04 08         [24] 1062 	mov	dptr,#_take_address_address_65538_67
      00333A F0               [24] 1063 	movx	@dptr,a
      00333B A3               [24] 1064 	inc	dptr
      00333C F0               [24] 1065 	movx	@dptr,a
                                   1066 ;	8051_i2c_eeprom.c:146: for(i = 0; input[i] != '\0'; i++) {
      00333D 7E 00            [12] 1067 	mov	r6,#0x00
      00333F 7F 00            [12] 1068 	mov	r7,#0x00
      003341                       1069 00129$:
      003341 EE               [12] 1070 	mov	a,r6
      003342 24 04            [12] 1071 	add	a,#_take_address_input_65537_63
      003344 F5 82            [12] 1072 	mov	dpl,a
      003346 EF               [12] 1073 	mov	a,r7
      003347 34 04            [12] 1074 	addc	a,#(_take_address_input_65537_63 >> 8)
      003349 F5 83            [12] 1075 	mov	dph,a
      00334B E0               [24] 1076 	movx	a,@dptr
      00334C FD               [12] 1077 	mov	r5,a
      00334D 70 03            [24] 1078 	jnz	00212$
      00334F 02 33 FA         [24] 1079 	ljmp	00125$
      003352                       1080 00212$:
                                   1081 ;	8051_i2c_eeprom.c:147: address = address * 16;
      003352 90 04 08         [24] 1082 	mov	dptr,#_take_address_address_65538_67
      003355 E0               [24] 1083 	movx	a,@dptr
      003356 FB               [12] 1084 	mov	r3,a
      003357 A3               [24] 1085 	inc	dptr
      003358 E0               [24] 1086 	movx	a,@dptr
      003359 C4               [12] 1087 	swap	a
      00335A 54 F0            [12] 1088 	anl	a,#0xf0
      00335C CB               [12] 1089 	xch	a,r3
      00335D C4               [12] 1090 	swap	a
      00335E CB               [12] 1091 	xch	a,r3
      00335F 6B               [12] 1092 	xrl	a,r3
      003360 CB               [12] 1093 	xch	a,r3
      003361 54 F0            [12] 1094 	anl	a,#0xf0
      003363 CB               [12] 1095 	xch	a,r3
      003364 6B               [12] 1096 	xrl	a,r3
      003365 FC               [12] 1097 	mov	r4,a
      003366 90 04 08         [24] 1098 	mov	dptr,#_take_address_address_65538_67
      003369 EB               [12] 1099 	mov	a,r3
      00336A F0               [24] 1100 	movx	@dptr,a
      00336B EC               [12] 1101 	mov	a,r4
      00336C A3               [24] 1102 	inc	dptr
      00336D F0               [24] 1103 	movx	@dptr,a
                                   1104 ;	8051_i2c_eeprom.c:148: if(input[i] >= '0' && input[i] <= '9')
      00336E BD 30 00         [24] 1105 	cjne	r5,#0x30,00213$
      003371                       1106 00213$:
      003371 40 23            [24] 1107 	jc	00122$
      003373 ED               [12] 1108 	mov	a,r5
      003374 24 C6            [12] 1109 	add	a,#0xff - 0x39
      003376 40 1E            [24] 1110 	jc	00122$
                                   1111 ;	8051_i2c_eeprom.c:149: address += input[i] - '0';
      003378 7C 00            [12] 1112 	mov	r4,#0x00
      00337A ED               [12] 1113 	mov	a,r5
      00337B 24 D0            [12] 1114 	add	a,#0xd0
      00337D FD               [12] 1115 	mov	r5,a
      00337E EC               [12] 1116 	mov	a,r4
      00337F 34 FF            [12] 1117 	addc	a,#0xff
      003381 FC               [12] 1118 	mov	r4,a
      003382 90 04 08         [24] 1119 	mov	dptr,#_take_address_address_65538_67
      003385 E0               [24] 1120 	movx	a,@dptr
      003386 FA               [12] 1121 	mov	r2,a
      003387 A3               [24] 1122 	inc	dptr
      003388 E0               [24] 1123 	movx	a,@dptr
      003389 FB               [12] 1124 	mov	r3,a
      00338A 90 04 08         [24] 1125 	mov	dptr,#_take_address_address_65538_67
      00338D ED               [12] 1126 	mov	a,r5
      00338E 2A               [12] 1127 	add	a,r2
      00338F F0               [24] 1128 	movx	@dptr,a
      003390 EC               [12] 1129 	mov	a,r4
      003391 3B               [12] 1130 	addc	a,r3
      003392 A3               [24] 1131 	inc	dptr
      003393 F0               [24] 1132 	movx	@dptr,a
      003394 80 5C            [24] 1133 	sjmp	00130$
      003396                       1134 00122$:
                                   1135 ;	8051_i2c_eeprom.c:150: else if(input[i] >= 'A' && input[i] <= 'F')
      003396 EE               [12] 1136 	mov	a,r6
      003397 24 04            [12] 1137 	add	a,#_take_address_input_65537_63
      003399 F5 82            [12] 1138 	mov	dpl,a
      00339B EF               [12] 1139 	mov	a,r7
      00339C 34 04            [12] 1140 	addc	a,#(_take_address_input_65537_63 >> 8)
      00339E F5 83            [12] 1141 	mov	dph,a
      0033A0 E0               [24] 1142 	movx	a,@dptr
      0033A1 FD               [12] 1143 	mov	r5,a
      0033A2 BD 41 00         [24] 1144 	cjne	r5,#0x41,00216$
      0033A5                       1145 00216$:
      0033A5 40 25            [24] 1146 	jc	00118$
      0033A7 ED               [12] 1147 	mov	a,r5
      0033A8 24 B9            [12] 1148 	add	a,#0xff - 0x46
      0033AA 40 20            [24] 1149 	jc	00118$
                                   1150 ;	8051_i2c_eeprom.c:151: address += input[i] - 'A' + 10;
      0033AC 8D 03            [24] 1151 	mov	ar3,r5
      0033AE 7C 00            [12] 1152 	mov	r4,#0x00
      0033B0 74 C9            [12] 1153 	mov	a,#0xc9
      0033B2 2B               [12] 1154 	add	a,r3
      0033B3 FB               [12] 1155 	mov	r3,a
      0033B4 74 FF            [12] 1156 	mov	a,#0xff
      0033B6 3C               [12] 1157 	addc	a,r4
      0033B7 FC               [12] 1158 	mov	r4,a
      0033B8 90 04 08         [24] 1159 	mov	dptr,#_take_address_address_65538_67
      0033BB E0               [24] 1160 	movx	a,@dptr
      0033BC F9               [12] 1161 	mov	r1,a
      0033BD A3               [24] 1162 	inc	dptr
      0033BE E0               [24] 1163 	movx	a,@dptr
      0033BF FA               [12] 1164 	mov	r2,a
      0033C0 90 04 08         [24] 1165 	mov	dptr,#_take_address_address_65538_67
      0033C3 EB               [12] 1166 	mov	a,r3
      0033C4 29               [12] 1167 	add	a,r1
      0033C5 F0               [24] 1168 	movx	@dptr,a
      0033C6 EC               [12] 1169 	mov	a,r4
      0033C7 3A               [12] 1170 	addc	a,r2
      0033C8 A3               [24] 1171 	inc	dptr
      0033C9 F0               [24] 1172 	movx	@dptr,a
      0033CA 80 26            [24] 1173 	sjmp	00130$
      0033CC                       1174 00118$:
                                   1175 ;	8051_i2c_eeprom.c:152: else if(input[i] >= 'a' && input[i] <= 'f')
      0033CC BD 61 00         [24] 1176 	cjne	r5,#0x61,00219$
      0033CF                       1177 00219$:
      0033CF 40 21            [24] 1178 	jc	00130$
      0033D1 ED               [12] 1179 	mov	a,r5
      0033D2 24 99            [12] 1180 	add	a,#0xff - 0x66
      0033D4 40 1C            [24] 1181 	jc	00130$
                                   1182 ;	8051_i2c_eeprom.c:153: address += input[i] - 'a' + 10;
      0033D6 7C 00            [12] 1183 	mov	r4,#0x00
      0033D8 74 A9            [12] 1184 	mov	a,#0xa9
      0033DA 2D               [12] 1185 	add	a,r5
      0033DB FD               [12] 1186 	mov	r5,a
      0033DC 74 FF            [12] 1187 	mov	a,#0xff
      0033DE 3C               [12] 1188 	addc	a,r4
      0033DF FC               [12] 1189 	mov	r4,a
      0033E0 90 04 08         [24] 1190 	mov	dptr,#_take_address_address_65538_67
      0033E3 E0               [24] 1191 	movx	a,@dptr
      0033E4 FA               [12] 1192 	mov	r2,a
      0033E5 A3               [24] 1193 	inc	dptr
      0033E6 E0               [24] 1194 	movx	a,@dptr
      0033E7 FB               [12] 1195 	mov	r3,a
      0033E8 90 04 08         [24] 1196 	mov	dptr,#_take_address_address_65538_67
      0033EB ED               [12] 1197 	mov	a,r5
      0033EC 2A               [12] 1198 	add	a,r2
      0033ED F0               [24] 1199 	movx	@dptr,a
      0033EE EC               [12] 1200 	mov	a,r4
      0033EF 3B               [12] 1201 	addc	a,r3
      0033F0 A3               [24] 1202 	inc	dptr
      0033F1 F0               [24] 1203 	movx	@dptr,a
      0033F2                       1204 00130$:
                                   1205 ;	8051_i2c_eeprom.c:146: for(i = 0; input[i] != '\0'; i++) {
      0033F2 0E               [12] 1206 	inc	r6
      0033F3 BE 00 01         [24] 1207 	cjne	r6,#0x00,00222$
      0033F6 0F               [12] 1208 	inc	r7
      0033F7                       1209 00222$:
      0033F7 02 33 41         [24] 1210 	ljmp	00129$
      0033FA                       1211 00125$:
                                   1212 ;	8051_i2c_eeprom.c:156: printf("\n\r│ Entered address: 0x%03X\n\r", address);
      0033FA 90 04 08         [24] 1213 	mov	dptr,#_take_address_address_65538_67
      0033FD E0               [24] 1214 	movx	a,@dptr
      0033FE FE               [12] 1215 	mov	r6,a
      0033FF A3               [24] 1216 	inc	dptr
      003400 E0               [24] 1217 	movx	a,@dptr
      003401 FF               [12] 1218 	mov	r7,a
      003402 C0 07            [24] 1219 	push	ar7
      003404 C0 06            [24] 1220 	push	ar6
      003406 C0 06            [24] 1221 	push	ar6
      003408 C0 07            [24] 1222 	push	ar7
      00340A 74 9E            [12] 1223 	mov	a,#___str_20
      00340C C0 E0            [24] 1224 	push	acc
      00340E 74 4C            [12] 1225 	mov	a,#(___str_20 >> 8)
      003410 C0 E0            [24] 1226 	push	acc
      003412 74 80            [12] 1227 	mov	a,#0x80
      003414 C0 E0            [24] 1228 	push	acc
      003416 12 3B 41         [24] 1229 	lcall	_printf
      003419 E5 81            [12] 1230 	mov	a,sp
      00341B 24 FB            [12] 1231 	add	a,#0xfb
      00341D F5 81            [12] 1232 	mov	sp,a
      00341F D0 06            [24] 1233 	pop	ar6
      003421 D0 07            [24] 1234 	pop	ar7
                                   1235 ;	8051_i2c_eeprom.c:157: if(address > 0x7ff) 
      003423 C3               [12] 1236 	clr	c
      003424 74 FF            [12] 1237 	mov	a,#0xff
      003426 9E               [12] 1238 	subb	a,r6
      003427 74 07            [12] 1239 	mov	a,#0x07
      003429 9F               [12] 1240 	subb	a,r7
      00342A 50 20            [24] 1241 	jnc	00127$
                                   1242 ;	8051_i2c_eeprom.c:159: printf("|           Address out of Range                  |\n\r");
      00342C 74 BE            [12] 1243 	mov	a,#___str_21
      00342E C0 E0            [24] 1244 	push	acc
      003430 74 4C            [12] 1245 	mov	a,#(___str_21 >> 8)
      003432 C0 E0            [24] 1246 	push	acc
      003434 74 80            [12] 1247 	mov	a,#0x80
      003436 C0 E0            [24] 1248 	push	acc
      003438 12 3B 41         [24] 1249 	lcall	_printf
      00343B 15 81            [12] 1250 	dec	sp
      00343D 15 81            [12] 1251 	dec	sp
      00343F 15 81            [12] 1252 	dec	sp
                                   1253 ;	8051_i2c_eeprom.c:160: address_range_flag = 0;
      003441 90 04 51         [24] 1254 	mov	dptr,#_address_range_flag
      003444 E4               [12] 1255 	clr	a
      003445 F0               [24] 1256 	movx	@dptr,a
      003446 A3               [24] 1257 	inc	dptr
      003447 F0               [24] 1258 	movx	@dptr,a
                                   1259 ;	8051_i2c_eeprom.c:161: return 0;
      003448 90 00 00         [24] 1260 	mov	dptr,#0x0000
      00344B 22               [24] 1261 	ret
      00344C                       1262 00127$:
                                   1263 ;	8051_i2c_eeprom.c:163: unsigned int block = address/256;       //block address
      00344C 8F 04            [24] 1264 	mov	ar4,r7
      00344E 7D 00            [12] 1265 	mov	r5,#0x00
                                   1266 ;	8051_i2c_eeprom.c:164: printf("Block number %d\n\r", block);
      003450 C0 07            [24] 1267 	push	ar7
      003452 C0 06            [24] 1268 	push	ar6
      003454 C0 04            [24] 1269 	push	ar4
      003456 C0 05            [24] 1270 	push	ar5
      003458 74 F4            [12] 1271 	mov	a,#___str_22
      00345A C0 E0            [24] 1272 	push	acc
      00345C 74 4C            [12] 1273 	mov	a,#(___str_22 >> 8)
      00345E C0 E0            [24] 1274 	push	acc
      003460 74 80            [12] 1275 	mov	a,#0x80
      003462 C0 E0            [24] 1276 	push	acc
      003464 12 3B 41         [24] 1277 	lcall	_printf
      003467 E5 81            [12] 1278 	mov	a,sp
      003469 24 FB            [12] 1279 	add	a,#0xfb
      00346B F5 81            [12] 1280 	mov	sp,a
      00346D D0 06            [24] 1281 	pop	ar6
      00346F D0 07            [24] 1282 	pop	ar7
                                   1283 ;	8051_i2c_eeprom.c:165: address = address%256;     //word address
      003471 90 04 08         [24] 1284 	mov	dptr,#_take_address_address_65538_67
      003474 EE               [12] 1285 	mov	a,r6
      003475 F0               [24] 1286 	movx	@dptr,a
      003476 E4               [12] 1287 	clr	a
      003477 A3               [24] 1288 	inc	dptr
      003478 F0               [24] 1289 	movx	@dptr,a
                                   1290 ;	8051_i2c_eeprom.c:166: printf("address now  0x%03X\n\r", address);
      003479 90 04 08         [24] 1291 	mov	dptr,#_take_address_address_65538_67
      00347C E0               [24] 1292 	movx	a,@dptr
      00347D FE               [12] 1293 	mov	r6,a
      00347E A3               [24] 1294 	inc	dptr
      00347F E0               [24] 1295 	movx	a,@dptr
      003480 FF               [12] 1296 	mov	r7,a
      003481 C0 07            [24] 1297 	push	ar7
      003483 C0 06            [24] 1298 	push	ar6
      003485 C0 06            [24] 1299 	push	ar6
      003487 C0 07            [24] 1300 	push	ar7
      003489 74 06            [12] 1301 	mov	a,#___str_23
      00348B C0 E0            [24] 1302 	push	acc
      00348D 74 4D            [12] 1303 	mov	a,#(___str_23 >> 8)
      00348F C0 E0            [24] 1304 	push	acc
      003491 74 80            [12] 1305 	mov	a,#0x80
      003493 C0 E0            [24] 1306 	push	acc
      003495 12 3B 41         [24] 1307 	lcall	_printf
      003498 E5 81            [12] 1308 	mov	a,sp
      00349A 24 FB            [12] 1309 	add	a,#0xfb
      00349C F5 81            [12] 1310 	mov	sp,a
      00349E D0 06            [24] 1311 	pop	ar6
      0034A0 D0 07            [24] 1312 	pop	ar7
                                   1313 ;	8051_i2c_eeprom.c:168: return address;
      0034A2 8E 82            [24] 1314 	mov	dpl,r6
      0034A4 8F 83            [24] 1315 	mov	dph,r7
                                   1316 ;	8051_i2c_eeprom.c:169: }
      0034A6 22               [24] 1317 	ret
                                   1318 ;------------------------------------------------------------
                                   1319 ;Allocation info for local variables in function 'take_data'
                                   1320 ;------------------------------------------------------------
                                   1321 ;input                     Allocated with name '_take_data_input_65537_73'
                                   1322 ;i                         Allocated with name '_take_data_i_65537_73'
                                   1323 ;c                         Allocated with name '_take_data_c_65537_73'
                                   1324 ;data                      Allocated with name '_take_data_data_65538_77'
                                   1325 ;------------------------------------------------------------
                                   1326 ;	8051_i2c_eeprom.c:171: unsigned char take_data()
                                   1327 ;	-----------------------------------------
                                   1328 ;	 function take_data
                                   1329 ;	-----------------------------------------
      0034A7                       1330 _take_data:
                                   1331 ;	8051_i2c_eeprom.c:173: printf("│ Enter data (hex, up to 2 characters): \n\r|");
      0034A7 74 1C            [12] 1332 	mov	a,#___str_24
      0034A9 C0 E0            [24] 1333 	push	acc
      0034AB 74 4D            [12] 1334 	mov	a,#(___str_24 >> 8)
      0034AD C0 E0            [24] 1335 	push	acc
      0034AF 74 80            [12] 1336 	mov	a,#0x80
      0034B1 C0 E0            [24] 1337 	push	acc
      0034B3 12 3B 41         [24] 1338 	lcall	_printf
      0034B6 15 81            [12] 1339 	dec	sp
      0034B8 15 81            [12] 1340 	dec	sp
      0034BA 15 81            [12] 1341 	dec	sp
                                   1342 ;	8051_i2c_eeprom.c:174: char input[4] = {0};  // Array for 3 hex chars + null terminator
      0034BC 90 04 0A         [24] 1343 	mov	dptr,#_take_data_input_65537_73
      0034BF E4               [12] 1344 	clr	a
      0034C0 F0               [24] 1345 	movx	@dptr,a
      0034C1 90 04 0B         [24] 1346 	mov	dptr,#(_take_data_input_65537_73 + 0x0001)
      0034C4 F0               [24] 1347 	movx	@dptr,a
      0034C5 90 04 0C         [24] 1348 	mov	dptr,#(_take_data_input_65537_73 + 0x0002)
      0034C8 F0               [24] 1349 	movx	@dptr,a
      0034C9 90 04 0D         [24] 1350 	mov	dptr,#(_take_data_input_65537_73 + 0x0003)
      0034CC F0               [24] 1351 	movx	@dptr,a
                                   1352 ;	8051_i2c_eeprom.c:178: printf("$ ");
      0034CD 74 9B            [12] 1353 	mov	a,#___str_19
      0034CF C0 E0            [24] 1354 	push	acc
      0034D1 74 4C            [12] 1355 	mov	a,#(___str_19 >> 8)
      0034D3 C0 E0            [24] 1356 	push	acc
      0034D5 74 80            [12] 1357 	mov	a,#0x80
      0034D7 C0 E0            [24] 1358 	push	acc
      0034D9 12 3B 41         [24] 1359 	lcall	_printf
      0034DC 15 81            [12] 1360 	dec	sp
      0034DE 15 81            [12] 1361 	dec	sp
      0034E0 15 81            [12] 1362 	dec	sp
                                   1363 ;	8051_i2c_eeprom.c:180: while (i < 3) {
      0034E2 7E 00            [12] 1364 	mov	r6,#0x00
      0034E4 7F 00            [12] 1365 	mov	r7,#0x00
      0034E6                       1366 00111$:
      0034E6 C3               [12] 1367 	clr	c
      0034E7 EE               [12] 1368 	mov	a,r6
      0034E8 94 03            [12] 1369 	subb	a,#0x03
      0034EA EF               [12] 1370 	mov	a,r7
      0034EB 64 80            [12] 1371 	xrl	a,#0x80
      0034ED 94 80            [12] 1372 	subb	a,#0x80
      0034EF 50 5B            [24] 1373 	jnc	00113$
                                   1374 ;	8051_i2c_eeprom.c:182: c = getchar();
      0034F1 C0 07            [24] 1375 	push	ar7
      0034F3 C0 06            [24] 1376 	push	ar6
      0034F5 12 30 81         [24] 1377 	lcall	_getchar
      0034F8 AC 82            [24] 1378 	mov	r4,dpl
      0034FA AD 83            [24] 1379 	mov	r5,dph
      0034FC D0 06            [24] 1380 	pop	ar6
      0034FE D0 07            [24] 1381 	pop	ar7
                                   1382 ;	8051_i2c_eeprom.c:185: if (c == '\r' || c == '\n') {
      003500 BC 0D 02         [24] 1383 	cjne	r4,#0x0d,00200$
      003503 80 47            [24] 1384 	sjmp	00113$
      003505                       1385 00200$:
      003505 BC 0A 02         [24] 1386 	cjne	r4,#0x0a,00201$
      003508 80 42            [24] 1387 	sjmp	00113$
      00350A                       1388 00201$:
                                   1389 ;	8051_i2c_eeprom.c:190: if ((c >= '0' && c <= '9') || 
      00350A BC 30 00         [24] 1390 	cjne	r4,#0x30,00202$
      00350D                       1391 00202$:
      00350D 40 05            [24] 1392 	jc	00108$
      00350F EC               [12] 1393 	mov	a,r4
      003510 24 C6            [12] 1394 	add	a,#0xff - 0x39
      003512 50 14            [24] 1395 	jnc	00104$
      003514                       1396 00108$:
                                   1397 ;	8051_i2c_eeprom.c:191: (c >= 'a' && c <= 'f') || 
      003514 BC 61 00         [24] 1398 	cjne	r4,#0x61,00205$
      003517                       1399 00205$:
      003517 40 05            [24] 1400 	jc	00110$
      003519 EC               [12] 1401 	mov	a,r4
      00351A 24 99            [12] 1402 	add	a,#0xff - 0x66
      00351C 50 0A            [24] 1403 	jnc	00104$
      00351E                       1404 00110$:
                                   1405 ;	8051_i2c_eeprom.c:192: (c >= 'A' && c <= 'F')) {
      00351E BC 41 00         [24] 1406 	cjne	r4,#0x41,00208$
      003521                       1407 00208$:
      003521 40 C3            [24] 1408 	jc	00111$
      003523 EC               [12] 1409 	mov	a,r4
      003524 24 B9            [12] 1410 	add	a,#0xff - 0x46
      003526 40 BE            [24] 1411 	jc	00111$
      003528                       1412 00104$:
                                   1413 ;	8051_i2c_eeprom.c:194: input[i] = c;
      003528 EE               [12] 1414 	mov	a,r6
      003529 24 0A            [12] 1415 	add	a,#_take_data_input_65537_73
      00352B F5 82            [12] 1416 	mov	dpl,a
      00352D EF               [12] 1417 	mov	a,r7
      00352E 34 04            [12] 1418 	addc	a,#(_take_data_input_65537_73 >> 8)
      003530 F5 83            [12] 1419 	mov	dph,a
      003532 EC               [12] 1420 	mov	a,r4
      003533 F0               [24] 1421 	movx	@dptr,a
                                   1422 ;	8051_i2c_eeprom.c:195: putchar(c);  // Echo character back
      003534 7D 00            [12] 1423 	mov	r5,#0x00
      003536 8C 82            [24] 1424 	mov	dpl,r4
      003538 8D 83            [24] 1425 	mov	dph,r5
      00353A C0 07            [24] 1426 	push	ar7
      00353C C0 06            [24] 1427 	push	ar6
      00353E 12 30 62         [24] 1428 	lcall	_putchar
      003541 D0 06            [24] 1429 	pop	ar6
      003543 D0 07            [24] 1430 	pop	ar7
                                   1431 ;	8051_i2c_eeprom.c:196: i++;
      003545 0E               [12] 1432 	inc	r6
      003546 BE 00 9D         [24] 1433 	cjne	r6,#0x00,00111$
      003549 0F               [12] 1434 	inc	r7
      00354A 80 9A            [24] 1435 	sjmp	00111$
      00354C                       1436 00113$:
                                   1437 ;	8051_i2c_eeprom.c:200: input[i] = '\0';  // Null-terminate the string
      00354C EE               [12] 1438 	mov	a,r6
      00354D 24 0A            [12] 1439 	add	a,#_take_data_input_65537_73
      00354F F5 82            [12] 1440 	mov	dpl,a
      003551 EF               [12] 1441 	mov	a,r7
      003552 34 04            [12] 1442 	addc	a,#(_take_data_input_65537_73 >> 8)
      003554 F5 83            [12] 1443 	mov	dph,a
      003556 E4               [12] 1444 	clr	a
      003557 F0               [24] 1445 	movx	@dptr,a
                                   1446 ;	8051_i2c_eeprom.c:203: unsigned char data = 0;
      003558 90 04 0E         [24] 1447 	mov	dptr,#_take_data_data_65538_77
      00355B F0               [24] 1448 	movx	@dptr,a
                                   1449 ;	8051_i2c_eeprom.c:204: for (i = 0; input[i] != '\0'; i++) {
      00355C 7E 00            [12] 1450 	mov	r6,#0x00
      00355E 7F 00            [12] 1451 	mov	r7,#0x00
      003560                       1452 00129$:
      003560 EE               [12] 1453 	mov	a,r6
      003561 24 0A            [12] 1454 	add	a,#_take_data_input_65537_73
      003563 F5 82            [12] 1455 	mov	dpl,a
      003565 EF               [12] 1456 	mov	a,r7
      003566 34 04            [12] 1457 	addc	a,#(_take_data_input_65537_73 >> 8)
      003568 F5 83            [12] 1458 	mov	dph,a
      00356A E0               [24] 1459 	movx	a,@dptr
      00356B FD               [12] 1460 	mov	r5,a
      00356C 70 03            [24] 1461 	jnz	00212$
      00356E 02 35 D3         [24] 1462 	ljmp	00125$
      003571                       1463 00212$:
                                   1464 ;	8051_i2c_eeprom.c:205: data = data * 16;
      003571 90 04 0E         [24] 1465 	mov	dptr,#_take_data_data_65538_77
      003574 E0               [24] 1466 	movx	a,@dptr
      003575 C4               [12] 1467 	swap	a
      003576 54 F0            [12] 1468 	anl	a,#0xf0
      003578 FC               [12] 1469 	mov	r4,a
      003579 F0               [24] 1470 	movx	@dptr,a
                                   1471 ;	8051_i2c_eeprom.c:206: if (input[i] >= '0' && input[i] <= '9')
      00357A BD 30 00         [24] 1472 	cjne	r5,#0x30,00213$
      00357D                       1473 00213$:
      00357D 40 12            [24] 1474 	jc	00122$
      00357F ED               [12] 1475 	mov	a,r5
      003580 24 C6            [12] 1476 	add	a,#0xff - 0x39
      003582 40 0D            [24] 1477 	jc	00122$
                                   1478 ;	8051_i2c_eeprom.c:207: data += input[i] - '0';
      003584 ED               [12] 1479 	mov	a,r5
      003585 24 D0            [12] 1480 	add	a,#0xd0
      003587 FD               [12] 1481 	mov	r5,a
      003588 90 04 0E         [24] 1482 	mov	dptr,#_take_data_data_65538_77
      00358B E0               [24] 1483 	movx	a,@dptr
      00358C FC               [12] 1484 	mov	r4,a
      00358D 2D               [12] 1485 	add	a,r5
      00358E F0               [24] 1486 	movx	@dptr,a
      00358F 80 3A            [24] 1487 	sjmp	00130$
      003591                       1488 00122$:
                                   1489 ;	8051_i2c_eeprom.c:208: else if (input[i] >= 'A' && input[i] <= 'F')
      003591 EE               [12] 1490 	mov	a,r6
      003592 24 0A            [12] 1491 	add	a,#_take_data_input_65537_73
      003594 F5 82            [12] 1492 	mov	dpl,a
      003596 EF               [12] 1493 	mov	a,r7
      003597 34 04            [12] 1494 	addc	a,#(_take_data_input_65537_73 >> 8)
      003599 F5 83            [12] 1495 	mov	dph,a
      00359B E0               [24] 1496 	movx	a,@dptr
      00359C FD               [12] 1497 	mov	r5,a
      00359D BD 41 00         [24] 1498 	cjne	r5,#0x41,00216$
      0035A0                       1499 00216$:
      0035A0 40 14            [24] 1500 	jc	00118$
      0035A2 ED               [12] 1501 	mov	a,r5
      0035A3 24 B9            [12] 1502 	add	a,#0xff - 0x46
      0035A5 40 0F            [24] 1503 	jc	00118$
                                   1504 ;	8051_i2c_eeprom.c:209: data += input[i] - 'A' + 10;
      0035A7 8D 04            [24] 1505 	mov	ar4,r5
      0035A9 74 C9            [12] 1506 	mov	a,#0xc9
      0035AB 2C               [12] 1507 	add	a,r4
      0035AC FC               [12] 1508 	mov	r4,a
      0035AD 90 04 0E         [24] 1509 	mov	dptr,#_take_data_data_65538_77
      0035B0 E0               [24] 1510 	movx	a,@dptr
      0035B1 FB               [12] 1511 	mov	r3,a
      0035B2 2C               [12] 1512 	add	a,r4
      0035B3 F0               [24] 1513 	movx	@dptr,a
      0035B4 80 15            [24] 1514 	sjmp	00130$
      0035B6                       1515 00118$:
                                   1516 ;	8051_i2c_eeprom.c:210: else if (input[i] >= 'a' && input[i] <= 'f')
      0035B6 BD 61 00         [24] 1517 	cjne	r5,#0x61,00219$
      0035B9                       1518 00219$:
      0035B9 40 10            [24] 1519 	jc	00130$
      0035BB ED               [12] 1520 	mov	a,r5
      0035BC 24 99            [12] 1521 	add	a,#0xff - 0x66
      0035BE 40 0B            [24] 1522 	jc	00130$
                                   1523 ;	8051_i2c_eeprom.c:211: data += input[i] - 'a' + 10;
      0035C0 74 A9            [12] 1524 	mov	a,#0xa9
      0035C2 2D               [12] 1525 	add	a,r5
      0035C3 FD               [12] 1526 	mov	r5,a
      0035C4 90 04 0E         [24] 1527 	mov	dptr,#_take_data_data_65538_77
      0035C7 E0               [24] 1528 	movx	a,@dptr
      0035C8 FC               [12] 1529 	mov	r4,a
      0035C9 2D               [12] 1530 	add	a,r5
      0035CA F0               [24] 1531 	movx	@dptr,a
      0035CB                       1532 00130$:
                                   1533 ;	8051_i2c_eeprom.c:204: for (i = 0; input[i] != '\0'; i++) {
      0035CB 0E               [12] 1534 	inc	r6
      0035CC BE 00 01         [24] 1535 	cjne	r6,#0x00,00222$
      0035CF 0F               [12] 1536 	inc	r7
      0035D0                       1537 00222$:
      0035D0 02 35 60         [24] 1538 	ljmp	00129$
      0035D3                       1539 00125$:
                                   1540 ;	8051_i2c_eeprom.c:214: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      0035D3 90 04 0E         [24] 1541 	mov	dptr,#_take_data_data_65538_77
      0035D6 E0               [24] 1542 	movx	a,@dptr
      0035D7 FF               [12] 1543 	mov	r7,a
      0035D8 FD               [12] 1544 	mov	r5,a
      0035D9 7E 00            [12] 1545 	mov	r6,#0x00
      0035DB C0 07            [24] 1546 	push	ar7
      0035DD C0 05            [24] 1547 	push	ar5
      0035DF C0 06            [24] 1548 	push	ar6
      0035E1 74 4A            [12] 1549 	mov	a,#___str_25
      0035E3 C0 E0            [24] 1550 	push	acc
      0035E5 74 4D            [12] 1551 	mov	a,#(___str_25 >> 8)
      0035E7 C0 E0            [24] 1552 	push	acc
      0035E9 74 80            [12] 1553 	mov	a,#0x80
      0035EB C0 E0            [24] 1554 	push	acc
      0035ED 12 3B 41         [24] 1555 	lcall	_printf
      0035F0 E5 81            [12] 1556 	mov	a,sp
      0035F2 24 FB            [12] 1557 	add	a,#0xfb
      0035F4 F5 81            [12] 1558 	mov	sp,a
      0035F6 D0 07            [24] 1559 	pop	ar7
                                   1560 ;	8051_i2c_eeprom.c:215: if(data > 254) 
      0035F8 EF               [12] 1561 	mov	a,r7
      0035F9 24 01            [12] 1562 	add	a,#0xff - 0xfe
      0035FB 50 20            [24] 1563 	jnc	00127$
                                   1564 ;	8051_i2c_eeprom.c:217: printf("Data out of Range\n\r");
      0035FD 74 67            [12] 1565 	mov	a,#___str_26
      0035FF C0 E0            [24] 1566 	push	acc
      003601 74 4D            [12] 1567 	mov	a,#(___str_26 >> 8)
      003603 C0 E0            [24] 1568 	push	acc
      003605 74 80            [12] 1569 	mov	a,#0x80
      003607 C0 E0            [24] 1570 	push	acc
      003609 12 3B 41         [24] 1571 	lcall	_printf
      00360C 15 81            [12] 1572 	dec	sp
      00360E 15 81            [12] 1573 	dec	sp
      003610 15 81            [12] 1574 	dec	sp
                                   1575 ;	8051_i2c_eeprom.c:218: data_range_flag = 0;
      003612 90 04 53         [24] 1576 	mov	dptr,#_data_range_flag
      003615 E4               [12] 1577 	clr	a
      003616 F0               [24] 1578 	movx	@dptr,a
      003617 A3               [24] 1579 	inc	dptr
      003618 F0               [24] 1580 	movx	@dptr,a
                                   1581 ;	8051_i2c_eeprom.c:219: return 0;
      003619 75 82 00         [24] 1582 	mov	dpl,#0x00
      00361C 22               [24] 1583 	ret
      00361D                       1584 00127$:
                                   1585 ;	8051_i2c_eeprom.c:221: return data;
      00361D 8F 82            [24] 1586 	mov	dpl,r7
                                   1587 ;	8051_i2c_eeprom.c:223: }
      00361F 22               [24] 1588 	ret
                                   1589 ;------------------------------------------------------------
                                   1590 ;Allocation info for local variables in function 'eeprom_write'
                                   1591 ;------------------------------------------------------------
                                   1592 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                   1593 ;address                   Allocated with name '_eeprom_write_address_65536_81'
                                   1594 ;i                         Allocated with name '_eeprom_write_i_196608_87'
                                   1595 ;------------------------------------------------------------
                                   1596 ;	8051_i2c_eeprom.c:225: int eeprom_write(unsigned int address, unsigned char data) 
                                   1597 ;	-----------------------------------------
                                   1598 ;	 function eeprom_write
                                   1599 ;	-----------------------------------------
      003620                       1600 _eeprom_write:
      003620 AF 83            [24] 1601 	mov	r7,dph
      003622 E5 82            [12] 1602 	mov	a,dpl
      003624 90 04 10         [24] 1603 	mov	dptr,#_eeprom_write_address_65536_81
      003627 F0               [24] 1604 	movx	@dptr,a
      003628 EF               [12] 1605 	mov	a,r7
      003629 A3               [24] 1606 	inc	dptr
      00362A F0               [24] 1607 	movx	@dptr,a
                                   1608 ;	8051_i2c_eeprom.c:227: if(address_range_flag & data_range_flag)
      00362B 90 04 51         [24] 1609 	mov	dptr,#_address_range_flag
      00362E E0               [24] 1610 	movx	a,@dptr
      00362F FE               [12] 1611 	mov	r6,a
      003630 A3               [24] 1612 	inc	dptr
      003631 E0               [24] 1613 	movx	a,@dptr
      003632 FF               [12] 1614 	mov	r7,a
      003633 90 04 53         [24] 1615 	mov	dptr,#_data_range_flag
      003636 E0               [24] 1616 	movx	a,@dptr
      003637 FC               [12] 1617 	mov	r4,a
      003638 A3               [24] 1618 	inc	dptr
      003639 E0               [24] 1619 	movx	a,@dptr
      00363A FD               [12] 1620 	mov	r5,a
      00363B EC               [12] 1621 	mov	a,r4
      00363C 52 06            [12] 1622 	anl	ar6,a
      00363E ED               [12] 1623 	mov	a,r5
      00363F 52 07            [12] 1624 	anl	ar7,a
      003641 EE               [12] 1625 	mov	a,r6
      003642 4F               [12] 1626 	orl	a,r7
      003643 70 03            [24] 1627 	jnz	00140$
      003645 02 37 7F         [24] 1628 	ljmp	00109$
      003648                       1629 00140$:
                                   1630 ;	8051_i2c_eeprom.c:230: i2c_start();
      003648 12 3A 02         [24] 1631 	lcall	_i2c_start
                                   1632 ;	8051_i2c_eeprom.c:233: if(!i2c_write(EEPROM_ID | block | WRITE)) {
      00364B 90 04 55         [24] 1633 	mov	dptr,#_block
      00364E E0               [24] 1634 	movx	a,@dptr
      00364F FE               [12] 1635 	mov	r6,a
      003650 A3               [24] 1636 	inc	dptr
      003651 E0               [24] 1637 	movx	a,@dptr
      003652 43 06 A0         [24] 1638 	orl	ar6,#0xa0
      003655 8E 82            [24] 1639 	mov	dpl,r6
      003657 12 39 15         [24] 1640 	lcall	_i2c_write
      00365A E5 82            [12] 1641 	mov	a,dpl
      00365C 85 83 F0         [24] 1642 	mov	b,dph
      00365F 45 F0            [12] 1643 	orl	a,b
      003661 70 1C            [24] 1644 	jnz	00102$
                                   1645 ;	8051_i2c_eeprom.c:234: printf("Error: No ACK for device address (write)\n\r");
      003663 74 7B            [12] 1646 	mov	a,#___str_27
      003665 C0 E0            [24] 1647 	push	acc
      003667 74 4D            [12] 1648 	mov	a,#(___str_27 >> 8)
      003669 C0 E0            [24] 1649 	push	acc
      00366B 74 80            [12] 1650 	mov	a,#0x80
      00366D C0 E0            [24] 1651 	push	acc
      00366F 12 3B 41         [24] 1652 	lcall	_printf
      003672 15 81            [12] 1653 	dec	sp
      003674 15 81            [12] 1654 	dec	sp
      003676 15 81            [12] 1655 	dec	sp
                                   1656 ;	8051_i2c_eeprom.c:235: i2c_stop();
      003678 12 3A 17         [24] 1657 	lcall	_i2c_stop
                                   1658 ;	8051_i2c_eeprom.c:236: return 0;
      00367B 90 00 00         [24] 1659 	mov	dptr,#0x0000
      00367E 22               [24] 1660 	ret
      00367F                       1661 00102$:
                                   1662 ;	8051_i2c_eeprom.c:240: if(!i2c_write((unsigned char)address)) {
      00367F 90 04 10         [24] 1663 	mov	dptr,#_eeprom_write_address_65536_81
      003682 E0               [24] 1664 	movx	a,@dptr
      003683 FE               [12] 1665 	mov	r6,a
      003684 A3               [24] 1666 	inc	dptr
      003685 E0               [24] 1667 	movx	a,@dptr
      003686 FF               [12] 1668 	mov	r7,a
      003687 8E 05            [24] 1669 	mov	ar5,r6
      003689 8D 82            [24] 1670 	mov	dpl,r5
      00368B C0 07            [24] 1671 	push	ar7
      00368D C0 06            [24] 1672 	push	ar6
      00368F 12 39 15         [24] 1673 	lcall	_i2c_write
      003692 E5 82            [12] 1674 	mov	a,dpl
      003694 85 83 F0         [24] 1675 	mov	b,dph
      003697 D0 06            [24] 1676 	pop	ar6
      003699 D0 07            [24] 1677 	pop	ar7
      00369B 45 F0            [12] 1678 	orl	a,b
      00369D 70 1C            [24] 1679 	jnz	00104$
                                   1680 ;	8051_i2c_eeprom.c:241: printf("Error: No ACK for memory address\n\r");
      00369F 74 A6            [12] 1681 	mov	a,#___str_28
      0036A1 C0 E0            [24] 1682 	push	acc
      0036A3 74 4D            [12] 1683 	mov	a,#(___str_28 >> 8)
      0036A5 C0 E0            [24] 1684 	push	acc
      0036A7 74 80            [12] 1685 	mov	a,#0x80
      0036A9 C0 E0            [24] 1686 	push	acc
      0036AB 12 3B 41         [24] 1687 	lcall	_printf
      0036AE 15 81            [12] 1688 	dec	sp
      0036B0 15 81            [12] 1689 	dec	sp
      0036B2 15 81            [12] 1690 	dec	sp
                                   1691 ;	8051_i2c_eeprom.c:242: i2c_stop();
      0036B4 12 3A 17         [24] 1692 	lcall	_i2c_stop
                                   1693 ;	8051_i2c_eeprom.c:243: return 0;
      0036B7 90 00 00         [24] 1694 	mov	dptr,#0x0000
      0036BA 22               [24] 1695 	ret
      0036BB                       1696 00104$:
                                   1697 ;	8051_i2c_eeprom.c:247: if(!i2c_write(data)) {
      0036BB 90 04 0F         [24] 1698 	mov	dptr,#_eeprom_write_PARM_2
      0036BE E0               [24] 1699 	movx	a,@dptr
      0036BF FD               [12] 1700 	mov	r5,a
      0036C0 F5 82            [12] 1701 	mov	dpl,a
      0036C2 C0 07            [24] 1702 	push	ar7
      0036C4 C0 06            [24] 1703 	push	ar6
      0036C6 C0 05            [24] 1704 	push	ar5
      0036C8 12 39 15         [24] 1705 	lcall	_i2c_write
      0036CB E5 82            [12] 1706 	mov	a,dpl
      0036CD 85 83 F0         [24] 1707 	mov	b,dph
      0036D0 D0 05            [24] 1708 	pop	ar5
      0036D2 D0 06            [24] 1709 	pop	ar6
      0036D4 D0 07            [24] 1710 	pop	ar7
      0036D6 45 F0            [12] 1711 	orl	a,b
      0036D8 70 1C            [24] 1712 	jnz	00106$
                                   1713 ;	8051_i2c_eeprom.c:248: printf("Error: No ACK for data\n\r");
      0036DA 74 C9            [12] 1714 	mov	a,#___str_29
      0036DC C0 E0            [24] 1715 	push	acc
      0036DE 74 4D            [12] 1716 	mov	a,#(___str_29 >> 8)
      0036E0 C0 E0            [24] 1717 	push	acc
      0036E2 74 80            [12] 1718 	mov	a,#0x80
      0036E4 C0 E0            [24] 1719 	push	acc
      0036E6 12 3B 41         [24] 1720 	lcall	_printf
      0036E9 15 81            [12] 1721 	dec	sp
      0036EB 15 81            [12] 1722 	dec	sp
      0036ED 15 81            [12] 1723 	dec	sp
                                   1724 ;	8051_i2c_eeprom.c:249: i2c_stop();
      0036EF 12 3A 17         [24] 1725 	lcall	_i2c_stop
                                   1726 ;	8051_i2c_eeprom.c:250: return 0;
      0036F2 90 00 00         [24] 1727 	mov	dptr,#0x0000
      0036F5 22               [24] 1728 	ret
      0036F6                       1729 00106$:
                                   1730 ;	8051_i2c_eeprom.c:253: i2c_stop();
      0036F6 C0 07            [24] 1731 	push	ar7
      0036F8 C0 06            [24] 1732 	push	ar6
      0036FA C0 05            [24] 1733 	push	ar5
      0036FC 12 3A 17         [24] 1734 	lcall	_i2c_stop
      0036FF D0 05            [24] 1735 	pop	ar5
      003701 D0 06            [24] 1736 	pop	ar6
      003703 D0 07            [24] 1737 	pop	ar7
                                   1738 ;	8051_i2c_eeprom.c:255: for(int i = 0; i<100; i++)
      003705 7B 00            [12] 1739 	mov	r3,#0x00
      003707 7C 00            [12] 1740 	mov	r4,#0x00
      003709                       1741 00111$:
      003709 C3               [12] 1742 	clr	c
      00370A EB               [12] 1743 	mov	a,r3
      00370B 94 64            [12] 1744 	subb	a,#0x64
      00370D EC               [12] 1745 	mov	a,r4
      00370E 64 80            [12] 1746 	xrl	a,#0x80
      003710 94 80            [12] 1747 	subb	a,#0x80
      003712 50 1E            [24] 1748 	jnc	00107$
                                   1749 ;	8051_i2c_eeprom.c:257: i2c_delay();
      003714 C0 07            [24] 1750 	push	ar7
      003716 C0 06            [24] 1751 	push	ar6
      003718 C0 05            [24] 1752 	push	ar5
      00371A C0 04            [24] 1753 	push	ar4
      00371C C0 03            [24] 1754 	push	ar3
      00371E 12 3A 24         [24] 1755 	lcall	_i2c_delay
      003721 D0 03            [24] 1756 	pop	ar3
      003723 D0 04            [24] 1757 	pop	ar4
      003725 D0 05            [24] 1758 	pop	ar5
      003727 D0 06            [24] 1759 	pop	ar6
      003729 D0 07            [24] 1760 	pop	ar7
                                   1761 ;	8051_i2c_eeprom.c:255: for(int i = 0; i<100; i++)
      00372B 0B               [12] 1762 	inc	r3
      00372C BB 00 DA         [24] 1763 	cjne	r3,#0x00,00111$
      00372F 0C               [12] 1764 	inc	r4
      003730 80 D7            [24] 1765 	sjmp	00111$
      003732                       1766 00107$:
                                   1767 ;	8051_i2c_eeprom.c:259: printf("| Writing at Address 0x%03X Data 0x%02X          |\n\r", address, data);
      003732 7C 00            [12] 1768 	mov	r4,#0x00
      003734 C0 05            [24] 1769 	push	ar5
      003736 C0 04            [24] 1770 	push	ar4
      003738 C0 06            [24] 1771 	push	ar6
      00373A C0 07            [24] 1772 	push	ar7
      00373C 74 E2            [12] 1773 	mov	a,#___str_30
      00373E C0 E0            [24] 1774 	push	acc
      003740 74 4D            [12] 1775 	mov	a,#(___str_30 >> 8)
      003742 C0 E0            [24] 1776 	push	acc
      003744 74 80            [12] 1777 	mov	a,#0x80
      003746 C0 E0            [24] 1778 	push	acc
      003748 12 3B 41         [24] 1779 	lcall	_printf
      00374B E5 81            [12] 1780 	mov	a,sp
      00374D 24 F9            [12] 1781 	add	a,#0xf9
      00374F F5 81            [12] 1782 	mov	sp,a
                                   1783 ;	8051_i2c_eeprom.c:260: printf("│ Write successful!                             │\n\r");
      003751 74 17            [12] 1784 	mov	a,#___str_31
      003753 C0 E0            [24] 1785 	push	acc
      003755 74 4E            [12] 1786 	mov	a,#(___str_31 >> 8)
      003757 C0 E0            [24] 1787 	push	acc
      003759 74 80            [12] 1788 	mov	a,#0x80
      00375B C0 E0            [24] 1789 	push	acc
      00375D 12 3B 41         [24] 1790 	lcall	_printf
      003760 15 81            [12] 1791 	dec	sp
      003762 15 81            [12] 1792 	dec	sp
      003764 15 81            [12] 1793 	dec	sp
                                   1794 ;	8051_i2c_eeprom.c:261: printf("└───────────────────────────────────────────────┘\n\r");
      003766 74 4F            [12] 1795 	mov	a,#___str_32
      003768 C0 E0            [24] 1796 	push	acc
      00376A 74 4E            [12] 1797 	mov	a,#(___str_32 >> 8)
      00376C C0 E0            [24] 1798 	push	acc
      00376E 74 80            [12] 1799 	mov	a,#0x80
      003770 C0 E0            [24] 1800 	push	acc
      003772 12 3B 41         [24] 1801 	lcall	_printf
      003775 15 81            [12] 1802 	dec	sp
      003777 15 81            [12] 1803 	dec	sp
      003779 15 81            [12] 1804 	dec	sp
                                   1805 ;	8051_i2c_eeprom.c:262: return 1;  // Success
      00377B 90 00 01         [24] 1806 	mov	dptr,#0x0001
      00377E 22               [24] 1807 	ret
      00377F                       1808 00109$:
                                   1809 ;	8051_i2c_eeprom.c:264: printf("| CAN NOT WRITE                   |\n\r", address);
      00377F 90 04 10         [24] 1810 	mov	dptr,#_eeprom_write_address_65536_81
      003782 E0               [24] 1811 	movx	a,@dptr
      003783 C0 E0            [24] 1812 	push	acc
      003785 A3               [24] 1813 	inc	dptr
      003786 E0               [24] 1814 	movx	a,@dptr
      003787 C0 E0            [24] 1815 	push	acc
      003789 74 E5            [12] 1816 	mov	a,#___str_33
      00378B C0 E0            [24] 1817 	push	acc
      00378D 74 4E            [12] 1818 	mov	a,#(___str_33 >> 8)
      00378F C0 E0            [24] 1819 	push	acc
      003791 74 80            [12] 1820 	mov	a,#0x80
      003793 C0 E0            [24] 1821 	push	acc
      003795 12 3B 41         [24] 1822 	lcall	_printf
      003798 E5 81            [12] 1823 	mov	a,sp
      00379A 24 FB            [12] 1824 	add	a,#0xfb
      00379C F5 81            [12] 1825 	mov	sp,a
                                   1826 ;	8051_i2c_eeprom.c:265: return 0;
      00379E 90 00 00         [24] 1827 	mov	dptr,#0x0000
                                   1828 ;	8051_i2c_eeprom.c:267: }
      0037A1 22               [24] 1829 	ret
                                   1830 ;------------------------------------------------------------
                                   1831 ;Allocation info for local variables in function 'eeprom_read'
                                   1832 ;------------------------------------------------------------
                                   1833 ;address                   Allocated with name '_eeprom_read_address_65536_89'
                                   1834 ;result                    Allocated with name '_eeprom_read_result_131072_91'
                                   1835 ;------------------------------------------------------------
                                   1836 ;	8051_i2c_eeprom.c:269: int eeprom_read(unsigned int address) 
                                   1837 ;	-----------------------------------------
                                   1838 ;	 function eeprom_read
                                   1839 ;	-----------------------------------------
      0037A2                       1840 _eeprom_read:
      0037A2 AF 83            [24] 1841 	mov	r7,dph
      0037A4 E5 82            [12] 1842 	mov	a,dpl
      0037A6 90 04 12         [24] 1843 	mov	dptr,#_eeprom_read_address_65536_89
      0037A9 F0               [24] 1844 	movx	@dptr,a
      0037AA EF               [12] 1845 	mov	a,r7
      0037AB A3               [24] 1846 	inc	dptr
      0037AC F0               [24] 1847 	movx	@dptr,a
                                   1848 ;	8051_i2c_eeprom.c:271: if(address_range_flag)
      0037AD 90 04 51         [24] 1849 	mov	dptr,#_address_range_flag
      0037B0 E0               [24] 1850 	movx	a,@dptr
      0037B1 F5 F0            [12] 1851 	mov	b,a
      0037B3 A3               [24] 1852 	inc	dptr
      0037B4 E0               [24] 1853 	movx	a,@dptr
      0037B5 45 F0            [12] 1854 	orl	a,b
      0037B7 70 03            [24] 1855 	jnz	00127$
      0037B9 02 38 F2         [24] 1856 	ljmp	00108$
      0037BC                       1857 00127$:
                                   1858 ;	8051_i2c_eeprom.c:276: i2c_start();
      0037BC 12 3A 02         [24] 1859 	lcall	_i2c_start
                                   1860 ;	8051_i2c_eeprom.c:279: if(!i2c_write(EEPROM_ID | WRITE)) {
      0037BF 75 82 A0         [24] 1861 	mov	dpl,#0xa0
      0037C2 12 39 15         [24] 1862 	lcall	_i2c_write
      0037C5 E5 82            [12] 1863 	mov	a,dpl
      0037C7 85 83 F0         [24] 1864 	mov	b,dph
      0037CA 45 F0            [12] 1865 	orl	a,b
      0037CC 70 1C            [24] 1866 	jnz	00102$
                                   1867 ;	8051_i2c_eeprom.c:280: printf("Error: No ACK for device address (write mode)\n\r");
      0037CE 74 0B            [12] 1868 	mov	a,#___str_34
      0037D0 C0 E0            [24] 1869 	push	acc
      0037D2 74 4F            [12] 1870 	mov	a,#(___str_34 >> 8)
      0037D4 C0 E0            [24] 1871 	push	acc
      0037D6 74 80            [12] 1872 	mov	a,#0x80
      0037D8 C0 E0            [24] 1873 	push	acc
      0037DA 12 3B 41         [24] 1874 	lcall	_printf
      0037DD 15 81            [12] 1875 	dec	sp
      0037DF 15 81            [12] 1876 	dec	sp
      0037E1 15 81            [12] 1877 	dec	sp
                                   1878 ;	8051_i2c_eeprom.c:281: i2c_stop();
      0037E3 12 3A 17         [24] 1879 	lcall	_i2c_stop
                                   1880 ;	8051_i2c_eeprom.c:282: return -1;
      0037E6 90 FF FF         [24] 1881 	mov	dptr,#0xffff
      0037E9 22               [24] 1882 	ret
      0037EA                       1883 00102$:
                                   1884 ;	8051_i2c_eeprom.c:286: if(!i2c_write((unsigned char)address)) {
      0037EA 90 04 12         [24] 1885 	mov	dptr,#_eeprom_read_address_65536_89
      0037ED E0               [24] 1886 	movx	a,@dptr
      0037EE FE               [12] 1887 	mov	r6,a
      0037EF A3               [24] 1888 	inc	dptr
      0037F0 E0               [24] 1889 	movx	a,@dptr
      0037F1 FF               [12] 1890 	mov	r7,a
      0037F2 8E 05            [24] 1891 	mov	ar5,r6
      0037F4 8D 82            [24] 1892 	mov	dpl,r5
      0037F6 C0 07            [24] 1893 	push	ar7
      0037F8 C0 06            [24] 1894 	push	ar6
      0037FA 12 39 15         [24] 1895 	lcall	_i2c_write
      0037FD E5 82            [12] 1896 	mov	a,dpl
      0037FF 85 83 F0         [24] 1897 	mov	b,dph
      003802 D0 06            [24] 1898 	pop	ar6
      003804 D0 07            [24] 1899 	pop	ar7
      003806 45 F0            [12] 1900 	orl	a,b
      003808 70 1C            [24] 1901 	jnz	00104$
                                   1902 ;	8051_i2c_eeprom.c:287: printf("Error: No ACK for memory address\n\r");
      00380A 74 A6            [12] 1903 	mov	a,#___str_28
      00380C C0 E0            [24] 1904 	push	acc
      00380E 74 4D            [12] 1905 	mov	a,#(___str_28 >> 8)
      003810 C0 E0            [24] 1906 	push	acc
      003812 74 80            [12] 1907 	mov	a,#0x80
      003814 C0 E0            [24] 1908 	push	acc
      003816 12 3B 41         [24] 1909 	lcall	_printf
      003819 15 81            [12] 1910 	dec	sp
      00381B 15 81            [12] 1911 	dec	sp
      00381D 15 81            [12] 1912 	dec	sp
                                   1913 ;	8051_i2c_eeprom.c:288: i2c_stop();
      00381F 12 3A 17         [24] 1914 	lcall	_i2c_stop
                                   1915 ;	8051_i2c_eeprom.c:289: return -1;
      003822 90 FF FF         [24] 1916 	mov	dptr,#0xffff
      003825 22               [24] 1917 	ret
      003826                       1918 00104$:
                                   1919 ;	8051_i2c_eeprom.c:293: i2c_start();
      003826 C0 07            [24] 1920 	push	ar7
      003828 C0 06            [24] 1921 	push	ar6
      00382A 12 3A 02         [24] 1922 	lcall	_i2c_start
                                   1923 ;	8051_i2c_eeprom.c:296: if(!i2c_write(EEPROM_ID | READ)) {
      00382D 75 82 A1         [24] 1924 	mov	dpl,#0xa1
      003830 12 39 15         [24] 1925 	lcall	_i2c_write
      003833 E5 82            [12] 1926 	mov	a,dpl
      003835 85 83 F0         [24] 1927 	mov	b,dph
      003838 D0 06            [24] 1928 	pop	ar6
      00383A D0 07            [24] 1929 	pop	ar7
      00383C 45 F0            [12] 1930 	orl	a,b
      00383E 70 1C            [24] 1931 	jnz	00106$
                                   1932 ;	8051_i2c_eeprom.c:297: printf("Error: No ACK for device address (read mode)\n\r");
      003840 74 3B            [12] 1933 	mov	a,#___str_35
      003842 C0 E0            [24] 1934 	push	acc
      003844 74 4F            [12] 1935 	mov	a,#(___str_35 >> 8)
      003846 C0 E0            [24] 1936 	push	acc
      003848 74 80            [12] 1937 	mov	a,#0x80
      00384A C0 E0            [24] 1938 	push	acc
      00384C 12 3B 41         [24] 1939 	lcall	_printf
      00384F 15 81            [12] 1940 	dec	sp
      003851 15 81            [12] 1941 	dec	sp
      003853 15 81            [12] 1942 	dec	sp
                                   1943 ;	8051_i2c_eeprom.c:298: i2c_stop();
      003855 12 3A 17         [24] 1944 	lcall	_i2c_stop
                                   1945 ;	8051_i2c_eeprom.c:299: return -1;
      003858 90 FF FF         [24] 1946 	mov	dptr,#0xffff
      00385B 22               [24] 1947 	ret
      00385C                       1948 00106$:
                                   1949 ;	8051_i2c_eeprom.c:303: result = i2c_read(0);  // 0 means send NACK
      00385C 90 00 00         [24] 1950 	mov	dptr,#0x0000
      00385F C0 07            [24] 1951 	push	ar7
      003861 C0 06            [24] 1952 	push	ar6
      003863 12 39 7D         [24] 1953 	lcall	_i2c_read
      003866 AC 82            [24] 1954 	mov	r4,dpl
      003868 D0 06            [24] 1955 	pop	ar6
      00386A D0 07            [24] 1956 	pop	ar7
                                   1957 ;	8051_i2c_eeprom.c:304: printf("│ Reading from Adress: 0x%03X Data: 0x%02X                    \n\r", address, result);
      00386C 7D 00            [12] 1958 	mov	r5,#0x00
      00386E C0 07            [24] 1959 	push	ar7
      003870 C0 06            [24] 1960 	push	ar6
      003872 C0 05            [24] 1961 	push	ar5
      003874 C0 04            [24] 1962 	push	ar4
      003876 C0 04            [24] 1963 	push	ar4
      003878 C0 05            [24] 1964 	push	ar5
      00387A C0 06            [24] 1965 	push	ar6
      00387C C0 07            [24] 1966 	push	ar7
      00387E 74 6A            [12] 1967 	mov	a,#___str_36
      003880 C0 E0            [24] 1968 	push	acc
      003882 74 4F            [12] 1969 	mov	a,#(___str_36 >> 8)
      003884 C0 E0            [24] 1970 	push	acc
      003886 74 80            [12] 1971 	mov	a,#0x80
      003888 C0 E0            [24] 1972 	push	acc
      00388A 12 3B 41         [24] 1973 	lcall	_printf
      00388D E5 81            [12] 1974 	mov	a,sp
      00388F 24 F9            [12] 1975 	add	a,#0xf9
      003891 F5 81            [12] 1976 	mov	sp,a
      003893 D0 04            [24] 1977 	pop	ar4
      003895 D0 05            [24] 1978 	pop	ar5
      003897 D0 06            [24] 1979 	pop	ar6
      003899 D0 07            [24] 1980 	pop	ar7
                                   1981 ;	8051_i2c_eeprom.c:305: printf("| 0x%03X : 0x%02X \n\r", address, result);
      00389B C0 05            [24] 1982 	push	ar5
      00389D C0 04            [24] 1983 	push	ar4
      00389F C0 04            [24] 1984 	push	ar4
      0038A1 C0 05            [24] 1985 	push	ar5
      0038A3 C0 06            [24] 1986 	push	ar6
      0038A5 C0 07            [24] 1987 	push	ar7
      0038A7 74 AD            [12] 1988 	mov	a,#___str_37
      0038A9 C0 E0            [24] 1989 	push	acc
      0038AB 74 4F            [12] 1990 	mov	a,#(___str_37 >> 8)
      0038AD C0 E0            [24] 1991 	push	acc
      0038AF 74 80            [12] 1992 	mov	a,#0x80
      0038B1 C0 E0            [24] 1993 	push	acc
      0038B3 12 3B 41         [24] 1994 	lcall	_printf
      0038B6 E5 81            [12] 1995 	mov	a,sp
      0038B8 24 F9            [12] 1996 	add	a,#0xf9
      0038BA F5 81            [12] 1997 	mov	sp,a
                                   1998 ;	8051_i2c_eeprom.c:306: printf("│ Read successful!                 │\n\r");
      0038BC 74 C2            [12] 1999 	mov	a,#___str_38
      0038BE C0 E0            [24] 2000 	push	acc
      0038C0 74 4F            [12] 2001 	mov	a,#(___str_38 >> 8)
      0038C2 C0 E0            [24] 2002 	push	acc
      0038C4 74 80            [12] 2003 	mov	a,#0x80
      0038C6 C0 E0            [24] 2004 	push	acc
      0038C8 12 3B 41         [24] 2005 	lcall	_printf
      0038CB 15 81            [12] 2006 	dec	sp
      0038CD 15 81            [12] 2007 	dec	sp
      0038CF 15 81            [12] 2008 	dec	sp
                                   2009 ;	8051_i2c_eeprom.c:307: printf("└───────────────────────────────────────────────┘\n\r");
      0038D1 74 4F            [12] 2010 	mov	a,#___str_32
      0038D3 C0 E0            [24] 2011 	push	acc
      0038D5 74 4E            [12] 2012 	mov	a,#(___str_32 >> 8)
      0038D7 C0 E0            [24] 2013 	push	acc
      0038D9 74 80            [12] 2014 	mov	a,#0x80
      0038DB C0 E0            [24] 2015 	push	acc
      0038DD 12 3B 41         [24] 2016 	lcall	_printf
      0038E0 15 81            [12] 2017 	dec	sp
      0038E2 15 81            [12] 2018 	dec	sp
      0038E4 15 81            [12] 2019 	dec	sp
                                   2020 ;	8051_i2c_eeprom.c:308: i2c_stop();
      0038E6 12 3A 17         [24] 2021 	lcall	_i2c_stop
      0038E9 D0 04            [24] 2022 	pop	ar4
      0038EB D0 05            [24] 2023 	pop	ar5
                                   2024 ;	8051_i2c_eeprom.c:309: return result;
      0038ED 8C 82            [24] 2025 	mov	dpl,r4
      0038EF 8D 83            [24] 2026 	mov	dph,r5
      0038F1 22               [24] 2027 	ret
      0038F2                       2028 00108$:
                                   2029 ;	8051_i2c_eeprom.c:311: printf("| CAN NOT READ AT ADDRESS 0x%03X  |\n\r", address);
      0038F2 90 04 12         [24] 2030 	mov	dptr,#_eeprom_read_address_65536_89
      0038F5 E0               [24] 2031 	movx	a,@dptr
      0038F6 C0 E0            [24] 2032 	push	acc
      0038F8 A3               [24] 2033 	inc	dptr
      0038F9 E0               [24] 2034 	movx	a,@dptr
      0038FA C0 E0            [24] 2035 	push	acc
      0038FC 74 ED            [12] 2036 	mov	a,#___str_39
      0038FE C0 E0            [24] 2037 	push	acc
      003900 74 4F            [12] 2038 	mov	a,#(___str_39 >> 8)
      003902 C0 E0            [24] 2039 	push	acc
      003904 74 80            [12] 2040 	mov	a,#0x80
      003906 C0 E0            [24] 2041 	push	acc
      003908 12 3B 41         [24] 2042 	lcall	_printf
      00390B E5 81            [12] 2043 	mov	a,sp
      00390D 24 FB            [12] 2044 	add	a,#0xfb
      00390F F5 81            [12] 2045 	mov	sp,a
                                   2046 ;	8051_i2c_eeprom.c:312: return 0;
      003911 90 00 00         [24] 2047 	mov	dptr,#0x0000
                                   2048 ;	8051_i2c_eeprom.c:313: }
      003914 22               [24] 2049 	ret
                                   2050 ;------------------------------------------------------------
                                   2051 ;Allocation info for local variables in function 'i2c_write'
                                   2052 ;------------------------------------------------------------
                                   2053 ;data                      Allocated with name '_i2c_write_data_65536_95'
                                   2054 ;i                         Allocated with name '_i2c_write_i_65536_96'
                                   2055 ;------------------------------------------------------------
                                   2056 ;	8051_i2c_eeprom.c:316: int i2c_write(unsigned char data)
                                   2057 ;	-----------------------------------------
                                   2058 ;	 function i2c_write
                                   2059 ;	-----------------------------------------
      003915                       2060 _i2c_write:
      003915 E5 82            [12] 2061 	mov	a,dpl
      003917 90 04 14         [24] 2062 	mov	dptr,#_i2c_write_data_65536_95
      00391A F0               [24] 2063 	movx	@dptr,a
                                   2064 ;	8051_i2c_eeprom.c:320: for(i=0;i<=7;i++)
      00391B 7E 00            [12] 2065 	mov	r6,#0x00
      00391D 7F 00            [12] 2066 	mov	r7,#0x00
      00391F                       2067 00104$:
                                   2068 ;	8051_i2c_eeprom.c:322: SDA = (data & 0x80) ? 1 : 0;    //msb first
      00391F 90 04 14         [24] 2069 	mov	dptr,#_i2c_write_data_65536_95
      003922 E0               [24] 2070 	movx	a,@dptr
      003923 FD               [12] 2071 	mov	r5,a
      003924 23               [12] 2072 	rl	a
      003925 54 01            [12] 2073 	anl	a,#0x01
      003927 24 FF            [12] 2074 	add	a,#0xff
      003929 92 94            [24] 2075 	mov	_P1_4,c
                                   2076 ;	8051_i2c_eeprom.c:323: i2c_delay();        // Setup time for data
      00392B C0 07            [24] 2077 	push	ar7
      00392D C0 06            [24] 2078 	push	ar6
      00392F C0 05            [24] 2079 	push	ar5
      003931 12 3A 24         [24] 2080 	lcall	_i2c_delay
                                   2081 ;	8051_i2c_eeprom.c:324: SCL=1;
                                   2082 ;	assignBit
      003934 D2 93            [12] 2083 	setb	_P1_3
                                   2084 ;	8051_i2c_eeprom.c:325: i2c_delay();        // Hold time for clock
      003936 12 3A 24         [24] 2085 	lcall	_i2c_delay
      003939 D0 05            [24] 2086 	pop	ar5
      00393B D0 06            [24] 2087 	pop	ar6
      00393D D0 07            [24] 2088 	pop	ar7
                                   2089 ;	8051_i2c_eeprom.c:326: SCL=0;
                                   2090 ;	assignBit
      00393F C2 93            [12] 2091 	clr	_P1_3
                                   2092 ;	8051_i2c_eeprom.c:327: data = data << 1;
      003941 ED               [12] 2093 	mov	a,r5
      003942 2D               [12] 2094 	add	a,r5
      003943 90 04 14         [24] 2095 	mov	dptr,#_i2c_write_data_65536_95
      003946 F0               [24] 2096 	movx	@dptr,a
                                   2097 ;	8051_i2c_eeprom.c:320: for(i=0;i<=7;i++)
      003947 0E               [12] 2098 	inc	r6
      003948 BE 00 01         [24] 2099 	cjne	r6,#0x00,00121$
      00394B 0F               [12] 2100 	inc	r7
      00394C                       2101 00121$:
      00394C C3               [12] 2102 	clr	c
      00394D 74 07            [12] 2103 	mov	a,#0x07
      00394F 9E               [12] 2104 	subb	a,r6
      003950 E4               [12] 2105 	clr	a
      003951 9F               [12] 2106 	subb	a,r7
      003952 50 CB            [24] 2107 	jnc	00104$
                                   2108 ;	8051_i2c_eeprom.c:331: SDA = 1;            // Release SDA for slave
                                   2109 ;	assignBit
      003954 D2 94            [12] 2110 	setb	_P1_4
                                   2111 ;	8051_i2c_eeprom.c:332: SCL = 1;            // 9th clock pulse for ACK
                                   2112 ;	assignBit
      003956 D2 93            [12] 2113 	setb	_P1_3
                                   2114 ;	8051_i2c_eeprom.c:333: i2c_delay();
      003958 12 3A 24         [24] 2115 	lcall	_i2c_delay
                                   2116 ;	8051_i2c_eeprom.c:334: if(SDA == 1)        // If SDA is still high, no ACK received
      00395B 30 94 19         [24] 2117 	jnb	_P1_4,00103$
                                   2118 ;	8051_i2c_eeprom.c:337: printf("ACK DID NOT ARRIVE\n\r");
      00395E 74 13            [12] 2119 	mov	a,#___str_40
      003960 C0 E0            [24] 2120 	push	acc
      003962 74 50            [12] 2121 	mov	a,#(___str_40 >> 8)
      003964 C0 E0            [24] 2122 	push	acc
      003966 74 80            [12] 2123 	mov	a,#0x80
      003968 C0 E0            [24] 2124 	push	acc
      00396A 12 3B 41         [24] 2125 	lcall	_printf
      00396D 15 81            [12] 2126 	dec	sp
      00396F 15 81            [12] 2127 	dec	sp
      003971 15 81            [12] 2128 	dec	sp
                                   2129 ;	8051_i2c_eeprom.c:338: return 0;       // Error
      003973 90 00 00         [24] 2130 	mov	dptr,#0x0000
      003976 22               [24] 2131 	ret
      003977                       2132 00103$:
                                   2133 ;	8051_i2c_eeprom.c:340: SCL = 0;
                                   2134 ;	assignBit
      003977 C2 93            [12] 2135 	clr	_P1_3
                                   2136 ;	8051_i2c_eeprom.c:342: return 1;           // Success
      003979 90 00 01         [24] 2137 	mov	dptr,#0x0001
                                   2138 ;	8051_i2c_eeprom.c:344: }
      00397C 22               [24] 2139 	ret
                                   2140 ;------------------------------------------------------------
                                   2141 ;Allocation info for local variables in function 'i2c_read'
                                   2142 ;------------------------------------------------------------
                                   2143 ;ACK                       Allocated with name '_i2c_read_ACK_65536_100'
                                   2144 ;buff                      Allocated with name '_i2c_read_buff_65536_101'
                                   2145 ;i                         Allocated with name '_i2c_read_i_131072_102'
                                   2146 ;------------------------------------------------------------
                                   2147 ;	8051_i2c_eeprom.c:345: int i2c_read(int ACK)
                                   2148 ;	-----------------------------------------
                                   2149 ;	 function i2c_read
                                   2150 ;	-----------------------------------------
      00397D                       2151 _i2c_read:
      00397D AF 83            [24] 2152 	mov	r7,dph
      00397F E5 82            [12] 2153 	mov	a,dpl
      003981 90 04 15         [24] 2154 	mov	dptr,#_i2c_read_ACK_65536_100
      003984 F0               [24] 2155 	movx	@dptr,a
      003985 EF               [12] 2156 	mov	a,r7
      003986 A3               [24] 2157 	inc	dptr
      003987 F0               [24] 2158 	movx	@dptr,a
                                   2159 ;	8051_i2c_eeprom.c:347: unsigned char buff=0;
      003988 90 04 17         [24] 2160 	mov	dptr,#_i2c_read_buff_65536_101
      00398B E4               [12] 2161 	clr	a
      00398C F0               [24] 2162 	movx	@dptr,a
                                   2163 ;	8051_i2c_eeprom.c:348: SCL = 0;
                                   2164 ;	assignBit
      00398D C2 93            [12] 2165 	clr	_P1_3
                                   2166 ;	8051_i2c_eeprom.c:349: for(int i=0;i<8;i++)
      00398F 7E 00            [12] 2167 	mov	r6,#0x00
      003991 7F 00            [12] 2168 	mov	r7,#0x00
      003993                       2169 00103$:
      003993 C3               [12] 2170 	clr	c
      003994 EE               [12] 2171 	mov	a,r6
      003995 94 08            [12] 2172 	subb	a,#0x08
      003997 EF               [12] 2173 	mov	a,r7
      003998 64 80            [12] 2174 	xrl	a,#0x80
      00399A 94 80            [12] 2175 	subb	a,#0x80
      00399C 50 40            [24] 2176 	jnc	00101$
                                   2177 ;	8051_i2c_eeprom.c:351: SCL = 1;
                                   2178 ;	assignBit
      00399E D2 93            [12] 2179 	setb	_P1_3
                                   2180 ;	8051_i2c_eeprom.c:352: i2c_delay();
      0039A0 C0 07            [24] 2181 	push	ar7
      0039A2 C0 06            [24] 2182 	push	ar6
      0039A4 12 3A 24         [24] 2183 	lcall	_i2c_delay
      0039A7 D0 06            [24] 2184 	pop	ar6
      0039A9 D0 07            [24] 2185 	pop	ar7
                                   2186 ;	8051_i2c_eeprom.c:353: buff |= (SDA << (7 - i));
      0039AB A2 94            [12] 2187 	mov	c,_P1_4
      0039AD E4               [12] 2188 	clr	a
      0039AE 33               [12] 2189 	rlc	a
      0039AF FD               [12] 2190 	mov	r5,a
      0039B0 8E 04            [24] 2191 	mov	ar4,r6
      0039B2 74 07            [12] 2192 	mov	a,#0x07
      0039B4 C3               [12] 2193 	clr	c
      0039B5 9C               [12] 2194 	subb	a,r4
      0039B6 FC               [12] 2195 	mov	r4,a
      0039B7 8C F0            [24] 2196 	mov	b,r4
      0039B9 05 F0            [12] 2197 	inc	b
      0039BB ED               [12] 2198 	mov	a,r5
      0039BC 80 02            [24] 2199 	sjmp	00119$
      0039BE                       2200 00117$:
      0039BE 25 E0            [12] 2201 	add	a,acc
      0039C0                       2202 00119$:
      0039C0 D5 F0 FB         [24] 2203 	djnz	b,00117$
      0039C3 FC               [12] 2204 	mov	r4,a
      0039C4 90 04 17         [24] 2205 	mov	dptr,#_i2c_read_buff_65536_101
      0039C7 E0               [24] 2206 	movx	a,@dptr
      0039C8 4C               [12] 2207 	orl	a,r4
      0039C9 F0               [24] 2208 	movx	@dptr,a
                                   2209 ;	8051_i2c_eeprom.c:354: i2c_delay();
      0039CA C0 07            [24] 2210 	push	ar7
      0039CC C0 06            [24] 2211 	push	ar6
      0039CE 12 3A 24         [24] 2212 	lcall	_i2c_delay
      0039D1 D0 06            [24] 2213 	pop	ar6
      0039D3 D0 07            [24] 2214 	pop	ar7
                                   2215 ;	8051_i2c_eeprom.c:355: SCL=0;
                                   2216 ;	assignBit
      0039D5 C2 93            [12] 2217 	clr	_P1_3
                                   2218 ;	8051_i2c_eeprom.c:349: for(int i=0;i<8;i++)
      0039D7 0E               [12] 2219 	inc	r6
      0039D8 BE 00 B8         [24] 2220 	cjne	r6,#0x00,00103$
      0039DB 0F               [12] 2221 	inc	r7
      0039DC 80 B5            [24] 2222 	sjmp	00103$
      0039DE                       2223 00101$:
                                   2224 ;	8051_i2c_eeprom.c:359: SDA = !ACK;         // ACK = 0, NACK = 1
      0039DE 90 04 15         [24] 2225 	mov	dptr,#_i2c_read_ACK_65536_100
      0039E1 E0               [24] 2226 	movx	a,@dptr
      0039E2 FE               [12] 2227 	mov	r6,a
      0039E3 A3               [24] 2228 	inc	dptr
      0039E4 E0               [24] 2229 	movx	a,@dptr
      0039E5 4E               [12] 2230 	orl	a,r6
      0039E6 B4 01 00         [24] 2231 	cjne	a,#0x01,00121$
      0039E9                       2232 00121$:
      0039E9 E4               [12] 2233 	clr	a
      0039EA 33               [12] 2234 	rlc	a
      0039EB 24 FF            [12] 2235 	add	a,#0xff
      0039ED 92 94            [24] 2236 	mov	_P1_4,c
                                   2237 ;	8051_i2c_eeprom.c:360: SCL = 1;
                                   2238 ;	assignBit
      0039EF D2 93            [12] 2239 	setb	_P1_3
                                   2240 ;	8051_i2c_eeprom.c:361: i2c_delay();
      0039F1 12 3A 24         [24] 2241 	lcall	_i2c_delay
                                   2242 ;	8051_i2c_eeprom.c:362: SCL = 0;
                                   2243 ;	assignBit
      0039F4 C2 93            [12] 2244 	clr	_P1_3
                                   2245 ;	8051_i2c_eeprom.c:364: return buff;
      0039F6 90 04 17         [24] 2246 	mov	dptr,#_i2c_read_buff_65536_101
      0039F9 E0               [24] 2247 	movx	a,@dptr
      0039FA FF               [12] 2248 	mov	r7,a
      0039FB 7E 00            [12] 2249 	mov	r6,#0x00
      0039FD 8F 82            [24] 2250 	mov	dpl,r7
      0039FF 8E 83            [24] 2251 	mov	dph,r6
                                   2252 ;	8051_i2c_eeprom.c:365: }
      003A01 22               [24] 2253 	ret
                                   2254 ;------------------------------------------------------------
                                   2255 ;Allocation info for local variables in function 'i2c_start'
                                   2256 ;------------------------------------------------------------
                                   2257 ;	8051_i2c_eeprom.c:366: void i2c_start(void)
                                   2258 ;	-----------------------------------------
                                   2259 ;	 function i2c_start
                                   2260 ;	-----------------------------------------
      003A02                       2261 _i2c_start:
                                   2262 ;	8051_i2c_eeprom.c:368: i2c_delay();
      003A02 12 3A 24         [24] 2263 	lcall	_i2c_delay
                                   2264 ;	8051_i2c_eeprom.c:369: SDA = 1;
                                   2265 ;	assignBit
      003A05 D2 94            [12] 2266 	setb	_P1_4
                                   2267 ;	8051_i2c_eeprom.c:370: i2c_delay();
      003A07 12 3A 24         [24] 2268 	lcall	_i2c_delay
                                   2269 ;	8051_i2c_eeprom.c:371: SCL = 1;
                                   2270 ;	assignBit
      003A0A D2 93            [12] 2271 	setb	_P1_3
                                   2272 ;	8051_i2c_eeprom.c:372: i2c_delay();
      003A0C 12 3A 24         [24] 2273 	lcall	_i2c_delay
                                   2274 ;	8051_i2c_eeprom.c:373: SDA = 0;
                                   2275 ;	assignBit
      003A0F C2 94            [12] 2276 	clr	_P1_4
                                   2277 ;	8051_i2c_eeprom.c:374: i2c_delay();
      003A11 12 3A 24         [24] 2278 	lcall	_i2c_delay
                                   2279 ;	8051_i2c_eeprom.c:375: SCL = 0;
                                   2280 ;	assignBit
      003A14 C2 93            [12] 2281 	clr	_P1_3
                                   2282 ;	8051_i2c_eeprom.c:376: }
      003A16 22               [24] 2283 	ret
                                   2284 ;------------------------------------------------------------
                                   2285 ;Allocation info for local variables in function 'i2c_stop'
                                   2286 ;------------------------------------------------------------
                                   2287 ;	8051_i2c_eeprom.c:378: void i2c_stop(void)
                                   2288 ;	-----------------------------------------
                                   2289 ;	 function i2c_stop
                                   2290 ;	-----------------------------------------
      003A17                       2291 _i2c_stop:
                                   2292 ;	8051_i2c_eeprom.c:380: SDA = 0;
                                   2293 ;	assignBit
      003A17 C2 94            [12] 2294 	clr	_P1_4
                                   2295 ;	8051_i2c_eeprom.c:381: i2c_delay();
      003A19 12 3A 24         [24] 2296 	lcall	_i2c_delay
                                   2297 ;	8051_i2c_eeprom.c:382: SCL = 1;
                                   2298 ;	assignBit
      003A1C D2 93            [12] 2299 	setb	_P1_3
                                   2300 ;	8051_i2c_eeprom.c:383: i2c_delay();
      003A1E 12 3A 24         [24] 2301 	lcall	_i2c_delay
                                   2302 ;	8051_i2c_eeprom.c:384: SDA = 1; 
                                   2303 ;	assignBit
      003A21 D2 94            [12] 2304 	setb	_P1_4
                                   2305 ;	8051_i2c_eeprom.c:385: }
      003A23 22               [24] 2306 	ret
                                   2307 ;------------------------------------------------------------
                                   2308 ;Allocation info for local variables in function 'i2c_delay'
                                   2309 ;------------------------------------------------------------
                                   2310 ;i                         Allocated with name '_i2c_delay_i_131072_109'
                                   2311 ;------------------------------------------------------------
                                   2312 ;	8051_i2c_eeprom.c:387: void i2c_delay() 
                                   2313 ;	-----------------------------------------
                                   2314 ;	 function i2c_delay
                                   2315 ;	-----------------------------------------
      003A24                       2316 _i2c_delay:
                                   2317 ;	8051_i2c_eeprom.c:395: for(int i = 0; i<500; i++);
      003A24 7E 00            [12] 2318 	mov	r6,#0x00
      003A26 7F 00            [12] 2319 	mov	r7,#0x00
      003A28                       2320 00103$:
      003A28 C3               [12] 2321 	clr	c
      003A29 EE               [12] 2322 	mov	a,r6
      003A2A 94 F4            [12] 2323 	subb	a,#0xf4
      003A2C EF               [12] 2324 	mov	a,r7
      003A2D 64 80            [12] 2325 	xrl	a,#0x80
      003A2F 94 81            [12] 2326 	subb	a,#0x81
      003A31 50 07            [24] 2327 	jnc	00105$
      003A33 0E               [12] 2328 	inc	r6
      003A34 BE 00 F1         [24] 2329 	cjne	r6,#0x00,00103$
      003A37 0F               [12] 2330 	inc	r7
      003A38 80 EE            [24] 2331 	sjmp	00103$
      003A3A                       2332 00105$:
                                   2333 ;	8051_i2c_eeprom.c:396: }
      003A3A 22               [24] 2334 	ret
                                   2335 ;------------------------------------------------------------
                                   2336 ;Allocation info for local variables in function 'test_function'
                                   2337 ;------------------------------------------------------------
                                   2338 ;test_data                 Allocated with name '_test_function_test_data_65537_111'
                                   2339 ;address                   Allocated with name '_test_function_address_65537_111'
                                   2340 ;i                         Allocated with name '_test_function_i_131073_112'
                                   2341 ;read_data                 Allocated with name '_test_function_read_data_65538_114'
                                   2342 ;------------------------------------------------------------
                                   2343 ;	8051_i2c_eeprom.c:398: void test_function()
                                   2344 ;	-----------------------------------------
                                   2345 ;	 function test_function
                                   2346 ;	-----------------------------------------
      003A3B                       2347 _test_function:
                                   2348 ;	8051_i2c_eeprom.c:400: i2c_start();
      003A3B 12 3A 02         [24] 2349 	lcall	_i2c_start
                                   2350 ;	8051_i2c_eeprom.c:401: i2c_delay();
      003A3E 12 3A 24         [24] 2351 	lcall	_i2c_delay
                                   2352 ;	8051_i2c_eeprom.c:407: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      003A41 74 02            [12] 2353 	mov	a,#0x02
      003A43 C0 E0            [24] 2354 	push	acc
      003A45 E4               [12] 2355 	clr	a
      003A46 C0 E0            [24] 2356 	push	acc
      003A48 74 26            [12] 2357 	mov	a,#0x26
      003A4A C0 E0            [24] 2358 	push	acc
      003A4C E4               [12] 2359 	clr	a
      003A4D C0 E0            [24] 2360 	push	acc
      003A4F 74 28            [12] 2361 	mov	a,#___str_41
      003A51 C0 E0            [24] 2362 	push	acc
      003A53 74 50            [12] 2363 	mov	a,#(___str_41 >> 8)
      003A55 C0 E0            [24] 2364 	push	acc
      003A57 74 80            [12] 2365 	mov	a,#0x80
      003A59 C0 E0            [24] 2366 	push	acc
      003A5B 12 3B 41         [24] 2367 	lcall	_printf
      003A5E E5 81            [12] 2368 	mov	a,sp
      003A60 24 F9            [12] 2369 	add	a,#0xf9
      003A62 F5 81            [12] 2370 	mov	sp,a
                                   2371 ;	8051_i2c_eeprom.c:408: eeprom_write(address, test_data);
      003A64 90 04 0F         [24] 2372 	mov	dptr,#_eeprom_write_PARM_2
      003A67 74 26            [12] 2373 	mov	a,#0x26
      003A69 F0               [24] 2374 	movx	@dptr,a
      003A6A 90 00 02         [24] 2375 	mov	dptr,#0x0002
      003A6D 12 36 20         [24] 2376 	lcall	_eeprom_write
                                   2377 ;	8051_i2c_eeprom.c:409: i2c_stop();
      003A70 12 3A 17         [24] 2378 	lcall	_i2c_stop
                                   2379 ;	8051_i2c_eeprom.c:411: for(int i = 0; i<100; i++)
      003A73 7E 00            [12] 2380 	mov	r6,#0x00
      003A75 7F 00            [12] 2381 	mov	r7,#0x00
      003A77                       2382 00106$:
      003A77 C3               [12] 2383 	clr	c
      003A78 EE               [12] 2384 	mov	a,r6
      003A79 94 64            [12] 2385 	subb	a,#0x64
      003A7B EF               [12] 2386 	mov	a,r7
      003A7C 64 80            [12] 2387 	xrl	a,#0x80
      003A7E 94 80            [12] 2388 	subb	a,#0x80
      003A80 50 12            [24] 2389 	jnc	00101$
                                   2390 ;	8051_i2c_eeprom.c:413: i2c_delay();
      003A82 C0 07            [24] 2391 	push	ar7
      003A84 C0 06            [24] 2392 	push	ar6
      003A86 12 3A 24         [24] 2393 	lcall	_i2c_delay
      003A89 D0 06            [24] 2394 	pop	ar6
      003A8B D0 07            [24] 2395 	pop	ar7
                                   2396 ;	8051_i2c_eeprom.c:411: for(int i = 0; i<100; i++)
      003A8D 0E               [12] 2397 	inc	r6
      003A8E BE 00 E6         [24] 2398 	cjne	r6,#0x00,00106$
      003A91 0F               [12] 2399 	inc	r7
      003A92 80 E3            [24] 2400 	sjmp	00106$
      003A94                       2401 00101$:
                                   2402 ;	8051_i2c_eeprom.c:417: unsigned char read_data = eeprom_read(address);
      003A94 90 00 02         [24] 2403 	mov	dptr,#0x0002
      003A97 12 37 A2         [24] 2404 	lcall	_eeprom_read
      003A9A AE 82            [24] 2405 	mov	r6,dpl
                                   2406 ;	8051_i2c_eeprom.c:418: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      003A9C 8E 05            [24] 2407 	mov	ar5,r6
      003A9E 7F 00            [12] 2408 	mov	r7,#0x00
      003AA0 C0 06            [24] 2409 	push	ar6
      003AA2 C0 05            [24] 2410 	push	ar5
      003AA4 C0 07            [24] 2411 	push	ar7
      003AA6 74 02            [12] 2412 	mov	a,#0x02
      003AA8 C0 E0            [24] 2413 	push	acc
      003AAA E4               [12] 2414 	clr	a
      003AAB C0 E0            [24] 2415 	push	acc
      003AAD 74 50            [12] 2416 	mov	a,#___str_42
      003AAF C0 E0            [24] 2417 	push	acc
      003AB1 74 50            [12] 2418 	mov	a,#(___str_42 >> 8)
      003AB3 C0 E0            [24] 2419 	push	acc
      003AB5 74 80            [12] 2420 	mov	a,#0x80
      003AB7 C0 E0            [24] 2421 	push	acc
      003AB9 12 3B 41         [24] 2422 	lcall	_printf
      003ABC E5 81            [12] 2423 	mov	a,sp
      003ABE 24 F9            [12] 2424 	add	a,#0xf9
      003AC0 F5 81            [12] 2425 	mov	sp,a
      003AC2 D0 06            [24] 2426 	pop	ar6
                                   2427 ;	8051_i2c_eeprom.c:421: if(read_data == test_data) {
      003AC4 BE 26 16         [24] 2428 	cjne	r6,#0x26,00103$
                                   2429 ;	8051_i2c_eeprom.c:422: printf("MATCH - Write/Read successful!\n\r");
      003AC7 74 78            [12] 2430 	mov	a,#___str_43
      003AC9 C0 E0            [24] 2431 	push	acc
      003ACB 74 50            [12] 2432 	mov	a,#(___str_43 >> 8)
      003ACD C0 E0            [24] 2433 	push	acc
      003ACF 74 80            [12] 2434 	mov	a,#0x80
      003AD1 C0 E0            [24] 2435 	push	acc
      003AD3 12 3B 41         [24] 2436 	lcall	_printf
      003AD6 15 81            [12] 2437 	dec	sp
      003AD8 15 81            [12] 2438 	dec	sp
      003ADA 15 81            [12] 2439 	dec	sp
      003ADC 22               [24] 2440 	ret
      003ADD                       2441 00103$:
                                   2442 ;	8051_i2c_eeprom.c:424: printf("ERROR - Data mismatch!\n\r");
      003ADD 74 99            [12] 2443 	mov	a,#___str_44
      003ADF C0 E0            [24] 2444 	push	acc
      003AE1 74 50            [12] 2445 	mov	a,#(___str_44 >> 8)
      003AE3 C0 E0            [24] 2446 	push	acc
      003AE5 74 80            [12] 2447 	mov	a,#0x80
      003AE7 C0 E0            [24] 2448 	push	acc
      003AE9 12 3B 41         [24] 2449 	lcall	_printf
      003AEC 15 81            [12] 2450 	dec	sp
      003AEE 15 81            [12] 2451 	dec	sp
      003AF0 15 81            [12] 2452 	dec	sp
                                   2453 ;	8051_i2c_eeprom.c:428: }
      003AF2 22               [24] 2454 	ret
                                   2455 	.area CSEG    (CODE)
                                   2456 	.area CONST   (CODE)
                                   2457 	.area CONST   (CODE)
      0045A3                       2458 ___str_0:
      0045A3 0A                    2459 	.db 0x0a
      0045A4 E2                    2460 	.db 0xe2
      0045A5 95                    2461 	.db 0x95
      0045A6 94                    2462 	.db 0x94
      0045A7 E2                    2463 	.db 0xe2
      0045A8 95                    2464 	.db 0x95
      0045A9 90                    2465 	.db 0x90
      0045AA E2                    2466 	.db 0xe2
      0045AB 95                    2467 	.db 0x95
      0045AC 90                    2468 	.db 0x90
      0045AD E2                    2469 	.db 0xe2
      0045AE 95                    2470 	.db 0x95
      0045AF 90                    2471 	.db 0x90
      0045B0 E2                    2472 	.db 0xe2
      0045B1 95                    2473 	.db 0x95
      0045B2 90                    2474 	.db 0x90
      0045B3 E2                    2475 	.db 0xe2
      0045B4 95                    2476 	.db 0x95
      0045B5 90                    2477 	.db 0x90
      0045B6 E2                    2478 	.db 0xe2
      0045B7 95                    2479 	.db 0x95
      0045B8 90                    2480 	.db 0x90
      0045B9 E2                    2481 	.db 0xe2
      0045BA 95                    2482 	.db 0x95
      0045BB 90                    2483 	.db 0x90
      0045BC E2                    2484 	.db 0xe2
      0045BD 95                    2485 	.db 0x95
      0045BE 90                    2486 	.db 0x90
      0045BF E2                    2487 	.db 0xe2
      0045C0 95                    2488 	.db 0x95
      0045C1 90                    2489 	.db 0x90
      0045C2 E2                    2490 	.db 0xe2
      0045C3 95                    2491 	.db 0x95
      0045C4 90                    2492 	.db 0x90
      0045C5 E2                    2493 	.db 0xe2
      0045C6 95                    2494 	.db 0x95
      0045C7 90                    2495 	.db 0x90
      0045C8 E2                    2496 	.db 0xe2
      0045C9 95                    2497 	.db 0x95
      0045CA 90                    2498 	.db 0x90
      0045CB E2                    2499 	.db 0xe2
      0045CC 95                    2500 	.db 0x95
      0045CD 90                    2501 	.db 0x90
      0045CE E2                    2502 	.db 0xe2
      0045CF 95                    2503 	.db 0x95
      0045D0 90                    2504 	.db 0x90
      0045D1 E2                    2505 	.db 0xe2
      0045D2 95                    2506 	.db 0x95
      0045D3 90                    2507 	.db 0x90
      0045D4 E2                    2508 	.db 0xe2
      0045D5 95                    2509 	.db 0x95
      0045D6 90                    2510 	.db 0x90
      0045D7 E2                    2511 	.db 0xe2
      0045D8 95                    2512 	.db 0x95
      0045D9 90                    2513 	.db 0x90
      0045DA E2                    2514 	.db 0xe2
      0045DB 95                    2515 	.db 0x95
      0045DC 90                    2516 	.db 0x90
      0045DD E2                    2517 	.db 0xe2
      0045DE 95                    2518 	.db 0x95
      0045DF 90                    2519 	.db 0x90
      0045E0 E2                    2520 	.db 0xe2
      0045E1 95                    2521 	.db 0x95
      0045E2 90                    2522 	.db 0x90
      0045E3 E2                    2523 	.db 0xe2
      0045E4 95                    2524 	.db 0x95
      0045E5 90                    2525 	.db 0x90
      0045E6 E2                    2526 	.db 0xe2
      0045E7 95                    2527 	.db 0x95
      0045E8 90                    2528 	.db 0x90
      0045E9 E2                    2529 	.db 0xe2
      0045EA 95                    2530 	.db 0x95
      0045EB 90                    2531 	.db 0x90
      0045EC E2                    2532 	.db 0xe2
      0045ED 95                    2533 	.db 0x95
      0045EE 90                    2534 	.db 0x90
      0045EF E2                    2535 	.db 0xe2
      0045F0 95                    2536 	.db 0x95
      0045F1 90                    2537 	.db 0x90
      0045F2 E2                    2538 	.db 0xe2
      0045F3 95                    2539 	.db 0x95
      0045F4 90                    2540 	.db 0x90
      0045F5 E2                    2541 	.db 0xe2
      0045F6 95                    2542 	.db 0x95
      0045F7 90                    2543 	.db 0x90
      0045F8 E2                    2544 	.db 0xe2
      0045F9 95                    2545 	.db 0x95
      0045FA 90                    2546 	.db 0x90
      0045FB E2                    2547 	.db 0xe2
      0045FC 95                    2548 	.db 0x95
      0045FD 90                    2549 	.db 0x90
      0045FE E2                    2550 	.db 0xe2
      0045FF 95                    2551 	.db 0x95
      004600 90                    2552 	.db 0x90
      004601 E2                    2553 	.db 0xe2
      004602 95                    2554 	.db 0x95
      004603 90                    2555 	.db 0x90
      004604 E2                    2556 	.db 0xe2
      004605 95                    2557 	.db 0x95
      004606 90                    2558 	.db 0x90
      004607 E2                    2559 	.db 0xe2
      004608 95                    2560 	.db 0x95
      004609 90                    2561 	.db 0x90
      00460A E2                    2562 	.db 0xe2
      00460B 95                    2563 	.db 0x95
      00460C 90                    2564 	.db 0x90
      00460D E2                    2565 	.db 0xe2
      00460E 95                    2566 	.db 0x95
      00460F 90                    2567 	.db 0x90
      004610 E2                    2568 	.db 0xe2
      004611 95                    2569 	.db 0x95
      004612 90                    2570 	.db 0x90
      004613 E2                    2571 	.db 0xe2
      004614 95                    2572 	.db 0x95
      004615 90                    2573 	.db 0x90
      004616 E2                    2574 	.db 0xe2
      004617 95                    2575 	.db 0x95
      004618 90                    2576 	.db 0x90
      004619 E2                    2577 	.db 0xe2
      00461A 95                    2578 	.db 0x95
      00461B 90                    2579 	.db 0x90
      00461C E2                    2580 	.db 0xe2
      00461D 95                    2581 	.db 0x95
      00461E 90                    2582 	.db 0x90
      00461F E2                    2583 	.db 0xe2
      004620 95                    2584 	.db 0x95
      004621 90                    2585 	.db 0x90
      004622 E2                    2586 	.db 0xe2
      004623 95                    2587 	.db 0x95
      004624 90                    2588 	.db 0x90
      004625 E2                    2589 	.db 0xe2
      004626 95                    2590 	.db 0x95
      004627 90                    2591 	.db 0x90
      004628 E2                    2592 	.db 0xe2
      004629 95                    2593 	.db 0x95
      00462A 90                    2594 	.db 0x90
      00462B E2                    2595 	.db 0xe2
      00462C 95                    2596 	.db 0x95
      00462D 90                    2597 	.db 0x90
      00462E E2                    2598 	.db 0xe2
      00462F 95                    2599 	.db 0x95
      004630 90                    2600 	.db 0x90
      004631 E2                    2601 	.db 0xe2
      004632 95                    2602 	.db 0x95
      004633 90                    2603 	.db 0x90
      004634 E2                    2604 	.db 0xe2
      004635 95                    2605 	.db 0x95
      004636 90                    2606 	.db 0x90
      004637 E2                    2607 	.db 0xe2
      004638 95                    2608 	.db 0x95
      004639 90                    2609 	.db 0x90
      00463A E2                    2610 	.db 0xe2
      00463B 95                    2611 	.db 0x95
      00463C 90                    2612 	.db 0x90
      00463D E2                    2613 	.db 0xe2
      00463E 95                    2614 	.db 0x95
      00463F 90                    2615 	.db 0x90
      004640 E2                    2616 	.db 0xe2
      004641 95                    2617 	.db 0x95
      004642 90                    2618 	.db 0x90
      004643 E2                    2619 	.db 0xe2
      004644 95                    2620 	.db 0x95
      004645 90                    2621 	.db 0x90
      004646 E2                    2622 	.db 0xe2
      004647 95                    2623 	.db 0x95
      004648 90                    2624 	.db 0x90
      004649 E2                    2625 	.db 0xe2
      00464A 95                    2626 	.db 0x95
      00464B 90                    2627 	.db 0x90
      00464C E2                    2628 	.db 0xe2
      00464D 95                    2629 	.db 0x95
      00464E 90                    2630 	.db 0x90
      00464F E2                    2631 	.db 0xe2
      004650 95                    2632 	.db 0x95
      004651 97                    2633 	.db 0x97
      004652 0A                    2634 	.db 0x0a
      004653 0D                    2635 	.db 0x0d
      004654 00                    2636 	.db 0x00
                                   2637 	.area CSEG    (CODE)
                                   2638 	.area CONST   (CODE)
      004655                       2639 ___str_1:
      004655 E2                    2640 	.db 0xe2
      004656 95                    2641 	.db 0x95
      004657 91                    2642 	.db 0x91
      004658 20 20 20 20 20 20 20  2643 	.ascii "           I2C Memory Management System v1.0            "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
      004690 E2                    2644 	.db 0xe2
      004691 95                    2645 	.db 0x95
      004692 91                    2646 	.db 0x91
      004693 0A                    2647 	.db 0x0a
      004694 0D                    2648 	.db 0x0d
      004695 00                    2649 	.db 0x00
                                   2650 	.area CSEG    (CODE)
                                   2651 	.area CONST   (CODE)
      004696                       2652 ___str_2:
      004696 E2                    2653 	.db 0xe2
      004697 95                    2654 	.db 0x95
      004698 9A                    2655 	.db 0x9a
      004699 E2                    2656 	.db 0xe2
      00469A 95                    2657 	.db 0x95
      00469B 90                    2658 	.db 0x90
      00469C E2                    2659 	.db 0xe2
      00469D 95                    2660 	.db 0x95
      00469E 90                    2661 	.db 0x90
      00469F E2                    2662 	.db 0xe2
      0046A0 95                    2663 	.db 0x95
      0046A1 90                    2664 	.db 0x90
      0046A2 E2                    2665 	.db 0xe2
      0046A3 95                    2666 	.db 0x95
      0046A4 90                    2667 	.db 0x90
      0046A5 E2                    2668 	.db 0xe2
      0046A6 95                    2669 	.db 0x95
      0046A7 90                    2670 	.db 0x90
      0046A8 E2                    2671 	.db 0xe2
      0046A9 95                    2672 	.db 0x95
      0046AA 90                    2673 	.db 0x90
      0046AB E2                    2674 	.db 0xe2
      0046AC 95                    2675 	.db 0x95
      0046AD 90                    2676 	.db 0x90
      0046AE E2                    2677 	.db 0xe2
      0046AF 95                    2678 	.db 0x95
      0046B0 90                    2679 	.db 0x90
      0046B1 E2                    2680 	.db 0xe2
      0046B2 95                    2681 	.db 0x95
      0046B3 90                    2682 	.db 0x90
      0046B4 E2                    2683 	.db 0xe2
      0046B5 95                    2684 	.db 0x95
      0046B6 90                    2685 	.db 0x90
      0046B7 E2                    2686 	.db 0xe2
      0046B8 95                    2687 	.db 0x95
      0046B9 90                    2688 	.db 0x90
      0046BA E2                    2689 	.db 0xe2
      0046BB 95                    2690 	.db 0x95
      0046BC 90                    2691 	.db 0x90
      0046BD E2                    2692 	.db 0xe2
      0046BE 95                    2693 	.db 0x95
      0046BF 90                    2694 	.db 0x90
      0046C0 E2                    2695 	.db 0xe2
      0046C1 95                    2696 	.db 0x95
      0046C2 90                    2697 	.db 0x90
      0046C3 E2                    2698 	.db 0xe2
      0046C4 95                    2699 	.db 0x95
      0046C5 90                    2700 	.db 0x90
      0046C6 E2                    2701 	.db 0xe2
      0046C7 95                    2702 	.db 0x95
      0046C8 90                    2703 	.db 0x90
      0046C9 E2                    2704 	.db 0xe2
      0046CA 95                    2705 	.db 0x95
      0046CB 90                    2706 	.db 0x90
      0046CC E2                    2707 	.db 0xe2
      0046CD 95                    2708 	.db 0x95
      0046CE 90                    2709 	.db 0x90
      0046CF E2                    2710 	.db 0xe2
      0046D0 95                    2711 	.db 0x95
      0046D1 90                    2712 	.db 0x90
      0046D2 E2                    2713 	.db 0xe2
      0046D3 95                    2714 	.db 0x95
      0046D4 90                    2715 	.db 0x90
      0046D5 E2                    2716 	.db 0xe2
      0046D6 95                    2717 	.db 0x95
      0046D7 90                    2718 	.db 0x90
      0046D8 E2                    2719 	.db 0xe2
      0046D9 95                    2720 	.db 0x95
      0046DA 90                    2721 	.db 0x90
      0046DB E2                    2722 	.db 0xe2
      0046DC 95                    2723 	.db 0x95
      0046DD 90                    2724 	.db 0x90
      0046DE E2                    2725 	.db 0xe2
      0046DF 95                    2726 	.db 0x95
      0046E0 90                    2727 	.db 0x90
      0046E1 E2                    2728 	.db 0xe2
      0046E2 95                    2729 	.db 0x95
      0046E3 90                    2730 	.db 0x90
      0046E4 E2                    2731 	.db 0xe2
      0046E5 95                    2732 	.db 0x95
      0046E6 90                    2733 	.db 0x90
      0046E7 E2                    2734 	.db 0xe2
      0046E8 95                    2735 	.db 0x95
      0046E9 90                    2736 	.db 0x90
      0046EA E2                    2737 	.db 0xe2
      0046EB 95                    2738 	.db 0x95
      0046EC 90                    2739 	.db 0x90
      0046ED E2                    2740 	.db 0xe2
      0046EE 95                    2741 	.db 0x95
      0046EF 90                    2742 	.db 0x90
      0046F0 E2                    2743 	.db 0xe2
      0046F1 95                    2744 	.db 0x95
      0046F2 90                    2745 	.db 0x90
      0046F3 E2                    2746 	.db 0xe2
      0046F4 95                    2747 	.db 0x95
      0046F5 90                    2748 	.db 0x90
      0046F6 E2                    2749 	.db 0xe2
      0046F7 95                    2750 	.db 0x95
      0046F8 90                    2751 	.db 0x90
      0046F9 E2                    2752 	.db 0xe2
      0046FA 95                    2753 	.db 0x95
      0046FB 90                    2754 	.db 0x90
      0046FC E2                    2755 	.db 0xe2
      0046FD 95                    2756 	.db 0x95
      0046FE 90                    2757 	.db 0x90
      0046FF E2                    2758 	.db 0xe2
      004700 95                    2759 	.db 0x95
      004701 90                    2760 	.db 0x90
      004702 E2                    2761 	.db 0xe2
      004703 95                    2762 	.db 0x95
      004704 90                    2763 	.db 0x90
      004705 E2                    2764 	.db 0xe2
      004706 95                    2765 	.db 0x95
      004707 90                    2766 	.db 0x90
      004708 E2                    2767 	.db 0xe2
      004709 95                    2768 	.db 0x95
      00470A 90                    2769 	.db 0x90
      00470B E2                    2770 	.db 0xe2
      00470C 95                    2771 	.db 0x95
      00470D 90                    2772 	.db 0x90
      00470E E2                    2773 	.db 0xe2
      00470F 95                    2774 	.db 0x95
      004710 90                    2775 	.db 0x90
      004711 E2                    2776 	.db 0xe2
      004712 95                    2777 	.db 0x95
      004713 90                    2778 	.db 0x90
      004714 E2                    2779 	.db 0xe2
      004715 95                    2780 	.db 0x95
      004716 90                    2781 	.db 0x90
      004717 E2                    2782 	.db 0xe2
      004718 95                    2783 	.db 0x95
      004719 90                    2784 	.db 0x90
      00471A E2                    2785 	.db 0xe2
      00471B 95                    2786 	.db 0x95
      00471C 90                    2787 	.db 0x90
      00471D E2                    2788 	.db 0xe2
      00471E 95                    2789 	.db 0x95
      00471F 90                    2790 	.db 0x90
      004720 E2                    2791 	.db 0xe2
      004721 95                    2792 	.db 0x95
      004722 90                    2793 	.db 0x90
      004723 E2                    2794 	.db 0xe2
      004724 95                    2795 	.db 0x95
      004725 90                    2796 	.db 0x90
      004726 E2                    2797 	.db 0xe2
      004727 95                    2798 	.db 0x95
      004728 90                    2799 	.db 0x90
      004729 E2                    2800 	.db 0xe2
      00472A 95                    2801 	.db 0x95
      00472B 90                    2802 	.db 0x90
      00472C E2                    2803 	.db 0xe2
      00472D 95                    2804 	.db 0x95
      00472E 90                    2805 	.db 0x90
      00472F E2                    2806 	.db 0xe2
      004730 95                    2807 	.db 0x95
      004731 90                    2808 	.db 0x90
      004732 E2                    2809 	.db 0xe2
      004733 95                    2810 	.db 0x95
      004734 90                    2811 	.db 0x90
      004735 E2                    2812 	.db 0xe2
      004736 95                    2813 	.db 0x95
      004737 90                    2814 	.db 0x90
      004738 E2                    2815 	.db 0xe2
      004739 95                    2816 	.db 0x95
      00473A 90                    2817 	.db 0x90
      00473B E2                    2818 	.db 0xe2
      00473C 95                    2819 	.db 0x95
      00473D 90                    2820 	.db 0x90
      00473E E2                    2821 	.db 0xe2
      00473F 95                    2822 	.db 0x95
      004740 90                    2823 	.db 0x90
      004741 E2                    2824 	.db 0xe2
      004742 95                    2825 	.db 0x95
      004743 9D                    2826 	.db 0x9d
      004744 0A                    2827 	.db 0x0a
      004745 0D                    2828 	.db 0x0d
      004746 00                    2829 	.db 0x00
                                   2830 	.area CSEG    (CODE)
                                   2831 	.area CONST   (CODE)
      004747                       2832 ___str_3:
      004747 0A                    2833 	.db 0x0a
      004748 0D                    2834 	.db 0x0d
      004749 E2                    2835 	.db 0xe2
      00474A 94                    2836 	.db 0x94
      00474B 8C                    2837 	.db 0x8c
      00474C E2                    2838 	.db 0xe2
      00474D 94                    2839 	.db 0x94
      00474E 80                    2840 	.db 0x80
      00474F E2                    2841 	.db 0xe2
      004750 94                    2842 	.db 0x94
      004751 80                    2843 	.db 0x80
      004752 E2                    2844 	.db 0xe2
      004753 94                    2845 	.db 0x94
      004754 80                    2846 	.db 0x80
      004755 E2                    2847 	.db 0xe2
      004756 94                    2848 	.db 0x94
      004757 80                    2849 	.db 0x80
      004758 E2                    2850 	.db 0xe2
      004759 94                    2851 	.db 0x94
      00475A 80                    2852 	.db 0x80
      00475B E2                    2853 	.db 0xe2
      00475C 94                    2854 	.db 0x94
      00475D 80                    2855 	.db 0x80
      00475E E2                    2856 	.db 0xe2
      00475F 94                    2857 	.db 0x94
      004760 80                    2858 	.db 0x80
      004761 E2                    2859 	.db 0xe2
      004762 94                    2860 	.db 0x94
      004763 80                    2861 	.db 0x80
      004764 E2                    2862 	.db 0xe2
      004765 94                    2863 	.db 0x94
      004766 80                    2864 	.db 0x80
      004767 E2                    2865 	.db 0xe2
      004768 94                    2866 	.db 0x94
      004769 80                    2867 	.db 0x80
      00476A E2                    2868 	.db 0xe2
      00476B 94                    2869 	.db 0x94
      00476C 80                    2870 	.db 0x80
      00476D E2                    2871 	.db 0xe2
      00476E 94                    2872 	.db 0x94
      00476F 80                    2873 	.db 0x80
      004770 E2                    2874 	.db 0xe2
      004771 94                    2875 	.db 0x94
      004772 AC                    2876 	.db 0xac
      004773 E2                    2877 	.db 0xe2
      004774 94                    2878 	.db 0x94
      004775 80                    2879 	.db 0x80
      004776 E2                    2880 	.db 0xe2
      004777 94                    2881 	.db 0x94
      004778 80                    2882 	.db 0x80
      004779 E2                    2883 	.db 0xe2
      00477A 94                    2884 	.db 0x94
      00477B 80                    2885 	.db 0x80
      00477C E2                    2886 	.db 0xe2
      00477D 94                    2887 	.db 0x94
      00477E 80                    2888 	.db 0x80
      00477F E2                    2889 	.db 0xe2
      004780 94                    2890 	.db 0x94
      004781 80                    2891 	.db 0x80
      004782 E2                    2892 	.db 0xe2
      004783 94                    2893 	.db 0x94
      004784 80                    2894 	.db 0x80
      004785 E2                    2895 	.db 0xe2
      004786 94                    2896 	.db 0x94
      004787 80                    2897 	.db 0x80
      004788 E2                    2898 	.db 0xe2
      004789 94                    2899 	.db 0x94
      00478A 80                    2900 	.db 0x80
      00478B E2                    2901 	.db 0xe2
      00478C 94                    2902 	.db 0x94
      00478D 80                    2903 	.db 0x80
      00478E E2                    2904 	.db 0xe2
      00478F 94                    2905 	.db 0x94
      004790 80                    2906 	.db 0x80
      004791 E2                    2907 	.db 0xe2
      004792 94                    2908 	.db 0x94
      004793 80                    2909 	.db 0x80
      004794 E2                    2910 	.db 0xe2
      004795 94                    2911 	.db 0x94
      004796 80                    2912 	.db 0x80
      004797 E2                    2913 	.db 0xe2
      004798 94                    2914 	.db 0x94
      004799 80                    2915 	.db 0x80
      00479A E2                    2916 	.db 0xe2
      00479B 94                    2917 	.db 0x94
      00479C 80                    2918 	.db 0x80
      00479D E2                    2919 	.db 0xe2
      00479E 94                    2920 	.db 0x94
      00479F 80                    2921 	.db 0x80
      0047A0 E2                    2922 	.db 0xe2
      0047A1 94                    2923 	.db 0x94
      0047A2 80                    2924 	.db 0x80
      0047A3 E2                    2925 	.db 0xe2
      0047A4 94                    2926 	.db 0x94
      0047A5 80                    2927 	.db 0x80
      0047A6 E2                    2928 	.db 0xe2
      0047A7 94                    2929 	.db 0x94
      0047A8 80                    2930 	.db 0x80
      0047A9 E2                    2931 	.db 0xe2
      0047AA 94                    2932 	.db 0x94
      0047AB 80                    2933 	.db 0x80
      0047AC E2                    2934 	.db 0xe2
      0047AD 94                    2935 	.db 0x94
      0047AE 80                    2936 	.db 0x80
      0047AF E2                    2937 	.db 0xe2
      0047B0 94                    2938 	.db 0x94
      0047B1 80                    2939 	.db 0x80
      0047B2 E2                    2940 	.db 0xe2
      0047B3 94                    2941 	.db 0x94
      0047B4 80                    2942 	.db 0x80
      0047B5 E2                    2943 	.db 0xe2
      0047B6 94                    2944 	.db 0x94
      0047B7 80                    2945 	.db 0x80
      0047B8 E2                    2946 	.db 0xe2
      0047B9 94                    2947 	.db 0x94
      0047BA 80                    2948 	.db 0x80
      0047BB E2                    2949 	.db 0xe2
      0047BC 94                    2950 	.db 0x94
      0047BD 80                    2951 	.db 0x80
      0047BE E2                    2952 	.db 0xe2
      0047BF 94                    2953 	.db 0x94
      0047C0 80                    2954 	.db 0x80
      0047C1 E2                    2955 	.db 0xe2
      0047C2 94                    2956 	.db 0x94
      0047C3 80                    2957 	.db 0x80
      0047C4 E2                    2958 	.db 0xe2
      0047C5 94                    2959 	.db 0x94
      0047C6 80                    2960 	.db 0x80
      0047C7 E2                    2961 	.db 0xe2
      0047C8 94                    2962 	.db 0x94
      0047C9 80                    2963 	.db 0x80
      0047CA E2                    2964 	.db 0xe2
      0047CB 94                    2965 	.db 0x94
      0047CC 80                    2966 	.db 0x80
      0047CD E2                    2967 	.db 0xe2
      0047CE 94                    2968 	.db 0x94
      0047CF 80                    2969 	.db 0x80
      0047D0 E2                    2970 	.db 0xe2
      0047D1 94                    2971 	.db 0x94
      0047D2 80                    2972 	.db 0x80
      0047D3 E2                    2973 	.db 0xe2
      0047D4 94                    2974 	.db 0x94
      0047D5 80                    2975 	.db 0x80
      0047D6 E2                    2976 	.db 0xe2
      0047D7 94                    2977 	.db 0x94
      0047D8 80                    2978 	.db 0x80
      0047D9 E2                    2979 	.db 0xe2
      0047DA 94                    2980 	.db 0x94
      0047DB 80                    2981 	.db 0x80
      0047DC E2                    2982 	.db 0xe2
      0047DD 94                    2983 	.db 0x94
      0047DE 80                    2984 	.db 0x80
      0047DF E2                    2985 	.db 0xe2
      0047E0 94                    2986 	.db 0x94
      0047E1 80                    2987 	.db 0x80
      0047E2 E2                    2988 	.db 0xe2
      0047E3 94                    2989 	.db 0x94
      0047E4 80                    2990 	.db 0x80
      0047E5 E2                    2991 	.db 0xe2
      0047E6 94                    2992 	.db 0x94
      0047E7 80                    2993 	.db 0x80
      0047E8 E2                    2994 	.db 0xe2
      0047E9 94                    2995 	.db 0x94
      0047EA 80                    2996 	.db 0x80
      0047EB E2                    2997 	.db 0xe2
      0047EC 94                    2998 	.db 0x94
      0047ED 80                    2999 	.db 0x80
      0047EE E2                    3000 	.db 0xe2
      0047EF 94                    3001 	.db 0x94
      0047F0 80                    3002 	.db 0x80
      0047F1 E2                    3003 	.db 0xe2
      0047F2 94                    3004 	.db 0x94
      0047F3 80                    3005 	.db 0x80
      0047F4 E2                    3006 	.db 0xe2
      0047F5 94                    3007 	.db 0x94
      0047F6 80                    3008 	.db 0x80
      0047F7 E2                    3009 	.db 0xe2
      0047F8 94                    3010 	.db 0x94
      0047F9 90                    3011 	.db 0x90
      0047FA 0A                    3012 	.db 0x0a
      0047FB 0D                    3013 	.db 0x0d
      0047FC 00                    3014 	.db 0x00
                                   3015 	.area CSEG    (CODE)
                                   3016 	.area CONST   (CODE)
      0047FD                       3017 ___str_4:
      0047FD E2                    3018 	.db 0xe2
      0047FE 94                    3019 	.db 0x94
      0047FF 82                    3020 	.db 0x82
      004800 20 20 43 6F 6D 6D 61  3021 	.ascii "  Command   "
             6E 64 20 20 20
      00480C E2                    3022 	.db 0xe2
      00480D 94                    3023 	.db 0x94
      00480E 82                    3024 	.db 0x82
      00480F 20 20 20 20 20 20 20  3025 	.ascii "               Description                  "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      00483B E2                    3026 	.db 0xe2
      00483C 94                    3027 	.db 0x94
      00483D 82                    3028 	.db 0x82
      00483E 0A                    3029 	.db 0x0a
      00483F 0D                    3030 	.db 0x0d
      004840 00                    3031 	.db 0x00
                                   3032 	.area CSEG    (CODE)
                                   3033 	.area CONST   (CODE)
      004841                       3034 ___str_5:
      004841 E2                    3035 	.db 0xe2
      004842 94                    3036 	.db 0x94
      004843 9C                    3037 	.db 0x9c
      004844 E2                    3038 	.db 0xe2
      004845 94                    3039 	.db 0x94
      004846 80                    3040 	.db 0x80
      004847 E2                    3041 	.db 0xe2
      004848 94                    3042 	.db 0x94
      004849 80                    3043 	.db 0x80
      00484A E2                    3044 	.db 0xe2
      00484B 94                    3045 	.db 0x94
      00484C 80                    3046 	.db 0x80
      00484D E2                    3047 	.db 0xe2
      00484E 94                    3048 	.db 0x94
      00484F 80                    3049 	.db 0x80
      004850 E2                    3050 	.db 0xe2
      004851 94                    3051 	.db 0x94
      004852 80                    3052 	.db 0x80
      004853 E2                    3053 	.db 0xe2
      004854 94                    3054 	.db 0x94
      004855 80                    3055 	.db 0x80
      004856 E2                    3056 	.db 0xe2
      004857 94                    3057 	.db 0x94
      004858 80                    3058 	.db 0x80
      004859 E2                    3059 	.db 0xe2
      00485A 94                    3060 	.db 0x94
      00485B 80                    3061 	.db 0x80
      00485C E2                    3062 	.db 0xe2
      00485D 94                    3063 	.db 0x94
      00485E 80                    3064 	.db 0x80
      00485F E2                    3065 	.db 0xe2
      004860 94                    3066 	.db 0x94
      004861 80                    3067 	.db 0x80
      004862 E2                    3068 	.db 0xe2
      004863 94                    3069 	.db 0x94
      004864 80                    3070 	.db 0x80
      004865 E2                    3071 	.db 0xe2
      004866 94                    3072 	.db 0x94
      004867 80                    3073 	.db 0x80
      004868 E2                    3074 	.db 0xe2
      004869 94                    3075 	.db 0x94
      00486A BC                    3076 	.db 0xbc
      00486B E2                    3077 	.db 0xe2
      00486C 94                    3078 	.db 0x94
      00486D 80                    3079 	.db 0x80
      00486E E2                    3080 	.db 0xe2
      00486F 94                    3081 	.db 0x94
      004870 80                    3082 	.db 0x80
      004871 E2                    3083 	.db 0xe2
      004872 94                    3084 	.db 0x94
      004873 80                    3085 	.db 0x80
      004874 E2                    3086 	.db 0xe2
      004875 94                    3087 	.db 0x94
      004876 80                    3088 	.db 0x80
      004877 E2                    3089 	.db 0xe2
      004878 94                    3090 	.db 0x94
      004879 80                    3091 	.db 0x80
      00487A E2                    3092 	.db 0xe2
      00487B 94                    3093 	.db 0x94
      00487C 80                    3094 	.db 0x80
      00487D E2                    3095 	.db 0xe2
      00487E 94                    3096 	.db 0x94
      00487F 80                    3097 	.db 0x80
      004880 E2                    3098 	.db 0xe2
      004881 94                    3099 	.db 0x94
      004882 80                    3100 	.db 0x80
      004883 E2                    3101 	.db 0xe2
      004884 94                    3102 	.db 0x94
      004885 80                    3103 	.db 0x80
      004886 E2                    3104 	.db 0xe2
      004887 94                    3105 	.db 0x94
      004888 80                    3106 	.db 0x80
      004889 E2                    3107 	.db 0xe2
      00488A 94                    3108 	.db 0x94
      00488B 80                    3109 	.db 0x80
      00488C E2                    3110 	.db 0xe2
      00488D 94                    3111 	.db 0x94
      00488E 80                    3112 	.db 0x80
      00488F E2                    3113 	.db 0xe2
      004890 94                    3114 	.db 0x94
      004891 80                    3115 	.db 0x80
      004892 E2                    3116 	.db 0xe2
      004893 94                    3117 	.db 0x94
      004894 80                    3118 	.db 0x80
      004895 E2                    3119 	.db 0xe2
      004896 94                    3120 	.db 0x94
      004897 80                    3121 	.db 0x80
      004898 E2                    3122 	.db 0xe2
      004899 94                    3123 	.db 0x94
      00489A 80                    3124 	.db 0x80
      00489B E2                    3125 	.db 0xe2
      00489C 94                    3126 	.db 0x94
      00489D 80                    3127 	.db 0x80
      00489E E2                    3128 	.db 0xe2
      00489F 94                    3129 	.db 0x94
      0048A0 80                    3130 	.db 0x80
      0048A1 E2                    3131 	.db 0xe2
      0048A2 94                    3132 	.db 0x94
      0048A3 80                    3133 	.db 0x80
      0048A4 E2                    3134 	.db 0xe2
      0048A5 94                    3135 	.db 0x94
      0048A6 80                    3136 	.db 0x80
      0048A7 E2                    3137 	.db 0xe2
      0048A8 94                    3138 	.db 0x94
      0048A9 80                    3139 	.db 0x80
      0048AA E2                    3140 	.db 0xe2
      0048AB 94                    3141 	.db 0x94
      0048AC 80                    3142 	.db 0x80
      0048AD E2                    3143 	.db 0xe2
      0048AE 94                    3144 	.db 0x94
      0048AF 80                    3145 	.db 0x80
      0048B0 E2                    3146 	.db 0xe2
      0048B1 94                    3147 	.db 0x94
      0048B2 80                    3148 	.db 0x80
      0048B3 E2                    3149 	.db 0xe2
      0048B4 94                    3150 	.db 0x94
      0048B5 80                    3151 	.db 0x80
      0048B6 E2                    3152 	.db 0xe2
      0048B7 94                    3153 	.db 0x94
      0048B8 80                    3154 	.db 0x80
      0048B9 E2                    3155 	.db 0xe2
      0048BA 94                    3156 	.db 0x94
      0048BB 80                    3157 	.db 0x80
      0048BC E2                    3158 	.db 0xe2
      0048BD 94                    3159 	.db 0x94
      0048BE 80                    3160 	.db 0x80
      0048BF E2                    3161 	.db 0xe2
      0048C0 94                    3162 	.db 0x94
      0048C1 80                    3163 	.db 0x80
      0048C2 E2                    3164 	.db 0xe2
      0048C3 94                    3165 	.db 0x94
      0048C4 80                    3166 	.db 0x80
      0048C5 E2                    3167 	.db 0xe2
      0048C6 94                    3168 	.db 0x94
      0048C7 80                    3169 	.db 0x80
      0048C8 E2                    3170 	.db 0xe2
      0048C9 94                    3171 	.db 0x94
      0048CA 80                    3172 	.db 0x80
      0048CB E2                    3173 	.db 0xe2
      0048CC 94                    3174 	.db 0x94
      0048CD 80                    3175 	.db 0x80
      0048CE E2                    3176 	.db 0xe2
      0048CF 94                    3177 	.db 0x94
      0048D0 80                    3178 	.db 0x80
      0048D1 E2                    3179 	.db 0xe2
      0048D2 94                    3180 	.db 0x94
      0048D3 80                    3181 	.db 0x80
      0048D4 E2                    3182 	.db 0xe2
      0048D5 94                    3183 	.db 0x94
      0048D6 80                    3184 	.db 0x80
      0048D7 E2                    3185 	.db 0xe2
      0048D8 94                    3186 	.db 0x94
      0048D9 80                    3187 	.db 0x80
      0048DA E2                    3188 	.db 0xe2
      0048DB 94                    3189 	.db 0x94
      0048DC 80                    3190 	.db 0x80
      0048DD E2                    3191 	.db 0xe2
      0048DE 94                    3192 	.db 0x94
      0048DF 80                    3193 	.db 0x80
      0048E0 E2                    3194 	.db 0xe2
      0048E1 94                    3195 	.db 0x94
      0048E2 80                    3196 	.db 0x80
      0048E3 E2                    3197 	.db 0xe2
      0048E4 94                    3198 	.db 0x94
      0048E5 80                    3199 	.db 0x80
      0048E6 E2                    3200 	.db 0xe2
      0048E7 94                    3201 	.db 0x94
      0048E8 80                    3202 	.db 0x80
      0048E9 E2                    3203 	.db 0xe2
      0048EA 94                    3204 	.db 0x94
      0048EB 80                    3205 	.db 0x80
      0048EC E2                    3206 	.db 0xe2
      0048ED 94                    3207 	.db 0x94
      0048EE 80                    3208 	.db 0x80
      0048EF E2                    3209 	.db 0xe2
      0048F0 94                    3210 	.db 0x94
      0048F1 A4                    3211 	.db 0xa4
      0048F2 0A                    3212 	.db 0x0a
      0048F3 0D                    3213 	.db 0x0d
      0048F4 00                    3214 	.db 0x00
                                   3215 	.area CSEG    (CODE)
                                   3216 	.area CONST   (CODE)
      0048F5                       3217 ___str_6:
      0048F5 E2                    3218 	.db 0xe2
      0048F6 94                    3219 	.db 0x94
      0048F7 82                    3220 	.db 0x82
      0048F8 20 20 20 20 20 52 20  3221 	.ascii "     R      "
             20 20 20 20 20
      004904 E2                    3222 	.db 0xe2
      004905 94                    3223 	.db 0x94
      004906 82                    3224 	.db 0x82
      004907 20 52 65 61 64 20 66  3225 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004933 E2                    3226 	.db 0xe2
      004934 94                    3227 	.db 0x94
      004935 82                    3228 	.db 0x82
      004936 0A                    3229 	.db 0x0a
      004937 0D                    3230 	.db 0x0d
      004938 00                    3231 	.db 0x00
                                   3232 	.area CSEG    (CODE)
                                   3233 	.area CONST   (CODE)
      004939                       3234 ___str_7:
      004939 E2                    3235 	.db 0xe2
      00493A 94                    3236 	.db 0x94
      00493B 82                    3237 	.db 0x82
      00493C 20 20 20 20 20 57 20  3238 	.ascii "     W      "
             20 20 20 20 20
      004948 E2                    3239 	.db 0xe2
      004949 94                    3240 	.db 0x94
      00494A 82                    3241 	.db 0x82
      00494B 20 57 72 69 74 65 20  3242 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004977 E2                    3243 	.db 0xe2
      004978 94                    3244 	.db 0x94
      004979 82                    3245 	.db 0x82
      00497A 0A                    3246 	.db 0x0a
      00497B 0D                    3247 	.db 0x0d
      00497C 00                    3248 	.db 0x00
                                   3249 	.area CSEG    (CODE)
                                   3250 	.area CONST   (CODE)
      00497D                       3251 ___str_8:
      00497D E2                    3252 	.db 0xe2
      00497E 94                    3253 	.db 0x94
      00497F 82                    3254 	.db 0x82
      004980 20 20 20 20 20 48 20  3255 	.ascii "     H      "
             20 20 20 20 20
      00498C E2                    3256 	.db 0xe2
      00498D 94                    3257 	.db 0x94
      00498E 82                    3258 	.db 0x82
      00498F 20 44 69 73 70 6C 61  3259 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0049BB E2                    3260 	.db 0xe2
      0049BC 94                    3261 	.db 0x94
      0049BD 82                    3262 	.db 0x82
      0049BE 0A                    3263 	.db 0x0a
      0049BF 0D                    3264 	.db 0x0d
      0049C0 00                    3265 	.db 0x00
                                   3266 	.area CSEG    (CODE)
                                   3267 	.area CONST   (CODE)
      0049C1                       3268 ___str_9:
      0049C1 E2                    3269 	.db 0xe2
      0049C2 94                    3270 	.db 0x94
      0049C3 82                    3271 	.db 0x82
      0049C4 20 20 20 20 20 58 20  3272 	.ascii "     X      "
             20 20 20 20 20
      0049D0 E2                    3273 	.db 0xe2
      0049D1 94                    3274 	.db 0x94
      0049D2 82                    3275 	.db 0x82
      0049D3 20 52 65 73 65 74 20  3276 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0049FF E2                    3277 	.db 0xe2
      004A00 94                    3278 	.db 0x94
      004A01 82                    3279 	.db 0x82
      004A02 0A                    3280 	.db 0x0a
      004A03 0D                    3281 	.db 0x0d
      004A04 00                    3282 	.db 0x00
                                   3283 	.area CSEG    (CODE)
                                   3284 	.area CONST   (CODE)
      004A05                       3285 ___str_10:
      004A05 E2                    3286 	.db 0xe2
      004A06 94                    3287 	.db 0x94
      004A07 82                    3288 	.db 0x82
      004A08 20 20 20 20 20 3F 20  3289 	.ascii "     ?      "
             20 20 20 20 20
      004A14 E2                    3290 	.db 0xe2
      004A15 94                    3291 	.db 0x94
      004A16 82                    3292 	.db 0x82
      004A17 20 44 69 73 70 6C 61  3293 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004A43 E2                    3294 	.db 0xe2
      004A44 94                    3295 	.db 0x94
      004A45 82                    3296 	.db 0x82
      004A46 0A                    3297 	.db 0x0a
      004A47 0D                    3298 	.db 0x0d
      004A48 00                    3299 	.db 0x00
                                   3300 	.area CSEG    (CODE)
                                   3301 	.area CONST   (CODE)
      004A49                       3302 ___str_11:
      004A49 E2                    3303 	.db 0xe2
      004A4A 94                    3304 	.db 0x94
      004A4B 82                    3305 	.db 0x82
      004A4C 20 20 20 20 20 51 20  3306 	.ascii "     Q      "
             20 20 20 20 20
      004A58 E2                    3307 	.db 0xe2
      004A59 94                    3308 	.db 0x94
      004A5A 82                    3309 	.db 0x82
      004A5B 20 51 75 69 74 20 70  3310 	.ascii " Quit program                               "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004A87 E2                    3311 	.db 0xe2
      004A88 94                    3312 	.db 0x94
      004A89 82                    3313 	.db 0x82
      004A8A 0A                    3314 	.db 0x0a
      004A8B 0D                    3315 	.db 0x0d
      004A8C 00                    3316 	.db 0x00
                                   3317 	.area CSEG    (CODE)
                                   3318 	.area CONST   (CODE)
      004A8D                       3319 ___str_12:
      004A8D E2                    3320 	.db 0xe2
      004A8E 94                    3321 	.db 0x94
      004A8F 94                    3322 	.db 0x94
      004A90 E2                    3323 	.db 0xe2
      004A91 94                    3324 	.db 0x94
      004A92 80                    3325 	.db 0x80
      004A93 E2                    3326 	.db 0xe2
      004A94 94                    3327 	.db 0x94
      004A95 80                    3328 	.db 0x80
      004A96 E2                    3329 	.db 0xe2
      004A97 94                    3330 	.db 0x94
      004A98 80                    3331 	.db 0x80
      004A99 E2                    3332 	.db 0xe2
      004A9A 94                    3333 	.db 0x94
      004A9B 80                    3334 	.db 0x80
      004A9C E2                    3335 	.db 0xe2
      004A9D 94                    3336 	.db 0x94
      004A9E 80                    3337 	.db 0x80
      004A9F E2                    3338 	.db 0xe2
      004AA0 94                    3339 	.db 0x94
      004AA1 80                    3340 	.db 0x80
      004AA2 E2                    3341 	.db 0xe2
      004AA3 94                    3342 	.db 0x94
      004AA4 80                    3343 	.db 0x80
      004AA5 E2                    3344 	.db 0xe2
      004AA6 94                    3345 	.db 0x94
      004AA7 80                    3346 	.db 0x80
      004AA8 E2                    3347 	.db 0xe2
      004AA9 94                    3348 	.db 0x94
      004AAA 80                    3349 	.db 0x80
      004AAB E2                    3350 	.db 0xe2
      004AAC 94                    3351 	.db 0x94
      004AAD 80                    3352 	.db 0x80
      004AAE E2                    3353 	.db 0xe2
      004AAF 94                    3354 	.db 0x94
      004AB0 80                    3355 	.db 0x80
      004AB1 E2                    3356 	.db 0xe2
      004AB2 94                    3357 	.db 0x94
      004AB3 80                    3358 	.db 0x80
      004AB4 E2                    3359 	.db 0xe2
      004AB5 94                    3360 	.db 0x94
      004AB6 B4                    3361 	.db 0xb4
      004AB7 E2                    3362 	.db 0xe2
      004AB8 94                    3363 	.db 0x94
      004AB9 80                    3364 	.db 0x80
      004ABA E2                    3365 	.db 0xe2
      004ABB 94                    3366 	.db 0x94
      004ABC 80                    3367 	.db 0x80
      004ABD E2                    3368 	.db 0xe2
      004ABE 94                    3369 	.db 0x94
      004ABF 80                    3370 	.db 0x80
      004AC0 E2                    3371 	.db 0xe2
      004AC1 94                    3372 	.db 0x94
      004AC2 80                    3373 	.db 0x80
      004AC3 E2                    3374 	.db 0xe2
      004AC4 94                    3375 	.db 0x94
      004AC5 80                    3376 	.db 0x80
      004AC6 E2                    3377 	.db 0xe2
      004AC7 94                    3378 	.db 0x94
      004AC8 80                    3379 	.db 0x80
      004AC9 E2                    3380 	.db 0xe2
      004ACA 94                    3381 	.db 0x94
      004ACB 80                    3382 	.db 0x80
      004ACC E2                    3383 	.db 0xe2
      004ACD 94                    3384 	.db 0x94
      004ACE 80                    3385 	.db 0x80
      004ACF E2                    3386 	.db 0xe2
      004AD0 94                    3387 	.db 0x94
      004AD1 80                    3388 	.db 0x80
      004AD2 E2                    3389 	.db 0xe2
      004AD3 94                    3390 	.db 0x94
      004AD4 80                    3391 	.db 0x80
      004AD5 E2                    3392 	.db 0xe2
      004AD6 94                    3393 	.db 0x94
      004AD7 80                    3394 	.db 0x80
      004AD8 E2                    3395 	.db 0xe2
      004AD9 94                    3396 	.db 0x94
      004ADA 80                    3397 	.db 0x80
      004ADB E2                    3398 	.db 0xe2
      004ADC 94                    3399 	.db 0x94
      004ADD 80                    3400 	.db 0x80
      004ADE E2                    3401 	.db 0xe2
      004ADF 94                    3402 	.db 0x94
      004AE0 80                    3403 	.db 0x80
      004AE1 E2                    3404 	.db 0xe2
      004AE2 94                    3405 	.db 0x94
      004AE3 80                    3406 	.db 0x80
      004AE4 E2                    3407 	.db 0xe2
      004AE5 94                    3408 	.db 0x94
      004AE6 80                    3409 	.db 0x80
      004AE7 E2                    3410 	.db 0xe2
      004AE8 94                    3411 	.db 0x94
      004AE9 80                    3412 	.db 0x80
      004AEA E2                    3413 	.db 0xe2
      004AEB 94                    3414 	.db 0x94
      004AEC 80                    3415 	.db 0x80
      004AED E2                    3416 	.db 0xe2
      004AEE 94                    3417 	.db 0x94
      004AEF 80                    3418 	.db 0x80
      004AF0 E2                    3419 	.db 0xe2
      004AF1 94                    3420 	.db 0x94
      004AF2 80                    3421 	.db 0x80
      004AF3 E2                    3422 	.db 0xe2
      004AF4 94                    3423 	.db 0x94
      004AF5 80                    3424 	.db 0x80
      004AF6 E2                    3425 	.db 0xe2
      004AF7 94                    3426 	.db 0x94
      004AF8 80                    3427 	.db 0x80
      004AF9 E2                    3428 	.db 0xe2
      004AFA 94                    3429 	.db 0x94
      004AFB 80                    3430 	.db 0x80
      004AFC E2                    3431 	.db 0xe2
      004AFD 94                    3432 	.db 0x94
      004AFE 80                    3433 	.db 0x80
      004AFF E2                    3434 	.db 0xe2
      004B00 94                    3435 	.db 0x94
      004B01 80                    3436 	.db 0x80
      004B02 E2                    3437 	.db 0xe2
      004B03 94                    3438 	.db 0x94
      004B04 80                    3439 	.db 0x80
      004B05 E2                    3440 	.db 0xe2
      004B06 94                    3441 	.db 0x94
      004B07 80                    3442 	.db 0x80
      004B08 E2                    3443 	.db 0xe2
      004B09 94                    3444 	.db 0x94
      004B0A 80                    3445 	.db 0x80
      004B0B E2                    3446 	.db 0xe2
      004B0C 94                    3447 	.db 0x94
      004B0D 80                    3448 	.db 0x80
      004B0E E2                    3449 	.db 0xe2
      004B0F 94                    3450 	.db 0x94
      004B10 80                    3451 	.db 0x80
      004B11 E2                    3452 	.db 0xe2
      004B12 94                    3453 	.db 0x94
      004B13 80                    3454 	.db 0x80
      004B14 E2                    3455 	.db 0xe2
      004B15 94                    3456 	.db 0x94
      004B16 80                    3457 	.db 0x80
      004B17 E2                    3458 	.db 0xe2
      004B18 94                    3459 	.db 0x94
      004B19 80                    3460 	.db 0x80
      004B1A E2                    3461 	.db 0xe2
      004B1B 94                    3462 	.db 0x94
      004B1C 80                    3463 	.db 0x80
      004B1D E2                    3464 	.db 0xe2
      004B1E 94                    3465 	.db 0x94
      004B1F 80                    3466 	.db 0x80
      004B20 E2                    3467 	.db 0xe2
      004B21 94                    3468 	.db 0x94
      004B22 80                    3469 	.db 0x80
      004B23 E2                    3470 	.db 0xe2
      004B24 94                    3471 	.db 0x94
      004B25 80                    3472 	.db 0x80
      004B26 E2                    3473 	.db 0xe2
      004B27 94                    3474 	.db 0x94
      004B28 80                    3475 	.db 0x80
      004B29 E2                    3476 	.db 0xe2
      004B2A 94                    3477 	.db 0x94
      004B2B 80                    3478 	.db 0x80
      004B2C E2                    3479 	.db 0xe2
      004B2D 94                    3480 	.db 0x94
      004B2E 80                    3481 	.db 0x80
      004B2F E2                    3482 	.db 0xe2
      004B30 94                    3483 	.db 0x94
      004B31 80                    3484 	.db 0x80
      004B32 E2                    3485 	.db 0xe2
      004B33 94                    3486 	.db 0x94
      004B34 80                    3487 	.db 0x80
      004B35 E2                    3488 	.db 0xe2
      004B36 94                    3489 	.db 0x94
      004B37 80                    3490 	.db 0x80
      004B38 E2                    3491 	.db 0xe2
      004B39 94                    3492 	.db 0x94
      004B3A 80                    3493 	.db 0x80
      004B3B E2                    3494 	.db 0xe2
      004B3C 94                    3495 	.db 0x94
      004B3D 98                    3496 	.db 0x98
      004B3E 0A                    3497 	.db 0x0a
      004B3F 0D                    3498 	.db 0x0d
      004B40 00                    3499 	.db 0x00
                                   3500 	.area CSEG    (CODE)
                                   3501 	.area CONST   (CODE)
      004B41                       3502 ___str_13:
      004B41 24 20 25 63           3503 	.ascii "$ %c"
      004B45 0A                    3504 	.db 0x0a
      004B46 0D                    3505 	.db 0x0d
      004B47 00                    3506 	.db 0x00
                                   3507 	.area CSEG    (CODE)
                                   3508 	.area CONST   (CODE)
      004B48                       3509 ___str_14:
      004B48 0A                    3510 	.db 0x0a
      004B49 E2                    3511 	.db 0xe2
      004B4A 94                    3512 	.db 0x94
      004B4B 8C                    3513 	.db 0x8c
      004B4C E2                    3514 	.db 0xe2
      004B4D 94                    3515 	.db 0x94
      004B4E 80                    3516 	.db 0x80
      004B4F E2                    3517 	.db 0xe2
      004B50 94                    3518 	.db 0x94
      004B51 80                    3519 	.db 0x80
      004B52 E2                    3520 	.db 0xe2
      004B53 94                    3521 	.db 0x94
      004B54 80                    3522 	.db 0x80
      004B55 E2                    3523 	.db 0xe2
      004B56 94                    3524 	.db 0x94
      004B57 80                    3525 	.db 0x80
      004B58 E2                    3526 	.db 0xe2
      004B59 94                    3527 	.db 0x94
      004B5A 80                    3528 	.db 0x80
      004B5B E2                    3529 	.db 0xe2
      004B5C 94                    3530 	.db 0x94
      004B5D 80                    3531 	.db 0x80
      004B5E E2                    3532 	.db 0xe2
      004B5F 94                    3533 	.db 0x94
      004B60 80                    3534 	.db 0x80
      004B61 E2                    3535 	.db 0xe2
      004B62 94                    3536 	.db 0x94
      004B63 80                    3537 	.db 0x80
      004B64 E2                    3538 	.db 0xe2
      004B65 94                    3539 	.db 0x94
      004B66 80                    3540 	.db 0x80
      004B67 E2                    3541 	.db 0xe2
      004B68 94                    3542 	.db 0x94
      004B69 80                    3543 	.db 0x80
      004B6A E2                    3544 	.db 0xe2
      004B6B 94                    3545 	.db 0x94
      004B6C 80                    3546 	.db 0x80
      004B6D E2                    3547 	.db 0xe2
      004B6E 94                    3548 	.db 0x94
      004B6F 80                    3549 	.db 0x80
      004B70 E2                    3550 	.db 0xe2
      004B71 94                    3551 	.db 0x94
      004B72 80                    3552 	.db 0x80
      004B73 E2                    3553 	.db 0xe2
      004B74 94                    3554 	.db 0x94
      004B75 80                    3555 	.db 0x80
      004B76 E2                    3556 	.db 0xe2
      004B77 94                    3557 	.db 0x94
      004B78 80                    3558 	.db 0x80
      004B79 20 57 52 49 54 45 20  3559 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      004B8A E2                    3560 	.db 0xe2
      004B8B 94                    3561 	.db 0x94
      004B8C 80                    3562 	.db 0x80
      004B8D E2                    3563 	.db 0xe2
      004B8E 94                    3564 	.db 0x94
      004B8F 80                    3565 	.db 0x80
      004B90 E2                    3566 	.db 0xe2
      004B91 94                    3567 	.db 0x94
      004B92 80                    3568 	.db 0x80
      004B93 E2                    3569 	.db 0xe2
      004B94 94                    3570 	.db 0x94
      004B95 80                    3571 	.db 0x80
      004B96 E2                    3572 	.db 0xe2
      004B97 94                    3573 	.db 0x94
      004B98 80                    3574 	.db 0x80
      004B99 E2                    3575 	.db 0xe2
      004B9A 94                    3576 	.db 0x94
      004B9B 80                    3577 	.db 0x80
      004B9C E2                    3578 	.db 0xe2
      004B9D 94                    3579 	.db 0x94
      004B9E 80                    3580 	.db 0x80
      004B9F E2                    3581 	.db 0xe2
      004BA0 94                    3582 	.db 0x94
      004BA1 80                    3583 	.db 0x80
      004BA2 E2                    3584 	.db 0xe2
      004BA3 94                    3585 	.db 0x94
      004BA4 80                    3586 	.db 0x80
      004BA5 E2                    3587 	.db 0xe2
      004BA6 94                    3588 	.db 0x94
      004BA7 80                    3589 	.db 0x80
      004BA8 E2                    3590 	.db 0xe2
      004BA9 94                    3591 	.db 0x94
      004BAA 80                    3592 	.db 0x80
      004BAB E2                    3593 	.db 0xe2
      004BAC 94                    3594 	.db 0x94
      004BAD 80                    3595 	.db 0x80
      004BAE E2                    3596 	.db 0xe2
      004BAF 94                    3597 	.db 0x94
      004BB0 80                    3598 	.db 0x80
      004BB1 E2                    3599 	.db 0xe2
      004BB2 94                    3600 	.db 0x94
      004BB3 80                    3601 	.db 0x80
      004BB4 E2                    3602 	.db 0xe2
      004BB5 94                    3603 	.db 0x94
      004BB6 90                    3604 	.db 0x90
      004BB7 0A                    3605 	.db 0x0a
      004BB8 0D                    3606 	.db 0x0d
      004BB9 00                    3607 	.db 0x00
                                   3608 	.area CSEG    (CODE)
                                   3609 	.area CONST   (CODE)
      004BBA                       3610 ___str_15:
      004BBA 0A                    3611 	.db 0x0a
      004BBB E2                    3612 	.db 0xe2
      004BBC 94                    3613 	.db 0x94
      004BBD 8C                    3614 	.db 0x8c
      004BBE E2                    3615 	.db 0xe2
      004BBF 94                    3616 	.db 0x94
      004BC0 80                    3617 	.db 0x80
      004BC1 E2                    3618 	.db 0xe2
      004BC2 94                    3619 	.db 0x94
      004BC3 80                    3620 	.db 0x80
      004BC4 E2                    3621 	.db 0xe2
      004BC5 94                    3622 	.db 0x94
      004BC6 80                    3623 	.db 0x80
      004BC7 E2                    3624 	.db 0xe2
      004BC8 94                    3625 	.db 0x94
      004BC9 80                    3626 	.db 0x80
      004BCA E2                    3627 	.db 0xe2
      004BCB 94                    3628 	.db 0x94
      004BCC 80                    3629 	.db 0x80
      004BCD E2                    3630 	.db 0xe2
      004BCE 94                    3631 	.db 0x94
      004BCF 80                    3632 	.db 0x80
      004BD0 E2                    3633 	.db 0xe2
      004BD1 94                    3634 	.db 0x94
      004BD2 80                    3635 	.db 0x80
      004BD3 E2                    3636 	.db 0xe2
      004BD4 94                    3637 	.db 0x94
      004BD5 80                    3638 	.db 0x80
      004BD6 E2                    3639 	.db 0xe2
      004BD7 94                    3640 	.db 0x94
      004BD8 80                    3641 	.db 0x80
      004BD9 E2                    3642 	.db 0xe2
      004BDA 94                    3643 	.db 0x94
      004BDB 80                    3644 	.db 0x80
      004BDC E2                    3645 	.db 0xe2
      004BDD 94                    3646 	.db 0x94
      004BDE 80                    3647 	.db 0x80
      004BDF E2                    3648 	.db 0xe2
      004BE0 94                    3649 	.db 0x94
      004BE1 80                    3650 	.db 0x80
      004BE2 E2                    3651 	.db 0xe2
      004BE3 94                    3652 	.db 0x94
      004BE4 80                    3653 	.db 0x80
      004BE5 E2                    3654 	.db 0xe2
      004BE6 94                    3655 	.db 0x94
      004BE7 80                    3656 	.db 0x80
      004BE8 E2                    3657 	.db 0xe2
      004BE9 94                    3658 	.db 0x94
      004BEA 80                    3659 	.db 0x80
      004BEB 20 52 45 41 44 20 4F  3660 	.ascii " READ OPERATION "
             50 45 52 41 54 49 4F
             4E 20
      004BFB E2                    3661 	.db 0xe2
      004BFC 94                    3662 	.db 0x94
      004BFD 80                    3663 	.db 0x80
      004BFE E2                    3664 	.db 0xe2
      004BFF 94                    3665 	.db 0x94
      004C00 80                    3666 	.db 0x80
      004C01 E2                    3667 	.db 0xe2
      004C02 94                    3668 	.db 0x94
      004C03 80                    3669 	.db 0x80
      004C04 E2                    3670 	.db 0xe2
      004C05 94                    3671 	.db 0x94
      004C06 80                    3672 	.db 0x80
      004C07 E2                    3673 	.db 0xe2
      004C08 94                    3674 	.db 0x94
      004C09 80                    3675 	.db 0x80
      004C0A E2                    3676 	.db 0xe2
      004C0B 94                    3677 	.db 0x94
      004C0C 80                    3678 	.db 0x80
      004C0D E2                    3679 	.db 0xe2
      004C0E 94                    3680 	.db 0x94
      004C0F 80                    3681 	.db 0x80
      004C10 E2                    3682 	.db 0xe2
      004C11 94                    3683 	.db 0x94
      004C12 80                    3684 	.db 0x80
      004C13 E2                    3685 	.db 0xe2
      004C14 94                    3686 	.db 0x94
      004C15 80                    3687 	.db 0x80
      004C16 E2                    3688 	.db 0xe2
      004C17 94                    3689 	.db 0x94
      004C18 80                    3690 	.db 0x80
      004C19 E2                    3691 	.db 0xe2
      004C1A 94                    3692 	.db 0x94
      004C1B 80                    3693 	.db 0x80
      004C1C E2                    3694 	.db 0xe2
      004C1D 94                    3695 	.db 0x94
      004C1E 80                    3696 	.db 0x80
      004C1F E2                    3697 	.db 0xe2
      004C20 94                    3698 	.db 0x94
      004C21 80                    3699 	.db 0x80
      004C22 E2                    3700 	.db 0xe2
      004C23 94                    3701 	.db 0x94
      004C24 80                    3702 	.db 0x80
      004C25 E2                    3703 	.db 0xe2
      004C26 94                    3704 	.db 0x94
      004C27 80                    3705 	.db 0x80
      004C28 E2                    3706 	.db 0xe2
      004C29 94                    3707 	.db 0x94
      004C2A 90                    3708 	.db 0x90
      004C2B 0A                    3709 	.db 0x0a
      004C2C 0D                    3710 	.db 0x0d
      004C2D 00                    3711 	.db 0x00
                                   3712 	.area CSEG    (CODE)
                                   3713 	.area CONST   (CODE)
      004C2E                       3714 ___str_16:
      004C2E 7C 20 52 65 61 64 69  3715 	.ascii "| Reading from Address 0x%03X           |"
             6E 67 20 66 72 6F 6D
             20 41 64 64 72 65 73
             73 20 30 78 25 30 33
             58 20 20 20 20 20 20
             20 20 20 20 20 7C
      004C57 0A                    3716 	.db 0x0a
      004C58 0D                    3717 	.db 0x0d
      004C59 00                    3718 	.db 0x00
                                   3719 	.area CSEG    (CODE)
                                   3720 	.area CONST   (CODE)
      004C5A                       3721 ___str_17:
      004C5A 49 4E 56 41 4C 49 44  3722 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      004C67 0A                    3723 	.db 0x0a
      004C68 0D                    3724 	.db 0x0d
      004C69 00                    3725 	.db 0x00
                                   3726 	.area CSEG    (CODE)
                                   3727 	.area CONST   (CODE)
      004C6A                       3728 ___str_18:
      004C6A E2                    3729 	.db 0xe2
      004C6B 94                    3730 	.db 0x94
      004C6C 82                    3731 	.db 0x82
      004C6D 20 45 6E 74 65 72 20  3732 	.ascii " Enter address (hex, up to 3 characters): "
             61 64 64 72 65 73 73
             20 28 68 65 78 2C 20
             75 70 20 74 6F 20 33
             20 63 68 61 72 61 63
             74 65 72 73 29 3A 20
      004C97 0A                    3733 	.db 0x0a
      004C98 0D                    3734 	.db 0x0d
      004C99 7C                    3735 	.ascii "|"
      004C9A 00                    3736 	.db 0x00
                                   3737 	.area CSEG    (CODE)
                                   3738 	.area CONST   (CODE)
      004C9B                       3739 ___str_19:
      004C9B 24 20                 3740 	.ascii "$ "
      004C9D 00                    3741 	.db 0x00
                                   3742 	.area CSEG    (CODE)
                                   3743 	.area CONST   (CODE)
      004C9E                       3744 ___str_20:
      004C9E 0A                    3745 	.db 0x0a
      004C9F 0D                    3746 	.db 0x0d
      004CA0 E2                    3747 	.db 0xe2
      004CA1 94                    3748 	.db 0x94
      004CA2 82                    3749 	.db 0x82
      004CA3 20 45 6E 74 65 72 65  3750 	.ascii " Entered address: 0x%03X"
             64 20 61 64 64 72 65
             73 73 3A 20 30 78 25
             30 33 58
      004CBB 0A                    3751 	.db 0x0a
      004CBC 0D                    3752 	.db 0x0d
      004CBD 00                    3753 	.db 0x00
                                   3754 	.area CSEG    (CODE)
                                   3755 	.area CONST   (CODE)
      004CBE                       3756 ___str_21:
      004CBE 7C 20 20 20 20 20 20  3757 	.ascii "|           Address out of Range                  |"
             20 20 20 20 20 41 64
             64 72 65 73 73 20 6F
             75 74 20 6F 66 20 52
             61 6E 67 65 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      004CF1 0A                    3758 	.db 0x0a
      004CF2 0D                    3759 	.db 0x0d
      004CF3 00                    3760 	.db 0x00
                                   3761 	.area CSEG    (CODE)
                                   3762 	.area CONST   (CODE)
      004CF4                       3763 ___str_22:
      004CF4 42 6C 6F 63 6B 20 6E  3764 	.ascii "Block number %d"
             75 6D 62 65 72 20 25
             64
      004D03 0A                    3765 	.db 0x0a
      004D04 0D                    3766 	.db 0x0d
      004D05 00                    3767 	.db 0x00
                                   3768 	.area CSEG    (CODE)
                                   3769 	.area CONST   (CODE)
      004D06                       3770 ___str_23:
      004D06 61 64 64 72 65 73 73  3771 	.ascii "address now  0x%03X"
             20 6E 6F 77 20 20 30
             78 25 30 33 58
      004D19 0A                    3772 	.db 0x0a
      004D1A 0D                    3773 	.db 0x0d
      004D1B 00                    3774 	.db 0x00
                                   3775 	.area CSEG    (CODE)
                                   3776 	.area CONST   (CODE)
      004D1C                       3777 ___str_24:
      004D1C E2                    3778 	.db 0xe2
      004D1D 94                    3779 	.db 0x94
      004D1E 82                    3780 	.db 0x82
      004D1F 20 45 6E 74 65 72 20  3781 	.ascii " Enter data (hex, up to 2 characters): "
             64 61 74 61 20 28 68
             65 78 2C 20 75 70 20
             74 6F 20 32 20 63 68
             61 72 61 63 74 65 72
             73 29 3A 20
      004D46 0A                    3782 	.db 0x0a
      004D47 0D                    3783 	.db 0x0d
      004D48 7C                    3784 	.ascii "|"
      004D49 00                    3785 	.db 0x00
                                   3786 	.area CSEG    (CODE)
                                   3787 	.area CONST   (CODE)
      004D4A                       3788 ___str_25:
      004D4A 0A                    3789 	.db 0x0a
      004D4B 0D                    3790 	.db 0x0d
      004D4C E2                    3791 	.db 0xe2
      004D4D 94                    3792 	.db 0x94
      004D4E 82                    3793 	.db 0x82
      004D4F 20 45 6E 74 65 72 65  3794 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      004D64 0A                    3795 	.db 0x0a
      004D65 0D                    3796 	.db 0x0d
      004D66 00                    3797 	.db 0x00
                                   3798 	.area CSEG    (CODE)
                                   3799 	.area CONST   (CODE)
      004D67                       3800 ___str_26:
      004D67 44 61 74 61 20 6F 75  3801 	.ascii "Data out of Range"
             74 20 6F 66 20 52 61
             6E 67 65
      004D78 0A                    3802 	.db 0x0a
      004D79 0D                    3803 	.db 0x0d
      004D7A 00                    3804 	.db 0x00
                                   3805 	.area CSEG    (CODE)
                                   3806 	.area CONST   (CODE)
      004D7B                       3807 ___str_27:
      004D7B 45 72 72 6F 72 3A 20  3808 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      004DA3 0A                    3809 	.db 0x0a
      004DA4 0D                    3810 	.db 0x0d
      004DA5 00                    3811 	.db 0x00
                                   3812 	.area CSEG    (CODE)
                                   3813 	.area CONST   (CODE)
      004DA6                       3814 ___str_28:
      004DA6 45 72 72 6F 72 3A 20  3815 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      004DC6 0A                    3816 	.db 0x0a
      004DC7 0D                    3817 	.db 0x0d
      004DC8 00                    3818 	.db 0x00
                                   3819 	.area CSEG    (CODE)
                                   3820 	.area CONST   (CODE)
      004DC9                       3821 ___str_29:
      004DC9 45 72 72 6F 72 3A 20  3822 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      004DDF 0A                    3823 	.db 0x0a
      004DE0 0D                    3824 	.db 0x0d
      004DE1 00                    3825 	.db 0x00
                                   3826 	.area CSEG    (CODE)
                                   3827 	.area CONST   (CODE)
      004DE2                       3828 ___str_30:
      004DE2 7C 20 57 72 69 74 69  3829 	.ascii "| Writing at Address 0x%03X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 33 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      004E14 0A                    3830 	.db 0x0a
      004E15 0D                    3831 	.db 0x0d
      004E16 00                    3832 	.db 0x00
                                   3833 	.area CSEG    (CODE)
                                   3834 	.area CONST   (CODE)
      004E17                       3835 ___str_31:
      004E17 E2                    3836 	.db 0xe2
      004E18 94                    3837 	.db 0x94
      004E19 82                    3838 	.db 0x82
      004E1A 20 57 72 69 74 65 20  3839 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      004E49 E2                    3840 	.db 0xe2
      004E4A 94                    3841 	.db 0x94
      004E4B 82                    3842 	.db 0x82
      004E4C 0A                    3843 	.db 0x0a
      004E4D 0D                    3844 	.db 0x0d
      004E4E 00                    3845 	.db 0x00
                                   3846 	.area CSEG    (CODE)
                                   3847 	.area CONST   (CODE)
      004E4F                       3848 ___str_32:
      004E4F E2                    3849 	.db 0xe2
      004E50 94                    3850 	.db 0x94
      004E51 94                    3851 	.db 0x94
      004E52 E2                    3852 	.db 0xe2
      004E53 94                    3853 	.db 0x94
      004E54 80                    3854 	.db 0x80
      004E55 E2                    3855 	.db 0xe2
      004E56 94                    3856 	.db 0x94
      004E57 80                    3857 	.db 0x80
      004E58 E2                    3858 	.db 0xe2
      004E59 94                    3859 	.db 0x94
      004E5A 80                    3860 	.db 0x80
      004E5B E2                    3861 	.db 0xe2
      004E5C 94                    3862 	.db 0x94
      004E5D 80                    3863 	.db 0x80
      004E5E E2                    3864 	.db 0xe2
      004E5F 94                    3865 	.db 0x94
      004E60 80                    3866 	.db 0x80
      004E61 E2                    3867 	.db 0xe2
      004E62 94                    3868 	.db 0x94
      004E63 80                    3869 	.db 0x80
      004E64 E2                    3870 	.db 0xe2
      004E65 94                    3871 	.db 0x94
      004E66 80                    3872 	.db 0x80
      004E67 E2                    3873 	.db 0xe2
      004E68 94                    3874 	.db 0x94
      004E69 80                    3875 	.db 0x80
      004E6A E2                    3876 	.db 0xe2
      004E6B 94                    3877 	.db 0x94
      004E6C 80                    3878 	.db 0x80
      004E6D E2                    3879 	.db 0xe2
      004E6E 94                    3880 	.db 0x94
      004E6F 80                    3881 	.db 0x80
      004E70 E2                    3882 	.db 0xe2
      004E71 94                    3883 	.db 0x94
      004E72 80                    3884 	.db 0x80
      004E73 E2                    3885 	.db 0xe2
      004E74 94                    3886 	.db 0x94
      004E75 80                    3887 	.db 0x80
      004E76 E2                    3888 	.db 0xe2
      004E77 94                    3889 	.db 0x94
      004E78 80                    3890 	.db 0x80
      004E79 E2                    3891 	.db 0xe2
      004E7A 94                    3892 	.db 0x94
      004E7B 80                    3893 	.db 0x80
      004E7C E2                    3894 	.db 0xe2
      004E7D 94                    3895 	.db 0x94
      004E7E 80                    3896 	.db 0x80
      004E7F E2                    3897 	.db 0xe2
      004E80 94                    3898 	.db 0x94
      004E81 80                    3899 	.db 0x80
      004E82 E2                    3900 	.db 0xe2
      004E83 94                    3901 	.db 0x94
      004E84 80                    3902 	.db 0x80
      004E85 E2                    3903 	.db 0xe2
      004E86 94                    3904 	.db 0x94
      004E87 80                    3905 	.db 0x80
      004E88 E2                    3906 	.db 0xe2
      004E89 94                    3907 	.db 0x94
      004E8A 80                    3908 	.db 0x80
      004E8B E2                    3909 	.db 0xe2
      004E8C 94                    3910 	.db 0x94
      004E8D 80                    3911 	.db 0x80
      004E8E E2                    3912 	.db 0xe2
      004E8F 94                    3913 	.db 0x94
      004E90 80                    3914 	.db 0x80
      004E91 E2                    3915 	.db 0xe2
      004E92 94                    3916 	.db 0x94
      004E93 80                    3917 	.db 0x80
      004E94 E2                    3918 	.db 0xe2
      004E95 94                    3919 	.db 0x94
      004E96 80                    3920 	.db 0x80
      004E97 E2                    3921 	.db 0xe2
      004E98 94                    3922 	.db 0x94
      004E99 80                    3923 	.db 0x80
      004E9A E2                    3924 	.db 0xe2
      004E9B 94                    3925 	.db 0x94
      004E9C 80                    3926 	.db 0x80
      004E9D E2                    3927 	.db 0xe2
      004E9E 94                    3928 	.db 0x94
      004E9F 80                    3929 	.db 0x80
      004EA0 E2                    3930 	.db 0xe2
      004EA1 94                    3931 	.db 0x94
      004EA2 80                    3932 	.db 0x80
      004EA3 E2                    3933 	.db 0xe2
      004EA4 94                    3934 	.db 0x94
      004EA5 80                    3935 	.db 0x80
      004EA6 E2                    3936 	.db 0xe2
      004EA7 94                    3937 	.db 0x94
      004EA8 80                    3938 	.db 0x80
      004EA9 E2                    3939 	.db 0xe2
      004EAA 94                    3940 	.db 0x94
      004EAB 80                    3941 	.db 0x80
      004EAC E2                    3942 	.db 0xe2
      004EAD 94                    3943 	.db 0x94
      004EAE 80                    3944 	.db 0x80
      004EAF E2                    3945 	.db 0xe2
      004EB0 94                    3946 	.db 0x94
      004EB1 80                    3947 	.db 0x80
      004EB2 E2                    3948 	.db 0xe2
      004EB3 94                    3949 	.db 0x94
      004EB4 80                    3950 	.db 0x80
      004EB5 E2                    3951 	.db 0xe2
      004EB6 94                    3952 	.db 0x94
      004EB7 80                    3953 	.db 0x80
      004EB8 E2                    3954 	.db 0xe2
      004EB9 94                    3955 	.db 0x94
      004EBA 80                    3956 	.db 0x80
      004EBB E2                    3957 	.db 0xe2
      004EBC 94                    3958 	.db 0x94
      004EBD 80                    3959 	.db 0x80
      004EBE E2                    3960 	.db 0xe2
      004EBF 94                    3961 	.db 0x94
      004EC0 80                    3962 	.db 0x80
      004EC1 E2                    3963 	.db 0xe2
      004EC2 94                    3964 	.db 0x94
      004EC3 80                    3965 	.db 0x80
      004EC4 E2                    3966 	.db 0xe2
      004EC5 94                    3967 	.db 0x94
      004EC6 80                    3968 	.db 0x80
      004EC7 E2                    3969 	.db 0xe2
      004EC8 94                    3970 	.db 0x94
      004EC9 80                    3971 	.db 0x80
      004ECA E2                    3972 	.db 0xe2
      004ECB 94                    3973 	.db 0x94
      004ECC 80                    3974 	.db 0x80
      004ECD E2                    3975 	.db 0xe2
      004ECE 94                    3976 	.db 0x94
      004ECF 80                    3977 	.db 0x80
      004ED0 E2                    3978 	.db 0xe2
      004ED1 94                    3979 	.db 0x94
      004ED2 80                    3980 	.db 0x80
      004ED3 E2                    3981 	.db 0xe2
      004ED4 94                    3982 	.db 0x94
      004ED5 80                    3983 	.db 0x80
      004ED6 E2                    3984 	.db 0xe2
      004ED7 94                    3985 	.db 0x94
      004ED8 80                    3986 	.db 0x80
      004ED9 E2                    3987 	.db 0xe2
      004EDA 94                    3988 	.db 0x94
      004EDB 80                    3989 	.db 0x80
      004EDC E2                    3990 	.db 0xe2
      004EDD 94                    3991 	.db 0x94
      004EDE 80                    3992 	.db 0x80
      004EDF E2                    3993 	.db 0xe2
      004EE0 94                    3994 	.db 0x94
      004EE1 98                    3995 	.db 0x98
      004EE2 0A                    3996 	.db 0x0a
      004EE3 0D                    3997 	.db 0x0d
      004EE4 00                    3998 	.db 0x00
                                   3999 	.area CSEG    (CODE)
                                   4000 	.area CONST   (CODE)
      004EE5                       4001 ___str_33:
      004EE5 7C 20 43 41 4E 20 4E  4002 	.ascii "| CAN NOT WRITE                   |"
             4F 54 20 57 52 49 54
             45 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 7C
      004F08 0A                    4003 	.db 0x0a
      004F09 0D                    4004 	.db 0x0d
      004F0A 00                    4005 	.db 0x00
                                   4006 	.area CSEG    (CODE)
                                   4007 	.area CONST   (CODE)
      004F0B                       4008 ___str_34:
      004F0B 45 72 72 6F 72 3A 20  4009 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      004F38 0A                    4010 	.db 0x0a
      004F39 0D                    4011 	.db 0x0d
      004F3A 00                    4012 	.db 0x00
                                   4013 	.area CSEG    (CODE)
                                   4014 	.area CONST   (CODE)
      004F3B                       4015 ___str_35:
      004F3B 45 72 72 6F 72 3A 20  4016 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      004F67 0A                    4017 	.db 0x0a
      004F68 0D                    4018 	.db 0x0d
      004F69 00                    4019 	.db 0x00
                                   4020 	.area CSEG    (CODE)
                                   4021 	.area CONST   (CODE)
      004F6A                       4022 ___str_36:
      004F6A E2                    4023 	.db 0xe2
      004F6B 94                    4024 	.db 0x94
      004F6C 82                    4025 	.db 0x82
      004F6D 20 52 65 61 64 69 6E  4026 	.ascii " Reading from Adress: 0x%03X Data: 0x%02X                   "
             67 20 66 72 6F 6D 20
             41 64 72 65 73 73 3A
             20 30 78 25 30 33 58
             20 44 61 74 61 3A 20
             30 78 25 30 32 58 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      004FA9 20                    4027 	.ascii " "
      004FAA 0A                    4028 	.db 0x0a
      004FAB 0D                    4029 	.db 0x0d
      004FAC 00                    4030 	.db 0x00
                                   4031 	.area CSEG    (CODE)
                                   4032 	.area CONST   (CODE)
      004FAD                       4033 ___str_37:
      004FAD 7C 20 30 78 25 30 33  4034 	.ascii "| 0x%03X : 0x%02X "
             58 20 3A 20 30 78 25
             30 32 58 20
      004FBF 0A                    4035 	.db 0x0a
      004FC0 0D                    4036 	.db 0x0d
      004FC1 00                    4037 	.db 0x00
                                   4038 	.area CSEG    (CODE)
                                   4039 	.area CONST   (CODE)
      004FC2                       4040 ___str_38:
      004FC2 E2                    4041 	.db 0xe2
      004FC3 94                    4042 	.db 0x94
      004FC4 82                    4043 	.db 0x82
      004FC5 20 52 65 61 64 20 73  4044 	.ascii " Read successful!                 "
             75 63 63 65 73 73 66
             75 6C 21 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20
      004FE7 E2                    4045 	.db 0xe2
      004FE8 94                    4046 	.db 0x94
      004FE9 82                    4047 	.db 0x82
      004FEA 0A                    4048 	.db 0x0a
      004FEB 0D                    4049 	.db 0x0d
      004FEC 00                    4050 	.db 0x00
                                   4051 	.area CSEG    (CODE)
                                   4052 	.area CONST   (CODE)
      004FED                       4053 ___str_39:
      004FED 7C 20 43 41 4E 20 4E  4054 	.ascii "| CAN NOT READ AT ADDRESS 0x%03X  |"
             4F 54 20 52 45 41 44
             20 41 54 20 41 44 44
             52 45 53 53 20 30 78
             25 30 33 58 20 20 7C
      005010 0A                    4055 	.db 0x0a
      005011 0D                    4056 	.db 0x0d
      005012 00                    4057 	.db 0x00
                                   4058 	.area CSEG    (CODE)
                                   4059 	.area CONST   (CODE)
      005013                       4060 ___str_40:
      005013 41 43 4B 20 44 49 44  4061 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      005025 0A                    4062 	.db 0x0a
      005026 0D                    4063 	.db 0x0d
      005027 00                    4064 	.db 0x00
                                   4065 	.area CSEG    (CODE)
                                   4066 	.area CONST   (CODE)
      005028                       4067 ___str_41:
      005028 57 72 69 74 69 6E 67  4068 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      00504D 0A                    4069 	.db 0x0a
      00504E 0D                    4070 	.db 0x0d
      00504F 00                    4071 	.db 0x00
                                   4072 	.area CSEG    (CODE)
                                   4073 	.area CONST   (CODE)
      005050                       4074 ___str_42:
      005050 52 65 61 64 20 62 61  4075 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      005075 0A                    4076 	.db 0x0a
      005076 0D                    4077 	.db 0x0d
      005077 00                    4078 	.db 0x00
                                   4079 	.area CSEG    (CODE)
                                   4080 	.area CONST   (CODE)
      005078                       4081 ___str_43:
      005078 4D 41 54 43 48 20 2D  4082 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      005096 0A                    4083 	.db 0x0a
      005097 0D                    4084 	.db 0x0d
      005098 00                    4085 	.db 0x00
                                   4086 	.area CSEG    (CODE)
                                   4087 	.area CONST   (CODE)
      005099                       4088 ___str_44:
      005099 45 52 52 4F 52 20 2D  4089 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      0050AF 0A                    4090 	.db 0x0a
      0050B0 0D                    4091 	.db 0x0d
      0050B1 00                    4092 	.db 0x00
                                   4093 	.area CSEG    (CODE)
                                   4094 	.area XINIT   (CODE)
      0050BD                       4095 __xinit__address_range_flag:
      0050BD 01 00                 4096 	.byte #0x01, #0x00	;  1
      0050BF                       4097 __xinit__data_range_flag:
      0050BF 01 00                 4098 	.byte #0x01, #0x00	;  1
      0050C1                       4099 __xinit__block:
      0050C1 00 00                 4100 	.byte #0x00, #0x00	; 0
                                   4101 	.area CABS    (ABS,CODE)
