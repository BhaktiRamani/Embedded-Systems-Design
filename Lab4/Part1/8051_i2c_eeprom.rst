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
      000404                        475 _take_address_input_65537_66:
      000404                        476 	.ds 4
      000408                        477 _take_address_address_65538_70:
      000408                        478 	.ds 2
      00040A                        479 _take_data_input_65537_76:
      00040A                        480 	.ds 4
      00040E                        481 _take_data_data_65538_80:
      00040E                        482 	.ds 1
      00040F                        483 _eeprom_write_PARM_2:
      00040F                        484 	.ds 1
      000410                        485 _eeprom_write_address_65536_84:
      000410                        486 	.ds 2
      000412                        487 _eeprom_read_address_65536_92:
      000412                        488 	.ds 2
      000414                        489 _i2c_write_data_65536_97:
      000414                        490 	.ds 1
      000415                        491 _i2c_read_ACK_65536_102:
      000415                        492 	.ds 2
      000417                        493 _i2c_read_buff_65536_103:
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
      00308F 74 D6            [12]  628 	mov	a,#___str_0
      003091 C0 E0            [24]  629 	push	acc
      003093 74 45            [12]  630 	mov	a,#(___str_0 >> 8)
      003095 C0 E0            [24]  631 	push	acc
      003097 74 80            [12]  632 	mov	a,#0x80
      003099 C0 E0            [24]  633 	push	acc
      00309B 12 3B 74         [24]  634 	lcall	_printf
      00309E 15 81            [12]  635 	dec	sp
      0030A0 15 81            [12]  636 	dec	sp
      0030A2 15 81            [12]  637 	dec	sp
                                    638 ;	8051_i2c_eeprom.c:47: printf("║           I2C Memory Management System v1.0            ║\n\r");
      0030A4 74 88            [12]  639 	mov	a,#___str_1
      0030A6 C0 E0            [24]  640 	push	acc
      0030A8 74 46            [12]  641 	mov	a,#(___str_1 >> 8)
      0030AA C0 E0            [24]  642 	push	acc
      0030AC 74 80            [12]  643 	mov	a,#0x80
      0030AE C0 E0            [24]  644 	push	acc
      0030B0 12 3B 74         [24]  645 	lcall	_printf
      0030B3 15 81            [12]  646 	dec	sp
      0030B5 15 81            [12]  647 	dec	sp
      0030B7 15 81            [12]  648 	dec	sp
                                    649 ;	8051_i2c_eeprom.c:48: printf("╚════════════════════════════════════════════════════════╝\n\r");
      0030B9 74 C9            [12]  650 	mov	a,#___str_2
      0030BB C0 E0            [24]  651 	push	acc
      0030BD 74 46            [12]  652 	mov	a,#(___str_2 >> 8)
      0030BF C0 E0            [24]  653 	push	acc
      0030C1 74 80            [12]  654 	mov	a,#0x80
      0030C3 C0 E0            [24]  655 	push	acc
      0030C5 12 3B 74         [24]  656 	lcall	_printf
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
      0030CF 74 7A            [12]  671 	mov	a,#___str_3
      0030D1 C0 E0            [24]  672 	push	acc
      0030D3 74 47            [12]  673 	mov	a,#(___str_3 >> 8)
      0030D5 C0 E0            [24]  674 	push	acc
      0030D7 74 80            [12]  675 	mov	a,#0x80
      0030D9 C0 E0            [24]  676 	push	acc
      0030DB 12 3B 74         [24]  677 	lcall	_printf
      0030DE 15 81            [12]  678 	dec	sp
      0030E0 15 81            [12]  679 	dec	sp
      0030E2 15 81            [12]  680 	dec	sp
                                    681 ;	8051_i2c_eeprom.c:55: printf("│  Command   │               Description                  │\n\r");
      0030E4 74 30            [12]  682 	mov	a,#___str_4
      0030E6 C0 E0            [24]  683 	push	acc
      0030E8 74 48            [12]  684 	mov	a,#(___str_4 >> 8)
      0030EA C0 E0            [24]  685 	push	acc
      0030EC 74 80            [12]  686 	mov	a,#0x80
      0030EE C0 E0            [24]  687 	push	acc
      0030F0 12 3B 74         [24]  688 	lcall	_printf
      0030F3 15 81            [12]  689 	dec	sp
      0030F5 15 81            [12]  690 	dec	sp
      0030F7 15 81            [12]  691 	dec	sp
                                    692 ;	8051_i2c_eeprom.c:56: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      0030F9 74 74            [12]  693 	mov	a,#___str_5
      0030FB C0 E0            [24]  694 	push	acc
      0030FD 74 48            [12]  695 	mov	a,#(___str_5 >> 8)
      0030FF C0 E0            [24]  696 	push	acc
      003101 74 80            [12]  697 	mov	a,#0x80
      003103 C0 E0            [24]  698 	push	acc
      003105 12 3B 74         [24]  699 	lcall	_printf
      003108 15 81            [12]  700 	dec	sp
      00310A 15 81            [12]  701 	dec	sp
      00310C 15 81            [12]  702 	dec	sp
                                    703 ;	8051_i2c_eeprom.c:57: printf("│     R      │ Read from address                          │\n\r");
      00310E 74 28            [12]  704 	mov	a,#___str_6
      003110 C0 E0            [24]  705 	push	acc
      003112 74 49            [12]  706 	mov	a,#(___str_6 >> 8)
      003114 C0 E0            [24]  707 	push	acc
      003116 74 80            [12]  708 	mov	a,#0x80
      003118 C0 E0            [24]  709 	push	acc
      00311A 12 3B 74         [24]  710 	lcall	_printf
      00311D 15 81            [12]  711 	dec	sp
      00311F 15 81            [12]  712 	dec	sp
      003121 15 81            [12]  713 	dec	sp
                                    714 ;	8051_i2c_eeprom.c:58: printf("│     W      │ Write data to address                      │\n\r");
      003123 74 6C            [12]  715 	mov	a,#___str_7
      003125 C0 E0            [24]  716 	push	acc
      003127 74 49            [12]  717 	mov	a,#(___str_7 >> 8)
      003129 C0 E0            [24]  718 	push	acc
      00312B 74 80            [12]  719 	mov	a,#0x80
      00312D C0 E0            [24]  720 	push	acc
      00312F 12 3B 74         [24]  721 	lcall	_printf
      003132 15 81            [12]  722 	dec	sp
      003134 15 81            [12]  723 	dec	sp
      003136 15 81            [12]  724 	dec	sp
                                    725 ;	8051_i2c_eeprom.c:59: printf("│     H      │ Display hex dump                           │\n\r");
      003138 74 B0            [12]  726 	mov	a,#___str_8
      00313A C0 E0            [24]  727 	push	acc
      00313C 74 49            [12]  728 	mov	a,#(___str_8 >> 8)
      00313E C0 E0            [24]  729 	push	acc
      003140 74 80            [12]  730 	mov	a,#0x80
      003142 C0 E0            [24]  731 	push	acc
      003144 12 3B 74         [24]  732 	lcall	_printf
      003147 15 81            [12]  733 	dec	sp
      003149 15 81            [12]  734 	dec	sp
      00314B 15 81            [12]  735 	dec	sp
                                    736 ;	8051_i2c_eeprom.c:60: printf("│     X      │ Reset memory system                        │\n\r");
      00314D 74 F4            [12]  737 	mov	a,#___str_9
      00314F C0 E0            [24]  738 	push	acc
      003151 74 49            [12]  739 	mov	a,#(___str_9 >> 8)
      003153 C0 E0            [24]  740 	push	acc
      003155 74 80            [12]  741 	mov	a,#0x80
      003157 C0 E0            [24]  742 	push	acc
      003159 12 3B 74         [24]  743 	lcall	_printf
      00315C 15 81            [12]  744 	dec	sp
      00315E 15 81            [12]  745 	dec	sp
      003160 15 81            [12]  746 	dec	sp
                                    747 ;	8051_i2c_eeprom.c:61: printf("│     ?      │ Display this help menu                     │\n\r");
      003162 74 38            [12]  748 	mov	a,#___str_10
      003164 C0 E0            [24]  749 	push	acc
      003166 74 4A            [12]  750 	mov	a,#(___str_10 >> 8)
      003168 C0 E0            [24]  751 	push	acc
      00316A 74 80            [12]  752 	mov	a,#0x80
      00316C C0 E0            [24]  753 	push	acc
      00316E 12 3B 74         [24]  754 	lcall	_printf
      003171 15 81            [12]  755 	dec	sp
      003173 15 81            [12]  756 	dec	sp
      003175 15 81            [12]  757 	dec	sp
                                    758 ;	8051_i2c_eeprom.c:62: printf("│     Q      │ Quit program                               │\n\r");
      003177 74 7C            [12]  759 	mov	a,#___str_11
      003179 C0 E0            [24]  760 	push	acc
      00317B 74 4A            [12]  761 	mov	a,#(___str_11 >> 8)
      00317D C0 E0            [24]  762 	push	acc
      00317F 74 80            [12]  763 	mov	a,#0x80
      003181 C0 E0            [24]  764 	push	acc
      003183 12 3B 74         [24]  765 	lcall	_printf
      003186 15 81            [12]  766 	dec	sp
      003188 15 81            [12]  767 	dec	sp
      00318A 15 81            [12]  768 	dec	sp
                                    769 ;	8051_i2c_eeprom.c:63: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      00318C 74 C0            [12]  770 	mov	a,#___str_12
      00318E C0 E0            [24]  771 	push	acc
      003190 74 4A            [12]  772 	mov	a,#(___str_12 >> 8)
      003192 C0 E0            [24]  773 	push	acc
      003194 74 80            [12]  774 	mov	a,#0x80
      003196 C0 E0            [24]  775 	push	acc
      003198 12 3B 74         [24]  776 	lcall	_printf
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
                                    787 ;data                      Allocated with name '_main_data_262146_60'
                                    788 ;addr                      Allocated with name '_main_addr_262145_63'
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
      0031AE 12 3A 35         [24]  804 	lcall	_i2c_start
                                    805 ;	8051_i2c_eeprom.c:75: while(1)
      0031B1                        806 00113$:
                                    807 ;	8051_i2c_eeprom.c:77: char user_input = getchar();
      0031B1 12 30 81         [24]  808 	lcall	_getchar
      0031B4 AE 82            [24]  809 	mov	r6,dpl
                                    810 ;	8051_i2c_eeprom.c:78: printf("| $ %c\n\r", user_input);
      0031B6 8E 05            [24]  811 	mov	ar5,r6
      0031B8 7F 00            [12]  812 	mov	r7,#0x00
      0031BA C0 06            [24]  813 	push	ar6
      0031BC C0 05            [24]  814 	push	ar5
      0031BE C0 07            [24]  815 	push	ar7
      0031C0 74 74            [12]  816 	mov	a,#___str_13
      0031C2 C0 E0            [24]  817 	push	acc
      0031C4 74 4B            [12]  818 	mov	a,#(___str_13 >> 8)
      0031C6 C0 E0            [24]  819 	push	acc
      0031C8 74 80            [12]  820 	mov	a,#0x80
      0031CA C0 E0            [24]  821 	push	acc
      0031CC 12 3B 74         [24]  822 	lcall	_printf
      0031CF E5 81            [12]  823 	mov	a,sp
      0031D1 24 FB            [12]  824 	add	a,#0xfb
      0031D3 F5 81            [12]  825 	mov	sp,a
      0031D5 D0 06            [24]  826 	pop	ar6
                                    827 ;	8051_i2c_eeprom.c:79: switch(user_input)
      0031D7 BE 3F 03         [24]  828 	cjne	r6,#0x3f,00145$
      0031DA 02 32 D2         [24]  829 	ljmp	00109$
      0031DD                        830 00145$:
      0031DD BE 52 03         [24]  831 	cjne	r6,#0x52,00146$
      0031E0 02 32 73         [24]  832 	ljmp	00106$
      0031E3                        833 00146$:
      0031E3 BE 57 02         [24]  834 	cjne	r6,#0x57,00147$
      0031E6 80 03            [24]  835 	sjmp	00148$
      0031E8                        836 00147$:
      0031E8 02 32 D8         [24]  837 	ljmp	00110$
      0031EB                        838 00148$:
                                    839 ;	8051_i2c_eeprom.c:83: printf("\n┌─────────────── WRITE OPERATION ──────────────┐\n\r");
      0031EB 74 7D            [12]  840 	mov	a,#___str_14
      0031ED C0 E0            [24]  841 	push	acc
      0031EF 74 4B            [12]  842 	mov	a,#(___str_14 >> 8)
      0031F1 C0 E0            [24]  843 	push	acc
      0031F3 74 80            [12]  844 	mov	a,#0x80
      0031F5 C0 E0            [24]  845 	push	acc
      0031F7 12 3B 74         [24]  846 	lcall	_printf
      0031FA 15 81            [12]  847 	dec	sp
      0031FC 15 81            [12]  848 	dec	sp
      0031FE 15 81            [12]  849 	dec	sp
                                    850 ;	8051_i2c_eeprom.c:85: addr = take_address();
      003200 12 32 F0         [24]  851 	lcall	_take_address
      003203 AE 82            [24]  852 	mov	r6,dpl
      003205 AF 83            [24]  853 	mov	r7,dph
                                    854 ;	8051_i2c_eeprom.c:86: if(!address_range_flag) 
      003207 90 04 51         [24]  855 	mov	dptr,#_address_range_flag
      00320A E0               [24]  856 	movx	a,@dptr
      00320B F5 F0            [12]  857 	mov	b,a
      00320D A3               [24]  858 	inc	dptr
      00320E E0               [24]  859 	movx	a,@dptr
      00320F 45 F0            [12]  860 	orl	a,b
      003211 70 0B            [24]  861 	jnz	00103$
                                    862 ;	8051_i2c_eeprom.c:88: address_range_flag = 1;
      003213 90 04 51         [24]  863 	mov	dptr,#_address_range_flag
      003216 74 01            [12]  864 	mov	a,#0x01
      003218 F0               [24]  865 	movx	@dptr,a
      003219 E4               [12]  866 	clr	a
      00321A A3               [24]  867 	inc	dptr
      00321B F0               [24]  868 	movx	@dptr,a
                                    869 ;	8051_i2c_eeprom.c:89: break;
      00321C 80 93            [24]  870 	sjmp	00113$
      00321E                        871 00103$:
                                    872 ;	8051_i2c_eeprom.c:92: data = take_data();
      00321E C0 07            [24]  873 	push	ar7
      003220 C0 06            [24]  874 	push	ar6
      003222 12 35 09         [24]  875 	lcall	_take_data
      003225 AD 82            [24]  876 	mov	r5,dpl
      003227 D0 06            [24]  877 	pop	ar6
      003229 D0 07            [24]  878 	pop	ar7
                                    879 ;	8051_i2c_eeprom.c:93: if(!data_range_flag) 
      00322B 90 04 53         [24]  880 	mov	dptr,#_data_range_flag
      00322E E0               [24]  881 	movx	a,@dptr
      00322F F5 F0            [12]  882 	mov	b,a
      003231 A3               [24]  883 	inc	dptr
      003232 E0               [24]  884 	movx	a,@dptr
      003233 45 F0            [12]  885 	orl	a,b
      003235 70 0C            [24]  886 	jnz	00105$
                                    887 ;	8051_i2c_eeprom.c:95: data_range_flag = 1;
      003237 90 04 53         [24]  888 	mov	dptr,#_data_range_flag
      00323A 74 01            [12]  889 	mov	a,#0x01
      00323C F0               [24]  890 	movx	@dptr,a
      00323D E4               [12]  891 	clr	a
      00323E A3               [24]  892 	inc	dptr
      00323F F0               [24]  893 	movx	@dptr,a
                                    894 ;	8051_i2c_eeprom.c:96: break;
      003240 02 31 B1         [24]  895 	ljmp	00113$
      003243                        896 00105$:
                                    897 ;	8051_i2c_eeprom.c:98: printf("check point 1 \n\r");
      003243 C0 07            [24]  898 	push	ar7
      003245 C0 06            [24]  899 	push	ar6
      003247 C0 05            [24]  900 	push	ar5
      003249 74 EF            [12]  901 	mov	a,#___str_15
      00324B C0 E0            [24]  902 	push	acc
      00324D 74 4B            [12]  903 	mov	a,#(___str_15 >> 8)
      00324F C0 E0            [24]  904 	push	acc
      003251 74 80            [12]  905 	mov	a,#0x80
      003253 C0 E0            [24]  906 	push	acc
      003255 12 3B 74         [24]  907 	lcall	_printf
      003258 15 81            [12]  908 	dec	sp
      00325A 15 81            [12]  909 	dec	sp
      00325C 15 81            [12]  910 	dec	sp
      00325E D0 05            [24]  911 	pop	ar5
      003260 D0 06            [24]  912 	pop	ar6
      003262 D0 07            [24]  913 	pop	ar7
                                    914 ;	8051_i2c_eeprom.c:99: eeprom_write(addr, data);
      003264 90 04 0F         [24]  915 	mov	dptr,#_eeprom_write_PARM_2
      003267 ED               [12]  916 	mov	a,r5
      003268 F0               [24]  917 	movx	@dptr,a
      003269 8E 82            [24]  918 	mov	dpl,r6
      00326B 8F 83            [24]  919 	mov	dph,r7
      00326D 12 36 82         [24]  920 	lcall	_eeprom_write
                                    921 ;	8051_i2c_eeprom.c:100: break;
      003270 02 31 B1         [24]  922 	ljmp	00113$
                                    923 ;	8051_i2c_eeprom.c:102: case 'R':
      003273                        924 00106$:
                                    925 ;	8051_i2c_eeprom.c:104: printf("\n┌─────────────── READ OPERATION ───────────────┐\n\r");
      003273 74 00            [12]  926 	mov	a,#___str_16
      003275 C0 E0            [24]  927 	push	acc
      003277 74 4C            [12]  928 	mov	a,#(___str_16 >> 8)
      003279 C0 E0            [24]  929 	push	acc
      00327B 74 80            [12]  930 	mov	a,#0x80
      00327D C0 E0            [24]  931 	push	acc
      00327F 12 3B 74         [24]  932 	lcall	_printf
      003282 15 81            [12]  933 	dec	sp
      003284 15 81            [12]  934 	dec	sp
      003286 15 81            [12]  935 	dec	sp
                                    936 ;	8051_i2c_eeprom.c:106: addr = take_address(); 
      003288 12 32 F0         [24]  937 	lcall	_take_address
      00328B AE 82            [24]  938 	mov	r6,dpl
      00328D AF 83            [24]  939 	mov	r7,dph
                                    940 ;	8051_i2c_eeprom.c:107: if(!address_range_flag) 
      00328F 90 04 51         [24]  941 	mov	dptr,#_address_range_flag
      003292 E0               [24]  942 	movx	a,@dptr
      003293 F5 F0            [12]  943 	mov	b,a
      003295 A3               [24]  944 	inc	dptr
      003296 E0               [24]  945 	movx	a,@dptr
      003297 45 F0            [12]  946 	orl	a,b
      003299 70 0C            [24]  947 	jnz	00108$
                                    948 ;	8051_i2c_eeprom.c:109: address_range_flag = 1;
      00329B 90 04 51         [24]  949 	mov	dptr,#_address_range_flag
      00329E 74 01            [12]  950 	mov	a,#0x01
      0032A0 F0               [24]  951 	movx	@dptr,a
      0032A1 E4               [12]  952 	clr	a
      0032A2 A3               [24]  953 	inc	dptr
      0032A3 F0               [24]  954 	movx	@dptr,a
                                    955 ;	8051_i2c_eeprom.c:110: break;
      0032A4 02 31 B1         [24]  956 	ljmp	00113$
      0032A7                        957 00108$:
                                    958 ;	8051_i2c_eeprom.c:112: printf("| Reading from Address 0x%03X           |\n\r", addr);
      0032A7 C0 07            [24]  959 	push	ar7
      0032A9 C0 06            [24]  960 	push	ar6
      0032AB C0 06            [24]  961 	push	ar6
      0032AD C0 07            [24]  962 	push	ar7
      0032AF 74 74            [12]  963 	mov	a,#___str_17
      0032B1 C0 E0            [24]  964 	push	acc
      0032B3 74 4C            [12]  965 	mov	a,#(___str_17 >> 8)
      0032B5 C0 E0            [24]  966 	push	acc
      0032B7 74 80            [12]  967 	mov	a,#0x80
      0032B9 C0 E0            [24]  968 	push	acc
      0032BB 12 3B 74         [24]  969 	lcall	_printf
      0032BE E5 81            [12]  970 	mov	a,sp
      0032C0 24 FB            [12]  971 	add	a,#0xfb
      0032C2 F5 81            [12]  972 	mov	sp,a
      0032C4 D0 06            [24]  973 	pop	ar6
      0032C6 D0 07            [24]  974 	pop	ar7
                                    975 ;	8051_i2c_eeprom.c:113: eeprom_read(addr);
      0032C8 8E 82            [24]  976 	mov	dpl,r6
      0032CA 8F 83            [24]  977 	mov	dph,r7
      0032CC 12 38 07         [24]  978 	lcall	_eeprom_read
                                    979 ;	8051_i2c_eeprom.c:114: break;
      0032CF 02 31 B1         [24]  980 	ljmp	00113$
                                    981 ;	8051_i2c_eeprom.c:117: case '?':
      0032D2                        982 00109$:
                                    983 ;	8051_i2c_eeprom.c:118: command_menu();
      0032D2 12 30 CF         [24]  984 	lcall	_command_menu
                                    985 ;	8051_i2c_eeprom.c:119: break;
      0032D5 02 31 B1         [24]  986 	ljmp	00113$
                                    987 ;	8051_i2c_eeprom.c:121: default:
      0032D8                        988 00110$:
                                    989 ;	8051_i2c_eeprom.c:122: printf("INVALID INPUT\n\r");
      0032D8 74 A0            [12]  990 	mov	a,#___str_18
      0032DA C0 E0            [24]  991 	push	acc
      0032DC 74 4C            [12]  992 	mov	a,#(___str_18 >> 8)
      0032DE C0 E0            [24]  993 	push	acc
      0032E0 74 80            [12]  994 	mov	a,#0x80
      0032E2 C0 E0            [24]  995 	push	acc
      0032E4 12 3B 74         [24]  996 	lcall	_printf
      0032E7 15 81            [12]  997 	dec	sp
      0032E9 15 81            [12]  998 	dec	sp
      0032EB 15 81            [12]  999 	dec	sp
                                   1000 ;	8051_i2c_eeprom.c:124: }
                                   1001 ;	8051_i2c_eeprom.c:127: }
      0032ED 02 31 B1         [24] 1002 	ljmp	00113$
                                   1003 ;------------------------------------------------------------
                                   1004 ;Allocation info for local variables in function 'take_address'
                                   1005 ;------------------------------------------------------------
                                   1006 ;input                     Allocated with name '_take_address_input_65537_66'
                                   1007 ;i                         Allocated with name '_take_address_i_65537_66'
                                   1008 ;c                         Allocated with name '_take_address_c_65537_66'
                                   1009 ;address                   Allocated with name '_take_address_address_65538_70'
                                   1010 ;block                     Allocated with name '_take_address_block_65539_74'
                                   1011 ;------------------------------------------------------------
                                   1012 ;	8051_i2c_eeprom.c:129: unsigned int take_address() 
                                   1013 ;	-----------------------------------------
                                   1014 ;	 function take_address
                                   1015 ;	-----------------------------------------
      0032F0                       1016 _take_address:
                                   1017 ;	8051_i2c_eeprom.c:131: printf("│ Enter address (hex, up to 3 characters): \n\r|");
      0032F0 74 B0            [12] 1018 	mov	a,#___str_19
      0032F2 C0 E0            [24] 1019 	push	acc
      0032F4 74 4C            [12] 1020 	mov	a,#(___str_19 >> 8)
      0032F6 C0 E0            [24] 1021 	push	acc
      0032F8 74 80            [12] 1022 	mov	a,#0x80
      0032FA C0 E0            [24] 1023 	push	acc
      0032FC 12 3B 74         [24] 1024 	lcall	_printf
      0032FF 15 81            [12] 1025 	dec	sp
      003301 15 81            [12] 1026 	dec	sp
      003303 15 81            [12] 1027 	dec	sp
                                   1028 ;	8051_i2c_eeprom.c:132: char input[4] = {0};  // Array for 3 hex chars + null terminator
      003305 90 04 04         [24] 1029 	mov	dptr,#_take_address_input_65537_66
      003308 E4               [12] 1030 	clr	a
      003309 F0               [24] 1031 	movx	@dptr,a
      00330A 90 04 05         [24] 1032 	mov	dptr,#(_take_address_input_65537_66 + 0x0001)
      00330D F0               [24] 1033 	movx	@dptr,a
      00330E 90 04 06         [24] 1034 	mov	dptr,#(_take_address_input_65537_66 + 0x0002)
      003311 F0               [24] 1035 	movx	@dptr,a
      003312 90 04 07         [24] 1036 	mov	dptr,#(_take_address_input_65537_66 + 0x0003)
      003315 F0               [24] 1037 	movx	@dptr,a
                                   1038 ;	8051_i2c_eeprom.c:136: printf("| $ ");
      003316 74 E1            [12] 1039 	mov	a,#___str_20
      003318 C0 E0            [24] 1040 	push	acc
      00331A 74 4C            [12] 1041 	mov	a,#(___str_20 >> 8)
      00331C C0 E0            [24] 1042 	push	acc
      00331E 74 80            [12] 1043 	mov	a,#0x80
      003320 C0 E0            [24] 1044 	push	acc
      003322 12 3B 74         [24] 1045 	lcall	_printf
      003325 15 81            [12] 1046 	dec	sp
      003327 15 81            [12] 1047 	dec	sp
      003329 15 81            [12] 1048 	dec	sp
                                   1049 ;	8051_i2c_eeprom.c:138: while (i < 3) {
      00332B 7E 00            [12] 1050 	mov	r6,#0x00
      00332D 7F 00            [12] 1051 	mov	r7,#0x00
      00332F                       1052 00111$:
      00332F C3               [12] 1053 	clr	c
      003330 EE               [12] 1054 	mov	a,r6
      003331 94 03            [12] 1055 	subb	a,#0x03
      003333 EF               [12] 1056 	mov	a,r7
      003334 64 80            [12] 1057 	xrl	a,#0x80
      003336 94 80            [12] 1058 	subb	a,#0x80
      003338 50 5B            [24] 1059 	jnc	00113$
                                   1060 ;	8051_i2c_eeprom.c:140: c = getchar();
      00333A C0 07            [24] 1061 	push	ar7
      00333C C0 06            [24] 1062 	push	ar6
      00333E 12 30 81         [24] 1063 	lcall	_getchar
      003341 AC 82            [24] 1064 	mov	r4,dpl
      003343 AD 83            [24] 1065 	mov	r5,dph
      003345 D0 06            [24] 1066 	pop	ar6
      003347 D0 07            [24] 1067 	pop	ar7
                                   1068 ;	8051_i2c_eeprom.c:143: if (c == '\r' || c == '\n') {
      003349 BC 0D 02         [24] 1069 	cjne	r4,#0x0d,00200$
      00334C 80 47            [24] 1070 	sjmp	00113$
      00334E                       1071 00200$:
      00334E BC 0A 02         [24] 1072 	cjne	r4,#0x0a,00201$
      003351 80 42            [24] 1073 	sjmp	00113$
      003353                       1074 00201$:
                                   1075 ;	8051_i2c_eeprom.c:148: if ((c >= '0' && c <= '9') || 
      003353 BC 30 00         [24] 1076 	cjne	r4,#0x30,00202$
      003356                       1077 00202$:
      003356 40 05            [24] 1078 	jc	00108$
      003358 EC               [12] 1079 	mov	a,r4
      003359 24 C6            [12] 1080 	add	a,#0xff - 0x39
      00335B 50 14            [24] 1081 	jnc	00104$
      00335D                       1082 00108$:
                                   1083 ;	8051_i2c_eeprom.c:149: (c >= 'a' && c <= 'f') || 
      00335D BC 61 00         [24] 1084 	cjne	r4,#0x61,00205$
      003360                       1085 00205$:
      003360 40 05            [24] 1086 	jc	00110$
      003362 EC               [12] 1087 	mov	a,r4
      003363 24 99            [12] 1088 	add	a,#0xff - 0x66
      003365 50 0A            [24] 1089 	jnc	00104$
      003367                       1090 00110$:
                                   1091 ;	8051_i2c_eeprom.c:150: (c >= 'A' && c <= 'F')) {
      003367 BC 41 00         [24] 1092 	cjne	r4,#0x41,00208$
      00336A                       1093 00208$:
      00336A 40 C3            [24] 1094 	jc	00111$
      00336C EC               [12] 1095 	mov	a,r4
      00336D 24 B9            [12] 1096 	add	a,#0xff - 0x46
      00336F 40 BE            [24] 1097 	jc	00111$
      003371                       1098 00104$:
                                   1099 ;	8051_i2c_eeprom.c:152: input[i] = c;
      003371 EE               [12] 1100 	mov	a,r6
      003372 24 04            [12] 1101 	add	a,#_take_address_input_65537_66
      003374 F5 82            [12] 1102 	mov	dpl,a
      003376 EF               [12] 1103 	mov	a,r7
      003377 34 04            [12] 1104 	addc	a,#(_take_address_input_65537_66 >> 8)
      003379 F5 83            [12] 1105 	mov	dph,a
      00337B EC               [12] 1106 	mov	a,r4
      00337C F0               [24] 1107 	movx	@dptr,a
                                   1108 ;	8051_i2c_eeprom.c:153: putchar(c);  // Echo character back
      00337D 7D 00            [12] 1109 	mov	r5,#0x00
      00337F 8C 82            [24] 1110 	mov	dpl,r4
      003381 8D 83            [24] 1111 	mov	dph,r5
      003383 C0 07            [24] 1112 	push	ar7
      003385 C0 06            [24] 1113 	push	ar6
      003387 12 30 62         [24] 1114 	lcall	_putchar
      00338A D0 06            [24] 1115 	pop	ar6
      00338C D0 07            [24] 1116 	pop	ar7
                                   1117 ;	8051_i2c_eeprom.c:154: i++;
      00338E 0E               [12] 1118 	inc	r6
      00338F BE 00 9D         [24] 1119 	cjne	r6,#0x00,00111$
      003392 0F               [12] 1120 	inc	r7
      003393 80 9A            [24] 1121 	sjmp	00111$
      003395                       1122 00113$:
                                   1123 ;	8051_i2c_eeprom.c:158: input[i] = '\0';  // Null-terminate the string
      003395 EE               [12] 1124 	mov	a,r6
      003396 24 04            [12] 1125 	add	a,#_take_address_input_65537_66
      003398 F5 82            [12] 1126 	mov	dpl,a
      00339A EF               [12] 1127 	mov	a,r7
      00339B 34 04            [12] 1128 	addc	a,#(_take_address_input_65537_66 >> 8)
      00339D F5 83            [12] 1129 	mov	dph,a
      00339F E4               [12] 1130 	clr	a
      0033A0 F0               [24] 1131 	movx	@dptr,a
                                   1132 ;	8051_i2c_eeprom.c:161: unsigned int address = 0;
      0033A1 90 04 08         [24] 1133 	mov	dptr,#_take_address_address_65538_70
      0033A4 F0               [24] 1134 	movx	@dptr,a
      0033A5 A3               [24] 1135 	inc	dptr
      0033A6 F0               [24] 1136 	movx	@dptr,a
                                   1137 ;	8051_i2c_eeprom.c:162: for(i = 0; input[i] != '\0'; i++) {
      0033A7 7E 00            [12] 1138 	mov	r6,#0x00
      0033A9 7F 00            [12] 1139 	mov	r7,#0x00
      0033AB                       1140 00129$:
      0033AB EE               [12] 1141 	mov	a,r6
      0033AC 24 04            [12] 1142 	add	a,#_take_address_input_65537_66
      0033AE F5 82            [12] 1143 	mov	dpl,a
      0033B0 EF               [12] 1144 	mov	a,r7
      0033B1 34 04            [12] 1145 	addc	a,#(_take_address_input_65537_66 >> 8)
      0033B3 F5 83            [12] 1146 	mov	dph,a
      0033B5 E0               [24] 1147 	movx	a,@dptr
      0033B6 FD               [12] 1148 	mov	r5,a
      0033B7 70 03            [24] 1149 	jnz	00212$
      0033B9 02 34 64         [24] 1150 	ljmp	00125$
      0033BC                       1151 00212$:
                                   1152 ;	8051_i2c_eeprom.c:163: address = address * 16;
      0033BC 90 04 08         [24] 1153 	mov	dptr,#_take_address_address_65538_70
      0033BF E0               [24] 1154 	movx	a,@dptr
      0033C0 FB               [12] 1155 	mov	r3,a
      0033C1 A3               [24] 1156 	inc	dptr
      0033C2 E0               [24] 1157 	movx	a,@dptr
      0033C3 C4               [12] 1158 	swap	a
      0033C4 54 F0            [12] 1159 	anl	a,#0xf0
      0033C6 CB               [12] 1160 	xch	a,r3
      0033C7 C4               [12] 1161 	swap	a
      0033C8 CB               [12] 1162 	xch	a,r3
      0033C9 6B               [12] 1163 	xrl	a,r3
      0033CA CB               [12] 1164 	xch	a,r3
      0033CB 54 F0            [12] 1165 	anl	a,#0xf0
      0033CD CB               [12] 1166 	xch	a,r3
      0033CE 6B               [12] 1167 	xrl	a,r3
      0033CF FC               [12] 1168 	mov	r4,a
      0033D0 90 04 08         [24] 1169 	mov	dptr,#_take_address_address_65538_70
      0033D3 EB               [12] 1170 	mov	a,r3
      0033D4 F0               [24] 1171 	movx	@dptr,a
      0033D5 EC               [12] 1172 	mov	a,r4
      0033D6 A3               [24] 1173 	inc	dptr
      0033D7 F0               [24] 1174 	movx	@dptr,a
                                   1175 ;	8051_i2c_eeprom.c:164: if(input[i] >= '0' && input[i] <= '9')
      0033D8 BD 30 00         [24] 1176 	cjne	r5,#0x30,00213$
      0033DB                       1177 00213$:
      0033DB 40 23            [24] 1178 	jc	00122$
      0033DD ED               [12] 1179 	mov	a,r5
      0033DE 24 C6            [12] 1180 	add	a,#0xff - 0x39
      0033E0 40 1E            [24] 1181 	jc	00122$
                                   1182 ;	8051_i2c_eeprom.c:165: address += input[i] - '0';
      0033E2 7C 00            [12] 1183 	mov	r4,#0x00
      0033E4 ED               [12] 1184 	mov	a,r5
      0033E5 24 D0            [12] 1185 	add	a,#0xd0
      0033E7 FD               [12] 1186 	mov	r5,a
      0033E8 EC               [12] 1187 	mov	a,r4
      0033E9 34 FF            [12] 1188 	addc	a,#0xff
      0033EB FC               [12] 1189 	mov	r4,a
      0033EC 90 04 08         [24] 1190 	mov	dptr,#_take_address_address_65538_70
      0033EF E0               [24] 1191 	movx	a,@dptr
      0033F0 FA               [12] 1192 	mov	r2,a
      0033F1 A3               [24] 1193 	inc	dptr
      0033F2 E0               [24] 1194 	movx	a,@dptr
      0033F3 FB               [12] 1195 	mov	r3,a
      0033F4 90 04 08         [24] 1196 	mov	dptr,#_take_address_address_65538_70
      0033F7 ED               [12] 1197 	mov	a,r5
      0033F8 2A               [12] 1198 	add	a,r2
      0033F9 F0               [24] 1199 	movx	@dptr,a
      0033FA EC               [12] 1200 	mov	a,r4
      0033FB 3B               [12] 1201 	addc	a,r3
      0033FC A3               [24] 1202 	inc	dptr
      0033FD F0               [24] 1203 	movx	@dptr,a
      0033FE 80 5C            [24] 1204 	sjmp	00130$
      003400                       1205 00122$:
                                   1206 ;	8051_i2c_eeprom.c:166: else if(input[i] >= 'A' && input[i] <= 'F')
      003400 EE               [12] 1207 	mov	a,r6
      003401 24 04            [12] 1208 	add	a,#_take_address_input_65537_66
      003403 F5 82            [12] 1209 	mov	dpl,a
      003405 EF               [12] 1210 	mov	a,r7
      003406 34 04            [12] 1211 	addc	a,#(_take_address_input_65537_66 >> 8)
      003408 F5 83            [12] 1212 	mov	dph,a
      00340A E0               [24] 1213 	movx	a,@dptr
      00340B FD               [12] 1214 	mov	r5,a
      00340C BD 41 00         [24] 1215 	cjne	r5,#0x41,00216$
      00340F                       1216 00216$:
      00340F 40 25            [24] 1217 	jc	00118$
      003411 ED               [12] 1218 	mov	a,r5
      003412 24 B9            [12] 1219 	add	a,#0xff - 0x46
      003414 40 20            [24] 1220 	jc	00118$
                                   1221 ;	8051_i2c_eeprom.c:167: address += input[i] - 'A' + 10;
      003416 8D 03            [24] 1222 	mov	ar3,r5
      003418 7C 00            [12] 1223 	mov	r4,#0x00
      00341A 74 C9            [12] 1224 	mov	a,#0xc9
      00341C 2B               [12] 1225 	add	a,r3
      00341D FB               [12] 1226 	mov	r3,a
      00341E 74 FF            [12] 1227 	mov	a,#0xff
      003420 3C               [12] 1228 	addc	a,r4
      003421 FC               [12] 1229 	mov	r4,a
      003422 90 04 08         [24] 1230 	mov	dptr,#_take_address_address_65538_70
      003425 E0               [24] 1231 	movx	a,@dptr
      003426 F9               [12] 1232 	mov	r1,a
      003427 A3               [24] 1233 	inc	dptr
      003428 E0               [24] 1234 	movx	a,@dptr
      003429 FA               [12] 1235 	mov	r2,a
      00342A 90 04 08         [24] 1236 	mov	dptr,#_take_address_address_65538_70
      00342D EB               [12] 1237 	mov	a,r3
      00342E 29               [12] 1238 	add	a,r1
      00342F F0               [24] 1239 	movx	@dptr,a
      003430 EC               [12] 1240 	mov	a,r4
      003431 3A               [12] 1241 	addc	a,r2
      003432 A3               [24] 1242 	inc	dptr
      003433 F0               [24] 1243 	movx	@dptr,a
      003434 80 26            [24] 1244 	sjmp	00130$
      003436                       1245 00118$:
                                   1246 ;	8051_i2c_eeprom.c:168: else if(input[i] >= 'a' && input[i] <= 'f')
      003436 BD 61 00         [24] 1247 	cjne	r5,#0x61,00219$
      003439                       1248 00219$:
      003439 40 21            [24] 1249 	jc	00130$
      00343B ED               [12] 1250 	mov	a,r5
      00343C 24 99            [12] 1251 	add	a,#0xff - 0x66
      00343E 40 1C            [24] 1252 	jc	00130$
                                   1253 ;	8051_i2c_eeprom.c:169: address += input[i] - 'a' + 10;
      003440 7C 00            [12] 1254 	mov	r4,#0x00
      003442 74 A9            [12] 1255 	mov	a,#0xa9
      003444 2D               [12] 1256 	add	a,r5
      003445 FD               [12] 1257 	mov	r5,a
      003446 74 FF            [12] 1258 	mov	a,#0xff
      003448 3C               [12] 1259 	addc	a,r4
      003449 FC               [12] 1260 	mov	r4,a
      00344A 90 04 08         [24] 1261 	mov	dptr,#_take_address_address_65538_70
      00344D E0               [24] 1262 	movx	a,@dptr
      00344E FA               [12] 1263 	mov	r2,a
      00344F A3               [24] 1264 	inc	dptr
      003450 E0               [24] 1265 	movx	a,@dptr
      003451 FB               [12] 1266 	mov	r3,a
      003452 90 04 08         [24] 1267 	mov	dptr,#_take_address_address_65538_70
      003455 ED               [12] 1268 	mov	a,r5
      003456 2A               [12] 1269 	add	a,r2
      003457 F0               [24] 1270 	movx	@dptr,a
      003458 EC               [12] 1271 	mov	a,r4
      003459 3B               [12] 1272 	addc	a,r3
      00345A A3               [24] 1273 	inc	dptr
      00345B F0               [24] 1274 	movx	@dptr,a
      00345C                       1275 00130$:
                                   1276 ;	8051_i2c_eeprom.c:162: for(i = 0; input[i] != '\0'; i++) {
      00345C 0E               [12] 1277 	inc	r6
      00345D BE 00 01         [24] 1278 	cjne	r6,#0x00,00222$
      003460 0F               [12] 1279 	inc	r7
      003461                       1280 00222$:
      003461 02 33 AB         [24] 1281 	ljmp	00129$
      003464                       1282 00125$:
                                   1283 ;	8051_i2c_eeprom.c:172: printf("\n\r│ Entered address: 0x%03X\n\r", address);
      003464 90 04 08         [24] 1284 	mov	dptr,#_take_address_address_65538_70
      003467 E0               [24] 1285 	movx	a,@dptr
      003468 FE               [12] 1286 	mov	r6,a
      003469 A3               [24] 1287 	inc	dptr
      00346A E0               [24] 1288 	movx	a,@dptr
      00346B FF               [12] 1289 	mov	r7,a
      00346C C0 07            [24] 1290 	push	ar7
      00346E C0 06            [24] 1291 	push	ar6
      003470 C0 06            [24] 1292 	push	ar6
      003472 C0 07            [24] 1293 	push	ar7
      003474 74 E6            [12] 1294 	mov	a,#___str_21
      003476 C0 E0            [24] 1295 	push	acc
      003478 74 4C            [12] 1296 	mov	a,#(___str_21 >> 8)
      00347A C0 E0            [24] 1297 	push	acc
      00347C 74 80            [12] 1298 	mov	a,#0x80
      00347E C0 E0            [24] 1299 	push	acc
      003480 12 3B 74         [24] 1300 	lcall	_printf
      003483 E5 81            [12] 1301 	mov	a,sp
      003485 24 FB            [12] 1302 	add	a,#0xfb
      003487 F5 81            [12] 1303 	mov	sp,a
      003489 D0 06            [24] 1304 	pop	ar6
      00348B D0 07            [24] 1305 	pop	ar7
                                   1306 ;	8051_i2c_eeprom.c:173: if(address > 0x7ff) 
      00348D C3               [12] 1307 	clr	c
      00348E 74 FF            [12] 1308 	mov	a,#0xff
      003490 9E               [12] 1309 	subb	a,r6
      003491 74 07            [12] 1310 	mov	a,#0x07
      003493 9F               [12] 1311 	subb	a,r7
      003494 50 5F            [24] 1312 	jnc	00127$
                                   1313 ;	8051_i2c_eeprom.c:175: printf("╔══════════════════════════════════════════╗\n\r");
      003496 74 06            [12] 1314 	mov	a,#___str_22
      003498 C0 E0            [24] 1315 	push	acc
      00349A 74 4D            [12] 1316 	mov	a,#(___str_22 >> 8)
      00349C C0 E0            [24] 1317 	push	acc
      00349E 74 80            [12] 1318 	mov	a,#0x80
      0034A0 C0 E0            [24] 1319 	push	acc
      0034A2 12 3B 74         [24] 1320 	lcall	_printf
      0034A5 15 81            [12] 1321 	dec	sp
      0034A7 15 81            [12] 1322 	dec	sp
      0034A9 15 81            [12] 1323 	dec	sp
                                   1324 ;	8051_i2c_eeprom.c:176: printf("║       ! ADDRESS OUT OF RANGE !         ║\n\r");
      0034AB 74 8D            [12] 1325 	mov	a,#___str_23
      0034AD C0 E0            [24] 1326 	push	acc
      0034AF 74 4D            [12] 1327 	mov	a,#(___str_23 >> 8)
      0034B1 C0 E0            [24] 1328 	push	acc
      0034B3 74 80            [12] 1329 	mov	a,#0x80
      0034B5 C0 E0            [24] 1330 	push	acc
      0034B7 12 3B 74         [24] 1331 	lcall	_printf
      0034BA 15 81            [12] 1332 	dec	sp
      0034BC 15 81            [12] 1333 	dec	sp
      0034BE 15 81            [12] 1334 	dec	sp
                                   1335 ;	8051_i2c_eeprom.c:177: printf("║     Please Enter Valid Address         ║\n\r");
      0034C0 74 BE            [12] 1336 	mov	a,#___str_24
      0034C2 C0 E0            [24] 1337 	push	acc
      0034C4 74 4D            [12] 1338 	mov	a,#(___str_24 >> 8)
      0034C6 C0 E0            [24] 1339 	push	acc
      0034C8 74 80            [12] 1340 	mov	a,#0x80
      0034CA C0 E0            [24] 1341 	push	acc
      0034CC 12 3B 74         [24] 1342 	lcall	_printf
      0034CF 15 81            [12] 1343 	dec	sp
      0034D1 15 81            [12] 1344 	dec	sp
      0034D3 15 81            [12] 1345 	dec	sp
                                   1346 ;	8051_i2c_eeprom.c:178: printf("╚══════════════════════════════════════════╝\n\r");
      0034D5 74 EF            [12] 1347 	mov	a,#___str_25
      0034D7 C0 E0            [24] 1348 	push	acc
      0034D9 74 4D            [12] 1349 	mov	a,#(___str_25 >> 8)
      0034DB C0 E0            [24] 1350 	push	acc
      0034DD 74 80            [12] 1351 	mov	a,#0x80
      0034DF C0 E0            [24] 1352 	push	acc
      0034E1 12 3B 74         [24] 1353 	lcall	_printf
      0034E4 15 81            [12] 1354 	dec	sp
      0034E6 15 81            [12] 1355 	dec	sp
      0034E8 15 81            [12] 1356 	dec	sp
                                   1357 ;	8051_i2c_eeprom.c:179: address_range_flag = 0;
      0034EA 90 04 51         [24] 1358 	mov	dptr,#_address_range_flag
      0034ED E4               [12] 1359 	clr	a
      0034EE F0               [24] 1360 	movx	@dptr,a
      0034EF A3               [24] 1361 	inc	dptr
      0034F0 F0               [24] 1362 	movx	@dptr,a
                                   1363 ;	8051_i2c_eeprom.c:180: return 0;
      0034F1 90 00 00         [24] 1364 	mov	dptr,#0x0000
      0034F4 22               [24] 1365 	ret
      0034F5                       1366 00127$:
                                   1367 ;	8051_i2c_eeprom.c:184: address = address%256;     //word address
      0034F5 90 04 08         [24] 1368 	mov	dptr,#_take_address_address_65538_70
      0034F8 EE               [12] 1369 	mov	a,r6
      0034F9 F0               [24] 1370 	movx	@dptr,a
      0034FA E4               [12] 1371 	clr	a
      0034FB A3               [24] 1372 	inc	dptr
      0034FC F0               [24] 1373 	movx	@dptr,a
                                   1374 ;	8051_i2c_eeprom.c:187: return address;
      0034FD 90 04 08         [24] 1375 	mov	dptr,#_take_address_address_65538_70
      003500 E0               [24] 1376 	movx	a,@dptr
      003501 FE               [12] 1377 	mov	r6,a
      003502 A3               [24] 1378 	inc	dptr
      003503 E0               [24] 1379 	movx	a,@dptr
                                   1380 ;	8051_i2c_eeprom.c:188: }
      003504 8E 82            [24] 1381 	mov	dpl,r6
      003506 F5 83            [12] 1382 	mov	dph,a
      003508 22               [24] 1383 	ret
                                   1384 ;------------------------------------------------------------
                                   1385 ;Allocation info for local variables in function 'take_data'
                                   1386 ;------------------------------------------------------------
                                   1387 ;input                     Allocated with name '_take_data_input_65537_76'
                                   1388 ;i                         Allocated with name '_take_data_i_65537_76'
                                   1389 ;c                         Allocated with name '_take_data_c_65537_76'
                                   1390 ;data                      Allocated with name '_take_data_data_65538_80'
                                   1391 ;------------------------------------------------------------
                                   1392 ;	8051_i2c_eeprom.c:190: unsigned char take_data()
                                   1393 ;	-----------------------------------------
                                   1394 ;	 function take_data
                                   1395 ;	-----------------------------------------
      003509                       1396 _take_data:
                                   1397 ;	8051_i2c_eeprom.c:192: printf("│ Enter data (hex, up to 2 characters): \n\r|");
      003509 74 76            [12] 1398 	mov	a,#___str_26
      00350B C0 E0            [24] 1399 	push	acc
      00350D 74 4E            [12] 1400 	mov	a,#(___str_26 >> 8)
      00350F C0 E0            [24] 1401 	push	acc
      003511 74 80            [12] 1402 	mov	a,#0x80
      003513 C0 E0            [24] 1403 	push	acc
      003515 12 3B 74         [24] 1404 	lcall	_printf
      003518 15 81            [12] 1405 	dec	sp
      00351A 15 81            [12] 1406 	dec	sp
      00351C 15 81            [12] 1407 	dec	sp
                                   1408 ;	8051_i2c_eeprom.c:193: char input[4] = {0};  // Array for 3 hex chars + null terminator
      00351E 90 04 0A         [24] 1409 	mov	dptr,#_take_data_input_65537_76
      003521 E4               [12] 1410 	clr	a
      003522 F0               [24] 1411 	movx	@dptr,a
      003523 90 04 0B         [24] 1412 	mov	dptr,#(_take_data_input_65537_76 + 0x0001)
      003526 F0               [24] 1413 	movx	@dptr,a
      003527 90 04 0C         [24] 1414 	mov	dptr,#(_take_data_input_65537_76 + 0x0002)
      00352A F0               [24] 1415 	movx	@dptr,a
      00352B 90 04 0D         [24] 1416 	mov	dptr,#(_take_data_input_65537_76 + 0x0003)
      00352E F0               [24] 1417 	movx	@dptr,a
                                   1418 ;	8051_i2c_eeprom.c:197: printf("| $ ");
      00352F 74 E1            [12] 1419 	mov	a,#___str_20
      003531 C0 E0            [24] 1420 	push	acc
      003533 74 4C            [12] 1421 	mov	a,#(___str_20 >> 8)
      003535 C0 E0            [24] 1422 	push	acc
      003537 74 80            [12] 1423 	mov	a,#0x80
      003539 C0 E0            [24] 1424 	push	acc
      00353B 12 3B 74         [24] 1425 	lcall	_printf
      00353E 15 81            [12] 1426 	dec	sp
      003540 15 81            [12] 1427 	dec	sp
      003542 15 81            [12] 1428 	dec	sp
                                   1429 ;	8051_i2c_eeprom.c:199: while (i < 3) {
      003544 7E 00            [12] 1430 	mov	r6,#0x00
      003546 7F 00            [12] 1431 	mov	r7,#0x00
      003548                       1432 00111$:
      003548 C3               [12] 1433 	clr	c
      003549 EE               [12] 1434 	mov	a,r6
      00354A 94 03            [12] 1435 	subb	a,#0x03
      00354C EF               [12] 1436 	mov	a,r7
      00354D 64 80            [12] 1437 	xrl	a,#0x80
      00354F 94 80            [12] 1438 	subb	a,#0x80
      003551 50 5B            [24] 1439 	jnc	00113$
                                   1440 ;	8051_i2c_eeprom.c:201: c = getchar();
      003553 C0 07            [24] 1441 	push	ar7
      003555 C0 06            [24] 1442 	push	ar6
      003557 12 30 81         [24] 1443 	lcall	_getchar
      00355A AC 82            [24] 1444 	mov	r4,dpl
      00355C AD 83            [24] 1445 	mov	r5,dph
      00355E D0 06            [24] 1446 	pop	ar6
      003560 D0 07            [24] 1447 	pop	ar7
                                   1448 ;	8051_i2c_eeprom.c:204: if (c == '\r' || c == '\n') {
      003562 BC 0D 02         [24] 1449 	cjne	r4,#0x0d,00200$
      003565 80 47            [24] 1450 	sjmp	00113$
      003567                       1451 00200$:
      003567 BC 0A 02         [24] 1452 	cjne	r4,#0x0a,00201$
      00356A 80 42            [24] 1453 	sjmp	00113$
      00356C                       1454 00201$:
                                   1455 ;	8051_i2c_eeprom.c:209: if ((c >= '0' && c <= '9') || 
      00356C BC 30 00         [24] 1456 	cjne	r4,#0x30,00202$
      00356F                       1457 00202$:
      00356F 40 05            [24] 1458 	jc	00108$
      003571 EC               [12] 1459 	mov	a,r4
      003572 24 C6            [12] 1460 	add	a,#0xff - 0x39
      003574 50 14            [24] 1461 	jnc	00104$
      003576                       1462 00108$:
                                   1463 ;	8051_i2c_eeprom.c:210: (c >= 'a' && c <= 'f') || 
      003576 BC 61 00         [24] 1464 	cjne	r4,#0x61,00205$
      003579                       1465 00205$:
      003579 40 05            [24] 1466 	jc	00110$
      00357B EC               [12] 1467 	mov	a,r4
      00357C 24 99            [12] 1468 	add	a,#0xff - 0x66
      00357E 50 0A            [24] 1469 	jnc	00104$
      003580                       1470 00110$:
                                   1471 ;	8051_i2c_eeprom.c:211: (c >= 'A' && c <= 'F')) {
      003580 BC 41 00         [24] 1472 	cjne	r4,#0x41,00208$
      003583                       1473 00208$:
      003583 40 C3            [24] 1474 	jc	00111$
      003585 EC               [12] 1475 	mov	a,r4
      003586 24 B9            [12] 1476 	add	a,#0xff - 0x46
      003588 40 BE            [24] 1477 	jc	00111$
      00358A                       1478 00104$:
                                   1479 ;	8051_i2c_eeprom.c:213: input[i] = c;
      00358A EE               [12] 1480 	mov	a,r6
      00358B 24 0A            [12] 1481 	add	a,#_take_data_input_65537_76
      00358D F5 82            [12] 1482 	mov	dpl,a
      00358F EF               [12] 1483 	mov	a,r7
      003590 34 04            [12] 1484 	addc	a,#(_take_data_input_65537_76 >> 8)
      003592 F5 83            [12] 1485 	mov	dph,a
      003594 EC               [12] 1486 	mov	a,r4
      003595 F0               [24] 1487 	movx	@dptr,a
                                   1488 ;	8051_i2c_eeprom.c:214: putchar(c);  // Echo character back
      003596 7D 00            [12] 1489 	mov	r5,#0x00
      003598 8C 82            [24] 1490 	mov	dpl,r4
      00359A 8D 83            [24] 1491 	mov	dph,r5
      00359C C0 07            [24] 1492 	push	ar7
      00359E C0 06            [24] 1493 	push	ar6
      0035A0 12 30 62         [24] 1494 	lcall	_putchar
      0035A3 D0 06            [24] 1495 	pop	ar6
      0035A5 D0 07            [24] 1496 	pop	ar7
                                   1497 ;	8051_i2c_eeprom.c:215: i++;
      0035A7 0E               [12] 1498 	inc	r6
      0035A8 BE 00 9D         [24] 1499 	cjne	r6,#0x00,00111$
      0035AB 0F               [12] 1500 	inc	r7
      0035AC 80 9A            [24] 1501 	sjmp	00111$
      0035AE                       1502 00113$:
                                   1503 ;	8051_i2c_eeprom.c:219: input[i] = '\0';  // Null-terminate the string
      0035AE EE               [12] 1504 	mov	a,r6
      0035AF 24 0A            [12] 1505 	add	a,#_take_data_input_65537_76
      0035B1 F5 82            [12] 1506 	mov	dpl,a
      0035B3 EF               [12] 1507 	mov	a,r7
      0035B4 34 04            [12] 1508 	addc	a,#(_take_data_input_65537_76 >> 8)
      0035B6 F5 83            [12] 1509 	mov	dph,a
      0035B8 E4               [12] 1510 	clr	a
      0035B9 F0               [24] 1511 	movx	@dptr,a
                                   1512 ;	8051_i2c_eeprom.c:222: unsigned char data = 0;
      0035BA 90 04 0E         [24] 1513 	mov	dptr,#_take_data_data_65538_80
      0035BD F0               [24] 1514 	movx	@dptr,a
                                   1515 ;	8051_i2c_eeprom.c:223: for (i = 0; input[i] != '\0'; i++) {
      0035BE 7E 00            [12] 1516 	mov	r6,#0x00
      0035C0 7F 00            [12] 1517 	mov	r7,#0x00
      0035C2                       1518 00129$:
      0035C2 EE               [12] 1519 	mov	a,r6
      0035C3 24 0A            [12] 1520 	add	a,#_take_data_input_65537_76
      0035C5 F5 82            [12] 1521 	mov	dpl,a
      0035C7 EF               [12] 1522 	mov	a,r7
      0035C8 34 04            [12] 1523 	addc	a,#(_take_data_input_65537_76 >> 8)
      0035CA F5 83            [12] 1524 	mov	dph,a
      0035CC E0               [24] 1525 	movx	a,@dptr
      0035CD FD               [12] 1526 	mov	r5,a
      0035CE 70 03            [24] 1527 	jnz	00212$
      0035D0 02 36 35         [24] 1528 	ljmp	00125$
      0035D3                       1529 00212$:
                                   1530 ;	8051_i2c_eeprom.c:224: data = data * 16;
      0035D3 90 04 0E         [24] 1531 	mov	dptr,#_take_data_data_65538_80
      0035D6 E0               [24] 1532 	movx	a,@dptr
      0035D7 C4               [12] 1533 	swap	a
      0035D8 54 F0            [12] 1534 	anl	a,#0xf0
      0035DA FC               [12] 1535 	mov	r4,a
      0035DB F0               [24] 1536 	movx	@dptr,a
                                   1537 ;	8051_i2c_eeprom.c:225: if (input[i] >= '0' && input[i] <= '9')
      0035DC BD 30 00         [24] 1538 	cjne	r5,#0x30,00213$
      0035DF                       1539 00213$:
      0035DF 40 12            [24] 1540 	jc	00122$
      0035E1 ED               [12] 1541 	mov	a,r5
      0035E2 24 C6            [12] 1542 	add	a,#0xff - 0x39
      0035E4 40 0D            [24] 1543 	jc	00122$
                                   1544 ;	8051_i2c_eeprom.c:226: data += input[i] - '0';
      0035E6 ED               [12] 1545 	mov	a,r5
      0035E7 24 D0            [12] 1546 	add	a,#0xd0
      0035E9 FD               [12] 1547 	mov	r5,a
      0035EA 90 04 0E         [24] 1548 	mov	dptr,#_take_data_data_65538_80
      0035ED E0               [24] 1549 	movx	a,@dptr
      0035EE FC               [12] 1550 	mov	r4,a
      0035EF 2D               [12] 1551 	add	a,r5
      0035F0 F0               [24] 1552 	movx	@dptr,a
      0035F1 80 3A            [24] 1553 	sjmp	00130$
      0035F3                       1554 00122$:
                                   1555 ;	8051_i2c_eeprom.c:227: else if (input[i] >= 'A' && input[i] <= 'F')
      0035F3 EE               [12] 1556 	mov	a,r6
      0035F4 24 0A            [12] 1557 	add	a,#_take_data_input_65537_76
      0035F6 F5 82            [12] 1558 	mov	dpl,a
      0035F8 EF               [12] 1559 	mov	a,r7
      0035F9 34 04            [12] 1560 	addc	a,#(_take_data_input_65537_76 >> 8)
      0035FB F5 83            [12] 1561 	mov	dph,a
      0035FD E0               [24] 1562 	movx	a,@dptr
      0035FE FD               [12] 1563 	mov	r5,a
      0035FF BD 41 00         [24] 1564 	cjne	r5,#0x41,00216$
      003602                       1565 00216$:
      003602 40 14            [24] 1566 	jc	00118$
      003604 ED               [12] 1567 	mov	a,r5
      003605 24 B9            [12] 1568 	add	a,#0xff - 0x46
      003607 40 0F            [24] 1569 	jc	00118$
                                   1570 ;	8051_i2c_eeprom.c:228: data += input[i] - 'A' + 10;
      003609 8D 04            [24] 1571 	mov	ar4,r5
      00360B 74 C9            [12] 1572 	mov	a,#0xc9
      00360D 2C               [12] 1573 	add	a,r4
      00360E FC               [12] 1574 	mov	r4,a
      00360F 90 04 0E         [24] 1575 	mov	dptr,#_take_data_data_65538_80
      003612 E0               [24] 1576 	movx	a,@dptr
      003613 FB               [12] 1577 	mov	r3,a
      003614 2C               [12] 1578 	add	a,r4
      003615 F0               [24] 1579 	movx	@dptr,a
      003616 80 15            [24] 1580 	sjmp	00130$
      003618                       1581 00118$:
                                   1582 ;	8051_i2c_eeprom.c:229: else if (input[i] >= 'a' && input[i] <= 'f')
      003618 BD 61 00         [24] 1583 	cjne	r5,#0x61,00219$
      00361B                       1584 00219$:
      00361B 40 10            [24] 1585 	jc	00130$
      00361D ED               [12] 1586 	mov	a,r5
      00361E 24 99            [12] 1587 	add	a,#0xff - 0x66
      003620 40 0B            [24] 1588 	jc	00130$
                                   1589 ;	8051_i2c_eeprom.c:230: data += input[i] - 'a' + 10;
      003622 74 A9            [12] 1590 	mov	a,#0xa9
      003624 2D               [12] 1591 	add	a,r5
      003625 FD               [12] 1592 	mov	r5,a
      003626 90 04 0E         [24] 1593 	mov	dptr,#_take_data_data_65538_80
      003629 E0               [24] 1594 	movx	a,@dptr
      00362A FC               [12] 1595 	mov	r4,a
      00362B 2D               [12] 1596 	add	a,r5
      00362C F0               [24] 1597 	movx	@dptr,a
      00362D                       1598 00130$:
                                   1599 ;	8051_i2c_eeprom.c:223: for (i = 0; input[i] != '\0'; i++) {
      00362D 0E               [12] 1600 	inc	r6
      00362E BE 00 01         [24] 1601 	cjne	r6,#0x00,00222$
      003631 0F               [12] 1602 	inc	r7
      003632                       1603 00222$:
      003632 02 35 C2         [24] 1604 	ljmp	00129$
      003635                       1605 00125$:
                                   1606 ;	8051_i2c_eeprom.c:233: printf("\n\r│ Entered data: 0x%03X\n\r", data);
      003635 90 04 0E         [24] 1607 	mov	dptr,#_take_data_data_65538_80
      003638 E0               [24] 1608 	movx	a,@dptr
      003639 FF               [12] 1609 	mov	r7,a
      00363A FD               [12] 1610 	mov	r5,a
      00363B 7E 00            [12] 1611 	mov	r6,#0x00
      00363D C0 07            [24] 1612 	push	ar7
      00363F C0 05            [24] 1613 	push	ar5
      003641 C0 06            [24] 1614 	push	ar6
      003643 74 A4            [12] 1615 	mov	a,#___str_27
      003645 C0 E0            [24] 1616 	push	acc
      003647 74 4E            [12] 1617 	mov	a,#(___str_27 >> 8)
      003649 C0 E0            [24] 1618 	push	acc
      00364B 74 80            [12] 1619 	mov	a,#0x80
      00364D C0 E0            [24] 1620 	push	acc
      00364F 12 3B 74         [24] 1621 	lcall	_printf
      003652 E5 81            [12] 1622 	mov	a,sp
      003654 24 FB            [12] 1623 	add	a,#0xfb
      003656 F5 81            [12] 1624 	mov	sp,a
      003658 D0 07            [24] 1625 	pop	ar7
                                   1626 ;	8051_i2c_eeprom.c:234: if(data > 0xFE) 
      00365A EF               [12] 1627 	mov	a,r7
      00365B 24 01            [12] 1628 	add	a,#0xff - 0xfe
      00365D 50 20            [24] 1629 	jnc	00127$
                                   1630 ;	8051_i2c_eeprom.c:236: printf("Data out of Range\n\r");
      00365F 74 C1            [12] 1631 	mov	a,#___str_28
      003661 C0 E0            [24] 1632 	push	acc
      003663 74 4E            [12] 1633 	mov	a,#(___str_28 >> 8)
      003665 C0 E0            [24] 1634 	push	acc
      003667 74 80            [12] 1635 	mov	a,#0x80
      003669 C0 E0            [24] 1636 	push	acc
      00366B 12 3B 74         [24] 1637 	lcall	_printf
      00366E 15 81            [12] 1638 	dec	sp
      003670 15 81            [12] 1639 	dec	sp
      003672 15 81            [12] 1640 	dec	sp
                                   1641 ;	8051_i2c_eeprom.c:237: data_range_flag = 0;
      003674 90 04 53         [24] 1642 	mov	dptr,#_data_range_flag
      003677 E4               [12] 1643 	clr	a
      003678 F0               [24] 1644 	movx	@dptr,a
      003679 A3               [24] 1645 	inc	dptr
      00367A F0               [24] 1646 	movx	@dptr,a
                                   1647 ;	8051_i2c_eeprom.c:238: return 0;
      00367B 75 82 00         [24] 1648 	mov	dpl,#0x00
      00367E 22               [24] 1649 	ret
      00367F                       1650 00127$:
                                   1651 ;	8051_i2c_eeprom.c:240: return data;
      00367F 8F 82            [24] 1652 	mov	dpl,r7
                                   1653 ;	8051_i2c_eeprom.c:242: }
      003681 22               [24] 1654 	ret
                                   1655 ;------------------------------------------------------------
                                   1656 ;Allocation info for local variables in function 'eeprom_write'
                                   1657 ;------------------------------------------------------------
                                   1658 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                   1659 ;address                   Allocated with name '_eeprom_write_address_65536_84'
                                   1660 ;i                         Allocated with name '_eeprom_write_i_196608_90'
                                   1661 ;------------------------------------------------------------
                                   1662 ;	8051_i2c_eeprom.c:244: int eeprom_write(unsigned int address, unsigned char data) 
                                   1663 ;	-----------------------------------------
                                   1664 ;	 function eeprom_write
                                   1665 ;	-----------------------------------------
      003682                       1666 _eeprom_write:
      003682 AF 83            [24] 1667 	mov	r7,dph
      003684 E5 82            [12] 1668 	mov	a,dpl
      003686 90 04 10         [24] 1669 	mov	dptr,#_eeprom_write_address_65536_84
      003689 F0               [24] 1670 	movx	@dptr,a
      00368A EF               [12] 1671 	mov	a,r7
      00368B A3               [24] 1672 	inc	dptr
      00368C F0               [24] 1673 	movx	@dptr,a
                                   1674 ;	8051_i2c_eeprom.c:247: if(address_range_flag && data_range_flag)
      00368D 90 04 51         [24] 1675 	mov	dptr,#_address_range_flag
      003690 E0               [24] 1676 	movx	a,@dptr
      003691 F5 F0            [12] 1677 	mov	b,a
      003693 A3               [24] 1678 	inc	dptr
      003694 E0               [24] 1679 	movx	a,@dptr
      003695 45 F0            [12] 1680 	orl	a,b
      003697 70 03            [24] 1681 	jnz	00145$
      003699 02 38 03         [24] 1682 	ljmp	00109$
      00369C                       1683 00145$:
      00369C 90 04 53         [24] 1684 	mov	dptr,#_data_range_flag
      00369F E0               [24] 1685 	movx	a,@dptr
      0036A0 F5 F0            [12] 1686 	mov	b,a
      0036A2 A3               [24] 1687 	inc	dptr
      0036A3 E0               [24] 1688 	movx	a,@dptr
      0036A4 45 F0            [12] 1689 	orl	a,b
      0036A6 70 03            [24] 1690 	jnz	00146$
      0036A8 02 38 03         [24] 1691 	ljmp	00109$
      0036AB                       1692 00146$:
                                   1693 ;	8051_i2c_eeprom.c:250: i2c_start();
      0036AB 12 3A 35         [24] 1694 	lcall	_i2c_start
                                   1695 ;	8051_i2c_eeprom.c:253: if(!i2c_write(EEPROM_ID | block | WRITE)) {
      0036AE 90 04 55         [24] 1696 	mov	dptr,#_block
      0036B1 E0               [24] 1697 	movx	a,@dptr
      0036B2 FE               [12] 1698 	mov	r6,a
      0036B3 A3               [24] 1699 	inc	dptr
      0036B4 E0               [24] 1700 	movx	a,@dptr
      0036B5 43 06 A0         [24] 1701 	orl	ar6,#0xa0
      0036B8 8E 82            [24] 1702 	mov	dpl,r6
      0036BA 12 39 48         [24] 1703 	lcall	_i2c_write
      0036BD E5 82            [12] 1704 	mov	a,dpl
      0036BF 85 83 F0         [24] 1705 	mov	b,dph
      0036C2 45 F0            [12] 1706 	orl	a,b
      0036C4 70 1C            [24] 1707 	jnz	00102$
                                   1708 ;	8051_i2c_eeprom.c:254: printf("Error: No ACK for device address (write)\n\r");
      0036C6 74 D5            [12] 1709 	mov	a,#___str_29
      0036C8 C0 E0            [24] 1710 	push	acc
      0036CA 74 4E            [12] 1711 	mov	a,#(___str_29 >> 8)
      0036CC C0 E0            [24] 1712 	push	acc
      0036CE 74 80            [12] 1713 	mov	a,#0x80
      0036D0 C0 E0            [24] 1714 	push	acc
      0036D2 12 3B 74         [24] 1715 	lcall	_printf
      0036D5 15 81            [12] 1716 	dec	sp
      0036D7 15 81            [12] 1717 	dec	sp
      0036D9 15 81            [12] 1718 	dec	sp
                                   1719 ;	8051_i2c_eeprom.c:255: i2c_stop();
      0036DB 12 3A 4A         [24] 1720 	lcall	_i2c_stop
                                   1721 ;	8051_i2c_eeprom.c:256: return 0;
      0036DE 90 00 00         [24] 1722 	mov	dptr,#0x0000
      0036E1 22               [24] 1723 	ret
      0036E2                       1724 00102$:
                                   1725 ;	8051_i2c_eeprom.c:260: if(!i2c_write((unsigned char)address)) {
      0036E2 90 04 10         [24] 1726 	mov	dptr,#_eeprom_write_address_65536_84
      0036E5 E0               [24] 1727 	movx	a,@dptr
      0036E6 FE               [12] 1728 	mov	r6,a
      0036E7 A3               [24] 1729 	inc	dptr
      0036E8 E0               [24] 1730 	movx	a,@dptr
      0036E9 FF               [12] 1731 	mov	r7,a
      0036EA 8E 05            [24] 1732 	mov	ar5,r6
      0036EC 8D 82            [24] 1733 	mov	dpl,r5
      0036EE C0 07            [24] 1734 	push	ar7
      0036F0 C0 06            [24] 1735 	push	ar6
      0036F2 12 39 48         [24] 1736 	lcall	_i2c_write
      0036F5 E5 82            [12] 1737 	mov	a,dpl
      0036F7 85 83 F0         [24] 1738 	mov	b,dph
      0036FA D0 06            [24] 1739 	pop	ar6
      0036FC D0 07            [24] 1740 	pop	ar7
      0036FE 45 F0            [12] 1741 	orl	a,b
      003700 70 1C            [24] 1742 	jnz	00104$
                                   1743 ;	8051_i2c_eeprom.c:261: printf("Error: No ACK for memory address\n\r");
      003702 74 00            [12] 1744 	mov	a,#___str_30
      003704 C0 E0            [24] 1745 	push	acc
      003706 74 4F            [12] 1746 	mov	a,#(___str_30 >> 8)
      003708 C0 E0            [24] 1747 	push	acc
      00370A 74 80            [12] 1748 	mov	a,#0x80
      00370C C0 E0            [24] 1749 	push	acc
      00370E 12 3B 74         [24] 1750 	lcall	_printf
      003711 15 81            [12] 1751 	dec	sp
      003713 15 81            [12] 1752 	dec	sp
      003715 15 81            [12] 1753 	dec	sp
                                   1754 ;	8051_i2c_eeprom.c:262: i2c_stop();
      003717 12 3A 4A         [24] 1755 	lcall	_i2c_stop
                                   1756 ;	8051_i2c_eeprom.c:263: return 0;
      00371A 90 00 00         [24] 1757 	mov	dptr,#0x0000
      00371D 22               [24] 1758 	ret
      00371E                       1759 00104$:
                                   1760 ;	8051_i2c_eeprom.c:267: if(!i2c_write(data)) {
      00371E 90 04 0F         [24] 1761 	mov	dptr,#_eeprom_write_PARM_2
      003721 E0               [24] 1762 	movx	a,@dptr
      003722 FD               [12] 1763 	mov	r5,a
      003723 F5 82            [12] 1764 	mov	dpl,a
      003725 C0 07            [24] 1765 	push	ar7
      003727 C0 06            [24] 1766 	push	ar6
      003729 C0 05            [24] 1767 	push	ar5
      00372B 12 39 48         [24] 1768 	lcall	_i2c_write
      00372E E5 82            [12] 1769 	mov	a,dpl
      003730 85 83 F0         [24] 1770 	mov	b,dph
      003733 D0 05            [24] 1771 	pop	ar5
      003735 D0 06            [24] 1772 	pop	ar6
      003737 D0 07            [24] 1773 	pop	ar7
      003739 45 F0            [12] 1774 	orl	a,b
      00373B 70 1C            [24] 1775 	jnz	00106$
                                   1776 ;	8051_i2c_eeprom.c:268: printf("Error: No ACK for data\n\r");
      00373D 74 23            [12] 1777 	mov	a,#___str_31
      00373F C0 E0            [24] 1778 	push	acc
      003741 74 4F            [12] 1779 	mov	a,#(___str_31 >> 8)
      003743 C0 E0            [24] 1780 	push	acc
      003745 74 80            [12] 1781 	mov	a,#0x80
      003747 C0 E0            [24] 1782 	push	acc
      003749 12 3B 74         [24] 1783 	lcall	_printf
      00374C 15 81            [12] 1784 	dec	sp
      00374E 15 81            [12] 1785 	dec	sp
      003750 15 81            [12] 1786 	dec	sp
                                   1787 ;	8051_i2c_eeprom.c:269: i2c_stop();
      003752 12 3A 4A         [24] 1788 	lcall	_i2c_stop
                                   1789 ;	8051_i2c_eeprom.c:270: return 0;
      003755 90 00 00         [24] 1790 	mov	dptr,#0x0000
      003758 22               [24] 1791 	ret
      003759                       1792 00106$:
                                   1793 ;	8051_i2c_eeprom.c:273: i2c_stop();
      003759 C0 07            [24] 1794 	push	ar7
      00375B C0 06            [24] 1795 	push	ar6
      00375D C0 05            [24] 1796 	push	ar5
      00375F 12 3A 4A         [24] 1797 	lcall	_i2c_stop
      003762 D0 05            [24] 1798 	pop	ar5
      003764 D0 06            [24] 1799 	pop	ar6
      003766 D0 07            [24] 1800 	pop	ar7
                                   1801 ;	8051_i2c_eeprom.c:275: for(int i = 0; i<100; i++)
      003768 7B 00            [12] 1802 	mov	r3,#0x00
      00376A 7C 00            [12] 1803 	mov	r4,#0x00
      00376C                       1804 00112$:
      00376C C3               [12] 1805 	clr	c
      00376D EB               [12] 1806 	mov	a,r3
      00376E 94 64            [12] 1807 	subb	a,#0x64
      003770 EC               [12] 1808 	mov	a,r4
      003771 64 80            [12] 1809 	xrl	a,#0x80
      003773 94 80            [12] 1810 	subb	a,#0x80
      003775 50 1E            [24] 1811 	jnc	00107$
                                   1812 ;	8051_i2c_eeprom.c:277: i2c_delay();
      003777 C0 07            [24] 1813 	push	ar7
      003779 C0 06            [24] 1814 	push	ar6
      00377B C0 05            [24] 1815 	push	ar5
      00377D C0 04            [24] 1816 	push	ar4
      00377F C0 03            [24] 1817 	push	ar3
      003781 12 3A 57         [24] 1818 	lcall	_i2c_delay
      003784 D0 03            [24] 1819 	pop	ar3
      003786 D0 04            [24] 1820 	pop	ar4
      003788 D0 05            [24] 1821 	pop	ar5
      00378A D0 06            [24] 1822 	pop	ar6
      00378C D0 07            [24] 1823 	pop	ar7
                                   1824 ;	8051_i2c_eeprom.c:275: for(int i = 0; i<100; i++)
      00378E 0B               [12] 1825 	inc	r3
      00378F BB 00 DA         [24] 1826 	cjne	r3,#0x00,00112$
      003792 0C               [12] 1827 	inc	r4
      003793 80 D7            [24] 1828 	sjmp	00112$
      003795                       1829 00107$:
                                   1830 ;	8051_i2c_eeprom.c:279: printf("checkpoint 4\n\r");
      003795 C0 07            [24] 1831 	push	ar7
      003797 C0 06            [24] 1832 	push	ar6
      003799 C0 05            [24] 1833 	push	ar5
      00379B 74 3C            [12] 1834 	mov	a,#___str_32
      00379D C0 E0            [24] 1835 	push	acc
      00379F 74 4F            [12] 1836 	mov	a,#(___str_32 >> 8)
      0037A1 C0 E0            [24] 1837 	push	acc
      0037A3 74 80            [12] 1838 	mov	a,#0x80
      0037A5 C0 E0            [24] 1839 	push	acc
      0037A7 12 3B 74         [24] 1840 	lcall	_printf
      0037AA 15 81            [12] 1841 	dec	sp
      0037AC 15 81            [12] 1842 	dec	sp
      0037AE 15 81            [12] 1843 	dec	sp
      0037B0 D0 05            [24] 1844 	pop	ar5
      0037B2 D0 06            [24] 1845 	pop	ar6
      0037B4 D0 07            [24] 1846 	pop	ar7
                                   1847 ;	8051_i2c_eeprom.c:280: printf("| Writing at Address 0x%03X Data 0x%02X          |\n\r", address, data);
      0037B6 7C 00            [12] 1848 	mov	r4,#0x00
      0037B8 C0 05            [24] 1849 	push	ar5
      0037BA C0 04            [24] 1850 	push	ar4
      0037BC C0 06            [24] 1851 	push	ar6
      0037BE C0 07            [24] 1852 	push	ar7
      0037C0 74 4B            [12] 1853 	mov	a,#___str_33
      0037C2 C0 E0            [24] 1854 	push	acc
      0037C4 74 4F            [12] 1855 	mov	a,#(___str_33 >> 8)
      0037C6 C0 E0            [24] 1856 	push	acc
      0037C8 74 80            [12] 1857 	mov	a,#0x80
      0037CA C0 E0            [24] 1858 	push	acc
      0037CC 12 3B 74         [24] 1859 	lcall	_printf
      0037CF E5 81            [12] 1860 	mov	a,sp
      0037D1 24 F9            [12] 1861 	add	a,#0xf9
      0037D3 F5 81            [12] 1862 	mov	sp,a
                                   1863 ;	8051_i2c_eeprom.c:281: printf("│ Write successful!                             │\n\r");
      0037D5 74 80            [12] 1864 	mov	a,#___str_34
      0037D7 C0 E0            [24] 1865 	push	acc
      0037D9 74 4F            [12] 1866 	mov	a,#(___str_34 >> 8)
      0037DB C0 E0            [24] 1867 	push	acc
      0037DD 74 80            [12] 1868 	mov	a,#0x80
      0037DF C0 E0            [24] 1869 	push	acc
      0037E1 12 3B 74         [24] 1870 	lcall	_printf
      0037E4 15 81            [12] 1871 	dec	sp
      0037E6 15 81            [12] 1872 	dec	sp
      0037E8 15 81            [12] 1873 	dec	sp
                                   1874 ;	8051_i2c_eeprom.c:282: printf("└───────────────────────────────────────────────┘\n\r");
      0037EA 74 B8            [12] 1875 	mov	a,#___str_35
      0037EC C0 E0            [24] 1876 	push	acc
      0037EE 74 4F            [12] 1877 	mov	a,#(___str_35 >> 8)
      0037F0 C0 E0            [24] 1878 	push	acc
      0037F2 74 80            [12] 1879 	mov	a,#0x80
      0037F4 C0 E0            [24] 1880 	push	acc
      0037F6 12 3B 74         [24] 1881 	lcall	_printf
      0037F9 15 81            [12] 1882 	dec	sp
      0037FB 15 81            [12] 1883 	dec	sp
      0037FD 15 81            [12] 1884 	dec	sp
                                   1885 ;	8051_i2c_eeprom.c:283: return 1;  // Success
      0037FF 90 00 01         [24] 1886 	mov	dptr,#0x0001
      003802 22               [24] 1887 	ret
      003803                       1888 00109$:
                                   1889 ;	8051_i2c_eeprom.c:286: return 0;
      003803 90 00 00         [24] 1890 	mov	dptr,#0x0000
                                   1891 ;	8051_i2c_eeprom.c:293: }
      003806 22               [24] 1892 	ret
                                   1893 ;------------------------------------------------------------
                                   1894 ;Allocation info for local variables in function 'eeprom_read'
                                   1895 ;------------------------------------------------------------
                                   1896 ;address                   Allocated with name '_eeprom_read_address_65536_92'
                                   1897 ;result                    Allocated with name '_eeprom_read_result_65536_93'
                                   1898 ;------------------------------------------------------------
                                   1899 ;	8051_i2c_eeprom.c:295: int eeprom_read(unsigned int address) 
                                   1900 ;	-----------------------------------------
                                   1901 ;	 function eeprom_read
                                   1902 ;	-----------------------------------------
      003807                       1903 _eeprom_read:
      003807 AF 83            [24] 1904 	mov	r7,dph
      003809 E5 82            [12] 1905 	mov	a,dpl
      00380B 90 04 12         [24] 1906 	mov	dptr,#_eeprom_read_address_65536_92
      00380E F0               [24] 1907 	movx	@dptr,a
      00380F EF               [12] 1908 	mov	a,r7
      003810 A3               [24] 1909 	inc	dptr
      003811 F0               [24] 1910 	movx	@dptr,a
                                   1911 ;	8051_i2c_eeprom.c:302: i2c_start();
      003812 12 3A 35         [24] 1912 	lcall	_i2c_start
                                   1913 ;	8051_i2c_eeprom.c:305: if(!i2c_write(EEPROM_ID | WRITE)) {
      003815 75 82 A0         [24] 1914 	mov	dpl,#0xa0
      003818 12 39 48         [24] 1915 	lcall	_i2c_write
      00381B E5 82            [12] 1916 	mov	a,dpl
      00381D 85 83 F0         [24] 1917 	mov	b,dph
      003820 45 F0            [12] 1918 	orl	a,b
      003822 70 1C            [24] 1919 	jnz	00102$
                                   1920 ;	8051_i2c_eeprom.c:306: printf("Error: No ACK for device address (write mode)\n\r");
      003824 74 4E            [12] 1921 	mov	a,#___str_36
      003826 C0 E0            [24] 1922 	push	acc
      003828 74 50            [12] 1923 	mov	a,#(___str_36 >> 8)
      00382A C0 E0            [24] 1924 	push	acc
      00382C 74 80            [12] 1925 	mov	a,#0x80
      00382E C0 E0            [24] 1926 	push	acc
      003830 12 3B 74         [24] 1927 	lcall	_printf
      003833 15 81            [12] 1928 	dec	sp
      003835 15 81            [12] 1929 	dec	sp
      003837 15 81            [12] 1930 	dec	sp
                                   1931 ;	8051_i2c_eeprom.c:307: i2c_stop();
      003839 12 3A 4A         [24] 1932 	lcall	_i2c_stop
                                   1933 ;	8051_i2c_eeprom.c:308: return -1;
      00383C 90 FF FF         [24] 1934 	mov	dptr,#0xffff
      00383F 22               [24] 1935 	ret
      003840                       1936 00102$:
                                   1937 ;	8051_i2c_eeprom.c:312: if(!i2c_write((unsigned char)address)) {
      003840 90 04 12         [24] 1938 	mov	dptr,#_eeprom_read_address_65536_92
      003843 E0               [24] 1939 	movx	a,@dptr
      003844 FE               [12] 1940 	mov	r6,a
      003845 A3               [24] 1941 	inc	dptr
      003846 E0               [24] 1942 	movx	a,@dptr
      003847 FF               [12] 1943 	mov	r7,a
      003848 8E 05            [24] 1944 	mov	ar5,r6
      00384A 8D 82            [24] 1945 	mov	dpl,r5
      00384C C0 07            [24] 1946 	push	ar7
      00384E C0 06            [24] 1947 	push	ar6
      003850 12 39 48         [24] 1948 	lcall	_i2c_write
      003853 E5 82            [12] 1949 	mov	a,dpl
      003855 85 83 F0         [24] 1950 	mov	b,dph
      003858 D0 06            [24] 1951 	pop	ar6
      00385A D0 07            [24] 1952 	pop	ar7
      00385C 45 F0            [12] 1953 	orl	a,b
      00385E 70 1C            [24] 1954 	jnz	00104$
                                   1955 ;	8051_i2c_eeprom.c:313: printf("Error: No ACK for memory address\n\r");
      003860 74 00            [12] 1956 	mov	a,#___str_30
      003862 C0 E0            [24] 1957 	push	acc
      003864 74 4F            [12] 1958 	mov	a,#(___str_30 >> 8)
      003866 C0 E0            [24] 1959 	push	acc
      003868 74 80            [12] 1960 	mov	a,#0x80
      00386A C0 E0            [24] 1961 	push	acc
      00386C 12 3B 74         [24] 1962 	lcall	_printf
      00386F 15 81            [12] 1963 	dec	sp
      003871 15 81            [12] 1964 	dec	sp
      003873 15 81            [12] 1965 	dec	sp
                                   1966 ;	8051_i2c_eeprom.c:314: i2c_stop();
      003875 12 3A 4A         [24] 1967 	lcall	_i2c_stop
                                   1968 ;	8051_i2c_eeprom.c:315: return -1;
      003878 90 FF FF         [24] 1969 	mov	dptr,#0xffff
      00387B 22               [24] 1970 	ret
      00387C                       1971 00104$:
                                   1972 ;	8051_i2c_eeprom.c:319: i2c_start();
      00387C C0 07            [24] 1973 	push	ar7
      00387E C0 06            [24] 1974 	push	ar6
      003880 12 3A 35         [24] 1975 	lcall	_i2c_start
                                   1976 ;	8051_i2c_eeprom.c:322: if(!i2c_write(EEPROM_ID | READ)) {
      003883 75 82 A1         [24] 1977 	mov	dpl,#0xa1
      003886 12 39 48         [24] 1978 	lcall	_i2c_write
      003889 E5 82            [12] 1979 	mov	a,dpl
      00388B 85 83 F0         [24] 1980 	mov	b,dph
      00388E D0 06            [24] 1981 	pop	ar6
      003890 D0 07            [24] 1982 	pop	ar7
      003892 45 F0            [12] 1983 	orl	a,b
      003894 70 1C            [24] 1984 	jnz	00106$
                                   1985 ;	8051_i2c_eeprom.c:323: printf("Error: No ACK for device address (read mode)\n\r");
      003896 74 7E            [12] 1986 	mov	a,#___str_37
      003898 C0 E0            [24] 1987 	push	acc
      00389A 74 50            [12] 1988 	mov	a,#(___str_37 >> 8)
      00389C C0 E0            [24] 1989 	push	acc
      00389E 74 80            [12] 1990 	mov	a,#0x80
      0038A0 C0 E0            [24] 1991 	push	acc
      0038A2 12 3B 74         [24] 1992 	lcall	_printf
      0038A5 15 81            [12] 1993 	dec	sp
      0038A7 15 81            [12] 1994 	dec	sp
      0038A9 15 81            [12] 1995 	dec	sp
                                   1996 ;	8051_i2c_eeprom.c:324: i2c_stop();
      0038AB 12 3A 4A         [24] 1997 	lcall	_i2c_stop
                                   1998 ;	8051_i2c_eeprom.c:325: return -1;
      0038AE 90 FF FF         [24] 1999 	mov	dptr,#0xffff
      0038B1 22               [24] 2000 	ret
      0038B2                       2001 00106$:
                                   2002 ;	8051_i2c_eeprom.c:329: result = i2c_read(0);  // 0 means send NACK
      0038B2 90 00 00         [24] 2003 	mov	dptr,#0x0000
      0038B5 C0 07            [24] 2004 	push	ar7
      0038B7 C0 06            [24] 2005 	push	ar6
      0038B9 12 39 B0         [24] 2006 	lcall	_i2c_read
      0038BC AC 82            [24] 2007 	mov	r4,dpl
      0038BE D0 06            [24] 2008 	pop	ar6
      0038C0 D0 07            [24] 2009 	pop	ar7
                                   2010 ;	8051_i2c_eeprom.c:330: printf("│ Reading from Adress: 0x%03X Data: 0x%02X                    \n\r", address, result);
      0038C2 7D 00            [12] 2011 	mov	r5,#0x00
      0038C4 C0 07            [24] 2012 	push	ar7
      0038C6 C0 06            [24] 2013 	push	ar6
      0038C8 C0 05            [24] 2014 	push	ar5
      0038CA C0 04            [24] 2015 	push	ar4
      0038CC C0 04            [24] 2016 	push	ar4
      0038CE C0 05            [24] 2017 	push	ar5
      0038D0 C0 06            [24] 2018 	push	ar6
      0038D2 C0 07            [24] 2019 	push	ar7
      0038D4 74 AD            [12] 2020 	mov	a,#___str_38
      0038D6 C0 E0            [24] 2021 	push	acc
      0038D8 74 50            [12] 2022 	mov	a,#(___str_38 >> 8)
      0038DA C0 E0            [24] 2023 	push	acc
      0038DC 74 80            [12] 2024 	mov	a,#0x80
      0038DE C0 E0            [24] 2025 	push	acc
      0038E0 12 3B 74         [24] 2026 	lcall	_printf
      0038E3 E5 81            [12] 2027 	mov	a,sp
      0038E5 24 F9            [12] 2028 	add	a,#0xf9
      0038E7 F5 81            [12] 2029 	mov	sp,a
      0038E9 D0 04            [24] 2030 	pop	ar4
      0038EB D0 05            [24] 2031 	pop	ar5
      0038ED D0 06            [24] 2032 	pop	ar6
      0038EF D0 07            [24] 2033 	pop	ar7
                                   2034 ;	8051_i2c_eeprom.c:331: printf("| 0x%03X : 0x%02X \n\r", address, result);
      0038F1 C0 05            [24] 2035 	push	ar5
      0038F3 C0 04            [24] 2036 	push	ar4
      0038F5 C0 04            [24] 2037 	push	ar4
      0038F7 C0 05            [24] 2038 	push	ar5
      0038F9 C0 06            [24] 2039 	push	ar6
      0038FB C0 07            [24] 2040 	push	ar7
      0038FD 74 F0            [12] 2041 	mov	a,#___str_39
      0038FF C0 E0            [24] 2042 	push	acc
      003901 74 50            [12] 2043 	mov	a,#(___str_39 >> 8)
      003903 C0 E0            [24] 2044 	push	acc
      003905 74 80            [12] 2045 	mov	a,#0x80
      003907 C0 E0            [24] 2046 	push	acc
      003909 12 3B 74         [24] 2047 	lcall	_printf
      00390C E5 81            [12] 2048 	mov	a,sp
      00390E 24 F9            [12] 2049 	add	a,#0xf9
      003910 F5 81            [12] 2050 	mov	sp,a
                                   2051 ;	8051_i2c_eeprom.c:332: printf("│ Read successful!                 │\n\r");
      003912 74 05            [12] 2052 	mov	a,#___str_40
      003914 C0 E0            [24] 2053 	push	acc
      003916 74 51            [12] 2054 	mov	a,#(___str_40 >> 8)
      003918 C0 E0            [24] 2055 	push	acc
      00391A 74 80            [12] 2056 	mov	a,#0x80
      00391C C0 E0            [24] 2057 	push	acc
      00391E 12 3B 74         [24] 2058 	lcall	_printf
      003921 15 81            [12] 2059 	dec	sp
      003923 15 81            [12] 2060 	dec	sp
      003925 15 81            [12] 2061 	dec	sp
                                   2062 ;	8051_i2c_eeprom.c:333: printf("└───────────────────────────────────────────────┘\n\r");
      003927 74 B8            [12] 2063 	mov	a,#___str_35
      003929 C0 E0            [24] 2064 	push	acc
      00392B 74 4F            [12] 2065 	mov	a,#(___str_35 >> 8)
      00392D C0 E0            [24] 2066 	push	acc
      00392F 74 80            [12] 2067 	mov	a,#0x80
      003931 C0 E0            [24] 2068 	push	acc
      003933 12 3B 74         [24] 2069 	lcall	_printf
      003936 15 81            [12] 2070 	dec	sp
      003938 15 81            [12] 2071 	dec	sp
      00393A 15 81            [12] 2072 	dec	sp
                                   2073 ;	8051_i2c_eeprom.c:334: i2c_stop();
      00393C 12 3A 4A         [24] 2074 	lcall	_i2c_stop
      00393F D0 04            [24] 2075 	pop	ar4
      003941 D0 05            [24] 2076 	pop	ar5
                                   2077 ;	8051_i2c_eeprom.c:335: return result;
      003943 8C 82            [24] 2078 	mov	dpl,r4
      003945 8D 83            [24] 2079 	mov	dph,r5
                                   2080 ;	8051_i2c_eeprom.c:337: return 0;
                                   2081 ;	8051_i2c_eeprom.c:347: }
      003947 22               [24] 2082 	ret
                                   2083 ;------------------------------------------------------------
                                   2084 ;Allocation info for local variables in function 'i2c_write'
                                   2085 ;------------------------------------------------------------
                                   2086 ;data                      Allocated with name '_i2c_write_data_65536_97'
                                   2087 ;i                         Allocated with name '_i2c_write_i_65536_98'
                                   2088 ;------------------------------------------------------------
                                   2089 ;	8051_i2c_eeprom.c:350: int i2c_write(unsigned char data)
                                   2090 ;	-----------------------------------------
                                   2091 ;	 function i2c_write
                                   2092 ;	-----------------------------------------
      003948                       2093 _i2c_write:
      003948 E5 82            [12] 2094 	mov	a,dpl
      00394A 90 04 14         [24] 2095 	mov	dptr,#_i2c_write_data_65536_97
      00394D F0               [24] 2096 	movx	@dptr,a
                                   2097 ;	8051_i2c_eeprom.c:354: for(i=0;i<=7;i++)
      00394E 7E 00            [12] 2098 	mov	r6,#0x00
      003950 7F 00            [12] 2099 	mov	r7,#0x00
      003952                       2100 00104$:
                                   2101 ;	8051_i2c_eeprom.c:356: SDA = (data & 0x80) ? 1 : 0;    //msb first
      003952 90 04 14         [24] 2102 	mov	dptr,#_i2c_write_data_65536_97
      003955 E0               [24] 2103 	movx	a,@dptr
      003956 FD               [12] 2104 	mov	r5,a
      003957 23               [12] 2105 	rl	a
      003958 54 01            [12] 2106 	anl	a,#0x01
      00395A 24 FF            [12] 2107 	add	a,#0xff
      00395C 92 94            [24] 2108 	mov	_P1_4,c
                                   2109 ;	8051_i2c_eeprom.c:357: i2c_delay();        // Setup time for data
      00395E C0 07            [24] 2110 	push	ar7
      003960 C0 06            [24] 2111 	push	ar6
      003962 C0 05            [24] 2112 	push	ar5
      003964 12 3A 57         [24] 2113 	lcall	_i2c_delay
                                   2114 ;	8051_i2c_eeprom.c:358: SCL=1;
                                   2115 ;	assignBit
      003967 D2 93            [12] 2116 	setb	_P1_3
                                   2117 ;	8051_i2c_eeprom.c:359: i2c_delay();        // Hold time for clock
      003969 12 3A 57         [24] 2118 	lcall	_i2c_delay
      00396C D0 05            [24] 2119 	pop	ar5
      00396E D0 06            [24] 2120 	pop	ar6
      003970 D0 07            [24] 2121 	pop	ar7
                                   2122 ;	8051_i2c_eeprom.c:360: SCL=0;
                                   2123 ;	assignBit
      003972 C2 93            [12] 2124 	clr	_P1_3
                                   2125 ;	8051_i2c_eeprom.c:361: data = data << 1;
      003974 ED               [12] 2126 	mov	a,r5
      003975 2D               [12] 2127 	add	a,r5
      003976 90 04 14         [24] 2128 	mov	dptr,#_i2c_write_data_65536_97
      003979 F0               [24] 2129 	movx	@dptr,a
                                   2130 ;	8051_i2c_eeprom.c:354: for(i=0;i<=7;i++)
      00397A 0E               [12] 2131 	inc	r6
      00397B BE 00 01         [24] 2132 	cjne	r6,#0x00,00121$
      00397E 0F               [12] 2133 	inc	r7
      00397F                       2134 00121$:
      00397F C3               [12] 2135 	clr	c
      003980 74 07            [12] 2136 	mov	a,#0x07
      003982 9E               [12] 2137 	subb	a,r6
      003983 E4               [12] 2138 	clr	a
      003984 9F               [12] 2139 	subb	a,r7
      003985 50 CB            [24] 2140 	jnc	00104$
                                   2141 ;	8051_i2c_eeprom.c:365: SDA = 1;            // Release SDA for slave
                                   2142 ;	assignBit
      003987 D2 94            [12] 2143 	setb	_P1_4
                                   2144 ;	8051_i2c_eeprom.c:366: SCL = 1;            // 9th clock pulse for ACK
                                   2145 ;	assignBit
      003989 D2 93            [12] 2146 	setb	_P1_3
                                   2147 ;	8051_i2c_eeprom.c:367: i2c_delay();
      00398B 12 3A 57         [24] 2148 	lcall	_i2c_delay
                                   2149 ;	8051_i2c_eeprom.c:368: if(SDA == 1)        // If SDA is still high, no ACK received
      00398E 30 94 19         [24] 2150 	jnb	_P1_4,00103$
                                   2151 ;	8051_i2c_eeprom.c:371: printf("ACK DID NOT ARRIVE\n\r");
      003991 74 30            [12] 2152 	mov	a,#___str_41
      003993 C0 E0            [24] 2153 	push	acc
      003995 74 51            [12] 2154 	mov	a,#(___str_41 >> 8)
      003997 C0 E0            [24] 2155 	push	acc
      003999 74 80            [12] 2156 	mov	a,#0x80
      00399B C0 E0            [24] 2157 	push	acc
      00399D 12 3B 74         [24] 2158 	lcall	_printf
      0039A0 15 81            [12] 2159 	dec	sp
      0039A2 15 81            [12] 2160 	dec	sp
      0039A4 15 81            [12] 2161 	dec	sp
                                   2162 ;	8051_i2c_eeprom.c:372: return 0;       // Error
      0039A6 90 00 00         [24] 2163 	mov	dptr,#0x0000
      0039A9 22               [24] 2164 	ret
      0039AA                       2165 00103$:
                                   2166 ;	8051_i2c_eeprom.c:374: SCL = 0;
                                   2167 ;	assignBit
      0039AA C2 93            [12] 2168 	clr	_P1_3
                                   2169 ;	8051_i2c_eeprom.c:376: return 1;           // Success
      0039AC 90 00 01         [24] 2170 	mov	dptr,#0x0001
                                   2171 ;	8051_i2c_eeprom.c:378: }
      0039AF 22               [24] 2172 	ret
                                   2173 ;------------------------------------------------------------
                                   2174 ;Allocation info for local variables in function 'i2c_read'
                                   2175 ;------------------------------------------------------------
                                   2176 ;ACK                       Allocated with name '_i2c_read_ACK_65536_102'
                                   2177 ;buff                      Allocated with name '_i2c_read_buff_65536_103'
                                   2178 ;i                         Allocated with name '_i2c_read_i_131072_104'
                                   2179 ;------------------------------------------------------------
                                   2180 ;	8051_i2c_eeprom.c:379: int i2c_read(int ACK)
                                   2181 ;	-----------------------------------------
                                   2182 ;	 function i2c_read
                                   2183 ;	-----------------------------------------
      0039B0                       2184 _i2c_read:
      0039B0 AF 83            [24] 2185 	mov	r7,dph
      0039B2 E5 82            [12] 2186 	mov	a,dpl
      0039B4 90 04 15         [24] 2187 	mov	dptr,#_i2c_read_ACK_65536_102
      0039B7 F0               [24] 2188 	movx	@dptr,a
      0039B8 EF               [12] 2189 	mov	a,r7
      0039B9 A3               [24] 2190 	inc	dptr
      0039BA F0               [24] 2191 	movx	@dptr,a
                                   2192 ;	8051_i2c_eeprom.c:381: unsigned char buff=0;
      0039BB 90 04 17         [24] 2193 	mov	dptr,#_i2c_read_buff_65536_103
      0039BE E4               [12] 2194 	clr	a
      0039BF F0               [24] 2195 	movx	@dptr,a
                                   2196 ;	8051_i2c_eeprom.c:382: SCL = 0;
                                   2197 ;	assignBit
      0039C0 C2 93            [12] 2198 	clr	_P1_3
                                   2199 ;	8051_i2c_eeprom.c:383: for(int i=0;i<8;i++)
      0039C2 7E 00            [12] 2200 	mov	r6,#0x00
      0039C4 7F 00            [12] 2201 	mov	r7,#0x00
      0039C6                       2202 00103$:
      0039C6 C3               [12] 2203 	clr	c
      0039C7 EE               [12] 2204 	mov	a,r6
      0039C8 94 08            [12] 2205 	subb	a,#0x08
      0039CA EF               [12] 2206 	mov	a,r7
      0039CB 64 80            [12] 2207 	xrl	a,#0x80
      0039CD 94 80            [12] 2208 	subb	a,#0x80
      0039CF 50 40            [24] 2209 	jnc	00101$
                                   2210 ;	8051_i2c_eeprom.c:385: SCL = 1;
                                   2211 ;	assignBit
      0039D1 D2 93            [12] 2212 	setb	_P1_3
                                   2213 ;	8051_i2c_eeprom.c:386: i2c_delay();
      0039D3 C0 07            [24] 2214 	push	ar7
      0039D5 C0 06            [24] 2215 	push	ar6
      0039D7 12 3A 57         [24] 2216 	lcall	_i2c_delay
      0039DA D0 06            [24] 2217 	pop	ar6
      0039DC D0 07            [24] 2218 	pop	ar7
                                   2219 ;	8051_i2c_eeprom.c:387: buff |= (SDA << (7 - i));
      0039DE A2 94            [12] 2220 	mov	c,_P1_4
      0039E0 E4               [12] 2221 	clr	a
      0039E1 33               [12] 2222 	rlc	a
      0039E2 FD               [12] 2223 	mov	r5,a
      0039E3 8E 04            [24] 2224 	mov	ar4,r6
      0039E5 74 07            [12] 2225 	mov	a,#0x07
      0039E7 C3               [12] 2226 	clr	c
      0039E8 9C               [12] 2227 	subb	a,r4
      0039E9 FC               [12] 2228 	mov	r4,a
      0039EA 8C F0            [24] 2229 	mov	b,r4
      0039EC 05 F0            [12] 2230 	inc	b
      0039EE ED               [12] 2231 	mov	a,r5
      0039EF 80 02            [24] 2232 	sjmp	00119$
      0039F1                       2233 00117$:
      0039F1 25 E0            [12] 2234 	add	a,acc
      0039F3                       2235 00119$:
      0039F3 D5 F0 FB         [24] 2236 	djnz	b,00117$
      0039F6 FC               [12] 2237 	mov	r4,a
      0039F7 90 04 17         [24] 2238 	mov	dptr,#_i2c_read_buff_65536_103
      0039FA E0               [24] 2239 	movx	a,@dptr
      0039FB 4C               [12] 2240 	orl	a,r4
      0039FC F0               [24] 2241 	movx	@dptr,a
                                   2242 ;	8051_i2c_eeprom.c:388: i2c_delay();
      0039FD C0 07            [24] 2243 	push	ar7
      0039FF C0 06            [24] 2244 	push	ar6
      003A01 12 3A 57         [24] 2245 	lcall	_i2c_delay
      003A04 D0 06            [24] 2246 	pop	ar6
      003A06 D0 07            [24] 2247 	pop	ar7
                                   2248 ;	8051_i2c_eeprom.c:389: SCL=0;
                                   2249 ;	assignBit
      003A08 C2 93            [12] 2250 	clr	_P1_3
                                   2251 ;	8051_i2c_eeprom.c:383: for(int i=0;i<8;i++)
      003A0A 0E               [12] 2252 	inc	r6
      003A0B BE 00 B8         [24] 2253 	cjne	r6,#0x00,00103$
      003A0E 0F               [12] 2254 	inc	r7
      003A0F 80 B5            [24] 2255 	sjmp	00103$
      003A11                       2256 00101$:
                                   2257 ;	8051_i2c_eeprom.c:393: SDA = !ACK;         // ACK = 0, NACK = 1
      003A11 90 04 15         [24] 2258 	mov	dptr,#_i2c_read_ACK_65536_102
      003A14 E0               [24] 2259 	movx	a,@dptr
      003A15 FE               [12] 2260 	mov	r6,a
      003A16 A3               [24] 2261 	inc	dptr
      003A17 E0               [24] 2262 	movx	a,@dptr
      003A18 4E               [12] 2263 	orl	a,r6
      003A19 B4 01 00         [24] 2264 	cjne	a,#0x01,00121$
      003A1C                       2265 00121$:
      003A1C E4               [12] 2266 	clr	a
      003A1D 33               [12] 2267 	rlc	a
      003A1E 24 FF            [12] 2268 	add	a,#0xff
      003A20 92 94            [24] 2269 	mov	_P1_4,c
                                   2270 ;	8051_i2c_eeprom.c:394: SCL = 1;
                                   2271 ;	assignBit
      003A22 D2 93            [12] 2272 	setb	_P1_3
                                   2273 ;	8051_i2c_eeprom.c:395: i2c_delay();
      003A24 12 3A 57         [24] 2274 	lcall	_i2c_delay
                                   2275 ;	8051_i2c_eeprom.c:396: SCL = 0;
                                   2276 ;	assignBit
      003A27 C2 93            [12] 2277 	clr	_P1_3
                                   2278 ;	8051_i2c_eeprom.c:398: return buff;
      003A29 90 04 17         [24] 2279 	mov	dptr,#_i2c_read_buff_65536_103
      003A2C E0               [24] 2280 	movx	a,@dptr
      003A2D FF               [12] 2281 	mov	r7,a
      003A2E 7E 00            [12] 2282 	mov	r6,#0x00
      003A30 8F 82            [24] 2283 	mov	dpl,r7
      003A32 8E 83            [24] 2284 	mov	dph,r6
                                   2285 ;	8051_i2c_eeprom.c:399: }
      003A34 22               [24] 2286 	ret
                                   2287 ;------------------------------------------------------------
                                   2288 ;Allocation info for local variables in function 'i2c_start'
                                   2289 ;------------------------------------------------------------
                                   2290 ;	8051_i2c_eeprom.c:400: void i2c_start(void)
                                   2291 ;	-----------------------------------------
                                   2292 ;	 function i2c_start
                                   2293 ;	-----------------------------------------
      003A35                       2294 _i2c_start:
                                   2295 ;	8051_i2c_eeprom.c:402: i2c_delay();
      003A35 12 3A 57         [24] 2296 	lcall	_i2c_delay
                                   2297 ;	8051_i2c_eeprom.c:403: SDA = 1;
                                   2298 ;	assignBit
      003A38 D2 94            [12] 2299 	setb	_P1_4
                                   2300 ;	8051_i2c_eeprom.c:404: i2c_delay();
      003A3A 12 3A 57         [24] 2301 	lcall	_i2c_delay
                                   2302 ;	8051_i2c_eeprom.c:405: SCL = 1;
                                   2303 ;	assignBit
      003A3D D2 93            [12] 2304 	setb	_P1_3
                                   2305 ;	8051_i2c_eeprom.c:406: i2c_delay();
      003A3F 12 3A 57         [24] 2306 	lcall	_i2c_delay
                                   2307 ;	8051_i2c_eeprom.c:407: SDA = 0;
                                   2308 ;	assignBit
      003A42 C2 94            [12] 2309 	clr	_P1_4
                                   2310 ;	8051_i2c_eeprom.c:408: i2c_delay();
      003A44 12 3A 57         [24] 2311 	lcall	_i2c_delay
                                   2312 ;	8051_i2c_eeprom.c:409: SCL = 0;
                                   2313 ;	assignBit
      003A47 C2 93            [12] 2314 	clr	_P1_3
                                   2315 ;	8051_i2c_eeprom.c:410: }
      003A49 22               [24] 2316 	ret
                                   2317 ;------------------------------------------------------------
                                   2318 ;Allocation info for local variables in function 'i2c_stop'
                                   2319 ;------------------------------------------------------------
                                   2320 ;	8051_i2c_eeprom.c:412: void i2c_stop(void)
                                   2321 ;	-----------------------------------------
                                   2322 ;	 function i2c_stop
                                   2323 ;	-----------------------------------------
      003A4A                       2324 _i2c_stop:
                                   2325 ;	8051_i2c_eeprom.c:414: SDA = 0;
                                   2326 ;	assignBit
      003A4A C2 94            [12] 2327 	clr	_P1_4
                                   2328 ;	8051_i2c_eeprom.c:415: i2c_delay();
      003A4C 12 3A 57         [24] 2329 	lcall	_i2c_delay
                                   2330 ;	8051_i2c_eeprom.c:416: SCL = 1;
                                   2331 ;	assignBit
      003A4F D2 93            [12] 2332 	setb	_P1_3
                                   2333 ;	8051_i2c_eeprom.c:417: i2c_delay();
      003A51 12 3A 57         [24] 2334 	lcall	_i2c_delay
                                   2335 ;	8051_i2c_eeprom.c:418: SDA = 1; 
                                   2336 ;	assignBit
      003A54 D2 94            [12] 2337 	setb	_P1_4
                                   2338 ;	8051_i2c_eeprom.c:419: }
      003A56 22               [24] 2339 	ret
                                   2340 ;------------------------------------------------------------
                                   2341 ;Allocation info for local variables in function 'i2c_delay'
                                   2342 ;------------------------------------------------------------
                                   2343 ;i                         Allocated with name '_i2c_delay_i_131072_111'
                                   2344 ;------------------------------------------------------------
                                   2345 ;	8051_i2c_eeprom.c:421: void i2c_delay() 
                                   2346 ;	-----------------------------------------
                                   2347 ;	 function i2c_delay
                                   2348 ;	-----------------------------------------
      003A57                       2349 _i2c_delay:
                                   2350 ;	8051_i2c_eeprom.c:429: for(int i = 0; i<500; i++);
      003A57 7E 00            [12] 2351 	mov	r6,#0x00
      003A59 7F 00            [12] 2352 	mov	r7,#0x00
      003A5B                       2353 00103$:
      003A5B C3               [12] 2354 	clr	c
      003A5C EE               [12] 2355 	mov	a,r6
      003A5D 94 F4            [12] 2356 	subb	a,#0xf4
      003A5F EF               [12] 2357 	mov	a,r7
      003A60 64 80            [12] 2358 	xrl	a,#0x80
      003A62 94 81            [12] 2359 	subb	a,#0x81
      003A64 50 07            [24] 2360 	jnc	00105$
      003A66 0E               [12] 2361 	inc	r6
      003A67 BE 00 F1         [24] 2362 	cjne	r6,#0x00,00103$
      003A6A 0F               [12] 2363 	inc	r7
      003A6B 80 EE            [24] 2364 	sjmp	00103$
      003A6D                       2365 00105$:
                                   2366 ;	8051_i2c_eeprom.c:430: }
      003A6D 22               [24] 2367 	ret
                                   2368 ;------------------------------------------------------------
                                   2369 ;Allocation info for local variables in function 'test_function'
                                   2370 ;------------------------------------------------------------
                                   2371 ;test_data                 Allocated with name '_test_function_test_data_65537_113'
                                   2372 ;address                   Allocated with name '_test_function_address_65537_113'
                                   2373 ;i                         Allocated with name '_test_function_i_131073_114'
                                   2374 ;read_data                 Allocated with name '_test_function_read_data_65538_116'
                                   2375 ;------------------------------------------------------------
                                   2376 ;	8051_i2c_eeprom.c:432: void test_function()
                                   2377 ;	-----------------------------------------
                                   2378 ;	 function test_function
                                   2379 ;	-----------------------------------------
      003A6E                       2380 _test_function:
                                   2381 ;	8051_i2c_eeprom.c:434: i2c_start();
      003A6E 12 3A 35         [24] 2382 	lcall	_i2c_start
                                   2383 ;	8051_i2c_eeprom.c:435: i2c_delay();
      003A71 12 3A 57         [24] 2384 	lcall	_i2c_delay
                                   2385 ;	8051_i2c_eeprom.c:441: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      003A74 74 02            [12] 2386 	mov	a,#0x02
      003A76 C0 E0            [24] 2387 	push	acc
      003A78 E4               [12] 2388 	clr	a
      003A79 C0 E0            [24] 2389 	push	acc
      003A7B 74 26            [12] 2390 	mov	a,#0x26
      003A7D C0 E0            [24] 2391 	push	acc
      003A7F E4               [12] 2392 	clr	a
      003A80 C0 E0            [24] 2393 	push	acc
      003A82 74 45            [12] 2394 	mov	a,#___str_42
      003A84 C0 E0            [24] 2395 	push	acc
      003A86 74 51            [12] 2396 	mov	a,#(___str_42 >> 8)
      003A88 C0 E0            [24] 2397 	push	acc
      003A8A 74 80            [12] 2398 	mov	a,#0x80
      003A8C C0 E0            [24] 2399 	push	acc
      003A8E 12 3B 74         [24] 2400 	lcall	_printf
      003A91 E5 81            [12] 2401 	mov	a,sp
      003A93 24 F9            [12] 2402 	add	a,#0xf9
      003A95 F5 81            [12] 2403 	mov	sp,a
                                   2404 ;	8051_i2c_eeprom.c:442: eeprom_write(address, test_data);
      003A97 90 04 0F         [24] 2405 	mov	dptr,#_eeprom_write_PARM_2
      003A9A 74 26            [12] 2406 	mov	a,#0x26
      003A9C F0               [24] 2407 	movx	@dptr,a
      003A9D 90 00 02         [24] 2408 	mov	dptr,#0x0002
      003AA0 12 36 82         [24] 2409 	lcall	_eeprom_write
                                   2410 ;	8051_i2c_eeprom.c:443: i2c_stop();
      003AA3 12 3A 4A         [24] 2411 	lcall	_i2c_stop
                                   2412 ;	8051_i2c_eeprom.c:445: for(int i = 0; i<100; i++)
      003AA6 7E 00            [12] 2413 	mov	r6,#0x00
      003AA8 7F 00            [12] 2414 	mov	r7,#0x00
      003AAA                       2415 00106$:
      003AAA C3               [12] 2416 	clr	c
      003AAB EE               [12] 2417 	mov	a,r6
      003AAC 94 64            [12] 2418 	subb	a,#0x64
      003AAE EF               [12] 2419 	mov	a,r7
      003AAF 64 80            [12] 2420 	xrl	a,#0x80
      003AB1 94 80            [12] 2421 	subb	a,#0x80
      003AB3 50 12            [24] 2422 	jnc	00101$
                                   2423 ;	8051_i2c_eeprom.c:447: i2c_delay();
      003AB5 C0 07            [24] 2424 	push	ar7
      003AB7 C0 06            [24] 2425 	push	ar6
      003AB9 12 3A 57         [24] 2426 	lcall	_i2c_delay
      003ABC D0 06            [24] 2427 	pop	ar6
      003ABE D0 07            [24] 2428 	pop	ar7
                                   2429 ;	8051_i2c_eeprom.c:445: for(int i = 0; i<100; i++)
      003AC0 0E               [12] 2430 	inc	r6
      003AC1 BE 00 E6         [24] 2431 	cjne	r6,#0x00,00106$
      003AC4 0F               [12] 2432 	inc	r7
      003AC5 80 E3            [24] 2433 	sjmp	00106$
      003AC7                       2434 00101$:
                                   2435 ;	8051_i2c_eeprom.c:451: unsigned char read_data = eeprom_read(address);
      003AC7 90 00 02         [24] 2436 	mov	dptr,#0x0002
      003ACA 12 38 07         [24] 2437 	lcall	_eeprom_read
      003ACD AE 82            [24] 2438 	mov	r6,dpl
                                   2439 ;	8051_i2c_eeprom.c:452: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      003ACF 8E 05            [24] 2440 	mov	ar5,r6
      003AD1 7F 00            [12] 2441 	mov	r7,#0x00
      003AD3 C0 06            [24] 2442 	push	ar6
      003AD5 C0 05            [24] 2443 	push	ar5
      003AD7 C0 07            [24] 2444 	push	ar7
      003AD9 74 02            [12] 2445 	mov	a,#0x02
      003ADB C0 E0            [24] 2446 	push	acc
      003ADD E4               [12] 2447 	clr	a
      003ADE C0 E0            [24] 2448 	push	acc
      003AE0 74 6D            [12] 2449 	mov	a,#___str_43
      003AE2 C0 E0            [24] 2450 	push	acc
      003AE4 74 51            [12] 2451 	mov	a,#(___str_43 >> 8)
      003AE6 C0 E0            [24] 2452 	push	acc
      003AE8 74 80            [12] 2453 	mov	a,#0x80
      003AEA C0 E0            [24] 2454 	push	acc
      003AEC 12 3B 74         [24] 2455 	lcall	_printf
      003AEF E5 81            [12] 2456 	mov	a,sp
      003AF1 24 F9            [12] 2457 	add	a,#0xf9
      003AF3 F5 81            [12] 2458 	mov	sp,a
      003AF5 D0 06            [24] 2459 	pop	ar6
                                   2460 ;	8051_i2c_eeprom.c:455: if(read_data == test_data) {
      003AF7 BE 26 16         [24] 2461 	cjne	r6,#0x26,00103$
                                   2462 ;	8051_i2c_eeprom.c:456: printf("MATCH - Write/Read successful!\n\r");
      003AFA 74 95            [12] 2463 	mov	a,#___str_44
      003AFC C0 E0            [24] 2464 	push	acc
      003AFE 74 51            [12] 2465 	mov	a,#(___str_44 >> 8)
      003B00 C0 E0            [24] 2466 	push	acc
      003B02 74 80            [12] 2467 	mov	a,#0x80
      003B04 C0 E0            [24] 2468 	push	acc
      003B06 12 3B 74         [24] 2469 	lcall	_printf
      003B09 15 81            [12] 2470 	dec	sp
      003B0B 15 81            [12] 2471 	dec	sp
      003B0D 15 81            [12] 2472 	dec	sp
      003B0F 22               [24] 2473 	ret
      003B10                       2474 00103$:
                                   2475 ;	8051_i2c_eeprom.c:458: printf("ERROR - Data mismatch!\n\r");
      003B10 74 B6            [12] 2476 	mov	a,#___str_45
      003B12 C0 E0            [24] 2477 	push	acc
      003B14 74 51            [12] 2478 	mov	a,#(___str_45 >> 8)
      003B16 C0 E0            [24] 2479 	push	acc
      003B18 74 80            [12] 2480 	mov	a,#0x80
      003B1A C0 E0            [24] 2481 	push	acc
      003B1C 12 3B 74         [24] 2482 	lcall	_printf
      003B1F 15 81            [12] 2483 	dec	sp
      003B21 15 81            [12] 2484 	dec	sp
      003B23 15 81            [12] 2485 	dec	sp
                                   2486 ;	8051_i2c_eeprom.c:462: }
      003B25 22               [24] 2487 	ret
                                   2488 	.area CSEG    (CODE)
                                   2489 	.area CONST   (CODE)
                                   2490 	.area CONST   (CODE)
      0045D6                       2491 ___str_0:
      0045D6 0A                    2492 	.db 0x0a
      0045D7 E2                    2493 	.db 0xe2
      0045D8 95                    2494 	.db 0x95
      0045D9 94                    2495 	.db 0x94
      0045DA E2                    2496 	.db 0xe2
      0045DB 95                    2497 	.db 0x95
      0045DC 90                    2498 	.db 0x90
      0045DD E2                    2499 	.db 0xe2
      0045DE 95                    2500 	.db 0x95
      0045DF 90                    2501 	.db 0x90
      0045E0 E2                    2502 	.db 0xe2
      0045E1 95                    2503 	.db 0x95
      0045E2 90                    2504 	.db 0x90
      0045E3 E2                    2505 	.db 0xe2
      0045E4 95                    2506 	.db 0x95
      0045E5 90                    2507 	.db 0x90
      0045E6 E2                    2508 	.db 0xe2
      0045E7 95                    2509 	.db 0x95
      0045E8 90                    2510 	.db 0x90
      0045E9 E2                    2511 	.db 0xe2
      0045EA 95                    2512 	.db 0x95
      0045EB 90                    2513 	.db 0x90
      0045EC E2                    2514 	.db 0xe2
      0045ED 95                    2515 	.db 0x95
      0045EE 90                    2516 	.db 0x90
      0045EF E2                    2517 	.db 0xe2
      0045F0 95                    2518 	.db 0x95
      0045F1 90                    2519 	.db 0x90
      0045F2 E2                    2520 	.db 0xe2
      0045F3 95                    2521 	.db 0x95
      0045F4 90                    2522 	.db 0x90
      0045F5 E2                    2523 	.db 0xe2
      0045F6 95                    2524 	.db 0x95
      0045F7 90                    2525 	.db 0x90
      0045F8 E2                    2526 	.db 0xe2
      0045F9 95                    2527 	.db 0x95
      0045FA 90                    2528 	.db 0x90
      0045FB E2                    2529 	.db 0xe2
      0045FC 95                    2530 	.db 0x95
      0045FD 90                    2531 	.db 0x90
      0045FE E2                    2532 	.db 0xe2
      0045FF 95                    2533 	.db 0x95
      004600 90                    2534 	.db 0x90
      004601 E2                    2535 	.db 0xe2
      004602 95                    2536 	.db 0x95
      004603 90                    2537 	.db 0x90
      004604 E2                    2538 	.db 0xe2
      004605 95                    2539 	.db 0x95
      004606 90                    2540 	.db 0x90
      004607 E2                    2541 	.db 0xe2
      004608 95                    2542 	.db 0x95
      004609 90                    2543 	.db 0x90
      00460A E2                    2544 	.db 0xe2
      00460B 95                    2545 	.db 0x95
      00460C 90                    2546 	.db 0x90
      00460D E2                    2547 	.db 0xe2
      00460E 95                    2548 	.db 0x95
      00460F 90                    2549 	.db 0x90
      004610 E2                    2550 	.db 0xe2
      004611 95                    2551 	.db 0x95
      004612 90                    2552 	.db 0x90
      004613 E2                    2553 	.db 0xe2
      004614 95                    2554 	.db 0x95
      004615 90                    2555 	.db 0x90
      004616 E2                    2556 	.db 0xe2
      004617 95                    2557 	.db 0x95
      004618 90                    2558 	.db 0x90
      004619 E2                    2559 	.db 0xe2
      00461A 95                    2560 	.db 0x95
      00461B 90                    2561 	.db 0x90
      00461C E2                    2562 	.db 0xe2
      00461D 95                    2563 	.db 0x95
      00461E 90                    2564 	.db 0x90
      00461F E2                    2565 	.db 0xe2
      004620 95                    2566 	.db 0x95
      004621 90                    2567 	.db 0x90
      004622 E2                    2568 	.db 0xe2
      004623 95                    2569 	.db 0x95
      004624 90                    2570 	.db 0x90
      004625 E2                    2571 	.db 0xe2
      004626 95                    2572 	.db 0x95
      004627 90                    2573 	.db 0x90
      004628 E2                    2574 	.db 0xe2
      004629 95                    2575 	.db 0x95
      00462A 90                    2576 	.db 0x90
      00462B E2                    2577 	.db 0xe2
      00462C 95                    2578 	.db 0x95
      00462D 90                    2579 	.db 0x90
      00462E E2                    2580 	.db 0xe2
      00462F 95                    2581 	.db 0x95
      004630 90                    2582 	.db 0x90
      004631 E2                    2583 	.db 0xe2
      004632 95                    2584 	.db 0x95
      004633 90                    2585 	.db 0x90
      004634 E2                    2586 	.db 0xe2
      004635 95                    2587 	.db 0x95
      004636 90                    2588 	.db 0x90
      004637 E2                    2589 	.db 0xe2
      004638 95                    2590 	.db 0x95
      004639 90                    2591 	.db 0x90
      00463A E2                    2592 	.db 0xe2
      00463B 95                    2593 	.db 0x95
      00463C 90                    2594 	.db 0x90
      00463D E2                    2595 	.db 0xe2
      00463E 95                    2596 	.db 0x95
      00463F 90                    2597 	.db 0x90
      004640 E2                    2598 	.db 0xe2
      004641 95                    2599 	.db 0x95
      004642 90                    2600 	.db 0x90
      004643 E2                    2601 	.db 0xe2
      004644 95                    2602 	.db 0x95
      004645 90                    2603 	.db 0x90
      004646 E2                    2604 	.db 0xe2
      004647 95                    2605 	.db 0x95
      004648 90                    2606 	.db 0x90
      004649 E2                    2607 	.db 0xe2
      00464A 95                    2608 	.db 0x95
      00464B 90                    2609 	.db 0x90
      00464C E2                    2610 	.db 0xe2
      00464D 95                    2611 	.db 0x95
      00464E 90                    2612 	.db 0x90
      00464F E2                    2613 	.db 0xe2
      004650 95                    2614 	.db 0x95
      004651 90                    2615 	.db 0x90
      004652 E2                    2616 	.db 0xe2
      004653 95                    2617 	.db 0x95
      004654 90                    2618 	.db 0x90
      004655 E2                    2619 	.db 0xe2
      004656 95                    2620 	.db 0x95
      004657 90                    2621 	.db 0x90
      004658 E2                    2622 	.db 0xe2
      004659 95                    2623 	.db 0x95
      00465A 90                    2624 	.db 0x90
      00465B E2                    2625 	.db 0xe2
      00465C 95                    2626 	.db 0x95
      00465D 90                    2627 	.db 0x90
      00465E E2                    2628 	.db 0xe2
      00465F 95                    2629 	.db 0x95
      004660 90                    2630 	.db 0x90
      004661 E2                    2631 	.db 0xe2
      004662 95                    2632 	.db 0x95
      004663 90                    2633 	.db 0x90
      004664 E2                    2634 	.db 0xe2
      004665 95                    2635 	.db 0x95
      004666 90                    2636 	.db 0x90
      004667 E2                    2637 	.db 0xe2
      004668 95                    2638 	.db 0x95
      004669 90                    2639 	.db 0x90
      00466A E2                    2640 	.db 0xe2
      00466B 95                    2641 	.db 0x95
      00466C 90                    2642 	.db 0x90
      00466D E2                    2643 	.db 0xe2
      00466E 95                    2644 	.db 0x95
      00466F 90                    2645 	.db 0x90
      004670 E2                    2646 	.db 0xe2
      004671 95                    2647 	.db 0x95
      004672 90                    2648 	.db 0x90
      004673 E2                    2649 	.db 0xe2
      004674 95                    2650 	.db 0x95
      004675 90                    2651 	.db 0x90
      004676 E2                    2652 	.db 0xe2
      004677 95                    2653 	.db 0x95
      004678 90                    2654 	.db 0x90
      004679 E2                    2655 	.db 0xe2
      00467A 95                    2656 	.db 0x95
      00467B 90                    2657 	.db 0x90
      00467C E2                    2658 	.db 0xe2
      00467D 95                    2659 	.db 0x95
      00467E 90                    2660 	.db 0x90
      00467F E2                    2661 	.db 0xe2
      004680 95                    2662 	.db 0x95
      004681 90                    2663 	.db 0x90
      004682 E2                    2664 	.db 0xe2
      004683 95                    2665 	.db 0x95
      004684 97                    2666 	.db 0x97
      004685 0A                    2667 	.db 0x0a
      004686 0D                    2668 	.db 0x0d
      004687 00                    2669 	.db 0x00
                                   2670 	.area CSEG    (CODE)
                                   2671 	.area CONST   (CODE)
      004688                       2672 ___str_1:
      004688 E2                    2673 	.db 0xe2
      004689 95                    2674 	.db 0x95
      00468A 91                    2675 	.db 0x91
      00468B 20 20 20 20 20 20 20  2676 	.ascii "           I2C Memory Management System v1.0            "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
      0046C3 E2                    2677 	.db 0xe2
      0046C4 95                    2678 	.db 0x95
      0046C5 91                    2679 	.db 0x91
      0046C6 0A                    2680 	.db 0x0a
      0046C7 0D                    2681 	.db 0x0d
      0046C8 00                    2682 	.db 0x00
                                   2683 	.area CSEG    (CODE)
                                   2684 	.area CONST   (CODE)
      0046C9                       2685 ___str_2:
      0046C9 E2                    2686 	.db 0xe2
      0046CA 95                    2687 	.db 0x95
      0046CB 9A                    2688 	.db 0x9a
      0046CC E2                    2689 	.db 0xe2
      0046CD 95                    2690 	.db 0x95
      0046CE 90                    2691 	.db 0x90
      0046CF E2                    2692 	.db 0xe2
      0046D0 95                    2693 	.db 0x95
      0046D1 90                    2694 	.db 0x90
      0046D2 E2                    2695 	.db 0xe2
      0046D3 95                    2696 	.db 0x95
      0046D4 90                    2697 	.db 0x90
      0046D5 E2                    2698 	.db 0xe2
      0046D6 95                    2699 	.db 0x95
      0046D7 90                    2700 	.db 0x90
      0046D8 E2                    2701 	.db 0xe2
      0046D9 95                    2702 	.db 0x95
      0046DA 90                    2703 	.db 0x90
      0046DB E2                    2704 	.db 0xe2
      0046DC 95                    2705 	.db 0x95
      0046DD 90                    2706 	.db 0x90
      0046DE E2                    2707 	.db 0xe2
      0046DF 95                    2708 	.db 0x95
      0046E0 90                    2709 	.db 0x90
      0046E1 E2                    2710 	.db 0xe2
      0046E2 95                    2711 	.db 0x95
      0046E3 90                    2712 	.db 0x90
      0046E4 E2                    2713 	.db 0xe2
      0046E5 95                    2714 	.db 0x95
      0046E6 90                    2715 	.db 0x90
      0046E7 E2                    2716 	.db 0xe2
      0046E8 95                    2717 	.db 0x95
      0046E9 90                    2718 	.db 0x90
      0046EA E2                    2719 	.db 0xe2
      0046EB 95                    2720 	.db 0x95
      0046EC 90                    2721 	.db 0x90
      0046ED E2                    2722 	.db 0xe2
      0046EE 95                    2723 	.db 0x95
      0046EF 90                    2724 	.db 0x90
      0046F0 E2                    2725 	.db 0xe2
      0046F1 95                    2726 	.db 0x95
      0046F2 90                    2727 	.db 0x90
      0046F3 E2                    2728 	.db 0xe2
      0046F4 95                    2729 	.db 0x95
      0046F5 90                    2730 	.db 0x90
      0046F6 E2                    2731 	.db 0xe2
      0046F7 95                    2732 	.db 0x95
      0046F8 90                    2733 	.db 0x90
      0046F9 E2                    2734 	.db 0xe2
      0046FA 95                    2735 	.db 0x95
      0046FB 90                    2736 	.db 0x90
      0046FC E2                    2737 	.db 0xe2
      0046FD 95                    2738 	.db 0x95
      0046FE 90                    2739 	.db 0x90
      0046FF E2                    2740 	.db 0xe2
      004700 95                    2741 	.db 0x95
      004701 90                    2742 	.db 0x90
      004702 E2                    2743 	.db 0xe2
      004703 95                    2744 	.db 0x95
      004704 90                    2745 	.db 0x90
      004705 E2                    2746 	.db 0xe2
      004706 95                    2747 	.db 0x95
      004707 90                    2748 	.db 0x90
      004708 E2                    2749 	.db 0xe2
      004709 95                    2750 	.db 0x95
      00470A 90                    2751 	.db 0x90
      00470B E2                    2752 	.db 0xe2
      00470C 95                    2753 	.db 0x95
      00470D 90                    2754 	.db 0x90
      00470E E2                    2755 	.db 0xe2
      00470F 95                    2756 	.db 0x95
      004710 90                    2757 	.db 0x90
      004711 E2                    2758 	.db 0xe2
      004712 95                    2759 	.db 0x95
      004713 90                    2760 	.db 0x90
      004714 E2                    2761 	.db 0xe2
      004715 95                    2762 	.db 0x95
      004716 90                    2763 	.db 0x90
      004717 E2                    2764 	.db 0xe2
      004718 95                    2765 	.db 0x95
      004719 90                    2766 	.db 0x90
      00471A E2                    2767 	.db 0xe2
      00471B 95                    2768 	.db 0x95
      00471C 90                    2769 	.db 0x90
      00471D E2                    2770 	.db 0xe2
      00471E 95                    2771 	.db 0x95
      00471F 90                    2772 	.db 0x90
      004720 E2                    2773 	.db 0xe2
      004721 95                    2774 	.db 0x95
      004722 90                    2775 	.db 0x90
      004723 E2                    2776 	.db 0xe2
      004724 95                    2777 	.db 0x95
      004725 90                    2778 	.db 0x90
      004726 E2                    2779 	.db 0xe2
      004727 95                    2780 	.db 0x95
      004728 90                    2781 	.db 0x90
      004729 E2                    2782 	.db 0xe2
      00472A 95                    2783 	.db 0x95
      00472B 90                    2784 	.db 0x90
      00472C E2                    2785 	.db 0xe2
      00472D 95                    2786 	.db 0x95
      00472E 90                    2787 	.db 0x90
      00472F E2                    2788 	.db 0xe2
      004730 95                    2789 	.db 0x95
      004731 90                    2790 	.db 0x90
      004732 E2                    2791 	.db 0xe2
      004733 95                    2792 	.db 0x95
      004734 90                    2793 	.db 0x90
      004735 E2                    2794 	.db 0xe2
      004736 95                    2795 	.db 0x95
      004737 90                    2796 	.db 0x90
      004738 E2                    2797 	.db 0xe2
      004739 95                    2798 	.db 0x95
      00473A 90                    2799 	.db 0x90
      00473B E2                    2800 	.db 0xe2
      00473C 95                    2801 	.db 0x95
      00473D 90                    2802 	.db 0x90
      00473E E2                    2803 	.db 0xe2
      00473F 95                    2804 	.db 0x95
      004740 90                    2805 	.db 0x90
      004741 E2                    2806 	.db 0xe2
      004742 95                    2807 	.db 0x95
      004743 90                    2808 	.db 0x90
      004744 E2                    2809 	.db 0xe2
      004745 95                    2810 	.db 0x95
      004746 90                    2811 	.db 0x90
      004747 E2                    2812 	.db 0xe2
      004748 95                    2813 	.db 0x95
      004749 90                    2814 	.db 0x90
      00474A E2                    2815 	.db 0xe2
      00474B 95                    2816 	.db 0x95
      00474C 90                    2817 	.db 0x90
      00474D E2                    2818 	.db 0xe2
      00474E 95                    2819 	.db 0x95
      00474F 90                    2820 	.db 0x90
      004750 E2                    2821 	.db 0xe2
      004751 95                    2822 	.db 0x95
      004752 90                    2823 	.db 0x90
      004753 E2                    2824 	.db 0xe2
      004754 95                    2825 	.db 0x95
      004755 90                    2826 	.db 0x90
      004756 E2                    2827 	.db 0xe2
      004757 95                    2828 	.db 0x95
      004758 90                    2829 	.db 0x90
      004759 E2                    2830 	.db 0xe2
      00475A 95                    2831 	.db 0x95
      00475B 90                    2832 	.db 0x90
      00475C E2                    2833 	.db 0xe2
      00475D 95                    2834 	.db 0x95
      00475E 90                    2835 	.db 0x90
      00475F E2                    2836 	.db 0xe2
      004760 95                    2837 	.db 0x95
      004761 90                    2838 	.db 0x90
      004762 E2                    2839 	.db 0xe2
      004763 95                    2840 	.db 0x95
      004764 90                    2841 	.db 0x90
      004765 E2                    2842 	.db 0xe2
      004766 95                    2843 	.db 0x95
      004767 90                    2844 	.db 0x90
      004768 E2                    2845 	.db 0xe2
      004769 95                    2846 	.db 0x95
      00476A 90                    2847 	.db 0x90
      00476B E2                    2848 	.db 0xe2
      00476C 95                    2849 	.db 0x95
      00476D 90                    2850 	.db 0x90
      00476E E2                    2851 	.db 0xe2
      00476F 95                    2852 	.db 0x95
      004770 90                    2853 	.db 0x90
      004771 E2                    2854 	.db 0xe2
      004772 95                    2855 	.db 0x95
      004773 90                    2856 	.db 0x90
      004774 E2                    2857 	.db 0xe2
      004775 95                    2858 	.db 0x95
      004776 9D                    2859 	.db 0x9d
      004777 0A                    2860 	.db 0x0a
      004778 0D                    2861 	.db 0x0d
      004779 00                    2862 	.db 0x00
                                   2863 	.area CSEG    (CODE)
                                   2864 	.area CONST   (CODE)
      00477A                       2865 ___str_3:
      00477A 0A                    2866 	.db 0x0a
      00477B 0D                    2867 	.db 0x0d
      00477C E2                    2868 	.db 0xe2
      00477D 94                    2869 	.db 0x94
      00477E 8C                    2870 	.db 0x8c
      00477F E2                    2871 	.db 0xe2
      004780 94                    2872 	.db 0x94
      004781 80                    2873 	.db 0x80
      004782 E2                    2874 	.db 0xe2
      004783 94                    2875 	.db 0x94
      004784 80                    2876 	.db 0x80
      004785 E2                    2877 	.db 0xe2
      004786 94                    2878 	.db 0x94
      004787 80                    2879 	.db 0x80
      004788 E2                    2880 	.db 0xe2
      004789 94                    2881 	.db 0x94
      00478A 80                    2882 	.db 0x80
      00478B E2                    2883 	.db 0xe2
      00478C 94                    2884 	.db 0x94
      00478D 80                    2885 	.db 0x80
      00478E E2                    2886 	.db 0xe2
      00478F 94                    2887 	.db 0x94
      004790 80                    2888 	.db 0x80
      004791 E2                    2889 	.db 0xe2
      004792 94                    2890 	.db 0x94
      004793 80                    2891 	.db 0x80
      004794 E2                    2892 	.db 0xe2
      004795 94                    2893 	.db 0x94
      004796 80                    2894 	.db 0x80
      004797 E2                    2895 	.db 0xe2
      004798 94                    2896 	.db 0x94
      004799 80                    2897 	.db 0x80
      00479A E2                    2898 	.db 0xe2
      00479B 94                    2899 	.db 0x94
      00479C 80                    2900 	.db 0x80
      00479D E2                    2901 	.db 0xe2
      00479E 94                    2902 	.db 0x94
      00479F 80                    2903 	.db 0x80
      0047A0 E2                    2904 	.db 0xe2
      0047A1 94                    2905 	.db 0x94
      0047A2 80                    2906 	.db 0x80
      0047A3 E2                    2907 	.db 0xe2
      0047A4 94                    2908 	.db 0x94
      0047A5 AC                    2909 	.db 0xac
      0047A6 E2                    2910 	.db 0xe2
      0047A7 94                    2911 	.db 0x94
      0047A8 80                    2912 	.db 0x80
      0047A9 E2                    2913 	.db 0xe2
      0047AA 94                    2914 	.db 0x94
      0047AB 80                    2915 	.db 0x80
      0047AC E2                    2916 	.db 0xe2
      0047AD 94                    2917 	.db 0x94
      0047AE 80                    2918 	.db 0x80
      0047AF E2                    2919 	.db 0xe2
      0047B0 94                    2920 	.db 0x94
      0047B1 80                    2921 	.db 0x80
      0047B2 E2                    2922 	.db 0xe2
      0047B3 94                    2923 	.db 0x94
      0047B4 80                    2924 	.db 0x80
      0047B5 E2                    2925 	.db 0xe2
      0047B6 94                    2926 	.db 0x94
      0047B7 80                    2927 	.db 0x80
      0047B8 E2                    2928 	.db 0xe2
      0047B9 94                    2929 	.db 0x94
      0047BA 80                    2930 	.db 0x80
      0047BB E2                    2931 	.db 0xe2
      0047BC 94                    2932 	.db 0x94
      0047BD 80                    2933 	.db 0x80
      0047BE E2                    2934 	.db 0xe2
      0047BF 94                    2935 	.db 0x94
      0047C0 80                    2936 	.db 0x80
      0047C1 E2                    2937 	.db 0xe2
      0047C2 94                    2938 	.db 0x94
      0047C3 80                    2939 	.db 0x80
      0047C4 E2                    2940 	.db 0xe2
      0047C5 94                    2941 	.db 0x94
      0047C6 80                    2942 	.db 0x80
      0047C7 E2                    2943 	.db 0xe2
      0047C8 94                    2944 	.db 0x94
      0047C9 80                    2945 	.db 0x80
      0047CA E2                    2946 	.db 0xe2
      0047CB 94                    2947 	.db 0x94
      0047CC 80                    2948 	.db 0x80
      0047CD E2                    2949 	.db 0xe2
      0047CE 94                    2950 	.db 0x94
      0047CF 80                    2951 	.db 0x80
      0047D0 E2                    2952 	.db 0xe2
      0047D1 94                    2953 	.db 0x94
      0047D2 80                    2954 	.db 0x80
      0047D3 E2                    2955 	.db 0xe2
      0047D4 94                    2956 	.db 0x94
      0047D5 80                    2957 	.db 0x80
      0047D6 E2                    2958 	.db 0xe2
      0047D7 94                    2959 	.db 0x94
      0047D8 80                    2960 	.db 0x80
      0047D9 E2                    2961 	.db 0xe2
      0047DA 94                    2962 	.db 0x94
      0047DB 80                    2963 	.db 0x80
      0047DC E2                    2964 	.db 0xe2
      0047DD 94                    2965 	.db 0x94
      0047DE 80                    2966 	.db 0x80
      0047DF E2                    2967 	.db 0xe2
      0047E0 94                    2968 	.db 0x94
      0047E1 80                    2969 	.db 0x80
      0047E2 E2                    2970 	.db 0xe2
      0047E3 94                    2971 	.db 0x94
      0047E4 80                    2972 	.db 0x80
      0047E5 E2                    2973 	.db 0xe2
      0047E6 94                    2974 	.db 0x94
      0047E7 80                    2975 	.db 0x80
      0047E8 E2                    2976 	.db 0xe2
      0047E9 94                    2977 	.db 0x94
      0047EA 80                    2978 	.db 0x80
      0047EB E2                    2979 	.db 0xe2
      0047EC 94                    2980 	.db 0x94
      0047ED 80                    2981 	.db 0x80
      0047EE E2                    2982 	.db 0xe2
      0047EF 94                    2983 	.db 0x94
      0047F0 80                    2984 	.db 0x80
      0047F1 E2                    2985 	.db 0xe2
      0047F2 94                    2986 	.db 0x94
      0047F3 80                    2987 	.db 0x80
      0047F4 E2                    2988 	.db 0xe2
      0047F5 94                    2989 	.db 0x94
      0047F6 80                    2990 	.db 0x80
      0047F7 E2                    2991 	.db 0xe2
      0047F8 94                    2992 	.db 0x94
      0047F9 80                    2993 	.db 0x80
      0047FA E2                    2994 	.db 0xe2
      0047FB 94                    2995 	.db 0x94
      0047FC 80                    2996 	.db 0x80
      0047FD E2                    2997 	.db 0xe2
      0047FE 94                    2998 	.db 0x94
      0047FF 80                    2999 	.db 0x80
      004800 E2                    3000 	.db 0xe2
      004801 94                    3001 	.db 0x94
      004802 80                    3002 	.db 0x80
      004803 E2                    3003 	.db 0xe2
      004804 94                    3004 	.db 0x94
      004805 80                    3005 	.db 0x80
      004806 E2                    3006 	.db 0xe2
      004807 94                    3007 	.db 0x94
      004808 80                    3008 	.db 0x80
      004809 E2                    3009 	.db 0xe2
      00480A 94                    3010 	.db 0x94
      00480B 80                    3011 	.db 0x80
      00480C E2                    3012 	.db 0xe2
      00480D 94                    3013 	.db 0x94
      00480E 80                    3014 	.db 0x80
      00480F E2                    3015 	.db 0xe2
      004810 94                    3016 	.db 0x94
      004811 80                    3017 	.db 0x80
      004812 E2                    3018 	.db 0xe2
      004813 94                    3019 	.db 0x94
      004814 80                    3020 	.db 0x80
      004815 E2                    3021 	.db 0xe2
      004816 94                    3022 	.db 0x94
      004817 80                    3023 	.db 0x80
      004818 E2                    3024 	.db 0xe2
      004819 94                    3025 	.db 0x94
      00481A 80                    3026 	.db 0x80
      00481B E2                    3027 	.db 0xe2
      00481C 94                    3028 	.db 0x94
      00481D 80                    3029 	.db 0x80
      00481E E2                    3030 	.db 0xe2
      00481F 94                    3031 	.db 0x94
      004820 80                    3032 	.db 0x80
      004821 E2                    3033 	.db 0xe2
      004822 94                    3034 	.db 0x94
      004823 80                    3035 	.db 0x80
      004824 E2                    3036 	.db 0xe2
      004825 94                    3037 	.db 0x94
      004826 80                    3038 	.db 0x80
      004827 E2                    3039 	.db 0xe2
      004828 94                    3040 	.db 0x94
      004829 80                    3041 	.db 0x80
      00482A E2                    3042 	.db 0xe2
      00482B 94                    3043 	.db 0x94
      00482C 90                    3044 	.db 0x90
      00482D 0A                    3045 	.db 0x0a
      00482E 0D                    3046 	.db 0x0d
      00482F 00                    3047 	.db 0x00
                                   3048 	.area CSEG    (CODE)
                                   3049 	.area CONST   (CODE)
      004830                       3050 ___str_4:
      004830 E2                    3051 	.db 0xe2
      004831 94                    3052 	.db 0x94
      004832 82                    3053 	.db 0x82
      004833 20 20 43 6F 6D 6D 61  3054 	.ascii "  Command   "
             6E 64 20 20 20
      00483F E2                    3055 	.db 0xe2
      004840 94                    3056 	.db 0x94
      004841 82                    3057 	.db 0x82
      004842 20 20 20 20 20 20 20  3058 	.ascii "               Description                  "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      00486E E2                    3059 	.db 0xe2
      00486F 94                    3060 	.db 0x94
      004870 82                    3061 	.db 0x82
      004871 0A                    3062 	.db 0x0a
      004872 0D                    3063 	.db 0x0d
      004873 00                    3064 	.db 0x00
                                   3065 	.area CSEG    (CODE)
                                   3066 	.area CONST   (CODE)
      004874                       3067 ___str_5:
      004874 E2                    3068 	.db 0xe2
      004875 94                    3069 	.db 0x94
      004876 9C                    3070 	.db 0x9c
      004877 E2                    3071 	.db 0xe2
      004878 94                    3072 	.db 0x94
      004879 80                    3073 	.db 0x80
      00487A E2                    3074 	.db 0xe2
      00487B 94                    3075 	.db 0x94
      00487C 80                    3076 	.db 0x80
      00487D E2                    3077 	.db 0xe2
      00487E 94                    3078 	.db 0x94
      00487F 80                    3079 	.db 0x80
      004880 E2                    3080 	.db 0xe2
      004881 94                    3081 	.db 0x94
      004882 80                    3082 	.db 0x80
      004883 E2                    3083 	.db 0xe2
      004884 94                    3084 	.db 0x94
      004885 80                    3085 	.db 0x80
      004886 E2                    3086 	.db 0xe2
      004887 94                    3087 	.db 0x94
      004888 80                    3088 	.db 0x80
      004889 E2                    3089 	.db 0xe2
      00488A 94                    3090 	.db 0x94
      00488B 80                    3091 	.db 0x80
      00488C E2                    3092 	.db 0xe2
      00488D 94                    3093 	.db 0x94
      00488E 80                    3094 	.db 0x80
      00488F E2                    3095 	.db 0xe2
      004890 94                    3096 	.db 0x94
      004891 80                    3097 	.db 0x80
      004892 E2                    3098 	.db 0xe2
      004893 94                    3099 	.db 0x94
      004894 80                    3100 	.db 0x80
      004895 E2                    3101 	.db 0xe2
      004896 94                    3102 	.db 0x94
      004897 80                    3103 	.db 0x80
      004898 E2                    3104 	.db 0xe2
      004899 94                    3105 	.db 0x94
      00489A 80                    3106 	.db 0x80
      00489B E2                    3107 	.db 0xe2
      00489C 94                    3108 	.db 0x94
      00489D BC                    3109 	.db 0xbc
      00489E E2                    3110 	.db 0xe2
      00489F 94                    3111 	.db 0x94
      0048A0 80                    3112 	.db 0x80
      0048A1 E2                    3113 	.db 0xe2
      0048A2 94                    3114 	.db 0x94
      0048A3 80                    3115 	.db 0x80
      0048A4 E2                    3116 	.db 0xe2
      0048A5 94                    3117 	.db 0x94
      0048A6 80                    3118 	.db 0x80
      0048A7 E2                    3119 	.db 0xe2
      0048A8 94                    3120 	.db 0x94
      0048A9 80                    3121 	.db 0x80
      0048AA E2                    3122 	.db 0xe2
      0048AB 94                    3123 	.db 0x94
      0048AC 80                    3124 	.db 0x80
      0048AD E2                    3125 	.db 0xe2
      0048AE 94                    3126 	.db 0x94
      0048AF 80                    3127 	.db 0x80
      0048B0 E2                    3128 	.db 0xe2
      0048B1 94                    3129 	.db 0x94
      0048B2 80                    3130 	.db 0x80
      0048B3 E2                    3131 	.db 0xe2
      0048B4 94                    3132 	.db 0x94
      0048B5 80                    3133 	.db 0x80
      0048B6 E2                    3134 	.db 0xe2
      0048B7 94                    3135 	.db 0x94
      0048B8 80                    3136 	.db 0x80
      0048B9 E2                    3137 	.db 0xe2
      0048BA 94                    3138 	.db 0x94
      0048BB 80                    3139 	.db 0x80
      0048BC E2                    3140 	.db 0xe2
      0048BD 94                    3141 	.db 0x94
      0048BE 80                    3142 	.db 0x80
      0048BF E2                    3143 	.db 0xe2
      0048C0 94                    3144 	.db 0x94
      0048C1 80                    3145 	.db 0x80
      0048C2 E2                    3146 	.db 0xe2
      0048C3 94                    3147 	.db 0x94
      0048C4 80                    3148 	.db 0x80
      0048C5 E2                    3149 	.db 0xe2
      0048C6 94                    3150 	.db 0x94
      0048C7 80                    3151 	.db 0x80
      0048C8 E2                    3152 	.db 0xe2
      0048C9 94                    3153 	.db 0x94
      0048CA 80                    3154 	.db 0x80
      0048CB E2                    3155 	.db 0xe2
      0048CC 94                    3156 	.db 0x94
      0048CD 80                    3157 	.db 0x80
      0048CE E2                    3158 	.db 0xe2
      0048CF 94                    3159 	.db 0x94
      0048D0 80                    3160 	.db 0x80
      0048D1 E2                    3161 	.db 0xe2
      0048D2 94                    3162 	.db 0x94
      0048D3 80                    3163 	.db 0x80
      0048D4 E2                    3164 	.db 0xe2
      0048D5 94                    3165 	.db 0x94
      0048D6 80                    3166 	.db 0x80
      0048D7 E2                    3167 	.db 0xe2
      0048D8 94                    3168 	.db 0x94
      0048D9 80                    3169 	.db 0x80
      0048DA E2                    3170 	.db 0xe2
      0048DB 94                    3171 	.db 0x94
      0048DC 80                    3172 	.db 0x80
      0048DD E2                    3173 	.db 0xe2
      0048DE 94                    3174 	.db 0x94
      0048DF 80                    3175 	.db 0x80
      0048E0 E2                    3176 	.db 0xe2
      0048E1 94                    3177 	.db 0x94
      0048E2 80                    3178 	.db 0x80
      0048E3 E2                    3179 	.db 0xe2
      0048E4 94                    3180 	.db 0x94
      0048E5 80                    3181 	.db 0x80
      0048E6 E2                    3182 	.db 0xe2
      0048E7 94                    3183 	.db 0x94
      0048E8 80                    3184 	.db 0x80
      0048E9 E2                    3185 	.db 0xe2
      0048EA 94                    3186 	.db 0x94
      0048EB 80                    3187 	.db 0x80
      0048EC E2                    3188 	.db 0xe2
      0048ED 94                    3189 	.db 0x94
      0048EE 80                    3190 	.db 0x80
      0048EF E2                    3191 	.db 0xe2
      0048F0 94                    3192 	.db 0x94
      0048F1 80                    3193 	.db 0x80
      0048F2 E2                    3194 	.db 0xe2
      0048F3 94                    3195 	.db 0x94
      0048F4 80                    3196 	.db 0x80
      0048F5 E2                    3197 	.db 0xe2
      0048F6 94                    3198 	.db 0x94
      0048F7 80                    3199 	.db 0x80
      0048F8 E2                    3200 	.db 0xe2
      0048F9 94                    3201 	.db 0x94
      0048FA 80                    3202 	.db 0x80
      0048FB E2                    3203 	.db 0xe2
      0048FC 94                    3204 	.db 0x94
      0048FD 80                    3205 	.db 0x80
      0048FE E2                    3206 	.db 0xe2
      0048FF 94                    3207 	.db 0x94
      004900 80                    3208 	.db 0x80
      004901 E2                    3209 	.db 0xe2
      004902 94                    3210 	.db 0x94
      004903 80                    3211 	.db 0x80
      004904 E2                    3212 	.db 0xe2
      004905 94                    3213 	.db 0x94
      004906 80                    3214 	.db 0x80
      004907 E2                    3215 	.db 0xe2
      004908 94                    3216 	.db 0x94
      004909 80                    3217 	.db 0x80
      00490A E2                    3218 	.db 0xe2
      00490B 94                    3219 	.db 0x94
      00490C 80                    3220 	.db 0x80
      00490D E2                    3221 	.db 0xe2
      00490E 94                    3222 	.db 0x94
      00490F 80                    3223 	.db 0x80
      004910 E2                    3224 	.db 0xe2
      004911 94                    3225 	.db 0x94
      004912 80                    3226 	.db 0x80
      004913 E2                    3227 	.db 0xe2
      004914 94                    3228 	.db 0x94
      004915 80                    3229 	.db 0x80
      004916 E2                    3230 	.db 0xe2
      004917 94                    3231 	.db 0x94
      004918 80                    3232 	.db 0x80
      004919 E2                    3233 	.db 0xe2
      00491A 94                    3234 	.db 0x94
      00491B 80                    3235 	.db 0x80
      00491C E2                    3236 	.db 0xe2
      00491D 94                    3237 	.db 0x94
      00491E 80                    3238 	.db 0x80
      00491F E2                    3239 	.db 0xe2
      004920 94                    3240 	.db 0x94
      004921 80                    3241 	.db 0x80
      004922 E2                    3242 	.db 0xe2
      004923 94                    3243 	.db 0x94
      004924 A4                    3244 	.db 0xa4
      004925 0A                    3245 	.db 0x0a
      004926 0D                    3246 	.db 0x0d
      004927 00                    3247 	.db 0x00
                                   3248 	.area CSEG    (CODE)
                                   3249 	.area CONST   (CODE)
      004928                       3250 ___str_6:
      004928 E2                    3251 	.db 0xe2
      004929 94                    3252 	.db 0x94
      00492A 82                    3253 	.db 0x82
      00492B 20 20 20 20 20 52 20  3254 	.ascii "     R      "
             20 20 20 20 20
      004937 E2                    3255 	.db 0xe2
      004938 94                    3256 	.db 0x94
      004939 82                    3257 	.db 0x82
      00493A 20 52 65 61 64 20 66  3258 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004966 E2                    3259 	.db 0xe2
      004967 94                    3260 	.db 0x94
      004968 82                    3261 	.db 0x82
      004969 0A                    3262 	.db 0x0a
      00496A 0D                    3263 	.db 0x0d
      00496B 00                    3264 	.db 0x00
                                   3265 	.area CSEG    (CODE)
                                   3266 	.area CONST   (CODE)
      00496C                       3267 ___str_7:
      00496C E2                    3268 	.db 0xe2
      00496D 94                    3269 	.db 0x94
      00496E 82                    3270 	.db 0x82
      00496F 20 20 20 20 20 57 20  3271 	.ascii "     W      "
             20 20 20 20 20
      00497B E2                    3272 	.db 0xe2
      00497C 94                    3273 	.db 0x94
      00497D 82                    3274 	.db 0x82
      00497E 20 57 72 69 74 65 20  3275 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0049AA E2                    3276 	.db 0xe2
      0049AB 94                    3277 	.db 0x94
      0049AC 82                    3278 	.db 0x82
      0049AD 0A                    3279 	.db 0x0a
      0049AE 0D                    3280 	.db 0x0d
      0049AF 00                    3281 	.db 0x00
                                   3282 	.area CSEG    (CODE)
                                   3283 	.area CONST   (CODE)
      0049B0                       3284 ___str_8:
      0049B0 E2                    3285 	.db 0xe2
      0049B1 94                    3286 	.db 0x94
      0049B2 82                    3287 	.db 0x82
      0049B3 20 20 20 20 20 48 20  3288 	.ascii "     H      "
             20 20 20 20 20
      0049BF E2                    3289 	.db 0xe2
      0049C0 94                    3290 	.db 0x94
      0049C1 82                    3291 	.db 0x82
      0049C2 20 44 69 73 70 6C 61  3292 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0049EE E2                    3293 	.db 0xe2
      0049EF 94                    3294 	.db 0x94
      0049F0 82                    3295 	.db 0x82
      0049F1 0A                    3296 	.db 0x0a
      0049F2 0D                    3297 	.db 0x0d
      0049F3 00                    3298 	.db 0x00
                                   3299 	.area CSEG    (CODE)
                                   3300 	.area CONST   (CODE)
      0049F4                       3301 ___str_9:
      0049F4 E2                    3302 	.db 0xe2
      0049F5 94                    3303 	.db 0x94
      0049F6 82                    3304 	.db 0x82
      0049F7 20 20 20 20 20 58 20  3305 	.ascii "     X      "
             20 20 20 20 20
      004A03 E2                    3306 	.db 0xe2
      004A04 94                    3307 	.db 0x94
      004A05 82                    3308 	.db 0x82
      004A06 20 52 65 73 65 74 20  3309 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004A32 E2                    3310 	.db 0xe2
      004A33 94                    3311 	.db 0x94
      004A34 82                    3312 	.db 0x82
      004A35 0A                    3313 	.db 0x0a
      004A36 0D                    3314 	.db 0x0d
      004A37 00                    3315 	.db 0x00
                                   3316 	.area CSEG    (CODE)
                                   3317 	.area CONST   (CODE)
      004A38                       3318 ___str_10:
      004A38 E2                    3319 	.db 0xe2
      004A39 94                    3320 	.db 0x94
      004A3A 82                    3321 	.db 0x82
      004A3B 20 20 20 20 20 3F 20  3322 	.ascii "     ?      "
             20 20 20 20 20
      004A47 E2                    3323 	.db 0xe2
      004A48 94                    3324 	.db 0x94
      004A49 82                    3325 	.db 0x82
      004A4A 20 44 69 73 70 6C 61  3326 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004A76 E2                    3327 	.db 0xe2
      004A77 94                    3328 	.db 0x94
      004A78 82                    3329 	.db 0x82
      004A79 0A                    3330 	.db 0x0a
      004A7A 0D                    3331 	.db 0x0d
      004A7B 00                    3332 	.db 0x00
                                   3333 	.area CSEG    (CODE)
                                   3334 	.area CONST   (CODE)
      004A7C                       3335 ___str_11:
      004A7C E2                    3336 	.db 0xe2
      004A7D 94                    3337 	.db 0x94
      004A7E 82                    3338 	.db 0x82
      004A7F 20 20 20 20 20 51 20  3339 	.ascii "     Q      "
             20 20 20 20 20
      004A8B E2                    3340 	.db 0xe2
      004A8C 94                    3341 	.db 0x94
      004A8D 82                    3342 	.db 0x82
      004A8E 20 51 75 69 74 20 70  3343 	.ascii " Quit program                               "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004ABA E2                    3344 	.db 0xe2
      004ABB 94                    3345 	.db 0x94
      004ABC 82                    3346 	.db 0x82
      004ABD 0A                    3347 	.db 0x0a
      004ABE 0D                    3348 	.db 0x0d
      004ABF 00                    3349 	.db 0x00
                                   3350 	.area CSEG    (CODE)
                                   3351 	.area CONST   (CODE)
      004AC0                       3352 ___str_12:
      004AC0 E2                    3353 	.db 0xe2
      004AC1 94                    3354 	.db 0x94
      004AC2 94                    3355 	.db 0x94
      004AC3 E2                    3356 	.db 0xe2
      004AC4 94                    3357 	.db 0x94
      004AC5 80                    3358 	.db 0x80
      004AC6 E2                    3359 	.db 0xe2
      004AC7 94                    3360 	.db 0x94
      004AC8 80                    3361 	.db 0x80
      004AC9 E2                    3362 	.db 0xe2
      004ACA 94                    3363 	.db 0x94
      004ACB 80                    3364 	.db 0x80
      004ACC E2                    3365 	.db 0xe2
      004ACD 94                    3366 	.db 0x94
      004ACE 80                    3367 	.db 0x80
      004ACF E2                    3368 	.db 0xe2
      004AD0 94                    3369 	.db 0x94
      004AD1 80                    3370 	.db 0x80
      004AD2 E2                    3371 	.db 0xe2
      004AD3 94                    3372 	.db 0x94
      004AD4 80                    3373 	.db 0x80
      004AD5 E2                    3374 	.db 0xe2
      004AD6 94                    3375 	.db 0x94
      004AD7 80                    3376 	.db 0x80
      004AD8 E2                    3377 	.db 0xe2
      004AD9 94                    3378 	.db 0x94
      004ADA 80                    3379 	.db 0x80
      004ADB E2                    3380 	.db 0xe2
      004ADC 94                    3381 	.db 0x94
      004ADD 80                    3382 	.db 0x80
      004ADE E2                    3383 	.db 0xe2
      004ADF 94                    3384 	.db 0x94
      004AE0 80                    3385 	.db 0x80
      004AE1 E2                    3386 	.db 0xe2
      004AE2 94                    3387 	.db 0x94
      004AE3 80                    3388 	.db 0x80
      004AE4 E2                    3389 	.db 0xe2
      004AE5 94                    3390 	.db 0x94
      004AE6 80                    3391 	.db 0x80
      004AE7 E2                    3392 	.db 0xe2
      004AE8 94                    3393 	.db 0x94
      004AE9 B4                    3394 	.db 0xb4
      004AEA E2                    3395 	.db 0xe2
      004AEB 94                    3396 	.db 0x94
      004AEC 80                    3397 	.db 0x80
      004AED E2                    3398 	.db 0xe2
      004AEE 94                    3399 	.db 0x94
      004AEF 80                    3400 	.db 0x80
      004AF0 E2                    3401 	.db 0xe2
      004AF1 94                    3402 	.db 0x94
      004AF2 80                    3403 	.db 0x80
      004AF3 E2                    3404 	.db 0xe2
      004AF4 94                    3405 	.db 0x94
      004AF5 80                    3406 	.db 0x80
      004AF6 E2                    3407 	.db 0xe2
      004AF7 94                    3408 	.db 0x94
      004AF8 80                    3409 	.db 0x80
      004AF9 E2                    3410 	.db 0xe2
      004AFA 94                    3411 	.db 0x94
      004AFB 80                    3412 	.db 0x80
      004AFC E2                    3413 	.db 0xe2
      004AFD 94                    3414 	.db 0x94
      004AFE 80                    3415 	.db 0x80
      004AFF E2                    3416 	.db 0xe2
      004B00 94                    3417 	.db 0x94
      004B01 80                    3418 	.db 0x80
      004B02 E2                    3419 	.db 0xe2
      004B03 94                    3420 	.db 0x94
      004B04 80                    3421 	.db 0x80
      004B05 E2                    3422 	.db 0xe2
      004B06 94                    3423 	.db 0x94
      004B07 80                    3424 	.db 0x80
      004B08 E2                    3425 	.db 0xe2
      004B09 94                    3426 	.db 0x94
      004B0A 80                    3427 	.db 0x80
      004B0B E2                    3428 	.db 0xe2
      004B0C 94                    3429 	.db 0x94
      004B0D 80                    3430 	.db 0x80
      004B0E E2                    3431 	.db 0xe2
      004B0F 94                    3432 	.db 0x94
      004B10 80                    3433 	.db 0x80
      004B11 E2                    3434 	.db 0xe2
      004B12 94                    3435 	.db 0x94
      004B13 80                    3436 	.db 0x80
      004B14 E2                    3437 	.db 0xe2
      004B15 94                    3438 	.db 0x94
      004B16 80                    3439 	.db 0x80
      004B17 E2                    3440 	.db 0xe2
      004B18 94                    3441 	.db 0x94
      004B19 80                    3442 	.db 0x80
      004B1A E2                    3443 	.db 0xe2
      004B1B 94                    3444 	.db 0x94
      004B1C 80                    3445 	.db 0x80
      004B1D E2                    3446 	.db 0xe2
      004B1E 94                    3447 	.db 0x94
      004B1F 80                    3448 	.db 0x80
      004B20 E2                    3449 	.db 0xe2
      004B21 94                    3450 	.db 0x94
      004B22 80                    3451 	.db 0x80
      004B23 E2                    3452 	.db 0xe2
      004B24 94                    3453 	.db 0x94
      004B25 80                    3454 	.db 0x80
      004B26 E2                    3455 	.db 0xe2
      004B27 94                    3456 	.db 0x94
      004B28 80                    3457 	.db 0x80
      004B29 E2                    3458 	.db 0xe2
      004B2A 94                    3459 	.db 0x94
      004B2B 80                    3460 	.db 0x80
      004B2C E2                    3461 	.db 0xe2
      004B2D 94                    3462 	.db 0x94
      004B2E 80                    3463 	.db 0x80
      004B2F E2                    3464 	.db 0xe2
      004B30 94                    3465 	.db 0x94
      004B31 80                    3466 	.db 0x80
      004B32 E2                    3467 	.db 0xe2
      004B33 94                    3468 	.db 0x94
      004B34 80                    3469 	.db 0x80
      004B35 E2                    3470 	.db 0xe2
      004B36 94                    3471 	.db 0x94
      004B37 80                    3472 	.db 0x80
      004B38 E2                    3473 	.db 0xe2
      004B39 94                    3474 	.db 0x94
      004B3A 80                    3475 	.db 0x80
      004B3B E2                    3476 	.db 0xe2
      004B3C 94                    3477 	.db 0x94
      004B3D 80                    3478 	.db 0x80
      004B3E E2                    3479 	.db 0xe2
      004B3F 94                    3480 	.db 0x94
      004B40 80                    3481 	.db 0x80
      004B41 E2                    3482 	.db 0xe2
      004B42 94                    3483 	.db 0x94
      004B43 80                    3484 	.db 0x80
      004B44 E2                    3485 	.db 0xe2
      004B45 94                    3486 	.db 0x94
      004B46 80                    3487 	.db 0x80
      004B47 E2                    3488 	.db 0xe2
      004B48 94                    3489 	.db 0x94
      004B49 80                    3490 	.db 0x80
      004B4A E2                    3491 	.db 0xe2
      004B4B 94                    3492 	.db 0x94
      004B4C 80                    3493 	.db 0x80
      004B4D E2                    3494 	.db 0xe2
      004B4E 94                    3495 	.db 0x94
      004B4F 80                    3496 	.db 0x80
      004B50 E2                    3497 	.db 0xe2
      004B51 94                    3498 	.db 0x94
      004B52 80                    3499 	.db 0x80
      004B53 E2                    3500 	.db 0xe2
      004B54 94                    3501 	.db 0x94
      004B55 80                    3502 	.db 0x80
      004B56 E2                    3503 	.db 0xe2
      004B57 94                    3504 	.db 0x94
      004B58 80                    3505 	.db 0x80
      004B59 E2                    3506 	.db 0xe2
      004B5A 94                    3507 	.db 0x94
      004B5B 80                    3508 	.db 0x80
      004B5C E2                    3509 	.db 0xe2
      004B5D 94                    3510 	.db 0x94
      004B5E 80                    3511 	.db 0x80
      004B5F E2                    3512 	.db 0xe2
      004B60 94                    3513 	.db 0x94
      004B61 80                    3514 	.db 0x80
      004B62 E2                    3515 	.db 0xe2
      004B63 94                    3516 	.db 0x94
      004B64 80                    3517 	.db 0x80
      004B65 E2                    3518 	.db 0xe2
      004B66 94                    3519 	.db 0x94
      004B67 80                    3520 	.db 0x80
      004B68 E2                    3521 	.db 0xe2
      004B69 94                    3522 	.db 0x94
      004B6A 80                    3523 	.db 0x80
      004B6B E2                    3524 	.db 0xe2
      004B6C 94                    3525 	.db 0x94
      004B6D 80                    3526 	.db 0x80
      004B6E E2                    3527 	.db 0xe2
      004B6F 94                    3528 	.db 0x94
      004B70 98                    3529 	.db 0x98
      004B71 0A                    3530 	.db 0x0a
      004B72 0D                    3531 	.db 0x0d
      004B73 00                    3532 	.db 0x00
                                   3533 	.area CSEG    (CODE)
                                   3534 	.area CONST   (CODE)
      004B74                       3535 ___str_13:
      004B74 7C 20 24 20 25 63     3536 	.ascii "| $ %c"
      004B7A 0A                    3537 	.db 0x0a
      004B7B 0D                    3538 	.db 0x0d
      004B7C 00                    3539 	.db 0x00
                                   3540 	.area CSEG    (CODE)
                                   3541 	.area CONST   (CODE)
      004B7D                       3542 ___str_14:
      004B7D 0A                    3543 	.db 0x0a
      004B7E E2                    3544 	.db 0xe2
      004B7F 94                    3545 	.db 0x94
      004B80 8C                    3546 	.db 0x8c
      004B81 E2                    3547 	.db 0xe2
      004B82 94                    3548 	.db 0x94
      004B83 80                    3549 	.db 0x80
      004B84 E2                    3550 	.db 0xe2
      004B85 94                    3551 	.db 0x94
      004B86 80                    3552 	.db 0x80
      004B87 E2                    3553 	.db 0xe2
      004B88 94                    3554 	.db 0x94
      004B89 80                    3555 	.db 0x80
      004B8A E2                    3556 	.db 0xe2
      004B8B 94                    3557 	.db 0x94
      004B8C 80                    3558 	.db 0x80
      004B8D E2                    3559 	.db 0xe2
      004B8E 94                    3560 	.db 0x94
      004B8F 80                    3561 	.db 0x80
      004B90 E2                    3562 	.db 0xe2
      004B91 94                    3563 	.db 0x94
      004B92 80                    3564 	.db 0x80
      004B93 E2                    3565 	.db 0xe2
      004B94 94                    3566 	.db 0x94
      004B95 80                    3567 	.db 0x80
      004B96 E2                    3568 	.db 0xe2
      004B97 94                    3569 	.db 0x94
      004B98 80                    3570 	.db 0x80
      004B99 E2                    3571 	.db 0xe2
      004B9A 94                    3572 	.db 0x94
      004B9B 80                    3573 	.db 0x80
      004B9C E2                    3574 	.db 0xe2
      004B9D 94                    3575 	.db 0x94
      004B9E 80                    3576 	.db 0x80
      004B9F E2                    3577 	.db 0xe2
      004BA0 94                    3578 	.db 0x94
      004BA1 80                    3579 	.db 0x80
      004BA2 E2                    3580 	.db 0xe2
      004BA3 94                    3581 	.db 0x94
      004BA4 80                    3582 	.db 0x80
      004BA5 E2                    3583 	.db 0xe2
      004BA6 94                    3584 	.db 0x94
      004BA7 80                    3585 	.db 0x80
      004BA8 E2                    3586 	.db 0xe2
      004BA9 94                    3587 	.db 0x94
      004BAA 80                    3588 	.db 0x80
      004BAB E2                    3589 	.db 0xe2
      004BAC 94                    3590 	.db 0x94
      004BAD 80                    3591 	.db 0x80
      004BAE 20 57 52 49 54 45 20  3592 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      004BBF E2                    3593 	.db 0xe2
      004BC0 94                    3594 	.db 0x94
      004BC1 80                    3595 	.db 0x80
      004BC2 E2                    3596 	.db 0xe2
      004BC3 94                    3597 	.db 0x94
      004BC4 80                    3598 	.db 0x80
      004BC5 E2                    3599 	.db 0xe2
      004BC6 94                    3600 	.db 0x94
      004BC7 80                    3601 	.db 0x80
      004BC8 E2                    3602 	.db 0xe2
      004BC9 94                    3603 	.db 0x94
      004BCA 80                    3604 	.db 0x80
      004BCB E2                    3605 	.db 0xe2
      004BCC 94                    3606 	.db 0x94
      004BCD 80                    3607 	.db 0x80
      004BCE E2                    3608 	.db 0xe2
      004BCF 94                    3609 	.db 0x94
      004BD0 80                    3610 	.db 0x80
      004BD1 E2                    3611 	.db 0xe2
      004BD2 94                    3612 	.db 0x94
      004BD3 80                    3613 	.db 0x80
      004BD4 E2                    3614 	.db 0xe2
      004BD5 94                    3615 	.db 0x94
      004BD6 80                    3616 	.db 0x80
      004BD7 E2                    3617 	.db 0xe2
      004BD8 94                    3618 	.db 0x94
      004BD9 80                    3619 	.db 0x80
      004BDA E2                    3620 	.db 0xe2
      004BDB 94                    3621 	.db 0x94
      004BDC 80                    3622 	.db 0x80
      004BDD E2                    3623 	.db 0xe2
      004BDE 94                    3624 	.db 0x94
      004BDF 80                    3625 	.db 0x80
      004BE0 E2                    3626 	.db 0xe2
      004BE1 94                    3627 	.db 0x94
      004BE2 80                    3628 	.db 0x80
      004BE3 E2                    3629 	.db 0xe2
      004BE4 94                    3630 	.db 0x94
      004BE5 80                    3631 	.db 0x80
      004BE6 E2                    3632 	.db 0xe2
      004BE7 94                    3633 	.db 0x94
      004BE8 80                    3634 	.db 0x80
      004BE9 E2                    3635 	.db 0xe2
      004BEA 94                    3636 	.db 0x94
      004BEB 90                    3637 	.db 0x90
      004BEC 0A                    3638 	.db 0x0a
      004BED 0D                    3639 	.db 0x0d
      004BEE 00                    3640 	.db 0x00
                                   3641 	.area CSEG    (CODE)
                                   3642 	.area CONST   (CODE)
      004BEF                       3643 ___str_15:
      004BEF 63 68 65 63 6B 20 70  3644 	.ascii "check point 1 "
             6F 69 6E 74 20 31 20
      004BFD 0A                    3645 	.db 0x0a
      004BFE 0D                    3646 	.db 0x0d
      004BFF 00                    3647 	.db 0x00
                                   3648 	.area CSEG    (CODE)
                                   3649 	.area CONST   (CODE)
      004C00                       3650 ___str_16:
      004C00 0A                    3651 	.db 0x0a
      004C01 E2                    3652 	.db 0xe2
      004C02 94                    3653 	.db 0x94
      004C03 8C                    3654 	.db 0x8c
      004C04 E2                    3655 	.db 0xe2
      004C05 94                    3656 	.db 0x94
      004C06 80                    3657 	.db 0x80
      004C07 E2                    3658 	.db 0xe2
      004C08 94                    3659 	.db 0x94
      004C09 80                    3660 	.db 0x80
      004C0A E2                    3661 	.db 0xe2
      004C0B 94                    3662 	.db 0x94
      004C0C 80                    3663 	.db 0x80
      004C0D E2                    3664 	.db 0xe2
      004C0E 94                    3665 	.db 0x94
      004C0F 80                    3666 	.db 0x80
      004C10 E2                    3667 	.db 0xe2
      004C11 94                    3668 	.db 0x94
      004C12 80                    3669 	.db 0x80
      004C13 E2                    3670 	.db 0xe2
      004C14 94                    3671 	.db 0x94
      004C15 80                    3672 	.db 0x80
      004C16 E2                    3673 	.db 0xe2
      004C17 94                    3674 	.db 0x94
      004C18 80                    3675 	.db 0x80
      004C19 E2                    3676 	.db 0xe2
      004C1A 94                    3677 	.db 0x94
      004C1B 80                    3678 	.db 0x80
      004C1C E2                    3679 	.db 0xe2
      004C1D 94                    3680 	.db 0x94
      004C1E 80                    3681 	.db 0x80
      004C1F E2                    3682 	.db 0xe2
      004C20 94                    3683 	.db 0x94
      004C21 80                    3684 	.db 0x80
      004C22 E2                    3685 	.db 0xe2
      004C23 94                    3686 	.db 0x94
      004C24 80                    3687 	.db 0x80
      004C25 E2                    3688 	.db 0xe2
      004C26 94                    3689 	.db 0x94
      004C27 80                    3690 	.db 0x80
      004C28 E2                    3691 	.db 0xe2
      004C29 94                    3692 	.db 0x94
      004C2A 80                    3693 	.db 0x80
      004C2B E2                    3694 	.db 0xe2
      004C2C 94                    3695 	.db 0x94
      004C2D 80                    3696 	.db 0x80
      004C2E E2                    3697 	.db 0xe2
      004C2F 94                    3698 	.db 0x94
      004C30 80                    3699 	.db 0x80
      004C31 20 52 45 41 44 20 4F  3700 	.ascii " READ OPERATION "
             50 45 52 41 54 49 4F
             4E 20
      004C41 E2                    3701 	.db 0xe2
      004C42 94                    3702 	.db 0x94
      004C43 80                    3703 	.db 0x80
      004C44 E2                    3704 	.db 0xe2
      004C45 94                    3705 	.db 0x94
      004C46 80                    3706 	.db 0x80
      004C47 E2                    3707 	.db 0xe2
      004C48 94                    3708 	.db 0x94
      004C49 80                    3709 	.db 0x80
      004C4A E2                    3710 	.db 0xe2
      004C4B 94                    3711 	.db 0x94
      004C4C 80                    3712 	.db 0x80
      004C4D E2                    3713 	.db 0xe2
      004C4E 94                    3714 	.db 0x94
      004C4F 80                    3715 	.db 0x80
      004C50 E2                    3716 	.db 0xe2
      004C51 94                    3717 	.db 0x94
      004C52 80                    3718 	.db 0x80
      004C53 E2                    3719 	.db 0xe2
      004C54 94                    3720 	.db 0x94
      004C55 80                    3721 	.db 0x80
      004C56 E2                    3722 	.db 0xe2
      004C57 94                    3723 	.db 0x94
      004C58 80                    3724 	.db 0x80
      004C59 E2                    3725 	.db 0xe2
      004C5A 94                    3726 	.db 0x94
      004C5B 80                    3727 	.db 0x80
      004C5C E2                    3728 	.db 0xe2
      004C5D 94                    3729 	.db 0x94
      004C5E 80                    3730 	.db 0x80
      004C5F E2                    3731 	.db 0xe2
      004C60 94                    3732 	.db 0x94
      004C61 80                    3733 	.db 0x80
      004C62 E2                    3734 	.db 0xe2
      004C63 94                    3735 	.db 0x94
      004C64 80                    3736 	.db 0x80
      004C65 E2                    3737 	.db 0xe2
      004C66 94                    3738 	.db 0x94
      004C67 80                    3739 	.db 0x80
      004C68 E2                    3740 	.db 0xe2
      004C69 94                    3741 	.db 0x94
      004C6A 80                    3742 	.db 0x80
      004C6B E2                    3743 	.db 0xe2
      004C6C 94                    3744 	.db 0x94
      004C6D 80                    3745 	.db 0x80
      004C6E E2                    3746 	.db 0xe2
      004C6F 94                    3747 	.db 0x94
      004C70 90                    3748 	.db 0x90
      004C71 0A                    3749 	.db 0x0a
      004C72 0D                    3750 	.db 0x0d
      004C73 00                    3751 	.db 0x00
                                   3752 	.area CSEG    (CODE)
                                   3753 	.area CONST   (CODE)
      004C74                       3754 ___str_17:
      004C74 7C 20 52 65 61 64 69  3755 	.ascii "| Reading from Address 0x%03X           |"
             6E 67 20 66 72 6F 6D
             20 41 64 64 72 65 73
             73 20 30 78 25 30 33
             58 20 20 20 20 20 20
             20 20 20 20 20 7C
      004C9D 0A                    3756 	.db 0x0a
      004C9E 0D                    3757 	.db 0x0d
      004C9F 00                    3758 	.db 0x00
                                   3759 	.area CSEG    (CODE)
                                   3760 	.area CONST   (CODE)
      004CA0                       3761 ___str_18:
      004CA0 49 4E 56 41 4C 49 44  3762 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      004CAD 0A                    3763 	.db 0x0a
      004CAE 0D                    3764 	.db 0x0d
      004CAF 00                    3765 	.db 0x00
                                   3766 	.area CSEG    (CODE)
                                   3767 	.area CONST   (CODE)
      004CB0                       3768 ___str_19:
      004CB0 E2                    3769 	.db 0xe2
      004CB1 94                    3770 	.db 0x94
      004CB2 82                    3771 	.db 0x82
      004CB3 20 45 6E 74 65 72 20  3772 	.ascii " Enter address (hex, up to 3 characters): "
             61 64 64 72 65 73 73
             20 28 68 65 78 2C 20
             75 70 20 74 6F 20 33
             20 63 68 61 72 61 63
             74 65 72 73 29 3A 20
      004CDD 0A                    3773 	.db 0x0a
      004CDE 0D                    3774 	.db 0x0d
      004CDF 7C                    3775 	.ascii "|"
      004CE0 00                    3776 	.db 0x00
                                   3777 	.area CSEG    (CODE)
                                   3778 	.area CONST   (CODE)
      004CE1                       3779 ___str_20:
      004CE1 7C 20 24 20           3780 	.ascii "| $ "
      004CE5 00                    3781 	.db 0x00
                                   3782 	.area CSEG    (CODE)
                                   3783 	.area CONST   (CODE)
      004CE6                       3784 ___str_21:
      004CE6 0A                    3785 	.db 0x0a
      004CE7 0D                    3786 	.db 0x0d
      004CE8 E2                    3787 	.db 0xe2
      004CE9 94                    3788 	.db 0x94
      004CEA 82                    3789 	.db 0x82
      004CEB 20 45 6E 74 65 72 65  3790 	.ascii " Entered address: 0x%03X"
             64 20 61 64 64 72 65
             73 73 3A 20 30 78 25
             30 33 58
      004D03 0A                    3791 	.db 0x0a
      004D04 0D                    3792 	.db 0x0d
      004D05 00                    3793 	.db 0x00
                                   3794 	.area CSEG    (CODE)
                                   3795 	.area CONST   (CODE)
      004D06                       3796 ___str_22:
      004D06 E2                    3797 	.db 0xe2
      004D07 95                    3798 	.db 0x95
      004D08 94                    3799 	.db 0x94
      004D09 E2                    3800 	.db 0xe2
      004D0A 95                    3801 	.db 0x95
      004D0B 90                    3802 	.db 0x90
      004D0C E2                    3803 	.db 0xe2
      004D0D 95                    3804 	.db 0x95
      004D0E 90                    3805 	.db 0x90
      004D0F E2                    3806 	.db 0xe2
      004D10 95                    3807 	.db 0x95
      004D11 90                    3808 	.db 0x90
      004D12 E2                    3809 	.db 0xe2
      004D13 95                    3810 	.db 0x95
      004D14 90                    3811 	.db 0x90
      004D15 E2                    3812 	.db 0xe2
      004D16 95                    3813 	.db 0x95
      004D17 90                    3814 	.db 0x90
      004D18 E2                    3815 	.db 0xe2
      004D19 95                    3816 	.db 0x95
      004D1A 90                    3817 	.db 0x90
      004D1B E2                    3818 	.db 0xe2
      004D1C 95                    3819 	.db 0x95
      004D1D 90                    3820 	.db 0x90
      004D1E E2                    3821 	.db 0xe2
      004D1F 95                    3822 	.db 0x95
      004D20 90                    3823 	.db 0x90
      004D21 E2                    3824 	.db 0xe2
      004D22 95                    3825 	.db 0x95
      004D23 90                    3826 	.db 0x90
      004D24 E2                    3827 	.db 0xe2
      004D25 95                    3828 	.db 0x95
      004D26 90                    3829 	.db 0x90
      004D27 E2                    3830 	.db 0xe2
      004D28 95                    3831 	.db 0x95
      004D29 90                    3832 	.db 0x90
      004D2A E2                    3833 	.db 0xe2
      004D2B 95                    3834 	.db 0x95
      004D2C 90                    3835 	.db 0x90
      004D2D E2                    3836 	.db 0xe2
      004D2E 95                    3837 	.db 0x95
      004D2F 90                    3838 	.db 0x90
      004D30 E2                    3839 	.db 0xe2
      004D31 95                    3840 	.db 0x95
      004D32 90                    3841 	.db 0x90
      004D33 E2                    3842 	.db 0xe2
      004D34 95                    3843 	.db 0x95
      004D35 90                    3844 	.db 0x90
      004D36 E2                    3845 	.db 0xe2
      004D37 95                    3846 	.db 0x95
      004D38 90                    3847 	.db 0x90
      004D39 E2                    3848 	.db 0xe2
      004D3A 95                    3849 	.db 0x95
      004D3B 90                    3850 	.db 0x90
      004D3C E2                    3851 	.db 0xe2
      004D3D 95                    3852 	.db 0x95
      004D3E 90                    3853 	.db 0x90
      004D3F E2                    3854 	.db 0xe2
      004D40 95                    3855 	.db 0x95
      004D41 90                    3856 	.db 0x90
      004D42 E2                    3857 	.db 0xe2
      004D43 95                    3858 	.db 0x95
      004D44 90                    3859 	.db 0x90
      004D45 E2                    3860 	.db 0xe2
      004D46 95                    3861 	.db 0x95
      004D47 90                    3862 	.db 0x90
      004D48 E2                    3863 	.db 0xe2
      004D49 95                    3864 	.db 0x95
      004D4A 90                    3865 	.db 0x90
      004D4B E2                    3866 	.db 0xe2
      004D4C 95                    3867 	.db 0x95
      004D4D 90                    3868 	.db 0x90
      004D4E E2                    3869 	.db 0xe2
      004D4F 95                    3870 	.db 0x95
      004D50 90                    3871 	.db 0x90
      004D51 E2                    3872 	.db 0xe2
      004D52 95                    3873 	.db 0x95
      004D53 90                    3874 	.db 0x90
      004D54 E2                    3875 	.db 0xe2
      004D55 95                    3876 	.db 0x95
      004D56 90                    3877 	.db 0x90
      004D57 E2                    3878 	.db 0xe2
      004D58 95                    3879 	.db 0x95
      004D59 90                    3880 	.db 0x90
      004D5A E2                    3881 	.db 0xe2
      004D5B 95                    3882 	.db 0x95
      004D5C 90                    3883 	.db 0x90
      004D5D E2                    3884 	.db 0xe2
      004D5E 95                    3885 	.db 0x95
      004D5F 90                    3886 	.db 0x90
      004D60 E2                    3887 	.db 0xe2
      004D61 95                    3888 	.db 0x95
      004D62 90                    3889 	.db 0x90
      004D63 E2                    3890 	.db 0xe2
      004D64 95                    3891 	.db 0x95
      004D65 90                    3892 	.db 0x90
      004D66 E2                    3893 	.db 0xe2
      004D67 95                    3894 	.db 0x95
      004D68 90                    3895 	.db 0x90
      004D69 E2                    3896 	.db 0xe2
      004D6A 95                    3897 	.db 0x95
      004D6B 90                    3898 	.db 0x90
      004D6C E2                    3899 	.db 0xe2
      004D6D 95                    3900 	.db 0x95
      004D6E 90                    3901 	.db 0x90
      004D6F E2                    3902 	.db 0xe2
      004D70 95                    3903 	.db 0x95
      004D71 90                    3904 	.db 0x90
      004D72 E2                    3905 	.db 0xe2
      004D73 95                    3906 	.db 0x95
      004D74 90                    3907 	.db 0x90
      004D75 E2                    3908 	.db 0xe2
      004D76 95                    3909 	.db 0x95
      004D77 90                    3910 	.db 0x90
      004D78 E2                    3911 	.db 0xe2
      004D79 95                    3912 	.db 0x95
      004D7A 90                    3913 	.db 0x90
      004D7B E2                    3914 	.db 0xe2
      004D7C 95                    3915 	.db 0x95
      004D7D 90                    3916 	.db 0x90
      004D7E E2                    3917 	.db 0xe2
      004D7F 95                    3918 	.db 0x95
      004D80 90                    3919 	.db 0x90
      004D81 E2                    3920 	.db 0xe2
      004D82 95                    3921 	.db 0x95
      004D83 90                    3922 	.db 0x90
      004D84 E2                    3923 	.db 0xe2
      004D85 95                    3924 	.db 0x95
      004D86 90                    3925 	.db 0x90
      004D87 E2                    3926 	.db 0xe2
      004D88 95                    3927 	.db 0x95
      004D89 97                    3928 	.db 0x97
      004D8A 0A                    3929 	.db 0x0a
      004D8B 0D                    3930 	.db 0x0d
      004D8C 00                    3931 	.db 0x00
                                   3932 	.area CSEG    (CODE)
                                   3933 	.area CONST   (CODE)
      004D8D                       3934 ___str_23:
      004D8D E2                    3935 	.db 0xe2
      004D8E 95                    3936 	.db 0x95
      004D8F 91                    3937 	.db 0x91
      004D90 20 20 20 20 20 20 20  3938 	.ascii "       ! ADDRESS OUT OF RANGE !         "
             21 20 41 44 44 52 45
             53 53 20 4F 55 54 20
             4F 46 20 52 41 4E 47
             45 20 21 20 20 20 20
             20 20 20 20 20
      004DB8 E2                    3939 	.db 0xe2
      004DB9 95                    3940 	.db 0x95
      004DBA 91                    3941 	.db 0x91
      004DBB 0A                    3942 	.db 0x0a
      004DBC 0D                    3943 	.db 0x0d
      004DBD 00                    3944 	.db 0x00
                                   3945 	.area CSEG    (CODE)
                                   3946 	.area CONST   (CODE)
      004DBE                       3947 ___str_24:
      004DBE E2                    3948 	.db 0xe2
      004DBF 95                    3949 	.db 0x95
      004DC0 91                    3950 	.db 0x91
      004DC1 20 20 20 20 20 50 6C  3951 	.ascii "     Please Enter Valid Address         "
             65 61 73 65 20 45 6E
             74 65 72 20 56 61 6C
             69 64 20 41 64 64 72
             65 73 73 20 20 20 20
             20 20 20 20 20
      004DE9 E2                    3952 	.db 0xe2
      004DEA 95                    3953 	.db 0x95
      004DEB 91                    3954 	.db 0x91
      004DEC 0A                    3955 	.db 0x0a
      004DED 0D                    3956 	.db 0x0d
      004DEE 00                    3957 	.db 0x00
                                   3958 	.area CSEG    (CODE)
                                   3959 	.area CONST   (CODE)
      004DEF                       3960 ___str_25:
      004DEF E2                    3961 	.db 0xe2
      004DF0 95                    3962 	.db 0x95
      004DF1 9A                    3963 	.db 0x9a
      004DF2 E2                    3964 	.db 0xe2
      004DF3 95                    3965 	.db 0x95
      004DF4 90                    3966 	.db 0x90
      004DF5 E2                    3967 	.db 0xe2
      004DF6 95                    3968 	.db 0x95
      004DF7 90                    3969 	.db 0x90
      004DF8 E2                    3970 	.db 0xe2
      004DF9 95                    3971 	.db 0x95
      004DFA 90                    3972 	.db 0x90
      004DFB E2                    3973 	.db 0xe2
      004DFC 95                    3974 	.db 0x95
      004DFD 90                    3975 	.db 0x90
      004DFE E2                    3976 	.db 0xe2
      004DFF 95                    3977 	.db 0x95
      004E00 90                    3978 	.db 0x90
      004E01 E2                    3979 	.db 0xe2
      004E02 95                    3980 	.db 0x95
      004E03 90                    3981 	.db 0x90
      004E04 E2                    3982 	.db 0xe2
      004E05 95                    3983 	.db 0x95
      004E06 90                    3984 	.db 0x90
      004E07 E2                    3985 	.db 0xe2
      004E08 95                    3986 	.db 0x95
      004E09 90                    3987 	.db 0x90
      004E0A E2                    3988 	.db 0xe2
      004E0B 95                    3989 	.db 0x95
      004E0C 90                    3990 	.db 0x90
      004E0D E2                    3991 	.db 0xe2
      004E0E 95                    3992 	.db 0x95
      004E0F 90                    3993 	.db 0x90
      004E10 E2                    3994 	.db 0xe2
      004E11 95                    3995 	.db 0x95
      004E12 90                    3996 	.db 0x90
      004E13 E2                    3997 	.db 0xe2
      004E14 95                    3998 	.db 0x95
      004E15 90                    3999 	.db 0x90
      004E16 E2                    4000 	.db 0xe2
      004E17 95                    4001 	.db 0x95
      004E18 90                    4002 	.db 0x90
      004E19 E2                    4003 	.db 0xe2
      004E1A 95                    4004 	.db 0x95
      004E1B 90                    4005 	.db 0x90
      004E1C E2                    4006 	.db 0xe2
      004E1D 95                    4007 	.db 0x95
      004E1E 90                    4008 	.db 0x90
      004E1F E2                    4009 	.db 0xe2
      004E20 95                    4010 	.db 0x95
      004E21 90                    4011 	.db 0x90
      004E22 E2                    4012 	.db 0xe2
      004E23 95                    4013 	.db 0x95
      004E24 90                    4014 	.db 0x90
      004E25 E2                    4015 	.db 0xe2
      004E26 95                    4016 	.db 0x95
      004E27 90                    4017 	.db 0x90
      004E28 E2                    4018 	.db 0xe2
      004E29 95                    4019 	.db 0x95
      004E2A 90                    4020 	.db 0x90
      004E2B E2                    4021 	.db 0xe2
      004E2C 95                    4022 	.db 0x95
      004E2D 90                    4023 	.db 0x90
      004E2E E2                    4024 	.db 0xe2
      004E2F 95                    4025 	.db 0x95
      004E30 90                    4026 	.db 0x90
      004E31 E2                    4027 	.db 0xe2
      004E32 95                    4028 	.db 0x95
      004E33 90                    4029 	.db 0x90
      004E34 E2                    4030 	.db 0xe2
      004E35 95                    4031 	.db 0x95
      004E36 90                    4032 	.db 0x90
      004E37 E2                    4033 	.db 0xe2
      004E38 95                    4034 	.db 0x95
      004E39 90                    4035 	.db 0x90
      004E3A E2                    4036 	.db 0xe2
      004E3B 95                    4037 	.db 0x95
      004E3C 90                    4038 	.db 0x90
      004E3D E2                    4039 	.db 0xe2
      004E3E 95                    4040 	.db 0x95
      004E3F 90                    4041 	.db 0x90
      004E40 E2                    4042 	.db 0xe2
      004E41 95                    4043 	.db 0x95
      004E42 90                    4044 	.db 0x90
      004E43 E2                    4045 	.db 0xe2
      004E44 95                    4046 	.db 0x95
      004E45 90                    4047 	.db 0x90
      004E46 E2                    4048 	.db 0xe2
      004E47 95                    4049 	.db 0x95
      004E48 90                    4050 	.db 0x90
      004E49 E2                    4051 	.db 0xe2
      004E4A 95                    4052 	.db 0x95
      004E4B 90                    4053 	.db 0x90
      004E4C E2                    4054 	.db 0xe2
      004E4D 95                    4055 	.db 0x95
      004E4E 90                    4056 	.db 0x90
      004E4F E2                    4057 	.db 0xe2
      004E50 95                    4058 	.db 0x95
      004E51 90                    4059 	.db 0x90
      004E52 E2                    4060 	.db 0xe2
      004E53 95                    4061 	.db 0x95
      004E54 90                    4062 	.db 0x90
      004E55 E2                    4063 	.db 0xe2
      004E56 95                    4064 	.db 0x95
      004E57 90                    4065 	.db 0x90
      004E58 E2                    4066 	.db 0xe2
      004E59 95                    4067 	.db 0x95
      004E5A 90                    4068 	.db 0x90
      004E5B E2                    4069 	.db 0xe2
      004E5C 95                    4070 	.db 0x95
      004E5D 90                    4071 	.db 0x90
      004E5E E2                    4072 	.db 0xe2
      004E5F 95                    4073 	.db 0x95
      004E60 90                    4074 	.db 0x90
      004E61 E2                    4075 	.db 0xe2
      004E62 95                    4076 	.db 0x95
      004E63 90                    4077 	.db 0x90
      004E64 E2                    4078 	.db 0xe2
      004E65 95                    4079 	.db 0x95
      004E66 90                    4080 	.db 0x90
      004E67 E2                    4081 	.db 0xe2
      004E68 95                    4082 	.db 0x95
      004E69 90                    4083 	.db 0x90
      004E6A E2                    4084 	.db 0xe2
      004E6B 95                    4085 	.db 0x95
      004E6C 90                    4086 	.db 0x90
      004E6D E2                    4087 	.db 0xe2
      004E6E 95                    4088 	.db 0x95
      004E6F 90                    4089 	.db 0x90
      004E70 E2                    4090 	.db 0xe2
      004E71 95                    4091 	.db 0x95
      004E72 9D                    4092 	.db 0x9d
      004E73 0A                    4093 	.db 0x0a
      004E74 0D                    4094 	.db 0x0d
      004E75 00                    4095 	.db 0x00
                                   4096 	.area CSEG    (CODE)
                                   4097 	.area CONST   (CODE)
      004E76                       4098 ___str_26:
      004E76 E2                    4099 	.db 0xe2
      004E77 94                    4100 	.db 0x94
      004E78 82                    4101 	.db 0x82
      004E79 20 45 6E 74 65 72 20  4102 	.ascii " Enter data (hex, up to 2 characters): "
             64 61 74 61 20 28 68
             65 78 2C 20 75 70 20
             74 6F 20 32 20 63 68
             61 72 61 63 74 65 72
             73 29 3A 20
      004EA0 0A                    4103 	.db 0x0a
      004EA1 0D                    4104 	.db 0x0d
      004EA2 7C                    4105 	.ascii "|"
      004EA3 00                    4106 	.db 0x00
                                   4107 	.area CSEG    (CODE)
                                   4108 	.area CONST   (CODE)
      004EA4                       4109 ___str_27:
      004EA4 0A                    4110 	.db 0x0a
      004EA5 0D                    4111 	.db 0x0d
      004EA6 E2                    4112 	.db 0xe2
      004EA7 94                    4113 	.db 0x94
      004EA8 82                    4114 	.db 0x82
      004EA9 20 45 6E 74 65 72 65  4115 	.ascii " Entered data: 0x%03X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 33 58
      004EBE 0A                    4116 	.db 0x0a
      004EBF 0D                    4117 	.db 0x0d
      004EC0 00                    4118 	.db 0x00
                                   4119 	.area CSEG    (CODE)
                                   4120 	.area CONST   (CODE)
      004EC1                       4121 ___str_28:
      004EC1 44 61 74 61 20 6F 75  4122 	.ascii "Data out of Range"
             74 20 6F 66 20 52 61
             6E 67 65
      004ED2 0A                    4123 	.db 0x0a
      004ED3 0D                    4124 	.db 0x0d
      004ED4 00                    4125 	.db 0x00
                                   4126 	.area CSEG    (CODE)
                                   4127 	.area CONST   (CODE)
      004ED5                       4128 ___str_29:
      004ED5 45 72 72 6F 72 3A 20  4129 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      004EFD 0A                    4130 	.db 0x0a
      004EFE 0D                    4131 	.db 0x0d
      004EFF 00                    4132 	.db 0x00
                                   4133 	.area CSEG    (CODE)
                                   4134 	.area CONST   (CODE)
      004F00                       4135 ___str_30:
      004F00 45 72 72 6F 72 3A 20  4136 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      004F20 0A                    4137 	.db 0x0a
      004F21 0D                    4138 	.db 0x0d
      004F22 00                    4139 	.db 0x00
                                   4140 	.area CSEG    (CODE)
                                   4141 	.area CONST   (CODE)
      004F23                       4142 ___str_31:
      004F23 45 72 72 6F 72 3A 20  4143 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      004F39 0A                    4144 	.db 0x0a
      004F3A 0D                    4145 	.db 0x0d
      004F3B 00                    4146 	.db 0x00
                                   4147 	.area CSEG    (CODE)
                                   4148 	.area CONST   (CODE)
      004F3C                       4149 ___str_32:
      004F3C 63 68 65 63 6B 70 6F  4150 	.ascii "checkpoint 4"
             69 6E 74 20 34
      004F48 0A                    4151 	.db 0x0a
      004F49 0D                    4152 	.db 0x0d
      004F4A 00                    4153 	.db 0x00
                                   4154 	.area CSEG    (CODE)
                                   4155 	.area CONST   (CODE)
      004F4B                       4156 ___str_33:
      004F4B 7C 20 57 72 69 74 69  4157 	.ascii "| Writing at Address 0x%03X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 33 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      004F7D 0A                    4158 	.db 0x0a
      004F7E 0D                    4159 	.db 0x0d
      004F7F 00                    4160 	.db 0x00
                                   4161 	.area CSEG    (CODE)
                                   4162 	.area CONST   (CODE)
      004F80                       4163 ___str_34:
      004F80 E2                    4164 	.db 0xe2
      004F81 94                    4165 	.db 0x94
      004F82 82                    4166 	.db 0x82
      004F83 20 57 72 69 74 65 20  4167 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      004FB2 E2                    4168 	.db 0xe2
      004FB3 94                    4169 	.db 0x94
      004FB4 82                    4170 	.db 0x82
      004FB5 0A                    4171 	.db 0x0a
      004FB6 0D                    4172 	.db 0x0d
      004FB7 00                    4173 	.db 0x00
                                   4174 	.area CSEG    (CODE)
                                   4175 	.area CONST   (CODE)
      004FB8                       4176 ___str_35:
      004FB8 E2                    4177 	.db 0xe2
      004FB9 94                    4178 	.db 0x94
      004FBA 94                    4179 	.db 0x94
      004FBB E2                    4180 	.db 0xe2
      004FBC 94                    4181 	.db 0x94
      004FBD 80                    4182 	.db 0x80
      004FBE E2                    4183 	.db 0xe2
      004FBF 94                    4184 	.db 0x94
      004FC0 80                    4185 	.db 0x80
      004FC1 E2                    4186 	.db 0xe2
      004FC2 94                    4187 	.db 0x94
      004FC3 80                    4188 	.db 0x80
      004FC4 E2                    4189 	.db 0xe2
      004FC5 94                    4190 	.db 0x94
      004FC6 80                    4191 	.db 0x80
      004FC7 E2                    4192 	.db 0xe2
      004FC8 94                    4193 	.db 0x94
      004FC9 80                    4194 	.db 0x80
      004FCA E2                    4195 	.db 0xe2
      004FCB 94                    4196 	.db 0x94
      004FCC 80                    4197 	.db 0x80
      004FCD E2                    4198 	.db 0xe2
      004FCE 94                    4199 	.db 0x94
      004FCF 80                    4200 	.db 0x80
      004FD0 E2                    4201 	.db 0xe2
      004FD1 94                    4202 	.db 0x94
      004FD2 80                    4203 	.db 0x80
      004FD3 E2                    4204 	.db 0xe2
      004FD4 94                    4205 	.db 0x94
      004FD5 80                    4206 	.db 0x80
      004FD6 E2                    4207 	.db 0xe2
      004FD7 94                    4208 	.db 0x94
      004FD8 80                    4209 	.db 0x80
      004FD9 E2                    4210 	.db 0xe2
      004FDA 94                    4211 	.db 0x94
      004FDB 80                    4212 	.db 0x80
      004FDC E2                    4213 	.db 0xe2
      004FDD 94                    4214 	.db 0x94
      004FDE 80                    4215 	.db 0x80
      004FDF E2                    4216 	.db 0xe2
      004FE0 94                    4217 	.db 0x94
      004FE1 80                    4218 	.db 0x80
      004FE2 E2                    4219 	.db 0xe2
      004FE3 94                    4220 	.db 0x94
      004FE4 80                    4221 	.db 0x80
      004FE5 E2                    4222 	.db 0xe2
      004FE6 94                    4223 	.db 0x94
      004FE7 80                    4224 	.db 0x80
      004FE8 E2                    4225 	.db 0xe2
      004FE9 94                    4226 	.db 0x94
      004FEA 80                    4227 	.db 0x80
      004FEB E2                    4228 	.db 0xe2
      004FEC 94                    4229 	.db 0x94
      004FED 80                    4230 	.db 0x80
      004FEE E2                    4231 	.db 0xe2
      004FEF 94                    4232 	.db 0x94
      004FF0 80                    4233 	.db 0x80
      004FF1 E2                    4234 	.db 0xe2
      004FF2 94                    4235 	.db 0x94
      004FF3 80                    4236 	.db 0x80
      004FF4 E2                    4237 	.db 0xe2
      004FF5 94                    4238 	.db 0x94
      004FF6 80                    4239 	.db 0x80
      004FF7 E2                    4240 	.db 0xe2
      004FF8 94                    4241 	.db 0x94
      004FF9 80                    4242 	.db 0x80
      004FFA E2                    4243 	.db 0xe2
      004FFB 94                    4244 	.db 0x94
      004FFC 80                    4245 	.db 0x80
      004FFD E2                    4246 	.db 0xe2
      004FFE 94                    4247 	.db 0x94
      004FFF 80                    4248 	.db 0x80
      005000 E2                    4249 	.db 0xe2
      005001 94                    4250 	.db 0x94
      005002 80                    4251 	.db 0x80
      005003 E2                    4252 	.db 0xe2
      005004 94                    4253 	.db 0x94
      005005 80                    4254 	.db 0x80
      005006 E2                    4255 	.db 0xe2
      005007 94                    4256 	.db 0x94
      005008 80                    4257 	.db 0x80
      005009 E2                    4258 	.db 0xe2
      00500A 94                    4259 	.db 0x94
      00500B 80                    4260 	.db 0x80
      00500C E2                    4261 	.db 0xe2
      00500D 94                    4262 	.db 0x94
      00500E 80                    4263 	.db 0x80
      00500F E2                    4264 	.db 0xe2
      005010 94                    4265 	.db 0x94
      005011 80                    4266 	.db 0x80
      005012 E2                    4267 	.db 0xe2
      005013 94                    4268 	.db 0x94
      005014 80                    4269 	.db 0x80
      005015 E2                    4270 	.db 0xe2
      005016 94                    4271 	.db 0x94
      005017 80                    4272 	.db 0x80
      005018 E2                    4273 	.db 0xe2
      005019 94                    4274 	.db 0x94
      00501A 80                    4275 	.db 0x80
      00501B E2                    4276 	.db 0xe2
      00501C 94                    4277 	.db 0x94
      00501D 80                    4278 	.db 0x80
      00501E E2                    4279 	.db 0xe2
      00501F 94                    4280 	.db 0x94
      005020 80                    4281 	.db 0x80
      005021 E2                    4282 	.db 0xe2
      005022 94                    4283 	.db 0x94
      005023 80                    4284 	.db 0x80
      005024 E2                    4285 	.db 0xe2
      005025 94                    4286 	.db 0x94
      005026 80                    4287 	.db 0x80
      005027 E2                    4288 	.db 0xe2
      005028 94                    4289 	.db 0x94
      005029 80                    4290 	.db 0x80
      00502A E2                    4291 	.db 0xe2
      00502B 94                    4292 	.db 0x94
      00502C 80                    4293 	.db 0x80
      00502D E2                    4294 	.db 0xe2
      00502E 94                    4295 	.db 0x94
      00502F 80                    4296 	.db 0x80
      005030 E2                    4297 	.db 0xe2
      005031 94                    4298 	.db 0x94
      005032 80                    4299 	.db 0x80
      005033 E2                    4300 	.db 0xe2
      005034 94                    4301 	.db 0x94
      005035 80                    4302 	.db 0x80
      005036 E2                    4303 	.db 0xe2
      005037 94                    4304 	.db 0x94
      005038 80                    4305 	.db 0x80
      005039 E2                    4306 	.db 0xe2
      00503A 94                    4307 	.db 0x94
      00503B 80                    4308 	.db 0x80
      00503C E2                    4309 	.db 0xe2
      00503D 94                    4310 	.db 0x94
      00503E 80                    4311 	.db 0x80
      00503F E2                    4312 	.db 0xe2
      005040 94                    4313 	.db 0x94
      005041 80                    4314 	.db 0x80
      005042 E2                    4315 	.db 0xe2
      005043 94                    4316 	.db 0x94
      005044 80                    4317 	.db 0x80
      005045 E2                    4318 	.db 0xe2
      005046 94                    4319 	.db 0x94
      005047 80                    4320 	.db 0x80
      005048 E2                    4321 	.db 0xe2
      005049 94                    4322 	.db 0x94
      00504A 98                    4323 	.db 0x98
      00504B 0A                    4324 	.db 0x0a
      00504C 0D                    4325 	.db 0x0d
      00504D 00                    4326 	.db 0x00
                                   4327 	.area CSEG    (CODE)
                                   4328 	.area CONST   (CODE)
      00504E                       4329 ___str_36:
      00504E 45 72 72 6F 72 3A 20  4330 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      00507B 0A                    4331 	.db 0x0a
      00507C 0D                    4332 	.db 0x0d
      00507D 00                    4333 	.db 0x00
                                   4334 	.area CSEG    (CODE)
                                   4335 	.area CONST   (CODE)
      00507E                       4336 ___str_37:
      00507E 45 72 72 6F 72 3A 20  4337 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      0050AA 0A                    4338 	.db 0x0a
      0050AB 0D                    4339 	.db 0x0d
      0050AC 00                    4340 	.db 0x00
                                   4341 	.area CSEG    (CODE)
                                   4342 	.area CONST   (CODE)
      0050AD                       4343 ___str_38:
      0050AD E2                    4344 	.db 0xe2
      0050AE 94                    4345 	.db 0x94
      0050AF 82                    4346 	.db 0x82
      0050B0 20 52 65 61 64 69 6E  4347 	.ascii " Reading from Adress: 0x%03X Data: 0x%02X                   "
             67 20 66 72 6F 6D 20
             41 64 72 65 73 73 3A
             20 30 78 25 30 33 58
             20 44 61 74 61 3A 20
             30 78 25 30 32 58 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      0050EC 20                    4348 	.ascii " "
      0050ED 0A                    4349 	.db 0x0a
      0050EE 0D                    4350 	.db 0x0d
      0050EF 00                    4351 	.db 0x00
                                   4352 	.area CSEG    (CODE)
                                   4353 	.area CONST   (CODE)
      0050F0                       4354 ___str_39:
      0050F0 7C 20 30 78 25 30 33  4355 	.ascii "| 0x%03X : 0x%02X "
             58 20 3A 20 30 78 25
             30 32 58 20
      005102 0A                    4356 	.db 0x0a
      005103 0D                    4357 	.db 0x0d
      005104 00                    4358 	.db 0x00
                                   4359 	.area CSEG    (CODE)
                                   4360 	.area CONST   (CODE)
      005105                       4361 ___str_40:
      005105 E2                    4362 	.db 0xe2
      005106 94                    4363 	.db 0x94
      005107 82                    4364 	.db 0x82
      005108 20 52 65 61 64 20 73  4365 	.ascii " Read successful!                 "
             75 63 63 65 73 73 66
             75 6C 21 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20
      00512A E2                    4366 	.db 0xe2
      00512B 94                    4367 	.db 0x94
      00512C 82                    4368 	.db 0x82
      00512D 0A                    4369 	.db 0x0a
      00512E 0D                    4370 	.db 0x0d
      00512F 00                    4371 	.db 0x00
                                   4372 	.area CSEG    (CODE)
                                   4373 	.area CONST   (CODE)
      005130                       4374 ___str_41:
      005130 41 43 4B 20 44 49 44  4375 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      005142 0A                    4376 	.db 0x0a
      005143 0D                    4377 	.db 0x0d
      005144 00                    4378 	.db 0x00
                                   4379 	.area CSEG    (CODE)
                                   4380 	.area CONST   (CODE)
      005145                       4381 ___str_42:
      005145 57 72 69 74 69 6E 67  4382 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      00516A 0A                    4383 	.db 0x0a
      00516B 0D                    4384 	.db 0x0d
      00516C 00                    4385 	.db 0x00
                                   4386 	.area CSEG    (CODE)
                                   4387 	.area CONST   (CODE)
      00516D                       4388 ___str_43:
      00516D 52 65 61 64 20 62 61  4389 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      005192 0A                    4390 	.db 0x0a
      005193 0D                    4391 	.db 0x0d
      005194 00                    4392 	.db 0x00
                                   4393 	.area CSEG    (CODE)
                                   4394 	.area CONST   (CODE)
      005195                       4395 ___str_44:
      005195 4D 41 54 43 48 20 2D  4396 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      0051B3 0A                    4397 	.db 0x0a
      0051B4 0D                    4398 	.db 0x0d
      0051B5 00                    4399 	.db 0x00
                                   4400 	.area CSEG    (CODE)
                                   4401 	.area CONST   (CODE)
      0051B6                       4402 ___str_45:
      0051B6 45 52 52 4F 52 20 2D  4403 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      0051CC 0A                    4404 	.db 0x0a
      0051CD 0D                    4405 	.db 0x0d
      0051CE 00                    4406 	.db 0x00
                                   4407 	.area CSEG    (CODE)
                                   4408 	.area XINIT   (CODE)
      0051DA                       4409 __xinit__address_range_flag:
      0051DA 01 00                 4410 	.byte #0x01, #0x00	;  1
      0051DC                       4411 __xinit__data_range_flag:
      0051DC 01 00                 4412 	.byte #0x01, #0x00	;  1
      0051DE                       4413 __xinit__block:
      0051DE 00 00                 4414 	.byte #0x00, #0x00	; 0
                                   4415 	.area CABS    (ABS,CODE)
