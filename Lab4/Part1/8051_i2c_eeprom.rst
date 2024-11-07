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
      00308F 74 A5            [12]  628 	mov	a,#___str_0
      003091 C0 E0            [24]  629 	push	acc
      003093 74 45            [12]  630 	mov	a,#(___str_0 >> 8)
      003095 C0 E0            [24]  631 	push	acc
      003097 74 80            [12]  632 	mov	a,#0x80
      003099 C0 E0            [24]  633 	push	acc
      00309B 12 3B 43         [24]  634 	lcall	_printf
      00309E 15 81            [12]  635 	dec	sp
      0030A0 15 81            [12]  636 	dec	sp
      0030A2 15 81            [12]  637 	dec	sp
                                    638 ;	8051_i2c_eeprom.c:47: printf("║           I2C Memory Management System v1.0            ║\n\r");
      0030A4 74 57            [12]  639 	mov	a,#___str_1
      0030A6 C0 E0            [24]  640 	push	acc
      0030A8 74 46            [12]  641 	mov	a,#(___str_1 >> 8)
      0030AA C0 E0            [24]  642 	push	acc
      0030AC 74 80            [12]  643 	mov	a,#0x80
      0030AE C0 E0            [24]  644 	push	acc
      0030B0 12 3B 43         [24]  645 	lcall	_printf
      0030B3 15 81            [12]  646 	dec	sp
      0030B5 15 81            [12]  647 	dec	sp
      0030B7 15 81            [12]  648 	dec	sp
                                    649 ;	8051_i2c_eeprom.c:48: printf("╚════════════════════════════════════════════════════════╝\n\r");
      0030B9 74 98            [12]  650 	mov	a,#___str_2
      0030BB C0 E0            [24]  651 	push	acc
      0030BD 74 46            [12]  652 	mov	a,#(___str_2 >> 8)
      0030BF C0 E0            [24]  653 	push	acc
      0030C1 74 80            [12]  654 	mov	a,#0x80
      0030C3 C0 E0            [24]  655 	push	acc
      0030C5 12 3B 43         [24]  656 	lcall	_printf
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
      0030CF 74 49            [12]  671 	mov	a,#___str_3
      0030D1 C0 E0            [24]  672 	push	acc
      0030D3 74 47            [12]  673 	mov	a,#(___str_3 >> 8)
      0030D5 C0 E0            [24]  674 	push	acc
      0030D7 74 80            [12]  675 	mov	a,#0x80
      0030D9 C0 E0            [24]  676 	push	acc
      0030DB 12 3B 43         [24]  677 	lcall	_printf
      0030DE 15 81            [12]  678 	dec	sp
      0030E0 15 81            [12]  679 	dec	sp
      0030E2 15 81            [12]  680 	dec	sp
                                    681 ;	8051_i2c_eeprom.c:55: printf("│  Command   │               Description                  │\n\r");
      0030E4 74 FF            [12]  682 	mov	a,#___str_4
      0030E6 C0 E0            [24]  683 	push	acc
      0030E8 74 47            [12]  684 	mov	a,#(___str_4 >> 8)
      0030EA C0 E0            [24]  685 	push	acc
      0030EC 74 80            [12]  686 	mov	a,#0x80
      0030EE C0 E0            [24]  687 	push	acc
      0030F0 12 3B 43         [24]  688 	lcall	_printf
      0030F3 15 81            [12]  689 	dec	sp
      0030F5 15 81            [12]  690 	dec	sp
      0030F7 15 81            [12]  691 	dec	sp
                                    692 ;	8051_i2c_eeprom.c:56: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      0030F9 74 43            [12]  693 	mov	a,#___str_5
      0030FB C0 E0            [24]  694 	push	acc
      0030FD 74 48            [12]  695 	mov	a,#(___str_5 >> 8)
      0030FF C0 E0            [24]  696 	push	acc
      003101 74 80            [12]  697 	mov	a,#0x80
      003103 C0 E0            [24]  698 	push	acc
      003105 12 3B 43         [24]  699 	lcall	_printf
      003108 15 81            [12]  700 	dec	sp
      00310A 15 81            [12]  701 	dec	sp
      00310C 15 81            [12]  702 	dec	sp
                                    703 ;	8051_i2c_eeprom.c:57: printf("│     R      │ Read from address                          │\n\r");
      00310E 74 F7            [12]  704 	mov	a,#___str_6
      003110 C0 E0            [24]  705 	push	acc
      003112 74 48            [12]  706 	mov	a,#(___str_6 >> 8)
      003114 C0 E0            [24]  707 	push	acc
      003116 74 80            [12]  708 	mov	a,#0x80
      003118 C0 E0            [24]  709 	push	acc
      00311A 12 3B 43         [24]  710 	lcall	_printf
      00311D 15 81            [12]  711 	dec	sp
      00311F 15 81            [12]  712 	dec	sp
      003121 15 81            [12]  713 	dec	sp
                                    714 ;	8051_i2c_eeprom.c:58: printf("│     W      │ Write data to address                      │\n\r");
      003123 74 3B            [12]  715 	mov	a,#___str_7
      003125 C0 E0            [24]  716 	push	acc
      003127 74 49            [12]  717 	mov	a,#(___str_7 >> 8)
      003129 C0 E0            [24]  718 	push	acc
      00312B 74 80            [12]  719 	mov	a,#0x80
      00312D C0 E0            [24]  720 	push	acc
      00312F 12 3B 43         [24]  721 	lcall	_printf
      003132 15 81            [12]  722 	dec	sp
      003134 15 81            [12]  723 	dec	sp
      003136 15 81            [12]  724 	dec	sp
                                    725 ;	8051_i2c_eeprom.c:59: printf("│     H      │ Display hex dump                           │\n\r");
      003138 74 7F            [12]  726 	mov	a,#___str_8
      00313A C0 E0            [24]  727 	push	acc
      00313C 74 49            [12]  728 	mov	a,#(___str_8 >> 8)
      00313E C0 E0            [24]  729 	push	acc
      003140 74 80            [12]  730 	mov	a,#0x80
      003142 C0 E0            [24]  731 	push	acc
      003144 12 3B 43         [24]  732 	lcall	_printf
      003147 15 81            [12]  733 	dec	sp
      003149 15 81            [12]  734 	dec	sp
      00314B 15 81            [12]  735 	dec	sp
                                    736 ;	8051_i2c_eeprom.c:60: printf("│     X      │ Reset memory system                        │\n\r");
      00314D 74 C3            [12]  737 	mov	a,#___str_9
      00314F C0 E0            [24]  738 	push	acc
      003151 74 49            [12]  739 	mov	a,#(___str_9 >> 8)
      003153 C0 E0            [24]  740 	push	acc
      003155 74 80            [12]  741 	mov	a,#0x80
      003157 C0 E0            [24]  742 	push	acc
      003159 12 3B 43         [24]  743 	lcall	_printf
      00315C 15 81            [12]  744 	dec	sp
      00315E 15 81            [12]  745 	dec	sp
      003160 15 81            [12]  746 	dec	sp
                                    747 ;	8051_i2c_eeprom.c:61: printf("│     ?      │ Display this help menu                     │\n\r");
      003162 74 07            [12]  748 	mov	a,#___str_10
      003164 C0 E0            [24]  749 	push	acc
      003166 74 4A            [12]  750 	mov	a,#(___str_10 >> 8)
      003168 C0 E0            [24]  751 	push	acc
      00316A 74 80            [12]  752 	mov	a,#0x80
      00316C C0 E0            [24]  753 	push	acc
      00316E 12 3B 43         [24]  754 	lcall	_printf
      003171 15 81            [12]  755 	dec	sp
      003173 15 81            [12]  756 	dec	sp
      003175 15 81            [12]  757 	dec	sp
                                    758 ;	8051_i2c_eeprom.c:62: printf("│     Q      │ Quit program                               │\n\r");
      003177 74 4B            [12]  759 	mov	a,#___str_11
      003179 C0 E0            [24]  760 	push	acc
      00317B 74 4A            [12]  761 	mov	a,#(___str_11 >> 8)
      00317D C0 E0            [24]  762 	push	acc
      00317F 74 80            [12]  763 	mov	a,#0x80
      003181 C0 E0            [24]  764 	push	acc
      003183 12 3B 43         [24]  765 	lcall	_printf
      003186 15 81            [12]  766 	dec	sp
      003188 15 81            [12]  767 	dec	sp
      00318A 15 81            [12]  768 	dec	sp
                                    769 ;	8051_i2c_eeprom.c:63: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      00318C 74 8F            [12]  770 	mov	a,#___str_12
      00318E C0 E0            [24]  771 	push	acc
      003190 74 4A            [12]  772 	mov	a,#(___str_12 >> 8)
      003192 C0 E0            [24]  773 	push	acc
      003194 74 80            [12]  774 	mov	a,#0x80
      003196 C0 E0            [24]  775 	push	acc
      003198 12 3B 43         [24]  776 	lcall	_printf
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
      0031AE 12 3A 04         [24]  804 	lcall	_i2c_start
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
      0031C0 74 43            [12]  816 	mov	a,#___str_13
      0031C2 C0 E0            [24]  817 	push	acc
      0031C4 74 4B            [12]  818 	mov	a,#(___str_13 >> 8)
      0031C6 C0 E0            [24]  819 	push	acc
      0031C8 74 80            [12]  820 	mov	a,#0x80
      0031CA C0 E0            [24]  821 	push	acc
      0031CC 12 3B 43         [24]  822 	lcall	_printf
      0031CF E5 81            [12]  823 	mov	a,sp
      0031D1 24 FB            [12]  824 	add	a,#0xfb
      0031D3 F5 81            [12]  825 	mov	sp,a
      0031D5 D0 06            [24]  826 	pop	ar6
                                    827 ;	8051_i2c_eeprom.c:79: switch(user_input)
      0031D7 BE 3F 03         [24]  828 	cjne	r6,#0x3f,00145$
      0031DA 02 32 B0         [24]  829 	ljmp	00109$
      0031DD                        830 00145$:
      0031DD BE 52 02         [24]  831 	cjne	r6,#0x52,00146$
      0031E0 80 6F            [24]  832 	sjmp	00106$
      0031E2                        833 00146$:
      0031E2 BE 57 02         [24]  834 	cjne	r6,#0x57,00147$
      0031E5 80 03            [24]  835 	sjmp	00148$
      0031E7                        836 00147$:
      0031E7 02 32 B6         [24]  837 	ljmp	00110$
      0031EA                        838 00148$:
                                    839 ;	8051_i2c_eeprom.c:83: printf("\n┌─────────────── WRITE OPERATION ──────────────┐\n\r");
      0031EA 74 4C            [12]  840 	mov	a,#___str_14
      0031EC C0 E0            [24]  841 	push	acc
      0031EE 74 4B            [12]  842 	mov	a,#(___str_14 >> 8)
      0031F0 C0 E0            [24]  843 	push	acc
      0031F2 74 80            [12]  844 	mov	a,#0x80
      0031F4 C0 E0            [24]  845 	push	acc
      0031F6 12 3B 43         [24]  846 	lcall	_printf
      0031F9 15 81            [12]  847 	dec	sp
      0031FB 15 81            [12]  848 	dec	sp
      0031FD 15 81            [12]  849 	dec	sp
                                    850 ;	8051_i2c_eeprom.c:85: addr = take_address();
      0031FF 12 32 CE         [24]  851 	lcall	_take_address
      003202 AE 82            [24]  852 	mov	r6,dpl
      003204 AF 83            [24]  853 	mov	r7,dph
                                    854 ;	8051_i2c_eeprom.c:86: if(!address_range_flag) 
      003206 90 04 51         [24]  855 	mov	dptr,#_address_range_flag
      003209 E0               [24]  856 	movx	a,@dptr
      00320A F5 F0            [12]  857 	mov	b,a
      00320C A3               [24]  858 	inc	dptr
      00320D E0               [24]  859 	movx	a,@dptr
      00320E 45 F0            [12]  860 	orl	a,b
      003210 70 0B            [24]  861 	jnz	00103$
                                    862 ;	8051_i2c_eeprom.c:88: address_range_flag = 1;
      003212 90 04 51         [24]  863 	mov	dptr,#_address_range_flag
      003215 74 01            [12]  864 	mov	a,#0x01
      003217 F0               [24]  865 	movx	@dptr,a
      003218 E4               [12]  866 	clr	a
      003219 A3               [24]  867 	inc	dptr
      00321A F0               [24]  868 	movx	@dptr,a
                                    869 ;	8051_i2c_eeprom.c:89: break;
      00321B 80 94            [24]  870 	sjmp	00113$
      00321D                        871 00103$:
                                    872 ;	8051_i2c_eeprom.c:92: data = take_data();
      00321D C0 07            [24]  873 	push	ar7
      00321F C0 06            [24]  874 	push	ar6
      003221 12 34 E7         [24]  875 	lcall	_take_data
      003224 AD 82            [24]  876 	mov	r5,dpl
      003226 D0 06            [24]  877 	pop	ar6
      003228 D0 07            [24]  878 	pop	ar7
                                    879 ;	8051_i2c_eeprom.c:93: if(!data_range_flag) 
      00322A 90 04 53         [24]  880 	mov	dptr,#_data_range_flag
      00322D E0               [24]  881 	movx	a,@dptr
      00322E F5 F0            [12]  882 	mov	b,a
      003230 A3               [24]  883 	inc	dptr
      003231 E0               [24]  884 	movx	a,@dptr
      003232 45 F0            [12]  885 	orl	a,b
      003234 70 0C            [24]  886 	jnz	00105$
                                    887 ;	8051_i2c_eeprom.c:95: data_range_flag = 1;
      003236 90 04 53         [24]  888 	mov	dptr,#_data_range_flag
      003239 74 01            [12]  889 	mov	a,#0x01
      00323B F0               [24]  890 	movx	@dptr,a
      00323C E4               [12]  891 	clr	a
      00323D A3               [24]  892 	inc	dptr
      00323E F0               [24]  893 	movx	@dptr,a
                                    894 ;	8051_i2c_eeprom.c:96: break;
      00323F 02 31 B1         [24]  895 	ljmp	00113$
      003242                        896 00105$:
                                    897 ;	8051_i2c_eeprom.c:98: eeprom_write(addr, data);
      003242 90 04 0F         [24]  898 	mov	dptr,#_eeprom_write_PARM_2
      003245 ED               [12]  899 	mov	a,r5
      003246 F0               [24]  900 	movx	@dptr,a
      003247 8E 82            [24]  901 	mov	dpl,r6
      003249 8F 83            [24]  902 	mov	dph,r7
      00324B 12 36 60         [24]  903 	lcall	_eeprom_write
                                    904 ;	8051_i2c_eeprom.c:99: break;
      00324E 02 31 B1         [24]  905 	ljmp	00113$
                                    906 ;	8051_i2c_eeprom.c:101: case 'R':
      003251                        907 00106$:
                                    908 ;	8051_i2c_eeprom.c:103: printf("\n┌─────────────── READ OPERATION ───────────────┐\n\r");
      003251 74 BE            [12]  909 	mov	a,#___str_15
      003253 C0 E0            [24]  910 	push	acc
      003255 74 4B            [12]  911 	mov	a,#(___str_15 >> 8)
      003257 C0 E0            [24]  912 	push	acc
      003259 74 80            [12]  913 	mov	a,#0x80
      00325B C0 E0            [24]  914 	push	acc
      00325D 12 3B 43         [24]  915 	lcall	_printf
      003260 15 81            [12]  916 	dec	sp
      003262 15 81            [12]  917 	dec	sp
      003264 15 81            [12]  918 	dec	sp
                                    919 ;	8051_i2c_eeprom.c:105: addr = take_address(); 
      003266 12 32 CE         [24]  920 	lcall	_take_address
      003269 AE 82            [24]  921 	mov	r6,dpl
      00326B AF 83            [24]  922 	mov	r7,dph
                                    923 ;	8051_i2c_eeprom.c:106: if(!address_range_flag) 
      00326D 90 04 51         [24]  924 	mov	dptr,#_address_range_flag
      003270 E0               [24]  925 	movx	a,@dptr
      003271 F5 F0            [12]  926 	mov	b,a
      003273 A3               [24]  927 	inc	dptr
      003274 E0               [24]  928 	movx	a,@dptr
      003275 45 F0            [12]  929 	orl	a,b
      003277 70 0C            [24]  930 	jnz	00108$
                                    931 ;	8051_i2c_eeprom.c:108: address_range_flag = 1;
      003279 90 04 51         [24]  932 	mov	dptr,#_address_range_flag
      00327C 74 01            [12]  933 	mov	a,#0x01
      00327E F0               [24]  934 	movx	@dptr,a
      00327F E4               [12]  935 	clr	a
      003280 A3               [24]  936 	inc	dptr
      003281 F0               [24]  937 	movx	@dptr,a
                                    938 ;	8051_i2c_eeprom.c:109: break;
      003282 02 31 B1         [24]  939 	ljmp	00113$
      003285                        940 00108$:
                                    941 ;	8051_i2c_eeprom.c:111: printf("| Reading from Address 0x%03X           |\n\r", addr);
      003285 C0 07            [24]  942 	push	ar7
      003287 C0 06            [24]  943 	push	ar6
      003289 C0 06            [24]  944 	push	ar6
      00328B C0 07            [24]  945 	push	ar7
      00328D 74 32            [12]  946 	mov	a,#___str_16
      00328F C0 E0            [24]  947 	push	acc
      003291 74 4C            [12]  948 	mov	a,#(___str_16 >> 8)
      003293 C0 E0            [24]  949 	push	acc
      003295 74 80            [12]  950 	mov	a,#0x80
      003297 C0 E0            [24]  951 	push	acc
      003299 12 3B 43         [24]  952 	lcall	_printf
      00329C E5 81            [12]  953 	mov	a,sp
      00329E 24 FB            [12]  954 	add	a,#0xfb
      0032A0 F5 81            [12]  955 	mov	sp,a
      0032A2 D0 06            [24]  956 	pop	ar6
      0032A4 D0 07            [24]  957 	pop	ar7
                                    958 ;	8051_i2c_eeprom.c:112: eeprom_read(addr);
      0032A6 8E 82            [24]  959 	mov	dpl,r6
      0032A8 8F 83            [24]  960 	mov	dph,r7
      0032AA 12 37 C3         [24]  961 	lcall	_eeprom_read
                                    962 ;	8051_i2c_eeprom.c:113: break;
      0032AD 02 31 B1         [24]  963 	ljmp	00113$
                                    964 ;	8051_i2c_eeprom.c:116: case '?':
      0032B0                        965 00109$:
                                    966 ;	8051_i2c_eeprom.c:117: command_menu();
      0032B0 12 30 CF         [24]  967 	lcall	_command_menu
                                    968 ;	8051_i2c_eeprom.c:118: break;
      0032B3 02 31 B1         [24]  969 	ljmp	00113$
                                    970 ;	8051_i2c_eeprom.c:120: default:
      0032B6                        971 00110$:
                                    972 ;	8051_i2c_eeprom.c:121: printf("INVALID INPUT\n\r");
      0032B6 74 5E            [12]  973 	mov	a,#___str_17
      0032B8 C0 E0            [24]  974 	push	acc
      0032BA 74 4C            [12]  975 	mov	a,#(___str_17 >> 8)
      0032BC C0 E0            [24]  976 	push	acc
      0032BE 74 80            [12]  977 	mov	a,#0x80
      0032C0 C0 E0            [24]  978 	push	acc
      0032C2 12 3B 43         [24]  979 	lcall	_printf
      0032C5 15 81            [12]  980 	dec	sp
      0032C7 15 81            [12]  981 	dec	sp
      0032C9 15 81            [12]  982 	dec	sp
                                    983 ;	8051_i2c_eeprom.c:123: }
                                    984 ;	8051_i2c_eeprom.c:126: }
      0032CB 02 31 B1         [24]  985 	ljmp	00113$
                                    986 ;------------------------------------------------------------
                                    987 ;Allocation info for local variables in function 'take_address'
                                    988 ;------------------------------------------------------------
                                    989 ;input                     Allocated with name '_take_address_input_65537_66'
                                    990 ;i                         Allocated with name '_take_address_i_65537_66'
                                    991 ;c                         Allocated with name '_take_address_c_65537_66'
                                    992 ;address                   Allocated with name '_take_address_address_65538_70'
                                    993 ;block                     Allocated with name '_take_address_block_65539_74'
                                    994 ;------------------------------------------------------------
                                    995 ;	8051_i2c_eeprom.c:128: unsigned int take_address() 
                                    996 ;	-----------------------------------------
                                    997 ;	 function take_address
                                    998 ;	-----------------------------------------
      0032CE                        999 _take_address:
                                   1000 ;	8051_i2c_eeprom.c:130: printf("│ Enter address (hex, up to 3 characters): \n\r|");
      0032CE 74 6E            [12] 1001 	mov	a,#___str_18
      0032D0 C0 E0            [24] 1002 	push	acc
      0032D2 74 4C            [12] 1003 	mov	a,#(___str_18 >> 8)
      0032D4 C0 E0            [24] 1004 	push	acc
      0032D6 74 80            [12] 1005 	mov	a,#0x80
      0032D8 C0 E0            [24] 1006 	push	acc
      0032DA 12 3B 43         [24] 1007 	lcall	_printf
      0032DD 15 81            [12] 1008 	dec	sp
      0032DF 15 81            [12] 1009 	dec	sp
      0032E1 15 81            [12] 1010 	dec	sp
                                   1011 ;	8051_i2c_eeprom.c:131: char input[4] = {0};  // Array for 3 hex chars + null terminator
      0032E3 90 04 04         [24] 1012 	mov	dptr,#_take_address_input_65537_66
      0032E6 E4               [12] 1013 	clr	a
      0032E7 F0               [24] 1014 	movx	@dptr,a
      0032E8 90 04 05         [24] 1015 	mov	dptr,#(_take_address_input_65537_66 + 0x0001)
      0032EB F0               [24] 1016 	movx	@dptr,a
      0032EC 90 04 06         [24] 1017 	mov	dptr,#(_take_address_input_65537_66 + 0x0002)
      0032EF F0               [24] 1018 	movx	@dptr,a
      0032F0 90 04 07         [24] 1019 	mov	dptr,#(_take_address_input_65537_66 + 0x0003)
      0032F3 F0               [24] 1020 	movx	@dptr,a
                                   1021 ;	8051_i2c_eeprom.c:135: printf("| $ ");
      0032F4 74 9F            [12] 1022 	mov	a,#___str_19
      0032F6 C0 E0            [24] 1023 	push	acc
      0032F8 74 4C            [12] 1024 	mov	a,#(___str_19 >> 8)
      0032FA C0 E0            [24] 1025 	push	acc
      0032FC 74 80            [12] 1026 	mov	a,#0x80
      0032FE C0 E0            [24] 1027 	push	acc
      003300 12 3B 43         [24] 1028 	lcall	_printf
      003303 15 81            [12] 1029 	dec	sp
      003305 15 81            [12] 1030 	dec	sp
      003307 15 81            [12] 1031 	dec	sp
                                   1032 ;	8051_i2c_eeprom.c:137: while (i < 3) {
      003309 7E 00            [12] 1033 	mov	r6,#0x00
      00330B 7F 00            [12] 1034 	mov	r7,#0x00
      00330D                       1035 00111$:
      00330D C3               [12] 1036 	clr	c
      00330E EE               [12] 1037 	mov	a,r6
      00330F 94 03            [12] 1038 	subb	a,#0x03
      003311 EF               [12] 1039 	mov	a,r7
      003312 64 80            [12] 1040 	xrl	a,#0x80
      003314 94 80            [12] 1041 	subb	a,#0x80
      003316 50 5B            [24] 1042 	jnc	00113$
                                   1043 ;	8051_i2c_eeprom.c:139: c = getchar();
      003318 C0 07            [24] 1044 	push	ar7
      00331A C0 06            [24] 1045 	push	ar6
      00331C 12 30 81         [24] 1046 	lcall	_getchar
      00331F AC 82            [24] 1047 	mov	r4,dpl
      003321 AD 83            [24] 1048 	mov	r5,dph
      003323 D0 06            [24] 1049 	pop	ar6
      003325 D0 07            [24] 1050 	pop	ar7
                                   1051 ;	8051_i2c_eeprom.c:142: if (c == '\r' || c == '\n') {
      003327 BC 0D 02         [24] 1052 	cjne	r4,#0x0d,00200$
      00332A 80 47            [24] 1053 	sjmp	00113$
      00332C                       1054 00200$:
      00332C BC 0A 02         [24] 1055 	cjne	r4,#0x0a,00201$
      00332F 80 42            [24] 1056 	sjmp	00113$
      003331                       1057 00201$:
                                   1058 ;	8051_i2c_eeprom.c:147: if ((c >= '0' && c <= '9') || 
      003331 BC 30 00         [24] 1059 	cjne	r4,#0x30,00202$
      003334                       1060 00202$:
      003334 40 05            [24] 1061 	jc	00108$
      003336 EC               [12] 1062 	mov	a,r4
      003337 24 C6            [12] 1063 	add	a,#0xff - 0x39
      003339 50 14            [24] 1064 	jnc	00104$
      00333B                       1065 00108$:
                                   1066 ;	8051_i2c_eeprom.c:148: (c >= 'a' && c <= 'f') || 
      00333B BC 61 00         [24] 1067 	cjne	r4,#0x61,00205$
      00333E                       1068 00205$:
      00333E 40 05            [24] 1069 	jc	00110$
      003340 EC               [12] 1070 	mov	a,r4
      003341 24 99            [12] 1071 	add	a,#0xff - 0x66
      003343 50 0A            [24] 1072 	jnc	00104$
      003345                       1073 00110$:
                                   1074 ;	8051_i2c_eeprom.c:149: (c >= 'A' && c <= 'F')) {
      003345 BC 41 00         [24] 1075 	cjne	r4,#0x41,00208$
      003348                       1076 00208$:
      003348 40 C3            [24] 1077 	jc	00111$
      00334A EC               [12] 1078 	mov	a,r4
      00334B 24 B9            [12] 1079 	add	a,#0xff - 0x46
      00334D 40 BE            [24] 1080 	jc	00111$
      00334F                       1081 00104$:
                                   1082 ;	8051_i2c_eeprom.c:151: input[i] = c;
      00334F EE               [12] 1083 	mov	a,r6
      003350 24 04            [12] 1084 	add	a,#_take_address_input_65537_66
      003352 F5 82            [12] 1085 	mov	dpl,a
      003354 EF               [12] 1086 	mov	a,r7
      003355 34 04            [12] 1087 	addc	a,#(_take_address_input_65537_66 >> 8)
      003357 F5 83            [12] 1088 	mov	dph,a
      003359 EC               [12] 1089 	mov	a,r4
      00335A F0               [24] 1090 	movx	@dptr,a
                                   1091 ;	8051_i2c_eeprom.c:152: putchar(c);  // Echo character back
      00335B 7D 00            [12] 1092 	mov	r5,#0x00
      00335D 8C 82            [24] 1093 	mov	dpl,r4
      00335F 8D 83            [24] 1094 	mov	dph,r5
      003361 C0 07            [24] 1095 	push	ar7
      003363 C0 06            [24] 1096 	push	ar6
      003365 12 30 62         [24] 1097 	lcall	_putchar
      003368 D0 06            [24] 1098 	pop	ar6
      00336A D0 07            [24] 1099 	pop	ar7
                                   1100 ;	8051_i2c_eeprom.c:153: i++;
      00336C 0E               [12] 1101 	inc	r6
      00336D BE 00 9D         [24] 1102 	cjne	r6,#0x00,00111$
      003370 0F               [12] 1103 	inc	r7
      003371 80 9A            [24] 1104 	sjmp	00111$
      003373                       1105 00113$:
                                   1106 ;	8051_i2c_eeprom.c:157: input[i] = '\0';  // Null-terminate the string
      003373 EE               [12] 1107 	mov	a,r6
      003374 24 04            [12] 1108 	add	a,#_take_address_input_65537_66
      003376 F5 82            [12] 1109 	mov	dpl,a
      003378 EF               [12] 1110 	mov	a,r7
      003379 34 04            [12] 1111 	addc	a,#(_take_address_input_65537_66 >> 8)
      00337B F5 83            [12] 1112 	mov	dph,a
      00337D E4               [12] 1113 	clr	a
      00337E F0               [24] 1114 	movx	@dptr,a
                                   1115 ;	8051_i2c_eeprom.c:160: unsigned int address = 0;
      00337F 90 04 08         [24] 1116 	mov	dptr,#_take_address_address_65538_70
      003382 F0               [24] 1117 	movx	@dptr,a
      003383 A3               [24] 1118 	inc	dptr
      003384 F0               [24] 1119 	movx	@dptr,a
                                   1120 ;	8051_i2c_eeprom.c:161: for(i = 0; input[i] != '\0'; i++) {
      003385 7E 00            [12] 1121 	mov	r6,#0x00
      003387 7F 00            [12] 1122 	mov	r7,#0x00
      003389                       1123 00129$:
      003389 EE               [12] 1124 	mov	a,r6
      00338A 24 04            [12] 1125 	add	a,#_take_address_input_65537_66
      00338C F5 82            [12] 1126 	mov	dpl,a
      00338E EF               [12] 1127 	mov	a,r7
      00338F 34 04            [12] 1128 	addc	a,#(_take_address_input_65537_66 >> 8)
      003391 F5 83            [12] 1129 	mov	dph,a
      003393 E0               [24] 1130 	movx	a,@dptr
      003394 FD               [12] 1131 	mov	r5,a
      003395 70 03            [24] 1132 	jnz	00212$
      003397 02 34 42         [24] 1133 	ljmp	00125$
      00339A                       1134 00212$:
                                   1135 ;	8051_i2c_eeprom.c:162: address = address * 16;
      00339A 90 04 08         [24] 1136 	mov	dptr,#_take_address_address_65538_70
      00339D E0               [24] 1137 	movx	a,@dptr
      00339E FB               [12] 1138 	mov	r3,a
      00339F A3               [24] 1139 	inc	dptr
      0033A0 E0               [24] 1140 	movx	a,@dptr
      0033A1 C4               [12] 1141 	swap	a
      0033A2 54 F0            [12] 1142 	anl	a,#0xf0
      0033A4 CB               [12] 1143 	xch	a,r3
      0033A5 C4               [12] 1144 	swap	a
      0033A6 CB               [12] 1145 	xch	a,r3
      0033A7 6B               [12] 1146 	xrl	a,r3
      0033A8 CB               [12] 1147 	xch	a,r3
      0033A9 54 F0            [12] 1148 	anl	a,#0xf0
      0033AB CB               [12] 1149 	xch	a,r3
      0033AC 6B               [12] 1150 	xrl	a,r3
      0033AD FC               [12] 1151 	mov	r4,a
      0033AE 90 04 08         [24] 1152 	mov	dptr,#_take_address_address_65538_70
      0033B1 EB               [12] 1153 	mov	a,r3
      0033B2 F0               [24] 1154 	movx	@dptr,a
      0033B3 EC               [12] 1155 	mov	a,r4
      0033B4 A3               [24] 1156 	inc	dptr
      0033B5 F0               [24] 1157 	movx	@dptr,a
                                   1158 ;	8051_i2c_eeprom.c:163: if(input[i] >= '0' && input[i] <= '9')
      0033B6 BD 30 00         [24] 1159 	cjne	r5,#0x30,00213$
      0033B9                       1160 00213$:
      0033B9 40 23            [24] 1161 	jc	00122$
      0033BB ED               [12] 1162 	mov	a,r5
      0033BC 24 C6            [12] 1163 	add	a,#0xff - 0x39
      0033BE 40 1E            [24] 1164 	jc	00122$
                                   1165 ;	8051_i2c_eeprom.c:164: address += input[i] - '0';
      0033C0 7C 00            [12] 1166 	mov	r4,#0x00
      0033C2 ED               [12] 1167 	mov	a,r5
      0033C3 24 D0            [12] 1168 	add	a,#0xd0
      0033C5 FD               [12] 1169 	mov	r5,a
      0033C6 EC               [12] 1170 	mov	a,r4
      0033C7 34 FF            [12] 1171 	addc	a,#0xff
      0033C9 FC               [12] 1172 	mov	r4,a
      0033CA 90 04 08         [24] 1173 	mov	dptr,#_take_address_address_65538_70
      0033CD E0               [24] 1174 	movx	a,@dptr
      0033CE FA               [12] 1175 	mov	r2,a
      0033CF A3               [24] 1176 	inc	dptr
      0033D0 E0               [24] 1177 	movx	a,@dptr
      0033D1 FB               [12] 1178 	mov	r3,a
      0033D2 90 04 08         [24] 1179 	mov	dptr,#_take_address_address_65538_70
      0033D5 ED               [12] 1180 	mov	a,r5
      0033D6 2A               [12] 1181 	add	a,r2
      0033D7 F0               [24] 1182 	movx	@dptr,a
      0033D8 EC               [12] 1183 	mov	a,r4
      0033D9 3B               [12] 1184 	addc	a,r3
      0033DA A3               [24] 1185 	inc	dptr
      0033DB F0               [24] 1186 	movx	@dptr,a
      0033DC 80 5C            [24] 1187 	sjmp	00130$
      0033DE                       1188 00122$:
                                   1189 ;	8051_i2c_eeprom.c:165: else if(input[i] >= 'A' && input[i] <= 'F')
      0033DE EE               [12] 1190 	mov	a,r6
      0033DF 24 04            [12] 1191 	add	a,#_take_address_input_65537_66
      0033E1 F5 82            [12] 1192 	mov	dpl,a
      0033E3 EF               [12] 1193 	mov	a,r7
      0033E4 34 04            [12] 1194 	addc	a,#(_take_address_input_65537_66 >> 8)
      0033E6 F5 83            [12] 1195 	mov	dph,a
      0033E8 E0               [24] 1196 	movx	a,@dptr
      0033E9 FD               [12] 1197 	mov	r5,a
      0033EA BD 41 00         [24] 1198 	cjne	r5,#0x41,00216$
      0033ED                       1199 00216$:
      0033ED 40 25            [24] 1200 	jc	00118$
      0033EF ED               [12] 1201 	mov	a,r5
      0033F0 24 B9            [12] 1202 	add	a,#0xff - 0x46
      0033F2 40 20            [24] 1203 	jc	00118$
                                   1204 ;	8051_i2c_eeprom.c:166: address += input[i] - 'A' + 10;
      0033F4 8D 03            [24] 1205 	mov	ar3,r5
      0033F6 7C 00            [12] 1206 	mov	r4,#0x00
      0033F8 74 C9            [12] 1207 	mov	a,#0xc9
      0033FA 2B               [12] 1208 	add	a,r3
      0033FB FB               [12] 1209 	mov	r3,a
      0033FC 74 FF            [12] 1210 	mov	a,#0xff
      0033FE 3C               [12] 1211 	addc	a,r4
      0033FF FC               [12] 1212 	mov	r4,a
      003400 90 04 08         [24] 1213 	mov	dptr,#_take_address_address_65538_70
      003403 E0               [24] 1214 	movx	a,@dptr
      003404 F9               [12] 1215 	mov	r1,a
      003405 A3               [24] 1216 	inc	dptr
      003406 E0               [24] 1217 	movx	a,@dptr
      003407 FA               [12] 1218 	mov	r2,a
      003408 90 04 08         [24] 1219 	mov	dptr,#_take_address_address_65538_70
      00340B EB               [12] 1220 	mov	a,r3
      00340C 29               [12] 1221 	add	a,r1
      00340D F0               [24] 1222 	movx	@dptr,a
      00340E EC               [12] 1223 	mov	a,r4
      00340F 3A               [12] 1224 	addc	a,r2
      003410 A3               [24] 1225 	inc	dptr
      003411 F0               [24] 1226 	movx	@dptr,a
      003412 80 26            [24] 1227 	sjmp	00130$
      003414                       1228 00118$:
                                   1229 ;	8051_i2c_eeprom.c:167: else if(input[i] >= 'a' && input[i] <= 'f')
      003414 BD 61 00         [24] 1230 	cjne	r5,#0x61,00219$
      003417                       1231 00219$:
      003417 40 21            [24] 1232 	jc	00130$
      003419 ED               [12] 1233 	mov	a,r5
      00341A 24 99            [12] 1234 	add	a,#0xff - 0x66
      00341C 40 1C            [24] 1235 	jc	00130$
                                   1236 ;	8051_i2c_eeprom.c:168: address += input[i] - 'a' + 10;
      00341E 7C 00            [12] 1237 	mov	r4,#0x00
      003420 74 A9            [12] 1238 	mov	a,#0xa9
      003422 2D               [12] 1239 	add	a,r5
      003423 FD               [12] 1240 	mov	r5,a
      003424 74 FF            [12] 1241 	mov	a,#0xff
      003426 3C               [12] 1242 	addc	a,r4
      003427 FC               [12] 1243 	mov	r4,a
      003428 90 04 08         [24] 1244 	mov	dptr,#_take_address_address_65538_70
      00342B E0               [24] 1245 	movx	a,@dptr
      00342C FA               [12] 1246 	mov	r2,a
      00342D A3               [24] 1247 	inc	dptr
      00342E E0               [24] 1248 	movx	a,@dptr
      00342F FB               [12] 1249 	mov	r3,a
      003430 90 04 08         [24] 1250 	mov	dptr,#_take_address_address_65538_70
      003433 ED               [12] 1251 	mov	a,r5
      003434 2A               [12] 1252 	add	a,r2
      003435 F0               [24] 1253 	movx	@dptr,a
      003436 EC               [12] 1254 	mov	a,r4
      003437 3B               [12] 1255 	addc	a,r3
      003438 A3               [24] 1256 	inc	dptr
      003439 F0               [24] 1257 	movx	@dptr,a
      00343A                       1258 00130$:
                                   1259 ;	8051_i2c_eeprom.c:161: for(i = 0; input[i] != '\0'; i++) {
      00343A 0E               [12] 1260 	inc	r6
      00343B BE 00 01         [24] 1261 	cjne	r6,#0x00,00222$
      00343E 0F               [12] 1262 	inc	r7
      00343F                       1263 00222$:
      00343F 02 33 89         [24] 1264 	ljmp	00129$
      003442                       1265 00125$:
                                   1266 ;	8051_i2c_eeprom.c:171: printf("\n\r│ Entered address: 0x%03X\n\r", address);
      003442 90 04 08         [24] 1267 	mov	dptr,#_take_address_address_65538_70
      003445 E0               [24] 1268 	movx	a,@dptr
      003446 FE               [12] 1269 	mov	r6,a
      003447 A3               [24] 1270 	inc	dptr
      003448 E0               [24] 1271 	movx	a,@dptr
      003449 FF               [12] 1272 	mov	r7,a
      00344A C0 07            [24] 1273 	push	ar7
      00344C C0 06            [24] 1274 	push	ar6
      00344E C0 06            [24] 1275 	push	ar6
      003450 C0 07            [24] 1276 	push	ar7
      003452 74 A4            [12] 1277 	mov	a,#___str_20
      003454 C0 E0            [24] 1278 	push	acc
      003456 74 4C            [12] 1279 	mov	a,#(___str_20 >> 8)
      003458 C0 E0            [24] 1280 	push	acc
      00345A 74 80            [12] 1281 	mov	a,#0x80
      00345C C0 E0            [24] 1282 	push	acc
      00345E 12 3B 43         [24] 1283 	lcall	_printf
      003461 E5 81            [12] 1284 	mov	a,sp
      003463 24 FB            [12] 1285 	add	a,#0xfb
      003465 F5 81            [12] 1286 	mov	sp,a
      003467 D0 06            [24] 1287 	pop	ar6
      003469 D0 07            [24] 1288 	pop	ar7
                                   1289 ;	8051_i2c_eeprom.c:172: if(address > 0x7ff) 
      00346B C3               [12] 1290 	clr	c
      00346C 74 FF            [12] 1291 	mov	a,#0xff
      00346E 9E               [12] 1292 	subb	a,r6
      00346F 74 07            [12] 1293 	mov	a,#0x07
      003471 9F               [12] 1294 	subb	a,r7
      003472 50 5F            [24] 1295 	jnc	00127$
                                   1296 ;	8051_i2c_eeprom.c:174: printf("╔══════════════════════════════════════════╗\n\r");
      003474 74 C4            [12] 1297 	mov	a,#___str_21
      003476 C0 E0            [24] 1298 	push	acc
      003478 74 4C            [12] 1299 	mov	a,#(___str_21 >> 8)
      00347A C0 E0            [24] 1300 	push	acc
      00347C 74 80            [12] 1301 	mov	a,#0x80
      00347E C0 E0            [24] 1302 	push	acc
      003480 12 3B 43         [24] 1303 	lcall	_printf
      003483 15 81            [12] 1304 	dec	sp
      003485 15 81            [12] 1305 	dec	sp
      003487 15 81            [12] 1306 	dec	sp
                                   1307 ;	8051_i2c_eeprom.c:175: printf("║       ! ADDRESS OUT OF RANGE !         ║\n\r");
      003489 74 4B            [12] 1308 	mov	a,#___str_22
      00348B C0 E0            [24] 1309 	push	acc
      00348D 74 4D            [12] 1310 	mov	a,#(___str_22 >> 8)
      00348F C0 E0            [24] 1311 	push	acc
      003491 74 80            [12] 1312 	mov	a,#0x80
      003493 C0 E0            [24] 1313 	push	acc
      003495 12 3B 43         [24] 1314 	lcall	_printf
      003498 15 81            [12] 1315 	dec	sp
      00349A 15 81            [12] 1316 	dec	sp
      00349C 15 81            [12] 1317 	dec	sp
                                   1318 ;	8051_i2c_eeprom.c:176: printf("║     Please Enter Valid Address         ║\n\r");
      00349E 74 7C            [12] 1319 	mov	a,#___str_23
      0034A0 C0 E0            [24] 1320 	push	acc
      0034A2 74 4D            [12] 1321 	mov	a,#(___str_23 >> 8)
      0034A4 C0 E0            [24] 1322 	push	acc
      0034A6 74 80            [12] 1323 	mov	a,#0x80
      0034A8 C0 E0            [24] 1324 	push	acc
      0034AA 12 3B 43         [24] 1325 	lcall	_printf
      0034AD 15 81            [12] 1326 	dec	sp
      0034AF 15 81            [12] 1327 	dec	sp
      0034B1 15 81            [12] 1328 	dec	sp
                                   1329 ;	8051_i2c_eeprom.c:177: printf("╚══════════════════════════════════════════╝\n\r");
      0034B3 74 AD            [12] 1330 	mov	a,#___str_24
      0034B5 C0 E0            [24] 1331 	push	acc
      0034B7 74 4D            [12] 1332 	mov	a,#(___str_24 >> 8)
      0034B9 C0 E0            [24] 1333 	push	acc
      0034BB 74 80            [12] 1334 	mov	a,#0x80
      0034BD C0 E0            [24] 1335 	push	acc
      0034BF 12 3B 43         [24] 1336 	lcall	_printf
      0034C2 15 81            [12] 1337 	dec	sp
      0034C4 15 81            [12] 1338 	dec	sp
      0034C6 15 81            [12] 1339 	dec	sp
                                   1340 ;	8051_i2c_eeprom.c:178: address_range_flag = 0;
      0034C8 90 04 51         [24] 1341 	mov	dptr,#_address_range_flag
      0034CB E4               [12] 1342 	clr	a
      0034CC F0               [24] 1343 	movx	@dptr,a
      0034CD A3               [24] 1344 	inc	dptr
      0034CE F0               [24] 1345 	movx	@dptr,a
                                   1346 ;	8051_i2c_eeprom.c:179: return 0;
      0034CF 90 00 00         [24] 1347 	mov	dptr,#0x0000
      0034D2 22               [24] 1348 	ret
      0034D3                       1349 00127$:
                                   1350 ;	8051_i2c_eeprom.c:183: address = address%256;     //word address
      0034D3 90 04 08         [24] 1351 	mov	dptr,#_take_address_address_65538_70
      0034D6 EE               [12] 1352 	mov	a,r6
      0034D7 F0               [24] 1353 	movx	@dptr,a
      0034D8 E4               [12] 1354 	clr	a
      0034D9 A3               [24] 1355 	inc	dptr
      0034DA F0               [24] 1356 	movx	@dptr,a
                                   1357 ;	8051_i2c_eeprom.c:186: return address;
      0034DB 90 04 08         [24] 1358 	mov	dptr,#_take_address_address_65538_70
      0034DE E0               [24] 1359 	movx	a,@dptr
      0034DF FE               [12] 1360 	mov	r6,a
      0034E0 A3               [24] 1361 	inc	dptr
      0034E1 E0               [24] 1362 	movx	a,@dptr
                                   1363 ;	8051_i2c_eeprom.c:187: }
      0034E2 8E 82            [24] 1364 	mov	dpl,r6
      0034E4 F5 83            [12] 1365 	mov	dph,a
      0034E6 22               [24] 1366 	ret
                                   1367 ;------------------------------------------------------------
                                   1368 ;Allocation info for local variables in function 'take_data'
                                   1369 ;------------------------------------------------------------
                                   1370 ;input                     Allocated with name '_take_data_input_65537_76'
                                   1371 ;i                         Allocated with name '_take_data_i_65537_76'
                                   1372 ;c                         Allocated with name '_take_data_c_65537_76'
                                   1373 ;data                      Allocated with name '_take_data_data_65538_80'
                                   1374 ;------------------------------------------------------------
                                   1375 ;	8051_i2c_eeprom.c:189: unsigned char take_data()
                                   1376 ;	-----------------------------------------
                                   1377 ;	 function take_data
                                   1378 ;	-----------------------------------------
      0034E7                       1379 _take_data:
                                   1380 ;	8051_i2c_eeprom.c:191: printf("│ Enter data (hex, up to 2 characters): \n\r|");
      0034E7 74 34            [12] 1381 	mov	a,#___str_25
      0034E9 C0 E0            [24] 1382 	push	acc
      0034EB 74 4E            [12] 1383 	mov	a,#(___str_25 >> 8)
      0034ED C0 E0            [24] 1384 	push	acc
      0034EF 74 80            [12] 1385 	mov	a,#0x80
      0034F1 C0 E0            [24] 1386 	push	acc
      0034F3 12 3B 43         [24] 1387 	lcall	_printf
      0034F6 15 81            [12] 1388 	dec	sp
      0034F8 15 81            [12] 1389 	dec	sp
      0034FA 15 81            [12] 1390 	dec	sp
                                   1391 ;	8051_i2c_eeprom.c:192: char input[4] = {0};  // Array for 3 hex chars + null terminator
      0034FC 90 04 0A         [24] 1392 	mov	dptr,#_take_data_input_65537_76
      0034FF E4               [12] 1393 	clr	a
      003500 F0               [24] 1394 	movx	@dptr,a
      003501 90 04 0B         [24] 1395 	mov	dptr,#(_take_data_input_65537_76 + 0x0001)
      003504 F0               [24] 1396 	movx	@dptr,a
      003505 90 04 0C         [24] 1397 	mov	dptr,#(_take_data_input_65537_76 + 0x0002)
      003508 F0               [24] 1398 	movx	@dptr,a
      003509 90 04 0D         [24] 1399 	mov	dptr,#(_take_data_input_65537_76 + 0x0003)
      00350C F0               [24] 1400 	movx	@dptr,a
                                   1401 ;	8051_i2c_eeprom.c:196: printf("| $ ");
      00350D 74 9F            [12] 1402 	mov	a,#___str_19
      00350F C0 E0            [24] 1403 	push	acc
      003511 74 4C            [12] 1404 	mov	a,#(___str_19 >> 8)
      003513 C0 E0            [24] 1405 	push	acc
      003515 74 80            [12] 1406 	mov	a,#0x80
      003517 C0 E0            [24] 1407 	push	acc
      003519 12 3B 43         [24] 1408 	lcall	_printf
      00351C 15 81            [12] 1409 	dec	sp
      00351E 15 81            [12] 1410 	dec	sp
      003520 15 81            [12] 1411 	dec	sp
                                   1412 ;	8051_i2c_eeprom.c:198: while (i < 3) {
      003522 7E 00            [12] 1413 	mov	r6,#0x00
      003524 7F 00            [12] 1414 	mov	r7,#0x00
      003526                       1415 00111$:
      003526 C3               [12] 1416 	clr	c
      003527 EE               [12] 1417 	mov	a,r6
      003528 94 03            [12] 1418 	subb	a,#0x03
      00352A EF               [12] 1419 	mov	a,r7
      00352B 64 80            [12] 1420 	xrl	a,#0x80
      00352D 94 80            [12] 1421 	subb	a,#0x80
      00352F 50 5B            [24] 1422 	jnc	00113$
                                   1423 ;	8051_i2c_eeprom.c:200: c = getchar();
      003531 C0 07            [24] 1424 	push	ar7
      003533 C0 06            [24] 1425 	push	ar6
      003535 12 30 81         [24] 1426 	lcall	_getchar
      003538 AC 82            [24] 1427 	mov	r4,dpl
      00353A AD 83            [24] 1428 	mov	r5,dph
      00353C D0 06            [24] 1429 	pop	ar6
      00353E D0 07            [24] 1430 	pop	ar7
                                   1431 ;	8051_i2c_eeprom.c:203: if (c == '\r' || c == '\n') {
      003540 BC 0D 02         [24] 1432 	cjne	r4,#0x0d,00200$
      003543 80 47            [24] 1433 	sjmp	00113$
      003545                       1434 00200$:
      003545 BC 0A 02         [24] 1435 	cjne	r4,#0x0a,00201$
      003548 80 42            [24] 1436 	sjmp	00113$
      00354A                       1437 00201$:
                                   1438 ;	8051_i2c_eeprom.c:208: if ((c >= '0' && c <= '9') || 
      00354A BC 30 00         [24] 1439 	cjne	r4,#0x30,00202$
      00354D                       1440 00202$:
      00354D 40 05            [24] 1441 	jc	00108$
      00354F EC               [12] 1442 	mov	a,r4
      003550 24 C6            [12] 1443 	add	a,#0xff - 0x39
      003552 50 14            [24] 1444 	jnc	00104$
      003554                       1445 00108$:
                                   1446 ;	8051_i2c_eeprom.c:209: (c >= 'a' && c <= 'f') || 
      003554 BC 61 00         [24] 1447 	cjne	r4,#0x61,00205$
      003557                       1448 00205$:
      003557 40 05            [24] 1449 	jc	00110$
      003559 EC               [12] 1450 	mov	a,r4
      00355A 24 99            [12] 1451 	add	a,#0xff - 0x66
      00355C 50 0A            [24] 1452 	jnc	00104$
      00355E                       1453 00110$:
                                   1454 ;	8051_i2c_eeprom.c:210: (c >= 'A' && c <= 'F')) {
      00355E BC 41 00         [24] 1455 	cjne	r4,#0x41,00208$
      003561                       1456 00208$:
      003561 40 C3            [24] 1457 	jc	00111$
      003563 EC               [12] 1458 	mov	a,r4
      003564 24 B9            [12] 1459 	add	a,#0xff - 0x46
      003566 40 BE            [24] 1460 	jc	00111$
      003568                       1461 00104$:
                                   1462 ;	8051_i2c_eeprom.c:212: input[i] = c;
      003568 EE               [12] 1463 	mov	a,r6
      003569 24 0A            [12] 1464 	add	a,#_take_data_input_65537_76
      00356B F5 82            [12] 1465 	mov	dpl,a
      00356D EF               [12] 1466 	mov	a,r7
      00356E 34 04            [12] 1467 	addc	a,#(_take_data_input_65537_76 >> 8)
      003570 F5 83            [12] 1468 	mov	dph,a
      003572 EC               [12] 1469 	mov	a,r4
      003573 F0               [24] 1470 	movx	@dptr,a
                                   1471 ;	8051_i2c_eeprom.c:213: putchar(c);  // Echo character back
      003574 7D 00            [12] 1472 	mov	r5,#0x00
      003576 8C 82            [24] 1473 	mov	dpl,r4
      003578 8D 83            [24] 1474 	mov	dph,r5
      00357A C0 07            [24] 1475 	push	ar7
      00357C C0 06            [24] 1476 	push	ar6
      00357E 12 30 62         [24] 1477 	lcall	_putchar
      003581 D0 06            [24] 1478 	pop	ar6
      003583 D0 07            [24] 1479 	pop	ar7
                                   1480 ;	8051_i2c_eeprom.c:214: i++;
      003585 0E               [12] 1481 	inc	r6
      003586 BE 00 9D         [24] 1482 	cjne	r6,#0x00,00111$
      003589 0F               [12] 1483 	inc	r7
      00358A 80 9A            [24] 1484 	sjmp	00111$
      00358C                       1485 00113$:
                                   1486 ;	8051_i2c_eeprom.c:218: input[i] = '\0';  // Null-terminate the string
      00358C EE               [12] 1487 	mov	a,r6
      00358D 24 0A            [12] 1488 	add	a,#_take_data_input_65537_76
      00358F F5 82            [12] 1489 	mov	dpl,a
      003591 EF               [12] 1490 	mov	a,r7
      003592 34 04            [12] 1491 	addc	a,#(_take_data_input_65537_76 >> 8)
      003594 F5 83            [12] 1492 	mov	dph,a
      003596 E4               [12] 1493 	clr	a
      003597 F0               [24] 1494 	movx	@dptr,a
                                   1495 ;	8051_i2c_eeprom.c:221: unsigned char data = 0;
      003598 90 04 0E         [24] 1496 	mov	dptr,#_take_data_data_65538_80
      00359B F0               [24] 1497 	movx	@dptr,a
                                   1498 ;	8051_i2c_eeprom.c:222: for (i = 0; input[i] != '\0'; i++) {
      00359C 7E 00            [12] 1499 	mov	r6,#0x00
      00359E 7F 00            [12] 1500 	mov	r7,#0x00
      0035A0                       1501 00129$:
      0035A0 EE               [12] 1502 	mov	a,r6
      0035A1 24 0A            [12] 1503 	add	a,#_take_data_input_65537_76
      0035A3 F5 82            [12] 1504 	mov	dpl,a
      0035A5 EF               [12] 1505 	mov	a,r7
      0035A6 34 04            [12] 1506 	addc	a,#(_take_data_input_65537_76 >> 8)
      0035A8 F5 83            [12] 1507 	mov	dph,a
      0035AA E0               [24] 1508 	movx	a,@dptr
      0035AB FD               [12] 1509 	mov	r5,a
      0035AC 70 03            [24] 1510 	jnz	00212$
      0035AE 02 36 13         [24] 1511 	ljmp	00125$
      0035B1                       1512 00212$:
                                   1513 ;	8051_i2c_eeprom.c:223: data = data * 16;
      0035B1 90 04 0E         [24] 1514 	mov	dptr,#_take_data_data_65538_80
      0035B4 E0               [24] 1515 	movx	a,@dptr
      0035B5 C4               [12] 1516 	swap	a
      0035B6 54 F0            [12] 1517 	anl	a,#0xf0
      0035B8 FC               [12] 1518 	mov	r4,a
      0035B9 F0               [24] 1519 	movx	@dptr,a
                                   1520 ;	8051_i2c_eeprom.c:224: if (input[i] >= '0' && input[i] <= '9')
      0035BA BD 30 00         [24] 1521 	cjne	r5,#0x30,00213$
      0035BD                       1522 00213$:
      0035BD 40 12            [24] 1523 	jc	00122$
      0035BF ED               [12] 1524 	mov	a,r5
      0035C0 24 C6            [12] 1525 	add	a,#0xff - 0x39
      0035C2 40 0D            [24] 1526 	jc	00122$
                                   1527 ;	8051_i2c_eeprom.c:225: data += input[i] - '0';
      0035C4 ED               [12] 1528 	mov	a,r5
      0035C5 24 D0            [12] 1529 	add	a,#0xd0
      0035C7 FD               [12] 1530 	mov	r5,a
      0035C8 90 04 0E         [24] 1531 	mov	dptr,#_take_data_data_65538_80
      0035CB E0               [24] 1532 	movx	a,@dptr
      0035CC FC               [12] 1533 	mov	r4,a
      0035CD 2D               [12] 1534 	add	a,r5
      0035CE F0               [24] 1535 	movx	@dptr,a
      0035CF 80 3A            [24] 1536 	sjmp	00130$
      0035D1                       1537 00122$:
                                   1538 ;	8051_i2c_eeprom.c:226: else if (input[i] >= 'A' && input[i] <= 'F')
      0035D1 EE               [12] 1539 	mov	a,r6
      0035D2 24 0A            [12] 1540 	add	a,#_take_data_input_65537_76
      0035D4 F5 82            [12] 1541 	mov	dpl,a
      0035D6 EF               [12] 1542 	mov	a,r7
      0035D7 34 04            [12] 1543 	addc	a,#(_take_data_input_65537_76 >> 8)
      0035D9 F5 83            [12] 1544 	mov	dph,a
      0035DB E0               [24] 1545 	movx	a,@dptr
      0035DC FD               [12] 1546 	mov	r5,a
      0035DD BD 41 00         [24] 1547 	cjne	r5,#0x41,00216$
      0035E0                       1548 00216$:
      0035E0 40 14            [24] 1549 	jc	00118$
      0035E2 ED               [12] 1550 	mov	a,r5
      0035E3 24 B9            [12] 1551 	add	a,#0xff - 0x46
      0035E5 40 0F            [24] 1552 	jc	00118$
                                   1553 ;	8051_i2c_eeprom.c:227: data += input[i] - 'A' + 10;
      0035E7 8D 04            [24] 1554 	mov	ar4,r5
      0035E9 74 C9            [12] 1555 	mov	a,#0xc9
      0035EB 2C               [12] 1556 	add	a,r4
      0035EC FC               [12] 1557 	mov	r4,a
      0035ED 90 04 0E         [24] 1558 	mov	dptr,#_take_data_data_65538_80
      0035F0 E0               [24] 1559 	movx	a,@dptr
      0035F1 FB               [12] 1560 	mov	r3,a
      0035F2 2C               [12] 1561 	add	a,r4
      0035F3 F0               [24] 1562 	movx	@dptr,a
      0035F4 80 15            [24] 1563 	sjmp	00130$
      0035F6                       1564 00118$:
                                   1565 ;	8051_i2c_eeprom.c:228: else if (input[i] >= 'a' && input[i] <= 'f')
      0035F6 BD 61 00         [24] 1566 	cjne	r5,#0x61,00219$
      0035F9                       1567 00219$:
      0035F9 40 10            [24] 1568 	jc	00130$
      0035FB ED               [12] 1569 	mov	a,r5
      0035FC 24 99            [12] 1570 	add	a,#0xff - 0x66
      0035FE 40 0B            [24] 1571 	jc	00130$
                                   1572 ;	8051_i2c_eeprom.c:229: data += input[i] - 'a' + 10;
      003600 74 A9            [12] 1573 	mov	a,#0xa9
      003602 2D               [12] 1574 	add	a,r5
      003603 FD               [12] 1575 	mov	r5,a
      003604 90 04 0E         [24] 1576 	mov	dptr,#_take_data_data_65538_80
      003607 E0               [24] 1577 	movx	a,@dptr
      003608 FC               [12] 1578 	mov	r4,a
      003609 2D               [12] 1579 	add	a,r5
      00360A F0               [24] 1580 	movx	@dptr,a
      00360B                       1581 00130$:
                                   1582 ;	8051_i2c_eeprom.c:222: for (i = 0; input[i] != '\0'; i++) {
      00360B 0E               [12] 1583 	inc	r6
      00360C BE 00 01         [24] 1584 	cjne	r6,#0x00,00222$
      00360F 0F               [12] 1585 	inc	r7
      003610                       1586 00222$:
      003610 02 35 A0         [24] 1587 	ljmp	00129$
      003613                       1588 00125$:
                                   1589 ;	8051_i2c_eeprom.c:232: printf("\n\r│ Entered data: 0x%03X\n\r", data);
      003613 90 04 0E         [24] 1590 	mov	dptr,#_take_data_data_65538_80
      003616 E0               [24] 1591 	movx	a,@dptr
      003617 FF               [12] 1592 	mov	r7,a
      003618 FD               [12] 1593 	mov	r5,a
      003619 7E 00            [12] 1594 	mov	r6,#0x00
      00361B C0 07            [24] 1595 	push	ar7
      00361D C0 05            [24] 1596 	push	ar5
      00361F C0 06            [24] 1597 	push	ar6
      003621 74 62            [12] 1598 	mov	a,#___str_26
      003623 C0 E0            [24] 1599 	push	acc
      003625 74 4E            [12] 1600 	mov	a,#(___str_26 >> 8)
      003627 C0 E0            [24] 1601 	push	acc
      003629 74 80            [12] 1602 	mov	a,#0x80
      00362B C0 E0            [24] 1603 	push	acc
      00362D 12 3B 43         [24] 1604 	lcall	_printf
      003630 E5 81            [12] 1605 	mov	a,sp
      003632 24 FB            [12] 1606 	add	a,#0xfb
      003634 F5 81            [12] 1607 	mov	sp,a
      003636 D0 07            [24] 1608 	pop	ar7
                                   1609 ;	8051_i2c_eeprom.c:233: if(data > 0xFE) 
      003638 EF               [12] 1610 	mov	a,r7
      003639 24 01            [12] 1611 	add	a,#0xff - 0xfe
      00363B 50 20            [24] 1612 	jnc	00127$
                                   1613 ;	8051_i2c_eeprom.c:235: printf("Data out of Range\n\r");
      00363D 74 7F            [12] 1614 	mov	a,#___str_27
      00363F C0 E0            [24] 1615 	push	acc
      003641 74 4E            [12] 1616 	mov	a,#(___str_27 >> 8)
      003643 C0 E0            [24] 1617 	push	acc
      003645 74 80            [12] 1618 	mov	a,#0x80
      003647 C0 E0            [24] 1619 	push	acc
      003649 12 3B 43         [24] 1620 	lcall	_printf
      00364C 15 81            [12] 1621 	dec	sp
      00364E 15 81            [12] 1622 	dec	sp
      003650 15 81            [12] 1623 	dec	sp
                                   1624 ;	8051_i2c_eeprom.c:236: data_range_flag = 0;
      003652 90 04 53         [24] 1625 	mov	dptr,#_data_range_flag
      003655 E4               [12] 1626 	clr	a
      003656 F0               [24] 1627 	movx	@dptr,a
      003657 A3               [24] 1628 	inc	dptr
      003658 F0               [24] 1629 	movx	@dptr,a
                                   1630 ;	8051_i2c_eeprom.c:237: return 0;
      003659 75 82 00         [24] 1631 	mov	dpl,#0x00
      00365C 22               [24] 1632 	ret
      00365D                       1633 00127$:
                                   1634 ;	8051_i2c_eeprom.c:239: return data;
      00365D 8F 82            [24] 1635 	mov	dpl,r7
                                   1636 ;	8051_i2c_eeprom.c:241: }
      00365F 22               [24] 1637 	ret
                                   1638 ;------------------------------------------------------------
                                   1639 ;Allocation info for local variables in function 'eeprom_write'
                                   1640 ;------------------------------------------------------------
                                   1641 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                   1642 ;address                   Allocated with name '_eeprom_write_address_65536_84'
                                   1643 ;i                         Allocated with name '_eeprom_write_i_196608_90'
                                   1644 ;------------------------------------------------------------
                                   1645 ;	8051_i2c_eeprom.c:243: int eeprom_write(unsigned int address, unsigned char data) 
                                   1646 ;	-----------------------------------------
                                   1647 ;	 function eeprom_write
                                   1648 ;	-----------------------------------------
      003660                       1649 _eeprom_write:
      003660 AF 83            [24] 1650 	mov	r7,dph
      003662 E5 82            [12] 1651 	mov	a,dpl
      003664 90 04 10         [24] 1652 	mov	dptr,#_eeprom_write_address_65536_84
      003667 F0               [24] 1653 	movx	@dptr,a
      003668 EF               [12] 1654 	mov	a,r7
      003669 A3               [24] 1655 	inc	dptr
      00366A F0               [24] 1656 	movx	@dptr,a
                                   1657 ;	8051_i2c_eeprom.c:245: if(address_range_flag & data_range_flag)
      00366B 90 04 51         [24] 1658 	mov	dptr,#_address_range_flag
      00366E E0               [24] 1659 	movx	a,@dptr
      00366F FE               [12] 1660 	mov	r6,a
      003670 A3               [24] 1661 	inc	dptr
      003671 E0               [24] 1662 	movx	a,@dptr
      003672 FF               [12] 1663 	mov	r7,a
      003673 90 04 53         [24] 1664 	mov	dptr,#_data_range_flag
      003676 E0               [24] 1665 	movx	a,@dptr
      003677 FC               [12] 1666 	mov	r4,a
      003678 A3               [24] 1667 	inc	dptr
      003679 E0               [24] 1668 	movx	a,@dptr
      00367A FD               [12] 1669 	mov	r5,a
      00367B EC               [12] 1670 	mov	a,r4
      00367C 52 06            [12] 1671 	anl	ar6,a
      00367E ED               [12] 1672 	mov	a,r5
      00367F 52 07            [12] 1673 	anl	ar7,a
      003681 EE               [12] 1674 	mov	a,r6
      003682 4F               [12] 1675 	orl	a,r7
      003683 70 03            [24] 1676 	jnz	00140$
      003685 02 37 BF         [24] 1677 	ljmp	00109$
      003688                       1678 00140$:
                                   1679 ;	8051_i2c_eeprom.c:248: i2c_start();
      003688 12 3A 04         [24] 1680 	lcall	_i2c_start
                                   1681 ;	8051_i2c_eeprom.c:251: if(!i2c_write(EEPROM_ID | block | WRITE)) {
      00368B 90 04 55         [24] 1682 	mov	dptr,#_block
      00368E E0               [24] 1683 	movx	a,@dptr
      00368F FE               [12] 1684 	mov	r6,a
      003690 A3               [24] 1685 	inc	dptr
      003691 E0               [24] 1686 	movx	a,@dptr
      003692 43 06 A0         [24] 1687 	orl	ar6,#0xa0
      003695 8E 82            [24] 1688 	mov	dpl,r6
      003697 12 39 17         [24] 1689 	lcall	_i2c_write
      00369A E5 82            [12] 1690 	mov	a,dpl
      00369C 85 83 F0         [24] 1691 	mov	b,dph
      00369F 45 F0            [12] 1692 	orl	a,b
      0036A1 70 1C            [24] 1693 	jnz	00102$
                                   1694 ;	8051_i2c_eeprom.c:252: printf("Error: No ACK for device address (write)\n\r");
      0036A3 74 93            [12] 1695 	mov	a,#___str_28
      0036A5 C0 E0            [24] 1696 	push	acc
      0036A7 74 4E            [12] 1697 	mov	a,#(___str_28 >> 8)
      0036A9 C0 E0            [24] 1698 	push	acc
      0036AB 74 80            [12] 1699 	mov	a,#0x80
      0036AD C0 E0            [24] 1700 	push	acc
      0036AF 12 3B 43         [24] 1701 	lcall	_printf
      0036B2 15 81            [12] 1702 	dec	sp
      0036B4 15 81            [12] 1703 	dec	sp
      0036B6 15 81            [12] 1704 	dec	sp
                                   1705 ;	8051_i2c_eeprom.c:253: i2c_stop();
      0036B8 12 3A 19         [24] 1706 	lcall	_i2c_stop
                                   1707 ;	8051_i2c_eeprom.c:254: return 0;
      0036BB 90 00 00         [24] 1708 	mov	dptr,#0x0000
      0036BE 22               [24] 1709 	ret
      0036BF                       1710 00102$:
                                   1711 ;	8051_i2c_eeprom.c:258: if(!i2c_write((unsigned char)address)) {
      0036BF 90 04 10         [24] 1712 	mov	dptr,#_eeprom_write_address_65536_84
      0036C2 E0               [24] 1713 	movx	a,@dptr
      0036C3 FE               [12] 1714 	mov	r6,a
      0036C4 A3               [24] 1715 	inc	dptr
      0036C5 E0               [24] 1716 	movx	a,@dptr
      0036C6 FF               [12] 1717 	mov	r7,a
      0036C7 8E 05            [24] 1718 	mov	ar5,r6
      0036C9 8D 82            [24] 1719 	mov	dpl,r5
      0036CB C0 07            [24] 1720 	push	ar7
      0036CD C0 06            [24] 1721 	push	ar6
      0036CF 12 39 17         [24] 1722 	lcall	_i2c_write
      0036D2 E5 82            [12] 1723 	mov	a,dpl
      0036D4 85 83 F0         [24] 1724 	mov	b,dph
      0036D7 D0 06            [24] 1725 	pop	ar6
      0036D9 D0 07            [24] 1726 	pop	ar7
      0036DB 45 F0            [12] 1727 	orl	a,b
      0036DD 70 1C            [24] 1728 	jnz	00104$
                                   1729 ;	8051_i2c_eeprom.c:259: printf("Error: No ACK for memory address\n\r");
      0036DF 74 BE            [12] 1730 	mov	a,#___str_29
      0036E1 C0 E0            [24] 1731 	push	acc
      0036E3 74 4E            [12] 1732 	mov	a,#(___str_29 >> 8)
      0036E5 C0 E0            [24] 1733 	push	acc
      0036E7 74 80            [12] 1734 	mov	a,#0x80
      0036E9 C0 E0            [24] 1735 	push	acc
      0036EB 12 3B 43         [24] 1736 	lcall	_printf
      0036EE 15 81            [12] 1737 	dec	sp
      0036F0 15 81            [12] 1738 	dec	sp
      0036F2 15 81            [12] 1739 	dec	sp
                                   1740 ;	8051_i2c_eeprom.c:260: i2c_stop();
      0036F4 12 3A 19         [24] 1741 	lcall	_i2c_stop
                                   1742 ;	8051_i2c_eeprom.c:261: return 0;
      0036F7 90 00 00         [24] 1743 	mov	dptr,#0x0000
      0036FA 22               [24] 1744 	ret
      0036FB                       1745 00104$:
                                   1746 ;	8051_i2c_eeprom.c:265: if(!i2c_write(data)) {
      0036FB 90 04 0F         [24] 1747 	mov	dptr,#_eeprom_write_PARM_2
      0036FE E0               [24] 1748 	movx	a,@dptr
      0036FF FD               [12] 1749 	mov	r5,a
      003700 F5 82            [12] 1750 	mov	dpl,a
      003702 C0 07            [24] 1751 	push	ar7
      003704 C0 06            [24] 1752 	push	ar6
      003706 C0 05            [24] 1753 	push	ar5
      003708 12 39 17         [24] 1754 	lcall	_i2c_write
      00370B E5 82            [12] 1755 	mov	a,dpl
      00370D 85 83 F0         [24] 1756 	mov	b,dph
      003710 D0 05            [24] 1757 	pop	ar5
      003712 D0 06            [24] 1758 	pop	ar6
      003714 D0 07            [24] 1759 	pop	ar7
      003716 45 F0            [12] 1760 	orl	a,b
      003718 70 1C            [24] 1761 	jnz	00106$
                                   1762 ;	8051_i2c_eeprom.c:266: printf("Error: No ACK for data\n\r");
      00371A 74 E1            [12] 1763 	mov	a,#___str_30
      00371C C0 E0            [24] 1764 	push	acc
      00371E 74 4E            [12] 1765 	mov	a,#(___str_30 >> 8)
      003720 C0 E0            [24] 1766 	push	acc
      003722 74 80            [12] 1767 	mov	a,#0x80
      003724 C0 E0            [24] 1768 	push	acc
      003726 12 3B 43         [24] 1769 	lcall	_printf
      003729 15 81            [12] 1770 	dec	sp
      00372B 15 81            [12] 1771 	dec	sp
      00372D 15 81            [12] 1772 	dec	sp
                                   1773 ;	8051_i2c_eeprom.c:267: i2c_stop();
      00372F 12 3A 19         [24] 1774 	lcall	_i2c_stop
                                   1775 ;	8051_i2c_eeprom.c:268: return 0;
      003732 90 00 00         [24] 1776 	mov	dptr,#0x0000
      003735 22               [24] 1777 	ret
      003736                       1778 00106$:
                                   1779 ;	8051_i2c_eeprom.c:271: i2c_stop();
      003736 C0 07            [24] 1780 	push	ar7
      003738 C0 06            [24] 1781 	push	ar6
      00373A C0 05            [24] 1782 	push	ar5
      00373C 12 3A 19         [24] 1783 	lcall	_i2c_stop
      00373F D0 05            [24] 1784 	pop	ar5
      003741 D0 06            [24] 1785 	pop	ar6
      003743 D0 07            [24] 1786 	pop	ar7
                                   1787 ;	8051_i2c_eeprom.c:273: for(int i = 0; i<100; i++)
      003745 7B 00            [12] 1788 	mov	r3,#0x00
      003747 7C 00            [12] 1789 	mov	r4,#0x00
      003749                       1790 00111$:
      003749 C3               [12] 1791 	clr	c
      00374A EB               [12] 1792 	mov	a,r3
      00374B 94 64            [12] 1793 	subb	a,#0x64
      00374D EC               [12] 1794 	mov	a,r4
      00374E 64 80            [12] 1795 	xrl	a,#0x80
      003750 94 80            [12] 1796 	subb	a,#0x80
      003752 50 1E            [24] 1797 	jnc	00107$
                                   1798 ;	8051_i2c_eeprom.c:275: i2c_delay();
      003754 C0 07            [24] 1799 	push	ar7
      003756 C0 06            [24] 1800 	push	ar6
      003758 C0 05            [24] 1801 	push	ar5
      00375A C0 04            [24] 1802 	push	ar4
      00375C C0 03            [24] 1803 	push	ar3
      00375E 12 3A 26         [24] 1804 	lcall	_i2c_delay
      003761 D0 03            [24] 1805 	pop	ar3
      003763 D0 04            [24] 1806 	pop	ar4
      003765 D0 05            [24] 1807 	pop	ar5
      003767 D0 06            [24] 1808 	pop	ar6
      003769 D0 07            [24] 1809 	pop	ar7
                                   1810 ;	8051_i2c_eeprom.c:273: for(int i = 0; i<100; i++)
      00376B 0B               [12] 1811 	inc	r3
      00376C BB 00 DA         [24] 1812 	cjne	r3,#0x00,00111$
      00376F 0C               [12] 1813 	inc	r4
      003770 80 D7            [24] 1814 	sjmp	00111$
      003772                       1815 00107$:
                                   1816 ;	8051_i2c_eeprom.c:277: printf("| Writing at Address 0x%03X Data 0x%02X          |\n\r", address, data);
      003772 7C 00            [12] 1817 	mov	r4,#0x00
      003774 C0 05            [24] 1818 	push	ar5
      003776 C0 04            [24] 1819 	push	ar4
      003778 C0 06            [24] 1820 	push	ar6
      00377A C0 07            [24] 1821 	push	ar7
      00377C 74 FA            [12] 1822 	mov	a,#___str_31
      00377E C0 E0            [24] 1823 	push	acc
      003780 74 4E            [12] 1824 	mov	a,#(___str_31 >> 8)
      003782 C0 E0            [24] 1825 	push	acc
      003784 74 80            [12] 1826 	mov	a,#0x80
      003786 C0 E0            [24] 1827 	push	acc
      003788 12 3B 43         [24] 1828 	lcall	_printf
      00378B E5 81            [12] 1829 	mov	a,sp
      00378D 24 F9            [12] 1830 	add	a,#0xf9
      00378F F5 81            [12] 1831 	mov	sp,a
                                   1832 ;	8051_i2c_eeprom.c:278: printf("│ Write successful!                             │\n\r");
      003791 74 2F            [12] 1833 	mov	a,#___str_32
      003793 C0 E0            [24] 1834 	push	acc
      003795 74 4F            [12] 1835 	mov	a,#(___str_32 >> 8)
      003797 C0 E0            [24] 1836 	push	acc
      003799 74 80            [12] 1837 	mov	a,#0x80
      00379B C0 E0            [24] 1838 	push	acc
      00379D 12 3B 43         [24] 1839 	lcall	_printf
      0037A0 15 81            [12] 1840 	dec	sp
      0037A2 15 81            [12] 1841 	dec	sp
      0037A4 15 81            [12] 1842 	dec	sp
                                   1843 ;	8051_i2c_eeprom.c:279: printf("└───────────────────────────────────────────────┘\n\r");
      0037A6 74 67            [12] 1844 	mov	a,#___str_33
      0037A8 C0 E0            [24] 1845 	push	acc
      0037AA 74 4F            [12] 1846 	mov	a,#(___str_33 >> 8)
      0037AC C0 E0            [24] 1847 	push	acc
      0037AE 74 80            [12] 1848 	mov	a,#0x80
      0037B0 C0 E0            [24] 1849 	push	acc
      0037B2 12 3B 43         [24] 1850 	lcall	_printf
      0037B5 15 81            [12] 1851 	dec	sp
      0037B7 15 81            [12] 1852 	dec	sp
      0037B9 15 81            [12] 1853 	dec	sp
                                   1854 ;	8051_i2c_eeprom.c:280: return 1;  // Success
      0037BB 90 00 01         [24] 1855 	mov	dptr,#0x0001
      0037BE 22               [24] 1856 	ret
      0037BF                       1857 00109$:
                                   1858 ;	8051_i2c_eeprom.c:282: return 0;
      0037BF 90 00 00         [24] 1859 	mov	dptr,#0x0000
                                   1860 ;	8051_i2c_eeprom.c:289: }
      0037C2 22               [24] 1861 	ret
                                   1862 ;------------------------------------------------------------
                                   1863 ;Allocation info for local variables in function 'eeprom_read'
                                   1864 ;------------------------------------------------------------
                                   1865 ;address                   Allocated with name '_eeprom_read_address_65536_92'
                                   1866 ;result                    Allocated with name '_eeprom_read_result_131072_94'
                                   1867 ;------------------------------------------------------------
                                   1868 ;	8051_i2c_eeprom.c:291: int eeprom_read(unsigned int address) 
                                   1869 ;	-----------------------------------------
                                   1870 ;	 function eeprom_read
                                   1871 ;	-----------------------------------------
      0037C3                       1872 _eeprom_read:
      0037C3 AF 83            [24] 1873 	mov	r7,dph
      0037C5 E5 82            [12] 1874 	mov	a,dpl
      0037C7 90 04 12         [24] 1875 	mov	dptr,#_eeprom_read_address_65536_92
      0037CA F0               [24] 1876 	movx	@dptr,a
      0037CB EF               [12] 1877 	mov	a,r7
      0037CC A3               [24] 1878 	inc	dptr
      0037CD F0               [24] 1879 	movx	@dptr,a
                                   1880 ;	8051_i2c_eeprom.c:293: if(address_range_flag)
      0037CE 90 04 51         [24] 1881 	mov	dptr,#_address_range_flag
      0037D1 E0               [24] 1882 	movx	a,@dptr
      0037D2 F5 F0            [12] 1883 	mov	b,a
      0037D4 A3               [24] 1884 	inc	dptr
      0037D5 E0               [24] 1885 	movx	a,@dptr
      0037D6 45 F0            [12] 1886 	orl	a,b
      0037D8 70 03            [24] 1887 	jnz	00127$
      0037DA 02 39 13         [24] 1888 	ljmp	00108$
      0037DD                       1889 00127$:
                                   1890 ;	8051_i2c_eeprom.c:298: i2c_start();
      0037DD 12 3A 04         [24] 1891 	lcall	_i2c_start
                                   1892 ;	8051_i2c_eeprom.c:301: if(!i2c_write(EEPROM_ID | WRITE)) {
      0037E0 75 82 A0         [24] 1893 	mov	dpl,#0xa0
      0037E3 12 39 17         [24] 1894 	lcall	_i2c_write
      0037E6 E5 82            [12] 1895 	mov	a,dpl
      0037E8 85 83 F0         [24] 1896 	mov	b,dph
      0037EB 45 F0            [12] 1897 	orl	a,b
      0037ED 70 1C            [24] 1898 	jnz	00102$
                                   1899 ;	8051_i2c_eeprom.c:302: printf("Error: No ACK for device address (write mode)\n\r");
      0037EF 74 FD            [12] 1900 	mov	a,#___str_34
      0037F1 C0 E0            [24] 1901 	push	acc
      0037F3 74 4F            [12] 1902 	mov	a,#(___str_34 >> 8)
      0037F5 C0 E0            [24] 1903 	push	acc
      0037F7 74 80            [12] 1904 	mov	a,#0x80
      0037F9 C0 E0            [24] 1905 	push	acc
      0037FB 12 3B 43         [24] 1906 	lcall	_printf
      0037FE 15 81            [12] 1907 	dec	sp
      003800 15 81            [12] 1908 	dec	sp
      003802 15 81            [12] 1909 	dec	sp
                                   1910 ;	8051_i2c_eeprom.c:303: i2c_stop();
      003804 12 3A 19         [24] 1911 	lcall	_i2c_stop
                                   1912 ;	8051_i2c_eeprom.c:304: return -1;
      003807 90 FF FF         [24] 1913 	mov	dptr,#0xffff
      00380A 22               [24] 1914 	ret
      00380B                       1915 00102$:
                                   1916 ;	8051_i2c_eeprom.c:308: if(!i2c_write((unsigned char)address)) {
      00380B 90 04 12         [24] 1917 	mov	dptr,#_eeprom_read_address_65536_92
      00380E E0               [24] 1918 	movx	a,@dptr
      00380F FE               [12] 1919 	mov	r6,a
      003810 A3               [24] 1920 	inc	dptr
      003811 E0               [24] 1921 	movx	a,@dptr
      003812 FF               [12] 1922 	mov	r7,a
      003813 8E 05            [24] 1923 	mov	ar5,r6
      003815 8D 82            [24] 1924 	mov	dpl,r5
      003817 C0 07            [24] 1925 	push	ar7
      003819 C0 06            [24] 1926 	push	ar6
      00381B 12 39 17         [24] 1927 	lcall	_i2c_write
      00381E E5 82            [12] 1928 	mov	a,dpl
      003820 85 83 F0         [24] 1929 	mov	b,dph
      003823 D0 06            [24] 1930 	pop	ar6
      003825 D0 07            [24] 1931 	pop	ar7
      003827 45 F0            [12] 1932 	orl	a,b
      003829 70 1C            [24] 1933 	jnz	00104$
                                   1934 ;	8051_i2c_eeprom.c:309: printf("Error: No ACK for memory address\n\r");
      00382B 74 BE            [12] 1935 	mov	a,#___str_29
      00382D C0 E0            [24] 1936 	push	acc
      00382F 74 4E            [12] 1937 	mov	a,#(___str_29 >> 8)
      003831 C0 E0            [24] 1938 	push	acc
      003833 74 80            [12] 1939 	mov	a,#0x80
      003835 C0 E0            [24] 1940 	push	acc
      003837 12 3B 43         [24] 1941 	lcall	_printf
      00383A 15 81            [12] 1942 	dec	sp
      00383C 15 81            [12] 1943 	dec	sp
      00383E 15 81            [12] 1944 	dec	sp
                                   1945 ;	8051_i2c_eeprom.c:310: i2c_stop();
      003840 12 3A 19         [24] 1946 	lcall	_i2c_stop
                                   1947 ;	8051_i2c_eeprom.c:311: return -1;
      003843 90 FF FF         [24] 1948 	mov	dptr,#0xffff
      003846 22               [24] 1949 	ret
      003847                       1950 00104$:
                                   1951 ;	8051_i2c_eeprom.c:315: i2c_start();
      003847 C0 07            [24] 1952 	push	ar7
      003849 C0 06            [24] 1953 	push	ar6
      00384B 12 3A 04         [24] 1954 	lcall	_i2c_start
                                   1955 ;	8051_i2c_eeprom.c:318: if(!i2c_write(EEPROM_ID | READ)) {
      00384E 75 82 A1         [24] 1956 	mov	dpl,#0xa1
      003851 12 39 17         [24] 1957 	lcall	_i2c_write
      003854 E5 82            [12] 1958 	mov	a,dpl
      003856 85 83 F0         [24] 1959 	mov	b,dph
      003859 D0 06            [24] 1960 	pop	ar6
      00385B D0 07            [24] 1961 	pop	ar7
      00385D 45 F0            [12] 1962 	orl	a,b
      00385F 70 1C            [24] 1963 	jnz	00106$
                                   1964 ;	8051_i2c_eeprom.c:319: printf("Error: No ACK for device address (read mode)\n\r");
      003861 74 2D            [12] 1965 	mov	a,#___str_35
      003863 C0 E0            [24] 1966 	push	acc
      003865 74 50            [12] 1967 	mov	a,#(___str_35 >> 8)
      003867 C0 E0            [24] 1968 	push	acc
      003869 74 80            [12] 1969 	mov	a,#0x80
      00386B C0 E0            [24] 1970 	push	acc
      00386D 12 3B 43         [24] 1971 	lcall	_printf
      003870 15 81            [12] 1972 	dec	sp
      003872 15 81            [12] 1973 	dec	sp
      003874 15 81            [12] 1974 	dec	sp
                                   1975 ;	8051_i2c_eeprom.c:320: i2c_stop();
      003876 12 3A 19         [24] 1976 	lcall	_i2c_stop
                                   1977 ;	8051_i2c_eeprom.c:321: return -1;
      003879 90 FF FF         [24] 1978 	mov	dptr,#0xffff
      00387C 22               [24] 1979 	ret
      00387D                       1980 00106$:
                                   1981 ;	8051_i2c_eeprom.c:325: result = i2c_read(0);  // 0 means send NACK
      00387D 90 00 00         [24] 1982 	mov	dptr,#0x0000
      003880 C0 07            [24] 1983 	push	ar7
      003882 C0 06            [24] 1984 	push	ar6
      003884 12 39 7F         [24] 1985 	lcall	_i2c_read
      003887 AC 82            [24] 1986 	mov	r4,dpl
      003889 D0 06            [24] 1987 	pop	ar6
      00388B D0 07            [24] 1988 	pop	ar7
                                   1989 ;	8051_i2c_eeprom.c:326: printf("│ Reading from Adress: 0x%03X Data: 0x%02X                    \n\r", address, result);
      00388D 7D 00            [12] 1990 	mov	r5,#0x00
      00388F C0 07            [24] 1991 	push	ar7
      003891 C0 06            [24] 1992 	push	ar6
      003893 C0 05            [24] 1993 	push	ar5
      003895 C0 04            [24] 1994 	push	ar4
      003897 C0 04            [24] 1995 	push	ar4
      003899 C0 05            [24] 1996 	push	ar5
      00389B C0 06            [24] 1997 	push	ar6
      00389D C0 07            [24] 1998 	push	ar7
      00389F 74 5C            [12] 1999 	mov	a,#___str_36
      0038A1 C0 E0            [24] 2000 	push	acc
      0038A3 74 50            [12] 2001 	mov	a,#(___str_36 >> 8)
      0038A5 C0 E0            [24] 2002 	push	acc
      0038A7 74 80            [12] 2003 	mov	a,#0x80
      0038A9 C0 E0            [24] 2004 	push	acc
      0038AB 12 3B 43         [24] 2005 	lcall	_printf
      0038AE E5 81            [12] 2006 	mov	a,sp
      0038B0 24 F9            [12] 2007 	add	a,#0xf9
      0038B2 F5 81            [12] 2008 	mov	sp,a
      0038B4 D0 04            [24] 2009 	pop	ar4
      0038B6 D0 05            [24] 2010 	pop	ar5
      0038B8 D0 06            [24] 2011 	pop	ar6
      0038BA D0 07            [24] 2012 	pop	ar7
                                   2013 ;	8051_i2c_eeprom.c:327: printf("| 0x%03X : 0x%02X \n\r", address, result);
      0038BC C0 05            [24] 2014 	push	ar5
      0038BE C0 04            [24] 2015 	push	ar4
      0038C0 C0 04            [24] 2016 	push	ar4
      0038C2 C0 05            [24] 2017 	push	ar5
      0038C4 C0 06            [24] 2018 	push	ar6
      0038C6 C0 07            [24] 2019 	push	ar7
      0038C8 74 9F            [12] 2020 	mov	a,#___str_37
      0038CA C0 E0            [24] 2021 	push	acc
      0038CC 74 50            [12] 2022 	mov	a,#(___str_37 >> 8)
      0038CE C0 E0            [24] 2023 	push	acc
      0038D0 74 80            [12] 2024 	mov	a,#0x80
      0038D2 C0 E0            [24] 2025 	push	acc
      0038D4 12 3B 43         [24] 2026 	lcall	_printf
      0038D7 E5 81            [12] 2027 	mov	a,sp
      0038D9 24 F9            [12] 2028 	add	a,#0xf9
      0038DB F5 81            [12] 2029 	mov	sp,a
                                   2030 ;	8051_i2c_eeprom.c:328: printf("│ Read successful!                 │\n\r");
      0038DD 74 B4            [12] 2031 	mov	a,#___str_38
      0038DF C0 E0            [24] 2032 	push	acc
      0038E1 74 50            [12] 2033 	mov	a,#(___str_38 >> 8)
      0038E3 C0 E0            [24] 2034 	push	acc
      0038E5 74 80            [12] 2035 	mov	a,#0x80
      0038E7 C0 E0            [24] 2036 	push	acc
      0038E9 12 3B 43         [24] 2037 	lcall	_printf
      0038EC 15 81            [12] 2038 	dec	sp
      0038EE 15 81            [12] 2039 	dec	sp
      0038F0 15 81            [12] 2040 	dec	sp
                                   2041 ;	8051_i2c_eeprom.c:329: printf("└───────────────────────────────────────────────┘\n\r");
      0038F2 74 67            [12] 2042 	mov	a,#___str_33
      0038F4 C0 E0            [24] 2043 	push	acc
      0038F6 74 4F            [12] 2044 	mov	a,#(___str_33 >> 8)
      0038F8 C0 E0            [24] 2045 	push	acc
      0038FA 74 80            [12] 2046 	mov	a,#0x80
      0038FC C0 E0            [24] 2047 	push	acc
      0038FE 12 3B 43         [24] 2048 	lcall	_printf
      003901 15 81            [12] 2049 	dec	sp
      003903 15 81            [12] 2050 	dec	sp
      003905 15 81            [12] 2051 	dec	sp
                                   2052 ;	8051_i2c_eeprom.c:330: i2c_stop();
      003907 12 3A 19         [24] 2053 	lcall	_i2c_stop
      00390A D0 04            [24] 2054 	pop	ar4
      00390C D0 05            [24] 2055 	pop	ar5
                                   2056 ;	8051_i2c_eeprom.c:331: return result;
      00390E 8C 82            [24] 2057 	mov	dpl,r4
      003910 8D 83            [24] 2058 	mov	dph,r5
      003912 22               [24] 2059 	ret
      003913                       2060 00108$:
                                   2061 ;	8051_i2c_eeprom.c:333: return 0;
      003913 90 00 00         [24] 2062 	mov	dptr,#0x0000
                                   2063 ;	8051_i2c_eeprom.c:343: }
      003916 22               [24] 2064 	ret
                                   2065 ;------------------------------------------------------------
                                   2066 ;Allocation info for local variables in function 'i2c_write'
                                   2067 ;------------------------------------------------------------
                                   2068 ;data                      Allocated with name '_i2c_write_data_65536_98'
                                   2069 ;i                         Allocated with name '_i2c_write_i_65536_99'
                                   2070 ;------------------------------------------------------------
                                   2071 ;	8051_i2c_eeprom.c:346: int i2c_write(unsigned char data)
                                   2072 ;	-----------------------------------------
                                   2073 ;	 function i2c_write
                                   2074 ;	-----------------------------------------
      003917                       2075 _i2c_write:
      003917 E5 82            [12] 2076 	mov	a,dpl
      003919 90 04 14         [24] 2077 	mov	dptr,#_i2c_write_data_65536_98
      00391C F0               [24] 2078 	movx	@dptr,a
                                   2079 ;	8051_i2c_eeprom.c:350: for(i=0;i<=7;i++)
      00391D 7E 00            [12] 2080 	mov	r6,#0x00
      00391F 7F 00            [12] 2081 	mov	r7,#0x00
      003921                       2082 00104$:
                                   2083 ;	8051_i2c_eeprom.c:352: SDA = (data & 0x80) ? 1 : 0;    //msb first
      003921 90 04 14         [24] 2084 	mov	dptr,#_i2c_write_data_65536_98
      003924 E0               [24] 2085 	movx	a,@dptr
      003925 FD               [12] 2086 	mov	r5,a
      003926 23               [12] 2087 	rl	a
      003927 54 01            [12] 2088 	anl	a,#0x01
      003929 24 FF            [12] 2089 	add	a,#0xff
      00392B 92 94            [24] 2090 	mov	_P1_4,c
                                   2091 ;	8051_i2c_eeprom.c:353: i2c_delay();        // Setup time for data
      00392D C0 07            [24] 2092 	push	ar7
      00392F C0 06            [24] 2093 	push	ar6
      003931 C0 05            [24] 2094 	push	ar5
      003933 12 3A 26         [24] 2095 	lcall	_i2c_delay
                                   2096 ;	8051_i2c_eeprom.c:354: SCL=1;
                                   2097 ;	assignBit
      003936 D2 93            [12] 2098 	setb	_P1_3
                                   2099 ;	8051_i2c_eeprom.c:355: i2c_delay();        // Hold time for clock
      003938 12 3A 26         [24] 2100 	lcall	_i2c_delay
      00393B D0 05            [24] 2101 	pop	ar5
      00393D D0 06            [24] 2102 	pop	ar6
      00393F D0 07            [24] 2103 	pop	ar7
                                   2104 ;	8051_i2c_eeprom.c:356: SCL=0;
                                   2105 ;	assignBit
      003941 C2 93            [12] 2106 	clr	_P1_3
                                   2107 ;	8051_i2c_eeprom.c:357: data = data << 1;
      003943 ED               [12] 2108 	mov	a,r5
      003944 2D               [12] 2109 	add	a,r5
      003945 90 04 14         [24] 2110 	mov	dptr,#_i2c_write_data_65536_98
      003948 F0               [24] 2111 	movx	@dptr,a
                                   2112 ;	8051_i2c_eeprom.c:350: for(i=0;i<=7;i++)
      003949 0E               [12] 2113 	inc	r6
      00394A BE 00 01         [24] 2114 	cjne	r6,#0x00,00121$
      00394D 0F               [12] 2115 	inc	r7
      00394E                       2116 00121$:
      00394E C3               [12] 2117 	clr	c
      00394F 74 07            [12] 2118 	mov	a,#0x07
      003951 9E               [12] 2119 	subb	a,r6
      003952 E4               [12] 2120 	clr	a
      003953 9F               [12] 2121 	subb	a,r7
      003954 50 CB            [24] 2122 	jnc	00104$
                                   2123 ;	8051_i2c_eeprom.c:361: SDA = 1;            // Release SDA for slave
                                   2124 ;	assignBit
      003956 D2 94            [12] 2125 	setb	_P1_4
                                   2126 ;	8051_i2c_eeprom.c:362: SCL = 1;            // 9th clock pulse for ACK
                                   2127 ;	assignBit
      003958 D2 93            [12] 2128 	setb	_P1_3
                                   2129 ;	8051_i2c_eeprom.c:363: i2c_delay();
      00395A 12 3A 26         [24] 2130 	lcall	_i2c_delay
                                   2131 ;	8051_i2c_eeprom.c:364: if(SDA == 1)        // If SDA is still high, no ACK received
      00395D 30 94 19         [24] 2132 	jnb	_P1_4,00103$
                                   2133 ;	8051_i2c_eeprom.c:367: printf("ACK DID NOT ARRIVE\n\r");
      003960 74 DF            [12] 2134 	mov	a,#___str_39
      003962 C0 E0            [24] 2135 	push	acc
      003964 74 50            [12] 2136 	mov	a,#(___str_39 >> 8)
      003966 C0 E0            [24] 2137 	push	acc
      003968 74 80            [12] 2138 	mov	a,#0x80
      00396A C0 E0            [24] 2139 	push	acc
      00396C 12 3B 43         [24] 2140 	lcall	_printf
      00396F 15 81            [12] 2141 	dec	sp
      003971 15 81            [12] 2142 	dec	sp
      003973 15 81            [12] 2143 	dec	sp
                                   2144 ;	8051_i2c_eeprom.c:368: return 0;       // Error
      003975 90 00 00         [24] 2145 	mov	dptr,#0x0000
      003978 22               [24] 2146 	ret
      003979                       2147 00103$:
                                   2148 ;	8051_i2c_eeprom.c:370: SCL = 0;
                                   2149 ;	assignBit
      003979 C2 93            [12] 2150 	clr	_P1_3
                                   2151 ;	8051_i2c_eeprom.c:372: return 1;           // Success
      00397B 90 00 01         [24] 2152 	mov	dptr,#0x0001
                                   2153 ;	8051_i2c_eeprom.c:374: }
      00397E 22               [24] 2154 	ret
                                   2155 ;------------------------------------------------------------
                                   2156 ;Allocation info for local variables in function 'i2c_read'
                                   2157 ;------------------------------------------------------------
                                   2158 ;ACK                       Allocated with name '_i2c_read_ACK_65536_103'
                                   2159 ;buff                      Allocated with name '_i2c_read_buff_65536_104'
                                   2160 ;i                         Allocated with name '_i2c_read_i_131072_105'
                                   2161 ;------------------------------------------------------------
                                   2162 ;	8051_i2c_eeprom.c:375: int i2c_read(int ACK)
                                   2163 ;	-----------------------------------------
                                   2164 ;	 function i2c_read
                                   2165 ;	-----------------------------------------
      00397F                       2166 _i2c_read:
      00397F AF 83            [24] 2167 	mov	r7,dph
      003981 E5 82            [12] 2168 	mov	a,dpl
      003983 90 04 15         [24] 2169 	mov	dptr,#_i2c_read_ACK_65536_103
      003986 F0               [24] 2170 	movx	@dptr,a
      003987 EF               [12] 2171 	mov	a,r7
      003988 A3               [24] 2172 	inc	dptr
      003989 F0               [24] 2173 	movx	@dptr,a
                                   2174 ;	8051_i2c_eeprom.c:377: unsigned char buff=0;
      00398A 90 04 17         [24] 2175 	mov	dptr,#_i2c_read_buff_65536_104
      00398D E4               [12] 2176 	clr	a
      00398E F0               [24] 2177 	movx	@dptr,a
                                   2178 ;	8051_i2c_eeprom.c:378: SCL = 0;
                                   2179 ;	assignBit
      00398F C2 93            [12] 2180 	clr	_P1_3
                                   2181 ;	8051_i2c_eeprom.c:379: for(int i=0;i<8;i++)
      003991 7E 00            [12] 2182 	mov	r6,#0x00
      003993 7F 00            [12] 2183 	mov	r7,#0x00
      003995                       2184 00103$:
      003995 C3               [12] 2185 	clr	c
      003996 EE               [12] 2186 	mov	a,r6
      003997 94 08            [12] 2187 	subb	a,#0x08
      003999 EF               [12] 2188 	mov	a,r7
      00399A 64 80            [12] 2189 	xrl	a,#0x80
      00399C 94 80            [12] 2190 	subb	a,#0x80
      00399E 50 40            [24] 2191 	jnc	00101$
                                   2192 ;	8051_i2c_eeprom.c:381: SCL = 1;
                                   2193 ;	assignBit
      0039A0 D2 93            [12] 2194 	setb	_P1_3
                                   2195 ;	8051_i2c_eeprom.c:382: i2c_delay();
      0039A2 C0 07            [24] 2196 	push	ar7
      0039A4 C0 06            [24] 2197 	push	ar6
      0039A6 12 3A 26         [24] 2198 	lcall	_i2c_delay
      0039A9 D0 06            [24] 2199 	pop	ar6
      0039AB D0 07            [24] 2200 	pop	ar7
                                   2201 ;	8051_i2c_eeprom.c:383: buff |= (SDA << (7 - i));
      0039AD A2 94            [12] 2202 	mov	c,_P1_4
      0039AF E4               [12] 2203 	clr	a
      0039B0 33               [12] 2204 	rlc	a
      0039B1 FD               [12] 2205 	mov	r5,a
      0039B2 8E 04            [24] 2206 	mov	ar4,r6
      0039B4 74 07            [12] 2207 	mov	a,#0x07
      0039B6 C3               [12] 2208 	clr	c
      0039B7 9C               [12] 2209 	subb	a,r4
      0039B8 FC               [12] 2210 	mov	r4,a
      0039B9 8C F0            [24] 2211 	mov	b,r4
      0039BB 05 F0            [12] 2212 	inc	b
      0039BD ED               [12] 2213 	mov	a,r5
      0039BE 80 02            [24] 2214 	sjmp	00119$
      0039C0                       2215 00117$:
      0039C0 25 E0            [12] 2216 	add	a,acc
      0039C2                       2217 00119$:
      0039C2 D5 F0 FB         [24] 2218 	djnz	b,00117$
      0039C5 FC               [12] 2219 	mov	r4,a
      0039C6 90 04 17         [24] 2220 	mov	dptr,#_i2c_read_buff_65536_104
      0039C9 E0               [24] 2221 	movx	a,@dptr
      0039CA 4C               [12] 2222 	orl	a,r4
      0039CB F0               [24] 2223 	movx	@dptr,a
                                   2224 ;	8051_i2c_eeprom.c:384: i2c_delay();
      0039CC C0 07            [24] 2225 	push	ar7
      0039CE C0 06            [24] 2226 	push	ar6
      0039D0 12 3A 26         [24] 2227 	lcall	_i2c_delay
      0039D3 D0 06            [24] 2228 	pop	ar6
      0039D5 D0 07            [24] 2229 	pop	ar7
                                   2230 ;	8051_i2c_eeprom.c:385: SCL=0;
                                   2231 ;	assignBit
      0039D7 C2 93            [12] 2232 	clr	_P1_3
                                   2233 ;	8051_i2c_eeprom.c:379: for(int i=0;i<8;i++)
      0039D9 0E               [12] 2234 	inc	r6
      0039DA BE 00 B8         [24] 2235 	cjne	r6,#0x00,00103$
      0039DD 0F               [12] 2236 	inc	r7
      0039DE 80 B5            [24] 2237 	sjmp	00103$
      0039E0                       2238 00101$:
                                   2239 ;	8051_i2c_eeprom.c:389: SDA = !ACK;         // ACK = 0, NACK = 1
      0039E0 90 04 15         [24] 2240 	mov	dptr,#_i2c_read_ACK_65536_103
      0039E3 E0               [24] 2241 	movx	a,@dptr
      0039E4 FE               [12] 2242 	mov	r6,a
      0039E5 A3               [24] 2243 	inc	dptr
      0039E6 E0               [24] 2244 	movx	a,@dptr
      0039E7 4E               [12] 2245 	orl	a,r6
      0039E8 B4 01 00         [24] 2246 	cjne	a,#0x01,00121$
      0039EB                       2247 00121$:
      0039EB E4               [12] 2248 	clr	a
      0039EC 33               [12] 2249 	rlc	a
      0039ED 24 FF            [12] 2250 	add	a,#0xff
      0039EF 92 94            [24] 2251 	mov	_P1_4,c
                                   2252 ;	8051_i2c_eeprom.c:390: SCL = 1;
                                   2253 ;	assignBit
      0039F1 D2 93            [12] 2254 	setb	_P1_3
                                   2255 ;	8051_i2c_eeprom.c:391: i2c_delay();
      0039F3 12 3A 26         [24] 2256 	lcall	_i2c_delay
                                   2257 ;	8051_i2c_eeprom.c:392: SCL = 0;
                                   2258 ;	assignBit
      0039F6 C2 93            [12] 2259 	clr	_P1_3
                                   2260 ;	8051_i2c_eeprom.c:394: return buff;
      0039F8 90 04 17         [24] 2261 	mov	dptr,#_i2c_read_buff_65536_104
      0039FB E0               [24] 2262 	movx	a,@dptr
      0039FC FF               [12] 2263 	mov	r7,a
      0039FD 7E 00            [12] 2264 	mov	r6,#0x00
      0039FF 8F 82            [24] 2265 	mov	dpl,r7
      003A01 8E 83            [24] 2266 	mov	dph,r6
                                   2267 ;	8051_i2c_eeprom.c:395: }
      003A03 22               [24] 2268 	ret
                                   2269 ;------------------------------------------------------------
                                   2270 ;Allocation info for local variables in function 'i2c_start'
                                   2271 ;------------------------------------------------------------
                                   2272 ;	8051_i2c_eeprom.c:396: void i2c_start(void)
                                   2273 ;	-----------------------------------------
                                   2274 ;	 function i2c_start
                                   2275 ;	-----------------------------------------
      003A04                       2276 _i2c_start:
                                   2277 ;	8051_i2c_eeprom.c:398: i2c_delay();
      003A04 12 3A 26         [24] 2278 	lcall	_i2c_delay
                                   2279 ;	8051_i2c_eeprom.c:399: SDA = 1;
                                   2280 ;	assignBit
      003A07 D2 94            [12] 2281 	setb	_P1_4
                                   2282 ;	8051_i2c_eeprom.c:400: i2c_delay();
      003A09 12 3A 26         [24] 2283 	lcall	_i2c_delay
                                   2284 ;	8051_i2c_eeprom.c:401: SCL = 1;
                                   2285 ;	assignBit
      003A0C D2 93            [12] 2286 	setb	_P1_3
                                   2287 ;	8051_i2c_eeprom.c:402: i2c_delay();
      003A0E 12 3A 26         [24] 2288 	lcall	_i2c_delay
                                   2289 ;	8051_i2c_eeprom.c:403: SDA = 0;
                                   2290 ;	assignBit
      003A11 C2 94            [12] 2291 	clr	_P1_4
                                   2292 ;	8051_i2c_eeprom.c:404: i2c_delay();
      003A13 12 3A 26         [24] 2293 	lcall	_i2c_delay
                                   2294 ;	8051_i2c_eeprom.c:405: SCL = 0;
                                   2295 ;	assignBit
      003A16 C2 93            [12] 2296 	clr	_P1_3
                                   2297 ;	8051_i2c_eeprom.c:406: }
      003A18 22               [24] 2298 	ret
                                   2299 ;------------------------------------------------------------
                                   2300 ;Allocation info for local variables in function 'i2c_stop'
                                   2301 ;------------------------------------------------------------
                                   2302 ;	8051_i2c_eeprom.c:408: void i2c_stop(void)
                                   2303 ;	-----------------------------------------
                                   2304 ;	 function i2c_stop
                                   2305 ;	-----------------------------------------
      003A19                       2306 _i2c_stop:
                                   2307 ;	8051_i2c_eeprom.c:410: SDA = 0;
                                   2308 ;	assignBit
      003A19 C2 94            [12] 2309 	clr	_P1_4
                                   2310 ;	8051_i2c_eeprom.c:411: i2c_delay();
      003A1B 12 3A 26         [24] 2311 	lcall	_i2c_delay
                                   2312 ;	8051_i2c_eeprom.c:412: SCL = 1;
                                   2313 ;	assignBit
      003A1E D2 93            [12] 2314 	setb	_P1_3
                                   2315 ;	8051_i2c_eeprom.c:413: i2c_delay();
      003A20 12 3A 26         [24] 2316 	lcall	_i2c_delay
                                   2317 ;	8051_i2c_eeprom.c:414: SDA = 1; 
                                   2318 ;	assignBit
      003A23 D2 94            [12] 2319 	setb	_P1_4
                                   2320 ;	8051_i2c_eeprom.c:415: }
      003A25 22               [24] 2321 	ret
                                   2322 ;------------------------------------------------------------
                                   2323 ;Allocation info for local variables in function 'i2c_delay'
                                   2324 ;------------------------------------------------------------
                                   2325 ;i                         Allocated with name '_i2c_delay_i_131072_112'
                                   2326 ;------------------------------------------------------------
                                   2327 ;	8051_i2c_eeprom.c:417: void i2c_delay() 
                                   2328 ;	-----------------------------------------
                                   2329 ;	 function i2c_delay
                                   2330 ;	-----------------------------------------
      003A26                       2331 _i2c_delay:
                                   2332 ;	8051_i2c_eeprom.c:425: for(int i = 0; i<500; i++);
      003A26 7E 00            [12] 2333 	mov	r6,#0x00
      003A28 7F 00            [12] 2334 	mov	r7,#0x00
      003A2A                       2335 00103$:
      003A2A C3               [12] 2336 	clr	c
      003A2B EE               [12] 2337 	mov	a,r6
      003A2C 94 F4            [12] 2338 	subb	a,#0xf4
      003A2E EF               [12] 2339 	mov	a,r7
      003A2F 64 80            [12] 2340 	xrl	a,#0x80
      003A31 94 81            [12] 2341 	subb	a,#0x81
      003A33 50 07            [24] 2342 	jnc	00105$
      003A35 0E               [12] 2343 	inc	r6
      003A36 BE 00 F1         [24] 2344 	cjne	r6,#0x00,00103$
      003A39 0F               [12] 2345 	inc	r7
      003A3A 80 EE            [24] 2346 	sjmp	00103$
      003A3C                       2347 00105$:
                                   2348 ;	8051_i2c_eeprom.c:426: }
      003A3C 22               [24] 2349 	ret
                                   2350 ;------------------------------------------------------------
                                   2351 ;Allocation info for local variables in function 'test_function'
                                   2352 ;------------------------------------------------------------
                                   2353 ;test_data                 Allocated with name '_test_function_test_data_65537_114'
                                   2354 ;address                   Allocated with name '_test_function_address_65537_114'
                                   2355 ;i                         Allocated with name '_test_function_i_131073_115'
                                   2356 ;read_data                 Allocated with name '_test_function_read_data_65538_117'
                                   2357 ;------------------------------------------------------------
                                   2358 ;	8051_i2c_eeprom.c:428: void test_function()
                                   2359 ;	-----------------------------------------
                                   2360 ;	 function test_function
                                   2361 ;	-----------------------------------------
      003A3D                       2362 _test_function:
                                   2363 ;	8051_i2c_eeprom.c:430: i2c_start();
      003A3D 12 3A 04         [24] 2364 	lcall	_i2c_start
                                   2365 ;	8051_i2c_eeprom.c:431: i2c_delay();
      003A40 12 3A 26         [24] 2366 	lcall	_i2c_delay
                                   2367 ;	8051_i2c_eeprom.c:437: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      003A43 74 02            [12] 2368 	mov	a,#0x02
      003A45 C0 E0            [24] 2369 	push	acc
      003A47 E4               [12] 2370 	clr	a
      003A48 C0 E0            [24] 2371 	push	acc
      003A4A 74 26            [12] 2372 	mov	a,#0x26
      003A4C C0 E0            [24] 2373 	push	acc
      003A4E E4               [12] 2374 	clr	a
      003A4F C0 E0            [24] 2375 	push	acc
      003A51 74 F4            [12] 2376 	mov	a,#___str_40
      003A53 C0 E0            [24] 2377 	push	acc
      003A55 74 50            [12] 2378 	mov	a,#(___str_40 >> 8)
      003A57 C0 E0            [24] 2379 	push	acc
      003A59 74 80            [12] 2380 	mov	a,#0x80
      003A5B C0 E0            [24] 2381 	push	acc
      003A5D 12 3B 43         [24] 2382 	lcall	_printf
      003A60 E5 81            [12] 2383 	mov	a,sp
      003A62 24 F9            [12] 2384 	add	a,#0xf9
      003A64 F5 81            [12] 2385 	mov	sp,a
                                   2386 ;	8051_i2c_eeprom.c:438: eeprom_write(address, test_data);
      003A66 90 04 0F         [24] 2387 	mov	dptr,#_eeprom_write_PARM_2
      003A69 74 26            [12] 2388 	mov	a,#0x26
      003A6B F0               [24] 2389 	movx	@dptr,a
      003A6C 90 00 02         [24] 2390 	mov	dptr,#0x0002
      003A6F 12 36 60         [24] 2391 	lcall	_eeprom_write
                                   2392 ;	8051_i2c_eeprom.c:439: i2c_stop();
      003A72 12 3A 19         [24] 2393 	lcall	_i2c_stop
                                   2394 ;	8051_i2c_eeprom.c:441: for(int i = 0; i<100; i++)
      003A75 7E 00            [12] 2395 	mov	r6,#0x00
      003A77 7F 00            [12] 2396 	mov	r7,#0x00
      003A79                       2397 00106$:
      003A79 C3               [12] 2398 	clr	c
      003A7A EE               [12] 2399 	mov	a,r6
      003A7B 94 64            [12] 2400 	subb	a,#0x64
      003A7D EF               [12] 2401 	mov	a,r7
      003A7E 64 80            [12] 2402 	xrl	a,#0x80
      003A80 94 80            [12] 2403 	subb	a,#0x80
      003A82 50 12            [24] 2404 	jnc	00101$
                                   2405 ;	8051_i2c_eeprom.c:443: i2c_delay();
      003A84 C0 07            [24] 2406 	push	ar7
      003A86 C0 06            [24] 2407 	push	ar6
      003A88 12 3A 26         [24] 2408 	lcall	_i2c_delay
      003A8B D0 06            [24] 2409 	pop	ar6
      003A8D D0 07            [24] 2410 	pop	ar7
                                   2411 ;	8051_i2c_eeprom.c:441: for(int i = 0; i<100; i++)
      003A8F 0E               [12] 2412 	inc	r6
      003A90 BE 00 E6         [24] 2413 	cjne	r6,#0x00,00106$
      003A93 0F               [12] 2414 	inc	r7
      003A94 80 E3            [24] 2415 	sjmp	00106$
      003A96                       2416 00101$:
                                   2417 ;	8051_i2c_eeprom.c:447: unsigned char read_data = eeprom_read(address);
      003A96 90 00 02         [24] 2418 	mov	dptr,#0x0002
      003A99 12 37 C3         [24] 2419 	lcall	_eeprom_read
      003A9C AE 82            [24] 2420 	mov	r6,dpl
                                   2421 ;	8051_i2c_eeprom.c:448: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      003A9E 8E 05            [24] 2422 	mov	ar5,r6
      003AA0 7F 00            [12] 2423 	mov	r7,#0x00
      003AA2 C0 06            [24] 2424 	push	ar6
      003AA4 C0 05            [24] 2425 	push	ar5
      003AA6 C0 07            [24] 2426 	push	ar7
      003AA8 74 02            [12] 2427 	mov	a,#0x02
      003AAA C0 E0            [24] 2428 	push	acc
      003AAC E4               [12] 2429 	clr	a
      003AAD C0 E0            [24] 2430 	push	acc
      003AAF 74 1C            [12] 2431 	mov	a,#___str_41
      003AB1 C0 E0            [24] 2432 	push	acc
      003AB3 74 51            [12] 2433 	mov	a,#(___str_41 >> 8)
      003AB5 C0 E0            [24] 2434 	push	acc
      003AB7 74 80            [12] 2435 	mov	a,#0x80
      003AB9 C0 E0            [24] 2436 	push	acc
      003ABB 12 3B 43         [24] 2437 	lcall	_printf
      003ABE E5 81            [12] 2438 	mov	a,sp
      003AC0 24 F9            [12] 2439 	add	a,#0xf9
      003AC2 F5 81            [12] 2440 	mov	sp,a
      003AC4 D0 06            [24] 2441 	pop	ar6
                                   2442 ;	8051_i2c_eeprom.c:451: if(read_data == test_data) {
      003AC6 BE 26 16         [24] 2443 	cjne	r6,#0x26,00103$
                                   2444 ;	8051_i2c_eeprom.c:452: printf("MATCH - Write/Read successful!\n\r");
      003AC9 74 44            [12] 2445 	mov	a,#___str_42
      003ACB C0 E0            [24] 2446 	push	acc
      003ACD 74 51            [12] 2447 	mov	a,#(___str_42 >> 8)
      003ACF C0 E0            [24] 2448 	push	acc
      003AD1 74 80            [12] 2449 	mov	a,#0x80
      003AD3 C0 E0            [24] 2450 	push	acc
      003AD5 12 3B 43         [24] 2451 	lcall	_printf
      003AD8 15 81            [12] 2452 	dec	sp
      003ADA 15 81            [12] 2453 	dec	sp
      003ADC 15 81            [12] 2454 	dec	sp
      003ADE 22               [24] 2455 	ret
      003ADF                       2456 00103$:
                                   2457 ;	8051_i2c_eeprom.c:454: printf("ERROR - Data mismatch!\n\r");
      003ADF 74 65            [12] 2458 	mov	a,#___str_43
      003AE1 C0 E0            [24] 2459 	push	acc
      003AE3 74 51            [12] 2460 	mov	a,#(___str_43 >> 8)
      003AE5 C0 E0            [24] 2461 	push	acc
      003AE7 74 80            [12] 2462 	mov	a,#0x80
      003AE9 C0 E0            [24] 2463 	push	acc
      003AEB 12 3B 43         [24] 2464 	lcall	_printf
      003AEE 15 81            [12] 2465 	dec	sp
      003AF0 15 81            [12] 2466 	dec	sp
      003AF2 15 81            [12] 2467 	dec	sp
                                   2468 ;	8051_i2c_eeprom.c:458: }
      003AF4 22               [24] 2469 	ret
                                   2470 	.area CSEG    (CODE)
                                   2471 	.area CONST   (CODE)
                                   2472 	.area CONST   (CODE)
      0045A5                       2473 ___str_0:
      0045A5 0A                    2474 	.db 0x0a
      0045A6 E2                    2475 	.db 0xe2
      0045A7 95                    2476 	.db 0x95
      0045A8 94                    2477 	.db 0x94
      0045A9 E2                    2478 	.db 0xe2
      0045AA 95                    2479 	.db 0x95
      0045AB 90                    2480 	.db 0x90
      0045AC E2                    2481 	.db 0xe2
      0045AD 95                    2482 	.db 0x95
      0045AE 90                    2483 	.db 0x90
      0045AF E2                    2484 	.db 0xe2
      0045B0 95                    2485 	.db 0x95
      0045B1 90                    2486 	.db 0x90
      0045B2 E2                    2487 	.db 0xe2
      0045B3 95                    2488 	.db 0x95
      0045B4 90                    2489 	.db 0x90
      0045B5 E2                    2490 	.db 0xe2
      0045B6 95                    2491 	.db 0x95
      0045B7 90                    2492 	.db 0x90
      0045B8 E2                    2493 	.db 0xe2
      0045B9 95                    2494 	.db 0x95
      0045BA 90                    2495 	.db 0x90
      0045BB E2                    2496 	.db 0xe2
      0045BC 95                    2497 	.db 0x95
      0045BD 90                    2498 	.db 0x90
      0045BE E2                    2499 	.db 0xe2
      0045BF 95                    2500 	.db 0x95
      0045C0 90                    2501 	.db 0x90
      0045C1 E2                    2502 	.db 0xe2
      0045C2 95                    2503 	.db 0x95
      0045C3 90                    2504 	.db 0x90
      0045C4 E2                    2505 	.db 0xe2
      0045C5 95                    2506 	.db 0x95
      0045C6 90                    2507 	.db 0x90
      0045C7 E2                    2508 	.db 0xe2
      0045C8 95                    2509 	.db 0x95
      0045C9 90                    2510 	.db 0x90
      0045CA E2                    2511 	.db 0xe2
      0045CB 95                    2512 	.db 0x95
      0045CC 90                    2513 	.db 0x90
      0045CD E2                    2514 	.db 0xe2
      0045CE 95                    2515 	.db 0x95
      0045CF 90                    2516 	.db 0x90
      0045D0 E2                    2517 	.db 0xe2
      0045D1 95                    2518 	.db 0x95
      0045D2 90                    2519 	.db 0x90
      0045D3 E2                    2520 	.db 0xe2
      0045D4 95                    2521 	.db 0x95
      0045D5 90                    2522 	.db 0x90
      0045D6 E2                    2523 	.db 0xe2
      0045D7 95                    2524 	.db 0x95
      0045D8 90                    2525 	.db 0x90
      0045D9 E2                    2526 	.db 0xe2
      0045DA 95                    2527 	.db 0x95
      0045DB 90                    2528 	.db 0x90
      0045DC E2                    2529 	.db 0xe2
      0045DD 95                    2530 	.db 0x95
      0045DE 90                    2531 	.db 0x90
      0045DF E2                    2532 	.db 0xe2
      0045E0 95                    2533 	.db 0x95
      0045E1 90                    2534 	.db 0x90
      0045E2 E2                    2535 	.db 0xe2
      0045E3 95                    2536 	.db 0x95
      0045E4 90                    2537 	.db 0x90
      0045E5 E2                    2538 	.db 0xe2
      0045E6 95                    2539 	.db 0x95
      0045E7 90                    2540 	.db 0x90
      0045E8 E2                    2541 	.db 0xe2
      0045E9 95                    2542 	.db 0x95
      0045EA 90                    2543 	.db 0x90
      0045EB E2                    2544 	.db 0xe2
      0045EC 95                    2545 	.db 0x95
      0045ED 90                    2546 	.db 0x90
      0045EE E2                    2547 	.db 0xe2
      0045EF 95                    2548 	.db 0x95
      0045F0 90                    2549 	.db 0x90
      0045F1 E2                    2550 	.db 0xe2
      0045F2 95                    2551 	.db 0x95
      0045F3 90                    2552 	.db 0x90
      0045F4 E2                    2553 	.db 0xe2
      0045F5 95                    2554 	.db 0x95
      0045F6 90                    2555 	.db 0x90
      0045F7 E2                    2556 	.db 0xe2
      0045F8 95                    2557 	.db 0x95
      0045F9 90                    2558 	.db 0x90
      0045FA E2                    2559 	.db 0xe2
      0045FB 95                    2560 	.db 0x95
      0045FC 90                    2561 	.db 0x90
      0045FD E2                    2562 	.db 0xe2
      0045FE 95                    2563 	.db 0x95
      0045FF 90                    2564 	.db 0x90
      004600 E2                    2565 	.db 0xe2
      004601 95                    2566 	.db 0x95
      004602 90                    2567 	.db 0x90
      004603 E2                    2568 	.db 0xe2
      004604 95                    2569 	.db 0x95
      004605 90                    2570 	.db 0x90
      004606 E2                    2571 	.db 0xe2
      004607 95                    2572 	.db 0x95
      004608 90                    2573 	.db 0x90
      004609 E2                    2574 	.db 0xe2
      00460A 95                    2575 	.db 0x95
      00460B 90                    2576 	.db 0x90
      00460C E2                    2577 	.db 0xe2
      00460D 95                    2578 	.db 0x95
      00460E 90                    2579 	.db 0x90
      00460F E2                    2580 	.db 0xe2
      004610 95                    2581 	.db 0x95
      004611 90                    2582 	.db 0x90
      004612 E2                    2583 	.db 0xe2
      004613 95                    2584 	.db 0x95
      004614 90                    2585 	.db 0x90
      004615 E2                    2586 	.db 0xe2
      004616 95                    2587 	.db 0x95
      004617 90                    2588 	.db 0x90
      004618 E2                    2589 	.db 0xe2
      004619 95                    2590 	.db 0x95
      00461A 90                    2591 	.db 0x90
      00461B E2                    2592 	.db 0xe2
      00461C 95                    2593 	.db 0x95
      00461D 90                    2594 	.db 0x90
      00461E E2                    2595 	.db 0xe2
      00461F 95                    2596 	.db 0x95
      004620 90                    2597 	.db 0x90
      004621 E2                    2598 	.db 0xe2
      004622 95                    2599 	.db 0x95
      004623 90                    2600 	.db 0x90
      004624 E2                    2601 	.db 0xe2
      004625 95                    2602 	.db 0x95
      004626 90                    2603 	.db 0x90
      004627 E2                    2604 	.db 0xe2
      004628 95                    2605 	.db 0x95
      004629 90                    2606 	.db 0x90
      00462A E2                    2607 	.db 0xe2
      00462B 95                    2608 	.db 0x95
      00462C 90                    2609 	.db 0x90
      00462D E2                    2610 	.db 0xe2
      00462E 95                    2611 	.db 0x95
      00462F 90                    2612 	.db 0x90
      004630 E2                    2613 	.db 0xe2
      004631 95                    2614 	.db 0x95
      004632 90                    2615 	.db 0x90
      004633 E2                    2616 	.db 0xe2
      004634 95                    2617 	.db 0x95
      004635 90                    2618 	.db 0x90
      004636 E2                    2619 	.db 0xe2
      004637 95                    2620 	.db 0x95
      004638 90                    2621 	.db 0x90
      004639 E2                    2622 	.db 0xe2
      00463A 95                    2623 	.db 0x95
      00463B 90                    2624 	.db 0x90
      00463C E2                    2625 	.db 0xe2
      00463D 95                    2626 	.db 0x95
      00463E 90                    2627 	.db 0x90
      00463F E2                    2628 	.db 0xe2
      004640 95                    2629 	.db 0x95
      004641 90                    2630 	.db 0x90
      004642 E2                    2631 	.db 0xe2
      004643 95                    2632 	.db 0x95
      004644 90                    2633 	.db 0x90
      004645 E2                    2634 	.db 0xe2
      004646 95                    2635 	.db 0x95
      004647 90                    2636 	.db 0x90
      004648 E2                    2637 	.db 0xe2
      004649 95                    2638 	.db 0x95
      00464A 90                    2639 	.db 0x90
      00464B E2                    2640 	.db 0xe2
      00464C 95                    2641 	.db 0x95
      00464D 90                    2642 	.db 0x90
      00464E E2                    2643 	.db 0xe2
      00464F 95                    2644 	.db 0x95
      004650 90                    2645 	.db 0x90
      004651 E2                    2646 	.db 0xe2
      004652 95                    2647 	.db 0x95
      004653 97                    2648 	.db 0x97
      004654 0A                    2649 	.db 0x0a
      004655 0D                    2650 	.db 0x0d
      004656 00                    2651 	.db 0x00
                                   2652 	.area CSEG    (CODE)
                                   2653 	.area CONST   (CODE)
      004657                       2654 ___str_1:
      004657 E2                    2655 	.db 0xe2
      004658 95                    2656 	.db 0x95
      004659 91                    2657 	.db 0x91
      00465A 20 20 20 20 20 20 20  2658 	.ascii "           I2C Memory Management System v1.0            "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
      004692 E2                    2659 	.db 0xe2
      004693 95                    2660 	.db 0x95
      004694 91                    2661 	.db 0x91
      004695 0A                    2662 	.db 0x0a
      004696 0D                    2663 	.db 0x0d
      004697 00                    2664 	.db 0x00
                                   2665 	.area CSEG    (CODE)
                                   2666 	.area CONST   (CODE)
      004698                       2667 ___str_2:
      004698 E2                    2668 	.db 0xe2
      004699 95                    2669 	.db 0x95
      00469A 9A                    2670 	.db 0x9a
      00469B E2                    2671 	.db 0xe2
      00469C 95                    2672 	.db 0x95
      00469D 90                    2673 	.db 0x90
      00469E E2                    2674 	.db 0xe2
      00469F 95                    2675 	.db 0x95
      0046A0 90                    2676 	.db 0x90
      0046A1 E2                    2677 	.db 0xe2
      0046A2 95                    2678 	.db 0x95
      0046A3 90                    2679 	.db 0x90
      0046A4 E2                    2680 	.db 0xe2
      0046A5 95                    2681 	.db 0x95
      0046A6 90                    2682 	.db 0x90
      0046A7 E2                    2683 	.db 0xe2
      0046A8 95                    2684 	.db 0x95
      0046A9 90                    2685 	.db 0x90
      0046AA E2                    2686 	.db 0xe2
      0046AB 95                    2687 	.db 0x95
      0046AC 90                    2688 	.db 0x90
      0046AD E2                    2689 	.db 0xe2
      0046AE 95                    2690 	.db 0x95
      0046AF 90                    2691 	.db 0x90
      0046B0 E2                    2692 	.db 0xe2
      0046B1 95                    2693 	.db 0x95
      0046B2 90                    2694 	.db 0x90
      0046B3 E2                    2695 	.db 0xe2
      0046B4 95                    2696 	.db 0x95
      0046B5 90                    2697 	.db 0x90
      0046B6 E2                    2698 	.db 0xe2
      0046B7 95                    2699 	.db 0x95
      0046B8 90                    2700 	.db 0x90
      0046B9 E2                    2701 	.db 0xe2
      0046BA 95                    2702 	.db 0x95
      0046BB 90                    2703 	.db 0x90
      0046BC E2                    2704 	.db 0xe2
      0046BD 95                    2705 	.db 0x95
      0046BE 90                    2706 	.db 0x90
      0046BF E2                    2707 	.db 0xe2
      0046C0 95                    2708 	.db 0x95
      0046C1 90                    2709 	.db 0x90
      0046C2 E2                    2710 	.db 0xe2
      0046C3 95                    2711 	.db 0x95
      0046C4 90                    2712 	.db 0x90
      0046C5 E2                    2713 	.db 0xe2
      0046C6 95                    2714 	.db 0x95
      0046C7 90                    2715 	.db 0x90
      0046C8 E2                    2716 	.db 0xe2
      0046C9 95                    2717 	.db 0x95
      0046CA 90                    2718 	.db 0x90
      0046CB E2                    2719 	.db 0xe2
      0046CC 95                    2720 	.db 0x95
      0046CD 90                    2721 	.db 0x90
      0046CE E2                    2722 	.db 0xe2
      0046CF 95                    2723 	.db 0x95
      0046D0 90                    2724 	.db 0x90
      0046D1 E2                    2725 	.db 0xe2
      0046D2 95                    2726 	.db 0x95
      0046D3 90                    2727 	.db 0x90
      0046D4 E2                    2728 	.db 0xe2
      0046D5 95                    2729 	.db 0x95
      0046D6 90                    2730 	.db 0x90
      0046D7 E2                    2731 	.db 0xe2
      0046D8 95                    2732 	.db 0x95
      0046D9 90                    2733 	.db 0x90
      0046DA E2                    2734 	.db 0xe2
      0046DB 95                    2735 	.db 0x95
      0046DC 90                    2736 	.db 0x90
      0046DD E2                    2737 	.db 0xe2
      0046DE 95                    2738 	.db 0x95
      0046DF 90                    2739 	.db 0x90
      0046E0 E2                    2740 	.db 0xe2
      0046E1 95                    2741 	.db 0x95
      0046E2 90                    2742 	.db 0x90
      0046E3 E2                    2743 	.db 0xe2
      0046E4 95                    2744 	.db 0x95
      0046E5 90                    2745 	.db 0x90
      0046E6 E2                    2746 	.db 0xe2
      0046E7 95                    2747 	.db 0x95
      0046E8 90                    2748 	.db 0x90
      0046E9 E2                    2749 	.db 0xe2
      0046EA 95                    2750 	.db 0x95
      0046EB 90                    2751 	.db 0x90
      0046EC E2                    2752 	.db 0xe2
      0046ED 95                    2753 	.db 0x95
      0046EE 90                    2754 	.db 0x90
      0046EF E2                    2755 	.db 0xe2
      0046F0 95                    2756 	.db 0x95
      0046F1 90                    2757 	.db 0x90
      0046F2 E2                    2758 	.db 0xe2
      0046F3 95                    2759 	.db 0x95
      0046F4 90                    2760 	.db 0x90
      0046F5 E2                    2761 	.db 0xe2
      0046F6 95                    2762 	.db 0x95
      0046F7 90                    2763 	.db 0x90
      0046F8 E2                    2764 	.db 0xe2
      0046F9 95                    2765 	.db 0x95
      0046FA 90                    2766 	.db 0x90
      0046FB E2                    2767 	.db 0xe2
      0046FC 95                    2768 	.db 0x95
      0046FD 90                    2769 	.db 0x90
      0046FE E2                    2770 	.db 0xe2
      0046FF 95                    2771 	.db 0x95
      004700 90                    2772 	.db 0x90
      004701 E2                    2773 	.db 0xe2
      004702 95                    2774 	.db 0x95
      004703 90                    2775 	.db 0x90
      004704 E2                    2776 	.db 0xe2
      004705 95                    2777 	.db 0x95
      004706 90                    2778 	.db 0x90
      004707 E2                    2779 	.db 0xe2
      004708 95                    2780 	.db 0x95
      004709 90                    2781 	.db 0x90
      00470A E2                    2782 	.db 0xe2
      00470B 95                    2783 	.db 0x95
      00470C 90                    2784 	.db 0x90
      00470D E2                    2785 	.db 0xe2
      00470E 95                    2786 	.db 0x95
      00470F 90                    2787 	.db 0x90
      004710 E2                    2788 	.db 0xe2
      004711 95                    2789 	.db 0x95
      004712 90                    2790 	.db 0x90
      004713 E2                    2791 	.db 0xe2
      004714 95                    2792 	.db 0x95
      004715 90                    2793 	.db 0x90
      004716 E2                    2794 	.db 0xe2
      004717 95                    2795 	.db 0x95
      004718 90                    2796 	.db 0x90
      004719 E2                    2797 	.db 0xe2
      00471A 95                    2798 	.db 0x95
      00471B 90                    2799 	.db 0x90
      00471C E2                    2800 	.db 0xe2
      00471D 95                    2801 	.db 0x95
      00471E 90                    2802 	.db 0x90
      00471F E2                    2803 	.db 0xe2
      004720 95                    2804 	.db 0x95
      004721 90                    2805 	.db 0x90
      004722 E2                    2806 	.db 0xe2
      004723 95                    2807 	.db 0x95
      004724 90                    2808 	.db 0x90
      004725 E2                    2809 	.db 0xe2
      004726 95                    2810 	.db 0x95
      004727 90                    2811 	.db 0x90
      004728 E2                    2812 	.db 0xe2
      004729 95                    2813 	.db 0x95
      00472A 90                    2814 	.db 0x90
      00472B E2                    2815 	.db 0xe2
      00472C 95                    2816 	.db 0x95
      00472D 90                    2817 	.db 0x90
      00472E E2                    2818 	.db 0xe2
      00472F 95                    2819 	.db 0x95
      004730 90                    2820 	.db 0x90
      004731 E2                    2821 	.db 0xe2
      004732 95                    2822 	.db 0x95
      004733 90                    2823 	.db 0x90
      004734 E2                    2824 	.db 0xe2
      004735 95                    2825 	.db 0x95
      004736 90                    2826 	.db 0x90
      004737 E2                    2827 	.db 0xe2
      004738 95                    2828 	.db 0x95
      004739 90                    2829 	.db 0x90
      00473A E2                    2830 	.db 0xe2
      00473B 95                    2831 	.db 0x95
      00473C 90                    2832 	.db 0x90
      00473D E2                    2833 	.db 0xe2
      00473E 95                    2834 	.db 0x95
      00473F 90                    2835 	.db 0x90
      004740 E2                    2836 	.db 0xe2
      004741 95                    2837 	.db 0x95
      004742 90                    2838 	.db 0x90
      004743 E2                    2839 	.db 0xe2
      004744 95                    2840 	.db 0x95
      004745 9D                    2841 	.db 0x9d
      004746 0A                    2842 	.db 0x0a
      004747 0D                    2843 	.db 0x0d
      004748 00                    2844 	.db 0x00
                                   2845 	.area CSEG    (CODE)
                                   2846 	.area CONST   (CODE)
      004749                       2847 ___str_3:
      004749 0A                    2848 	.db 0x0a
      00474A 0D                    2849 	.db 0x0d
      00474B E2                    2850 	.db 0xe2
      00474C 94                    2851 	.db 0x94
      00474D 8C                    2852 	.db 0x8c
      00474E E2                    2853 	.db 0xe2
      00474F 94                    2854 	.db 0x94
      004750 80                    2855 	.db 0x80
      004751 E2                    2856 	.db 0xe2
      004752 94                    2857 	.db 0x94
      004753 80                    2858 	.db 0x80
      004754 E2                    2859 	.db 0xe2
      004755 94                    2860 	.db 0x94
      004756 80                    2861 	.db 0x80
      004757 E2                    2862 	.db 0xe2
      004758 94                    2863 	.db 0x94
      004759 80                    2864 	.db 0x80
      00475A E2                    2865 	.db 0xe2
      00475B 94                    2866 	.db 0x94
      00475C 80                    2867 	.db 0x80
      00475D E2                    2868 	.db 0xe2
      00475E 94                    2869 	.db 0x94
      00475F 80                    2870 	.db 0x80
      004760 E2                    2871 	.db 0xe2
      004761 94                    2872 	.db 0x94
      004762 80                    2873 	.db 0x80
      004763 E2                    2874 	.db 0xe2
      004764 94                    2875 	.db 0x94
      004765 80                    2876 	.db 0x80
      004766 E2                    2877 	.db 0xe2
      004767 94                    2878 	.db 0x94
      004768 80                    2879 	.db 0x80
      004769 E2                    2880 	.db 0xe2
      00476A 94                    2881 	.db 0x94
      00476B 80                    2882 	.db 0x80
      00476C E2                    2883 	.db 0xe2
      00476D 94                    2884 	.db 0x94
      00476E 80                    2885 	.db 0x80
      00476F E2                    2886 	.db 0xe2
      004770 94                    2887 	.db 0x94
      004771 80                    2888 	.db 0x80
      004772 E2                    2889 	.db 0xe2
      004773 94                    2890 	.db 0x94
      004774 AC                    2891 	.db 0xac
      004775 E2                    2892 	.db 0xe2
      004776 94                    2893 	.db 0x94
      004777 80                    2894 	.db 0x80
      004778 E2                    2895 	.db 0xe2
      004779 94                    2896 	.db 0x94
      00477A 80                    2897 	.db 0x80
      00477B E2                    2898 	.db 0xe2
      00477C 94                    2899 	.db 0x94
      00477D 80                    2900 	.db 0x80
      00477E E2                    2901 	.db 0xe2
      00477F 94                    2902 	.db 0x94
      004780 80                    2903 	.db 0x80
      004781 E2                    2904 	.db 0xe2
      004782 94                    2905 	.db 0x94
      004783 80                    2906 	.db 0x80
      004784 E2                    2907 	.db 0xe2
      004785 94                    2908 	.db 0x94
      004786 80                    2909 	.db 0x80
      004787 E2                    2910 	.db 0xe2
      004788 94                    2911 	.db 0x94
      004789 80                    2912 	.db 0x80
      00478A E2                    2913 	.db 0xe2
      00478B 94                    2914 	.db 0x94
      00478C 80                    2915 	.db 0x80
      00478D E2                    2916 	.db 0xe2
      00478E 94                    2917 	.db 0x94
      00478F 80                    2918 	.db 0x80
      004790 E2                    2919 	.db 0xe2
      004791 94                    2920 	.db 0x94
      004792 80                    2921 	.db 0x80
      004793 E2                    2922 	.db 0xe2
      004794 94                    2923 	.db 0x94
      004795 80                    2924 	.db 0x80
      004796 E2                    2925 	.db 0xe2
      004797 94                    2926 	.db 0x94
      004798 80                    2927 	.db 0x80
      004799 E2                    2928 	.db 0xe2
      00479A 94                    2929 	.db 0x94
      00479B 80                    2930 	.db 0x80
      00479C E2                    2931 	.db 0xe2
      00479D 94                    2932 	.db 0x94
      00479E 80                    2933 	.db 0x80
      00479F E2                    2934 	.db 0xe2
      0047A0 94                    2935 	.db 0x94
      0047A1 80                    2936 	.db 0x80
      0047A2 E2                    2937 	.db 0xe2
      0047A3 94                    2938 	.db 0x94
      0047A4 80                    2939 	.db 0x80
      0047A5 E2                    2940 	.db 0xe2
      0047A6 94                    2941 	.db 0x94
      0047A7 80                    2942 	.db 0x80
      0047A8 E2                    2943 	.db 0xe2
      0047A9 94                    2944 	.db 0x94
      0047AA 80                    2945 	.db 0x80
      0047AB E2                    2946 	.db 0xe2
      0047AC 94                    2947 	.db 0x94
      0047AD 80                    2948 	.db 0x80
      0047AE E2                    2949 	.db 0xe2
      0047AF 94                    2950 	.db 0x94
      0047B0 80                    2951 	.db 0x80
      0047B1 E2                    2952 	.db 0xe2
      0047B2 94                    2953 	.db 0x94
      0047B3 80                    2954 	.db 0x80
      0047B4 E2                    2955 	.db 0xe2
      0047B5 94                    2956 	.db 0x94
      0047B6 80                    2957 	.db 0x80
      0047B7 E2                    2958 	.db 0xe2
      0047B8 94                    2959 	.db 0x94
      0047B9 80                    2960 	.db 0x80
      0047BA E2                    2961 	.db 0xe2
      0047BB 94                    2962 	.db 0x94
      0047BC 80                    2963 	.db 0x80
      0047BD E2                    2964 	.db 0xe2
      0047BE 94                    2965 	.db 0x94
      0047BF 80                    2966 	.db 0x80
      0047C0 E2                    2967 	.db 0xe2
      0047C1 94                    2968 	.db 0x94
      0047C2 80                    2969 	.db 0x80
      0047C3 E2                    2970 	.db 0xe2
      0047C4 94                    2971 	.db 0x94
      0047C5 80                    2972 	.db 0x80
      0047C6 E2                    2973 	.db 0xe2
      0047C7 94                    2974 	.db 0x94
      0047C8 80                    2975 	.db 0x80
      0047C9 E2                    2976 	.db 0xe2
      0047CA 94                    2977 	.db 0x94
      0047CB 80                    2978 	.db 0x80
      0047CC E2                    2979 	.db 0xe2
      0047CD 94                    2980 	.db 0x94
      0047CE 80                    2981 	.db 0x80
      0047CF E2                    2982 	.db 0xe2
      0047D0 94                    2983 	.db 0x94
      0047D1 80                    2984 	.db 0x80
      0047D2 E2                    2985 	.db 0xe2
      0047D3 94                    2986 	.db 0x94
      0047D4 80                    2987 	.db 0x80
      0047D5 E2                    2988 	.db 0xe2
      0047D6 94                    2989 	.db 0x94
      0047D7 80                    2990 	.db 0x80
      0047D8 E2                    2991 	.db 0xe2
      0047D9 94                    2992 	.db 0x94
      0047DA 80                    2993 	.db 0x80
      0047DB E2                    2994 	.db 0xe2
      0047DC 94                    2995 	.db 0x94
      0047DD 80                    2996 	.db 0x80
      0047DE E2                    2997 	.db 0xe2
      0047DF 94                    2998 	.db 0x94
      0047E0 80                    2999 	.db 0x80
      0047E1 E2                    3000 	.db 0xe2
      0047E2 94                    3001 	.db 0x94
      0047E3 80                    3002 	.db 0x80
      0047E4 E2                    3003 	.db 0xe2
      0047E5 94                    3004 	.db 0x94
      0047E6 80                    3005 	.db 0x80
      0047E7 E2                    3006 	.db 0xe2
      0047E8 94                    3007 	.db 0x94
      0047E9 80                    3008 	.db 0x80
      0047EA E2                    3009 	.db 0xe2
      0047EB 94                    3010 	.db 0x94
      0047EC 80                    3011 	.db 0x80
      0047ED E2                    3012 	.db 0xe2
      0047EE 94                    3013 	.db 0x94
      0047EF 80                    3014 	.db 0x80
      0047F0 E2                    3015 	.db 0xe2
      0047F1 94                    3016 	.db 0x94
      0047F2 80                    3017 	.db 0x80
      0047F3 E2                    3018 	.db 0xe2
      0047F4 94                    3019 	.db 0x94
      0047F5 80                    3020 	.db 0x80
      0047F6 E2                    3021 	.db 0xe2
      0047F7 94                    3022 	.db 0x94
      0047F8 80                    3023 	.db 0x80
      0047F9 E2                    3024 	.db 0xe2
      0047FA 94                    3025 	.db 0x94
      0047FB 90                    3026 	.db 0x90
      0047FC 0A                    3027 	.db 0x0a
      0047FD 0D                    3028 	.db 0x0d
      0047FE 00                    3029 	.db 0x00
                                   3030 	.area CSEG    (CODE)
                                   3031 	.area CONST   (CODE)
      0047FF                       3032 ___str_4:
      0047FF E2                    3033 	.db 0xe2
      004800 94                    3034 	.db 0x94
      004801 82                    3035 	.db 0x82
      004802 20 20 43 6F 6D 6D 61  3036 	.ascii "  Command   "
             6E 64 20 20 20
      00480E E2                    3037 	.db 0xe2
      00480F 94                    3038 	.db 0x94
      004810 82                    3039 	.db 0x82
      004811 20 20 20 20 20 20 20  3040 	.ascii "               Description                  "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      00483D E2                    3041 	.db 0xe2
      00483E 94                    3042 	.db 0x94
      00483F 82                    3043 	.db 0x82
      004840 0A                    3044 	.db 0x0a
      004841 0D                    3045 	.db 0x0d
      004842 00                    3046 	.db 0x00
                                   3047 	.area CSEG    (CODE)
                                   3048 	.area CONST   (CODE)
      004843                       3049 ___str_5:
      004843 E2                    3050 	.db 0xe2
      004844 94                    3051 	.db 0x94
      004845 9C                    3052 	.db 0x9c
      004846 E2                    3053 	.db 0xe2
      004847 94                    3054 	.db 0x94
      004848 80                    3055 	.db 0x80
      004849 E2                    3056 	.db 0xe2
      00484A 94                    3057 	.db 0x94
      00484B 80                    3058 	.db 0x80
      00484C E2                    3059 	.db 0xe2
      00484D 94                    3060 	.db 0x94
      00484E 80                    3061 	.db 0x80
      00484F E2                    3062 	.db 0xe2
      004850 94                    3063 	.db 0x94
      004851 80                    3064 	.db 0x80
      004852 E2                    3065 	.db 0xe2
      004853 94                    3066 	.db 0x94
      004854 80                    3067 	.db 0x80
      004855 E2                    3068 	.db 0xe2
      004856 94                    3069 	.db 0x94
      004857 80                    3070 	.db 0x80
      004858 E2                    3071 	.db 0xe2
      004859 94                    3072 	.db 0x94
      00485A 80                    3073 	.db 0x80
      00485B E2                    3074 	.db 0xe2
      00485C 94                    3075 	.db 0x94
      00485D 80                    3076 	.db 0x80
      00485E E2                    3077 	.db 0xe2
      00485F 94                    3078 	.db 0x94
      004860 80                    3079 	.db 0x80
      004861 E2                    3080 	.db 0xe2
      004862 94                    3081 	.db 0x94
      004863 80                    3082 	.db 0x80
      004864 E2                    3083 	.db 0xe2
      004865 94                    3084 	.db 0x94
      004866 80                    3085 	.db 0x80
      004867 E2                    3086 	.db 0xe2
      004868 94                    3087 	.db 0x94
      004869 80                    3088 	.db 0x80
      00486A E2                    3089 	.db 0xe2
      00486B 94                    3090 	.db 0x94
      00486C BC                    3091 	.db 0xbc
      00486D E2                    3092 	.db 0xe2
      00486E 94                    3093 	.db 0x94
      00486F 80                    3094 	.db 0x80
      004870 E2                    3095 	.db 0xe2
      004871 94                    3096 	.db 0x94
      004872 80                    3097 	.db 0x80
      004873 E2                    3098 	.db 0xe2
      004874 94                    3099 	.db 0x94
      004875 80                    3100 	.db 0x80
      004876 E2                    3101 	.db 0xe2
      004877 94                    3102 	.db 0x94
      004878 80                    3103 	.db 0x80
      004879 E2                    3104 	.db 0xe2
      00487A 94                    3105 	.db 0x94
      00487B 80                    3106 	.db 0x80
      00487C E2                    3107 	.db 0xe2
      00487D 94                    3108 	.db 0x94
      00487E 80                    3109 	.db 0x80
      00487F E2                    3110 	.db 0xe2
      004880 94                    3111 	.db 0x94
      004881 80                    3112 	.db 0x80
      004882 E2                    3113 	.db 0xe2
      004883 94                    3114 	.db 0x94
      004884 80                    3115 	.db 0x80
      004885 E2                    3116 	.db 0xe2
      004886 94                    3117 	.db 0x94
      004887 80                    3118 	.db 0x80
      004888 E2                    3119 	.db 0xe2
      004889 94                    3120 	.db 0x94
      00488A 80                    3121 	.db 0x80
      00488B E2                    3122 	.db 0xe2
      00488C 94                    3123 	.db 0x94
      00488D 80                    3124 	.db 0x80
      00488E E2                    3125 	.db 0xe2
      00488F 94                    3126 	.db 0x94
      004890 80                    3127 	.db 0x80
      004891 E2                    3128 	.db 0xe2
      004892 94                    3129 	.db 0x94
      004893 80                    3130 	.db 0x80
      004894 E2                    3131 	.db 0xe2
      004895 94                    3132 	.db 0x94
      004896 80                    3133 	.db 0x80
      004897 E2                    3134 	.db 0xe2
      004898 94                    3135 	.db 0x94
      004899 80                    3136 	.db 0x80
      00489A E2                    3137 	.db 0xe2
      00489B 94                    3138 	.db 0x94
      00489C 80                    3139 	.db 0x80
      00489D E2                    3140 	.db 0xe2
      00489E 94                    3141 	.db 0x94
      00489F 80                    3142 	.db 0x80
      0048A0 E2                    3143 	.db 0xe2
      0048A1 94                    3144 	.db 0x94
      0048A2 80                    3145 	.db 0x80
      0048A3 E2                    3146 	.db 0xe2
      0048A4 94                    3147 	.db 0x94
      0048A5 80                    3148 	.db 0x80
      0048A6 E2                    3149 	.db 0xe2
      0048A7 94                    3150 	.db 0x94
      0048A8 80                    3151 	.db 0x80
      0048A9 E2                    3152 	.db 0xe2
      0048AA 94                    3153 	.db 0x94
      0048AB 80                    3154 	.db 0x80
      0048AC E2                    3155 	.db 0xe2
      0048AD 94                    3156 	.db 0x94
      0048AE 80                    3157 	.db 0x80
      0048AF E2                    3158 	.db 0xe2
      0048B0 94                    3159 	.db 0x94
      0048B1 80                    3160 	.db 0x80
      0048B2 E2                    3161 	.db 0xe2
      0048B3 94                    3162 	.db 0x94
      0048B4 80                    3163 	.db 0x80
      0048B5 E2                    3164 	.db 0xe2
      0048B6 94                    3165 	.db 0x94
      0048B7 80                    3166 	.db 0x80
      0048B8 E2                    3167 	.db 0xe2
      0048B9 94                    3168 	.db 0x94
      0048BA 80                    3169 	.db 0x80
      0048BB E2                    3170 	.db 0xe2
      0048BC 94                    3171 	.db 0x94
      0048BD 80                    3172 	.db 0x80
      0048BE E2                    3173 	.db 0xe2
      0048BF 94                    3174 	.db 0x94
      0048C0 80                    3175 	.db 0x80
      0048C1 E2                    3176 	.db 0xe2
      0048C2 94                    3177 	.db 0x94
      0048C3 80                    3178 	.db 0x80
      0048C4 E2                    3179 	.db 0xe2
      0048C5 94                    3180 	.db 0x94
      0048C6 80                    3181 	.db 0x80
      0048C7 E2                    3182 	.db 0xe2
      0048C8 94                    3183 	.db 0x94
      0048C9 80                    3184 	.db 0x80
      0048CA E2                    3185 	.db 0xe2
      0048CB 94                    3186 	.db 0x94
      0048CC 80                    3187 	.db 0x80
      0048CD E2                    3188 	.db 0xe2
      0048CE 94                    3189 	.db 0x94
      0048CF 80                    3190 	.db 0x80
      0048D0 E2                    3191 	.db 0xe2
      0048D1 94                    3192 	.db 0x94
      0048D2 80                    3193 	.db 0x80
      0048D3 E2                    3194 	.db 0xe2
      0048D4 94                    3195 	.db 0x94
      0048D5 80                    3196 	.db 0x80
      0048D6 E2                    3197 	.db 0xe2
      0048D7 94                    3198 	.db 0x94
      0048D8 80                    3199 	.db 0x80
      0048D9 E2                    3200 	.db 0xe2
      0048DA 94                    3201 	.db 0x94
      0048DB 80                    3202 	.db 0x80
      0048DC E2                    3203 	.db 0xe2
      0048DD 94                    3204 	.db 0x94
      0048DE 80                    3205 	.db 0x80
      0048DF E2                    3206 	.db 0xe2
      0048E0 94                    3207 	.db 0x94
      0048E1 80                    3208 	.db 0x80
      0048E2 E2                    3209 	.db 0xe2
      0048E3 94                    3210 	.db 0x94
      0048E4 80                    3211 	.db 0x80
      0048E5 E2                    3212 	.db 0xe2
      0048E6 94                    3213 	.db 0x94
      0048E7 80                    3214 	.db 0x80
      0048E8 E2                    3215 	.db 0xe2
      0048E9 94                    3216 	.db 0x94
      0048EA 80                    3217 	.db 0x80
      0048EB E2                    3218 	.db 0xe2
      0048EC 94                    3219 	.db 0x94
      0048ED 80                    3220 	.db 0x80
      0048EE E2                    3221 	.db 0xe2
      0048EF 94                    3222 	.db 0x94
      0048F0 80                    3223 	.db 0x80
      0048F1 E2                    3224 	.db 0xe2
      0048F2 94                    3225 	.db 0x94
      0048F3 A4                    3226 	.db 0xa4
      0048F4 0A                    3227 	.db 0x0a
      0048F5 0D                    3228 	.db 0x0d
      0048F6 00                    3229 	.db 0x00
                                   3230 	.area CSEG    (CODE)
                                   3231 	.area CONST   (CODE)
      0048F7                       3232 ___str_6:
      0048F7 E2                    3233 	.db 0xe2
      0048F8 94                    3234 	.db 0x94
      0048F9 82                    3235 	.db 0x82
      0048FA 20 20 20 20 20 52 20  3236 	.ascii "     R      "
             20 20 20 20 20
      004906 E2                    3237 	.db 0xe2
      004907 94                    3238 	.db 0x94
      004908 82                    3239 	.db 0x82
      004909 20 52 65 61 64 20 66  3240 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004935 E2                    3241 	.db 0xe2
      004936 94                    3242 	.db 0x94
      004937 82                    3243 	.db 0x82
      004938 0A                    3244 	.db 0x0a
      004939 0D                    3245 	.db 0x0d
      00493A 00                    3246 	.db 0x00
                                   3247 	.area CSEG    (CODE)
                                   3248 	.area CONST   (CODE)
      00493B                       3249 ___str_7:
      00493B E2                    3250 	.db 0xe2
      00493C 94                    3251 	.db 0x94
      00493D 82                    3252 	.db 0x82
      00493E 20 20 20 20 20 57 20  3253 	.ascii "     W      "
             20 20 20 20 20
      00494A E2                    3254 	.db 0xe2
      00494B 94                    3255 	.db 0x94
      00494C 82                    3256 	.db 0x82
      00494D 20 57 72 69 74 65 20  3257 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004979 E2                    3258 	.db 0xe2
      00497A 94                    3259 	.db 0x94
      00497B 82                    3260 	.db 0x82
      00497C 0A                    3261 	.db 0x0a
      00497D 0D                    3262 	.db 0x0d
      00497E 00                    3263 	.db 0x00
                                   3264 	.area CSEG    (CODE)
                                   3265 	.area CONST   (CODE)
      00497F                       3266 ___str_8:
      00497F E2                    3267 	.db 0xe2
      004980 94                    3268 	.db 0x94
      004981 82                    3269 	.db 0x82
      004982 20 20 20 20 20 48 20  3270 	.ascii "     H      "
             20 20 20 20 20
      00498E E2                    3271 	.db 0xe2
      00498F 94                    3272 	.db 0x94
      004990 82                    3273 	.db 0x82
      004991 20 44 69 73 70 6C 61  3274 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0049BD E2                    3275 	.db 0xe2
      0049BE 94                    3276 	.db 0x94
      0049BF 82                    3277 	.db 0x82
      0049C0 0A                    3278 	.db 0x0a
      0049C1 0D                    3279 	.db 0x0d
      0049C2 00                    3280 	.db 0x00
                                   3281 	.area CSEG    (CODE)
                                   3282 	.area CONST   (CODE)
      0049C3                       3283 ___str_9:
      0049C3 E2                    3284 	.db 0xe2
      0049C4 94                    3285 	.db 0x94
      0049C5 82                    3286 	.db 0x82
      0049C6 20 20 20 20 20 58 20  3287 	.ascii "     X      "
             20 20 20 20 20
      0049D2 E2                    3288 	.db 0xe2
      0049D3 94                    3289 	.db 0x94
      0049D4 82                    3290 	.db 0x82
      0049D5 20 52 65 73 65 74 20  3291 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004A01 E2                    3292 	.db 0xe2
      004A02 94                    3293 	.db 0x94
      004A03 82                    3294 	.db 0x82
      004A04 0A                    3295 	.db 0x0a
      004A05 0D                    3296 	.db 0x0d
      004A06 00                    3297 	.db 0x00
                                   3298 	.area CSEG    (CODE)
                                   3299 	.area CONST   (CODE)
      004A07                       3300 ___str_10:
      004A07 E2                    3301 	.db 0xe2
      004A08 94                    3302 	.db 0x94
      004A09 82                    3303 	.db 0x82
      004A0A 20 20 20 20 20 3F 20  3304 	.ascii "     ?      "
             20 20 20 20 20
      004A16 E2                    3305 	.db 0xe2
      004A17 94                    3306 	.db 0x94
      004A18 82                    3307 	.db 0x82
      004A19 20 44 69 73 70 6C 61  3308 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004A45 E2                    3309 	.db 0xe2
      004A46 94                    3310 	.db 0x94
      004A47 82                    3311 	.db 0x82
      004A48 0A                    3312 	.db 0x0a
      004A49 0D                    3313 	.db 0x0d
      004A4A 00                    3314 	.db 0x00
                                   3315 	.area CSEG    (CODE)
                                   3316 	.area CONST   (CODE)
      004A4B                       3317 ___str_11:
      004A4B E2                    3318 	.db 0xe2
      004A4C 94                    3319 	.db 0x94
      004A4D 82                    3320 	.db 0x82
      004A4E 20 20 20 20 20 51 20  3321 	.ascii "     Q      "
             20 20 20 20 20
      004A5A E2                    3322 	.db 0xe2
      004A5B 94                    3323 	.db 0x94
      004A5C 82                    3324 	.db 0x82
      004A5D 20 51 75 69 74 20 70  3325 	.ascii " Quit program                               "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004A89 E2                    3326 	.db 0xe2
      004A8A 94                    3327 	.db 0x94
      004A8B 82                    3328 	.db 0x82
      004A8C 0A                    3329 	.db 0x0a
      004A8D 0D                    3330 	.db 0x0d
      004A8E 00                    3331 	.db 0x00
                                   3332 	.area CSEG    (CODE)
                                   3333 	.area CONST   (CODE)
      004A8F                       3334 ___str_12:
      004A8F E2                    3335 	.db 0xe2
      004A90 94                    3336 	.db 0x94
      004A91 94                    3337 	.db 0x94
      004A92 E2                    3338 	.db 0xe2
      004A93 94                    3339 	.db 0x94
      004A94 80                    3340 	.db 0x80
      004A95 E2                    3341 	.db 0xe2
      004A96 94                    3342 	.db 0x94
      004A97 80                    3343 	.db 0x80
      004A98 E2                    3344 	.db 0xe2
      004A99 94                    3345 	.db 0x94
      004A9A 80                    3346 	.db 0x80
      004A9B E2                    3347 	.db 0xe2
      004A9C 94                    3348 	.db 0x94
      004A9D 80                    3349 	.db 0x80
      004A9E E2                    3350 	.db 0xe2
      004A9F 94                    3351 	.db 0x94
      004AA0 80                    3352 	.db 0x80
      004AA1 E2                    3353 	.db 0xe2
      004AA2 94                    3354 	.db 0x94
      004AA3 80                    3355 	.db 0x80
      004AA4 E2                    3356 	.db 0xe2
      004AA5 94                    3357 	.db 0x94
      004AA6 80                    3358 	.db 0x80
      004AA7 E2                    3359 	.db 0xe2
      004AA8 94                    3360 	.db 0x94
      004AA9 80                    3361 	.db 0x80
      004AAA E2                    3362 	.db 0xe2
      004AAB 94                    3363 	.db 0x94
      004AAC 80                    3364 	.db 0x80
      004AAD E2                    3365 	.db 0xe2
      004AAE 94                    3366 	.db 0x94
      004AAF 80                    3367 	.db 0x80
      004AB0 E2                    3368 	.db 0xe2
      004AB1 94                    3369 	.db 0x94
      004AB2 80                    3370 	.db 0x80
      004AB3 E2                    3371 	.db 0xe2
      004AB4 94                    3372 	.db 0x94
      004AB5 80                    3373 	.db 0x80
      004AB6 E2                    3374 	.db 0xe2
      004AB7 94                    3375 	.db 0x94
      004AB8 B4                    3376 	.db 0xb4
      004AB9 E2                    3377 	.db 0xe2
      004ABA 94                    3378 	.db 0x94
      004ABB 80                    3379 	.db 0x80
      004ABC E2                    3380 	.db 0xe2
      004ABD 94                    3381 	.db 0x94
      004ABE 80                    3382 	.db 0x80
      004ABF E2                    3383 	.db 0xe2
      004AC0 94                    3384 	.db 0x94
      004AC1 80                    3385 	.db 0x80
      004AC2 E2                    3386 	.db 0xe2
      004AC3 94                    3387 	.db 0x94
      004AC4 80                    3388 	.db 0x80
      004AC5 E2                    3389 	.db 0xe2
      004AC6 94                    3390 	.db 0x94
      004AC7 80                    3391 	.db 0x80
      004AC8 E2                    3392 	.db 0xe2
      004AC9 94                    3393 	.db 0x94
      004ACA 80                    3394 	.db 0x80
      004ACB E2                    3395 	.db 0xe2
      004ACC 94                    3396 	.db 0x94
      004ACD 80                    3397 	.db 0x80
      004ACE E2                    3398 	.db 0xe2
      004ACF 94                    3399 	.db 0x94
      004AD0 80                    3400 	.db 0x80
      004AD1 E2                    3401 	.db 0xe2
      004AD2 94                    3402 	.db 0x94
      004AD3 80                    3403 	.db 0x80
      004AD4 E2                    3404 	.db 0xe2
      004AD5 94                    3405 	.db 0x94
      004AD6 80                    3406 	.db 0x80
      004AD7 E2                    3407 	.db 0xe2
      004AD8 94                    3408 	.db 0x94
      004AD9 80                    3409 	.db 0x80
      004ADA E2                    3410 	.db 0xe2
      004ADB 94                    3411 	.db 0x94
      004ADC 80                    3412 	.db 0x80
      004ADD E2                    3413 	.db 0xe2
      004ADE 94                    3414 	.db 0x94
      004ADF 80                    3415 	.db 0x80
      004AE0 E2                    3416 	.db 0xe2
      004AE1 94                    3417 	.db 0x94
      004AE2 80                    3418 	.db 0x80
      004AE3 E2                    3419 	.db 0xe2
      004AE4 94                    3420 	.db 0x94
      004AE5 80                    3421 	.db 0x80
      004AE6 E2                    3422 	.db 0xe2
      004AE7 94                    3423 	.db 0x94
      004AE8 80                    3424 	.db 0x80
      004AE9 E2                    3425 	.db 0xe2
      004AEA 94                    3426 	.db 0x94
      004AEB 80                    3427 	.db 0x80
      004AEC E2                    3428 	.db 0xe2
      004AED 94                    3429 	.db 0x94
      004AEE 80                    3430 	.db 0x80
      004AEF E2                    3431 	.db 0xe2
      004AF0 94                    3432 	.db 0x94
      004AF1 80                    3433 	.db 0x80
      004AF2 E2                    3434 	.db 0xe2
      004AF3 94                    3435 	.db 0x94
      004AF4 80                    3436 	.db 0x80
      004AF5 E2                    3437 	.db 0xe2
      004AF6 94                    3438 	.db 0x94
      004AF7 80                    3439 	.db 0x80
      004AF8 E2                    3440 	.db 0xe2
      004AF9 94                    3441 	.db 0x94
      004AFA 80                    3442 	.db 0x80
      004AFB E2                    3443 	.db 0xe2
      004AFC 94                    3444 	.db 0x94
      004AFD 80                    3445 	.db 0x80
      004AFE E2                    3446 	.db 0xe2
      004AFF 94                    3447 	.db 0x94
      004B00 80                    3448 	.db 0x80
      004B01 E2                    3449 	.db 0xe2
      004B02 94                    3450 	.db 0x94
      004B03 80                    3451 	.db 0x80
      004B04 E2                    3452 	.db 0xe2
      004B05 94                    3453 	.db 0x94
      004B06 80                    3454 	.db 0x80
      004B07 E2                    3455 	.db 0xe2
      004B08 94                    3456 	.db 0x94
      004B09 80                    3457 	.db 0x80
      004B0A E2                    3458 	.db 0xe2
      004B0B 94                    3459 	.db 0x94
      004B0C 80                    3460 	.db 0x80
      004B0D E2                    3461 	.db 0xe2
      004B0E 94                    3462 	.db 0x94
      004B0F 80                    3463 	.db 0x80
      004B10 E2                    3464 	.db 0xe2
      004B11 94                    3465 	.db 0x94
      004B12 80                    3466 	.db 0x80
      004B13 E2                    3467 	.db 0xe2
      004B14 94                    3468 	.db 0x94
      004B15 80                    3469 	.db 0x80
      004B16 E2                    3470 	.db 0xe2
      004B17 94                    3471 	.db 0x94
      004B18 80                    3472 	.db 0x80
      004B19 E2                    3473 	.db 0xe2
      004B1A 94                    3474 	.db 0x94
      004B1B 80                    3475 	.db 0x80
      004B1C E2                    3476 	.db 0xe2
      004B1D 94                    3477 	.db 0x94
      004B1E 80                    3478 	.db 0x80
      004B1F E2                    3479 	.db 0xe2
      004B20 94                    3480 	.db 0x94
      004B21 80                    3481 	.db 0x80
      004B22 E2                    3482 	.db 0xe2
      004B23 94                    3483 	.db 0x94
      004B24 80                    3484 	.db 0x80
      004B25 E2                    3485 	.db 0xe2
      004B26 94                    3486 	.db 0x94
      004B27 80                    3487 	.db 0x80
      004B28 E2                    3488 	.db 0xe2
      004B29 94                    3489 	.db 0x94
      004B2A 80                    3490 	.db 0x80
      004B2B E2                    3491 	.db 0xe2
      004B2C 94                    3492 	.db 0x94
      004B2D 80                    3493 	.db 0x80
      004B2E E2                    3494 	.db 0xe2
      004B2F 94                    3495 	.db 0x94
      004B30 80                    3496 	.db 0x80
      004B31 E2                    3497 	.db 0xe2
      004B32 94                    3498 	.db 0x94
      004B33 80                    3499 	.db 0x80
      004B34 E2                    3500 	.db 0xe2
      004B35 94                    3501 	.db 0x94
      004B36 80                    3502 	.db 0x80
      004B37 E2                    3503 	.db 0xe2
      004B38 94                    3504 	.db 0x94
      004B39 80                    3505 	.db 0x80
      004B3A E2                    3506 	.db 0xe2
      004B3B 94                    3507 	.db 0x94
      004B3C 80                    3508 	.db 0x80
      004B3D E2                    3509 	.db 0xe2
      004B3E 94                    3510 	.db 0x94
      004B3F 98                    3511 	.db 0x98
      004B40 0A                    3512 	.db 0x0a
      004B41 0D                    3513 	.db 0x0d
      004B42 00                    3514 	.db 0x00
                                   3515 	.area CSEG    (CODE)
                                   3516 	.area CONST   (CODE)
      004B43                       3517 ___str_13:
      004B43 7C 20 24 20 25 63     3518 	.ascii "| $ %c"
      004B49 0A                    3519 	.db 0x0a
      004B4A 0D                    3520 	.db 0x0d
      004B4B 00                    3521 	.db 0x00
                                   3522 	.area CSEG    (CODE)
                                   3523 	.area CONST   (CODE)
      004B4C                       3524 ___str_14:
      004B4C 0A                    3525 	.db 0x0a
      004B4D E2                    3526 	.db 0xe2
      004B4E 94                    3527 	.db 0x94
      004B4F 8C                    3528 	.db 0x8c
      004B50 E2                    3529 	.db 0xe2
      004B51 94                    3530 	.db 0x94
      004B52 80                    3531 	.db 0x80
      004B53 E2                    3532 	.db 0xe2
      004B54 94                    3533 	.db 0x94
      004B55 80                    3534 	.db 0x80
      004B56 E2                    3535 	.db 0xe2
      004B57 94                    3536 	.db 0x94
      004B58 80                    3537 	.db 0x80
      004B59 E2                    3538 	.db 0xe2
      004B5A 94                    3539 	.db 0x94
      004B5B 80                    3540 	.db 0x80
      004B5C E2                    3541 	.db 0xe2
      004B5D 94                    3542 	.db 0x94
      004B5E 80                    3543 	.db 0x80
      004B5F E2                    3544 	.db 0xe2
      004B60 94                    3545 	.db 0x94
      004B61 80                    3546 	.db 0x80
      004B62 E2                    3547 	.db 0xe2
      004B63 94                    3548 	.db 0x94
      004B64 80                    3549 	.db 0x80
      004B65 E2                    3550 	.db 0xe2
      004B66 94                    3551 	.db 0x94
      004B67 80                    3552 	.db 0x80
      004B68 E2                    3553 	.db 0xe2
      004B69 94                    3554 	.db 0x94
      004B6A 80                    3555 	.db 0x80
      004B6B E2                    3556 	.db 0xe2
      004B6C 94                    3557 	.db 0x94
      004B6D 80                    3558 	.db 0x80
      004B6E E2                    3559 	.db 0xe2
      004B6F 94                    3560 	.db 0x94
      004B70 80                    3561 	.db 0x80
      004B71 E2                    3562 	.db 0xe2
      004B72 94                    3563 	.db 0x94
      004B73 80                    3564 	.db 0x80
      004B74 E2                    3565 	.db 0xe2
      004B75 94                    3566 	.db 0x94
      004B76 80                    3567 	.db 0x80
      004B77 E2                    3568 	.db 0xe2
      004B78 94                    3569 	.db 0x94
      004B79 80                    3570 	.db 0x80
      004B7A E2                    3571 	.db 0xe2
      004B7B 94                    3572 	.db 0x94
      004B7C 80                    3573 	.db 0x80
      004B7D 20 57 52 49 54 45 20  3574 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      004B8E E2                    3575 	.db 0xe2
      004B8F 94                    3576 	.db 0x94
      004B90 80                    3577 	.db 0x80
      004B91 E2                    3578 	.db 0xe2
      004B92 94                    3579 	.db 0x94
      004B93 80                    3580 	.db 0x80
      004B94 E2                    3581 	.db 0xe2
      004B95 94                    3582 	.db 0x94
      004B96 80                    3583 	.db 0x80
      004B97 E2                    3584 	.db 0xe2
      004B98 94                    3585 	.db 0x94
      004B99 80                    3586 	.db 0x80
      004B9A E2                    3587 	.db 0xe2
      004B9B 94                    3588 	.db 0x94
      004B9C 80                    3589 	.db 0x80
      004B9D E2                    3590 	.db 0xe2
      004B9E 94                    3591 	.db 0x94
      004B9F 80                    3592 	.db 0x80
      004BA0 E2                    3593 	.db 0xe2
      004BA1 94                    3594 	.db 0x94
      004BA2 80                    3595 	.db 0x80
      004BA3 E2                    3596 	.db 0xe2
      004BA4 94                    3597 	.db 0x94
      004BA5 80                    3598 	.db 0x80
      004BA6 E2                    3599 	.db 0xe2
      004BA7 94                    3600 	.db 0x94
      004BA8 80                    3601 	.db 0x80
      004BA9 E2                    3602 	.db 0xe2
      004BAA 94                    3603 	.db 0x94
      004BAB 80                    3604 	.db 0x80
      004BAC E2                    3605 	.db 0xe2
      004BAD 94                    3606 	.db 0x94
      004BAE 80                    3607 	.db 0x80
      004BAF E2                    3608 	.db 0xe2
      004BB0 94                    3609 	.db 0x94
      004BB1 80                    3610 	.db 0x80
      004BB2 E2                    3611 	.db 0xe2
      004BB3 94                    3612 	.db 0x94
      004BB4 80                    3613 	.db 0x80
      004BB5 E2                    3614 	.db 0xe2
      004BB6 94                    3615 	.db 0x94
      004BB7 80                    3616 	.db 0x80
      004BB8 E2                    3617 	.db 0xe2
      004BB9 94                    3618 	.db 0x94
      004BBA 90                    3619 	.db 0x90
      004BBB 0A                    3620 	.db 0x0a
      004BBC 0D                    3621 	.db 0x0d
      004BBD 00                    3622 	.db 0x00
                                   3623 	.area CSEG    (CODE)
                                   3624 	.area CONST   (CODE)
      004BBE                       3625 ___str_15:
      004BBE 0A                    3626 	.db 0x0a
      004BBF E2                    3627 	.db 0xe2
      004BC0 94                    3628 	.db 0x94
      004BC1 8C                    3629 	.db 0x8c
      004BC2 E2                    3630 	.db 0xe2
      004BC3 94                    3631 	.db 0x94
      004BC4 80                    3632 	.db 0x80
      004BC5 E2                    3633 	.db 0xe2
      004BC6 94                    3634 	.db 0x94
      004BC7 80                    3635 	.db 0x80
      004BC8 E2                    3636 	.db 0xe2
      004BC9 94                    3637 	.db 0x94
      004BCA 80                    3638 	.db 0x80
      004BCB E2                    3639 	.db 0xe2
      004BCC 94                    3640 	.db 0x94
      004BCD 80                    3641 	.db 0x80
      004BCE E2                    3642 	.db 0xe2
      004BCF 94                    3643 	.db 0x94
      004BD0 80                    3644 	.db 0x80
      004BD1 E2                    3645 	.db 0xe2
      004BD2 94                    3646 	.db 0x94
      004BD3 80                    3647 	.db 0x80
      004BD4 E2                    3648 	.db 0xe2
      004BD5 94                    3649 	.db 0x94
      004BD6 80                    3650 	.db 0x80
      004BD7 E2                    3651 	.db 0xe2
      004BD8 94                    3652 	.db 0x94
      004BD9 80                    3653 	.db 0x80
      004BDA E2                    3654 	.db 0xe2
      004BDB 94                    3655 	.db 0x94
      004BDC 80                    3656 	.db 0x80
      004BDD E2                    3657 	.db 0xe2
      004BDE 94                    3658 	.db 0x94
      004BDF 80                    3659 	.db 0x80
      004BE0 E2                    3660 	.db 0xe2
      004BE1 94                    3661 	.db 0x94
      004BE2 80                    3662 	.db 0x80
      004BE3 E2                    3663 	.db 0xe2
      004BE4 94                    3664 	.db 0x94
      004BE5 80                    3665 	.db 0x80
      004BE6 E2                    3666 	.db 0xe2
      004BE7 94                    3667 	.db 0x94
      004BE8 80                    3668 	.db 0x80
      004BE9 E2                    3669 	.db 0xe2
      004BEA 94                    3670 	.db 0x94
      004BEB 80                    3671 	.db 0x80
      004BEC E2                    3672 	.db 0xe2
      004BED 94                    3673 	.db 0x94
      004BEE 80                    3674 	.db 0x80
      004BEF 20 52 45 41 44 20 4F  3675 	.ascii " READ OPERATION "
             50 45 52 41 54 49 4F
             4E 20
      004BFF E2                    3676 	.db 0xe2
      004C00 94                    3677 	.db 0x94
      004C01 80                    3678 	.db 0x80
      004C02 E2                    3679 	.db 0xe2
      004C03 94                    3680 	.db 0x94
      004C04 80                    3681 	.db 0x80
      004C05 E2                    3682 	.db 0xe2
      004C06 94                    3683 	.db 0x94
      004C07 80                    3684 	.db 0x80
      004C08 E2                    3685 	.db 0xe2
      004C09 94                    3686 	.db 0x94
      004C0A 80                    3687 	.db 0x80
      004C0B E2                    3688 	.db 0xe2
      004C0C 94                    3689 	.db 0x94
      004C0D 80                    3690 	.db 0x80
      004C0E E2                    3691 	.db 0xe2
      004C0F 94                    3692 	.db 0x94
      004C10 80                    3693 	.db 0x80
      004C11 E2                    3694 	.db 0xe2
      004C12 94                    3695 	.db 0x94
      004C13 80                    3696 	.db 0x80
      004C14 E2                    3697 	.db 0xe2
      004C15 94                    3698 	.db 0x94
      004C16 80                    3699 	.db 0x80
      004C17 E2                    3700 	.db 0xe2
      004C18 94                    3701 	.db 0x94
      004C19 80                    3702 	.db 0x80
      004C1A E2                    3703 	.db 0xe2
      004C1B 94                    3704 	.db 0x94
      004C1C 80                    3705 	.db 0x80
      004C1D E2                    3706 	.db 0xe2
      004C1E 94                    3707 	.db 0x94
      004C1F 80                    3708 	.db 0x80
      004C20 E2                    3709 	.db 0xe2
      004C21 94                    3710 	.db 0x94
      004C22 80                    3711 	.db 0x80
      004C23 E2                    3712 	.db 0xe2
      004C24 94                    3713 	.db 0x94
      004C25 80                    3714 	.db 0x80
      004C26 E2                    3715 	.db 0xe2
      004C27 94                    3716 	.db 0x94
      004C28 80                    3717 	.db 0x80
      004C29 E2                    3718 	.db 0xe2
      004C2A 94                    3719 	.db 0x94
      004C2B 80                    3720 	.db 0x80
      004C2C E2                    3721 	.db 0xe2
      004C2D 94                    3722 	.db 0x94
      004C2E 90                    3723 	.db 0x90
      004C2F 0A                    3724 	.db 0x0a
      004C30 0D                    3725 	.db 0x0d
      004C31 00                    3726 	.db 0x00
                                   3727 	.area CSEG    (CODE)
                                   3728 	.area CONST   (CODE)
      004C32                       3729 ___str_16:
      004C32 7C 20 52 65 61 64 69  3730 	.ascii "| Reading from Address 0x%03X           |"
             6E 67 20 66 72 6F 6D
             20 41 64 64 72 65 73
             73 20 30 78 25 30 33
             58 20 20 20 20 20 20
             20 20 20 20 20 7C
      004C5B 0A                    3731 	.db 0x0a
      004C5C 0D                    3732 	.db 0x0d
      004C5D 00                    3733 	.db 0x00
                                   3734 	.area CSEG    (CODE)
                                   3735 	.area CONST   (CODE)
      004C5E                       3736 ___str_17:
      004C5E 49 4E 56 41 4C 49 44  3737 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      004C6B 0A                    3738 	.db 0x0a
      004C6C 0D                    3739 	.db 0x0d
      004C6D 00                    3740 	.db 0x00
                                   3741 	.area CSEG    (CODE)
                                   3742 	.area CONST   (CODE)
      004C6E                       3743 ___str_18:
      004C6E E2                    3744 	.db 0xe2
      004C6F 94                    3745 	.db 0x94
      004C70 82                    3746 	.db 0x82
      004C71 20 45 6E 74 65 72 20  3747 	.ascii " Enter address (hex, up to 3 characters): "
             61 64 64 72 65 73 73
             20 28 68 65 78 2C 20
             75 70 20 74 6F 20 33
             20 63 68 61 72 61 63
             74 65 72 73 29 3A 20
      004C9B 0A                    3748 	.db 0x0a
      004C9C 0D                    3749 	.db 0x0d
      004C9D 7C                    3750 	.ascii "|"
      004C9E 00                    3751 	.db 0x00
                                   3752 	.area CSEG    (CODE)
                                   3753 	.area CONST   (CODE)
      004C9F                       3754 ___str_19:
      004C9F 7C 20 24 20           3755 	.ascii "| $ "
      004CA3 00                    3756 	.db 0x00
                                   3757 	.area CSEG    (CODE)
                                   3758 	.area CONST   (CODE)
      004CA4                       3759 ___str_20:
      004CA4 0A                    3760 	.db 0x0a
      004CA5 0D                    3761 	.db 0x0d
      004CA6 E2                    3762 	.db 0xe2
      004CA7 94                    3763 	.db 0x94
      004CA8 82                    3764 	.db 0x82
      004CA9 20 45 6E 74 65 72 65  3765 	.ascii " Entered address: 0x%03X"
             64 20 61 64 64 72 65
             73 73 3A 20 30 78 25
             30 33 58
      004CC1 0A                    3766 	.db 0x0a
      004CC2 0D                    3767 	.db 0x0d
      004CC3 00                    3768 	.db 0x00
                                   3769 	.area CSEG    (CODE)
                                   3770 	.area CONST   (CODE)
      004CC4                       3771 ___str_21:
      004CC4 E2                    3772 	.db 0xe2
      004CC5 95                    3773 	.db 0x95
      004CC6 94                    3774 	.db 0x94
      004CC7 E2                    3775 	.db 0xe2
      004CC8 95                    3776 	.db 0x95
      004CC9 90                    3777 	.db 0x90
      004CCA E2                    3778 	.db 0xe2
      004CCB 95                    3779 	.db 0x95
      004CCC 90                    3780 	.db 0x90
      004CCD E2                    3781 	.db 0xe2
      004CCE 95                    3782 	.db 0x95
      004CCF 90                    3783 	.db 0x90
      004CD0 E2                    3784 	.db 0xe2
      004CD1 95                    3785 	.db 0x95
      004CD2 90                    3786 	.db 0x90
      004CD3 E2                    3787 	.db 0xe2
      004CD4 95                    3788 	.db 0x95
      004CD5 90                    3789 	.db 0x90
      004CD6 E2                    3790 	.db 0xe2
      004CD7 95                    3791 	.db 0x95
      004CD8 90                    3792 	.db 0x90
      004CD9 E2                    3793 	.db 0xe2
      004CDA 95                    3794 	.db 0x95
      004CDB 90                    3795 	.db 0x90
      004CDC E2                    3796 	.db 0xe2
      004CDD 95                    3797 	.db 0x95
      004CDE 90                    3798 	.db 0x90
      004CDF E2                    3799 	.db 0xe2
      004CE0 95                    3800 	.db 0x95
      004CE1 90                    3801 	.db 0x90
      004CE2 E2                    3802 	.db 0xe2
      004CE3 95                    3803 	.db 0x95
      004CE4 90                    3804 	.db 0x90
      004CE5 E2                    3805 	.db 0xe2
      004CE6 95                    3806 	.db 0x95
      004CE7 90                    3807 	.db 0x90
      004CE8 E2                    3808 	.db 0xe2
      004CE9 95                    3809 	.db 0x95
      004CEA 90                    3810 	.db 0x90
      004CEB E2                    3811 	.db 0xe2
      004CEC 95                    3812 	.db 0x95
      004CED 90                    3813 	.db 0x90
      004CEE E2                    3814 	.db 0xe2
      004CEF 95                    3815 	.db 0x95
      004CF0 90                    3816 	.db 0x90
      004CF1 E2                    3817 	.db 0xe2
      004CF2 95                    3818 	.db 0x95
      004CF3 90                    3819 	.db 0x90
      004CF4 E2                    3820 	.db 0xe2
      004CF5 95                    3821 	.db 0x95
      004CF6 90                    3822 	.db 0x90
      004CF7 E2                    3823 	.db 0xe2
      004CF8 95                    3824 	.db 0x95
      004CF9 90                    3825 	.db 0x90
      004CFA E2                    3826 	.db 0xe2
      004CFB 95                    3827 	.db 0x95
      004CFC 90                    3828 	.db 0x90
      004CFD E2                    3829 	.db 0xe2
      004CFE 95                    3830 	.db 0x95
      004CFF 90                    3831 	.db 0x90
      004D00 E2                    3832 	.db 0xe2
      004D01 95                    3833 	.db 0x95
      004D02 90                    3834 	.db 0x90
      004D03 E2                    3835 	.db 0xe2
      004D04 95                    3836 	.db 0x95
      004D05 90                    3837 	.db 0x90
      004D06 E2                    3838 	.db 0xe2
      004D07 95                    3839 	.db 0x95
      004D08 90                    3840 	.db 0x90
      004D09 E2                    3841 	.db 0xe2
      004D0A 95                    3842 	.db 0x95
      004D0B 90                    3843 	.db 0x90
      004D0C E2                    3844 	.db 0xe2
      004D0D 95                    3845 	.db 0x95
      004D0E 90                    3846 	.db 0x90
      004D0F E2                    3847 	.db 0xe2
      004D10 95                    3848 	.db 0x95
      004D11 90                    3849 	.db 0x90
      004D12 E2                    3850 	.db 0xe2
      004D13 95                    3851 	.db 0x95
      004D14 90                    3852 	.db 0x90
      004D15 E2                    3853 	.db 0xe2
      004D16 95                    3854 	.db 0x95
      004D17 90                    3855 	.db 0x90
      004D18 E2                    3856 	.db 0xe2
      004D19 95                    3857 	.db 0x95
      004D1A 90                    3858 	.db 0x90
      004D1B E2                    3859 	.db 0xe2
      004D1C 95                    3860 	.db 0x95
      004D1D 90                    3861 	.db 0x90
      004D1E E2                    3862 	.db 0xe2
      004D1F 95                    3863 	.db 0x95
      004D20 90                    3864 	.db 0x90
      004D21 E2                    3865 	.db 0xe2
      004D22 95                    3866 	.db 0x95
      004D23 90                    3867 	.db 0x90
      004D24 E2                    3868 	.db 0xe2
      004D25 95                    3869 	.db 0x95
      004D26 90                    3870 	.db 0x90
      004D27 E2                    3871 	.db 0xe2
      004D28 95                    3872 	.db 0x95
      004D29 90                    3873 	.db 0x90
      004D2A E2                    3874 	.db 0xe2
      004D2B 95                    3875 	.db 0x95
      004D2C 90                    3876 	.db 0x90
      004D2D E2                    3877 	.db 0xe2
      004D2E 95                    3878 	.db 0x95
      004D2F 90                    3879 	.db 0x90
      004D30 E2                    3880 	.db 0xe2
      004D31 95                    3881 	.db 0x95
      004D32 90                    3882 	.db 0x90
      004D33 E2                    3883 	.db 0xe2
      004D34 95                    3884 	.db 0x95
      004D35 90                    3885 	.db 0x90
      004D36 E2                    3886 	.db 0xe2
      004D37 95                    3887 	.db 0x95
      004D38 90                    3888 	.db 0x90
      004D39 E2                    3889 	.db 0xe2
      004D3A 95                    3890 	.db 0x95
      004D3B 90                    3891 	.db 0x90
      004D3C E2                    3892 	.db 0xe2
      004D3D 95                    3893 	.db 0x95
      004D3E 90                    3894 	.db 0x90
      004D3F E2                    3895 	.db 0xe2
      004D40 95                    3896 	.db 0x95
      004D41 90                    3897 	.db 0x90
      004D42 E2                    3898 	.db 0xe2
      004D43 95                    3899 	.db 0x95
      004D44 90                    3900 	.db 0x90
      004D45 E2                    3901 	.db 0xe2
      004D46 95                    3902 	.db 0x95
      004D47 97                    3903 	.db 0x97
      004D48 0A                    3904 	.db 0x0a
      004D49 0D                    3905 	.db 0x0d
      004D4A 00                    3906 	.db 0x00
                                   3907 	.area CSEG    (CODE)
                                   3908 	.area CONST   (CODE)
      004D4B                       3909 ___str_22:
      004D4B E2                    3910 	.db 0xe2
      004D4C 95                    3911 	.db 0x95
      004D4D 91                    3912 	.db 0x91
      004D4E 20 20 20 20 20 20 20  3913 	.ascii "       ! ADDRESS OUT OF RANGE !         "
             21 20 41 44 44 52 45
             53 53 20 4F 55 54 20
             4F 46 20 52 41 4E 47
             45 20 21 20 20 20 20
             20 20 20 20 20
      004D76 E2                    3914 	.db 0xe2
      004D77 95                    3915 	.db 0x95
      004D78 91                    3916 	.db 0x91
      004D79 0A                    3917 	.db 0x0a
      004D7A 0D                    3918 	.db 0x0d
      004D7B 00                    3919 	.db 0x00
                                   3920 	.area CSEG    (CODE)
                                   3921 	.area CONST   (CODE)
      004D7C                       3922 ___str_23:
      004D7C E2                    3923 	.db 0xe2
      004D7D 95                    3924 	.db 0x95
      004D7E 91                    3925 	.db 0x91
      004D7F 20 20 20 20 20 50 6C  3926 	.ascii "     Please Enter Valid Address         "
             65 61 73 65 20 45 6E
             74 65 72 20 56 61 6C
             69 64 20 41 64 64 72
             65 73 73 20 20 20 20
             20 20 20 20 20
      004DA7 E2                    3927 	.db 0xe2
      004DA8 95                    3928 	.db 0x95
      004DA9 91                    3929 	.db 0x91
      004DAA 0A                    3930 	.db 0x0a
      004DAB 0D                    3931 	.db 0x0d
      004DAC 00                    3932 	.db 0x00
                                   3933 	.area CSEG    (CODE)
                                   3934 	.area CONST   (CODE)
      004DAD                       3935 ___str_24:
      004DAD E2                    3936 	.db 0xe2
      004DAE 95                    3937 	.db 0x95
      004DAF 9A                    3938 	.db 0x9a
      004DB0 E2                    3939 	.db 0xe2
      004DB1 95                    3940 	.db 0x95
      004DB2 90                    3941 	.db 0x90
      004DB3 E2                    3942 	.db 0xe2
      004DB4 95                    3943 	.db 0x95
      004DB5 90                    3944 	.db 0x90
      004DB6 E2                    3945 	.db 0xe2
      004DB7 95                    3946 	.db 0x95
      004DB8 90                    3947 	.db 0x90
      004DB9 E2                    3948 	.db 0xe2
      004DBA 95                    3949 	.db 0x95
      004DBB 90                    3950 	.db 0x90
      004DBC E2                    3951 	.db 0xe2
      004DBD 95                    3952 	.db 0x95
      004DBE 90                    3953 	.db 0x90
      004DBF E2                    3954 	.db 0xe2
      004DC0 95                    3955 	.db 0x95
      004DC1 90                    3956 	.db 0x90
      004DC2 E2                    3957 	.db 0xe2
      004DC3 95                    3958 	.db 0x95
      004DC4 90                    3959 	.db 0x90
      004DC5 E2                    3960 	.db 0xe2
      004DC6 95                    3961 	.db 0x95
      004DC7 90                    3962 	.db 0x90
      004DC8 E2                    3963 	.db 0xe2
      004DC9 95                    3964 	.db 0x95
      004DCA 90                    3965 	.db 0x90
      004DCB E2                    3966 	.db 0xe2
      004DCC 95                    3967 	.db 0x95
      004DCD 90                    3968 	.db 0x90
      004DCE E2                    3969 	.db 0xe2
      004DCF 95                    3970 	.db 0x95
      004DD0 90                    3971 	.db 0x90
      004DD1 E2                    3972 	.db 0xe2
      004DD2 95                    3973 	.db 0x95
      004DD3 90                    3974 	.db 0x90
      004DD4 E2                    3975 	.db 0xe2
      004DD5 95                    3976 	.db 0x95
      004DD6 90                    3977 	.db 0x90
      004DD7 E2                    3978 	.db 0xe2
      004DD8 95                    3979 	.db 0x95
      004DD9 90                    3980 	.db 0x90
      004DDA E2                    3981 	.db 0xe2
      004DDB 95                    3982 	.db 0x95
      004DDC 90                    3983 	.db 0x90
      004DDD E2                    3984 	.db 0xe2
      004DDE 95                    3985 	.db 0x95
      004DDF 90                    3986 	.db 0x90
      004DE0 E2                    3987 	.db 0xe2
      004DE1 95                    3988 	.db 0x95
      004DE2 90                    3989 	.db 0x90
      004DE3 E2                    3990 	.db 0xe2
      004DE4 95                    3991 	.db 0x95
      004DE5 90                    3992 	.db 0x90
      004DE6 E2                    3993 	.db 0xe2
      004DE7 95                    3994 	.db 0x95
      004DE8 90                    3995 	.db 0x90
      004DE9 E2                    3996 	.db 0xe2
      004DEA 95                    3997 	.db 0x95
      004DEB 90                    3998 	.db 0x90
      004DEC E2                    3999 	.db 0xe2
      004DED 95                    4000 	.db 0x95
      004DEE 90                    4001 	.db 0x90
      004DEF E2                    4002 	.db 0xe2
      004DF0 95                    4003 	.db 0x95
      004DF1 90                    4004 	.db 0x90
      004DF2 E2                    4005 	.db 0xe2
      004DF3 95                    4006 	.db 0x95
      004DF4 90                    4007 	.db 0x90
      004DF5 E2                    4008 	.db 0xe2
      004DF6 95                    4009 	.db 0x95
      004DF7 90                    4010 	.db 0x90
      004DF8 E2                    4011 	.db 0xe2
      004DF9 95                    4012 	.db 0x95
      004DFA 90                    4013 	.db 0x90
      004DFB E2                    4014 	.db 0xe2
      004DFC 95                    4015 	.db 0x95
      004DFD 90                    4016 	.db 0x90
      004DFE E2                    4017 	.db 0xe2
      004DFF 95                    4018 	.db 0x95
      004E00 90                    4019 	.db 0x90
      004E01 E2                    4020 	.db 0xe2
      004E02 95                    4021 	.db 0x95
      004E03 90                    4022 	.db 0x90
      004E04 E2                    4023 	.db 0xe2
      004E05 95                    4024 	.db 0x95
      004E06 90                    4025 	.db 0x90
      004E07 E2                    4026 	.db 0xe2
      004E08 95                    4027 	.db 0x95
      004E09 90                    4028 	.db 0x90
      004E0A E2                    4029 	.db 0xe2
      004E0B 95                    4030 	.db 0x95
      004E0C 90                    4031 	.db 0x90
      004E0D E2                    4032 	.db 0xe2
      004E0E 95                    4033 	.db 0x95
      004E0F 90                    4034 	.db 0x90
      004E10 E2                    4035 	.db 0xe2
      004E11 95                    4036 	.db 0x95
      004E12 90                    4037 	.db 0x90
      004E13 E2                    4038 	.db 0xe2
      004E14 95                    4039 	.db 0x95
      004E15 90                    4040 	.db 0x90
      004E16 E2                    4041 	.db 0xe2
      004E17 95                    4042 	.db 0x95
      004E18 90                    4043 	.db 0x90
      004E19 E2                    4044 	.db 0xe2
      004E1A 95                    4045 	.db 0x95
      004E1B 90                    4046 	.db 0x90
      004E1C E2                    4047 	.db 0xe2
      004E1D 95                    4048 	.db 0x95
      004E1E 90                    4049 	.db 0x90
      004E1F E2                    4050 	.db 0xe2
      004E20 95                    4051 	.db 0x95
      004E21 90                    4052 	.db 0x90
      004E22 E2                    4053 	.db 0xe2
      004E23 95                    4054 	.db 0x95
      004E24 90                    4055 	.db 0x90
      004E25 E2                    4056 	.db 0xe2
      004E26 95                    4057 	.db 0x95
      004E27 90                    4058 	.db 0x90
      004E28 E2                    4059 	.db 0xe2
      004E29 95                    4060 	.db 0x95
      004E2A 90                    4061 	.db 0x90
      004E2B E2                    4062 	.db 0xe2
      004E2C 95                    4063 	.db 0x95
      004E2D 90                    4064 	.db 0x90
      004E2E E2                    4065 	.db 0xe2
      004E2F 95                    4066 	.db 0x95
      004E30 9D                    4067 	.db 0x9d
      004E31 0A                    4068 	.db 0x0a
      004E32 0D                    4069 	.db 0x0d
      004E33 00                    4070 	.db 0x00
                                   4071 	.area CSEG    (CODE)
                                   4072 	.area CONST   (CODE)
      004E34                       4073 ___str_25:
      004E34 E2                    4074 	.db 0xe2
      004E35 94                    4075 	.db 0x94
      004E36 82                    4076 	.db 0x82
      004E37 20 45 6E 74 65 72 20  4077 	.ascii " Enter data (hex, up to 2 characters): "
             64 61 74 61 20 28 68
             65 78 2C 20 75 70 20
             74 6F 20 32 20 63 68
             61 72 61 63 74 65 72
             73 29 3A 20
      004E5E 0A                    4078 	.db 0x0a
      004E5F 0D                    4079 	.db 0x0d
      004E60 7C                    4080 	.ascii "|"
      004E61 00                    4081 	.db 0x00
                                   4082 	.area CSEG    (CODE)
                                   4083 	.area CONST   (CODE)
      004E62                       4084 ___str_26:
      004E62 0A                    4085 	.db 0x0a
      004E63 0D                    4086 	.db 0x0d
      004E64 E2                    4087 	.db 0xe2
      004E65 94                    4088 	.db 0x94
      004E66 82                    4089 	.db 0x82
      004E67 20 45 6E 74 65 72 65  4090 	.ascii " Entered data: 0x%03X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 33 58
      004E7C 0A                    4091 	.db 0x0a
      004E7D 0D                    4092 	.db 0x0d
      004E7E 00                    4093 	.db 0x00
                                   4094 	.area CSEG    (CODE)
                                   4095 	.area CONST   (CODE)
      004E7F                       4096 ___str_27:
      004E7F 44 61 74 61 20 6F 75  4097 	.ascii "Data out of Range"
             74 20 6F 66 20 52 61
             6E 67 65
      004E90 0A                    4098 	.db 0x0a
      004E91 0D                    4099 	.db 0x0d
      004E92 00                    4100 	.db 0x00
                                   4101 	.area CSEG    (CODE)
                                   4102 	.area CONST   (CODE)
      004E93                       4103 ___str_28:
      004E93 45 72 72 6F 72 3A 20  4104 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      004EBB 0A                    4105 	.db 0x0a
      004EBC 0D                    4106 	.db 0x0d
      004EBD 00                    4107 	.db 0x00
                                   4108 	.area CSEG    (CODE)
                                   4109 	.area CONST   (CODE)
      004EBE                       4110 ___str_29:
      004EBE 45 72 72 6F 72 3A 20  4111 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      004EDE 0A                    4112 	.db 0x0a
      004EDF 0D                    4113 	.db 0x0d
      004EE0 00                    4114 	.db 0x00
                                   4115 	.area CSEG    (CODE)
                                   4116 	.area CONST   (CODE)
      004EE1                       4117 ___str_30:
      004EE1 45 72 72 6F 72 3A 20  4118 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      004EF7 0A                    4119 	.db 0x0a
      004EF8 0D                    4120 	.db 0x0d
      004EF9 00                    4121 	.db 0x00
                                   4122 	.area CSEG    (CODE)
                                   4123 	.area CONST   (CODE)
      004EFA                       4124 ___str_31:
      004EFA 7C 20 57 72 69 74 69  4125 	.ascii "| Writing at Address 0x%03X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 33 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      004F2C 0A                    4126 	.db 0x0a
      004F2D 0D                    4127 	.db 0x0d
      004F2E 00                    4128 	.db 0x00
                                   4129 	.area CSEG    (CODE)
                                   4130 	.area CONST   (CODE)
      004F2F                       4131 ___str_32:
      004F2F E2                    4132 	.db 0xe2
      004F30 94                    4133 	.db 0x94
      004F31 82                    4134 	.db 0x82
      004F32 20 57 72 69 74 65 20  4135 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      004F61 E2                    4136 	.db 0xe2
      004F62 94                    4137 	.db 0x94
      004F63 82                    4138 	.db 0x82
      004F64 0A                    4139 	.db 0x0a
      004F65 0D                    4140 	.db 0x0d
      004F66 00                    4141 	.db 0x00
                                   4142 	.area CSEG    (CODE)
                                   4143 	.area CONST   (CODE)
      004F67                       4144 ___str_33:
      004F67 E2                    4145 	.db 0xe2
      004F68 94                    4146 	.db 0x94
      004F69 94                    4147 	.db 0x94
      004F6A E2                    4148 	.db 0xe2
      004F6B 94                    4149 	.db 0x94
      004F6C 80                    4150 	.db 0x80
      004F6D E2                    4151 	.db 0xe2
      004F6E 94                    4152 	.db 0x94
      004F6F 80                    4153 	.db 0x80
      004F70 E2                    4154 	.db 0xe2
      004F71 94                    4155 	.db 0x94
      004F72 80                    4156 	.db 0x80
      004F73 E2                    4157 	.db 0xe2
      004F74 94                    4158 	.db 0x94
      004F75 80                    4159 	.db 0x80
      004F76 E2                    4160 	.db 0xe2
      004F77 94                    4161 	.db 0x94
      004F78 80                    4162 	.db 0x80
      004F79 E2                    4163 	.db 0xe2
      004F7A 94                    4164 	.db 0x94
      004F7B 80                    4165 	.db 0x80
      004F7C E2                    4166 	.db 0xe2
      004F7D 94                    4167 	.db 0x94
      004F7E 80                    4168 	.db 0x80
      004F7F E2                    4169 	.db 0xe2
      004F80 94                    4170 	.db 0x94
      004F81 80                    4171 	.db 0x80
      004F82 E2                    4172 	.db 0xe2
      004F83 94                    4173 	.db 0x94
      004F84 80                    4174 	.db 0x80
      004F85 E2                    4175 	.db 0xe2
      004F86 94                    4176 	.db 0x94
      004F87 80                    4177 	.db 0x80
      004F88 E2                    4178 	.db 0xe2
      004F89 94                    4179 	.db 0x94
      004F8A 80                    4180 	.db 0x80
      004F8B E2                    4181 	.db 0xe2
      004F8C 94                    4182 	.db 0x94
      004F8D 80                    4183 	.db 0x80
      004F8E E2                    4184 	.db 0xe2
      004F8F 94                    4185 	.db 0x94
      004F90 80                    4186 	.db 0x80
      004F91 E2                    4187 	.db 0xe2
      004F92 94                    4188 	.db 0x94
      004F93 80                    4189 	.db 0x80
      004F94 E2                    4190 	.db 0xe2
      004F95 94                    4191 	.db 0x94
      004F96 80                    4192 	.db 0x80
      004F97 E2                    4193 	.db 0xe2
      004F98 94                    4194 	.db 0x94
      004F99 80                    4195 	.db 0x80
      004F9A E2                    4196 	.db 0xe2
      004F9B 94                    4197 	.db 0x94
      004F9C 80                    4198 	.db 0x80
      004F9D E2                    4199 	.db 0xe2
      004F9E 94                    4200 	.db 0x94
      004F9F 80                    4201 	.db 0x80
      004FA0 E2                    4202 	.db 0xe2
      004FA1 94                    4203 	.db 0x94
      004FA2 80                    4204 	.db 0x80
      004FA3 E2                    4205 	.db 0xe2
      004FA4 94                    4206 	.db 0x94
      004FA5 80                    4207 	.db 0x80
      004FA6 E2                    4208 	.db 0xe2
      004FA7 94                    4209 	.db 0x94
      004FA8 80                    4210 	.db 0x80
      004FA9 E2                    4211 	.db 0xe2
      004FAA 94                    4212 	.db 0x94
      004FAB 80                    4213 	.db 0x80
      004FAC E2                    4214 	.db 0xe2
      004FAD 94                    4215 	.db 0x94
      004FAE 80                    4216 	.db 0x80
      004FAF E2                    4217 	.db 0xe2
      004FB0 94                    4218 	.db 0x94
      004FB1 80                    4219 	.db 0x80
      004FB2 E2                    4220 	.db 0xe2
      004FB3 94                    4221 	.db 0x94
      004FB4 80                    4222 	.db 0x80
      004FB5 E2                    4223 	.db 0xe2
      004FB6 94                    4224 	.db 0x94
      004FB7 80                    4225 	.db 0x80
      004FB8 E2                    4226 	.db 0xe2
      004FB9 94                    4227 	.db 0x94
      004FBA 80                    4228 	.db 0x80
      004FBB E2                    4229 	.db 0xe2
      004FBC 94                    4230 	.db 0x94
      004FBD 80                    4231 	.db 0x80
      004FBE E2                    4232 	.db 0xe2
      004FBF 94                    4233 	.db 0x94
      004FC0 80                    4234 	.db 0x80
      004FC1 E2                    4235 	.db 0xe2
      004FC2 94                    4236 	.db 0x94
      004FC3 80                    4237 	.db 0x80
      004FC4 E2                    4238 	.db 0xe2
      004FC5 94                    4239 	.db 0x94
      004FC6 80                    4240 	.db 0x80
      004FC7 E2                    4241 	.db 0xe2
      004FC8 94                    4242 	.db 0x94
      004FC9 80                    4243 	.db 0x80
      004FCA E2                    4244 	.db 0xe2
      004FCB 94                    4245 	.db 0x94
      004FCC 80                    4246 	.db 0x80
      004FCD E2                    4247 	.db 0xe2
      004FCE 94                    4248 	.db 0x94
      004FCF 80                    4249 	.db 0x80
      004FD0 E2                    4250 	.db 0xe2
      004FD1 94                    4251 	.db 0x94
      004FD2 80                    4252 	.db 0x80
      004FD3 E2                    4253 	.db 0xe2
      004FD4 94                    4254 	.db 0x94
      004FD5 80                    4255 	.db 0x80
      004FD6 E2                    4256 	.db 0xe2
      004FD7 94                    4257 	.db 0x94
      004FD8 80                    4258 	.db 0x80
      004FD9 E2                    4259 	.db 0xe2
      004FDA 94                    4260 	.db 0x94
      004FDB 80                    4261 	.db 0x80
      004FDC E2                    4262 	.db 0xe2
      004FDD 94                    4263 	.db 0x94
      004FDE 80                    4264 	.db 0x80
      004FDF E2                    4265 	.db 0xe2
      004FE0 94                    4266 	.db 0x94
      004FE1 80                    4267 	.db 0x80
      004FE2 E2                    4268 	.db 0xe2
      004FE3 94                    4269 	.db 0x94
      004FE4 80                    4270 	.db 0x80
      004FE5 E2                    4271 	.db 0xe2
      004FE6 94                    4272 	.db 0x94
      004FE7 80                    4273 	.db 0x80
      004FE8 E2                    4274 	.db 0xe2
      004FE9 94                    4275 	.db 0x94
      004FEA 80                    4276 	.db 0x80
      004FEB E2                    4277 	.db 0xe2
      004FEC 94                    4278 	.db 0x94
      004FED 80                    4279 	.db 0x80
      004FEE E2                    4280 	.db 0xe2
      004FEF 94                    4281 	.db 0x94
      004FF0 80                    4282 	.db 0x80
      004FF1 E2                    4283 	.db 0xe2
      004FF2 94                    4284 	.db 0x94
      004FF3 80                    4285 	.db 0x80
      004FF4 E2                    4286 	.db 0xe2
      004FF5 94                    4287 	.db 0x94
      004FF6 80                    4288 	.db 0x80
      004FF7 E2                    4289 	.db 0xe2
      004FF8 94                    4290 	.db 0x94
      004FF9 98                    4291 	.db 0x98
      004FFA 0A                    4292 	.db 0x0a
      004FFB 0D                    4293 	.db 0x0d
      004FFC 00                    4294 	.db 0x00
                                   4295 	.area CSEG    (CODE)
                                   4296 	.area CONST   (CODE)
      004FFD                       4297 ___str_34:
      004FFD 45 72 72 6F 72 3A 20  4298 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      00502A 0A                    4299 	.db 0x0a
      00502B 0D                    4300 	.db 0x0d
      00502C 00                    4301 	.db 0x00
                                   4302 	.area CSEG    (CODE)
                                   4303 	.area CONST   (CODE)
      00502D                       4304 ___str_35:
      00502D 45 72 72 6F 72 3A 20  4305 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      005059 0A                    4306 	.db 0x0a
      00505A 0D                    4307 	.db 0x0d
      00505B 00                    4308 	.db 0x00
                                   4309 	.area CSEG    (CODE)
                                   4310 	.area CONST   (CODE)
      00505C                       4311 ___str_36:
      00505C E2                    4312 	.db 0xe2
      00505D 94                    4313 	.db 0x94
      00505E 82                    4314 	.db 0x82
      00505F 20 52 65 61 64 69 6E  4315 	.ascii " Reading from Adress: 0x%03X Data: 0x%02X                   "
             67 20 66 72 6F 6D 20
             41 64 72 65 73 73 3A
             20 30 78 25 30 33 58
             20 44 61 74 61 3A 20
             30 78 25 30 32 58 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      00509B 20                    4316 	.ascii " "
      00509C 0A                    4317 	.db 0x0a
      00509D 0D                    4318 	.db 0x0d
      00509E 00                    4319 	.db 0x00
                                   4320 	.area CSEG    (CODE)
                                   4321 	.area CONST   (CODE)
      00509F                       4322 ___str_37:
      00509F 7C 20 30 78 25 30 33  4323 	.ascii "| 0x%03X : 0x%02X "
             58 20 3A 20 30 78 25
             30 32 58 20
      0050B1 0A                    4324 	.db 0x0a
      0050B2 0D                    4325 	.db 0x0d
      0050B3 00                    4326 	.db 0x00
                                   4327 	.area CSEG    (CODE)
                                   4328 	.area CONST   (CODE)
      0050B4                       4329 ___str_38:
      0050B4 E2                    4330 	.db 0xe2
      0050B5 94                    4331 	.db 0x94
      0050B6 82                    4332 	.db 0x82
      0050B7 20 52 65 61 64 20 73  4333 	.ascii " Read successful!                 "
             75 63 63 65 73 73 66
             75 6C 21 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20
      0050D9 E2                    4334 	.db 0xe2
      0050DA 94                    4335 	.db 0x94
      0050DB 82                    4336 	.db 0x82
      0050DC 0A                    4337 	.db 0x0a
      0050DD 0D                    4338 	.db 0x0d
      0050DE 00                    4339 	.db 0x00
                                   4340 	.area CSEG    (CODE)
                                   4341 	.area CONST   (CODE)
      0050DF                       4342 ___str_39:
      0050DF 41 43 4B 20 44 49 44  4343 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      0050F1 0A                    4344 	.db 0x0a
      0050F2 0D                    4345 	.db 0x0d
      0050F3 00                    4346 	.db 0x00
                                   4347 	.area CSEG    (CODE)
                                   4348 	.area CONST   (CODE)
      0050F4                       4349 ___str_40:
      0050F4 57 72 69 74 69 6E 67  4350 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      005119 0A                    4351 	.db 0x0a
      00511A 0D                    4352 	.db 0x0d
      00511B 00                    4353 	.db 0x00
                                   4354 	.area CSEG    (CODE)
                                   4355 	.area CONST   (CODE)
      00511C                       4356 ___str_41:
      00511C 52 65 61 64 20 62 61  4357 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      005141 0A                    4358 	.db 0x0a
      005142 0D                    4359 	.db 0x0d
      005143 00                    4360 	.db 0x00
                                   4361 	.area CSEG    (CODE)
                                   4362 	.area CONST   (CODE)
      005144                       4363 ___str_42:
      005144 4D 41 54 43 48 20 2D  4364 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      005162 0A                    4365 	.db 0x0a
      005163 0D                    4366 	.db 0x0d
      005164 00                    4367 	.db 0x00
                                   4368 	.area CSEG    (CODE)
                                   4369 	.area CONST   (CODE)
      005165                       4370 ___str_43:
      005165 45 52 52 4F 52 20 2D  4371 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      00517B 0A                    4372 	.db 0x0a
      00517C 0D                    4373 	.db 0x0d
      00517D 00                    4374 	.db 0x00
                                   4375 	.area CSEG    (CODE)
                                   4376 	.area XINIT   (CODE)
      005189                       4377 __xinit__address_range_flag:
      005189 01 00                 4378 	.byte #0x01, #0x00	;  1
      00518B                       4379 __xinit__data_range_flag:
      00518B 01 00                 4380 	.byte #0x01, #0x00	;  1
      00518D                       4381 __xinit__block:
      00518D 00 00                 4382 	.byte #0x00, #0x00	; 0
                                   4383 	.area CABS    (ABS,CODE)
