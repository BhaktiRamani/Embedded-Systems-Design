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
      000414                        489 _i2c_write_data_65536_98:
      000414                        490 	.ds 1
      000415                        491 _i2c_read_ACK_65536_103:
      000415                        492 	.ds 2
      000417                        493 _i2c_read_buff_65536_104:
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
      00308F 74 27            [12]  628 	mov	a,#___str_0
      003091 C0 E0            [24]  629 	push	acc
      003093 74 46            [12]  630 	mov	a,#(___str_0 >> 8)
      003095 C0 E0            [24]  631 	push	acc
      003097 74 80            [12]  632 	mov	a,#0x80
      003099 C0 E0            [24]  633 	push	acc
      00309B 12 3B C5         [24]  634 	lcall	_printf
      00309E 15 81            [12]  635 	dec	sp
      0030A0 15 81            [12]  636 	dec	sp
      0030A2 15 81            [12]  637 	dec	sp
                                    638 ;	8051_i2c_eeprom.c:47: printf("║           I2C Memory Management System v1.0            ║\n\r");
      0030A4 74 D9            [12]  639 	mov	a,#___str_1
      0030A6 C0 E0            [24]  640 	push	acc
      0030A8 74 46            [12]  641 	mov	a,#(___str_1 >> 8)
      0030AA C0 E0            [24]  642 	push	acc
      0030AC 74 80            [12]  643 	mov	a,#0x80
      0030AE C0 E0            [24]  644 	push	acc
      0030B0 12 3B C5         [24]  645 	lcall	_printf
      0030B3 15 81            [12]  646 	dec	sp
      0030B5 15 81            [12]  647 	dec	sp
      0030B7 15 81            [12]  648 	dec	sp
                                    649 ;	8051_i2c_eeprom.c:48: printf("╚════════════════════════════════════════════════════════╝\n\r");
      0030B9 74 1A            [12]  650 	mov	a,#___str_2
      0030BB C0 E0            [24]  651 	push	acc
      0030BD 74 47            [12]  652 	mov	a,#(___str_2 >> 8)
      0030BF C0 E0            [24]  653 	push	acc
      0030C1 74 80            [12]  654 	mov	a,#0x80
      0030C3 C0 E0            [24]  655 	push	acc
      0030C5 12 3B C5         [24]  656 	lcall	_printf
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
      0030CF 74 CB            [12]  671 	mov	a,#___str_3
      0030D1 C0 E0            [24]  672 	push	acc
      0030D3 74 47            [12]  673 	mov	a,#(___str_3 >> 8)
      0030D5 C0 E0            [24]  674 	push	acc
      0030D7 74 80            [12]  675 	mov	a,#0x80
      0030D9 C0 E0            [24]  676 	push	acc
      0030DB 12 3B C5         [24]  677 	lcall	_printf
      0030DE 15 81            [12]  678 	dec	sp
      0030E0 15 81            [12]  679 	dec	sp
      0030E2 15 81            [12]  680 	dec	sp
                                    681 ;	8051_i2c_eeprom.c:55: printf("│  Command   │               Description                  │\n\r");
      0030E4 74 81            [12]  682 	mov	a,#___str_4
      0030E6 C0 E0            [24]  683 	push	acc
      0030E8 74 48            [12]  684 	mov	a,#(___str_4 >> 8)
      0030EA C0 E0            [24]  685 	push	acc
      0030EC 74 80            [12]  686 	mov	a,#0x80
      0030EE C0 E0            [24]  687 	push	acc
      0030F0 12 3B C5         [24]  688 	lcall	_printf
      0030F3 15 81            [12]  689 	dec	sp
      0030F5 15 81            [12]  690 	dec	sp
      0030F7 15 81            [12]  691 	dec	sp
                                    692 ;	8051_i2c_eeprom.c:56: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      0030F9 74 C5            [12]  693 	mov	a,#___str_5
      0030FB C0 E0            [24]  694 	push	acc
      0030FD 74 48            [12]  695 	mov	a,#(___str_5 >> 8)
      0030FF C0 E0            [24]  696 	push	acc
      003101 74 80            [12]  697 	mov	a,#0x80
      003103 C0 E0            [24]  698 	push	acc
      003105 12 3B C5         [24]  699 	lcall	_printf
      003108 15 81            [12]  700 	dec	sp
      00310A 15 81            [12]  701 	dec	sp
      00310C 15 81            [12]  702 	dec	sp
                                    703 ;	8051_i2c_eeprom.c:57: printf("│     R      │ Read from address                          │\n\r");
      00310E 74 79            [12]  704 	mov	a,#___str_6
      003110 C0 E0            [24]  705 	push	acc
      003112 74 49            [12]  706 	mov	a,#(___str_6 >> 8)
      003114 C0 E0            [24]  707 	push	acc
      003116 74 80            [12]  708 	mov	a,#0x80
      003118 C0 E0            [24]  709 	push	acc
      00311A 12 3B C5         [24]  710 	lcall	_printf
      00311D 15 81            [12]  711 	dec	sp
      00311F 15 81            [12]  712 	dec	sp
      003121 15 81            [12]  713 	dec	sp
                                    714 ;	8051_i2c_eeprom.c:58: printf("│     W      │ Write data to address                      │\n\r");
      003123 74 BD            [12]  715 	mov	a,#___str_7
      003125 C0 E0            [24]  716 	push	acc
      003127 74 49            [12]  717 	mov	a,#(___str_7 >> 8)
      003129 C0 E0            [24]  718 	push	acc
      00312B 74 80            [12]  719 	mov	a,#0x80
      00312D C0 E0            [24]  720 	push	acc
      00312F 12 3B C5         [24]  721 	lcall	_printf
      003132 15 81            [12]  722 	dec	sp
      003134 15 81            [12]  723 	dec	sp
      003136 15 81            [12]  724 	dec	sp
                                    725 ;	8051_i2c_eeprom.c:59: printf("│     H      │ Display hex dump                           │\n\r");
      003138 74 01            [12]  726 	mov	a,#___str_8
      00313A C0 E0            [24]  727 	push	acc
      00313C 74 4A            [12]  728 	mov	a,#(___str_8 >> 8)
      00313E C0 E0            [24]  729 	push	acc
      003140 74 80            [12]  730 	mov	a,#0x80
      003142 C0 E0            [24]  731 	push	acc
      003144 12 3B C5         [24]  732 	lcall	_printf
      003147 15 81            [12]  733 	dec	sp
      003149 15 81            [12]  734 	dec	sp
      00314B 15 81            [12]  735 	dec	sp
                                    736 ;	8051_i2c_eeprom.c:60: printf("│     X      │ Reset memory system                        │\n\r");
      00314D 74 45            [12]  737 	mov	a,#___str_9
      00314F C0 E0            [24]  738 	push	acc
      003151 74 4A            [12]  739 	mov	a,#(___str_9 >> 8)
      003153 C0 E0            [24]  740 	push	acc
      003155 74 80            [12]  741 	mov	a,#0x80
      003157 C0 E0            [24]  742 	push	acc
      003159 12 3B C5         [24]  743 	lcall	_printf
      00315C 15 81            [12]  744 	dec	sp
      00315E 15 81            [12]  745 	dec	sp
      003160 15 81            [12]  746 	dec	sp
                                    747 ;	8051_i2c_eeprom.c:61: printf("│     ?      │ Display this help menu                     │\n\r");
      003162 74 89            [12]  748 	mov	a,#___str_10
      003164 C0 E0            [24]  749 	push	acc
      003166 74 4A            [12]  750 	mov	a,#(___str_10 >> 8)
      003168 C0 E0            [24]  751 	push	acc
      00316A 74 80            [12]  752 	mov	a,#0x80
      00316C C0 E0            [24]  753 	push	acc
      00316E 12 3B C5         [24]  754 	lcall	_printf
      003171 15 81            [12]  755 	dec	sp
      003173 15 81            [12]  756 	dec	sp
      003175 15 81            [12]  757 	dec	sp
                                    758 ;	8051_i2c_eeprom.c:62: printf("│     Q      │ Quit program                               │\n\r");
      003177 74 CD            [12]  759 	mov	a,#___str_11
      003179 C0 E0            [24]  760 	push	acc
      00317B 74 4A            [12]  761 	mov	a,#(___str_11 >> 8)
      00317D C0 E0            [24]  762 	push	acc
      00317F 74 80            [12]  763 	mov	a,#0x80
      003181 C0 E0            [24]  764 	push	acc
      003183 12 3B C5         [24]  765 	lcall	_printf
      003186 15 81            [12]  766 	dec	sp
      003188 15 81            [12]  767 	dec	sp
      00318A 15 81            [12]  768 	dec	sp
                                    769 ;	8051_i2c_eeprom.c:63: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      00318C 74 11            [12]  770 	mov	a,#___str_12
      00318E C0 E0            [24]  771 	push	acc
      003190 74 4B            [12]  772 	mov	a,#(___str_12 >> 8)
      003192 C0 E0            [24]  773 	push	acc
      003194 74 80            [12]  774 	mov	a,#0x80
      003196 C0 E0            [24]  775 	push	acc
      003198 12 3B C5         [24]  776 	lcall	_printf
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
      0031AE 12 3A 86         [24]  804 	lcall	_i2c_start
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
      0031C0 74 C5            [12]  816 	mov	a,#___str_13
      0031C2 C0 E0            [24]  817 	push	acc
      0031C4 74 4B            [12]  818 	mov	a,#(___str_13 >> 8)
      0031C6 C0 E0            [24]  819 	push	acc
      0031C8 74 80            [12]  820 	mov	a,#0x80
      0031CA C0 E0            [24]  821 	push	acc
      0031CC 12 3B C5         [24]  822 	lcall	_printf
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
      0031EB 74 CE            [12]  840 	mov	a,#___str_14
      0031ED C0 E0            [24]  841 	push	acc
      0031EF 74 4B            [12]  842 	mov	a,#(___str_14 >> 8)
      0031F1 C0 E0            [24]  843 	push	acc
      0031F3 74 80            [12]  844 	mov	a,#0x80
      0031F5 C0 E0            [24]  845 	push	acc
      0031F7 12 3B C5         [24]  846 	lcall	_printf
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
      003249 74 40            [12]  901 	mov	a,#___str_15
      00324B C0 E0            [24]  902 	push	acc
      00324D 74 4C            [12]  903 	mov	a,#(___str_15 >> 8)
      00324F C0 E0            [24]  904 	push	acc
      003251 74 80            [12]  905 	mov	a,#0x80
      003253 C0 E0            [24]  906 	push	acc
      003255 12 3B C5         [24]  907 	lcall	_printf
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
      003273 74 51            [12]  926 	mov	a,#___str_16
      003275 C0 E0            [24]  927 	push	acc
      003277 74 4C            [12]  928 	mov	a,#(___str_16 >> 8)
      003279 C0 E0            [24]  929 	push	acc
      00327B 74 80            [12]  930 	mov	a,#0x80
      00327D C0 E0            [24]  931 	push	acc
      00327F 12 3B C5         [24]  932 	lcall	_printf
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
      0032AF 74 C5            [12]  963 	mov	a,#___str_17
      0032B1 C0 E0            [24]  964 	push	acc
      0032B3 74 4C            [12]  965 	mov	a,#(___str_17 >> 8)
      0032B5 C0 E0            [24]  966 	push	acc
      0032B7 74 80            [12]  967 	mov	a,#0x80
      0032B9 C0 E0            [24]  968 	push	acc
      0032BB 12 3B C5         [24]  969 	lcall	_printf
      0032BE E5 81            [12]  970 	mov	a,sp
      0032C0 24 FB            [12]  971 	add	a,#0xfb
      0032C2 F5 81            [12]  972 	mov	sp,a
      0032C4 D0 06            [24]  973 	pop	ar6
      0032C6 D0 07            [24]  974 	pop	ar7
                                    975 ;	8051_i2c_eeprom.c:113: eeprom_read(addr);
      0032C8 8E 82            [24]  976 	mov	dpl,r6
      0032CA 8F 83            [24]  977 	mov	dph,r7
      0032CC 12 38 45         [24]  978 	lcall	_eeprom_read
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
      0032D8 74 F1            [12]  990 	mov	a,#___str_18
      0032DA C0 E0            [24]  991 	push	acc
      0032DC 74 4C            [12]  992 	mov	a,#(___str_18 >> 8)
      0032DE C0 E0            [24]  993 	push	acc
      0032E0 74 80            [12]  994 	mov	a,#0x80
      0032E2 C0 E0            [24]  995 	push	acc
      0032E4 12 3B C5         [24]  996 	lcall	_printf
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
      0032F0 74 01            [12] 1018 	mov	a,#___str_19
      0032F2 C0 E0            [24] 1019 	push	acc
      0032F4 74 4D            [12] 1020 	mov	a,#(___str_19 >> 8)
      0032F6 C0 E0            [24] 1021 	push	acc
      0032F8 74 80            [12] 1022 	mov	a,#0x80
      0032FA C0 E0            [24] 1023 	push	acc
      0032FC 12 3B C5         [24] 1024 	lcall	_printf
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
      003316 74 32            [12] 1039 	mov	a,#___str_20
      003318 C0 E0            [24] 1040 	push	acc
      00331A 74 4D            [12] 1041 	mov	a,#(___str_20 >> 8)
      00331C C0 E0            [24] 1042 	push	acc
      00331E 74 80            [12] 1043 	mov	a,#0x80
      003320 C0 E0            [24] 1044 	push	acc
      003322 12 3B C5         [24] 1045 	lcall	_printf
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
      003474 74 37            [12] 1294 	mov	a,#___str_21
      003476 C0 E0            [24] 1295 	push	acc
      003478 74 4D            [12] 1296 	mov	a,#(___str_21 >> 8)
      00347A C0 E0            [24] 1297 	push	acc
      00347C 74 80            [12] 1298 	mov	a,#0x80
      00347E C0 E0            [24] 1299 	push	acc
      003480 12 3B C5         [24] 1300 	lcall	_printf
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
      003496 74 57            [12] 1314 	mov	a,#___str_22
      003498 C0 E0            [24] 1315 	push	acc
      00349A 74 4D            [12] 1316 	mov	a,#(___str_22 >> 8)
      00349C C0 E0            [24] 1317 	push	acc
      00349E 74 80            [12] 1318 	mov	a,#0x80
      0034A0 C0 E0            [24] 1319 	push	acc
      0034A2 12 3B C5         [24] 1320 	lcall	_printf
      0034A5 15 81            [12] 1321 	dec	sp
      0034A7 15 81            [12] 1322 	dec	sp
      0034A9 15 81            [12] 1323 	dec	sp
                                   1324 ;	8051_i2c_eeprom.c:176: printf("║       ! ADDRESS OUT OF RANGE !         ║\n\r");
      0034AB 74 DE            [12] 1325 	mov	a,#___str_23
      0034AD C0 E0            [24] 1326 	push	acc
      0034AF 74 4D            [12] 1327 	mov	a,#(___str_23 >> 8)
      0034B1 C0 E0            [24] 1328 	push	acc
      0034B3 74 80            [12] 1329 	mov	a,#0x80
      0034B5 C0 E0            [24] 1330 	push	acc
      0034B7 12 3B C5         [24] 1331 	lcall	_printf
      0034BA 15 81            [12] 1332 	dec	sp
      0034BC 15 81            [12] 1333 	dec	sp
      0034BE 15 81            [12] 1334 	dec	sp
                                   1335 ;	8051_i2c_eeprom.c:177: printf("║     Please Enter Valid Address         ║\n\r");
      0034C0 74 0F            [12] 1336 	mov	a,#___str_24
      0034C2 C0 E0            [24] 1337 	push	acc
      0034C4 74 4E            [12] 1338 	mov	a,#(___str_24 >> 8)
      0034C6 C0 E0            [24] 1339 	push	acc
      0034C8 74 80            [12] 1340 	mov	a,#0x80
      0034CA C0 E0            [24] 1341 	push	acc
      0034CC 12 3B C5         [24] 1342 	lcall	_printf
      0034CF 15 81            [12] 1343 	dec	sp
      0034D1 15 81            [12] 1344 	dec	sp
      0034D3 15 81            [12] 1345 	dec	sp
                                   1346 ;	8051_i2c_eeprom.c:178: printf("╚══════════════════════════════════════════╝\n\r");
      0034D5 74 40            [12] 1347 	mov	a,#___str_25
      0034D7 C0 E0            [24] 1348 	push	acc
      0034D9 74 4E            [12] 1349 	mov	a,#(___str_25 >> 8)
      0034DB C0 E0            [24] 1350 	push	acc
      0034DD 74 80            [12] 1351 	mov	a,#0x80
      0034DF C0 E0            [24] 1352 	push	acc
      0034E1 12 3B C5         [24] 1353 	lcall	_printf
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
      003509 74 C7            [12] 1398 	mov	a,#___str_26
      00350B C0 E0            [24] 1399 	push	acc
      00350D 74 4E            [12] 1400 	mov	a,#(___str_26 >> 8)
      00350F C0 E0            [24] 1401 	push	acc
      003511 74 80            [12] 1402 	mov	a,#0x80
      003513 C0 E0            [24] 1403 	push	acc
      003515 12 3B C5         [24] 1404 	lcall	_printf
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
      00352F 74 32            [12] 1419 	mov	a,#___str_20
      003531 C0 E0            [24] 1420 	push	acc
      003533 74 4D            [12] 1421 	mov	a,#(___str_20 >> 8)
      003535 C0 E0            [24] 1422 	push	acc
      003537 74 80            [12] 1423 	mov	a,#0x80
      003539 C0 E0            [24] 1424 	push	acc
      00353B 12 3B C5         [24] 1425 	lcall	_printf
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
      003643 74 F5            [12] 1615 	mov	a,#___str_27
      003645 C0 E0            [24] 1616 	push	acc
      003647 74 4E            [12] 1617 	mov	a,#(___str_27 >> 8)
      003649 C0 E0            [24] 1618 	push	acc
      00364B 74 80            [12] 1619 	mov	a,#0x80
      00364D C0 E0            [24] 1620 	push	acc
      00364F 12 3B C5         [24] 1621 	lcall	_printf
      003652 E5 81            [12] 1622 	mov	a,sp
      003654 24 FB            [12] 1623 	add	a,#0xfb
      003656 F5 81            [12] 1624 	mov	sp,a
      003658 D0 07            [24] 1625 	pop	ar7
                                   1626 ;	8051_i2c_eeprom.c:234: if(data > 0xFE) 
      00365A EF               [12] 1627 	mov	a,r7
      00365B 24 01            [12] 1628 	add	a,#0xff - 0xfe
      00365D 50 20            [24] 1629 	jnc	00127$
                                   1630 ;	8051_i2c_eeprom.c:236: printf("Data out of Range\n\r");
      00365F 74 12            [12] 1631 	mov	a,#___str_28
      003661 C0 E0            [24] 1632 	push	acc
      003663 74 4F            [12] 1633 	mov	a,#(___str_28 >> 8)
      003665 C0 E0            [24] 1634 	push	acc
      003667 74 80            [12] 1635 	mov	a,#0x80
      003669 C0 E0            [24] 1636 	push	acc
      00366B 12 3B C5         [24] 1637 	lcall	_printf
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
                                   1674 ;	8051_i2c_eeprom.c:246: printf("check point 2\n\r");
      00368D 74 26            [12] 1675 	mov	a,#___str_29
      00368F C0 E0            [24] 1676 	push	acc
      003691 74 4F            [12] 1677 	mov	a,#(___str_29 >> 8)
      003693 C0 E0            [24] 1678 	push	acc
      003695 74 80            [12] 1679 	mov	a,#0x80
      003697 C0 E0            [24] 1680 	push	acc
      003699 12 3B C5         [24] 1681 	lcall	_printf
      00369C 15 81            [12] 1682 	dec	sp
      00369E 15 81            [12] 1683 	dec	sp
      0036A0 15 81            [12] 1684 	dec	sp
                                   1685 ;	8051_i2c_eeprom.c:247: if(address_range_flag & data_range_flag)
      0036A2 90 04 51         [24] 1686 	mov	dptr,#_address_range_flag
      0036A5 E0               [24] 1687 	movx	a,@dptr
      0036A6 FE               [12] 1688 	mov	r6,a
      0036A7 A3               [24] 1689 	inc	dptr
      0036A8 E0               [24] 1690 	movx	a,@dptr
      0036A9 FF               [12] 1691 	mov	r7,a
      0036AA 90 04 53         [24] 1692 	mov	dptr,#_data_range_flag
      0036AD E0               [24] 1693 	movx	a,@dptr
      0036AE FC               [12] 1694 	mov	r4,a
      0036AF A3               [24] 1695 	inc	dptr
      0036B0 E0               [24] 1696 	movx	a,@dptr
      0036B1 FD               [12] 1697 	mov	r5,a
      0036B2 EC               [12] 1698 	mov	a,r4
      0036B3 52 06            [12] 1699 	anl	ar6,a
      0036B5 ED               [12] 1700 	mov	a,r5
      0036B6 52 07            [12] 1701 	anl	ar7,a
      0036B8 EE               [12] 1702 	mov	a,r6
      0036B9 4F               [12] 1703 	orl	a,r7
      0036BA 70 03            [24] 1704 	jnz	00140$
      0036BC 02 38 2C         [24] 1705 	ljmp	00109$
      0036BF                       1706 00140$:
                                   1707 ;	8051_i2c_eeprom.c:249: printf("checkpoint 3\n\r");
      0036BF 74 36            [12] 1708 	mov	a,#___str_30
      0036C1 C0 E0            [24] 1709 	push	acc
      0036C3 74 4F            [12] 1710 	mov	a,#(___str_30 >> 8)
      0036C5 C0 E0            [24] 1711 	push	acc
      0036C7 74 80            [12] 1712 	mov	a,#0x80
      0036C9 C0 E0            [24] 1713 	push	acc
      0036CB 12 3B C5         [24] 1714 	lcall	_printf
      0036CE 15 81            [12] 1715 	dec	sp
      0036D0 15 81            [12] 1716 	dec	sp
      0036D2 15 81            [12] 1717 	dec	sp
                                   1718 ;	8051_i2c_eeprom.c:250: i2c_start();
      0036D4 12 3A 86         [24] 1719 	lcall	_i2c_start
                                   1720 ;	8051_i2c_eeprom.c:253: if(!i2c_write(EEPROM_ID | block | WRITE)) {
      0036D7 90 04 55         [24] 1721 	mov	dptr,#_block
      0036DA E0               [24] 1722 	movx	a,@dptr
      0036DB FE               [12] 1723 	mov	r6,a
      0036DC A3               [24] 1724 	inc	dptr
      0036DD E0               [24] 1725 	movx	a,@dptr
      0036DE 43 06 A0         [24] 1726 	orl	ar6,#0xa0
      0036E1 8E 82            [24] 1727 	mov	dpl,r6
      0036E3 12 39 99         [24] 1728 	lcall	_i2c_write
      0036E6 E5 82            [12] 1729 	mov	a,dpl
      0036E8 85 83 F0         [24] 1730 	mov	b,dph
      0036EB 45 F0            [12] 1731 	orl	a,b
      0036ED 70 1C            [24] 1732 	jnz	00102$
                                   1733 ;	8051_i2c_eeprom.c:254: printf("Error: No ACK for device address (write)\n\r");
      0036EF 74 45            [12] 1734 	mov	a,#___str_31
      0036F1 C0 E0            [24] 1735 	push	acc
      0036F3 74 4F            [12] 1736 	mov	a,#(___str_31 >> 8)
      0036F5 C0 E0            [24] 1737 	push	acc
      0036F7 74 80            [12] 1738 	mov	a,#0x80
      0036F9 C0 E0            [24] 1739 	push	acc
      0036FB 12 3B C5         [24] 1740 	lcall	_printf
      0036FE 15 81            [12] 1741 	dec	sp
      003700 15 81            [12] 1742 	dec	sp
      003702 15 81            [12] 1743 	dec	sp
                                   1744 ;	8051_i2c_eeprom.c:255: i2c_stop();
      003704 12 3A 9B         [24] 1745 	lcall	_i2c_stop
                                   1746 ;	8051_i2c_eeprom.c:256: return 0;
      003707 90 00 00         [24] 1747 	mov	dptr,#0x0000
      00370A 22               [24] 1748 	ret
      00370B                       1749 00102$:
                                   1750 ;	8051_i2c_eeprom.c:260: if(!i2c_write((unsigned char)address)) {
      00370B 90 04 10         [24] 1751 	mov	dptr,#_eeprom_write_address_65536_84
      00370E E0               [24] 1752 	movx	a,@dptr
      00370F FE               [12] 1753 	mov	r6,a
      003710 A3               [24] 1754 	inc	dptr
      003711 E0               [24] 1755 	movx	a,@dptr
      003712 FF               [12] 1756 	mov	r7,a
      003713 8E 05            [24] 1757 	mov	ar5,r6
      003715 8D 82            [24] 1758 	mov	dpl,r5
      003717 C0 07            [24] 1759 	push	ar7
      003719 C0 06            [24] 1760 	push	ar6
      00371B 12 39 99         [24] 1761 	lcall	_i2c_write
      00371E E5 82            [12] 1762 	mov	a,dpl
      003720 85 83 F0         [24] 1763 	mov	b,dph
      003723 D0 06            [24] 1764 	pop	ar6
      003725 D0 07            [24] 1765 	pop	ar7
      003727 45 F0            [12] 1766 	orl	a,b
      003729 70 1C            [24] 1767 	jnz	00104$
                                   1768 ;	8051_i2c_eeprom.c:261: printf("Error: No ACK for memory address\n\r");
      00372B 74 70            [12] 1769 	mov	a,#___str_32
      00372D C0 E0            [24] 1770 	push	acc
      00372F 74 4F            [12] 1771 	mov	a,#(___str_32 >> 8)
      003731 C0 E0            [24] 1772 	push	acc
      003733 74 80            [12] 1773 	mov	a,#0x80
      003735 C0 E0            [24] 1774 	push	acc
      003737 12 3B C5         [24] 1775 	lcall	_printf
      00373A 15 81            [12] 1776 	dec	sp
      00373C 15 81            [12] 1777 	dec	sp
      00373E 15 81            [12] 1778 	dec	sp
                                   1779 ;	8051_i2c_eeprom.c:262: i2c_stop();
      003740 12 3A 9B         [24] 1780 	lcall	_i2c_stop
                                   1781 ;	8051_i2c_eeprom.c:263: return 0;
      003743 90 00 00         [24] 1782 	mov	dptr,#0x0000
      003746 22               [24] 1783 	ret
      003747                       1784 00104$:
                                   1785 ;	8051_i2c_eeprom.c:267: if(!i2c_write(data)) {
      003747 90 04 0F         [24] 1786 	mov	dptr,#_eeprom_write_PARM_2
      00374A E0               [24] 1787 	movx	a,@dptr
      00374B FD               [12] 1788 	mov	r5,a
      00374C F5 82            [12] 1789 	mov	dpl,a
      00374E C0 07            [24] 1790 	push	ar7
      003750 C0 06            [24] 1791 	push	ar6
      003752 C0 05            [24] 1792 	push	ar5
      003754 12 39 99         [24] 1793 	lcall	_i2c_write
      003757 E5 82            [12] 1794 	mov	a,dpl
      003759 85 83 F0         [24] 1795 	mov	b,dph
      00375C D0 05            [24] 1796 	pop	ar5
      00375E D0 06            [24] 1797 	pop	ar6
      003760 D0 07            [24] 1798 	pop	ar7
      003762 45 F0            [12] 1799 	orl	a,b
      003764 70 1C            [24] 1800 	jnz	00106$
                                   1801 ;	8051_i2c_eeprom.c:268: printf("Error: No ACK for data\n\r");
      003766 74 93            [12] 1802 	mov	a,#___str_33
      003768 C0 E0            [24] 1803 	push	acc
      00376A 74 4F            [12] 1804 	mov	a,#(___str_33 >> 8)
      00376C C0 E0            [24] 1805 	push	acc
      00376E 74 80            [12] 1806 	mov	a,#0x80
      003770 C0 E0            [24] 1807 	push	acc
      003772 12 3B C5         [24] 1808 	lcall	_printf
      003775 15 81            [12] 1809 	dec	sp
      003777 15 81            [12] 1810 	dec	sp
      003779 15 81            [12] 1811 	dec	sp
                                   1812 ;	8051_i2c_eeprom.c:269: i2c_stop();
      00377B 12 3A 9B         [24] 1813 	lcall	_i2c_stop
                                   1814 ;	8051_i2c_eeprom.c:270: return 0;
      00377E 90 00 00         [24] 1815 	mov	dptr,#0x0000
      003781 22               [24] 1816 	ret
      003782                       1817 00106$:
                                   1818 ;	8051_i2c_eeprom.c:273: i2c_stop();
      003782 C0 07            [24] 1819 	push	ar7
      003784 C0 06            [24] 1820 	push	ar6
      003786 C0 05            [24] 1821 	push	ar5
      003788 12 3A 9B         [24] 1822 	lcall	_i2c_stop
      00378B D0 05            [24] 1823 	pop	ar5
      00378D D0 06            [24] 1824 	pop	ar6
      00378F D0 07            [24] 1825 	pop	ar7
                                   1826 ;	8051_i2c_eeprom.c:275: for(int i = 0; i<100; i++)
      003791 7B 00            [12] 1827 	mov	r3,#0x00
      003793 7C 00            [12] 1828 	mov	r4,#0x00
      003795                       1829 00111$:
      003795 C3               [12] 1830 	clr	c
      003796 EB               [12] 1831 	mov	a,r3
      003797 94 64            [12] 1832 	subb	a,#0x64
      003799 EC               [12] 1833 	mov	a,r4
      00379A 64 80            [12] 1834 	xrl	a,#0x80
      00379C 94 80            [12] 1835 	subb	a,#0x80
      00379E 50 1E            [24] 1836 	jnc	00107$
                                   1837 ;	8051_i2c_eeprom.c:277: i2c_delay();
      0037A0 C0 07            [24] 1838 	push	ar7
      0037A2 C0 06            [24] 1839 	push	ar6
      0037A4 C0 05            [24] 1840 	push	ar5
      0037A6 C0 04            [24] 1841 	push	ar4
      0037A8 C0 03            [24] 1842 	push	ar3
      0037AA 12 3A A8         [24] 1843 	lcall	_i2c_delay
      0037AD D0 03            [24] 1844 	pop	ar3
      0037AF D0 04            [24] 1845 	pop	ar4
      0037B1 D0 05            [24] 1846 	pop	ar5
      0037B3 D0 06            [24] 1847 	pop	ar6
      0037B5 D0 07            [24] 1848 	pop	ar7
                                   1849 ;	8051_i2c_eeprom.c:275: for(int i = 0; i<100; i++)
      0037B7 0B               [12] 1850 	inc	r3
      0037B8 BB 00 DA         [24] 1851 	cjne	r3,#0x00,00111$
      0037BB 0C               [12] 1852 	inc	r4
      0037BC 80 D7            [24] 1853 	sjmp	00111$
      0037BE                       1854 00107$:
                                   1855 ;	8051_i2c_eeprom.c:279: printf("checkpoint 4\n\r");
      0037BE C0 07            [24] 1856 	push	ar7
      0037C0 C0 06            [24] 1857 	push	ar6
      0037C2 C0 05            [24] 1858 	push	ar5
      0037C4 74 AC            [12] 1859 	mov	a,#___str_34
      0037C6 C0 E0            [24] 1860 	push	acc
      0037C8 74 4F            [12] 1861 	mov	a,#(___str_34 >> 8)
      0037CA C0 E0            [24] 1862 	push	acc
      0037CC 74 80            [12] 1863 	mov	a,#0x80
      0037CE C0 E0            [24] 1864 	push	acc
      0037D0 12 3B C5         [24] 1865 	lcall	_printf
      0037D3 15 81            [12] 1866 	dec	sp
      0037D5 15 81            [12] 1867 	dec	sp
      0037D7 15 81            [12] 1868 	dec	sp
      0037D9 D0 05            [24] 1869 	pop	ar5
      0037DB D0 06            [24] 1870 	pop	ar6
      0037DD D0 07            [24] 1871 	pop	ar7
                                   1872 ;	8051_i2c_eeprom.c:280: printf("| Writing at Address 0x%03X Data 0x%02X          |\n\r", address, data);
      0037DF 7C 00            [12] 1873 	mov	r4,#0x00
      0037E1 C0 05            [24] 1874 	push	ar5
      0037E3 C0 04            [24] 1875 	push	ar4
      0037E5 C0 06            [24] 1876 	push	ar6
      0037E7 C0 07            [24] 1877 	push	ar7
      0037E9 74 BB            [12] 1878 	mov	a,#___str_35
      0037EB C0 E0            [24] 1879 	push	acc
      0037ED 74 4F            [12] 1880 	mov	a,#(___str_35 >> 8)
      0037EF C0 E0            [24] 1881 	push	acc
      0037F1 74 80            [12] 1882 	mov	a,#0x80
      0037F3 C0 E0            [24] 1883 	push	acc
      0037F5 12 3B C5         [24] 1884 	lcall	_printf
      0037F8 E5 81            [12] 1885 	mov	a,sp
      0037FA 24 F9            [12] 1886 	add	a,#0xf9
      0037FC F5 81            [12] 1887 	mov	sp,a
                                   1888 ;	8051_i2c_eeprom.c:281: printf("│ Write successful!                             │\n\r");
      0037FE 74 F0            [12] 1889 	mov	a,#___str_36
      003800 C0 E0            [24] 1890 	push	acc
      003802 74 4F            [12] 1891 	mov	a,#(___str_36 >> 8)
      003804 C0 E0            [24] 1892 	push	acc
      003806 74 80            [12] 1893 	mov	a,#0x80
      003808 C0 E0            [24] 1894 	push	acc
      00380A 12 3B C5         [24] 1895 	lcall	_printf
      00380D 15 81            [12] 1896 	dec	sp
      00380F 15 81            [12] 1897 	dec	sp
      003811 15 81            [12] 1898 	dec	sp
                                   1899 ;	8051_i2c_eeprom.c:282: printf("└───────────────────────────────────────────────┘\n\r");
      003813 74 28            [12] 1900 	mov	a,#___str_37
      003815 C0 E0            [24] 1901 	push	acc
      003817 74 50            [12] 1902 	mov	a,#(___str_37 >> 8)
      003819 C0 E0            [24] 1903 	push	acc
      00381B 74 80            [12] 1904 	mov	a,#0x80
      00381D C0 E0            [24] 1905 	push	acc
      00381F 12 3B C5         [24] 1906 	lcall	_printf
      003822 15 81            [12] 1907 	dec	sp
      003824 15 81            [12] 1908 	dec	sp
      003826 15 81            [12] 1909 	dec	sp
                                   1910 ;	8051_i2c_eeprom.c:283: return 1;  // Success
      003828 90 00 01         [24] 1911 	mov	dptr,#0x0001
      00382B 22               [24] 1912 	ret
      00382C                       1913 00109$:
                                   1914 ;	8051_i2c_eeprom.c:285: printf("checkpoint 5\n\r");
      00382C 74 BE            [12] 1915 	mov	a,#___str_38
      00382E C0 E0            [24] 1916 	push	acc
      003830 74 50            [12] 1917 	mov	a,#(___str_38 >> 8)
      003832 C0 E0            [24] 1918 	push	acc
      003834 74 80            [12] 1919 	mov	a,#0x80
      003836 C0 E0            [24] 1920 	push	acc
      003838 12 3B C5         [24] 1921 	lcall	_printf
      00383B 15 81            [12] 1922 	dec	sp
      00383D 15 81            [12] 1923 	dec	sp
      00383F 15 81            [12] 1924 	dec	sp
                                   1925 ;	8051_i2c_eeprom.c:286: return 0;
      003841 90 00 00         [24] 1926 	mov	dptr,#0x0000
                                   1927 ;	8051_i2c_eeprom.c:293: }
      003844 22               [24] 1928 	ret
                                   1929 ;------------------------------------------------------------
                                   1930 ;Allocation info for local variables in function 'eeprom_read'
                                   1931 ;------------------------------------------------------------
                                   1932 ;address                   Allocated with name '_eeprom_read_address_65536_92'
                                   1933 ;result                    Allocated with name '_eeprom_read_result_131072_94'
                                   1934 ;------------------------------------------------------------
                                   1935 ;	8051_i2c_eeprom.c:295: int eeprom_read(unsigned int address) 
                                   1936 ;	-----------------------------------------
                                   1937 ;	 function eeprom_read
                                   1938 ;	-----------------------------------------
      003845                       1939 _eeprom_read:
      003845 AF 83            [24] 1940 	mov	r7,dph
      003847 E5 82            [12] 1941 	mov	a,dpl
      003849 90 04 12         [24] 1942 	mov	dptr,#_eeprom_read_address_65536_92
      00384C F0               [24] 1943 	movx	@dptr,a
      00384D EF               [12] 1944 	mov	a,r7
      00384E A3               [24] 1945 	inc	dptr
      00384F F0               [24] 1946 	movx	@dptr,a
                                   1947 ;	8051_i2c_eeprom.c:297: if(address_range_flag)
      003850 90 04 51         [24] 1948 	mov	dptr,#_address_range_flag
      003853 E0               [24] 1949 	movx	a,@dptr
      003854 F5 F0            [12] 1950 	mov	b,a
      003856 A3               [24] 1951 	inc	dptr
      003857 E0               [24] 1952 	movx	a,@dptr
      003858 45 F0            [12] 1953 	orl	a,b
      00385A 70 03            [24] 1954 	jnz	00127$
      00385C 02 39 95         [24] 1955 	ljmp	00108$
      00385F                       1956 00127$:
                                   1957 ;	8051_i2c_eeprom.c:302: i2c_start();
      00385F 12 3A 86         [24] 1958 	lcall	_i2c_start
                                   1959 ;	8051_i2c_eeprom.c:305: if(!i2c_write(EEPROM_ID | WRITE)) {
      003862 75 82 A0         [24] 1960 	mov	dpl,#0xa0
      003865 12 39 99         [24] 1961 	lcall	_i2c_write
      003868 E5 82            [12] 1962 	mov	a,dpl
      00386A 85 83 F0         [24] 1963 	mov	b,dph
      00386D 45 F0            [12] 1964 	orl	a,b
      00386F 70 1C            [24] 1965 	jnz	00102$
                                   1966 ;	8051_i2c_eeprom.c:306: printf("Error: No ACK for device address (write mode)\n\r");
      003871 74 CD            [12] 1967 	mov	a,#___str_39
      003873 C0 E0            [24] 1968 	push	acc
      003875 74 50            [12] 1969 	mov	a,#(___str_39 >> 8)
      003877 C0 E0            [24] 1970 	push	acc
      003879 74 80            [12] 1971 	mov	a,#0x80
      00387B C0 E0            [24] 1972 	push	acc
      00387D 12 3B C5         [24] 1973 	lcall	_printf
      003880 15 81            [12] 1974 	dec	sp
      003882 15 81            [12] 1975 	dec	sp
      003884 15 81            [12] 1976 	dec	sp
                                   1977 ;	8051_i2c_eeprom.c:307: i2c_stop();
      003886 12 3A 9B         [24] 1978 	lcall	_i2c_stop
                                   1979 ;	8051_i2c_eeprom.c:308: return -1;
      003889 90 FF FF         [24] 1980 	mov	dptr,#0xffff
      00388C 22               [24] 1981 	ret
      00388D                       1982 00102$:
                                   1983 ;	8051_i2c_eeprom.c:312: if(!i2c_write((unsigned char)address)) {
      00388D 90 04 12         [24] 1984 	mov	dptr,#_eeprom_read_address_65536_92
      003890 E0               [24] 1985 	movx	a,@dptr
      003891 FE               [12] 1986 	mov	r6,a
      003892 A3               [24] 1987 	inc	dptr
      003893 E0               [24] 1988 	movx	a,@dptr
      003894 FF               [12] 1989 	mov	r7,a
      003895 8E 05            [24] 1990 	mov	ar5,r6
      003897 8D 82            [24] 1991 	mov	dpl,r5
      003899 C0 07            [24] 1992 	push	ar7
      00389B C0 06            [24] 1993 	push	ar6
      00389D 12 39 99         [24] 1994 	lcall	_i2c_write
      0038A0 E5 82            [12] 1995 	mov	a,dpl
      0038A2 85 83 F0         [24] 1996 	mov	b,dph
      0038A5 D0 06            [24] 1997 	pop	ar6
      0038A7 D0 07            [24] 1998 	pop	ar7
      0038A9 45 F0            [12] 1999 	orl	a,b
      0038AB 70 1C            [24] 2000 	jnz	00104$
                                   2001 ;	8051_i2c_eeprom.c:313: printf("Error: No ACK for memory address\n\r");
      0038AD 74 70            [12] 2002 	mov	a,#___str_32
      0038AF C0 E0            [24] 2003 	push	acc
      0038B1 74 4F            [12] 2004 	mov	a,#(___str_32 >> 8)
      0038B3 C0 E0            [24] 2005 	push	acc
      0038B5 74 80            [12] 2006 	mov	a,#0x80
      0038B7 C0 E0            [24] 2007 	push	acc
      0038B9 12 3B C5         [24] 2008 	lcall	_printf
      0038BC 15 81            [12] 2009 	dec	sp
      0038BE 15 81            [12] 2010 	dec	sp
      0038C0 15 81            [12] 2011 	dec	sp
                                   2012 ;	8051_i2c_eeprom.c:314: i2c_stop();
      0038C2 12 3A 9B         [24] 2013 	lcall	_i2c_stop
                                   2014 ;	8051_i2c_eeprom.c:315: return -1;
      0038C5 90 FF FF         [24] 2015 	mov	dptr,#0xffff
      0038C8 22               [24] 2016 	ret
      0038C9                       2017 00104$:
                                   2018 ;	8051_i2c_eeprom.c:319: i2c_start();
      0038C9 C0 07            [24] 2019 	push	ar7
      0038CB C0 06            [24] 2020 	push	ar6
      0038CD 12 3A 86         [24] 2021 	lcall	_i2c_start
                                   2022 ;	8051_i2c_eeprom.c:322: if(!i2c_write(EEPROM_ID | READ)) {
      0038D0 75 82 A1         [24] 2023 	mov	dpl,#0xa1
      0038D3 12 39 99         [24] 2024 	lcall	_i2c_write
      0038D6 E5 82            [12] 2025 	mov	a,dpl
      0038D8 85 83 F0         [24] 2026 	mov	b,dph
      0038DB D0 06            [24] 2027 	pop	ar6
      0038DD D0 07            [24] 2028 	pop	ar7
      0038DF 45 F0            [12] 2029 	orl	a,b
      0038E1 70 1C            [24] 2030 	jnz	00106$
                                   2031 ;	8051_i2c_eeprom.c:323: printf("Error: No ACK for device address (read mode)\n\r");
      0038E3 74 FD            [12] 2032 	mov	a,#___str_40
      0038E5 C0 E0            [24] 2033 	push	acc
      0038E7 74 50            [12] 2034 	mov	a,#(___str_40 >> 8)
      0038E9 C0 E0            [24] 2035 	push	acc
      0038EB 74 80            [12] 2036 	mov	a,#0x80
      0038ED C0 E0            [24] 2037 	push	acc
      0038EF 12 3B C5         [24] 2038 	lcall	_printf
      0038F2 15 81            [12] 2039 	dec	sp
      0038F4 15 81            [12] 2040 	dec	sp
      0038F6 15 81            [12] 2041 	dec	sp
                                   2042 ;	8051_i2c_eeprom.c:324: i2c_stop();
      0038F8 12 3A 9B         [24] 2043 	lcall	_i2c_stop
                                   2044 ;	8051_i2c_eeprom.c:325: return -1;
      0038FB 90 FF FF         [24] 2045 	mov	dptr,#0xffff
      0038FE 22               [24] 2046 	ret
      0038FF                       2047 00106$:
                                   2048 ;	8051_i2c_eeprom.c:329: result = i2c_read(0);  // 0 means send NACK
      0038FF 90 00 00         [24] 2049 	mov	dptr,#0x0000
      003902 C0 07            [24] 2050 	push	ar7
      003904 C0 06            [24] 2051 	push	ar6
      003906 12 3A 01         [24] 2052 	lcall	_i2c_read
      003909 AC 82            [24] 2053 	mov	r4,dpl
      00390B D0 06            [24] 2054 	pop	ar6
      00390D D0 07            [24] 2055 	pop	ar7
                                   2056 ;	8051_i2c_eeprom.c:330: printf("│ Reading from Adress: 0x%03X Data: 0x%02X                    \n\r", address, result);
      00390F 7D 00            [12] 2057 	mov	r5,#0x00
      003911 C0 07            [24] 2058 	push	ar7
      003913 C0 06            [24] 2059 	push	ar6
      003915 C0 05            [24] 2060 	push	ar5
      003917 C0 04            [24] 2061 	push	ar4
      003919 C0 04            [24] 2062 	push	ar4
      00391B C0 05            [24] 2063 	push	ar5
      00391D C0 06            [24] 2064 	push	ar6
      00391F C0 07            [24] 2065 	push	ar7
      003921 74 2C            [12] 2066 	mov	a,#___str_41
      003923 C0 E0            [24] 2067 	push	acc
      003925 74 51            [12] 2068 	mov	a,#(___str_41 >> 8)
      003927 C0 E0            [24] 2069 	push	acc
      003929 74 80            [12] 2070 	mov	a,#0x80
      00392B C0 E0            [24] 2071 	push	acc
      00392D 12 3B C5         [24] 2072 	lcall	_printf
      003930 E5 81            [12] 2073 	mov	a,sp
      003932 24 F9            [12] 2074 	add	a,#0xf9
      003934 F5 81            [12] 2075 	mov	sp,a
      003936 D0 04            [24] 2076 	pop	ar4
      003938 D0 05            [24] 2077 	pop	ar5
      00393A D0 06            [24] 2078 	pop	ar6
      00393C D0 07            [24] 2079 	pop	ar7
                                   2080 ;	8051_i2c_eeprom.c:331: printf("| 0x%03X : 0x%02X \n\r", address, result);
      00393E C0 05            [24] 2081 	push	ar5
      003940 C0 04            [24] 2082 	push	ar4
      003942 C0 04            [24] 2083 	push	ar4
      003944 C0 05            [24] 2084 	push	ar5
      003946 C0 06            [24] 2085 	push	ar6
      003948 C0 07            [24] 2086 	push	ar7
      00394A 74 6F            [12] 2087 	mov	a,#___str_42
      00394C C0 E0            [24] 2088 	push	acc
      00394E 74 51            [12] 2089 	mov	a,#(___str_42 >> 8)
      003950 C0 E0            [24] 2090 	push	acc
      003952 74 80            [12] 2091 	mov	a,#0x80
      003954 C0 E0            [24] 2092 	push	acc
      003956 12 3B C5         [24] 2093 	lcall	_printf
      003959 E5 81            [12] 2094 	mov	a,sp
      00395B 24 F9            [12] 2095 	add	a,#0xf9
      00395D F5 81            [12] 2096 	mov	sp,a
                                   2097 ;	8051_i2c_eeprom.c:332: printf("│ Read successful!                 │\n\r");
      00395F 74 84            [12] 2098 	mov	a,#___str_43
      003961 C0 E0            [24] 2099 	push	acc
      003963 74 51            [12] 2100 	mov	a,#(___str_43 >> 8)
      003965 C0 E0            [24] 2101 	push	acc
      003967 74 80            [12] 2102 	mov	a,#0x80
      003969 C0 E0            [24] 2103 	push	acc
      00396B 12 3B C5         [24] 2104 	lcall	_printf
      00396E 15 81            [12] 2105 	dec	sp
      003970 15 81            [12] 2106 	dec	sp
      003972 15 81            [12] 2107 	dec	sp
                                   2108 ;	8051_i2c_eeprom.c:333: printf("└───────────────────────────────────────────────┘\n\r");
      003974 74 28            [12] 2109 	mov	a,#___str_37
      003976 C0 E0            [24] 2110 	push	acc
      003978 74 50            [12] 2111 	mov	a,#(___str_37 >> 8)
      00397A C0 E0            [24] 2112 	push	acc
      00397C 74 80            [12] 2113 	mov	a,#0x80
      00397E C0 E0            [24] 2114 	push	acc
      003980 12 3B C5         [24] 2115 	lcall	_printf
      003983 15 81            [12] 2116 	dec	sp
      003985 15 81            [12] 2117 	dec	sp
      003987 15 81            [12] 2118 	dec	sp
                                   2119 ;	8051_i2c_eeprom.c:334: i2c_stop();
      003989 12 3A 9B         [24] 2120 	lcall	_i2c_stop
      00398C D0 04            [24] 2121 	pop	ar4
      00398E D0 05            [24] 2122 	pop	ar5
                                   2123 ;	8051_i2c_eeprom.c:335: return result;
      003990 8C 82            [24] 2124 	mov	dpl,r4
      003992 8D 83            [24] 2125 	mov	dph,r5
      003994 22               [24] 2126 	ret
      003995                       2127 00108$:
                                   2128 ;	8051_i2c_eeprom.c:337: return 0;
      003995 90 00 00         [24] 2129 	mov	dptr,#0x0000
                                   2130 ;	8051_i2c_eeprom.c:347: }
      003998 22               [24] 2131 	ret
                                   2132 ;------------------------------------------------------------
                                   2133 ;Allocation info for local variables in function 'i2c_write'
                                   2134 ;------------------------------------------------------------
                                   2135 ;data                      Allocated with name '_i2c_write_data_65536_98'
                                   2136 ;i                         Allocated with name '_i2c_write_i_65536_99'
                                   2137 ;------------------------------------------------------------
                                   2138 ;	8051_i2c_eeprom.c:350: int i2c_write(unsigned char data)
                                   2139 ;	-----------------------------------------
                                   2140 ;	 function i2c_write
                                   2141 ;	-----------------------------------------
      003999                       2142 _i2c_write:
      003999 E5 82            [12] 2143 	mov	a,dpl
      00399B 90 04 14         [24] 2144 	mov	dptr,#_i2c_write_data_65536_98
      00399E F0               [24] 2145 	movx	@dptr,a
                                   2146 ;	8051_i2c_eeprom.c:354: for(i=0;i<=7;i++)
      00399F 7E 00            [12] 2147 	mov	r6,#0x00
      0039A1 7F 00            [12] 2148 	mov	r7,#0x00
      0039A3                       2149 00104$:
                                   2150 ;	8051_i2c_eeprom.c:356: SDA = (data & 0x80) ? 1 : 0;    //msb first
      0039A3 90 04 14         [24] 2151 	mov	dptr,#_i2c_write_data_65536_98
      0039A6 E0               [24] 2152 	movx	a,@dptr
      0039A7 FD               [12] 2153 	mov	r5,a
      0039A8 23               [12] 2154 	rl	a
      0039A9 54 01            [12] 2155 	anl	a,#0x01
      0039AB 24 FF            [12] 2156 	add	a,#0xff
      0039AD 92 94            [24] 2157 	mov	_P1_4,c
                                   2158 ;	8051_i2c_eeprom.c:357: i2c_delay();        // Setup time for data
      0039AF C0 07            [24] 2159 	push	ar7
      0039B1 C0 06            [24] 2160 	push	ar6
      0039B3 C0 05            [24] 2161 	push	ar5
      0039B5 12 3A A8         [24] 2162 	lcall	_i2c_delay
                                   2163 ;	8051_i2c_eeprom.c:358: SCL=1;
                                   2164 ;	assignBit
      0039B8 D2 93            [12] 2165 	setb	_P1_3
                                   2166 ;	8051_i2c_eeprom.c:359: i2c_delay();        // Hold time for clock
      0039BA 12 3A A8         [24] 2167 	lcall	_i2c_delay
      0039BD D0 05            [24] 2168 	pop	ar5
      0039BF D0 06            [24] 2169 	pop	ar6
      0039C1 D0 07            [24] 2170 	pop	ar7
                                   2171 ;	8051_i2c_eeprom.c:360: SCL=0;
                                   2172 ;	assignBit
      0039C3 C2 93            [12] 2173 	clr	_P1_3
                                   2174 ;	8051_i2c_eeprom.c:361: data = data << 1;
      0039C5 ED               [12] 2175 	mov	a,r5
      0039C6 2D               [12] 2176 	add	a,r5
      0039C7 90 04 14         [24] 2177 	mov	dptr,#_i2c_write_data_65536_98
      0039CA F0               [24] 2178 	movx	@dptr,a
                                   2179 ;	8051_i2c_eeprom.c:354: for(i=0;i<=7;i++)
      0039CB 0E               [12] 2180 	inc	r6
      0039CC BE 00 01         [24] 2181 	cjne	r6,#0x00,00121$
      0039CF 0F               [12] 2182 	inc	r7
      0039D0                       2183 00121$:
      0039D0 C3               [12] 2184 	clr	c
      0039D1 74 07            [12] 2185 	mov	a,#0x07
      0039D3 9E               [12] 2186 	subb	a,r6
      0039D4 E4               [12] 2187 	clr	a
      0039D5 9F               [12] 2188 	subb	a,r7
      0039D6 50 CB            [24] 2189 	jnc	00104$
                                   2190 ;	8051_i2c_eeprom.c:365: SDA = 1;            // Release SDA for slave
                                   2191 ;	assignBit
      0039D8 D2 94            [12] 2192 	setb	_P1_4
                                   2193 ;	8051_i2c_eeprom.c:366: SCL = 1;            // 9th clock pulse for ACK
                                   2194 ;	assignBit
      0039DA D2 93            [12] 2195 	setb	_P1_3
                                   2196 ;	8051_i2c_eeprom.c:367: i2c_delay();
      0039DC 12 3A A8         [24] 2197 	lcall	_i2c_delay
                                   2198 ;	8051_i2c_eeprom.c:368: if(SDA == 1)        // If SDA is still high, no ACK received
      0039DF 30 94 19         [24] 2199 	jnb	_P1_4,00103$
                                   2200 ;	8051_i2c_eeprom.c:371: printf("ACK DID NOT ARRIVE\n\r");
      0039E2 74 AF            [12] 2201 	mov	a,#___str_44
      0039E4 C0 E0            [24] 2202 	push	acc
      0039E6 74 51            [12] 2203 	mov	a,#(___str_44 >> 8)
      0039E8 C0 E0            [24] 2204 	push	acc
      0039EA 74 80            [12] 2205 	mov	a,#0x80
      0039EC C0 E0            [24] 2206 	push	acc
      0039EE 12 3B C5         [24] 2207 	lcall	_printf
      0039F1 15 81            [12] 2208 	dec	sp
      0039F3 15 81            [12] 2209 	dec	sp
      0039F5 15 81            [12] 2210 	dec	sp
                                   2211 ;	8051_i2c_eeprom.c:372: return 0;       // Error
      0039F7 90 00 00         [24] 2212 	mov	dptr,#0x0000
      0039FA 22               [24] 2213 	ret
      0039FB                       2214 00103$:
                                   2215 ;	8051_i2c_eeprom.c:374: SCL = 0;
                                   2216 ;	assignBit
      0039FB C2 93            [12] 2217 	clr	_P1_3
                                   2218 ;	8051_i2c_eeprom.c:376: return 1;           // Success
      0039FD 90 00 01         [24] 2219 	mov	dptr,#0x0001
                                   2220 ;	8051_i2c_eeprom.c:378: }
      003A00 22               [24] 2221 	ret
                                   2222 ;------------------------------------------------------------
                                   2223 ;Allocation info for local variables in function 'i2c_read'
                                   2224 ;------------------------------------------------------------
                                   2225 ;ACK                       Allocated with name '_i2c_read_ACK_65536_103'
                                   2226 ;buff                      Allocated with name '_i2c_read_buff_65536_104'
                                   2227 ;i                         Allocated with name '_i2c_read_i_131072_105'
                                   2228 ;------------------------------------------------------------
                                   2229 ;	8051_i2c_eeprom.c:379: int i2c_read(int ACK)
                                   2230 ;	-----------------------------------------
                                   2231 ;	 function i2c_read
                                   2232 ;	-----------------------------------------
      003A01                       2233 _i2c_read:
      003A01 AF 83            [24] 2234 	mov	r7,dph
      003A03 E5 82            [12] 2235 	mov	a,dpl
      003A05 90 04 15         [24] 2236 	mov	dptr,#_i2c_read_ACK_65536_103
      003A08 F0               [24] 2237 	movx	@dptr,a
      003A09 EF               [12] 2238 	mov	a,r7
      003A0A A3               [24] 2239 	inc	dptr
      003A0B F0               [24] 2240 	movx	@dptr,a
                                   2241 ;	8051_i2c_eeprom.c:381: unsigned char buff=0;
      003A0C 90 04 17         [24] 2242 	mov	dptr,#_i2c_read_buff_65536_104
      003A0F E4               [12] 2243 	clr	a
      003A10 F0               [24] 2244 	movx	@dptr,a
                                   2245 ;	8051_i2c_eeprom.c:382: SCL = 0;
                                   2246 ;	assignBit
      003A11 C2 93            [12] 2247 	clr	_P1_3
                                   2248 ;	8051_i2c_eeprom.c:383: for(int i=0;i<8;i++)
      003A13 7E 00            [12] 2249 	mov	r6,#0x00
      003A15 7F 00            [12] 2250 	mov	r7,#0x00
      003A17                       2251 00103$:
      003A17 C3               [12] 2252 	clr	c
      003A18 EE               [12] 2253 	mov	a,r6
      003A19 94 08            [12] 2254 	subb	a,#0x08
      003A1B EF               [12] 2255 	mov	a,r7
      003A1C 64 80            [12] 2256 	xrl	a,#0x80
      003A1E 94 80            [12] 2257 	subb	a,#0x80
      003A20 50 40            [24] 2258 	jnc	00101$
                                   2259 ;	8051_i2c_eeprom.c:385: SCL = 1;
                                   2260 ;	assignBit
      003A22 D2 93            [12] 2261 	setb	_P1_3
                                   2262 ;	8051_i2c_eeprom.c:386: i2c_delay();
      003A24 C0 07            [24] 2263 	push	ar7
      003A26 C0 06            [24] 2264 	push	ar6
      003A28 12 3A A8         [24] 2265 	lcall	_i2c_delay
      003A2B D0 06            [24] 2266 	pop	ar6
      003A2D D0 07            [24] 2267 	pop	ar7
                                   2268 ;	8051_i2c_eeprom.c:387: buff |= (SDA << (7 - i));
      003A2F A2 94            [12] 2269 	mov	c,_P1_4
      003A31 E4               [12] 2270 	clr	a
      003A32 33               [12] 2271 	rlc	a
      003A33 FD               [12] 2272 	mov	r5,a
      003A34 8E 04            [24] 2273 	mov	ar4,r6
      003A36 74 07            [12] 2274 	mov	a,#0x07
      003A38 C3               [12] 2275 	clr	c
      003A39 9C               [12] 2276 	subb	a,r4
      003A3A FC               [12] 2277 	mov	r4,a
      003A3B 8C F0            [24] 2278 	mov	b,r4
      003A3D 05 F0            [12] 2279 	inc	b
      003A3F ED               [12] 2280 	mov	a,r5
      003A40 80 02            [24] 2281 	sjmp	00119$
      003A42                       2282 00117$:
      003A42 25 E0            [12] 2283 	add	a,acc
      003A44                       2284 00119$:
      003A44 D5 F0 FB         [24] 2285 	djnz	b,00117$
      003A47 FC               [12] 2286 	mov	r4,a
      003A48 90 04 17         [24] 2287 	mov	dptr,#_i2c_read_buff_65536_104
      003A4B E0               [24] 2288 	movx	a,@dptr
      003A4C 4C               [12] 2289 	orl	a,r4
      003A4D F0               [24] 2290 	movx	@dptr,a
                                   2291 ;	8051_i2c_eeprom.c:388: i2c_delay();
      003A4E C0 07            [24] 2292 	push	ar7
      003A50 C0 06            [24] 2293 	push	ar6
      003A52 12 3A A8         [24] 2294 	lcall	_i2c_delay
      003A55 D0 06            [24] 2295 	pop	ar6
      003A57 D0 07            [24] 2296 	pop	ar7
                                   2297 ;	8051_i2c_eeprom.c:389: SCL=0;
                                   2298 ;	assignBit
      003A59 C2 93            [12] 2299 	clr	_P1_3
                                   2300 ;	8051_i2c_eeprom.c:383: for(int i=0;i<8;i++)
      003A5B 0E               [12] 2301 	inc	r6
      003A5C BE 00 B8         [24] 2302 	cjne	r6,#0x00,00103$
      003A5F 0F               [12] 2303 	inc	r7
      003A60 80 B5            [24] 2304 	sjmp	00103$
      003A62                       2305 00101$:
                                   2306 ;	8051_i2c_eeprom.c:393: SDA = !ACK;         // ACK = 0, NACK = 1
      003A62 90 04 15         [24] 2307 	mov	dptr,#_i2c_read_ACK_65536_103
      003A65 E0               [24] 2308 	movx	a,@dptr
      003A66 FE               [12] 2309 	mov	r6,a
      003A67 A3               [24] 2310 	inc	dptr
      003A68 E0               [24] 2311 	movx	a,@dptr
      003A69 4E               [12] 2312 	orl	a,r6
      003A6A B4 01 00         [24] 2313 	cjne	a,#0x01,00121$
      003A6D                       2314 00121$:
      003A6D E4               [12] 2315 	clr	a
      003A6E 33               [12] 2316 	rlc	a
      003A6F 24 FF            [12] 2317 	add	a,#0xff
      003A71 92 94            [24] 2318 	mov	_P1_4,c
                                   2319 ;	8051_i2c_eeprom.c:394: SCL = 1;
                                   2320 ;	assignBit
      003A73 D2 93            [12] 2321 	setb	_P1_3
                                   2322 ;	8051_i2c_eeprom.c:395: i2c_delay();
      003A75 12 3A A8         [24] 2323 	lcall	_i2c_delay
                                   2324 ;	8051_i2c_eeprom.c:396: SCL = 0;
                                   2325 ;	assignBit
      003A78 C2 93            [12] 2326 	clr	_P1_3
                                   2327 ;	8051_i2c_eeprom.c:398: return buff;
      003A7A 90 04 17         [24] 2328 	mov	dptr,#_i2c_read_buff_65536_104
      003A7D E0               [24] 2329 	movx	a,@dptr
      003A7E FF               [12] 2330 	mov	r7,a
      003A7F 7E 00            [12] 2331 	mov	r6,#0x00
      003A81 8F 82            [24] 2332 	mov	dpl,r7
      003A83 8E 83            [24] 2333 	mov	dph,r6
                                   2334 ;	8051_i2c_eeprom.c:399: }
      003A85 22               [24] 2335 	ret
                                   2336 ;------------------------------------------------------------
                                   2337 ;Allocation info for local variables in function 'i2c_start'
                                   2338 ;------------------------------------------------------------
                                   2339 ;	8051_i2c_eeprom.c:400: void i2c_start(void)
                                   2340 ;	-----------------------------------------
                                   2341 ;	 function i2c_start
                                   2342 ;	-----------------------------------------
      003A86                       2343 _i2c_start:
                                   2344 ;	8051_i2c_eeprom.c:402: i2c_delay();
      003A86 12 3A A8         [24] 2345 	lcall	_i2c_delay
                                   2346 ;	8051_i2c_eeprom.c:403: SDA = 1;
                                   2347 ;	assignBit
      003A89 D2 94            [12] 2348 	setb	_P1_4
                                   2349 ;	8051_i2c_eeprom.c:404: i2c_delay();
      003A8B 12 3A A8         [24] 2350 	lcall	_i2c_delay
                                   2351 ;	8051_i2c_eeprom.c:405: SCL = 1;
                                   2352 ;	assignBit
      003A8E D2 93            [12] 2353 	setb	_P1_3
                                   2354 ;	8051_i2c_eeprom.c:406: i2c_delay();
      003A90 12 3A A8         [24] 2355 	lcall	_i2c_delay
                                   2356 ;	8051_i2c_eeprom.c:407: SDA = 0;
                                   2357 ;	assignBit
      003A93 C2 94            [12] 2358 	clr	_P1_4
                                   2359 ;	8051_i2c_eeprom.c:408: i2c_delay();
      003A95 12 3A A8         [24] 2360 	lcall	_i2c_delay
                                   2361 ;	8051_i2c_eeprom.c:409: SCL = 0;
                                   2362 ;	assignBit
      003A98 C2 93            [12] 2363 	clr	_P1_3
                                   2364 ;	8051_i2c_eeprom.c:410: }
      003A9A 22               [24] 2365 	ret
                                   2366 ;------------------------------------------------------------
                                   2367 ;Allocation info for local variables in function 'i2c_stop'
                                   2368 ;------------------------------------------------------------
                                   2369 ;	8051_i2c_eeprom.c:412: void i2c_stop(void)
                                   2370 ;	-----------------------------------------
                                   2371 ;	 function i2c_stop
                                   2372 ;	-----------------------------------------
      003A9B                       2373 _i2c_stop:
                                   2374 ;	8051_i2c_eeprom.c:414: SDA = 0;
                                   2375 ;	assignBit
      003A9B C2 94            [12] 2376 	clr	_P1_4
                                   2377 ;	8051_i2c_eeprom.c:415: i2c_delay();
      003A9D 12 3A A8         [24] 2378 	lcall	_i2c_delay
                                   2379 ;	8051_i2c_eeprom.c:416: SCL = 1;
                                   2380 ;	assignBit
      003AA0 D2 93            [12] 2381 	setb	_P1_3
                                   2382 ;	8051_i2c_eeprom.c:417: i2c_delay();
      003AA2 12 3A A8         [24] 2383 	lcall	_i2c_delay
                                   2384 ;	8051_i2c_eeprom.c:418: SDA = 1; 
                                   2385 ;	assignBit
      003AA5 D2 94            [12] 2386 	setb	_P1_4
                                   2387 ;	8051_i2c_eeprom.c:419: }
      003AA7 22               [24] 2388 	ret
                                   2389 ;------------------------------------------------------------
                                   2390 ;Allocation info for local variables in function 'i2c_delay'
                                   2391 ;------------------------------------------------------------
                                   2392 ;i                         Allocated with name '_i2c_delay_i_131072_112'
                                   2393 ;------------------------------------------------------------
                                   2394 ;	8051_i2c_eeprom.c:421: void i2c_delay() 
                                   2395 ;	-----------------------------------------
                                   2396 ;	 function i2c_delay
                                   2397 ;	-----------------------------------------
      003AA8                       2398 _i2c_delay:
                                   2399 ;	8051_i2c_eeprom.c:429: for(int i = 0; i<500; i++);
      003AA8 7E 00            [12] 2400 	mov	r6,#0x00
      003AAA 7F 00            [12] 2401 	mov	r7,#0x00
      003AAC                       2402 00103$:
      003AAC C3               [12] 2403 	clr	c
      003AAD EE               [12] 2404 	mov	a,r6
      003AAE 94 F4            [12] 2405 	subb	a,#0xf4
      003AB0 EF               [12] 2406 	mov	a,r7
      003AB1 64 80            [12] 2407 	xrl	a,#0x80
      003AB3 94 81            [12] 2408 	subb	a,#0x81
      003AB5 50 07            [24] 2409 	jnc	00105$
      003AB7 0E               [12] 2410 	inc	r6
      003AB8 BE 00 F1         [24] 2411 	cjne	r6,#0x00,00103$
      003ABB 0F               [12] 2412 	inc	r7
      003ABC 80 EE            [24] 2413 	sjmp	00103$
      003ABE                       2414 00105$:
                                   2415 ;	8051_i2c_eeprom.c:430: }
      003ABE 22               [24] 2416 	ret
                                   2417 ;------------------------------------------------------------
                                   2418 ;Allocation info for local variables in function 'test_function'
                                   2419 ;------------------------------------------------------------
                                   2420 ;test_data                 Allocated with name '_test_function_test_data_65537_114'
                                   2421 ;address                   Allocated with name '_test_function_address_65537_114'
                                   2422 ;i                         Allocated with name '_test_function_i_131073_115'
                                   2423 ;read_data                 Allocated with name '_test_function_read_data_65538_117'
                                   2424 ;------------------------------------------------------------
                                   2425 ;	8051_i2c_eeprom.c:432: void test_function()
                                   2426 ;	-----------------------------------------
                                   2427 ;	 function test_function
                                   2428 ;	-----------------------------------------
      003ABF                       2429 _test_function:
                                   2430 ;	8051_i2c_eeprom.c:434: i2c_start();
      003ABF 12 3A 86         [24] 2431 	lcall	_i2c_start
                                   2432 ;	8051_i2c_eeprom.c:435: i2c_delay();
      003AC2 12 3A A8         [24] 2433 	lcall	_i2c_delay
                                   2434 ;	8051_i2c_eeprom.c:441: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      003AC5 74 02            [12] 2435 	mov	a,#0x02
      003AC7 C0 E0            [24] 2436 	push	acc
      003AC9 E4               [12] 2437 	clr	a
      003ACA C0 E0            [24] 2438 	push	acc
      003ACC 74 26            [12] 2439 	mov	a,#0x26
      003ACE C0 E0            [24] 2440 	push	acc
      003AD0 E4               [12] 2441 	clr	a
      003AD1 C0 E0            [24] 2442 	push	acc
      003AD3 74 C4            [12] 2443 	mov	a,#___str_45
      003AD5 C0 E0            [24] 2444 	push	acc
      003AD7 74 51            [12] 2445 	mov	a,#(___str_45 >> 8)
      003AD9 C0 E0            [24] 2446 	push	acc
      003ADB 74 80            [12] 2447 	mov	a,#0x80
      003ADD C0 E0            [24] 2448 	push	acc
      003ADF 12 3B C5         [24] 2449 	lcall	_printf
      003AE2 E5 81            [12] 2450 	mov	a,sp
      003AE4 24 F9            [12] 2451 	add	a,#0xf9
      003AE6 F5 81            [12] 2452 	mov	sp,a
                                   2453 ;	8051_i2c_eeprom.c:442: eeprom_write(address, test_data);
      003AE8 90 04 0F         [24] 2454 	mov	dptr,#_eeprom_write_PARM_2
      003AEB 74 26            [12] 2455 	mov	a,#0x26
      003AED F0               [24] 2456 	movx	@dptr,a
      003AEE 90 00 02         [24] 2457 	mov	dptr,#0x0002
      003AF1 12 36 82         [24] 2458 	lcall	_eeprom_write
                                   2459 ;	8051_i2c_eeprom.c:443: i2c_stop();
      003AF4 12 3A 9B         [24] 2460 	lcall	_i2c_stop
                                   2461 ;	8051_i2c_eeprom.c:445: for(int i = 0; i<100; i++)
      003AF7 7E 00            [12] 2462 	mov	r6,#0x00
      003AF9 7F 00            [12] 2463 	mov	r7,#0x00
      003AFB                       2464 00106$:
      003AFB C3               [12] 2465 	clr	c
      003AFC EE               [12] 2466 	mov	a,r6
      003AFD 94 64            [12] 2467 	subb	a,#0x64
      003AFF EF               [12] 2468 	mov	a,r7
      003B00 64 80            [12] 2469 	xrl	a,#0x80
      003B02 94 80            [12] 2470 	subb	a,#0x80
      003B04 50 12            [24] 2471 	jnc	00101$
                                   2472 ;	8051_i2c_eeprom.c:447: i2c_delay();
      003B06 C0 07            [24] 2473 	push	ar7
      003B08 C0 06            [24] 2474 	push	ar6
      003B0A 12 3A A8         [24] 2475 	lcall	_i2c_delay
      003B0D D0 06            [24] 2476 	pop	ar6
      003B0F D0 07            [24] 2477 	pop	ar7
                                   2478 ;	8051_i2c_eeprom.c:445: for(int i = 0; i<100; i++)
      003B11 0E               [12] 2479 	inc	r6
      003B12 BE 00 E6         [24] 2480 	cjne	r6,#0x00,00106$
      003B15 0F               [12] 2481 	inc	r7
      003B16 80 E3            [24] 2482 	sjmp	00106$
      003B18                       2483 00101$:
                                   2484 ;	8051_i2c_eeprom.c:451: unsigned char read_data = eeprom_read(address);
      003B18 90 00 02         [24] 2485 	mov	dptr,#0x0002
      003B1B 12 38 45         [24] 2486 	lcall	_eeprom_read
      003B1E AE 82            [24] 2487 	mov	r6,dpl
                                   2488 ;	8051_i2c_eeprom.c:452: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      003B20 8E 05            [24] 2489 	mov	ar5,r6
      003B22 7F 00            [12] 2490 	mov	r7,#0x00
      003B24 C0 06            [24] 2491 	push	ar6
      003B26 C0 05            [24] 2492 	push	ar5
      003B28 C0 07            [24] 2493 	push	ar7
      003B2A 74 02            [12] 2494 	mov	a,#0x02
      003B2C C0 E0            [24] 2495 	push	acc
      003B2E E4               [12] 2496 	clr	a
      003B2F C0 E0            [24] 2497 	push	acc
      003B31 74 EC            [12] 2498 	mov	a,#___str_46
      003B33 C0 E0            [24] 2499 	push	acc
      003B35 74 51            [12] 2500 	mov	a,#(___str_46 >> 8)
      003B37 C0 E0            [24] 2501 	push	acc
      003B39 74 80            [12] 2502 	mov	a,#0x80
      003B3B C0 E0            [24] 2503 	push	acc
      003B3D 12 3B C5         [24] 2504 	lcall	_printf
      003B40 E5 81            [12] 2505 	mov	a,sp
      003B42 24 F9            [12] 2506 	add	a,#0xf9
      003B44 F5 81            [12] 2507 	mov	sp,a
      003B46 D0 06            [24] 2508 	pop	ar6
                                   2509 ;	8051_i2c_eeprom.c:455: if(read_data == test_data) {
      003B48 BE 26 16         [24] 2510 	cjne	r6,#0x26,00103$
                                   2511 ;	8051_i2c_eeprom.c:456: printf("MATCH - Write/Read successful!\n\r");
      003B4B 74 14            [12] 2512 	mov	a,#___str_47
      003B4D C0 E0            [24] 2513 	push	acc
      003B4F 74 52            [12] 2514 	mov	a,#(___str_47 >> 8)
      003B51 C0 E0            [24] 2515 	push	acc
      003B53 74 80            [12] 2516 	mov	a,#0x80
      003B55 C0 E0            [24] 2517 	push	acc
      003B57 12 3B C5         [24] 2518 	lcall	_printf
      003B5A 15 81            [12] 2519 	dec	sp
      003B5C 15 81            [12] 2520 	dec	sp
      003B5E 15 81            [12] 2521 	dec	sp
      003B60 22               [24] 2522 	ret
      003B61                       2523 00103$:
                                   2524 ;	8051_i2c_eeprom.c:458: printf("ERROR - Data mismatch!\n\r");
      003B61 74 35            [12] 2525 	mov	a,#___str_48
      003B63 C0 E0            [24] 2526 	push	acc
      003B65 74 52            [12] 2527 	mov	a,#(___str_48 >> 8)
      003B67 C0 E0            [24] 2528 	push	acc
      003B69 74 80            [12] 2529 	mov	a,#0x80
      003B6B C0 E0            [24] 2530 	push	acc
      003B6D 12 3B C5         [24] 2531 	lcall	_printf
      003B70 15 81            [12] 2532 	dec	sp
      003B72 15 81            [12] 2533 	dec	sp
      003B74 15 81            [12] 2534 	dec	sp
                                   2535 ;	8051_i2c_eeprom.c:462: }
      003B76 22               [24] 2536 	ret
                                   2537 	.area CSEG    (CODE)
                                   2538 	.area CONST   (CODE)
                                   2539 	.area CONST   (CODE)
      004627                       2540 ___str_0:
      004627 0A                    2541 	.db 0x0a
      004628 E2                    2542 	.db 0xe2
      004629 95                    2543 	.db 0x95
      00462A 94                    2544 	.db 0x94
      00462B E2                    2545 	.db 0xe2
      00462C 95                    2546 	.db 0x95
      00462D 90                    2547 	.db 0x90
      00462E E2                    2548 	.db 0xe2
      00462F 95                    2549 	.db 0x95
      004630 90                    2550 	.db 0x90
      004631 E2                    2551 	.db 0xe2
      004632 95                    2552 	.db 0x95
      004633 90                    2553 	.db 0x90
      004634 E2                    2554 	.db 0xe2
      004635 95                    2555 	.db 0x95
      004636 90                    2556 	.db 0x90
      004637 E2                    2557 	.db 0xe2
      004638 95                    2558 	.db 0x95
      004639 90                    2559 	.db 0x90
      00463A E2                    2560 	.db 0xe2
      00463B 95                    2561 	.db 0x95
      00463C 90                    2562 	.db 0x90
      00463D E2                    2563 	.db 0xe2
      00463E 95                    2564 	.db 0x95
      00463F 90                    2565 	.db 0x90
      004640 E2                    2566 	.db 0xe2
      004641 95                    2567 	.db 0x95
      004642 90                    2568 	.db 0x90
      004643 E2                    2569 	.db 0xe2
      004644 95                    2570 	.db 0x95
      004645 90                    2571 	.db 0x90
      004646 E2                    2572 	.db 0xe2
      004647 95                    2573 	.db 0x95
      004648 90                    2574 	.db 0x90
      004649 E2                    2575 	.db 0xe2
      00464A 95                    2576 	.db 0x95
      00464B 90                    2577 	.db 0x90
      00464C E2                    2578 	.db 0xe2
      00464D 95                    2579 	.db 0x95
      00464E 90                    2580 	.db 0x90
      00464F E2                    2581 	.db 0xe2
      004650 95                    2582 	.db 0x95
      004651 90                    2583 	.db 0x90
      004652 E2                    2584 	.db 0xe2
      004653 95                    2585 	.db 0x95
      004654 90                    2586 	.db 0x90
      004655 E2                    2587 	.db 0xe2
      004656 95                    2588 	.db 0x95
      004657 90                    2589 	.db 0x90
      004658 E2                    2590 	.db 0xe2
      004659 95                    2591 	.db 0x95
      00465A 90                    2592 	.db 0x90
      00465B E2                    2593 	.db 0xe2
      00465C 95                    2594 	.db 0x95
      00465D 90                    2595 	.db 0x90
      00465E E2                    2596 	.db 0xe2
      00465F 95                    2597 	.db 0x95
      004660 90                    2598 	.db 0x90
      004661 E2                    2599 	.db 0xe2
      004662 95                    2600 	.db 0x95
      004663 90                    2601 	.db 0x90
      004664 E2                    2602 	.db 0xe2
      004665 95                    2603 	.db 0x95
      004666 90                    2604 	.db 0x90
      004667 E2                    2605 	.db 0xe2
      004668 95                    2606 	.db 0x95
      004669 90                    2607 	.db 0x90
      00466A E2                    2608 	.db 0xe2
      00466B 95                    2609 	.db 0x95
      00466C 90                    2610 	.db 0x90
      00466D E2                    2611 	.db 0xe2
      00466E 95                    2612 	.db 0x95
      00466F 90                    2613 	.db 0x90
      004670 E2                    2614 	.db 0xe2
      004671 95                    2615 	.db 0x95
      004672 90                    2616 	.db 0x90
      004673 E2                    2617 	.db 0xe2
      004674 95                    2618 	.db 0x95
      004675 90                    2619 	.db 0x90
      004676 E2                    2620 	.db 0xe2
      004677 95                    2621 	.db 0x95
      004678 90                    2622 	.db 0x90
      004679 E2                    2623 	.db 0xe2
      00467A 95                    2624 	.db 0x95
      00467B 90                    2625 	.db 0x90
      00467C E2                    2626 	.db 0xe2
      00467D 95                    2627 	.db 0x95
      00467E 90                    2628 	.db 0x90
      00467F E2                    2629 	.db 0xe2
      004680 95                    2630 	.db 0x95
      004681 90                    2631 	.db 0x90
      004682 E2                    2632 	.db 0xe2
      004683 95                    2633 	.db 0x95
      004684 90                    2634 	.db 0x90
      004685 E2                    2635 	.db 0xe2
      004686 95                    2636 	.db 0x95
      004687 90                    2637 	.db 0x90
      004688 E2                    2638 	.db 0xe2
      004689 95                    2639 	.db 0x95
      00468A 90                    2640 	.db 0x90
      00468B E2                    2641 	.db 0xe2
      00468C 95                    2642 	.db 0x95
      00468D 90                    2643 	.db 0x90
      00468E E2                    2644 	.db 0xe2
      00468F 95                    2645 	.db 0x95
      004690 90                    2646 	.db 0x90
      004691 E2                    2647 	.db 0xe2
      004692 95                    2648 	.db 0x95
      004693 90                    2649 	.db 0x90
      004694 E2                    2650 	.db 0xe2
      004695 95                    2651 	.db 0x95
      004696 90                    2652 	.db 0x90
      004697 E2                    2653 	.db 0xe2
      004698 95                    2654 	.db 0x95
      004699 90                    2655 	.db 0x90
      00469A E2                    2656 	.db 0xe2
      00469B 95                    2657 	.db 0x95
      00469C 90                    2658 	.db 0x90
      00469D E2                    2659 	.db 0xe2
      00469E 95                    2660 	.db 0x95
      00469F 90                    2661 	.db 0x90
      0046A0 E2                    2662 	.db 0xe2
      0046A1 95                    2663 	.db 0x95
      0046A2 90                    2664 	.db 0x90
      0046A3 E2                    2665 	.db 0xe2
      0046A4 95                    2666 	.db 0x95
      0046A5 90                    2667 	.db 0x90
      0046A6 E2                    2668 	.db 0xe2
      0046A7 95                    2669 	.db 0x95
      0046A8 90                    2670 	.db 0x90
      0046A9 E2                    2671 	.db 0xe2
      0046AA 95                    2672 	.db 0x95
      0046AB 90                    2673 	.db 0x90
      0046AC E2                    2674 	.db 0xe2
      0046AD 95                    2675 	.db 0x95
      0046AE 90                    2676 	.db 0x90
      0046AF E2                    2677 	.db 0xe2
      0046B0 95                    2678 	.db 0x95
      0046B1 90                    2679 	.db 0x90
      0046B2 E2                    2680 	.db 0xe2
      0046B3 95                    2681 	.db 0x95
      0046B4 90                    2682 	.db 0x90
      0046B5 E2                    2683 	.db 0xe2
      0046B6 95                    2684 	.db 0x95
      0046B7 90                    2685 	.db 0x90
      0046B8 E2                    2686 	.db 0xe2
      0046B9 95                    2687 	.db 0x95
      0046BA 90                    2688 	.db 0x90
      0046BB E2                    2689 	.db 0xe2
      0046BC 95                    2690 	.db 0x95
      0046BD 90                    2691 	.db 0x90
      0046BE E2                    2692 	.db 0xe2
      0046BF 95                    2693 	.db 0x95
      0046C0 90                    2694 	.db 0x90
      0046C1 E2                    2695 	.db 0xe2
      0046C2 95                    2696 	.db 0x95
      0046C3 90                    2697 	.db 0x90
      0046C4 E2                    2698 	.db 0xe2
      0046C5 95                    2699 	.db 0x95
      0046C6 90                    2700 	.db 0x90
      0046C7 E2                    2701 	.db 0xe2
      0046C8 95                    2702 	.db 0x95
      0046C9 90                    2703 	.db 0x90
      0046CA E2                    2704 	.db 0xe2
      0046CB 95                    2705 	.db 0x95
      0046CC 90                    2706 	.db 0x90
      0046CD E2                    2707 	.db 0xe2
      0046CE 95                    2708 	.db 0x95
      0046CF 90                    2709 	.db 0x90
      0046D0 E2                    2710 	.db 0xe2
      0046D1 95                    2711 	.db 0x95
      0046D2 90                    2712 	.db 0x90
      0046D3 E2                    2713 	.db 0xe2
      0046D4 95                    2714 	.db 0x95
      0046D5 97                    2715 	.db 0x97
      0046D6 0A                    2716 	.db 0x0a
      0046D7 0D                    2717 	.db 0x0d
      0046D8 00                    2718 	.db 0x00
                                   2719 	.area CSEG    (CODE)
                                   2720 	.area CONST   (CODE)
      0046D9                       2721 ___str_1:
      0046D9 E2                    2722 	.db 0xe2
      0046DA 95                    2723 	.db 0x95
      0046DB 91                    2724 	.db 0x91
      0046DC 20 20 20 20 20 20 20  2725 	.ascii "           I2C Memory Management System v1.0            "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
      004714 E2                    2726 	.db 0xe2
      004715 95                    2727 	.db 0x95
      004716 91                    2728 	.db 0x91
      004717 0A                    2729 	.db 0x0a
      004718 0D                    2730 	.db 0x0d
      004719 00                    2731 	.db 0x00
                                   2732 	.area CSEG    (CODE)
                                   2733 	.area CONST   (CODE)
      00471A                       2734 ___str_2:
      00471A E2                    2735 	.db 0xe2
      00471B 95                    2736 	.db 0x95
      00471C 9A                    2737 	.db 0x9a
      00471D E2                    2738 	.db 0xe2
      00471E 95                    2739 	.db 0x95
      00471F 90                    2740 	.db 0x90
      004720 E2                    2741 	.db 0xe2
      004721 95                    2742 	.db 0x95
      004722 90                    2743 	.db 0x90
      004723 E2                    2744 	.db 0xe2
      004724 95                    2745 	.db 0x95
      004725 90                    2746 	.db 0x90
      004726 E2                    2747 	.db 0xe2
      004727 95                    2748 	.db 0x95
      004728 90                    2749 	.db 0x90
      004729 E2                    2750 	.db 0xe2
      00472A 95                    2751 	.db 0x95
      00472B 90                    2752 	.db 0x90
      00472C E2                    2753 	.db 0xe2
      00472D 95                    2754 	.db 0x95
      00472E 90                    2755 	.db 0x90
      00472F E2                    2756 	.db 0xe2
      004730 95                    2757 	.db 0x95
      004731 90                    2758 	.db 0x90
      004732 E2                    2759 	.db 0xe2
      004733 95                    2760 	.db 0x95
      004734 90                    2761 	.db 0x90
      004735 E2                    2762 	.db 0xe2
      004736 95                    2763 	.db 0x95
      004737 90                    2764 	.db 0x90
      004738 E2                    2765 	.db 0xe2
      004739 95                    2766 	.db 0x95
      00473A 90                    2767 	.db 0x90
      00473B E2                    2768 	.db 0xe2
      00473C 95                    2769 	.db 0x95
      00473D 90                    2770 	.db 0x90
      00473E E2                    2771 	.db 0xe2
      00473F 95                    2772 	.db 0x95
      004740 90                    2773 	.db 0x90
      004741 E2                    2774 	.db 0xe2
      004742 95                    2775 	.db 0x95
      004743 90                    2776 	.db 0x90
      004744 E2                    2777 	.db 0xe2
      004745 95                    2778 	.db 0x95
      004746 90                    2779 	.db 0x90
      004747 E2                    2780 	.db 0xe2
      004748 95                    2781 	.db 0x95
      004749 90                    2782 	.db 0x90
      00474A E2                    2783 	.db 0xe2
      00474B 95                    2784 	.db 0x95
      00474C 90                    2785 	.db 0x90
      00474D E2                    2786 	.db 0xe2
      00474E 95                    2787 	.db 0x95
      00474F 90                    2788 	.db 0x90
      004750 E2                    2789 	.db 0xe2
      004751 95                    2790 	.db 0x95
      004752 90                    2791 	.db 0x90
      004753 E2                    2792 	.db 0xe2
      004754 95                    2793 	.db 0x95
      004755 90                    2794 	.db 0x90
      004756 E2                    2795 	.db 0xe2
      004757 95                    2796 	.db 0x95
      004758 90                    2797 	.db 0x90
      004759 E2                    2798 	.db 0xe2
      00475A 95                    2799 	.db 0x95
      00475B 90                    2800 	.db 0x90
      00475C E2                    2801 	.db 0xe2
      00475D 95                    2802 	.db 0x95
      00475E 90                    2803 	.db 0x90
      00475F E2                    2804 	.db 0xe2
      004760 95                    2805 	.db 0x95
      004761 90                    2806 	.db 0x90
      004762 E2                    2807 	.db 0xe2
      004763 95                    2808 	.db 0x95
      004764 90                    2809 	.db 0x90
      004765 E2                    2810 	.db 0xe2
      004766 95                    2811 	.db 0x95
      004767 90                    2812 	.db 0x90
      004768 E2                    2813 	.db 0xe2
      004769 95                    2814 	.db 0x95
      00476A 90                    2815 	.db 0x90
      00476B E2                    2816 	.db 0xe2
      00476C 95                    2817 	.db 0x95
      00476D 90                    2818 	.db 0x90
      00476E E2                    2819 	.db 0xe2
      00476F 95                    2820 	.db 0x95
      004770 90                    2821 	.db 0x90
      004771 E2                    2822 	.db 0xe2
      004772 95                    2823 	.db 0x95
      004773 90                    2824 	.db 0x90
      004774 E2                    2825 	.db 0xe2
      004775 95                    2826 	.db 0x95
      004776 90                    2827 	.db 0x90
      004777 E2                    2828 	.db 0xe2
      004778 95                    2829 	.db 0x95
      004779 90                    2830 	.db 0x90
      00477A E2                    2831 	.db 0xe2
      00477B 95                    2832 	.db 0x95
      00477C 90                    2833 	.db 0x90
      00477D E2                    2834 	.db 0xe2
      00477E 95                    2835 	.db 0x95
      00477F 90                    2836 	.db 0x90
      004780 E2                    2837 	.db 0xe2
      004781 95                    2838 	.db 0x95
      004782 90                    2839 	.db 0x90
      004783 E2                    2840 	.db 0xe2
      004784 95                    2841 	.db 0x95
      004785 90                    2842 	.db 0x90
      004786 E2                    2843 	.db 0xe2
      004787 95                    2844 	.db 0x95
      004788 90                    2845 	.db 0x90
      004789 E2                    2846 	.db 0xe2
      00478A 95                    2847 	.db 0x95
      00478B 90                    2848 	.db 0x90
      00478C E2                    2849 	.db 0xe2
      00478D 95                    2850 	.db 0x95
      00478E 90                    2851 	.db 0x90
      00478F E2                    2852 	.db 0xe2
      004790 95                    2853 	.db 0x95
      004791 90                    2854 	.db 0x90
      004792 E2                    2855 	.db 0xe2
      004793 95                    2856 	.db 0x95
      004794 90                    2857 	.db 0x90
      004795 E2                    2858 	.db 0xe2
      004796 95                    2859 	.db 0x95
      004797 90                    2860 	.db 0x90
      004798 E2                    2861 	.db 0xe2
      004799 95                    2862 	.db 0x95
      00479A 90                    2863 	.db 0x90
      00479B E2                    2864 	.db 0xe2
      00479C 95                    2865 	.db 0x95
      00479D 90                    2866 	.db 0x90
      00479E E2                    2867 	.db 0xe2
      00479F 95                    2868 	.db 0x95
      0047A0 90                    2869 	.db 0x90
      0047A1 E2                    2870 	.db 0xe2
      0047A2 95                    2871 	.db 0x95
      0047A3 90                    2872 	.db 0x90
      0047A4 E2                    2873 	.db 0xe2
      0047A5 95                    2874 	.db 0x95
      0047A6 90                    2875 	.db 0x90
      0047A7 E2                    2876 	.db 0xe2
      0047A8 95                    2877 	.db 0x95
      0047A9 90                    2878 	.db 0x90
      0047AA E2                    2879 	.db 0xe2
      0047AB 95                    2880 	.db 0x95
      0047AC 90                    2881 	.db 0x90
      0047AD E2                    2882 	.db 0xe2
      0047AE 95                    2883 	.db 0x95
      0047AF 90                    2884 	.db 0x90
      0047B0 E2                    2885 	.db 0xe2
      0047B1 95                    2886 	.db 0x95
      0047B2 90                    2887 	.db 0x90
      0047B3 E2                    2888 	.db 0xe2
      0047B4 95                    2889 	.db 0x95
      0047B5 90                    2890 	.db 0x90
      0047B6 E2                    2891 	.db 0xe2
      0047B7 95                    2892 	.db 0x95
      0047B8 90                    2893 	.db 0x90
      0047B9 E2                    2894 	.db 0xe2
      0047BA 95                    2895 	.db 0x95
      0047BB 90                    2896 	.db 0x90
      0047BC E2                    2897 	.db 0xe2
      0047BD 95                    2898 	.db 0x95
      0047BE 90                    2899 	.db 0x90
      0047BF E2                    2900 	.db 0xe2
      0047C0 95                    2901 	.db 0x95
      0047C1 90                    2902 	.db 0x90
      0047C2 E2                    2903 	.db 0xe2
      0047C3 95                    2904 	.db 0x95
      0047C4 90                    2905 	.db 0x90
      0047C5 E2                    2906 	.db 0xe2
      0047C6 95                    2907 	.db 0x95
      0047C7 9D                    2908 	.db 0x9d
      0047C8 0A                    2909 	.db 0x0a
      0047C9 0D                    2910 	.db 0x0d
      0047CA 00                    2911 	.db 0x00
                                   2912 	.area CSEG    (CODE)
                                   2913 	.area CONST   (CODE)
      0047CB                       2914 ___str_3:
      0047CB 0A                    2915 	.db 0x0a
      0047CC 0D                    2916 	.db 0x0d
      0047CD E2                    2917 	.db 0xe2
      0047CE 94                    2918 	.db 0x94
      0047CF 8C                    2919 	.db 0x8c
      0047D0 E2                    2920 	.db 0xe2
      0047D1 94                    2921 	.db 0x94
      0047D2 80                    2922 	.db 0x80
      0047D3 E2                    2923 	.db 0xe2
      0047D4 94                    2924 	.db 0x94
      0047D5 80                    2925 	.db 0x80
      0047D6 E2                    2926 	.db 0xe2
      0047D7 94                    2927 	.db 0x94
      0047D8 80                    2928 	.db 0x80
      0047D9 E2                    2929 	.db 0xe2
      0047DA 94                    2930 	.db 0x94
      0047DB 80                    2931 	.db 0x80
      0047DC E2                    2932 	.db 0xe2
      0047DD 94                    2933 	.db 0x94
      0047DE 80                    2934 	.db 0x80
      0047DF E2                    2935 	.db 0xe2
      0047E0 94                    2936 	.db 0x94
      0047E1 80                    2937 	.db 0x80
      0047E2 E2                    2938 	.db 0xe2
      0047E3 94                    2939 	.db 0x94
      0047E4 80                    2940 	.db 0x80
      0047E5 E2                    2941 	.db 0xe2
      0047E6 94                    2942 	.db 0x94
      0047E7 80                    2943 	.db 0x80
      0047E8 E2                    2944 	.db 0xe2
      0047E9 94                    2945 	.db 0x94
      0047EA 80                    2946 	.db 0x80
      0047EB E2                    2947 	.db 0xe2
      0047EC 94                    2948 	.db 0x94
      0047ED 80                    2949 	.db 0x80
      0047EE E2                    2950 	.db 0xe2
      0047EF 94                    2951 	.db 0x94
      0047F0 80                    2952 	.db 0x80
      0047F1 E2                    2953 	.db 0xe2
      0047F2 94                    2954 	.db 0x94
      0047F3 80                    2955 	.db 0x80
      0047F4 E2                    2956 	.db 0xe2
      0047F5 94                    2957 	.db 0x94
      0047F6 AC                    2958 	.db 0xac
      0047F7 E2                    2959 	.db 0xe2
      0047F8 94                    2960 	.db 0x94
      0047F9 80                    2961 	.db 0x80
      0047FA E2                    2962 	.db 0xe2
      0047FB 94                    2963 	.db 0x94
      0047FC 80                    2964 	.db 0x80
      0047FD E2                    2965 	.db 0xe2
      0047FE 94                    2966 	.db 0x94
      0047FF 80                    2967 	.db 0x80
      004800 E2                    2968 	.db 0xe2
      004801 94                    2969 	.db 0x94
      004802 80                    2970 	.db 0x80
      004803 E2                    2971 	.db 0xe2
      004804 94                    2972 	.db 0x94
      004805 80                    2973 	.db 0x80
      004806 E2                    2974 	.db 0xe2
      004807 94                    2975 	.db 0x94
      004808 80                    2976 	.db 0x80
      004809 E2                    2977 	.db 0xe2
      00480A 94                    2978 	.db 0x94
      00480B 80                    2979 	.db 0x80
      00480C E2                    2980 	.db 0xe2
      00480D 94                    2981 	.db 0x94
      00480E 80                    2982 	.db 0x80
      00480F E2                    2983 	.db 0xe2
      004810 94                    2984 	.db 0x94
      004811 80                    2985 	.db 0x80
      004812 E2                    2986 	.db 0xe2
      004813 94                    2987 	.db 0x94
      004814 80                    2988 	.db 0x80
      004815 E2                    2989 	.db 0xe2
      004816 94                    2990 	.db 0x94
      004817 80                    2991 	.db 0x80
      004818 E2                    2992 	.db 0xe2
      004819 94                    2993 	.db 0x94
      00481A 80                    2994 	.db 0x80
      00481B E2                    2995 	.db 0xe2
      00481C 94                    2996 	.db 0x94
      00481D 80                    2997 	.db 0x80
      00481E E2                    2998 	.db 0xe2
      00481F 94                    2999 	.db 0x94
      004820 80                    3000 	.db 0x80
      004821 E2                    3001 	.db 0xe2
      004822 94                    3002 	.db 0x94
      004823 80                    3003 	.db 0x80
      004824 E2                    3004 	.db 0xe2
      004825 94                    3005 	.db 0x94
      004826 80                    3006 	.db 0x80
      004827 E2                    3007 	.db 0xe2
      004828 94                    3008 	.db 0x94
      004829 80                    3009 	.db 0x80
      00482A E2                    3010 	.db 0xe2
      00482B 94                    3011 	.db 0x94
      00482C 80                    3012 	.db 0x80
      00482D E2                    3013 	.db 0xe2
      00482E 94                    3014 	.db 0x94
      00482F 80                    3015 	.db 0x80
      004830 E2                    3016 	.db 0xe2
      004831 94                    3017 	.db 0x94
      004832 80                    3018 	.db 0x80
      004833 E2                    3019 	.db 0xe2
      004834 94                    3020 	.db 0x94
      004835 80                    3021 	.db 0x80
      004836 E2                    3022 	.db 0xe2
      004837 94                    3023 	.db 0x94
      004838 80                    3024 	.db 0x80
      004839 E2                    3025 	.db 0xe2
      00483A 94                    3026 	.db 0x94
      00483B 80                    3027 	.db 0x80
      00483C E2                    3028 	.db 0xe2
      00483D 94                    3029 	.db 0x94
      00483E 80                    3030 	.db 0x80
      00483F E2                    3031 	.db 0xe2
      004840 94                    3032 	.db 0x94
      004841 80                    3033 	.db 0x80
      004842 E2                    3034 	.db 0xe2
      004843 94                    3035 	.db 0x94
      004844 80                    3036 	.db 0x80
      004845 E2                    3037 	.db 0xe2
      004846 94                    3038 	.db 0x94
      004847 80                    3039 	.db 0x80
      004848 E2                    3040 	.db 0xe2
      004849 94                    3041 	.db 0x94
      00484A 80                    3042 	.db 0x80
      00484B E2                    3043 	.db 0xe2
      00484C 94                    3044 	.db 0x94
      00484D 80                    3045 	.db 0x80
      00484E E2                    3046 	.db 0xe2
      00484F 94                    3047 	.db 0x94
      004850 80                    3048 	.db 0x80
      004851 E2                    3049 	.db 0xe2
      004852 94                    3050 	.db 0x94
      004853 80                    3051 	.db 0x80
      004854 E2                    3052 	.db 0xe2
      004855 94                    3053 	.db 0x94
      004856 80                    3054 	.db 0x80
      004857 E2                    3055 	.db 0xe2
      004858 94                    3056 	.db 0x94
      004859 80                    3057 	.db 0x80
      00485A E2                    3058 	.db 0xe2
      00485B 94                    3059 	.db 0x94
      00485C 80                    3060 	.db 0x80
      00485D E2                    3061 	.db 0xe2
      00485E 94                    3062 	.db 0x94
      00485F 80                    3063 	.db 0x80
      004860 E2                    3064 	.db 0xe2
      004861 94                    3065 	.db 0x94
      004862 80                    3066 	.db 0x80
      004863 E2                    3067 	.db 0xe2
      004864 94                    3068 	.db 0x94
      004865 80                    3069 	.db 0x80
      004866 E2                    3070 	.db 0xe2
      004867 94                    3071 	.db 0x94
      004868 80                    3072 	.db 0x80
      004869 E2                    3073 	.db 0xe2
      00486A 94                    3074 	.db 0x94
      00486B 80                    3075 	.db 0x80
      00486C E2                    3076 	.db 0xe2
      00486D 94                    3077 	.db 0x94
      00486E 80                    3078 	.db 0x80
      00486F E2                    3079 	.db 0xe2
      004870 94                    3080 	.db 0x94
      004871 80                    3081 	.db 0x80
      004872 E2                    3082 	.db 0xe2
      004873 94                    3083 	.db 0x94
      004874 80                    3084 	.db 0x80
      004875 E2                    3085 	.db 0xe2
      004876 94                    3086 	.db 0x94
      004877 80                    3087 	.db 0x80
      004878 E2                    3088 	.db 0xe2
      004879 94                    3089 	.db 0x94
      00487A 80                    3090 	.db 0x80
      00487B E2                    3091 	.db 0xe2
      00487C 94                    3092 	.db 0x94
      00487D 90                    3093 	.db 0x90
      00487E 0A                    3094 	.db 0x0a
      00487F 0D                    3095 	.db 0x0d
      004880 00                    3096 	.db 0x00
                                   3097 	.area CSEG    (CODE)
                                   3098 	.area CONST   (CODE)
      004881                       3099 ___str_4:
      004881 E2                    3100 	.db 0xe2
      004882 94                    3101 	.db 0x94
      004883 82                    3102 	.db 0x82
      004884 20 20 43 6F 6D 6D 61  3103 	.ascii "  Command   "
             6E 64 20 20 20
      004890 E2                    3104 	.db 0xe2
      004891 94                    3105 	.db 0x94
      004892 82                    3106 	.db 0x82
      004893 20 20 20 20 20 20 20  3107 	.ascii "               Description                  "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0048BF E2                    3108 	.db 0xe2
      0048C0 94                    3109 	.db 0x94
      0048C1 82                    3110 	.db 0x82
      0048C2 0A                    3111 	.db 0x0a
      0048C3 0D                    3112 	.db 0x0d
      0048C4 00                    3113 	.db 0x00
                                   3114 	.area CSEG    (CODE)
                                   3115 	.area CONST   (CODE)
      0048C5                       3116 ___str_5:
      0048C5 E2                    3117 	.db 0xe2
      0048C6 94                    3118 	.db 0x94
      0048C7 9C                    3119 	.db 0x9c
      0048C8 E2                    3120 	.db 0xe2
      0048C9 94                    3121 	.db 0x94
      0048CA 80                    3122 	.db 0x80
      0048CB E2                    3123 	.db 0xe2
      0048CC 94                    3124 	.db 0x94
      0048CD 80                    3125 	.db 0x80
      0048CE E2                    3126 	.db 0xe2
      0048CF 94                    3127 	.db 0x94
      0048D0 80                    3128 	.db 0x80
      0048D1 E2                    3129 	.db 0xe2
      0048D2 94                    3130 	.db 0x94
      0048D3 80                    3131 	.db 0x80
      0048D4 E2                    3132 	.db 0xe2
      0048D5 94                    3133 	.db 0x94
      0048D6 80                    3134 	.db 0x80
      0048D7 E2                    3135 	.db 0xe2
      0048D8 94                    3136 	.db 0x94
      0048D9 80                    3137 	.db 0x80
      0048DA E2                    3138 	.db 0xe2
      0048DB 94                    3139 	.db 0x94
      0048DC 80                    3140 	.db 0x80
      0048DD E2                    3141 	.db 0xe2
      0048DE 94                    3142 	.db 0x94
      0048DF 80                    3143 	.db 0x80
      0048E0 E2                    3144 	.db 0xe2
      0048E1 94                    3145 	.db 0x94
      0048E2 80                    3146 	.db 0x80
      0048E3 E2                    3147 	.db 0xe2
      0048E4 94                    3148 	.db 0x94
      0048E5 80                    3149 	.db 0x80
      0048E6 E2                    3150 	.db 0xe2
      0048E7 94                    3151 	.db 0x94
      0048E8 80                    3152 	.db 0x80
      0048E9 E2                    3153 	.db 0xe2
      0048EA 94                    3154 	.db 0x94
      0048EB 80                    3155 	.db 0x80
      0048EC E2                    3156 	.db 0xe2
      0048ED 94                    3157 	.db 0x94
      0048EE BC                    3158 	.db 0xbc
      0048EF E2                    3159 	.db 0xe2
      0048F0 94                    3160 	.db 0x94
      0048F1 80                    3161 	.db 0x80
      0048F2 E2                    3162 	.db 0xe2
      0048F3 94                    3163 	.db 0x94
      0048F4 80                    3164 	.db 0x80
      0048F5 E2                    3165 	.db 0xe2
      0048F6 94                    3166 	.db 0x94
      0048F7 80                    3167 	.db 0x80
      0048F8 E2                    3168 	.db 0xe2
      0048F9 94                    3169 	.db 0x94
      0048FA 80                    3170 	.db 0x80
      0048FB E2                    3171 	.db 0xe2
      0048FC 94                    3172 	.db 0x94
      0048FD 80                    3173 	.db 0x80
      0048FE E2                    3174 	.db 0xe2
      0048FF 94                    3175 	.db 0x94
      004900 80                    3176 	.db 0x80
      004901 E2                    3177 	.db 0xe2
      004902 94                    3178 	.db 0x94
      004903 80                    3179 	.db 0x80
      004904 E2                    3180 	.db 0xe2
      004905 94                    3181 	.db 0x94
      004906 80                    3182 	.db 0x80
      004907 E2                    3183 	.db 0xe2
      004908 94                    3184 	.db 0x94
      004909 80                    3185 	.db 0x80
      00490A E2                    3186 	.db 0xe2
      00490B 94                    3187 	.db 0x94
      00490C 80                    3188 	.db 0x80
      00490D E2                    3189 	.db 0xe2
      00490E 94                    3190 	.db 0x94
      00490F 80                    3191 	.db 0x80
      004910 E2                    3192 	.db 0xe2
      004911 94                    3193 	.db 0x94
      004912 80                    3194 	.db 0x80
      004913 E2                    3195 	.db 0xe2
      004914 94                    3196 	.db 0x94
      004915 80                    3197 	.db 0x80
      004916 E2                    3198 	.db 0xe2
      004917 94                    3199 	.db 0x94
      004918 80                    3200 	.db 0x80
      004919 E2                    3201 	.db 0xe2
      00491A 94                    3202 	.db 0x94
      00491B 80                    3203 	.db 0x80
      00491C E2                    3204 	.db 0xe2
      00491D 94                    3205 	.db 0x94
      00491E 80                    3206 	.db 0x80
      00491F E2                    3207 	.db 0xe2
      004920 94                    3208 	.db 0x94
      004921 80                    3209 	.db 0x80
      004922 E2                    3210 	.db 0xe2
      004923 94                    3211 	.db 0x94
      004924 80                    3212 	.db 0x80
      004925 E2                    3213 	.db 0xe2
      004926 94                    3214 	.db 0x94
      004927 80                    3215 	.db 0x80
      004928 E2                    3216 	.db 0xe2
      004929 94                    3217 	.db 0x94
      00492A 80                    3218 	.db 0x80
      00492B E2                    3219 	.db 0xe2
      00492C 94                    3220 	.db 0x94
      00492D 80                    3221 	.db 0x80
      00492E E2                    3222 	.db 0xe2
      00492F 94                    3223 	.db 0x94
      004930 80                    3224 	.db 0x80
      004931 E2                    3225 	.db 0xe2
      004932 94                    3226 	.db 0x94
      004933 80                    3227 	.db 0x80
      004934 E2                    3228 	.db 0xe2
      004935 94                    3229 	.db 0x94
      004936 80                    3230 	.db 0x80
      004937 E2                    3231 	.db 0xe2
      004938 94                    3232 	.db 0x94
      004939 80                    3233 	.db 0x80
      00493A E2                    3234 	.db 0xe2
      00493B 94                    3235 	.db 0x94
      00493C 80                    3236 	.db 0x80
      00493D E2                    3237 	.db 0xe2
      00493E 94                    3238 	.db 0x94
      00493F 80                    3239 	.db 0x80
      004940 E2                    3240 	.db 0xe2
      004941 94                    3241 	.db 0x94
      004942 80                    3242 	.db 0x80
      004943 E2                    3243 	.db 0xe2
      004944 94                    3244 	.db 0x94
      004945 80                    3245 	.db 0x80
      004946 E2                    3246 	.db 0xe2
      004947 94                    3247 	.db 0x94
      004948 80                    3248 	.db 0x80
      004949 E2                    3249 	.db 0xe2
      00494A 94                    3250 	.db 0x94
      00494B 80                    3251 	.db 0x80
      00494C E2                    3252 	.db 0xe2
      00494D 94                    3253 	.db 0x94
      00494E 80                    3254 	.db 0x80
      00494F E2                    3255 	.db 0xe2
      004950 94                    3256 	.db 0x94
      004951 80                    3257 	.db 0x80
      004952 E2                    3258 	.db 0xe2
      004953 94                    3259 	.db 0x94
      004954 80                    3260 	.db 0x80
      004955 E2                    3261 	.db 0xe2
      004956 94                    3262 	.db 0x94
      004957 80                    3263 	.db 0x80
      004958 E2                    3264 	.db 0xe2
      004959 94                    3265 	.db 0x94
      00495A 80                    3266 	.db 0x80
      00495B E2                    3267 	.db 0xe2
      00495C 94                    3268 	.db 0x94
      00495D 80                    3269 	.db 0x80
      00495E E2                    3270 	.db 0xe2
      00495F 94                    3271 	.db 0x94
      004960 80                    3272 	.db 0x80
      004961 E2                    3273 	.db 0xe2
      004962 94                    3274 	.db 0x94
      004963 80                    3275 	.db 0x80
      004964 E2                    3276 	.db 0xe2
      004965 94                    3277 	.db 0x94
      004966 80                    3278 	.db 0x80
      004967 E2                    3279 	.db 0xe2
      004968 94                    3280 	.db 0x94
      004969 80                    3281 	.db 0x80
      00496A E2                    3282 	.db 0xe2
      00496B 94                    3283 	.db 0x94
      00496C 80                    3284 	.db 0x80
      00496D E2                    3285 	.db 0xe2
      00496E 94                    3286 	.db 0x94
      00496F 80                    3287 	.db 0x80
      004970 E2                    3288 	.db 0xe2
      004971 94                    3289 	.db 0x94
      004972 80                    3290 	.db 0x80
      004973 E2                    3291 	.db 0xe2
      004974 94                    3292 	.db 0x94
      004975 A4                    3293 	.db 0xa4
      004976 0A                    3294 	.db 0x0a
      004977 0D                    3295 	.db 0x0d
      004978 00                    3296 	.db 0x00
                                   3297 	.area CSEG    (CODE)
                                   3298 	.area CONST   (CODE)
      004979                       3299 ___str_6:
      004979 E2                    3300 	.db 0xe2
      00497A 94                    3301 	.db 0x94
      00497B 82                    3302 	.db 0x82
      00497C 20 20 20 20 20 52 20  3303 	.ascii "     R      "
             20 20 20 20 20
      004988 E2                    3304 	.db 0xe2
      004989 94                    3305 	.db 0x94
      00498A 82                    3306 	.db 0x82
      00498B 20 52 65 61 64 20 66  3307 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0049B7 E2                    3308 	.db 0xe2
      0049B8 94                    3309 	.db 0x94
      0049B9 82                    3310 	.db 0x82
      0049BA 0A                    3311 	.db 0x0a
      0049BB 0D                    3312 	.db 0x0d
      0049BC 00                    3313 	.db 0x00
                                   3314 	.area CSEG    (CODE)
                                   3315 	.area CONST   (CODE)
      0049BD                       3316 ___str_7:
      0049BD E2                    3317 	.db 0xe2
      0049BE 94                    3318 	.db 0x94
      0049BF 82                    3319 	.db 0x82
      0049C0 20 20 20 20 20 57 20  3320 	.ascii "     W      "
             20 20 20 20 20
      0049CC E2                    3321 	.db 0xe2
      0049CD 94                    3322 	.db 0x94
      0049CE 82                    3323 	.db 0x82
      0049CF 20 57 72 69 74 65 20  3324 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0049FB E2                    3325 	.db 0xe2
      0049FC 94                    3326 	.db 0x94
      0049FD 82                    3327 	.db 0x82
      0049FE 0A                    3328 	.db 0x0a
      0049FF 0D                    3329 	.db 0x0d
      004A00 00                    3330 	.db 0x00
                                   3331 	.area CSEG    (CODE)
                                   3332 	.area CONST   (CODE)
      004A01                       3333 ___str_8:
      004A01 E2                    3334 	.db 0xe2
      004A02 94                    3335 	.db 0x94
      004A03 82                    3336 	.db 0x82
      004A04 20 20 20 20 20 48 20  3337 	.ascii "     H      "
             20 20 20 20 20
      004A10 E2                    3338 	.db 0xe2
      004A11 94                    3339 	.db 0x94
      004A12 82                    3340 	.db 0x82
      004A13 20 44 69 73 70 6C 61  3341 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004A3F E2                    3342 	.db 0xe2
      004A40 94                    3343 	.db 0x94
      004A41 82                    3344 	.db 0x82
      004A42 0A                    3345 	.db 0x0a
      004A43 0D                    3346 	.db 0x0d
      004A44 00                    3347 	.db 0x00
                                   3348 	.area CSEG    (CODE)
                                   3349 	.area CONST   (CODE)
      004A45                       3350 ___str_9:
      004A45 E2                    3351 	.db 0xe2
      004A46 94                    3352 	.db 0x94
      004A47 82                    3353 	.db 0x82
      004A48 20 20 20 20 20 58 20  3354 	.ascii "     X      "
             20 20 20 20 20
      004A54 E2                    3355 	.db 0xe2
      004A55 94                    3356 	.db 0x94
      004A56 82                    3357 	.db 0x82
      004A57 20 52 65 73 65 74 20  3358 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004A83 E2                    3359 	.db 0xe2
      004A84 94                    3360 	.db 0x94
      004A85 82                    3361 	.db 0x82
      004A86 0A                    3362 	.db 0x0a
      004A87 0D                    3363 	.db 0x0d
      004A88 00                    3364 	.db 0x00
                                   3365 	.area CSEG    (CODE)
                                   3366 	.area CONST   (CODE)
      004A89                       3367 ___str_10:
      004A89 E2                    3368 	.db 0xe2
      004A8A 94                    3369 	.db 0x94
      004A8B 82                    3370 	.db 0x82
      004A8C 20 20 20 20 20 3F 20  3371 	.ascii "     ?      "
             20 20 20 20 20
      004A98 E2                    3372 	.db 0xe2
      004A99 94                    3373 	.db 0x94
      004A9A 82                    3374 	.db 0x82
      004A9B 20 44 69 73 70 6C 61  3375 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004AC7 E2                    3376 	.db 0xe2
      004AC8 94                    3377 	.db 0x94
      004AC9 82                    3378 	.db 0x82
      004ACA 0A                    3379 	.db 0x0a
      004ACB 0D                    3380 	.db 0x0d
      004ACC 00                    3381 	.db 0x00
                                   3382 	.area CSEG    (CODE)
                                   3383 	.area CONST   (CODE)
      004ACD                       3384 ___str_11:
      004ACD E2                    3385 	.db 0xe2
      004ACE 94                    3386 	.db 0x94
      004ACF 82                    3387 	.db 0x82
      004AD0 20 20 20 20 20 51 20  3388 	.ascii "     Q      "
             20 20 20 20 20
      004ADC E2                    3389 	.db 0xe2
      004ADD 94                    3390 	.db 0x94
      004ADE 82                    3391 	.db 0x82
      004ADF 20 51 75 69 74 20 70  3392 	.ascii " Quit program                               "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004B0B E2                    3393 	.db 0xe2
      004B0C 94                    3394 	.db 0x94
      004B0D 82                    3395 	.db 0x82
      004B0E 0A                    3396 	.db 0x0a
      004B0F 0D                    3397 	.db 0x0d
      004B10 00                    3398 	.db 0x00
                                   3399 	.area CSEG    (CODE)
                                   3400 	.area CONST   (CODE)
      004B11                       3401 ___str_12:
      004B11 E2                    3402 	.db 0xe2
      004B12 94                    3403 	.db 0x94
      004B13 94                    3404 	.db 0x94
      004B14 E2                    3405 	.db 0xe2
      004B15 94                    3406 	.db 0x94
      004B16 80                    3407 	.db 0x80
      004B17 E2                    3408 	.db 0xe2
      004B18 94                    3409 	.db 0x94
      004B19 80                    3410 	.db 0x80
      004B1A E2                    3411 	.db 0xe2
      004B1B 94                    3412 	.db 0x94
      004B1C 80                    3413 	.db 0x80
      004B1D E2                    3414 	.db 0xe2
      004B1E 94                    3415 	.db 0x94
      004B1F 80                    3416 	.db 0x80
      004B20 E2                    3417 	.db 0xe2
      004B21 94                    3418 	.db 0x94
      004B22 80                    3419 	.db 0x80
      004B23 E2                    3420 	.db 0xe2
      004B24 94                    3421 	.db 0x94
      004B25 80                    3422 	.db 0x80
      004B26 E2                    3423 	.db 0xe2
      004B27 94                    3424 	.db 0x94
      004B28 80                    3425 	.db 0x80
      004B29 E2                    3426 	.db 0xe2
      004B2A 94                    3427 	.db 0x94
      004B2B 80                    3428 	.db 0x80
      004B2C E2                    3429 	.db 0xe2
      004B2D 94                    3430 	.db 0x94
      004B2E 80                    3431 	.db 0x80
      004B2F E2                    3432 	.db 0xe2
      004B30 94                    3433 	.db 0x94
      004B31 80                    3434 	.db 0x80
      004B32 E2                    3435 	.db 0xe2
      004B33 94                    3436 	.db 0x94
      004B34 80                    3437 	.db 0x80
      004B35 E2                    3438 	.db 0xe2
      004B36 94                    3439 	.db 0x94
      004B37 80                    3440 	.db 0x80
      004B38 E2                    3441 	.db 0xe2
      004B39 94                    3442 	.db 0x94
      004B3A B4                    3443 	.db 0xb4
      004B3B E2                    3444 	.db 0xe2
      004B3C 94                    3445 	.db 0x94
      004B3D 80                    3446 	.db 0x80
      004B3E E2                    3447 	.db 0xe2
      004B3F 94                    3448 	.db 0x94
      004B40 80                    3449 	.db 0x80
      004B41 E2                    3450 	.db 0xe2
      004B42 94                    3451 	.db 0x94
      004B43 80                    3452 	.db 0x80
      004B44 E2                    3453 	.db 0xe2
      004B45 94                    3454 	.db 0x94
      004B46 80                    3455 	.db 0x80
      004B47 E2                    3456 	.db 0xe2
      004B48 94                    3457 	.db 0x94
      004B49 80                    3458 	.db 0x80
      004B4A E2                    3459 	.db 0xe2
      004B4B 94                    3460 	.db 0x94
      004B4C 80                    3461 	.db 0x80
      004B4D E2                    3462 	.db 0xe2
      004B4E 94                    3463 	.db 0x94
      004B4F 80                    3464 	.db 0x80
      004B50 E2                    3465 	.db 0xe2
      004B51 94                    3466 	.db 0x94
      004B52 80                    3467 	.db 0x80
      004B53 E2                    3468 	.db 0xe2
      004B54 94                    3469 	.db 0x94
      004B55 80                    3470 	.db 0x80
      004B56 E2                    3471 	.db 0xe2
      004B57 94                    3472 	.db 0x94
      004B58 80                    3473 	.db 0x80
      004B59 E2                    3474 	.db 0xe2
      004B5A 94                    3475 	.db 0x94
      004B5B 80                    3476 	.db 0x80
      004B5C E2                    3477 	.db 0xe2
      004B5D 94                    3478 	.db 0x94
      004B5E 80                    3479 	.db 0x80
      004B5F E2                    3480 	.db 0xe2
      004B60 94                    3481 	.db 0x94
      004B61 80                    3482 	.db 0x80
      004B62 E2                    3483 	.db 0xe2
      004B63 94                    3484 	.db 0x94
      004B64 80                    3485 	.db 0x80
      004B65 E2                    3486 	.db 0xe2
      004B66 94                    3487 	.db 0x94
      004B67 80                    3488 	.db 0x80
      004B68 E2                    3489 	.db 0xe2
      004B69 94                    3490 	.db 0x94
      004B6A 80                    3491 	.db 0x80
      004B6B E2                    3492 	.db 0xe2
      004B6C 94                    3493 	.db 0x94
      004B6D 80                    3494 	.db 0x80
      004B6E E2                    3495 	.db 0xe2
      004B6F 94                    3496 	.db 0x94
      004B70 80                    3497 	.db 0x80
      004B71 E2                    3498 	.db 0xe2
      004B72 94                    3499 	.db 0x94
      004B73 80                    3500 	.db 0x80
      004B74 E2                    3501 	.db 0xe2
      004B75 94                    3502 	.db 0x94
      004B76 80                    3503 	.db 0x80
      004B77 E2                    3504 	.db 0xe2
      004B78 94                    3505 	.db 0x94
      004B79 80                    3506 	.db 0x80
      004B7A E2                    3507 	.db 0xe2
      004B7B 94                    3508 	.db 0x94
      004B7C 80                    3509 	.db 0x80
      004B7D E2                    3510 	.db 0xe2
      004B7E 94                    3511 	.db 0x94
      004B7F 80                    3512 	.db 0x80
      004B80 E2                    3513 	.db 0xe2
      004B81 94                    3514 	.db 0x94
      004B82 80                    3515 	.db 0x80
      004B83 E2                    3516 	.db 0xe2
      004B84 94                    3517 	.db 0x94
      004B85 80                    3518 	.db 0x80
      004B86 E2                    3519 	.db 0xe2
      004B87 94                    3520 	.db 0x94
      004B88 80                    3521 	.db 0x80
      004B89 E2                    3522 	.db 0xe2
      004B8A 94                    3523 	.db 0x94
      004B8B 80                    3524 	.db 0x80
      004B8C E2                    3525 	.db 0xe2
      004B8D 94                    3526 	.db 0x94
      004B8E 80                    3527 	.db 0x80
      004B8F E2                    3528 	.db 0xe2
      004B90 94                    3529 	.db 0x94
      004B91 80                    3530 	.db 0x80
      004B92 E2                    3531 	.db 0xe2
      004B93 94                    3532 	.db 0x94
      004B94 80                    3533 	.db 0x80
      004B95 E2                    3534 	.db 0xe2
      004B96 94                    3535 	.db 0x94
      004B97 80                    3536 	.db 0x80
      004B98 E2                    3537 	.db 0xe2
      004B99 94                    3538 	.db 0x94
      004B9A 80                    3539 	.db 0x80
      004B9B E2                    3540 	.db 0xe2
      004B9C 94                    3541 	.db 0x94
      004B9D 80                    3542 	.db 0x80
      004B9E E2                    3543 	.db 0xe2
      004B9F 94                    3544 	.db 0x94
      004BA0 80                    3545 	.db 0x80
      004BA1 E2                    3546 	.db 0xe2
      004BA2 94                    3547 	.db 0x94
      004BA3 80                    3548 	.db 0x80
      004BA4 E2                    3549 	.db 0xe2
      004BA5 94                    3550 	.db 0x94
      004BA6 80                    3551 	.db 0x80
      004BA7 E2                    3552 	.db 0xe2
      004BA8 94                    3553 	.db 0x94
      004BA9 80                    3554 	.db 0x80
      004BAA E2                    3555 	.db 0xe2
      004BAB 94                    3556 	.db 0x94
      004BAC 80                    3557 	.db 0x80
      004BAD E2                    3558 	.db 0xe2
      004BAE 94                    3559 	.db 0x94
      004BAF 80                    3560 	.db 0x80
      004BB0 E2                    3561 	.db 0xe2
      004BB1 94                    3562 	.db 0x94
      004BB2 80                    3563 	.db 0x80
      004BB3 E2                    3564 	.db 0xe2
      004BB4 94                    3565 	.db 0x94
      004BB5 80                    3566 	.db 0x80
      004BB6 E2                    3567 	.db 0xe2
      004BB7 94                    3568 	.db 0x94
      004BB8 80                    3569 	.db 0x80
      004BB9 E2                    3570 	.db 0xe2
      004BBA 94                    3571 	.db 0x94
      004BBB 80                    3572 	.db 0x80
      004BBC E2                    3573 	.db 0xe2
      004BBD 94                    3574 	.db 0x94
      004BBE 80                    3575 	.db 0x80
      004BBF E2                    3576 	.db 0xe2
      004BC0 94                    3577 	.db 0x94
      004BC1 98                    3578 	.db 0x98
      004BC2 0A                    3579 	.db 0x0a
      004BC3 0D                    3580 	.db 0x0d
      004BC4 00                    3581 	.db 0x00
                                   3582 	.area CSEG    (CODE)
                                   3583 	.area CONST   (CODE)
      004BC5                       3584 ___str_13:
      004BC5 7C 20 24 20 25 63     3585 	.ascii "| $ %c"
      004BCB 0A                    3586 	.db 0x0a
      004BCC 0D                    3587 	.db 0x0d
      004BCD 00                    3588 	.db 0x00
                                   3589 	.area CSEG    (CODE)
                                   3590 	.area CONST   (CODE)
      004BCE                       3591 ___str_14:
      004BCE 0A                    3592 	.db 0x0a
      004BCF E2                    3593 	.db 0xe2
      004BD0 94                    3594 	.db 0x94
      004BD1 8C                    3595 	.db 0x8c
      004BD2 E2                    3596 	.db 0xe2
      004BD3 94                    3597 	.db 0x94
      004BD4 80                    3598 	.db 0x80
      004BD5 E2                    3599 	.db 0xe2
      004BD6 94                    3600 	.db 0x94
      004BD7 80                    3601 	.db 0x80
      004BD8 E2                    3602 	.db 0xe2
      004BD9 94                    3603 	.db 0x94
      004BDA 80                    3604 	.db 0x80
      004BDB E2                    3605 	.db 0xe2
      004BDC 94                    3606 	.db 0x94
      004BDD 80                    3607 	.db 0x80
      004BDE E2                    3608 	.db 0xe2
      004BDF 94                    3609 	.db 0x94
      004BE0 80                    3610 	.db 0x80
      004BE1 E2                    3611 	.db 0xe2
      004BE2 94                    3612 	.db 0x94
      004BE3 80                    3613 	.db 0x80
      004BE4 E2                    3614 	.db 0xe2
      004BE5 94                    3615 	.db 0x94
      004BE6 80                    3616 	.db 0x80
      004BE7 E2                    3617 	.db 0xe2
      004BE8 94                    3618 	.db 0x94
      004BE9 80                    3619 	.db 0x80
      004BEA E2                    3620 	.db 0xe2
      004BEB 94                    3621 	.db 0x94
      004BEC 80                    3622 	.db 0x80
      004BED E2                    3623 	.db 0xe2
      004BEE 94                    3624 	.db 0x94
      004BEF 80                    3625 	.db 0x80
      004BF0 E2                    3626 	.db 0xe2
      004BF1 94                    3627 	.db 0x94
      004BF2 80                    3628 	.db 0x80
      004BF3 E2                    3629 	.db 0xe2
      004BF4 94                    3630 	.db 0x94
      004BF5 80                    3631 	.db 0x80
      004BF6 E2                    3632 	.db 0xe2
      004BF7 94                    3633 	.db 0x94
      004BF8 80                    3634 	.db 0x80
      004BF9 E2                    3635 	.db 0xe2
      004BFA 94                    3636 	.db 0x94
      004BFB 80                    3637 	.db 0x80
      004BFC E2                    3638 	.db 0xe2
      004BFD 94                    3639 	.db 0x94
      004BFE 80                    3640 	.db 0x80
      004BFF 20 57 52 49 54 45 20  3641 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      004C10 E2                    3642 	.db 0xe2
      004C11 94                    3643 	.db 0x94
      004C12 80                    3644 	.db 0x80
      004C13 E2                    3645 	.db 0xe2
      004C14 94                    3646 	.db 0x94
      004C15 80                    3647 	.db 0x80
      004C16 E2                    3648 	.db 0xe2
      004C17 94                    3649 	.db 0x94
      004C18 80                    3650 	.db 0x80
      004C19 E2                    3651 	.db 0xe2
      004C1A 94                    3652 	.db 0x94
      004C1B 80                    3653 	.db 0x80
      004C1C E2                    3654 	.db 0xe2
      004C1D 94                    3655 	.db 0x94
      004C1E 80                    3656 	.db 0x80
      004C1F E2                    3657 	.db 0xe2
      004C20 94                    3658 	.db 0x94
      004C21 80                    3659 	.db 0x80
      004C22 E2                    3660 	.db 0xe2
      004C23 94                    3661 	.db 0x94
      004C24 80                    3662 	.db 0x80
      004C25 E2                    3663 	.db 0xe2
      004C26 94                    3664 	.db 0x94
      004C27 80                    3665 	.db 0x80
      004C28 E2                    3666 	.db 0xe2
      004C29 94                    3667 	.db 0x94
      004C2A 80                    3668 	.db 0x80
      004C2B E2                    3669 	.db 0xe2
      004C2C 94                    3670 	.db 0x94
      004C2D 80                    3671 	.db 0x80
      004C2E E2                    3672 	.db 0xe2
      004C2F 94                    3673 	.db 0x94
      004C30 80                    3674 	.db 0x80
      004C31 E2                    3675 	.db 0xe2
      004C32 94                    3676 	.db 0x94
      004C33 80                    3677 	.db 0x80
      004C34 E2                    3678 	.db 0xe2
      004C35 94                    3679 	.db 0x94
      004C36 80                    3680 	.db 0x80
      004C37 E2                    3681 	.db 0xe2
      004C38 94                    3682 	.db 0x94
      004C39 80                    3683 	.db 0x80
      004C3A E2                    3684 	.db 0xe2
      004C3B 94                    3685 	.db 0x94
      004C3C 90                    3686 	.db 0x90
      004C3D 0A                    3687 	.db 0x0a
      004C3E 0D                    3688 	.db 0x0d
      004C3F 00                    3689 	.db 0x00
                                   3690 	.area CSEG    (CODE)
                                   3691 	.area CONST   (CODE)
      004C40                       3692 ___str_15:
      004C40 63 68 65 63 6B 20 70  3693 	.ascii "check point 1 "
             6F 69 6E 74 20 31 20
      004C4E 0A                    3694 	.db 0x0a
      004C4F 0D                    3695 	.db 0x0d
      004C50 00                    3696 	.db 0x00
                                   3697 	.area CSEG    (CODE)
                                   3698 	.area CONST   (CODE)
      004C51                       3699 ___str_16:
      004C51 0A                    3700 	.db 0x0a
      004C52 E2                    3701 	.db 0xe2
      004C53 94                    3702 	.db 0x94
      004C54 8C                    3703 	.db 0x8c
      004C55 E2                    3704 	.db 0xe2
      004C56 94                    3705 	.db 0x94
      004C57 80                    3706 	.db 0x80
      004C58 E2                    3707 	.db 0xe2
      004C59 94                    3708 	.db 0x94
      004C5A 80                    3709 	.db 0x80
      004C5B E2                    3710 	.db 0xe2
      004C5C 94                    3711 	.db 0x94
      004C5D 80                    3712 	.db 0x80
      004C5E E2                    3713 	.db 0xe2
      004C5F 94                    3714 	.db 0x94
      004C60 80                    3715 	.db 0x80
      004C61 E2                    3716 	.db 0xe2
      004C62 94                    3717 	.db 0x94
      004C63 80                    3718 	.db 0x80
      004C64 E2                    3719 	.db 0xe2
      004C65 94                    3720 	.db 0x94
      004C66 80                    3721 	.db 0x80
      004C67 E2                    3722 	.db 0xe2
      004C68 94                    3723 	.db 0x94
      004C69 80                    3724 	.db 0x80
      004C6A E2                    3725 	.db 0xe2
      004C6B 94                    3726 	.db 0x94
      004C6C 80                    3727 	.db 0x80
      004C6D E2                    3728 	.db 0xe2
      004C6E 94                    3729 	.db 0x94
      004C6F 80                    3730 	.db 0x80
      004C70 E2                    3731 	.db 0xe2
      004C71 94                    3732 	.db 0x94
      004C72 80                    3733 	.db 0x80
      004C73 E2                    3734 	.db 0xe2
      004C74 94                    3735 	.db 0x94
      004C75 80                    3736 	.db 0x80
      004C76 E2                    3737 	.db 0xe2
      004C77 94                    3738 	.db 0x94
      004C78 80                    3739 	.db 0x80
      004C79 E2                    3740 	.db 0xe2
      004C7A 94                    3741 	.db 0x94
      004C7B 80                    3742 	.db 0x80
      004C7C E2                    3743 	.db 0xe2
      004C7D 94                    3744 	.db 0x94
      004C7E 80                    3745 	.db 0x80
      004C7F E2                    3746 	.db 0xe2
      004C80 94                    3747 	.db 0x94
      004C81 80                    3748 	.db 0x80
      004C82 20 52 45 41 44 20 4F  3749 	.ascii " READ OPERATION "
             50 45 52 41 54 49 4F
             4E 20
      004C92 E2                    3750 	.db 0xe2
      004C93 94                    3751 	.db 0x94
      004C94 80                    3752 	.db 0x80
      004C95 E2                    3753 	.db 0xe2
      004C96 94                    3754 	.db 0x94
      004C97 80                    3755 	.db 0x80
      004C98 E2                    3756 	.db 0xe2
      004C99 94                    3757 	.db 0x94
      004C9A 80                    3758 	.db 0x80
      004C9B E2                    3759 	.db 0xe2
      004C9C 94                    3760 	.db 0x94
      004C9D 80                    3761 	.db 0x80
      004C9E E2                    3762 	.db 0xe2
      004C9F 94                    3763 	.db 0x94
      004CA0 80                    3764 	.db 0x80
      004CA1 E2                    3765 	.db 0xe2
      004CA2 94                    3766 	.db 0x94
      004CA3 80                    3767 	.db 0x80
      004CA4 E2                    3768 	.db 0xe2
      004CA5 94                    3769 	.db 0x94
      004CA6 80                    3770 	.db 0x80
      004CA7 E2                    3771 	.db 0xe2
      004CA8 94                    3772 	.db 0x94
      004CA9 80                    3773 	.db 0x80
      004CAA E2                    3774 	.db 0xe2
      004CAB 94                    3775 	.db 0x94
      004CAC 80                    3776 	.db 0x80
      004CAD E2                    3777 	.db 0xe2
      004CAE 94                    3778 	.db 0x94
      004CAF 80                    3779 	.db 0x80
      004CB0 E2                    3780 	.db 0xe2
      004CB1 94                    3781 	.db 0x94
      004CB2 80                    3782 	.db 0x80
      004CB3 E2                    3783 	.db 0xe2
      004CB4 94                    3784 	.db 0x94
      004CB5 80                    3785 	.db 0x80
      004CB6 E2                    3786 	.db 0xe2
      004CB7 94                    3787 	.db 0x94
      004CB8 80                    3788 	.db 0x80
      004CB9 E2                    3789 	.db 0xe2
      004CBA 94                    3790 	.db 0x94
      004CBB 80                    3791 	.db 0x80
      004CBC E2                    3792 	.db 0xe2
      004CBD 94                    3793 	.db 0x94
      004CBE 80                    3794 	.db 0x80
      004CBF E2                    3795 	.db 0xe2
      004CC0 94                    3796 	.db 0x94
      004CC1 90                    3797 	.db 0x90
      004CC2 0A                    3798 	.db 0x0a
      004CC3 0D                    3799 	.db 0x0d
      004CC4 00                    3800 	.db 0x00
                                   3801 	.area CSEG    (CODE)
                                   3802 	.area CONST   (CODE)
      004CC5                       3803 ___str_17:
      004CC5 7C 20 52 65 61 64 69  3804 	.ascii "| Reading from Address 0x%03X           |"
             6E 67 20 66 72 6F 6D
             20 41 64 64 72 65 73
             73 20 30 78 25 30 33
             58 20 20 20 20 20 20
             20 20 20 20 20 7C
      004CEE 0A                    3805 	.db 0x0a
      004CEF 0D                    3806 	.db 0x0d
      004CF0 00                    3807 	.db 0x00
                                   3808 	.area CSEG    (CODE)
                                   3809 	.area CONST   (CODE)
      004CF1                       3810 ___str_18:
      004CF1 49 4E 56 41 4C 49 44  3811 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      004CFE 0A                    3812 	.db 0x0a
      004CFF 0D                    3813 	.db 0x0d
      004D00 00                    3814 	.db 0x00
                                   3815 	.area CSEG    (CODE)
                                   3816 	.area CONST   (CODE)
      004D01                       3817 ___str_19:
      004D01 E2                    3818 	.db 0xe2
      004D02 94                    3819 	.db 0x94
      004D03 82                    3820 	.db 0x82
      004D04 20 45 6E 74 65 72 20  3821 	.ascii " Enter address (hex, up to 3 characters): "
             61 64 64 72 65 73 73
             20 28 68 65 78 2C 20
             75 70 20 74 6F 20 33
             20 63 68 61 72 61 63
             74 65 72 73 29 3A 20
      004D2E 0A                    3822 	.db 0x0a
      004D2F 0D                    3823 	.db 0x0d
      004D30 7C                    3824 	.ascii "|"
      004D31 00                    3825 	.db 0x00
                                   3826 	.area CSEG    (CODE)
                                   3827 	.area CONST   (CODE)
      004D32                       3828 ___str_20:
      004D32 7C 20 24 20           3829 	.ascii "| $ "
      004D36 00                    3830 	.db 0x00
                                   3831 	.area CSEG    (CODE)
                                   3832 	.area CONST   (CODE)
      004D37                       3833 ___str_21:
      004D37 0A                    3834 	.db 0x0a
      004D38 0D                    3835 	.db 0x0d
      004D39 E2                    3836 	.db 0xe2
      004D3A 94                    3837 	.db 0x94
      004D3B 82                    3838 	.db 0x82
      004D3C 20 45 6E 74 65 72 65  3839 	.ascii " Entered address: 0x%03X"
             64 20 61 64 64 72 65
             73 73 3A 20 30 78 25
             30 33 58
      004D54 0A                    3840 	.db 0x0a
      004D55 0D                    3841 	.db 0x0d
      004D56 00                    3842 	.db 0x00
                                   3843 	.area CSEG    (CODE)
                                   3844 	.area CONST   (CODE)
      004D57                       3845 ___str_22:
      004D57 E2                    3846 	.db 0xe2
      004D58 95                    3847 	.db 0x95
      004D59 94                    3848 	.db 0x94
      004D5A E2                    3849 	.db 0xe2
      004D5B 95                    3850 	.db 0x95
      004D5C 90                    3851 	.db 0x90
      004D5D E2                    3852 	.db 0xe2
      004D5E 95                    3853 	.db 0x95
      004D5F 90                    3854 	.db 0x90
      004D60 E2                    3855 	.db 0xe2
      004D61 95                    3856 	.db 0x95
      004D62 90                    3857 	.db 0x90
      004D63 E2                    3858 	.db 0xe2
      004D64 95                    3859 	.db 0x95
      004D65 90                    3860 	.db 0x90
      004D66 E2                    3861 	.db 0xe2
      004D67 95                    3862 	.db 0x95
      004D68 90                    3863 	.db 0x90
      004D69 E2                    3864 	.db 0xe2
      004D6A 95                    3865 	.db 0x95
      004D6B 90                    3866 	.db 0x90
      004D6C E2                    3867 	.db 0xe2
      004D6D 95                    3868 	.db 0x95
      004D6E 90                    3869 	.db 0x90
      004D6F E2                    3870 	.db 0xe2
      004D70 95                    3871 	.db 0x95
      004D71 90                    3872 	.db 0x90
      004D72 E2                    3873 	.db 0xe2
      004D73 95                    3874 	.db 0x95
      004D74 90                    3875 	.db 0x90
      004D75 E2                    3876 	.db 0xe2
      004D76 95                    3877 	.db 0x95
      004D77 90                    3878 	.db 0x90
      004D78 E2                    3879 	.db 0xe2
      004D79 95                    3880 	.db 0x95
      004D7A 90                    3881 	.db 0x90
      004D7B E2                    3882 	.db 0xe2
      004D7C 95                    3883 	.db 0x95
      004D7D 90                    3884 	.db 0x90
      004D7E E2                    3885 	.db 0xe2
      004D7F 95                    3886 	.db 0x95
      004D80 90                    3887 	.db 0x90
      004D81 E2                    3888 	.db 0xe2
      004D82 95                    3889 	.db 0x95
      004D83 90                    3890 	.db 0x90
      004D84 E2                    3891 	.db 0xe2
      004D85 95                    3892 	.db 0x95
      004D86 90                    3893 	.db 0x90
      004D87 E2                    3894 	.db 0xe2
      004D88 95                    3895 	.db 0x95
      004D89 90                    3896 	.db 0x90
      004D8A E2                    3897 	.db 0xe2
      004D8B 95                    3898 	.db 0x95
      004D8C 90                    3899 	.db 0x90
      004D8D E2                    3900 	.db 0xe2
      004D8E 95                    3901 	.db 0x95
      004D8F 90                    3902 	.db 0x90
      004D90 E2                    3903 	.db 0xe2
      004D91 95                    3904 	.db 0x95
      004D92 90                    3905 	.db 0x90
      004D93 E2                    3906 	.db 0xe2
      004D94 95                    3907 	.db 0x95
      004D95 90                    3908 	.db 0x90
      004D96 E2                    3909 	.db 0xe2
      004D97 95                    3910 	.db 0x95
      004D98 90                    3911 	.db 0x90
      004D99 E2                    3912 	.db 0xe2
      004D9A 95                    3913 	.db 0x95
      004D9B 90                    3914 	.db 0x90
      004D9C E2                    3915 	.db 0xe2
      004D9D 95                    3916 	.db 0x95
      004D9E 90                    3917 	.db 0x90
      004D9F E2                    3918 	.db 0xe2
      004DA0 95                    3919 	.db 0x95
      004DA1 90                    3920 	.db 0x90
      004DA2 E2                    3921 	.db 0xe2
      004DA3 95                    3922 	.db 0x95
      004DA4 90                    3923 	.db 0x90
      004DA5 E2                    3924 	.db 0xe2
      004DA6 95                    3925 	.db 0x95
      004DA7 90                    3926 	.db 0x90
      004DA8 E2                    3927 	.db 0xe2
      004DA9 95                    3928 	.db 0x95
      004DAA 90                    3929 	.db 0x90
      004DAB E2                    3930 	.db 0xe2
      004DAC 95                    3931 	.db 0x95
      004DAD 90                    3932 	.db 0x90
      004DAE E2                    3933 	.db 0xe2
      004DAF 95                    3934 	.db 0x95
      004DB0 90                    3935 	.db 0x90
      004DB1 E2                    3936 	.db 0xe2
      004DB2 95                    3937 	.db 0x95
      004DB3 90                    3938 	.db 0x90
      004DB4 E2                    3939 	.db 0xe2
      004DB5 95                    3940 	.db 0x95
      004DB6 90                    3941 	.db 0x90
      004DB7 E2                    3942 	.db 0xe2
      004DB8 95                    3943 	.db 0x95
      004DB9 90                    3944 	.db 0x90
      004DBA E2                    3945 	.db 0xe2
      004DBB 95                    3946 	.db 0x95
      004DBC 90                    3947 	.db 0x90
      004DBD E2                    3948 	.db 0xe2
      004DBE 95                    3949 	.db 0x95
      004DBF 90                    3950 	.db 0x90
      004DC0 E2                    3951 	.db 0xe2
      004DC1 95                    3952 	.db 0x95
      004DC2 90                    3953 	.db 0x90
      004DC3 E2                    3954 	.db 0xe2
      004DC4 95                    3955 	.db 0x95
      004DC5 90                    3956 	.db 0x90
      004DC6 E2                    3957 	.db 0xe2
      004DC7 95                    3958 	.db 0x95
      004DC8 90                    3959 	.db 0x90
      004DC9 E2                    3960 	.db 0xe2
      004DCA 95                    3961 	.db 0x95
      004DCB 90                    3962 	.db 0x90
      004DCC E2                    3963 	.db 0xe2
      004DCD 95                    3964 	.db 0x95
      004DCE 90                    3965 	.db 0x90
      004DCF E2                    3966 	.db 0xe2
      004DD0 95                    3967 	.db 0x95
      004DD1 90                    3968 	.db 0x90
      004DD2 E2                    3969 	.db 0xe2
      004DD3 95                    3970 	.db 0x95
      004DD4 90                    3971 	.db 0x90
      004DD5 E2                    3972 	.db 0xe2
      004DD6 95                    3973 	.db 0x95
      004DD7 90                    3974 	.db 0x90
      004DD8 E2                    3975 	.db 0xe2
      004DD9 95                    3976 	.db 0x95
      004DDA 97                    3977 	.db 0x97
      004DDB 0A                    3978 	.db 0x0a
      004DDC 0D                    3979 	.db 0x0d
      004DDD 00                    3980 	.db 0x00
                                   3981 	.area CSEG    (CODE)
                                   3982 	.area CONST   (CODE)
      004DDE                       3983 ___str_23:
      004DDE E2                    3984 	.db 0xe2
      004DDF 95                    3985 	.db 0x95
      004DE0 91                    3986 	.db 0x91
      004DE1 20 20 20 20 20 20 20  3987 	.ascii "       ! ADDRESS OUT OF RANGE !         "
             21 20 41 44 44 52 45
             53 53 20 4F 55 54 20
             4F 46 20 52 41 4E 47
             45 20 21 20 20 20 20
             20 20 20 20 20
      004E09 E2                    3988 	.db 0xe2
      004E0A 95                    3989 	.db 0x95
      004E0B 91                    3990 	.db 0x91
      004E0C 0A                    3991 	.db 0x0a
      004E0D 0D                    3992 	.db 0x0d
      004E0E 00                    3993 	.db 0x00
                                   3994 	.area CSEG    (CODE)
                                   3995 	.area CONST   (CODE)
      004E0F                       3996 ___str_24:
      004E0F E2                    3997 	.db 0xe2
      004E10 95                    3998 	.db 0x95
      004E11 91                    3999 	.db 0x91
      004E12 20 20 20 20 20 50 6C  4000 	.ascii "     Please Enter Valid Address         "
             65 61 73 65 20 45 6E
             74 65 72 20 56 61 6C
             69 64 20 41 64 64 72
             65 73 73 20 20 20 20
             20 20 20 20 20
      004E3A E2                    4001 	.db 0xe2
      004E3B 95                    4002 	.db 0x95
      004E3C 91                    4003 	.db 0x91
      004E3D 0A                    4004 	.db 0x0a
      004E3E 0D                    4005 	.db 0x0d
      004E3F 00                    4006 	.db 0x00
                                   4007 	.area CSEG    (CODE)
                                   4008 	.area CONST   (CODE)
      004E40                       4009 ___str_25:
      004E40 E2                    4010 	.db 0xe2
      004E41 95                    4011 	.db 0x95
      004E42 9A                    4012 	.db 0x9a
      004E43 E2                    4013 	.db 0xe2
      004E44 95                    4014 	.db 0x95
      004E45 90                    4015 	.db 0x90
      004E46 E2                    4016 	.db 0xe2
      004E47 95                    4017 	.db 0x95
      004E48 90                    4018 	.db 0x90
      004E49 E2                    4019 	.db 0xe2
      004E4A 95                    4020 	.db 0x95
      004E4B 90                    4021 	.db 0x90
      004E4C E2                    4022 	.db 0xe2
      004E4D 95                    4023 	.db 0x95
      004E4E 90                    4024 	.db 0x90
      004E4F E2                    4025 	.db 0xe2
      004E50 95                    4026 	.db 0x95
      004E51 90                    4027 	.db 0x90
      004E52 E2                    4028 	.db 0xe2
      004E53 95                    4029 	.db 0x95
      004E54 90                    4030 	.db 0x90
      004E55 E2                    4031 	.db 0xe2
      004E56 95                    4032 	.db 0x95
      004E57 90                    4033 	.db 0x90
      004E58 E2                    4034 	.db 0xe2
      004E59 95                    4035 	.db 0x95
      004E5A 90                    4036 	.db 0x90
      004E5B E2                    4037 	.db 0xe2
      004E5C 95                    4038 	.db 0x95
      004E5D 90                    4039 	.db 0x90
      004E5E E2                    4040 	.db 0xe2
      004E5F 95                    4041 	.db 0x95
      004E60 90                    4042 	.db 0x90
      004E61 E2                    4043 	.db 0xe2
      004E62 95                    4044 	.db 0x95
      004E63 90                    4045 	.db 0x90
      004E64 E2                    4046 	.db 0xe2
      004E65 95                    4047 	.db 0x95
      004E66 90                    4048 	.db 0x90
      004E67 E2                    4049 	.db 0xe2
      004E68 95                    4050 	.db 0x95
      004E69 90                    4051 	.db 0x90
      004E6A E2                    4052 	.db 0xe2
      004E6B 95                    4053 	.db 0x95
      004E6C 90                    4054 	.db 0x90
      004E6D E2                    4055 	.db 0xe2
      004E6E 95                    4056 	.db 0x95
      004E6F 90                    4057 	.db 0x90
      004E70 E2                    4058 	.db 0xe2
      004E71 95                    4059 	.db 0x95
      004E72 90                    4060 	.db 0x90
      004E73 E2                    4061 	.db 0xe2
      004E74 95                    4062 	.db 0x95
      004E75 90                    4063 	.db 0x90
      004E76 E2                    4064 	.db 0xe2
      004E77 95                    4065 	.db 0x95
      004E78 90                    4066 	.db 0x90
      004E79 E2                    4067 	.db 0xe2
      004E7A 95                    4068 	.db 0x95
      004E7B 90                    4069 	.db 0x90
      004E7C E2                    4070 	.db 0xe2
      004E7D 95                    4071 	.db 0x95
      004E7E 90                    4072 	.db 0x90
      004E7F E2                    4073 	.db 0xe2
      004E80 95                    4074 	.db 0x95
      004E81 90                    4075 	.db 0x90
      004E82 E2                    4076 	.db 0xe2
      004E83 95                    4077 	.db 0x95
      004E84 90                    4078 	.db 0x90
      004E85 E2                    4079 	.db 0xe2
      004E86 95                    4080 	.db 0x95
      004E87 90                    4081 	.db 0x90
      004E88 E2                    4082 	.db 0xe2
      004E89 95                    4083 	.db 0x95
      004E8A 90                    4084 	.db 0x90
      004E8B E2                    4085 	.db 0xe2
      004E8C 95                    4086 	.db 0x95
      004E8D 90                    4087 	.db 0x90
      004E8E E2                    4088 	.db 0xe2
      004E8F 95                    4089 	.db 0x95
      004E90 90                    4090 	.db 0x90
      004E91 E2                    4091 	.db 0xe2
      004E92 95                    4092 	.db 0x95
      004E93 90                    4093 	.db 0x90
      004E94 E2                    4094 	.db 0xe2
      004E95 95                    4095 	.db 0x95
      004E96 90                    4096 	.db 0x90
      004E97 E2                    4097 	.db 0xe2
      004E98 95                    4098 	.db 0x95
      004E99 90                    4099 	.db 0x90
      004E9A E2                    4100 	.db 0xe2
      004E9B 95                    4101 	.db 0x95
      004E9C 90                    4102 	.db 0x90
      004E9D E2                    4103 	.db 0xe2
      004E9E 95                    4104 	.db 0x95
      004E9F 90                    4105 	.db 0x90
      004EA0 E2                    4106 	.db 0xe2
      004EA1 95                    4107 	.db 0x95
      004EA2 90                    4108 	.db 0x90
      004EA3 E2                    4109 	.db 0xe2
      004EA4 95                    4110 	.db 0x95
      004EA5 90                    4111 	.db 0x90
      004EA6 E2                    4112 	.db 0xe2
      004EA7 95                    4113 	.db 0x95
      004EA8 90                    4114 	.db 0x90
      004EA9 E2                    4115 	.db 0xe2
      004EAA 95                    4116 	.db 0x95
      004EAB 90                    4117 	.db 0x90
      004EAC E2                    4118 	.db 0xe2
      004EAD 95                    4119 	.db 0x95
      004EAE 90                    4120 	.db 0x90
      004EAF E2                    4121 	.db 0xe2
      004EB0 95                    4122 	.db 0x95
      004EB1 90                    4123 	.db 0x90
      004EB2 E2                    4124 	.db 0xe2
      004EB3 95                    4125 	.db 0x95
      004EB4 90                    4126 	.db 0x90
      004EB5 E2                    4127 	.db 0xe2
      004EB6 95                    4128 	.db 0x95
      004EB7 90                    4129 	.db 0x90
      004EB8 E2                    4130 	.db 0xe2
      004EB9 95                    4131 	.db 0x95
      004EBA 90                    4132 	.db 0x90
      004EBB E2                    4133 	.db 0xe2
      004EBC 95                    4134 	.db 0x95
      004EBD 90                    4135 	.db 0x90
      004EBE E2                    4136 	.db 0xe2
      004EBF 95                    4137 	.db 0x95
      004EC0 90                    4138 	.db 0x90
      004EC1 E2                    4139 	.db 0xe2
      004EC2 95                    4140 	.db 0x95
      004EC3 9D                    4141 	.db 0x9d
      004EC4 0A                    4142 	.db 0x0a
      004EC5 0D                    4143 	.db 0x0d
      004EC6 00                    4144 	.db 0x00
                                   4145 	.area CSEG    (CODE)
                                   4146 	.area CONST   (CODE)
      004EC7                       4147 ___str_26:
      004EC7 E2                    4148 	.db 0xe2
      004EC8 94                    4149 	.db 0x94
      004EC9 82                    4150 	.db 0x82
      004ECA 20 45 6E 74 65 72 20  4151 	.ascii " Enter data (hex, up to 2 characters): "
             64 61 74 61 20 28 68
             65 78 2C 20 75 70 20
             74 6F 20 32 20 63 68
             61 72 61 63 74 65 72
             73 29 3A 20
      004EF1 0A                    4152 	.db 0x0a
      004EF2 0D                    4153 	.db 0x0d
      004EF3 7C                    4154 	.ascii "|"
      004EF4 00                    4155 	.db 0x00
                                   4156 	.area CSEG    (CODE)
                                   4157 	.area CONST   (CODE)
      004EF5                       4158 ___str_27:
      004EF5 0A                    4159 	.db 0x0a
      004EF6 0D                    4160 	.db 0x0d
      004EF7 E2                    4161 	.db 0xe2
      004EF8 94                    4162 	.db 0x94
      004EF9 82                    4163 	.db 0x82
      004EFA 20 45 6E 74 65 72 65  4164 	.ascii " Entered data: 0x%03X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 33 58
      004F0F 0A                    4165 	.db 0x0a
      004F10 0D                    4166 	.db 0x0d
      004F11 00                    4167 	.db 0x00
                                   4168 	.area CSEG    (CODE)
                                   4169 	.area CONST   (CODE)
      004F12                       4170 ___str_28:
      004F12 44 61 74 61 20 6F 75  4171 	.ascii "Data out of Range"
             74 20 6F 66 20 52 61
             6E 67 65
      004F23 0A                    4172 	.db 0x0a
      004F24 0D                    4173 	.db 0x0d
      004F25 00                    4174 	.db 0x00
                                   4175 	.area CSEG    (CODE)
                                   4176 	.area CONST   (CODE)
      004F26                       4177 ___str_29:
      004F26 63 68 65 63 6B 20 70  4178 	.ascii "check point 2"
             6F 69 6E 74 20 32
      004F33 0A                    4179 	.db 0x0a
      004F34 0D                    4180 	.db 0x0d
      004F35 00                    4181 	.db 0x00
                                   4182 	.area CSEG    (CODE)
                                   4183 	.area CONST   (CODE)
      004F36                       4184 ___str_30:
      004F36 63 68 65 63 6B 70 6F  4185 	.ascii "checkpoint 3"
             69 6E 74 20 33
      004F42 0A                    4186 	.db 0x0a
      004F43 0D                    4187 	.db 0x0d
      004F44 00                    4188 	.db 0x00
                                   4189 	.area CSEG    (CODE)
                                   4190 	.area CONST   (CODE)
      004F45                       4191 ___str_31:
      004F45 45 72 72 6F 72 3A 20  4192 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      004F6D 0A                    4193 	.db 0x0a
      004F6E 0D                    4194 	.db 0x0d
      004F6F 00                    4195 	.db 0x00
                                   4196 	.area CSEG    (CODE)
                                   4197 	.area CONST   (CODE)
      004F70                       4198 ___str_32:
      004F70 45 72 72 6F 72 3A 20  4199 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      004F90 0A                    4200 	.db 0x0a
      004F91 0D                    4201 	.db 0x0d
      004F92 00                    4202 	.db 0x00
                                   4203 	.area CSEG    (CODE)
                                   4204 	.area CONST   (CODE)
      004F93                       4205 ___str_33:
      004F93 45 72 72 6F 72 3A 20  4206 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      004FA9 0A                    4207 	.db 0x0a
      004FAA 0D                    4208 	.db 0x0d
      004FAB 00                    4209 	.db 0x00
                                   4210 	.area CSEG    (CODE)
                                   4211 	.area CONST   (CODE)
      004FAC                       4212 ___str_34:
      004FAC 63 68 65 63 6B 70 6F  4213 	.ascii "checkpoint 4"
             69 6E 74 20 34
      004FB8 0A                    4214 	.db 0x0a
      004FB9 0D                    4215 	.db 0x0d
      004FBA 00                    4216 	.db 0x00
                                   4217 	.area CSEG    (CODE)
                                   4218 	.area CONST   (CODE)
      004FBB                       4219 ___str_35:
      004FBB 7C 20 57 72 69 74 69  4220 	.ascii "| Writing at Address 0x%03X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 33 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      004FED 0A                    4221 	.db 0x0a
      004FEE 0D                    4222 	.db 0x0d
      004FEF 00                    4223 	.db 0x00
                                   4224 	.area CSEG    (CODE)
                                   4225 	.area CONST   (CODE)
      004FF0                       4226 ___str_36:
      004FF0 E2                    4227 	.db 0xe2
      004FF1 94                    4228 	.db 0x94
      004FF2 82                    4229 	.db 0x82
      004FF3 20 57 72 69 74 65 20  4230 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      005022 E2                    4231 	.db 0xe2
      005023 94                    4232 	.db 0x94
      005024 82                    4233 	.db 0x82
      005025 0A                    4234 	.db 0x0a
      005026 0D                    4235 	.db 0x0d
      005027 00                    4236 	.db 0x00
                                   4237 	.area CSEG    (CODE)
                                   4238 	.area CONST   (CODE)
      005028                       4239 ___str_37:
      005028 E2                    4240 	.db 0xe2
      005029 94                    4241 	.db 0x94
      00502A 94                    4242 	.db 0x94
      00502B E2                    4243 	.db 0xe2
      00502C 94                    4244 	.db 0x94
      00502D 80                    4245 	.db 0x80
      00502E E2                    4246 	.db 0xe2
      00502F 94                    4247 	.db 0x94
      005030 80                    4248 	.db 0x80
      005031 E2                    4249 	.db 0xe2
      005032 94                    4250 	.db 0x94
      005033 80                    4251 	.db 0x80
      005034 E2                    4252 	.db 0xe2
      005035 94                    4253 	.db 0x94
      005036 80                    4254 	.db 0x80
      005037 E2                    4255 	.db 0xe2
      005038 94                    4256 	.db 0x94
      005039 80                    4257 	.db 0x80
      00503A E2                    4258 	.db 0xe2
      00503B 94                    4259 	.db 0x94
      00503C 80                    4260 	.db 0x80
      00503D E2                    4261 	.db 0xe2
      00503E 94                    4262 	.db 0x94
      00503F 80                    4263 	.db 0x80
      005040 E2                    4264 	.db 0xe2
      005041 94                    4265 	.db 0x94
      005042 80                    4266 	.db 0x80
      005043 E2                    4267 	.db 0xe2
      005044 94                    4268 	.db 0x94
      005045 80                    4269 	.db 0x80
      005046 E2                    4270 	.db 0xe2
      005047 94                    4271 	.db 0x94
      005048 80                    4272 	.db 0x80
      005049 E2                    4273 	.db 0xe2
      00504A 94                    4274 	.db 0x94
      00504B 80                    4275 	.db 0x80
      00504C E2                    4276 	.db 0xe2
      00504D 94                    4277 	.db 0x94
      00504E 80                    4278 	.db 0x80
      00504F E2                    4279 	.db 0xe2
      005050 94                    4280 	.db 0x94
      005051 80                    4281 	.db 0x80
      005052 E2                    4282 	.db 0xe2
      005053 94                    4283 	.db 0x94
      005054 80                    4284 	.db 0x80
      005055 E2                    4285 	.db 0xe2
      005056 94                    4286 	.db 0x94
      005057 80                    4287 	.db 0x80
      005058 E2                    4288 	.db 0xe2
      005059 94                    4289 	.db 0x94
      00505A 80                    4290 	.db 0x80
      00505B E2                    4291 	.db 0xe2
      00505C 94                    4292 	.db 0x94
      00505D 80                    4293 	.db 0x80
      00505E E2                    4294 	.db 0xe2
      00505F 94                    4295 	.db 0x94
      005060 80                    4296 	.db 0x80
      005061 E2                    4297 	.db 0xe2
      005062 94                    4298 	.db 0x94
      005063 80                    4299 	.db 0x80
      005064 E2                    4300 	.db 0xe2
      005065 94                    4301 	.db 0x94
      005066 80                    4302 	.db 0x80
      005067 E2                    4303 	.db 0xe2
      005068 94                    4304 	.db 0x94
      005069 80                    4305 	.db 0x80
      00506A E2                    4306 	.db 0xe2
      00506B 94                    4307 	.db 0x94
      00506C 80                    4308 	.db 0x80
      00506D E2                    4309 	.db 0xe2
      00506E 94                    4310 	.db 0x94
      00506F 80                    4311 	.db 0x80
      005070 E2                    4312 	.db 0xe2
      005071 94                    4313 	.db 0x94
      005072 80                    4314 	.db 0x80
      005073 E2                    4315 	.db 0xe2
      005074 94                    4316 	.db 0x94
      005075 80                    4317 	.db 0x80
      005076 E2                    4318 	.db 0xe2
      005077 94                    4319 	.db 0x94
      005078 80                    4320 	.db 0x80
      005079 E2                    4321 	.db 0xe2
      00507A 94                    4322 	.db 0x94
      00507B 80                    4323 	.db 0x80
      00507C E2                    4324 	.db 0xe2
      00507D 94                    4325 	.db 0x94
      00507E 80                    4326 	.db 0x80
      00507F E2                    4327 	.db 0xe2
      005080 94                    4328 	.db 0x94
      005081 80                    4329 	.db 0x80
      005082 E2                    4330 	.db 0xe2
      005083 94                    4331 	.db 0x94
      005084 80                    4332 	.db 0x80
      005085 E2                    4333 	.db 0xe2
      005086 94                    4334 	.db 0x94
      005087 80                    4335 	.db 0x80
      005088 E2                    4336 	.db 0xe2
      005089 94                    4337 	.db 0x94
      00508A 80                    4338 	.db 0x80
      00508B E2                    4339 	.db 0xe2
      00508C 94                    4340 	.db 0x94
      00508D 80                    4341 	.db 0x80
      00508E E2                    4342 	.db 0xe2
      00508F 94                    4343 	.db 0x94
      005090 80                    4344 	.db 0x80
      005091 E2                    4345 	.db 0xe2
      005092 94                    4346 	.db 0x94
      005093 80                    4347 	.db 0x80
      005094 E2                    4348 	.db 0xe2
      005095 94                    4349 	.db 0x94
      005096 80                    4350 	.db 0x80
      005097 E2                    4351 	.db 0xe2
      005098 94                    4352 	.db 0x94
      005099 80                    4353 	.db 0x80
      00509A E2                    4354 	.db 0xe2
      00509B 94                    4355 	.db 0x94
      00509C 80                    4356 	.db 0x80
      00509D E2                    4357 	.db 0xe2
      00509E 94                    4358 	.db 0x94
      00509F 80                    4359 	.db 0x80
      0050A0 E2                    4360 	.db 0xe2
      0050A1 94                    4361 	.db 0x94
      0050A2 80                    4362 	.db 0x80
      0050A3 E2                    4363 	.db 0xe2
      0050A4 94                    4364 	.db 0x94
      0050A5 80                    4365 	.db 0x80
      0050A6 E2                    4366 	.db 0xe2
      0050A7 94                    4367 	.db 0x94
      0050A8 80                    4368 	.db 0x80
      0050A9 E2                    4369 	.db 0xe2
      0050AA 94                    4370 	.db 0x94
      0050AB 80                    4371 	.db 0x80
      0050AC E2                    4372 	.db 0xe2
      0050AD 94                    4373 	.db 0x94
      0050AE 80                    4374 	.db 0x80
      0050AF E2                    4375 	.db 0xe2
      0050B0 94                    4376 	.db 0x94
      0050B1 80                    4377 	.db 0x80
      0050B2 E2                    4378 	.db 0xe2
      0050B3 94                    4379 	.db 0x94
      0050B4 80                    4380 	.db 0x80
      0050B5 E2                    4381 	.db 0xe2
      0050B6 94                    4382 	.db 0x94
      0050B7 80                    4383 	.db 0x80
      0050B8 E2                    4384 	.db 0xe2
      0050B9 94                    4385 	.db 0x94
      0050BA 98                    4386 	.db 0x98
      0050BB 0A                    4387 	.db 0x0a
      0050BC 0D                    4388 	.db 0x0d
      0050BD 00                    4389 	.db 0x00
                                   4390 	.area CSEG    (CODE)
                                   4391 	.area CONST   (CODE)
      0050BE                       4392 ___str_38:
      0050BE 63 68 65 63 6B 70 6F  4393 	.ascii "checkpoint 5"
             69 6E 74 20 35
      0050CA 0A                    4394 	.db 0x0a
      0050CB 0D                    4395 	.db 0x0d
      0050CC 00                    4396 	.db 0x00
                                   4397 	.area CSEG    (CODE)
                                   4398 	.area CONST   (CODE)
      0050CD                       4399 ___str_39:
      0050CD 45 72 72 6F 72 3A 20  4400 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      0050FA 0A                    4401 	.db 0x0a
      0050FB 0D                    4402 	.db 0x0d
      0050FC 00                    4403 	.db 0x00
                                   4404 	.area CSEG    (CODE)
                                   4405 	.area CONST   (CODE)
      0050FD                       4406 ___str_40:
      0050FD 45 72 72 6F 72 3A 20  4407 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      005129 0A                    4408 	.db 0x0a
      00512A 0D                    4409 	.db 0x0d
      00512B 00                    4410 	.db 0x00
                                   4411 	.area CSEG    (CODE)
                                   4412 	.area CONST   (CODE)
      00512C                       4413 ___str_41:
      00512C E2                    4414 	.db 0xe2
      00512D 94                    4415 	.db 0x94
      00512E 82                    4416 	.db 0x82
      00512F 20 52 65 61 64 69 6E  4417 	.ascii " Reading from Adress: 0x%03X Data: 0x%02X                   "
             67 20 66 72 6F 6D 20
             41 64 72 65 73 73 3A
             20 30 78 25 30 33 58
             20 44 61 74 61 3A 20
             30 78 25 30 32 58 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      00516B 20                    4418 	.ascii " "
      00516C 0A                    4419 	.db 0x0a
      00516D 0D                    4420 	.db 0x0d
      00516E 00                    4421 	.db 0x00
                                   4422 	.area CSEG    (CODE)
                                   4423 	.area CONST   (CODE)
      00516F                       4424 ___str_42:
      00516F 7C 20 30 78 25 30 33  4425 	.ascii "| 0x%03X : 0x%02X "
             58 20 3A 20 30 78 25
             30 32 58 20
      005181 0A                    4426 	.db 0x0a
      005182 0D                    4427 	.db 0x0d
      005183 00                    4428 	.db 0x00
                                   4429 	.area CSEG    (CODE)
                                   4430 	.area CONST   (CODE)
      005184                       4431 ___str_43:
      005184 E2                    4432 	.db 0xe2
      005185 94                    4433 	.db 0x94
      005186 82                    4434 	.db 0x82
      005187 20 52 65 61 64 20 73  4435 	.ascii " Read successful!                 "
             75 63 63 65 73 73 66
             75 6C 21 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20
      0051A9 E2                    4436 	.db 0xe2
      0051AA 94                    4437 	.db 0x94
      0051AB 82                    4438 	.db 0x82
      0051AC 0A                    4439 	.db 0x0a
      0051AD 0D                    4440 	.db 0x0d
      0051AE 00                    4441 	.db 0x00
                                   4442 	.area CSEG    (CODE)
                                   4443 	.area CONST   (CODE)
      0051AF                       4444 ___str_44:
      0051AF 41 43 4B 20 44 49 44  4445 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      0051C1 0A                    4446 	.db 0x0a
      0051C2 0D                    4447 	.db 0x0d
      0051C3 00                    4448 	.db 0x00
                                   4449 	.area CSEG    (CODE)
                                   4450 	.area CONST   (CODE)
      0051C4                       4451 ___str_45:
      0051C4 57 72 69 74 69 6E 67  4452 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      0051E9 0A                    4453 	.db 0x0a
      0051EA 0D                    4454 	.db 0x0d
      0051EB 00                    4455 	.db 0x00
                                   4456 	.area CSEG    (CODE)
                                   4457 	.area CONST   (CODE)
      0051EC                       4458 ___str_46:
      0051EC 52 65 61 64 20 62 61  4459 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      005211 0A                    4460 	.db 0x0a
      005212 0D                    4461 	.db 0x0d
      005213 00                    4462 	.db 0x00
                                   4463 	.area CSEG    (CODE)
                                   4464 	.area CONST   (CODE)
      005214                       4465 ___str_47:
      005214 4D 41 54 43 48 20 2D  4466 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      005232 0A                    4467 	.db 0x0a
      005233 0D                    4468 	.db 0x0d
      005234 00                    4469 	.db 0x00
                                   4470 	.area CSEG    (CODE)
                                   4471 	.area CONST   (CODE)
      005235                       4472 ___str_48:
      005235 45 52 52 4F 52 20 2D  4473 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      00524B 0A                    4474 	.db 0x0a
      00524C 0D                    4475 	.db 0x0d
      00524D 00                    4476 	.db 0x00
                                   4477 	.area CSEG    (CODE)
                                   4478 	.area XINIT   (CODE)
      005259                       4479 __xinit__address_range_flag:
      005259 01 00                 4480 	.byte #0x01, #0x00	;  1
      00525B                       4481 __xinit__data_range_flag:
      00525B 01 00                 4482 	.byte #0x01, #0x00	;  1
      00525D                       4483 __xinit__block:
      00525D 00 00                 4484 	.byte #0x00, #0x00	; 0
                                   4485 	.area CABS    (ABS,CODE)
