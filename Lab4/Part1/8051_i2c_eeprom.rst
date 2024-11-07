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
      00308F 74 28            [12]  628 	mov	a,#___str_0
      003091 C0 E0            [24]  629 	push	acc
      003093 74 46            [12]  630 	mov	a,#(___str_0 >> 8)
      003095 C0 E0            [24]  631 	push	acc
      003097 74 80            [12]  632 	mov	a,#0x80
      003099 C0 E0            [24]  633 	push	acc
      00309B 12 3B C6         [24]  634 	lcall	_printf
      00309E 15 81            [12]  635 	dec	sp
      0030A0 15 81            [12]  636 	dec	sp
      0030A2 15 81            [12]  637 	dec	sp
                                    638 ;	8051_i2c_eeprom.c:47: printf("║           I2C Memory Management System v1.0            ║\n\r");
      0030A4 74 DA            [12]  639 	mov	a,#___str_1
      0030A6 C0 E0            [24]  640 	push	acc
      0030A8 74 46            [12]  641 	mov	a,#(___str_1 >> 8)
      0030AA C0 E0            [24]  642 	push	acc
      0030AC 74 80            [12]  643 	mov	a,#0x80
      0030AE C0 E0            [24]  644 	push	acc
      0030B0 12 3B C6         [24]  645 	lcall	_printf
      0030B3 15 81            [12]  646 	dec	sp
      0030B5 15 81            [12]  647 	dec	sp
      0030B7 15 81            [12]  648 	dec	sp
                                    649 ;	8051_i2c_eeprom.c:48: printf("╚════════════════════════════════════════════════════════╝\n\r");
      0030B9 74 1B            [12]  650 	mov	a,#___str_2
      0030BB C0 E0            [24]  651 	push	acc
      0030BD 74 47            [12]  652 	mov	a,#(___str_2 >> 8)
      0030BF C0 E0            [24]  653 	push	acc
      0030C1 74 80            [12]  654 	mov	a,#0x80
      0030C3 C0 E0            [24]  655 	push	acc
      0030C5 12 3B C6         [24]  656 	lcall	_printf
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
      0030CF 74 CC            [12]  671 	mov	a,#___str_3
      0030D1 C0 E0            [24]  672 	push	acc
      0030D3 74 47            [12]  673 	mov	a,#(___str_3 >> 8)
      0030D5 C0 E0            [24]  674 	push	acc
      0030D7 74 80            [12]  675 	mov	a,#0x80
      0030D9 C0 E0            [24]  676 	push	acc
      0030DB 12 3B C6         [24]  677 	lcall	_printf
      0030DE 15 81            [12]  678 	dec	sp
      0030E0 15 81            [12]  679 	dec	sp
      0030E2 15 81            [12]  680 	dec	sp
                                    681 ;	8051_i2c_eeprom.c:55: printf("│  Command   │               Description                  │\n\r");
      0030E4 74 82            [12]  682 	mov	a,#___str_4
      0030E6 C0 E0            [24]  683 	push	acc
      0030E8 74 48            [12]  684 	mov	a,#(___str_4 >> 8)
      0030EA C0 E0            [24]  685 	push	acc
      0030EC 74 80            [12]  686 	mov	a,#0x80
      0030EE C0 E0            [24]  687 	push	acc
      0030F0 12 3B C6         [24]  688 	lcall	_printf
      0030F3 15 81            [12]  689 	dec	sp
      0030F5 15 81            [12]  690 	dec	sp
      0030F7 15 81            [12]  691 	dec	sp
                                    692 ;	8051_i2c_eeprom.c:56: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      0030F9 74 C6            [12]  693 	mov	a,#___str_5
      0030FB C0 E0            [24]  694 	push	acc
      0030FD 74 48            [12]  695 	mov	a,#(___str_5 >> 8)
      0030FF C0 E0            [24]  696 	push	acc
      003101 74 80            [12]  697 	mov	a,#0x80
      003103 C0 E0            [24]  698 	push	acc
      003105 12 3B C6         [24]  699 	lcall	_printf
      003108 15 81            [12]  700 	dec	sp
      00310A 15 81            [12]  701 	dec	sp
      00310C 15 81            [12]  702 	dec	sp
                                    703 ;	8051_i2c_eeprom.c:57: printf("│     R      │ Read from address                          │\n\r");
      00310E 74 7A            [12]  704 	mov	a,#___str_6
      003110 C0 E0            [24]  705 	push	acc
      003112 74 49            [12]  706 	mov	a,#(___str_6 >> 8)
      003114 C0 E0            [24]  707 	push	acc
      003116 74 80            [12]  708 	mov	a,#0x80
      003118 C0 E0            [24]  709 	push	acc
      00311A 12 3B C6         [24]  710 	lcall	_printf
      00311D 15 81            [12]  711 	dec	sp
      00311F 15 81            [12]  712 	dec	sp
      003121 15 81            [12]  713 	dec	sp
                                    714 ;	8051_i2c_eeprom.c:58: printf("│     W      │ Write data to address                      │\n\r");
      003123 74 BE            [12]  715 	mov	a,#___str_7
      003125 C0 E0            [24]  716 	push	acc
      003127 74 49            [12]  717 	mov	a,#(___str_7 >> 8)
      003129 C0 E0            [24]  718 	push	acc
      00312B 74 80            [12]  719 	mov	a,#0x80
      00312D C0 E0            [24]  720 	push	acc
      00312F 12 3B C6         [24]  721 	lcall	_printf
      003132 15 81            [12]  722 	dec	sp
      003134 15 81            [12]  723 	dec	sp
      003136 15 81            [12]  724 	dec	sp
                                    725 ;	8051_i2c_eeprom.c:59: printf("│     H      │ Display hex dump                           │\n\r");
      003138 74 02            [12]  726 	mov	a,#___str_8
      00313A C0 E0            [24]  727 	push	acc
      00313C 74 4A            [12]  728 	mov	a,#(___str_8 >> 8)
      00313E C0 E0            [24]  729 	push	acc
      003140 74 80            [12]  730 	mov	a,#0x80
      003142 C0 E0            [24]  731 	push	acc
      003144 12 3B C6         [24]  732 	lcall	_printf
      003147 15 81            [12]  733 	dec	sp
      003149 15 81            [12]  734 	dec	sp
      00314B 15 81            [12]  735 	dec	sp
                                    736 ;	8051_i2c_eeprom.c:60: printf("│     X      │ Reset memory system                        │\n\r");
      00314D 74 46            [12]  737 	mov	a,#___str_9
      00314F C0 E0            [24]  738 	push	acc
      003151 74 4A            [12]  739 	mov	a,#(___str_9 >> 8)
      003153 C0 E0            [24]  740 	push	acc
      003155 74 80            [12]  741 	mov	a,#0x80
      003157 C0 E0            [24]  742 	push	acc
      003159 12 3B C6         [24]  743 	lcall	_printf
      00315C 15 81            [12]  744 	dec	sp
      00315E 15 81            [12]  745 	dec	sp
      003160 15 81            [12]  746 	dec	sp
                                    747 ;	8051_i2c_eeprom.c:61: printf("│     ?      │ Display this help menu                     │\n\r");
      003162 74 8A            [12]  748 	mov	a,#___str_10
      003164 C0 E0            [24]  749 	push	acc
      003166 74 4A            [12]  750 	mov	a,#(___str_10 >> 8)
      003168 C0 E0            [24]  751 	push	acc
      00316A 74 80            [12]  752 	mov	a,#0x80
      00316C C0 E0            [24]  753 	push	acc
      00316E 12 3B C6         [24]  754 	lcall	_printf
      003171 15 81            [12]  755 	dec	sp
      003173 15 81            [12]  756 	dec	sp
      003175 15 81            [12]  757 	dec	sp
                                    758 ;	8051_i2c_eeprom.c:62: printf("│     Q      │ Quit program                               │\n\r");
      003177 74 CE            [12]  759 	mov	a,#___str_11
      003179 C0 E0            [24]  760 	push	acc
      00317B 74 4A            [12]  761 	mov	a,#(___str_11 >> 8)
      00317D C0 E0            [24]  762 	push	acc
      00317F 74 80            [12]  763 	mov	a,#0x80
      003181 C0 E0            [24]  764 	push	acc
      003183 12 3B C6         [24]  765 	lcall	_printf
      003186 15 81            [12]  766 	dec	sp
      003188 15 81            [12]  767 	dec	sp
      00318A 15 81            [12]  768 	dec	sp
                                    769 ;	8051_i2c_eeprom.c:63: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      00318C 74 12            [12]  770 	mov	a,#___str_12
      00318E C0 E0            [24]  771 	push	acc
      003190 74 4B            [12]  772 	mov	a,#(___str_12 >> 8)
      003192 C0 E0            [24]  773 	push	acc
      003194 74 80            [12]  774 	mov	a,#0x80
      003196 C0 E0            [24]  775 	push	acc
      003198 12 3B C6         [24]  776 	lcall	_printf
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
      0031AE 12 3A 87         [24]  804 	lcall	_i2c_start
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
      0031C0 74 C6            [12]  816 	mov	a,#___str_13
      0031C2 C0 E0            [24]  817 	push	acc
      0031C4 74 4B            [12]  818 	mov	a,#(___str_13 >> 8)
      0031C6 C0 E0            [24]  819 	push	acc
      0031C8 74 80            [12]  820 	mov	a,#0x80
      0031CA C0 E0            [24]  821 	push	acc
      0031CC 12 3B C6         [24]  822 	lcall	_printf
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
      0031EB 74 CF            [12]  840 	mov	a,#___str_14
      0031ED C0 E0            [24]  841 	push	acc
      0031EF 74 4B            [12]  842 	mov	a,#(___str_14 >> 8)
      0031F1 C0 E0            [24]  843 	push	acc
      0031F3 74 80            [12]  844 	mov	a,#0x80
      0031F5 C0 E0            [24]  845 	push	acc
      0031F7 12 3B C6         [24]  846 	lcall	_printf
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
      003249 74 41            [12]  901 	mov	a,#___str_15
      00324B C0 E0            [24]  902 	push	acc
      00324D 74 4C            [12]  903 	mov	a,#(___str_15 >> 8)
      00324F C0 E0            [24]  904 	push	acc
      003251 74 80            [12]  905 	mov	a,#0x80
      003253 C0 E0            [24]  906 	push	acc
      003255 12 3B C6         [24]  907 	lcall	_printf
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
      003273 74 52            [12]  926 	mov	a,#___str_16
      003275 C0 E0            [24]  927 	push	acc
      003277 74 4C            [12]  928 	mov	a,#(___str_16 >> 8)
      003279 C0 E0            [24]  929 	push	acc
      00327B 74 80            [12]  930 	mov	a,#0x80
      00327D C0 E0            [24]  931 	push	acc
      00327F 12 3B C6         [24]  932 	lcall	_printf
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
      0032AF 74 C6            [12]  963 	mov	a,#___str_17
      0032B1 C0 E0            [24]  964 	push	acc
      0032B3 74 4C            [12]  965 	mov	a,#(___str_17 >> 8)
      0032B5 C0 E0            [24]  966 	push	acc
      0032B7 74 80            [12]  967 	mov	a,#0x80
      0032B9 C0 E0            [24]  968 	push	acc
      0032BB 12 3B C6         [24]  969 	lcall	_printf
      0032BE E5 81            [12]  970 	mov	a,sp
      0032C0 24 FB            [12]  971 	add	a,#0xfb
      0032C2 F5 81            [12]  972 	mov	sp,a
      0032C4 D0 06            [24]  973 	pop	ar6
      0032C6 D0 07            [24]  974 	pop	ar7
                                    975 ;	8051_i2c_eeprom.c:113: eeprom_read(addr);
      0032C8 8E 82            [24]  976 	mov	dpl,r6
      0032CA 8F 83            [24]  977 	mov	dph,r7
      0032CC 12 38 46         [24]  978 	lcall	_eeprom_read
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
      0032D8 74 F2            [12]  990 	mov	a,#___str_18
      0032DA C0 E0            [24]  991 	push	acc
      0032DC 74 4C            [12]  992 	mov	a,#(___str_18 >> 8)
      0032DE C0 E0            [24]  993 	push	acc
      0032E0 74 80            [12]  994 	mov	a,#0x80
      0032E2 C0 E0            [24]  995 	push	acc
      0032E4 12 3B C6         [24]  996 	lcall	_printf
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
      0032F0 74 02            [12] 1018 	mov	a,#___str_19
      0032F2 C0 E0            [24] 1019 	push	acc
      0032F4 74 4D            [12] 1020 	mov	a,#(___str_19 >> 8)
      0032F6 C0 E0            [24] 1021 	push	acc
      0032F8 74 80            [12] 1022 	mov	a,#0x80
      0032FA C0 E0            [24] 1023 	push	acc
      0032FC 12 3B C6         [24] 1024 	lcall	_printf
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
      003316 74 33            [12] 1039 	mov	a,#___str_20
      003318 C0 E0            [24] 1040 	push	acc
      00331A 74 4D            [12] 1041 	mov	a,#(___str_20 >> 8)
      00331C C0 E0            [24] 1042 	push	acc
      00331E 74 80            [12] 1043 	mov	a,#0x80
      003320 C0 E0            [24] 1044 	push	acc
      003322 12 3B C6         [24] 1045 	lcall	_printf
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
      003474 74 38            [12] 1294 	mov	a,#___str_21
      003476 C0 E0            [24] 1295 	push	acc
      003478 74 4D            [12] 1296 	mov	a,#(___str_21 >> 8)
      00347A C0 E0            [24] 1297 	push	acc
      00347C 74 80            [12] 1298 	mov	a,#0x80
      00347E C0 E0            [24] 1299 	push	acc
      003480 12 3B C6         [24] 1300 	lcall	_printf
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
      003496 74 58            [12] 1314 	mov	a,#___str_22
      003498 C0 E0            [24] 1315 	push	acc
      00349A 74 4D            [12] 1316 	mov	a,#(___str_22 >> 8)
      00349C C0 E0            [24] 1317 	push	acc
      00349E 74 80            [12] 1318 	mov	a,#0x80
      0034A0 C0 E0            [24] 1319 	push	acc
      0034A2 12 3B C6         [24] 1320 	lcall	_printf
      0034A5 15 81            [12] 1321 	dec	sp
      0034A7 15 81            [12] 1322 	dec	sp
      0034A9 15 81            [12] 1323 	dec	sp
                                   1324 ;	8051_i2c_eeprom.c:176: printf("║       ! ADDRESS OUT OF RANGE !         ║\n\r");
      0034AB 74 DF            [12] 1325 	mov	a,#___str_23
      0034AD C0 E0            [24] 1326 	push	acc
      0034AF 74 4D            [12] 1327 	mov	a,#(___str_23 >> 8)
      0034B1 C0 E0            [24] 1328 	push	acc
      0034B3 74 80            [12] 1329 	mov	a,#0x80
      0034B5 C0 E0            [24] 1330 	push	acc
      0034B7 12 3B C6         [24] 1331 	lcall	_printf
      0034BA 15 81            [12] 1332 	dec	sp
      0034BC 15 81            [12] 1333 	dec	sp
      0034BE 15 81            [12] 1334 	dec	sp
                                   1335 ;	8051_i2c_eeprom.c:177: printf("║     Please Enter Valid Address         ║\n\r");
      0034C0 74 10            [12] 1336 	mov	a,#___str_24
      0034C2 C0 E0            [24] 1337 	push	acc
      0034C4 74 4E            [12] 1338 	mov	a,#(___str_24 >> 8)
      0034C6 C0 E0            [24] 1339 	push	acc
      0034C8 74 80            [12] 1340 	mov	a,#0x80
      0034CA C0 E0            [24] 1341 	push	acc
      0034CC 12 3B C6         [24] 1342 	lcall	_printf
      0034CF 15 81            [12] 1343 	dec	sp
      0034D1 15 81            [12] 1344 	dec	sp
      0034D3 15 81            [12] 1345 	dec	sp
                                   1346 ;	8051_i2c_eeprom.c:178: printf("╚══════════════════════════════════════════╝\n\r");
      0034D5 74 41            [12] 1347 	mov	a,#___str_25
      0034D7 C0 E0            [24] 1348 	push	acc
      0034D9 74 4E            [12] 1349 	mov	a,#(___str_25 >> 8)
      0034DB C0 E0            [24] 1350 	push	acc
      0034DD 74 80            [12] 1351 	mov	a,#0x80
      0034DF C0 E0            [24] 1352 	push	acc
      0034E1 12 3B C6         [24] 1353 	lcall	_printf
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
      003509 74 C8            [12] 1398 	mov	a,#___str_26
      00350B C0 E0            [24] 1399 	push	acc
      00350D 74 4E            [12] 1400 	mov	a,#(___str_26 >> 8)
      00350F C0 E0            [24] 1401 	push	acc
      003511 74 80            [12] 1402 	mov	a,#0x80
      003513 C0 E0            [24] 1403 	push	acc
      003515 12 3B C6         [24] 1404 	lcall	_printf
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
      00352F 74 33            [12] 1419 	mov	a,#___str_20
      003531 C0 E0            [24] 1420 	push	acc
      003533 74 4D            [12] 1421 	mov	a,#(___str_20 >> 8)
      003535 C0 E0            [24] 1422 	push	acc
      003537 74 80            [12] 1423 	mov	a,#0x80
      003539 C0 E0            [24] 1424 	push	acc
      00353B 12 3B C6         [24] 1425 	lcall	_printf
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
      003643 74 F6            [12] 1615 	mov	a,#___str_27
      003645 C0 E0            [24] 1616 	push	acc
      003647 74 4E            [12] 1617 	mov	a,#(___str_27 >> 8)
      003649 C0 E0            [24] 1618 	push	acc
      00364B 74 80            [12] 1619 	mov	a,#0x80
      00364D C0 E0            [24] 1620 	push	acc
      00364F 12 3B C6         [24] 1621 	lcall	_printf
      003652 E5 81            [12] 1622 	mov	a,sp
      003654 24 FB            [12] 1623 	add	a,#0xfb
      003656 F5 81            [12] 1624 	mov	sp,a
      003658 D0 07            [24] 1625 	pop	ar7
                                   1626 ;	8051_i2c_eeprom.c:234: if(data > 0xFE) 
      00365A EF               [12] 1627 	mov	a,r7
      00365B 24 01            [12] 1628 	add	a,#0xff - 0xfe
      00365D 50 20            [24] 1629 	jnc	00127$
                                   1630 ;	8051_i2c_eeprom.c:236: printf("Data out of Range\n\r");
      00365F 74 13            [12] 1631 	mov	a,#___str_28
      003661 C0 E0            [24] 1632 	push	acc
      003663 74 4F            [12] 1633 	mov	a,#(___str_28 >> 8)
      003665 C0 E0            [24] 1634 	push	acc
      003667 74 80            [12] 1635 	mov	a,#0x80
      003669 C0 E0            [24] 1636 	push	acc
      00366B 12 3B C6         [24] 1637 	lcall	_printf
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
      00368D 74 27            [12] 1675 	mov	a,#___str_29
      00368F C0 E0            [24] 1676 	push	acc
      003691 74 4F            [12] 1677 	mov	a,#(___str_29 >> 8)
      003693 C0 E0            [24] 1678 	push	acc
      003695 74 80            [12] 1679 	mov	a,#0x80
      003697 C0 E0            [24] 1680 	push	acc
      003699 12 3B C6         [24] 1681 	lcall	_printf
      00369C 15 81            [12] 1682 	dec	sp
      00369E 15 81            [12] 1683 	dec	sp
      0036A0 15 81            [12] 1684 	dec	sp
                                   1685 ;	8051_i2c_eeprom.c:247: if(address_range_flag && data_range_flag)
      0036A2 90 04 51         [24] 1686 	mov	dptr,#_address_range_flag
      0036A5 E0               [24] 1687 	movx	a,@dptr
      0036A6 F5 F0            [12] 1688 	mov	b,a
      0036A8 A3               [24] 1689 	inc	dptr
      0036A9 E0               [24] 1690 	movx	a,@dptr
      0036AA 45 F0            [12] 1691 	orl	a,b
      0036AC 70 03            [24] 1692 	jnz	00145$
      0036AE 02 38 2D         [24] 1693 	ljmp	00109$
      0036B1                       1694 00145$:
      0036B1 90 04 53         [24] 1695 	mov	dptr,#_data_range_flag
      0036B4 E0               [24] 1696 	movx	a,@dptr
      0036B5 F5 F0            [12] 1697 	mov	b,a
      0036B7 A3               [24] 1698 	inc	dptr
      0036B8 E0               [24] 1699 	movx	a,@dptr
      0036B9 45 F0            [12] 1700 	orl	a,b
      0036BB 70 03            [24] 1701 	jnz	00146$
      0036BD 02 38 2D         [24] 1702 	ljmp	00109$
      0036C0                       1703 00146$:
                                   1704 ;	8051_i2c_eeprom.c:249: printf("checkpoint 3\n\r");
      0036C0 74 37            [12] 1705 	mov	a,#___str_30
      0036C2 C0 E0            [24] 1706 	push	acc
      0036C4 74 4F            [12] 1707 	mov	a,#(___str_30 >> 8)
      0036C6 C0 E0            [24] 1708 	push	acc
      0036C8 74 80            [12] 1709 	mov	a,#0x80
      0036CA C0 E0            [24] 1710 	push	acc
      0036CC 12 3B C6         [24] 1711 	lcall	_printf
      0036CF 15 81            [12] 1712 	dec	sp
      0036D1 15 81            [12] 1713 	dec	sp
      0036D3 15 81            [12] 1714 	dec	sp
                                   1715 ;	8051_i2c_eeprom.c:250: i2c_start();
      0036D5 12 3A 87         [24] 1716 	lcall	_i2c_start
                                   1717 ;	8051_i2c_eeprom.c:253: if(!i2c_write(EEPROM_ID | block | WRITE)) {
      0036D8 90 04 55         [24] 1718 	mov	dptr,#_block
      0036DB E0               [24] 1719 	movx	a,@dptr
      0036DC FE               [12] 1720 	mov	r6,a
      0036DD A3               [24] 1721 	inc	dptr
      0036DE E0               [24] 1722 	movx	a,@dptr
      0036DF 43 06 A0         [24] 1723 	orl	ar6,#0xa0
      0036E2 8E 82            [24] 1724 	mov	dpl,r6
      0036E4 12 39 9A         [24] 1725 	lcall	_i2c_write
      0036E7 E5 82            [12] 1726 	mov	a,dpl
      0036E9 85 83 F0         [24] 1727 	mov	b,dph
      0036EC 45 F0            [12] 1728 	orl	a,b
      0036EE 70 1C            [24] 1729 	jnz	00102$
                                   1730 ;	8051_i2c_eeprom.c:254: printf("Error: No ACK for device address (write)\n\r");
      0036F0 74 46            [12] 1731 	mov	a,#___str_31
      0036F2 C0 E0            [24] 1732 	push	acc
      0036F4 74 4F            [12] 1733 	mov	a,#(___str_31 >> 8)
      0036F6 C0 E0            [24] 1734 	push	acc
      0036F8 74 80            [12] 1735 	mov	a,#0x80
      0036FA C0 E0            [24] 1736 	push	acc
      0036FC 12 3B C6         [24] 1737 	lcall	_printf
      0036FF 15 81            [12] 1738 	dec	sp
      003701 15 81            [12] 1739 	dec	sp
      003703 15 81            [12] 1740 	dec	sp
                                   1741 ;	8051_i2c_eeprom.c:255: i2c_stop();
      003705 12 3A 9C         [24] 1742 	lcall	_i2c_stop
                                   1743 ;	8051_i2c_eeprom.c:256: return 0;
      003708 90 00 00         [24] 1744 	mov	dptr,#0x0000
      00370B 22               [24] 1745 	ret
      00370C                       1746 00102$:
                                   1747 ;	8051_i2c_eeprom.c:260: if(!i2c_write((unsigned char)address)) {
      00370C 90 04 10         [24] 1748 	mov	dptr,#_eeprom_write_address_65536_84
      00370F E0               [24] 1749 	movx	a,@dptr
      003710 FE               [12] 1750 	mov	r6,a
      003711 A3               [24] 1751 	inc	dptr
      003712 E0               [24] 1752 	movx	a,@dptr
      003713 FF               [12] 1753 	mov	r7,a
      003714 8E 05            [24] 1754 	mov	ar5,r6
      003716 8D 82            [24] 1755 	mov	dpl,r5
      003718 C0 07            [24] 1756 	push	ar7
      00371A C0 06            [24] 1757 	push	ar6
      00371C 12 39 9A         [24] 1758 	lcall	_i2c_write
      00371F E5 82            [12] 1759 	mov	a,dpl
      003721 85 83 F0         [24] 1760 	mov	b,dph
      003724 D0 06            [24] 1761 	pop	ar6
      003726 D0 07            [24] 1762 	pop	ar7
      003728 45 F0            [12] 1763 	orl	a,b
      00372A 70 1C            [24] 1764 	jnz	00104$
                                   1765 ;	8051_i2c_eeprom.c:261: printf("Error: No ACK for memory address\n\r");
      00372C 74 71            [12] 1766 	mov	a,#___str_32
      00372E C0 E0            [24] 1767 	push	acc
      003730 74 4F            [12] 1768 	mov	a,#(___str_32 >> 8)
      003732 C0 E0            [24] 1769 	push	acc
      003734 74 80            [12] 1770 	mov	a,#0x80
      003736 C0 E0            [24] 1771 	push	acc
      003738 12 3B C6         [24] 1772 	lcall	_printf
      00373B 15 81            [12] 1773 	dec	sp
      00373D 15 81            [12] 1774 	dec	sp
      00373F 15 81            [12] 1775 	dec	sp
                                   1776 ;	8051_i2c_eeprom.c:262: i2c_stop();
      003741 12 3A 9C         [24] 1777 	lcall	_i2c_stop
                                   1778 ;	8051_i2c_eeprom.c:263: return 0;
      003744 90 00 00         [24] 1779 	mov	dptr,#0x0000
      003747 22               [24] 1780 	ret
      003748                       1781 00104$:
                                   1782 ;	8051_i2c_eeprom.c:267: if(!i2c_write(data)) {
      003748 90 04 0F         [24] 1783 	mov	dptr,#_eeprom_write_PARM_2
      00374B E0               [24] 1784 	movx	a,@dptr
      00374C FD               [12] 1785 	mov	r5,a
      00374D F5 82            [12] 1786 	mov	dpl,a
      00374F C0 07            [24] 1787 	push	ar7
      003751 C0 06            [24] 1788 	push	ar6
      003753 C0 05            [24] 1789 	push	ar5
      003755 12 39 9A         [24] 1790 	lcall	_i2c_write
      003758 E5 82            [12] 1791 	mov	a,dpl
      00375A 85 83 F0         [24] 1792 	mov	b,dph
      00375D D0 05            [24] 1793 	pop	ar5
      00375F D0 06            [24] 1794 	pop	ar6
      003761 D0 07            [24] 1795 	pop	ar7
      003763 45 F0            [12] 1796 	orl	a,b
      003765 70 1C            [24] 1797 	jnz	00106$
                                   1798 ;	8051_i2c_eeprom.c:268: printf("Error: No ACK for data\n\r");
      003767 74 94            [12] 1799 	mov	a,#___str_33
      003769 C0 E0            [24] 1800 	push	acc
      00376B 74 4F            [12] 1801 	mov	a,#(___str_33 >> 8)
      00376D C0 E0            [24] 1802 	push	acc
      00376F 74 80            [12] 1803 	mov	a,#0x80
      003771 C0 E0            [24] 1804 	push	acc
      003773 12 3B C6         [24] 1805 	lcall	_printf
      003776 15 81            [12] 1806 	dec	sp
      003778 15 81            [12] 1807 	dec	sp
      00377A 15 81            [12] 1808 	dec	sp
                                   1809 ;	8051_i2c_eeprom.c:269: i2c_stop();
      00377C 12 3A 9C         [24] 1810 	lcall	_i2c_stop
                                   1811 ;	8051_i2c_eeprom.c:270: return 0;
      00377F 90 00 00         [24] 1812 	mov	dptr,#0x0000
      003782 22               [24] 1813 	ret
      003783                       1814 00106$:
                                   1815 ;	8051_i2c_eeprom.c:273: i2c_stop();
      003783 C0 07            [24] 1816 	push	ar7
      003785 C0 06            [24] 1817 	push	ar6
      003787 C0 05            [24] 1818 	push	ar5
      003789 12 3A 9C         [24] 1819 	lcall	_i2c_stop
      00378C D0 05            [24] 1820 	pop	ar5
      00378E D0 06            [24] 1821 	pop	ar6
      003790 D0 07            [24] 1822 	pop	ar7
                                   1823 ;	8051_i2c_eeprom.c:275: for(int i = 0; i<100; i++)
      003792 7B 00            [12] 1824 	mov	r3,#0x00
      003794 7C 00            [12] 1825 	mov	r4,#0x00
      003796                       1826 00112$:
      003796 C3               [12] 1827 	clr	c
      003797 EB               [12] 1828 	mov	a,r3
      003798 94 64            [12] 1829 	subb	a,#0x64
      00379A EC               [12] 1830 	mov	a,r4
      00379B 64 80            [12] 1831 	xrl	a,#0x80
      00379D 94 80            [12] 1832 	subb	a,#0x80
      00379F 50 1E            [24] 1833 	jnc	00107$
                                   1834 ;	8051_i2c_eeprom.c:277: i2c_delay();
      0037A1 C0 07            [24] 1835 	push	ar7
      0037A3 C0 06            [24] 1836 	push	ar6
      0037A5 C0 05            [24] 1837 	push	ar5
      0037A7 C0 04            [24] 1838 	push	ar4
      0037A9 C0 03            [24] 1839 	push	ar3
      0037AB 12 3A A9         [24] 1840 	lcall	_i2c_delay
      0037AE D0 03            [24] 1841 	pop	ar3
      0037B0 D0 04            [24] 1842 	pop	ar4
      0037B2 D0 05            [24] 1843 	pop	ar5
      0037B4 D0 06            [24] 1844 	pop	ar6
      0037B6 D0 07            [24] 1845 	pop	ar7
                                   1846 ;	8051_i2c_eeprom.c:275: for(int i = 0; i<100; i++)
      0037B8 0B               [12] 1847 	inc	r3
      0037B9 BB 00 DA         [24] 1848 	cjne	r3,#0x00,00112$
      0037BC 0C               [12] 1849 	inc	r4
      0037BD 80 D7            [24] 1850 	sjmp	00112$
      0037BF                       1851 00107$:
                                   1852 ;	8051_i2c_eeprom.c:279: printf("checkpoint 4\n\r");
      0037BF C0 07            [24] 1853 	push	ar7
      0037C1 C0 06            [24] 1854 	push	ar6
      0037C3 C0 05            [24] 1855 	push	ar5
      0037C5 74 AD            [12] 1856 	mov	a,#___str_34
      0037C7 C0 E0            [24] 1857 	push	acc
      0037C9 74 4F            [12] 1858 	mov	a,#(___str_34 >> 8)
      0037CB C0 E0            [24] 1859 	push	acc
      0037CD 74 80            [12] 1860 	mov	a,#0x80
      0037CF C0 E0            [24] 1861 	push	acc
      0037D1 12 3B C6         [24] 1862 	lcall	_printf
      0037D4 15 81            [12] 1863 	dec	sp
      0037D6 15 81            [12] 1864 	dec	sp
      0037D8 15 81            [12] 1865 	dec	sp
      0037DA D0 05            [24] 1866 	pop	ar5
      0037DC D0 06            [24] 1867 	pop	ar6
      0037DE D0 07            [24] 1868 	pop	ar7
                                   1869 ;	8051_i2c_eeprom.c:280: printf("| Writing at Address 0x%03X Data 0x%02X          |\n\r", address, data);
      0037E0 7C 00            [12] 1870 	mov	r4,#0x00
      0037E2 C0 05            [24] 1871 	push	ar5
      0037E4 C0 04            [24] 1872 	push	ar4
      0037E6 C0 06            [24] 1873 	push	ar6
      0037E8 C0 07            [24] 1874 	push	ar7
      0037EA 74 BC            [12] 1875 	mov	a,#___str_35
      0037EC C0 E0            [24] 1876 	push	acc
      0037EE 74 4F            [12] 1877 	mov	a,#(___str_35 >> 8)
      0037F0 C0 E0            [24] 1878 	push	acc
      0037F2 74 80            [12] 1879 	mov	a,#0x80
      0037F4 C0 E0            [24] 1880 	push	acc
      0037F6 12 3B C6         [24] 1881 	lcall	_printf
      0037F9 E5 81            [12] 1882 	mov	a,sp
      0037FB 24 F9            [12] 1883 	add	a,#0xf9
      0037FD F5 81            [12] 1884 	mov	sp,a
                                   1885 ;	8051_i2c_eeprom.c:281: printf("│ Write successful!                             │\n\r");
      0037FF 74 F1            [12] 1886 	mov	a,#___str_36
      003801 C0 E0            [24] 1887 	push	acc
      003803 74 4F            [12] 1888 	mov	a,#(___str_36 >> 8)
      003805 C0 E0            [24] 1889 	push	acc
      003807 74 80            [12] 1890 	mov	a,#0x80
      003809 C0 E0            [24] 1891 	push	acc
      00380B 12 3B C6         [24] 1892 	lcall	_printf
      00380E 15 81            [12] 1893 	dec	sp
      003810 15 81            [12] 1894 	dec	sp
      003812 15 81            [12] 1895 	dec	sp
                                   1896 ;	8051_i2c_eeprom.c:282: printf("└───────────────────────────────────────────────┘\n\r");
      003814 74 29            [12] 1897 	mov	a,#___str_37
      003816 C0 E0            [24] 1898 	push	acc
      003818 74 50            [12] 1899 	mov	a,#(___str_37 >> 8)
      00381A C0 E0            [24] 1900 	push	acc
      00381C 74 80            [12] 1901 	mov	a,#0x80
      00381E C0 E0            [24] 1902 	push	acc
      003820 12 3B C6         [24] 1903 	lcall	_printf
      003823 15 81            [12] 1904 	dec	sp
      003825 15 81            [12] 1905 	dec	sp
      003827 15 81            [12] 1906 	dec	sp
                                   1907 ;	8051_i2c_eeprom.c:283: return 1;  // Success
      003829 90 00 01         [24] 1908 	mov	dptr,#0x0001
      00382C 22               [24] 1909 	ret
      00382D                       1910 00109$:
                                   1911 ;	8051_i2c_eeprom.c:285: printf("checkpoint 5\n\r");
      00382D 74 BF            [12] 1912 	mov	a,#___str_38
      00382F C0 E0            [24] 1913 	push	acc
      003831 74 50            [12] 1914 	mov	a,#(___str_38 >> 8)
      003833 C0 E0            [24] 1915 	push	acc
      003835 74 80            [12] 1916 	mov	a,#0x80
      003837 C0 E0            [24] 1917 	push	acc
      003839 12 3B C6         [24] 1918 	lcall	_printf
      00383C 15 81            [12] 1919 	dec	sp
      00383E 15 81            [12] 1920 	dec	sp
      003840 15 81            [12] 1921 	dec	sp
                                   1922 ;	8051_i2c_eeprom.c:286: return 0;
      003842 90 00 00         [24] 1923 	mov	dptr,#0x0000
                                   1924 ;	8051_i2c_eeprom.c:293: }
      003845 22               [24] 1925 	ret
                                   1926 ;------------------------------------------------------------
                                   1927 ;Allocation info for local variables in function 'eeprom_read'
                                   1928 ;------------------------------------------------------------
                                   1929 ;address                   Allocated with name '_eeprom_read_address_65536_92'
                                   1930 ;result                    Allocated with name '_eeprom_read_result_131072_94'
                                   1931 ;------------------------------------------------------------
                                   1932 ;	8051_i2c_eeprom.c:295: int eeprom_read(unsigned int address) 
                                   1933 ;	-----------------------------------------
                                   1934 ;	 function eeprom_read
                                   1935 ;	-----------------------------------------
      003846                       1936 _eeprom_read:
      003846 AF 83            [24] 1937 	mov	r7,dph
      003848 E5 82            [12] 1938 	mov	a,dpl
      00384A 90 04 12         [24] 1939 	mov	dptr,#_eeprom_read_address_65536_92
      00384D F0               [24] 1940 	movx	@dptr,a
      00384E EF               [12] 1941 	mov	a,r7
      00384F A3               [24] 1942 	inc	dptr
      003850 F0               [24] 1943 	movx	@dptr,a
                                   1944 ;	8051_i2c_eeprom.c:297: if(address_range_flag)
      003851 90 04 51         [24] 1945 	mov	dptr,#_address_range_flag
      003854 E0               [24] 1946 	movx	a,@dptr
      003855 F5 F0            [12] 1947 	mov	b,a
      003857 A3               [24] 1948 	inc	dptr
      003858 E0               [24] 1949 	movx	a,@dptr
      003859 45 F0            [12] 1950 	orl	a,b
      00385B 70 03            [24] 1951 	jnz	00127$
      00385D 02 39 96         [24] 1952 	ljmp	00108$
      003860                       1953 00127$:
                                   1954 ;	8051_i2c_eeprom.c:302: i2c_start();
      003860 12 3A 87         [24] 1955 	lcall	_i2c_start
                                   1956 ;	8051_i2c_eeprom.c:305: if(!i2c_write(EEPROM_ID | WRITE)) {
      003863 75 82 A0         [24] 1957 	mov	dpl,#0xa0
      003866 12 39 9A         [24] 1958 	lcall	_i2c_write
      003869 E5 82            [12] 1959 	mov	a,dpl
      00386B 85 83 F0         [24] 1960 	mov	b,dph
      00386E 45 F0            [12] 1961 	orl	a,b
      003870 70 1C            [24] 1962 	jnz	00102$
                                   1963 ;	8051_i2c_eeprom.c:306: printf("Error: No ACK for device address (write mode)\n\r");
      003872 74 CE            [12] 1964 	mov	a,#___str_39
      003874 C0 E0            [24] 1965 	push	acc
      003876 74 50            [12] 1966 	mov	a,#(___str_39 >> 8)
      003878 C0 E0            [24] 1967 	push	acc
      00387A 74 80            [12] 1968 	mov	a,#0x80
      00387C C0 E0            [24] 1969 	push	acc
      00387E 12 3B C6         [24] 1970 	lcall	_printf
      003881 15 81            [12] 1971 	dec	sp
      003883 15 81            [12] 1972 	dec	sp
      003885 15 81            [12] 1973 	dec	sp
                                   1974 ;	8051_i2c_eeprom.c:307: i2c_stop();
      003887 12 3A 9C         [24] 1975 	lcall	_i2c_stop
                                   1976 ;	8051_i2c_eeprom.c:308: return -1;
      00388A 90 FF FF         [24] 1977 	mov	dptr,#0xffff
      00388D 22               [24] 1978 	ret
      00388E                       1979 00102$:
                                   1980 ;	8051_i2c_eeprom.c:312: if(!i2c_write((unsigned char)address)) {
      00388E 90 04 12         [24] 1981 	mov	dptr,#_eeprom_read_address_65536_92
      003891 E0               [24] 1982 	movx	a,@dptr
      003892 FE               [12] 1983 	mov	r6,a
      003893 A3               [24] 1984 	inc	dptr
      003894 E0               [24] 1985 	movx	a,@dptr
      003895 FF               [12] 1986 	mov	r7,a
      003896 8E 05            [24] 1987 	mov	ar5,r6
      003898 8D 82            [24] 1988 	mov	dpl,r5
      00389A C0 07            [24] 1989 	push	ar7
      00389C C0 06            [24] 1990 	push	ar6
      00389E 12 39 9A         [24] 1991 	lcall	_i2c_write
      0038A1 E5 82            [12] 1992 	mov	a,dpl
      0038A3 85 83 F0         [24] 1993 	mov	b,dph
      0038A6 D0 06            [24] 1994 	pop	ar6
      0038A8 D0 07            [24] 1995 	pop	ar7
      0038AA 45 F0            [12] 1996 	orl	a,b
      0038AC 70 1C            [24] 1997 	jnz	00104$
                                   1998 ;	8051_i2c_eeprom.c:313: printf("Error: No ACK for memory address\n\r");
      0038AE 74 71            [12] 1999 	mov	a,#___str_32
      0038B0 C0 E0            [24] 2000 	push	acc
      0038B2 74 4F            [12] 2001 	mov	a,#(___str_32 >> 8)
      0038B4 C0 E0            [24] 2002 	push	acc
      0038B6 74 80            [12] 2003 	mov	a,#0x80
      0038B8 C0 E0            [24] 2004 	push	acc
      0038BA 12 3B C6         [24] 2005 	lcall	_printf
      0038BD 15 81            [12] 2006 	dec	sp
      0038BF 15 81            [12] 2007 	dec	sp
      0038C1 15 81            [12] 2008 	dec	sp
                                   2009 ;	8051_i2c_eeprom.c:314: i2c_stop();
      0038C3 12 3A 9C         [24] 2010 	lcall	_i2c_stop
                                   2011 ;	8051_i2c_eeprom.c:315: return -1;
      0038C6 90 FF FF         [24] 2012 	mov	dptr,#0xffff
      0038C9 22               [24] 2013 	ret
      0038CA                       2014 00104$:
                                   2015 ;	8051_i2c_eeprom.c:319: i2c_start();
      0038CA C0 07            [24] 2016 	push	ar7
      0038CC C0 06            [24] 2017 	push	ar6
      0038CE 12 3A 87         [24] 2018 	lcall	_i2c_start
                                   2019 ;	8051_i2c_eeprom.c:322: if(!i2c_write(EEPROM_ID | READ)) {
      0038D1 75 82 A1         [24] 2020 	mov	dpl,#0xa1
      0038D4 12 39 9A         [24] 2021 	lcall	_i2c_write
      0038D7 E5 82            [12] 2022 	mov	a,dpl
      0038D9 85 83 F0         [24] 2023 	mov	b,dph
      0038DC D0 06            [24] 2024 	pop	ar6
      0038DE D0 07            [24] 2025 	pop	ar7
      0038E0 45 F0            [12] 2026 	orl	a,b
      0038E2 70 1C            [24] 2027 	jnz	00106$
                                   2028 ;	8051_i2c_eeprom.c:323: printf("Error: No ACK for device address (read mode)\n\r");
      0038E4 74 FE            [12] 2029 	mov	a,#___str_40
      0038E6 C0 E0            [24] 2030 	push	acc
      0038E8 74 50            [12] 2031 	mov	a,#(___str_40 >> 8)
      0038EA C0 E0            [24] 2032 	push	acc
      0038EC 74 80            [12] 2033 	mov	a,#0x80
      0038EE C0 E0            [24] 2034 	push	acc
      0038F0 12 3B C6         [24] 2035 	lcall	_printf
      0038F3 15 81            [12] 2036 	dec	sp
      0038F5 15 81            [12] 2037 	dec	sp
      0038F7 15 81            [12] 2038 	dec	sp
                                   2039 ;	8051_i2c_eeprom.c:324: i2c_stop();
      0038F9 12 3A 9C         [24] 2040 	lcall	_i2c_stop
                                   2041 ;	8051_i2c_eeprom.c:325: return -1;
      0038FC 90 FF FF         [24] 2042 	mov	dptr,#0xffff
      0038FF 22               [24] 2043 	ret
      003900                       2044 00106$:
                                   2045 ;	8051_i2c_eeprom.c:329: result = i2c_read(0);  // 0 means send NACK
      003900 90 00 00         [24] 2046 	mov	dptr,#0x0000
      003903 C0 07            [24] 2047 	push	ar7
      003905 C0 06            [24] 2048 	push	ar6
      003907 12 3A 02         [24] 2049 	lcall	_i2c_read
      00390A AC 82            [24] 2050 	mov	r4,dpl
      00390C D0 06            [24] 2051 	pop	ar6
      00390E D0 07            [24] 2052 	pop	ar7
                                   2053 ;	8051_i2c_eeprom.c:330: printf("│ Reading from Adress: 0x%03X Data: 0x%02X                    \n\r", address, result);
      003910 7D 00            [12] 2054 	mov	r5,#0x00
      003912 C0 07            [24] 2055 	push	ar7
      003914 C0 06            [24] 2056 	push	ar6
      003916 C0 05            [24] 2057 	push	ar5
      003918 C0 04            [24] 2058 	push	ar4
      00391A C0 04            [24] 2059 	push	ar4
      00391C C0 05            [24] 2060 	push	ar5
      00391E C0 06            [24] 2061 	push	ar6
      003920 C0 07            [24] 2062 	push	ar7
      003922 74 2D            [12] 2063 	mov	a,#___str_41
      003924 C0 E0            [24] 2064 	push	acc
      003926 74 51            [12] 2065 	mov	a,#(___str_41 >> 8)
      003928 C0 E0            [24] 2066 	push	acc
      00392A 74 80            [12] 2067 	mov	a,#0x80
      00392C C0 E0            [24] 2068 	push	acc
      00392E 12 3B C6         [24] 2069 	lcall	_printf
      003931 E5 81            [12] 2070 	mov	a,sp
      003933 24 F9            [12] 2071 	add	a,#0xf9
      003935 F5 81            [12] 2072 	mov	sp,a
      003937 D0 04            [24] 2073 	pop	ar4
      003939 D0 05            [24] 2074 	pop	ar5
      00393B D0 06            [24] 2075 	pop	ar6
      00393D D0 07            [24] 2076 	pop	ar7
                                   2077 ;	8051_i2c_eeprom.c:331: printf("| 0x%03X : 0x%02X \n\r", address, result);
      00393F C0 05            [24] 2078 	push	ar5
      003941 C0 04            [24] 2079 	push	ar4
      003943 C0 04            [24] 2080 	push	ar4
      003945 C0 05            [24] 2081 	push	ar5
      003947 C0 06            [24] 2082 	push	ar6
      003949 C0 07            [24] 2083 	push	ar7
      00394B 74 70            [12] 2084 	mov	a,#___str_42
      00394D C0 E0            [24] 2085 	push	acc
      00394F 74 51            [12] 2086 	mov	a,#(___str_42 >> 8)
      003951 C0 E0            [24] 2087 	push	acc
      003953 74 80            [12] 2088 	mov	a,#0x80
      003955 C0 E0            [24] 2089 	push	acc
      003957 12 3B C6         [24] 2090 	lcall	_printf
      00395A E5 81            [12] 2091 	mov	a,sp
      00395C 24 F9            [12] 2092 	add	a,#0xf9
      00395E F5 81            [12] 2093 	mov	sp,a
                                   2094 ;	8051_i2c_eeprom.c:332: printf("│ Read successful!                 │\n\r");
      003960 74 85            [12] 2095 	mov	a,#___str_43
      003962 C0 E0            [24] 2096 	push	acc
      003964 74 51            [12] 2097 	mov	a,#(___str_43 >> 8)
      003966 C0 E0            [24] 2098 	push	acc
      003968 74 80            [12] 2099 	mov	a,#0x80
      00396A C0 E0            [24] 2100 	push	acc
      00396C 12 3B C6         [24] 2101 	lcall	_printf
      00396F 15 81            [12] 2102 	dec	sp
      003971 15 81            [12] 2103 	dec	sp
      003973 15 81            [12] 2104 	dec	sp
                                   2105 ;	8051_i2c_eeprom.c:333: printf("└───────────────────────────────────────────────┘\n\r");
      003975 74 29            [12] 2106 	mov	a,#___str_37
      003977 C0 E0            [24] 2107 	push	acc
      003979 74 50            [12] 2108 	mov	a,#(___str_37 >> 8)
      00397B C0 E0            [24] 2109 	push	acc
      00397D 74 80            [12] 2110 	mov	a,#0x80
      00397F C0 E0            [24] 2111 	push	acc
      003981 12 3B C6         [24] 2112 	lcall	_printf
      003984 15 81            [12] 2113 	dec	sp
      003986 15 81            [12] 2114 	dec	sp
      003988 15 81            [12] 2115 	dec	sp
                                   2116 ;	8051_i2c_eeprom.c:334: i2c_stop();
      00398A 12 3A 9C         [24] 2117 	lcall	_i2c_stop
      00398D D0 04            [24] 2118 	pop	ar4
      00398F D0 05            [24] 2119 	pop	ar5
                                   2120 ;	8051_i2c_eeprom.c:335: return result;
      003991 8C 82            [24] 2121 	mov	dpl,r4
      003993 8D 83            [24] 2122 	mov	dph,r5
      003995 22               [24] 2123 	ret
      003996                       2124 00108$:
                                   2125 ;	8051_i2c_eeprom.c:337: return 0;
      003996 90 00 00         [24] 2126 	mov	dptr,#0x0000
                                   2127 ;	8051_i2c_eeprom.c:347: }
      003999 22               [24] 2128 	ret
                                   2129 ;------------------------------------------------------------
                                   2130 ;Allocation info for local variables in function 'i2c_write'
                                   2131 ;------------------------------------------------------------
                                   2132 ;data                      Allocated with name '_i2c_write_data_65536_98'
                                   2133 ;i                         Allocated with name '_i2c_write_i_65536_99'
                                   2134 ;------------------------------------------------------------
                                   2135 ;	8051_i2c_eeprom.c:350: int i2c_write(unsigned char data)
                                   2136 ;	-----------------------------------------
                                   2137 ;	 function i2c_write
                                   2138 ;	-----------------------------------------
      00399A                       2139 _i2c_write:
      00399A E5 82            [12] 2140 	mov	a,dpl
      00399C 90 04 14         [24] 2141 	mov	dptr,#_i2c_write_data_65536_98
      00399F F0               [24] 2142 	movx	@dptr,a
                                   2143 ;	8051_i2c_eeprom.c:354: for(i=0;i<=7;i++)
      0039A0 7E 00            [12] 2144 	mov	r6,#0x00
      0039A2 7F 00            [12] 2145 	mov	r7,#0x00
      0039A4                       2146 00104$:
                                   2147 ;	8051_i2c_eeprom.c:356: SDA = (data & 0x80) ? 1 : 0;    //msb first
      0039A4 90 04 14         [24] 2148 	mov	dptr,#_i2c_write_data_65536_98
      0039A7 E0               [24] 2149 	movx	a,@dptr
      0039A8 FD               [12] 2150 	mov	r5,a
      0039A9 23               [12] 2151 	rl	a
      0039AA 54 01            [12] 2152 	anl	a,#0x01
      0039AC 24 FF            [12] 2153 	add	a,#0xff
      0039AE 92 94            [24] 2154 	mov	_P1_4,c
                                   2155 ;	8051_i2c_eeprom.c:357: i2c_delay();        // Setup time for data
      0039B0 C0 07            [24] 2156 	push	ar7
      0039B2 C0 06            [24] 2157 	push	ar6
      0039B4 C0 05            [24] 2158 	push	ar5
      0039B6 12 3A A9         [24] 2159 	lcall	_i2c_delay
                                   2160 ;	8051_i2c_eeprom.c:358: SCL=1;
                                   2161 ;	assignBit
      0039B9 D2 93            [12] 2162 	setb	_P1_3
                                   2163 ;	8051_i2c_eeprom.c:359: i2c_delay();        // Hold time for clock
      0039BB 12 3A A9         [24] 2164 	lcall	_i2c_delay
      0039BE D0 05            [24] 2165 	pop	ar5
      0039C0 D0 06            [24] 2166 	pop	ar6
      0039C2 D0 07            [24] 2167 	pop	ar7
                                   2168 ;	8051_i2c_eeprom.c:360: SCL=0;
                                   2169 ;	assignBit
      0039C4 C2 93            [12] 2170 	clr	_P1_3
                                   2171 ;	8051_i2c_eeprom.c:361: data = data << 1;
      0039C6 ED               [12] 2172 	mov	a,r5
      0039C7 2D               [12] 2173 	add	a,r5
      0039C8 90 04 14         [24] 2174 	mov	dptr,#_i2c_write_data_65536_98
      0039CB F0               [24] 2175 	movx	@dptr,a
                                   2176 ;	8051_i2c_eeprom.c:354: for(i=0;i<=7;i++)
      0039CC 0E               [12] 2177 	inc	r6
      0039CD BE 00 01         [24] 2178 	cjne	r6,#0x00,00121$
      0039D0 0F               [12] 2179 	inc	r7
      0039D1                       2180 00121$:
      0039D1 C3               [12] 2181 	clr	c
      0039D2 74 07            [12] 2182 	mov	a,#0x07
      0039D4 9E               [12] 2183 	subb	a,r6
      0039D5 E4               [12] 2184 	clr	a
      0039D6 9F               [12] 2185 	subb	a,r7
      0039D7 50 CB            [24] 2186 	jnc	00104$
                                   2187 ;	8051_i2c_eeprom.c:365: SDA = 1;            // Release SDA for slave
                                   2188 ;	assignBit
      0039D9 D2 94            [12] 2189 	setb	_P1_4
                                   2190 ;	8051_i2c_eeprom.c:366: SCL = 1;            // 9th clock pulse for ACK
                                   2191 ;	assignBit
      0039DB D2 93            [12] 2192 	setb	_P1_3
                                   2193 ;	8051_i2c_eeprom.c:367: i2c_delay();
      0039DD 12 3A A9         [24] 2194 	lcall	_i2c_delay
                                   2195 ;	8051_i2c_eeprom.c:368: if(SDA == 1)        // If SDA is still high, no ACK received
      0039E0 30 94 19         [24] 2196 	jnb	_P1_4,00103$
                                   2197 ;	8051_i2c_eeprom.c:371: printf("ACK DID NOT ARRIVE\n\r");
      0039E3 74 B0            [12] 2198 	mov	a,#___str_44
      0039E5 C0 E0            [24] 2199 	push	acc
      0039E7 74 51            [12] 2200 	mov	a,#(___str_44 >> 8)
      0039E9 C0 E0            [24] 2201 	push	acc
      0039EB 74 80            [12] 2202 	mov	a,#0x80
      0039ED C0 E0            [24] 2203 	push	acc
      0039EF 12 3B C6         [24] 2204 	lcall	_printf
      0039F2 15 81            [12] 2205 	dec	sp
      0039F4 15 81            [12] 2206 	dec	sp
      0039F6 15 81            [12] 2207 	dec	sp
                                   2208 ;	8051_i2c_eeprom.c:372: return 0;       // Error
      0039F8 90 00 00         [24] 2209 	mov	dptr,#0x0000
      0039FB 22               [24] 2210 	ret
      0039FC                       2211 00103$:
                                   2212 ;	8051_i2c_eeprom.c:374: SCL = 0;
                                   2213 ;	assignBit
      0039FC C2 93            [12] 2214 	clr	_P1_3
                                   2215 ;	8051_i2c_eeprom.c:376: return 1;           // Success
      0039FE 90 00 01         [24] 2216 	mov	dptr,#0x0001
                                   2217 ;	8051_i2c_eeprom.c:378: }
      003A01 22               [24] 2218 	ret
                                   2219 ;------------------------------------------------------------
                                   2220 ;Allocation info for local variables in function 'i2c_read'
                                   2221 ;------------------------------------------------------------
                                   2222 ;ACK                       Allocated with name '_i2c_read_ACK_65536_103'
                                   2223 ;buff                      Allocated with name '_i2c_read_buff_65536_104'
                                   2224 ;i                         Allocated with name '_i2c_read_i_131072_105'
                                   2225 ;------------------------------------------------------------
                                   2226 ;	8051_i2c_eeprom.c:379: int i2c_read(int ACK)
                                   2227 ;	-----------------------------------------
                                   2228 ;	 function i2c_read
                                   2229 ;	-----------------------------------------
      003A02                       2230 _i2c_read:
      003A02 AF 83            [24] 2231 	mov	r7,dph
      003A04 E5 82            [12] 2232 	mov	a,dpl
      003A06 90 04 15         [24] 2233 	mov	dptr,#_i2c_read_ACK_65536_103
      003A09 F0               [24] 2234 	movx	@dptr,a
      003A0A EF               [12] 2235 	mov	a,r7
      003A0B A3               [24] 2236 	inc	dptr
      003A0C F0               [24] 2237 	movx	@dptr,a
                                   2238 ;	8051_i2c_eeprom.c:381: unsigned char buff=0;
      003A0D 90 04 17         [24] 2239 	mov	dptr,#_i2c_read_buff_65536_104
      003A10 E4               [12] 2240 	clr	a
      003A11 F0               [24] 2241 	movx	@dptr,a
                                   2242 ;	8051_i2c_eeprom.c:382: SCL = 0;
                                   2243 ;	assignBit
      003A12 C2 93            [12] 2244 	clr	_P1_3
                                   2245 ;	8051_i2c_eeprom.c:383: for(int i=0;i<8;i++)
      003A14 7E 00            [12] 2246 	mov	r6,#0x00
      003A16 7F 00            [12] 2247 	mov	r7,#0x00
      003A18                       2248 00103$:
      003A18 C3               [12] 2249 	clr	c
      003A19 EE               [12] 2250 	mov	a,r6
      003A1A 94 08            [12] 2251 	subb	a,#0x08
      003A1C EF               [12] 2252 	mov	a,r7
      003A1D 64 80            [12] 2253 	xrl	a,#0x80
      003A1F 94 80            [12] 2254 	subb	a,#0x80
      003A21 50 40            [24] 2255 	jnc	00101$
                                   2256 ;	8051_i2c_eeprom.c:385: SCL = 1;
                                   2257 ;	assignBit
      003A23 D2 93            [12] 2258 	setb	_P1_3
                                   2259 ;	8051_i2c_eeprom.c:386: i2c_delay();
      003A25 C0 07            [24] 2260 	push	ar7
      003A27 C0 06            [24] 2261 	push	ar6
      003A29 12 3A A9         [24] 2262 	lcall	_i2c_delay
      003A2C D0 06            [24] 2263 	pop	ar6
      003A2E D0 07            [24] 2264 	pop	ar7
                                   2265 ;	8051_i2c_eeprom.c:387: buff |= (SDA << (7 - i));
      003A30 A2 94            [12] 2266 	mov	c,_P1_4
      003A32 E4               [12] 2267 	clr	a
      003A33 33               [12] 2268 	rlc	a
      003A34 FD               [12] 2269 	mov	r5,a
      003A35 8E 04            [24] 2270 	mov	ar4,r6
      003A37 74 07            [12] 2271 	mov	a,#0x07
      003A39 C3               [12] 2272 	clr	c
      003A3A 9C               [12] 2273 	subb	a,r4
      003A3B FC               [12] 2274 	mov	r4,a
      003A3C 8C F0            [24] 2275 	mov	b,r4
      003A3E 05 F0            [12] 2276 	inc	b
      003A40 ED               [12] 2277 	mov	a,r5
      003A41 80 02            [24] 2278 	sjmp	00119$
      003A43                       2279 00117$:
      003A43 25 E0            [12] 2280 	add	a,acc
      003A45                       2281 00119$:
      003A45 D5 F0 FB         [24] 2282 	djnz	b,00117$
      003A48 FC               [12] 2283 	mov	r4,a
      003A49 90 04 17         [24] 2284 	mov	dptr,#_i2c_read_buff_65536_104
      003A4C E0               [24] 2285 	movx	a,@dptr
      003A4D 4C               [12] 2286 	orl	a,r4
      003A4E F0               [24] 2287 	movx	@dptr,a
                                   2288 ;	8051_i2c_eeprom.c:388: i2c_delay();
      003A4F C0 07            [24] 2289 	push	ar7
      003A51 C0 06            [24] 2290 	push	ar6
      003A53 12 3A A9         [24] 2291 	lcall	_i2c_delay
      003A56 D0 06            [24] 2292 	pop	ar6
      003A58 D0 07            [24] 2293 	pop	ar7
                                   2294 ;	8051_i2c_eeprom.c:389: SCL=0;
                                   2295 ;	assignBit
      003A5A C2 93            [12] 2296 	clr	_P1_3
                                   2297 ;	8051_i2c_eeprom.c:383: for(int i=0;i<8;i++)
      003A5C 0E               [12] 2298 	inc	r6
      003A5D BE 00 B8         [24] 2299 	cjne	r6,#0x00,00103$
      003A60 0F               [12] 2300 	inc	r7
      003A61 80 B5            [24] 2301 	sjmp	00103$
      003A63                       2302 00101$:
                                   2303 ;	8051_i2c_eeprom.c:393: SDA = !ACK;         // ACK = 0, NACK = 1
      003A63 90 04 15         [24] 2304 	mov	dptr,#_i2c_read_ACK_65536_103
      003A66 E0               [24] 2305 	movx	a,@dptr
      003A67 FE               [12] 2306 	mov	r6,a
      003A68 A3               [24] 2307 	inc	dptr
      003A69 E0               [24] 2308 	movx	a,@dptr
      003A6A 4E               [12] 2309 	orl	a,r6
      003A6B B4 01 00         [24] 2310 	cjne	a,#0x01,00121$
      003A6E                       2311 00121$:
      003A6E E4               [12] 2312 	clr	a
      003A6F 33               [12] 2313 	rlc	a
      003A70 24 FF            [12] 2314 	add	a,#0xff
      003A72 92 94            [24] 2315 	mov	_P1_4,c
                                   2316 ;	8051_i2c_eeprom.c:394: SCL = 1;
                                   2317 ;	assignBit
      003A74 D2 93            [12] 2318 	setb	_P1_3
                                   2319 ;	8051_i2c_eeprom.c:395: i2c_delay();
      003A76 12 3A A9         [24] 2320 	lcall	_i2c_delay
                                   2321 ;	8051_i2c_eeprom.c:396: SCL = 0;
                                   2322 ;	assignBit
      003A79 C2 93            [12] 2323 	clr	_P1_3
                                   2324 ;	8051_i2c_eeprom.c:398: return buff;
      003A7B 90 04 17         [24] 2325 	mov	dptr,#_i2c_read_buff_65536_104
      003A7E E0               [24] 2326 	movx	a,@dptr
      003A7F FF               [12] 2327 	mov	r7,a
      003A80 7E 00            [12] 2328 	mov	r6,#0x00
      003A82 8F 82            [24] 2329 	mov	dpl,r7
      003A84 8E 83            [24] 2330 	mov	dph,r6
                                   2331 ;	8051_i2c_eeprom.c:399: }
      003A86 22               [24] 2332 	ret
                                   2333 ;------------------------------------------------------------
                                   2334 ;Allocation info for local variables in function 'i2c_start'
                                   2335 ;------------------------------------------------------------
                                   2336 ;	8051_i2c_eeprom.c:400: void i2c_start(void)
                                   2337 ;	-----------------------------------------
                                   2338 ;	 function i2c_start
                                   2339 ;	-----------------------------------------
      003A87                       2340 _i2c_start:
                                   2341 ;	8051_i2c_eeprom.c:402: i2c_delay();
      003A87 12 3A A9         [24] 2342 	lcall	_i2c_delay
                                   2343 ;	8051_i2c_eeprom.c:403: SDA = 1;
                                   2344 ;	assignBit
      003A8A D2 94            [12] 2345 	setb	_P1_4
                                   2346 ;	8051_i2c_eeprom.c:404: i2c_delay();
      003A8C 12 3A A9         [24] 2347 	lcall	_i2c_delay
                                   2348 ;	8051_i2c_eeprom.c:405: SCL = 1;
                                   2349 ;	assignBit
      003A8F D2 93            [12] 2350 	setb	_P1_3
                                   2351 ;	8051_i2c_eeprom.c:406: i2c_delay();
      003A91 12 3A A9         [24] 2352 	lcall	_i2c_delay
                                   2353 ;	8051_i2c_eeprom.c:407: SDA = 0;
                                   2354 ;	assignBit
      003A94 C2 94            [12] 2355 	clr	_P1_4
                                   2356 ;	8051_i2c_eeprom.c:408: i2c_delay();
      003A96 12 3A A9         [24] 2357 	lcall	_i2c_delay
                                   2358 ;	8051_i2c_eeprom.c:409: SCL = 0;
                                   2359 ;	assignBit
      003A99 C2 93            [12] 2360 	clr	_P1_3
                                   2361 ;	8051_i2c_eeprom.c:410: }
      003A9B 22               [24] 2362 	ret
                                   2363 ;------------------------------------------------------------
                                   2364 ;Allocation info for local variables in function 'i2c_stop'
                                   2365 ;------------------------------------------------------------
                                   2366 ;	8051_i2c_eeprom.c:412: void i2c_stop(void)
                                   2367 ;	-----------------------------------------
                                   2368 ;	 function i2c_stop
                                   2369 ;	-----------------------------------------
      003A9C                       2370 _i2c_stop:
                                   2371 ;	8051_i2c_eeprom.c:414: SDA = 0;
                                   2372 ;	assignBit
      003A9C C2 94            [12] 2373 	clr	_P1_4
                                   2374 ;	8051_i2c_eeprom.c:415: i2c_delay();
      003A9E 12 3A A9         [24] 2375 	lcall	_i2c_delay
                                   2376 ;	8051_i2c_eeprom.c:416: SCL = 1;
                                   2377 ;	assignBit
      003AA1 D2 93            [12] 2378 	setb	_P1_3
                                   2379 ;	8051_i2c_eeprom.c:417: i2c_delay();
      003AA3 12 3A A9         [24] 2380 	lcall	_i2c_delay
                                   2381 ;	8051_i2c_eeprom.c:418: SDA = 1; 
                                   2382 ;	assignBit
      003AA6 D2 94            [12] 2383 	setb	_P1_4
                                   2384 ;	8051_i2c_eeprom.c:419: }
      003AA8 22               [24] 2385 	ret
                                   2386 ;------------------------------------------------------------
                                   2387 ;Allocation info for local variables in function 'i2c_delay'
                                   2388 ;------------------------------------------------------------
                                   2389 ;i                         Allocated with name '_i2c_delay_i_131072_112'
                                   2390 ;------------------------------------------------------------
                                   2391 ;	8051_i2c_eeprom.c:421: void i2c_delay() 
                                   2392 ;	-----------------------------------------
                                   2393 ;	 function i2c_delay
                                   2394 ;	-----------------------------------------
      003AA9                       2395 _i2c_delay:
                                   2396 ;	8051_i2c_eeprom.c:429: for(int i = 0; i<500; i++);
      003AA9 7E 00            [12] 2397 	mov	r6,#0x00
      003AAB 7F 00            [12] 2398 	mov	r7,#0x00
      003AAD                       2399 00103$:
      003AAD C3               [12] 2400 	clr	c
      003AAE EE               [12] 2401 	mov	a,r6
      003AAF 94 F4            [12] 2402 	subb	a,#0xf4
      003AB1 EF               [12] 2403 	mov	a,r7
      003AB2 64 80            [12] 2404 	xrl	a,#0x80
      003AB4 94 81            [12] 2405 	subb	a,#0x81
      003AB6 50 07            [24] 2406 	jnc	00105$
      003AB8 0E               [12] 2407 	inc	r6
      003AB9 BE 00 F1         [24] 2408 	cjne	r6,#0x00,00103$
      003ABC 0F               [12] 2409 	inc	r7
      003ABD 80 EE            [24] 2410 	sjmp	00103$
      003ABF                       2411 00105$:
                                   2412 ;	8051_i2c_eeprom.c:430: }
      003ABF 22               [24] 2413 	ret
                                   2414 ;------------------------------------------------------------
                                   2415 ;Allocation info for local variables in function 'test_function'
                                   2416 ;------------------------------------------------------------
                                   2417 ;test_data                 Allocated with name '_test_function_test_data_65537_114'
                                   2418 ;address                   Allocated with name '_test_function_address_65537_114'
                                   2419 ;i                         Allocated with name '_test_function_i_131073_115'
                                   2420 ;read_data                 Allocated with name '_test_function_read_data_65538_117'
                                   2421 ;------------------------------------------------------------
                                   2422 ;	8051_i2c_eeprom.c:432: void test_function()
                                   2423 ;	-----------------------------------------
                                   2424 ;	 function test_function
                                   2425 ;	-----------------------------------------
      003AC0                       2426 _test_function:
                                   2427 ;	8051_i2c_eeprom.c:434: i2c_start();
      003AC0 12 3A 87         [24] 2428 	lcall	_i2c_start
                                   2429 ;	8051_i2c_eeprom.c:435: i2c_delay();
      003AC3 12 3A A9         [24] 2430 	lcall	_i2c_delay
                                   2431 ;	8051_i2c_eeprom.c:441: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      003AC6 74 02            [12] 2432 	mov	a,#0x02
      003AC8 C0 E0            [24] 2433 	push	acc
      003ACA E4               [12] 2434 	clr	a
      003ACB C0 E0            [24] 2435 	push	acc
      003ACD 74 26            [12] 2436 	mov	a,#0x26
      003ACF C0 E0            [24] 2437 	push	acc
      003AD1 E4               [12] 2438 	clr	a
      003AD2 C0 E0            [24] 2439 	push	acc
      003AD4 74 C5            [12] 2440 	mov	a,#___str_45
      003AD6 C0 E0            [24] 2441 	push	acc
      003AD8 74 51            [12] 2442 	mov	a,#(___str_45 >> 8)
      003ADA C0 E0            [24] 2443 	push	acc
      003ADC 74 80            [12] 2444 	mov	a,#0x80
      003ADE C0 E0            [24] 2445 	push	acc
      003AE0 12 3B C6         [24] 2446 	lcall	_printf
      003AE3 E5 81            [12] 2447 	mov	a,sp
      003AE5 24 F9            [12] 2448 	add	a,#0xf9
      003AE7 F5 81            [12] 2449 	mov	sp,a
                                   2450 ;	8051_i2c_eeprom.c:442: eeprom_write(address, test_data);
      003AE9 90 04 0F         [24] 2451 	mov	dptr,#_eeprom_write_PARM_2
      003AEC 74 26            [12] 2452 	mov	a,#0x26
      003AEE F0               [24] 2453 	movx	@dptr,a
      003AEF 90 00 02         [24] 2454 	mov	dptr,#0x0002
      003AF2 12 36 82         [24] 2455 	lcall	_eeprom_write
                                   2456 ;	8051_i2c_eeprom.c:443: i2c_stop();
      003AF5 12 3A 9C         [24] 2457 	lcall	_i2c_stop
                                   2458 ;	8051_i2c_eeprom.c:445: for(int i = 0; i<100; i++)
      003AF8 7E 00            [12] 2459 	mov	r6,#0x00
      003AFA 7F 00            [12] 2460 	mov	r7,#0x00
      003AFC                       2461 00106$:
      003AFC C3               [12] 2462 	clr	c
      003AFD EE               [12] 2463 	mov	a,r6
      003AFE 94 64            [12] 2464 	subb	a,#0x64
      003B00 EF               [12] 2465 	mov	a,r7
      003B01 64 80            [12] 2466 	xrl	a,#0x80
      003B03 94 80            [12] 2467 	subb	a,#0x80
      003B05 50 12            [24] 2468 	jnc	00101$
                                   2469 ;	8051_i2c_eeprom.c:447: i2c_delay();
      003B07 C0 07            [24] 2470 	push	ar7
      003B09 C0 06            [24] 2471 	push	ar6
      003B0B 12 3A A9         [24] 2472 	lcall	_i2c_delay
      003B0E D0 06            [24] 2473 	pop	ar6
      003B10 D0 07            [24] 2474 	pop	ar7
                                   2475 ;	8051_i2c_eeprom.c:445: for(int i = 0; i<100; i++)
      003B12 0E               [12] 2476 	inc	r6
      003B13 BE 00 E6         [24] 2477 	cjne	r6,#0x00,00106$
      003B16 0F               [12] 2478 	inc	r7
      003B17 80 E3            [24] 2479 	sjmp	00106$
      003B19                       2480 00101$:
                                   2481 ;	8051_i2c_eeprom.c:451: unsigned char read_data = eeprom_read(address);
      003B19 90 00 02         [24] 2482 	mov	dptr,#0x0002
      003B1C 12 38 46         [24] 2483 	lcall	_eeprom_read
      003B1F AE 82            [24] 2484 	mov	r6,dpl
                                   2485 ;	8051_i2c_eeprom.c:452: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      003B21 8E 05            [24] 2486 	mov	ar5,r6
      003B23 7F 00            [12] 2487 	mov	r7,#0x00
      003B25 C0 06            [24] 2488 	push	ar6
      003B27 C0 05            [24] 2489 	push	ar5
      003B29 C0 07            [24] 2490 	push	ar7
      003B2B 74 02            [12] 2491 	mov	a,#0x02
      003B2D C0 E0            [24] 2492 	push	acc
      003B2F E4               [12] 2493 	clr	a
      003B30 C0 E0            [24] 2494 	push	acc
      003B32 74 ED            [12] 2495 	mov	a,#___str_46
      003B34 C0 E0            [24] 2496 	push	acc
      003B36 74 51            [12] 2497 	mov	a,#(___str_46 >> 8)
      003B38 C0 E0            [24] 2498 	push	acc
      003B3A 74 80            [12] 2499 	mov	a,#0x80
      003B3C C0 E0            [24] 2500 	push	acc
      003B3E 12 3B C6         [24] 2501 	lcall	_printf
      003B41 E5 81            [12] 2502 	mov	a,sp
      003B43 24 F9            [12] 2503 	add	a,#0xf9
      003B45 F5 81            [12] 2504 	mov	sp,a
      003B47 D0 06            [24] 2505 	pop	ar6
                                   2506 ;	8051_i2c_eeprom.c:455: if(read_data == test_data) {
      003B49 BE 26 16         [24] 2507 	cjne	r6,#0x26,00103$
                                   2508 ;	8051_i2c_eeprom.c:456: printf("MATCH - Write/Read successful!\n\r");
      003B4C 74 15            [12] 2509 	mov	a,#___str_47
      003B4E C0 E0            [24] 2510 	push	acc
      003B50 74 52            [12] 2511 	mov	a,#(___str_47 >> 8)
      003B52 C0 E0            [24] 2512 	push	acc
      003B54 74 80            [12] 2513 	mov	a,#0x80
      003B56 C0 E0            [24] 2514 	push	acc
      003B58 12 3B C6         [24] 2515 	lcall	_printf
      003B5B 15 81            [12] 2516 	dec	sp
      003B5D 15 81            [12] 2517 	dec	sp
      003B5F 15 81            [12] 2518 	dec	sp
      003B61 22               [24] 2519 	ret
      003B62                       2520 00103$:
                                   2521 ;	8051_i2c_eeprom.c:458: printf("ERROR - Data mismatch!\n\r");
      003B62 74 36            [12] 2522 	mov	a,#___str_48
      003B64 C0 E0            [24] 2523 	push	acc
      003B66 74 52            [12] 2524 	mov	a,#(___str_48 >> 8)
      003B68 C0 E0            [24] 2525 	push	acc
      003B6A 74 80            [12] 2526 	mov	a,#0x80
      003B6C C0 E0            [24] 2527 	push	acc
      003B6E 12 3B C6         [24] 2528 	lcall	_printf
      003B71 15 81            [12] 2529 	dec	sp
      003B73 15 81            [12] 2530 	dec	sp
      003B75 15 81            [12] 2531 	dec	sp
                                   2532 ;	8051_i2c_eeprom.c:462: }
      003B77 22               [24] 2533 	ret
                                   2534 	.area CSEG    (CODE)
                                   2535 	.area CONST   (CODE)
                                   2536 	.area CONST   (CODE)
      004628                       2537 ___str_0:
      004628 0A                    2538 	.db 0x0a
      004629 E2                    2539 	.db 0xe2
      00462A 95                    2540 	.db 0x95
      00462B 94                    2541 	.db 0x94
      00462C E2                    2542 	.db 0xe2
      00462D 95                    2543 	.db 0x95
      00462E 90                    2544 	.db 0x90
      00462F E2                    2545 	.db 0xe2
      004630 95                    2546 	.db 0x95
      004631 90                    2547 	.db 0x90
      004632 E2                    2548 	.db 0xe2
      004633 95                    2549 	.db 0x95
      004634 90                    2550 	.db 0x90
      004635 E2                    2551 	.db 0xe2
      004636 95                    2552 	.db 0x95
      004637 90                    2553 	.db 0x90
      004638 E2                    2554 	.db 0xe2
      004639 95                    2555 	.db 0x95
      00463A 90                    2556 	.db 0x90
      00463B E2                    2557 	.db 0xe2
      00463C 95                    2558 	.db 0x95
      00463D 90                    2559 	.db 0x90
      00463E E2                    2560 	.db 0xe2
      00463F 95                    2561 	.db 0x95
      004640 90                    2562 	.db 0x90
      004641 E2                    2563 	.db 0xe2
      004642 95                    2564 	.db 0x95
      004643 90                    2565 	.db 0x90
      004644 E2                    2566 	.db 0xe2
      004645 95                    2567 	.db 0x95
      004646 90                    2568 	.db 0x90
      004647 E2                    2569 	.db 0xe2
      004648 95                    2570 	.db 0x95
      004649 90                    2571 	.db 0x90
      00464A E2                    2572 	.db 0xe2
      00464B 95                    2573 	.db 0x95
      00464C 90                    2574 	.db 0x90
      00464D E2                    2575 	.db 0xe2
      00464E 95                    2576 	.db 0x95
      00464F 90                    2577 	.db 0x90
      004650 E2                    2578 	.db 0xe2
      004651 95                    2579 	.db 0x95
      004652 90                    2580 	.db 0x90
      004653 E2                    2581 	.db 0xe2
      004654 95                    2582 	.db 0x95
      004655 90                    2583 	.db 0x90
      004656 E2                    2584 	.db 0xe2
      004657 95                    2585 	.db 0x95
      004658 90                    2586 	.db 0x90
      004659 E2                    2587 	.db 0xe2
      00465A 95                    2588 	.db 0x95
      00465B 90                    2589 	.db 0x90
      00465C E2                    2590 	.db 0xe2
      00465D 95                    2591 	.db 0x95
      00465E 90                    2592 	.db 0x90
      00465F E2                    2593 	.db 0xe2
      004660 95                    2594 	.db 0x95
      004661 90                    2595 	.db 0x90
      004662 E2                    2596 	.db 0xe2
      004663 95                    2597 	.db 0x95
      004664 90                    2598 	.db 0x90
      004665 E2                    2599 	.db 0xe2
      004666 95                    2600 	.db 0x95
      004667 90                    2601 	.db 0x90
      004668 E2                    2602 	.db 0xe2
      004669 95                    2603 	.db 0x95
      00466A 90                    2604 	.db 0x90
      00466B E2                    2605 	.db 0xe2
      00466C 95                    2606 	.db 0x95
      00466D 90                    2607 	.db 0x90
      00466E E2                    2608 	.db 0xe2
      00466F 95                    2609 	.db 0x95
      004670 90                    2610 	.db 0x90
      004671 E2                    2611 	.db 0xe2
      004672 95                    2612 	.db 0x95
      004673 90                    2613 	.db 0x90
      004674 E2                    2614 	.db 0xe2
      004675 95                    2615 	.db 0x95
      004676 90                    2616 	.db 0x90
      004677 E2                    2617 	.db 0xe2
      004678 95                    2618 	.db 0x95
      004679 90                    2619 	.db 0x90
      00467A E2                    2620 	.db 0xe2
      00467B 95                    2621 	.db 0x95
      00467C 90                    2622 	.db 0x90
      00467D E2                    2623 	.db 0xe2
      00467E 95                    2624 	.db 0x95
      00467F 90                    2625 	.db 0x90
      004680 E2                    2626 	.db 0xe2
      004681 95                    2627 	.db 0x95
      004682 90                    2628 	.db 0x90
      004683 E2                    2629 	.db 0xe2
      004684 95                    2630 	.db 0x95
      004685 90                    2631 	.db 0x90
      004686 E2                    2632 	.db 0xe2
      004687 95                    2633 	.db 0x95
      004688 90                    2634 	.db 0x90
      004689 E2                    2635 	.db 0xe2
      00468A 95                    2636 	.db 0x95
      00468B 90                    2637 	.db 0x90
      00468C E2                    2638 	.db 0xe2
      00468D 95                    2639 	.db 0x95
      00468E 90                    2640 	.db 0x90
      00468F E2                    2641 	.db 0xe2
      004690 95                    2642 	.db 0x95
      004691 90                    2643 	.db 0x90
      004692 E2                    2644 	.db 0xe2
      004693 95                    2645 	.db 0x95
      004694 90                    2646 	.db 0x90
      004695 E2                    2647 	.db 0xe2
      004696 95                    2648 	.db 0x95
      004697 90                    2649 	.db 0x90
      004698 E2                    2650 	.db 0xe2
      004699 95                    2651 	.db 0x95
      00469A 90                    2652 	.db 0x90
      00469B E2                    2653 	.db 0xe2
      00469C 95                    2654 	.db 0x95
      00469D 90                    2655 	.db 0x90
      00469E E2                    2656 	.db 0xe2
      00469F 95                    2657 	.db 0x95
      0046A0 90                    2658 	.db 0x90
      0046A1 E2                    2659 	.db 0xe2
      0046A2 95                    2660 	.db 0x95
      0046A3 90                    2661 	.db 0x90
      0046A4 E2                    2662 	.db 0xe2
      0046A5 95                    2663 	.db 0x95
      0046A6 90                    2664 	.db 0x90
      0046A7 E2                    2665 	.db 0xe2
      0046A8 95                    2666 	.db 0x95
      0046A9 90                    2667 	.db 0x90
      0046AA E2                    2668 	.db 0xe2
      0046AB 95                    2669 	.db 0x95
      0046AC 90                    2670 	.db 0x90
      0046AD E2                    2671 	.db 0xe2
      0046AE 95                    2672 	.db 0x95
      0046AF 90                    2673 	.db 0x90
      0046B0 E2                    2674 	.db 0xe2
      0046B1 95                    2675 	.db 0x95
      0046B2 90                    2676 	.db 0x90
      0046B3 E2                    2677 	.db 0xe2
      0046B4 95                    2678 	.db 0x95
      0046B5 90                    2679 	.db 0x90
      0046B6 E2                    2680 	.db 0xe2
      0046B7 95                    2681 	.db 0x95
      0046B8 90                    2682 	.db 0x90
      0046B9 E2                    2683 	.db 0xe2
      0046BA 95                    2684 	.db 0x95
      0046BB 90                    2685 	.db 0x90
      0046BC E2                    2686 	.db 0xe2
      0046BD 95                    2687 	.db 0x95
      0046BE 90                    2688 	.db 0x90
      0046BF E2                    2689 	.db 0xe2
      0046C0 95                    2690 	.db 0x95
      0046C1 90                    2691 	.db 0x90
      0046C2 E2                    2692 	.db 0xe2
      0046C3 95                    2693 	.db 0x95
      0046C4 90                    2694 	.db 0x90
      0046C5 E2                    2695 	.db 0xe2
      0046C6 95                    2696 	.db 0x95
      0046C7 90                    2697 	.db 0x90
      0046C8 E2                    2698 	.db 0xe2
      0046C9 95                    2699 	.db 0x95
      0046CA 90                    2700 	.db 0x90
      0046CB E2                    2701 	.db 0xe2
      0046CC 95                    2702 	.db 0x95
      0046CD 90                    2703 	.db 0x90
      0046CE E2                    2704 	.db 0xe2
      0046CF 95                    2705 	.db 0x95
      0046D0 90                    2706 	.db 0x90
      0046D1 E2                    2707 	.db 0xe2
      0046D2 95                    2708 	.db 0x95
      0046D3 90                    2709 	.db 0x90
      0046D4 E2                    2710 	.db 0xe2
      0046D5 95                    2711 	.db 0x95
      0046D6 97                    2712 	.db 0x97
      0046D7 0A                    2713 	.db 0x0a
      0046D8 0D                    2714 	.db 0x0d
      0046D9 00                    2715 	.db 0x00
                                   2716 	.area CSEG    (CODE)
                                   2717 	.area CONST   (CODE)
      0046DA                       2718 ___str_1:
      0046DA E2                    2719 	.db 0xe2
      0046DB 95                    2720 	.db 0x95
      0046DC 91                    2721 	.db 0x91
      0046DD 20 20 20 20 20 20 20  2722 	.ascii "           I2C Memory Management System v1.0            "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
      004715 E2                    2723 	.db 0xe2
      004716 95                    2724 	.db 0x95
      004717 91                    2725 	.db 0x91
      004718 0A                    2726 	.db 0x0a
      004719 0D                    2727 	.db 0x0d
      00471A 00                    2728 	.db 0x00
                                   2729 	.area CSEG    (CODE)
                                   2730 	.area CONST   (CODE)
      00471B                       2731 ___str_2:
      00471B E2                    2732 	.db 0xe2
      00471C 95                    2733 	.db 0x95
      00471D 9A                    2734 	.db 0x9a
      00471E E2                    2735 	.db 0xe2
      00471F 95                    2736 	.db 0x95
      004720 90                    2737 	.db 0x90
      004721 E2                    2738 	.db 0xe2
      004722 95                    2739 	.db 0x95
      004723 90                    2740 	.db 0x90
      004724 E2                    2741 	.db 0xe2
      004725 95                    2742 	.db 0x95
      004726 90                    2743 	.db 0x90
      004727 E2                    2744 	.db 0xe2
      004728 95                    2745 	.db 0x95
      004729 90                    2746 	.db 0x90
      00472A E2                    2747 	.db 0xe2
      00472B 95                    2748 	.db 0x95
      00472C 90                    2749 	.db 0x90
      00472D E2                    2750 	.db 0xe2
      00472E 95                    2751 	.db 0x95
      00472F 90                    2752 	.db 0x90
      004730 E2                    2753 	.db 0xe2
      004731 95                    2754 	.db 0x95
      004732 90                    2755 	.db 0x90
      004733 E2                    2756 	.db 0xe2
      004734 95                    2757 	.db 0x95
      004735 90                    2758 	.db 0x90
      004736 E2                    2759 	.db 0xe2
      004737 95                    2760 	.db 0x95
      004738 90                    2761 	.db 0x90
      004739 E2                    2762 	.db 0xe2
      00473A 95                    2763 	.db 0x95
      00473B 90                    2764 	.db 0x90
      00473C E2                    2765 	.db 0xe2
      00473D 95                    2766 	.db 0x95
      00473E 90                    2767 	.db 0x90
      00473F E2                    2768 	.db 0xe2
      004740 95                    2769 	.db 0x95
      004741 90                    2770 	.db 0x90
      004742 E2                    2771 	.db 0xe2
      004743 95                    2772 	.db 0x95
      004744 90                    2773 	.db 0x90
      004745 E2                    2774 	.db 0xe2
      004746 95                    2775 	.db 0x95
      004747 90                    2776 	.db 0x90
      004748 E2                    2777 	.db 0xe2
      004749 95                    2778 	.db 0x95
      00474A 90                    2779 	.db 0x90
      00474B E2                    2780 	.db 0xe2
      00474C 95                    2781 	.db 0x95
      00474D 90                    2782 	.db 0x90
      00474E E2                    2783 	.db 0xe2
      00474F 95                    2784 	.db 0x95
      004750 90                    2785 	.db 0x90
      004751 E2                    2786 	.db 0xe2
      004752 95                    2787 	.db 0x95
      004753 90                    2788 	.db 0x90
      004754 E2                    2789 	.db 0xe2
      004755 95                    2790 	.db 0x95
      004756 90                    2791 	.db 0x90
      004757 E2                    2792 	.db 0xe2
      004758 95                    2793 	.db 0x95
      004759 90                    2794 	.db 0x90
      00475A E2                    2795 	.db 0xe2
      00475B 95                    2796 	.db 0x95
      00475C 90                    2797 	.db 0x90
      00475D E2                    2798 	.db 0xe2
      00475E 95                    2799 	.db 0x95
      00475F 90                    2800 	.db 0x90
      004760 E2                    2801 	.db 0xe2
      004761 95                    2802 	.db 0x95
      004762 90                    2803 	.db 0x90
      004763 E2                    2804 	.db 0xe2
      004764 95                    2805 	.db 0x95
      004765 90                    2806 	.db 0x90
      004766 E2                    2807 	.db 0xe2
      004767 95                    2808 	.db 0x95
      004768 90                    2809 	.db 0x90
      004769 E2                    2810 	.db 0xe2
      00476A 95                    2811 	.db 0x95
      00476B 90                    2812 	.db 0x90
      00476C E2                    2813 	.db 0xe2
      00476D 95                    2814 	.db 0x95
      00476E 90                    2815 	.db 0x90
      00476F E2                    2816 	.db 0xe2
      004770 95                    2817 	.db 0x95
      004771 90                    2818 	.db 0x90
      004772 E2                    2819 	.db 0xe2
      004773 95                    2820 	.db 0x95
      004774 90                    2821 	.db 0x90
      004775 E2                    2822 	.db 0xe2
      004776 95                    2823 	.db 0x95
      004777 90                    2824 	.db 0x90
      004778 E2                    2825 	.db 0xe2
      004779 95                    2826 	.db 0x95
      00477A 90                    2827 	.db 0x90
      00477B E2                    2828 	.db 0xe2
      00477C 95                    2829 	.db 0x95
      00477D 90                    2830 	.db 0x90
      00477E E2                    2831 	.db 0xe2
      00477F 95                    2832 	.db 0x95
      004780 90                    2833 	.db 0x90
      004781 E2                    2834 	.db 0xe2
      004782 95                    2835 	.db 0x95
      004783 90                    2836 	.db 0x90
      004784 E2                    2837 	.db 0xe2
      004785 95                    2838 	.db 0x95
      004786 90                    2839 	.db 0x90
      004787 E2                    2840 	.db 0xe2
      004788 95                    2841 	.db 0x95
      004789 90                    2842 	.db 0x90
      00478A E2                    2843 	.db 0xe2
      00478B 95                    2844 	.db 0x95
      00478C 90                    2845 	.db 0x90
      00478D E2                    2846 	.db 0xe2
      00478E 95                    2847 	.db 0x95
      00478F 90                    2848 	.db 0x90
      004790 E2                    2849 	.db 0xe2
      004791 95                    2850 	.db 0x95
      004792 90                    2851 	.db 0x90
      004793 E2                    2852 	.db 0xe2
      004794 95                    2853 	.db 0x95
      004795 90                    2854 	.db 0x90
      004796 E2                    2855 	.db 0xe2
      004797 95                    2856 	.db 0x95
      004798 90                    2857 	.db 0x90
      004799 E2                    2858 	.db 0xe2
      00479A 95                    2859 	.db 0x95
      00479B 90                    2860 	.db 0x90
      00479C E2                    2861 	.db 0xe2
      00479D 95                    2862 	.db 0x95
      00479E 90                    2863 	.db 0x90
      00479F E2                    2864 	.db 0xe2
      0047A0 95                    2865 	.db 0x95
      0047A1 90                    2866 	.db 0x90
      0047A2 E2                    2867 	.db 0xe2
      0047A3 95                    2868 	.db 0x95
      0047A4 90                    2869 	.db 0x90
      0047A5 E2                    2870 	.db 0xe2
      0047A6 95                    2871 	.db 0x95
      0047A7 90                    2872 	.db 0x90
      0047A8 E2                    2873 	.db 0xe2
      0047A9 95                    2874 	.db 0x95
      0047AA 90                    2875 	.db 0x90
      0047AB E2                    2876 	.db 0xe2
      0047AC 95                    2877 	.db 0x95
      0047AD 90                    2878 	.db 0x90
      0047AE E2                    2879 	.db 0xe2
      0047AF 95                    2880 	.db 0x95
      0047B0 90                    2881 	.db 0x90
      0047B1 E2                    2882 	.db 0xe2
      0047B2 95                    2883 	.db 0x95
      0047B3 90                    2884 	.db 0x90
      0047B4 E2                    2885 	.db 0xe2
      0047B5 95                    2886 	.db 0x95
      0047B6 90                    2887 	.db 0x90
      0047B7 E2                    2888 	.db 0xe2
      0047B8 95                    2889 	.db 0x95
      0047B9 90                    2890 	.db 0x90
      0047BA E2                    2891 	.db 0xe2
      0047BB 95                    2892 	.db 0x95
      0047BC 90                    2893 	.db 0x90
      0047BD E2                    2894 	.db 0xe2
      0047BE 95                    2895 	.db 0x95
      0047BF 90                    2896 	.db 0x90
      0047C0 E2                    2897 	.db 0xe2
      0047C1 95                    2898 	.db 0x95
      0047C2 90                    2899 	.db 0x90
      0047C3 E2                    2900 	.db 0xe2
      0047C4 95                    2901 	.db 0x95
      0047C5 90                    2902 	.db 0x90
      0047C6 E2                    2903 	.db 0xe2
      0047C7 95                    2904 	.db 0x95
      0047C8 9D                    2905 	.db 0x9d
      0047C9 0A                    2906 	.db 0x0a
      0047CA 0D                    2907 	.db 0x0d
      0047CB 00                    2908 	.db 0x00
                                   2909 	.area CSEG    (CODE)
                                   2910 	.area CONST   (CODE)
      0047CC                       2911 ___str_3:
      0047CC 0A                    2912 	.db 0x0a
      0047CD 0D                    2913 	.db 0x0d
      0047CE E2                    2914 	.db 0xe2
      0047CF 94                    2915 	.db 0x94
      0047D0 8C                    2916 	.db 0x8c
      0047D1 E2                    2917 	.db 0xe2
      0047D2 94                    2918 	.db 0x94
      0047D3 80                    2919 	.db 0x80
      0047D4 E2                    2920 	.db 0xe2
      0047D5 94                    2921 	.db 0x94
      0047D6 80                    2922 	.db 0x80
      0047D7 E2                    2923 	.db 0xe2
      0047D8 94                    2924 	.db 0x94
      0047D9 80                    2925 	.db 0x80
      0047DA E2                    2926 	.db 0xe2
      0047DB 94                    2927 	.db 0x94
      0047DC 80                    2928 	.db 0x80
      0047DD E2                    2929 	.db 0xe2
      0047DE 94                    2930 	.db 0x94
      0047DF 80                    2931 	.db 0x80
      0047E0 E2                    2932 	.db 0xe2
      0047E1 94                    2933 	.db 0x94
      0047E2 80                    2934 	.db 0x80
      0047E3 E2                    2935 	.db 0xe2
      0047E4 94                    2936 	.db 0x94
      0047E5 80                    2937 	.db 0x80
      0047E6 E2                    2938 	.db 0xe2
      0047E7 94                    2939 	.db 0x94
      0047E8 80                    2940 	.db 0x80
      0047E9 E2                    2941 	.db 0xe2
      0047EA 94                    2942 	.db 0x94
      0047EB 80                    2943 	.db 0x80
      0047EC E2                    2944 	.db 0xe2
      0047ED 94                    2945 	.db 0x94
      0047EE 80                    2946 	.db 0x80
      0047EF E2                    2947 	.db 0xe2
      0047F0 94                    2948 	.db 0x94
      0047F1 80                    2949 	.db 0x80
      0047F2 E2                    2950 	.db 0xe2
      0047F3 94                    2951 	.db 0x94
      0047F4 80                    2952 	.db 0x80
      0047F5 E2                    2953 	.db 0xe2
      0047F6 94                    2954 	.db 0x94
      0047F7 AC                    2955 	.db 0xac
      0047F8 E2                    2956 	.db 0xe2
      0047F9 94                    2957 	.db 0x94
      0047FA 80                    2958 	.db 0x80
      0047FB E2                    2959 	.db 0xe2
      0047FC 94                    2960 	.db 0x94
      0047FD 80                    2961 	.db 0x80
      0047FE E2                    2962 	.db 0xe2
      0047FF 94                    2963 	.db 0x94
      004800 80                    2964 	.db 0x80
      004801 E2                    2965 	.db 0xe2
      004802 94                    2966 	.db 0x94
      004803 80                    2967 	.db 0x80
      004804 E2                    2968 	.db 0xe2
      004805 94                    2969 	.db 0x94
      004806 80                    2970 	.db 0x80
      004807 E2                    2971 	.db 0xe2
      004808 94                    2972 	.db 0x94
      004809 80                    2973 	.db 0x80
      00480A E2                    2974 	.db 0xe2
      00480B 94                    2975 	.db 0x94
      00480C 80                    2976 	.db 0x80
      00480D E2                    2977 	.db 0xe2
      00480E 94                    2978 	.db 0x94
      00480F 80                    2979 	.db 0x80
      004810 E2                    2980 	.db 0xe2
      004811 94                    2981 	.db 0x94
      004812 80                    2982 	.db 0x80
      004813 E2                    2983 	.db 0xe2
      004814 94                    2984 	.db 0x94
      004815 80                    2985 	.db 0x80
      004816 E2                    2986 	.db 0xe2
      004817 94                    2987 	.db 0x94
      004818 80                    2988 	.db 0x80
      004819 E2                    2989 	.db 0xe2
      00481A 94                    2990 	.db 0x94
      00481B 80                    2991 	.db 0x80
      00481C E2                    2992 	.db 0xe2
      00481D 94                    2993 	.db 0x94
      00481E 80                    2994 	.db 0x80
      00481F E2                    2995 	.db 0xe2
      004820 94                    2996 	.db 0x94
      004821 80                    2997 	.db 0x80
      004822 E2                    2998 	.db 0xe2
      004823 94                    2999 	.db 0x94
      004824 80                    3000 	.db 0x80
      004825 E2                    3001 	.db 0xe2
      004826 94                    3002 	.db 0x94
      004827 80                    3003 	.db 0x80
      004828 E2                    3004 	.db 0xe2
      004829 94                    3005 	.db 0x94
      00482A 80                    3006 	.db 0x80
      00482B E2                    3007 	.db 0xe2
      00482C 94                    3008 	.db 0x94
      00482D 80                    3009 	.db 0x80
      00482E E2                    3010 	.db 0xe2
      00482F 94                    3011 	.db 0x94
      004830 80                    3012 	.db 0x80
      004831 E2                    3013 	.db 0xe2
      004832 94                    3014 	.db 0x94
      004833 80                    3015 	.db 0x80
      004834 E2                    3016 	.db 0xe2
      004835 94                    3017 	.db 0x94
      004836 80                    3018 	.db 0x80
      004837 E2                    3019 	.db 0xe2
      004838 94                    3020 	.db 0x94
      004839 80                    3021 	.db 0x80
      00483A E2                    3022 	.db 0xe2
      00483B 94                    3023 	.db 0x94
      00483C 80                    3024 	.db 0x80
      00483D E2                    3025 	.db 0xe2
      00483E 94                    3026 	.db 0x94
      00483F 80                    3027 	.db 0x80
      004840 E2                    3028 	.db 0xe2
      004841 94                    3029 	.db 0x94
      004842 80                    3030 	.db 0x80
      004843 E2                    3031 	.db 0xe2
      004844 94                    3032 	.db 0x94
      004845 80                    3033 	.db 0x80
      004846 E2                    3034 	.db 0xe2
      004847 94                    3035 	.db 0x94
      004848 80                    3036 	.db 0x80
      004849 E2                    3037 	.db 0xe2
      00484A 94                    3038 	.db 0x94
      00484B 80                    3039 	.db 0x80
      00484C E2                    3040 	.db 0xe2
      00484D 94                    3041 	.db 0x94
      00484E 80                    3042 	.db 0x80
      00484F E2                    3043 	.db 0xe2
      004850 94                    3044 	.db 0x94
      004851 80                    3045 	.db 0x80
      004852 E2                    3046 	.db 0xe2
      004853 94                    3047 	.db 0x94
      004854 80                    3048 	.db 0x80
      004855 E2                    3049 	.db 0xe2
      004856 94                    3050 	.db 0x94
      004857 80                    3051 	.db 0x80
      004858 E2                    3052 	.db 0xe2
      004859 94                    3053 	.db 0x94
      00485A 80                    3054 	.db 0x80
      00485B E2                    3055 	.db 0xe2
      00485C 94                    3056 	.db 0x94
      00485D 80                    3057 	.db 0x80
      00485E E2                    3058 	.db 0xe2
      00485F 94                    3059 	.db 0x94
      004860 80                    3060 	.db 0x80
      004861 E2                    3061 	.db 0xe2
      004862 94                    3062 	.db 0x94
      004863 80                    3063 	.db 0x80
      004864 E2                    3064 	.db 0xe2
      004865 94                    3065 	.db 0x94
      004866 80                    3066 	.db 0x80
      004867 E2                    3067 	.db 0xe2
      004868 94                    3068 	.db 0x94
      004869 80                    3069 	.db 0x80
      00486A E2                    3070 	.db 0xe2
      00486B 94                    3071 	.db 0x94
      00486C 80                    3072 	.db 0x80
      00486D E2                    3073 	.db 0xe2
      00486E 94                    3074 	.db 0x94
      00486F 80                    3075 	.db 0x80
      004870 E2                    3076 	.db 0xe2
      004871 94                    3077 	.db 0x94
      004872 80                    3078 	.db 0x80
      004873 E2                    3079 	.db 0xe2
      004874 94                    3080 	.db 0x94
      004875 80                    3081 	.db 0x80
      004876 E2                    3082 	.db 0xe2
      004877 94                    3083 	.db 0x94
      004878 80                    3084 	.db 0x80
      004879 E2                    3085 	.db 0xe2
      00487A 94                    3086 	.db 0x94
      00487B 80                    3087 	.db 0x80
      00487C E2                    3088 	.db 0xe2
      00487D 94                    3089 	.db 0x94
      00487E 90                    3090 	.db 0x90
      00487F 0A                    3091 	.db 0x0a
      004880 0D                    3092 	.db 0x0d
      004881 00                    3093 	.db 0x00
                                   3094 	.area CSEG    (CODE)
                                   3095 	.area CONST   (CODE)
      004882                       3096 ___str_4:
      004882 E2                    3097 	.db 0xe2
      004883 94                    3098 	.db 0x94
      004884 82                    3099 	.db 0x82
      004885 20 20 43 6F 6D 6D 61  3100 	.ascii "  Command   "
             6E 64 20 20 20
      004891 E2                    3101 	.db 0xe2
      004892 94                    3102 	.db 0x94
      004893 82                    3103 	.db 0x82
      004894 20 20 20 20 20 20 20  3104 	.ascii "               Description                  "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0048C0 E2                    3105 	.db 0xe2
      0048C1 94                    3106 	.db 0x94
      0048C2 82                    3107 	.db 0x82
      0048C3 0A                    3108 	.db 0x0a
      0048C4 0D                    3109 	.db 0x0d
      0048C5 00                    3110 	.db 0x00
                                   3111 	.area CSEG    (CODE)
                                   3112 	.area CONST   (CODE)
      0048C6                       3113 ___str_5:
      0048C6 E2                    3114 	.db 0xe2
      0048C7 94                    3115 	.db 0x94
      0048C8 9C                    3116 	.db 0x9c
      0048C9 E2                    3117 	.db 0xe2
      0048CA 94                    3118 	.db 0x94
      0048CB 80                    3119 	.db 0x80
      0048CC E2                    3120 	.db 0xe2
      0048CD 94                    3121 	.db 0x94
      0048CE 80                    3122 	.db 0x80
      0048CF E2                    3123 	.db 0xe2
      0048D0 94                    3124 	.db 0x94
      0048D1 80                    3125 	.db 0x80
      0048D2 E2                    3126 	.db 0xe2
      0048D3 94                    3127 	.db 0x94
      0048D4 80                    3128 	.db 0x80
      0048D5 E2                    3129 	.db 0xe2
      0048D6 94                    3130 	.db 0x94
      0048D7 80                    3131 	.db 0x80
      0048D8 E2                    3132 	.db 0xe2
      0048D9 94                    3133 	.db 0x94
      0048DA 80                    3134 	.db 0x80
      0048DB E2                    3135 	.db 0xe2
      0048DC 94                    3136 	.db 0x94
      0048DD 80                    3137 	.db 0x80
      0048DE E2                    3138 	.db 0xe2
      0048DF 94                    3139 	.db 0x94
      0048E0 80                    3140 	.db 0x80
      0048E1 E2                    3141 	.db 0xe2
      0048E2 94                    3142 	.db 0x94
      0048E3 80                    3143 	.db 0x80
      0048E4 E2                    3144 	.db 0xe2
      0048E5 94                    3145 	.db 0x94
      0048E6 80                    3146 	.db 0x80
      0048E7 E2                    3147 	.db 0xe2
      0048E8 94                    3148 	.db 0x94
      0048E9 80                    3149 	.db 0x80
      0048EA E2                    3150 	.db 0xe2
      0048EB 94                    3151 	.db 0x94
      0048EC 80                    3152 	.db 0x80
      0048ED E2                    3153 	.db 0xe2
      0048EE 94                    3154 	.db 0x94
      0048EF BC                    3155 	.db 0xbc
      0048F0 E2                    3156 	.db 0xe2
      0048F1 94                    3157 	.db 0x94
      0048F2 80                    3158 	.db 0x80
      0048F3 E2                    3159 	.db 0xe2
      0048F4 94                    3160 	.db 0x94
      0048F5 80                    3161 	.db 0x80
      0048F6 E2                    3162 	.db 0xe2
      0048F7 94                    3163 	.db 0x94
      0048F8 80                    3164 	.db 0x80
      0048F9 E2                    3165 	.db 0xe2
      0048FA 94                    3166 	.db 0x94
      0048FB 80                    3167 	.db 0x80
      0048FC E2                    3168 	.db 0xe2
      0048FD 94                    3169 	.db 0x94
      0048FE 80                    3170 	.db 0x80
      0048FF E2                    3171 	.db 0xe2
      004900 94                    3172 	.db 0x94
      004901 80                    3173 	.db 0x80
      004902 E2                    3174 	.db 0xe2
      004903 94                    3175 	.db 0x94
      004904 80                    3176 	.db 0x80
      004905 E2                    3177 	.db 0xe2
      004906 94                    3178 	.db 0x94
      004907 80                    3179 	.db 0x80
      004908 E2                    3180 	.db 0xe2
      004909 94                    3181 	.db 0x94
      00490A 80                    3182 	.db 0x80
      00490B E2                    3183 	.db 0xe2
      00490C 94                    3184 	.db 0x94
      00490D 80                    3185 	.db 0x80
      00490E E2                    3186 	.db 0xe2
      00490F 94                    3187 	.db 0x94
      004910 80                    3188 	.db 0x80
      004911 E2                    3189 	.db 0xe2
      004912 94                    3190 	.db 0x94
      004913 80                    3191 	.db 0x80
      004914 E2                    3192 	.db 0xe2
      004915 94                    3193 	.db 0x94
      004916 80                    3194 	.db 0x80
      004917 E2                    3195 	.db 0xe2
      004918 94                    3196 	.db 0x94
      004919 80                    3197 	.db 0x80
      00491A E2                    3198 	.db 0xe2
      00491B 94                    3199 	.db 0x94
      00491C 80                    3200 	.db 0x80
      00491D E2                    3201 	.db 0xe2
      00491E 94                    3202 	.db 0x94
      00491F 80                    3203 	.db 0x80
      004920 E2                    3204 	.db 0xe2
      004921 94                    3205 	.db 0x94
      004922 80                    3206 	.db 0x80
      004923 E2                    3207 	.db 0xe2
      004924 94                    3208 	.db 0x94
      004925 80                    3209 	.db 0x80
      004926 E2                    3210 	.db 0xe2
      004927 94                    3211 	.db 0x94
      004928 80                    3212 	.db 0x80
      004929 E2                    3213 	.db 0xe2
      00492A 94                    3214 	.db 0x94
      00492B 80                    3215 	.db 0x80
      00492C E2                    3216 	.db 0xe2
      00492D 94                    3217 	.db 0x94
      00492E 80                    3218 	.db 0x80
      00492F E2                    3219 	.db 0xe2
      004930 94                    3220 	.db 0x94
      004931 80                    3221 	.db 0x80
      004932 E2                    3222 	.db 0xe2
      004933 94                    3223 	.db 0x94
      004934 80                    3224 	.db 0x80
      004935 E2                    3225 	.db 0xe2
      004936 94                    3226 	.db 0x94
      004937 80                    3227 	.db 0x80
      004938 E2                    3228 	.db 0xe2
      004939 94                    3229 	.db 0x94
      00493A 80                    3230 	.db 0x80
      00493B E2                    3231 	.db 0xe2
      00493C 94                    3232 	.db 0x94
      00493D 80                    3233 	.db 0x80
      00493E E2                    3234 	.db 0xe2
      00493F 94                    3235 	.db 0x94
      004940 80                    3236 	.db 0x80
      004941 E2                    3237 	.db 0xe2
      004942 94                    3238 	.db 0x94
      004943 80                    3239 	.db 0x80
      004944 E2                    3240 	.db 0xe2
      004945 94                    3241 	.db 0x94
      004946 80                    3242 	.db 0x80
      004947 E2                    3243 	.db 0xe2
      004948 94                    3244 	.db 0x94
      004949 80                    3245 	.db 0x80
      00494A E2                    3246 	.db 0xe2
      00494B 94                    3247 	.db 0x94
      00494C 80                    3248 	.db 0x80
      00494D E2                    3249 	.db 0xe2
      00494E 94                    3250 	.db 0x94
      00494F 80                    3251 	.db 0x80
      004950 E2                    3252 	.db 0xe2
      004951 94                    3253 	.db 0x94
      004952 80                    3254 	.db 0x80
      004953 E2                    3255 	.db 0xe2
      004954 94                    3256 	.db 0x94
      004955 80                    3257 	.db 0x80
      004956 E2                    3258 	.db 0xe2
      004957 94                    3259 	.db 0x94
      004958 80                    3260 	.db 0x80
      004959 E2                    3261 	.db 0xe2
      00495A 94                    3262 	.db 0x94
      00495B 80                    3263 	.db 0x80
      00495C E2                    3264 	.db 0xe2
      00495D 94                    3265 	.db 0x94
      00495E 80                    3266 	.db 0x80
      00495F E2                    3267 	.db 0xe2
      004960 94                    3268 	.db 0x94
      004961 80                    3269 	.db 0x80
      004962 E2                    3270 	.db 0xe2
      004963 94                    3271 	.db 0x94
      004964 80                    3272 	.db 0x80
      004965 E2                    3273 	.db 0xe2
      004966 94                    3274 	.db 0x94
      004967 80                    3275 	.db 0x80
      004968 E2                    3276 	.db 0xe2
      004969 94                    3277 	.db 0x94
      00496A 80                    3278 	.db 0x80
      00496B E2                    3279 	.db 0xe2
      00496C 94                    3280 	.db 0x94
      00496D 80                    3281 	.db 0x80
      00496E E2                    3282 	.db 0xe2
      00496F 94                    3283 	.db 0x94
      004970 80                    3284 	.db 0x80
      004971 E2                    3285 	.db 0xe2
      004972 94                    3286 	.db 0x94
      004973 80                    3287 	.db 0x80
      004974 E2                    3288 	.db 0xe2
      004975 94                    3289 	.db 0x94
      004976 A4                    3290 	.db 0xa4
      004977 0A                    3291 	.db 0x0a
      004978 0D                    3292 	.db 0x0d
      004979 00                    3293 	.db 0x00
                                   3294 	.area CSEG    (CODE)
                                   3295 	.area CONST   (CODE)
      00497A                       3296 ___str_6:
      00497A E2                    3297 	.db 0xe2
      00497B 94                    3298 	.db 0x94
      00497C 82                    3299 	.db 0x82
      00497D 20 20 20 20 20 52 20  3300 	.ascii "     R      "
             20 20 20 20 20
      004989 E2                    3301 	.db 0xe2
      00498A 94                    3302 	.db 0x94
      00498B 82                    3303 	.db 0x82
      00498C 20 52 65 61 64 20 66  3304 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0049B8 E2                    3305 	.db 0xe2
      0049B9 94                    3306 	.db 0x94
      0049BA 82                    3307 	.db 0x82
      0049BB 0A                    3308 	.db 0x0a
      0049BC 0D                    3309 	.db 0x0d
      0049BD 00                    3310 	.db 0x00
                                   3311 	.area CSEG    (CODE)
                                   3312 	.area CONST   (CODE)
      0049BE                       3313 ___str_7:
      0049BE E2                    3314 	.db 0xe2
      0049BF 94                    3315 	.db 0x94
      0049C0 82                    3316 	.db 0x82
      0049C1 20 20 20 20 20 57 20  3317 	.ascii "     W      "
             20 20 20 20 20
      0049CD E2                    3318 	.db 0xe2
      0049CE 94                    3319 	.db 0x94
      0049CF 82                    3320 	.db 0x82
      0049D0 20 57 72 69 74 65 20  3321 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0049FC E2                    3322 	.db 0xe2
      0049FD 94                    3323 	.db 0x94
      0049FE 82                    3324 	.db 0x82
      0049FF 0A                    3325 	.db 0x0a
      004A00 0D                    3326 	.db 0x0d
      004A01 00                    3327 	.db 0x00
                                   3328 	.area CSEG    (CODE)
                                   3329 	.area CONST   (CODE)
      004A02                       3330 ___str_8:
      004A02 E2                    3331 	.db 0xe2
      004A03 94                    3332 	.db 0x94
      004A04 82                    3333 	.db 0x82
      004A05 20 20 20 20 20 48 20  3334 	.ascii "     H      "
             20 20 20 20 20
      004A11 E2                    3335 	.db 0xe2
      004A12 94                    3336 	.db 0x94
      004A13 82                    3337 	.db 0x82
      004A14 20 44 69 73 70 6C 61  3338 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004A40 E2                    3339 	.db 0xe2
      004A41 94                    3340 	.db 0x94
      004A42 82                    3341 	.db 0x82
      004A43 0A                    3342 	.db 0x0a
      004A44 0D                    3343 	.db 0x0d
      004A45 00                    3344 	.db 0x00
                                   3345 	.area CSEG    (CODE)
                                   3346 	.area CONST   (CODE)
      004A46                       3347 ___str_9:
      004A46 E2                    3348 	.db 0xe2
      004A47 94                    3349 	.db 0x94
      004A48 82                    3350 	.db 0x82
      004A49 20 20 20 20 20 58 20  3351 	.ascii "     X      "
             20 20 20 20 20
      004A55 E2                    3352 	.db 0xe2
      004A56 94                    3353 	.db 0x94
      004A57 82                    3354 	.db 0x82
      004A58 20 52 65 73 65 74 20  3355 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004A84 E2                    3356 	.db 0xe2
      004A85 94                    3357 	.db 0x94
      004A86 82                    3358 	.db 0x82
      004A87 0A                    3359 	.db 0x0a
      004A88 0D                    3360 	.db 0x0d
      004A89 00                    3361 	.db 0x00
                                   3362 	.area CSEG    (CODE)
                                   3363 	.area CONST   (CODE)
      004A8A                       3364 ___str_10:
      004A8A E2                    3365 	.db 0xe2
      004A8B 94                    3366 	.db 0x94
      004A8C 82                    3367 	.db 0x82
      004A8D 20 20 20 20 20 3F 20  3368 	.ascii "     ?      "
             20 20 20 20 20
      004A99 E2                    3369 	.db 0xe2
      004A9A 94                    3370 	.db 0x94
      004A9B 82                    3371 	.db 0x82
      004A9C 20 44 69 73 70 6C 61  3372 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004AC8 E2                    3373 	.db 0xe2
      004AC9 94                    3374 	.db 0x94
      004ACA 82                    3375 	.db 0x82
      004ACB 0A                    3376 	.db 0x0a
      004ACC 0D                    3377 	.db 0x0d
      004ACD 00                    3378 	.db 0x00
                                   3379 	.area CSEG    (CODE)
                                   3380 	.area CONST   (CODE)
      004ACE                       3381 ___str_11:
      004ACE E2                    3382 	.db 0xe2
      004ACF 94                    3383 	.db 0x94
      004AD0 82                    3384 	.db 0x82
      004AD1 20 20 20 20 20 51 20  3385 	.ascii "     Q      "
             20 20 20 20 20
      004ADD E2                    3386 	.db 0xe2
      004ADE 94                    3387 	.db 0x94
      004ADF 82                    3388 	.db 0x82
      004AE0 20 51 75 69 74 20 70  3389 	.ascii " Quit program                               "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004B0C E2                    3390 	.db 0xe2
      004B0D 94                    3391 	.db 0x94
      004B0E 82                    3392 	.db 0x82
      004B0F 0A                    3393 	.db 0x0a
      004B10 0D                    3394 	.db 0x0d
      004B11 00                    3395 	.db 0x00
                                   3396 	.area CSEG    (CODE)
                                   3397 	.area CONST   (CODE)
      004B12                       3398 ___str_12:
      004B12 E2                    3399 	.db 0xe2
      004B13 94                    3400 	.db 0x94
      004B14 94                    3401 	.db 0x94
      004B15 E2                    3402 	.db 0xe2
      004B16 94                    3403 	.db 0x94
      004B17 80                    3404 	.db 0x80
      004B18 E2                    3405 	.db 0xe2
      004B19 94                    3406 	.db 0x94
      004B1A 80                    3407 	.db 0x80
      004B1B E2                    3408 	.db 0xe2
      004B1C 94                    3409 	.db 0x94
      004B1D 80                    3410 	.db 0x80
      004B1E E2                    3411 	.db 0xe2
      004B1F 94                    3412 	.db 0x94
      004B20 80                    3413 	.db 0x80
      004B21 E2                    3414 	.db 0xe2
      004B22 94                    3415 	.db 0x94
      004B23 80                    3416 	.db 0x80
      004B24 E2                    3417 	.db 0xe2
      004B25 94                    3418 	.db 0x94
      004B26 80                    3419 	.db 0x80
      004B27 E2                    3420 	.db 0xe2
      004B28 94                    3421 	.db 0x94
      004B29 80                    3422 	.db 0x80
      004B2A E2                    3423 	.db 0xe2
      004B2B 94                    3424 	.db 0x94
      004B2C 80                    3425 	.db 0x80
      004B2D E2                    3426 	.db 0xe2
      004B2E 94                    3427 	.db 0x94
      004B2F 80                    3428 	.db 0x80
      004B30 E2                    3429 	.db 0xe2
      004B31 94                    3430 	.db 0x94
      004B32 80                    3431 	.db 0x80
      004B33 E2                    3432 	.db 0xe2
      004B34 94                    3433 	.db 0x94
      004B35 80                    3434 	.db 0x80
      004B36 E2                    3435 	.db 0xe2
      004B37 94                    3436 	.db 0x94
      004B38 80                    3437 	.db 0x80
      004B39 E2                    3438 	.db 0xe2
      004B3A 94                    3439 	.db 0x94
      004B3B B4                    3440 	.db 0xb4
      004B3C E2                    3441 	.db 0xe2
      004B3D 94                    3442 	.db 0x94
      004B3E 80                    3443 	.db 0x80
      004B3F E2                    3444 	.db 0xe2
      004B40 94                    3445 	.db 0x94
      004B41 80                    3446 	.db 0x80
      004B42 E2                    3447 	.db 0xe2
      004B43 94                    3448 	.db 0x94
      004B44 80                    3449 	.db 0x80
      004B45 E2                    3450 	.db 0xe2
      004B46 94                    3451 	.db 0x94
      004B47 80                    3452 	.db 0x80
      004B48 E2                    3453 	.db 0xe2
      004B49 94                    3454 	.db 0x94
      004B4A 80                    3455 	.db 0x80
      004B4B E2                    3456 	.db 0xe2
      004B4C 94                    3457 	.db 0x94
      004B4D 80                    3458 	.db 0x80
      004B4E E2                    3459 	.db 0xe2
      004B4F 94                    3460 	.db 0x94
      004B50 80                    3461 	.db 0x80
      004B51 E2                    3462 	.db 0xe2
      004B52 94                    3463 	.db 0x94
      004B53 80                    3464 	.db 0x80
      004B54 E2                    3465 	.db 0xe2
      004B55 94                    3466 	.db 0x94
      004B56 80                    3467 	.db 0x80
      004B57 E2                    3468 	.db 0xe2
      004B58 94                    3469 	.db 0x94
      004B59 80                    3470 	.db 0x80
      004B5A E2                    3471 	.db 0xe2
      004B5B 94                    3472 	.db 0x94
      004B5C 80                    3473 	.db 0x80
      004B5D E2                    3474 	.db 0xe2
      004B5E 94                    3475 	.db 0x94
      004B5F 80                    3476 	.db 0x80
      004B60 E2                    3477 	.db 0xe2
      004B61 94                    3478 	.db 0x94
      004B62 80                    3479 	.db 0x80
      004B63 E2                    3480 	.db 0xe2
      004B64 94                    3481 	.db 0x94
      004B65 80                    3482 	.db 0x80
      004B66 E2                    3483 	.db 0xe2
      004B67 94                    3484 	.db 0x94
      004B68 80                    3485 	.db 0x80
      004B69 E2                    3486 	.db 0xe2
      004B6A 94                    3487 	.db 0x94
      004B6B 80                    3488 	.db 0x80
      004B6C E2                    3489 	.db 0xe2
      004B6D 94                    3490 	.db 0x94
      004B6E 80                    3491 	.db 0x80
      004B6F E2                    3492 	.db 0xe2
      004B70 94                    3493 	.db 0x94
      004B71 80                    3494 	.db 0x80
      004B72 E2                    3495 	.db 0xe2
      004B73 94                    3496 	.db 0x94
      004B74 80                    3497 	.db 0x80
      004B75 E2                    3498 	.db 0xe2
      004B76 94                    3499 	.db 0x94
      004B77 80                    3500 	.db 0x80
      004B78 E2                    3501 	.db 0xe2
      004B79 94                    3502 	.db 0x94
      004B7A 80                    3503 	.db 0x80
      004B7B E2                    3504 	.db 0xe2
      004B7C 94                    3505 	.db 0x94
      004B7D 80                    3506 	.db 0x80
      004B7E E2                    3507 	.db 0xe2
      004B7F 94                    3508 	.db 0x94
      004B80 80                    3509 	.db 0x80
      004B81 E2                    3510 	.db 0xe2
      004B82 94                    3511 	.db 0x94
      004B83 80                    3512 	.db 0x80
      004B84 E2                    3513 	.db 0xe2
      004B85 94                    3514 	.db 0x94
      004B86 80                    3515 	.db 0x80
      004B87 E2                    3516 	.db 0xe2
      004B88 94                    3517 	.db 0x94
      004B89 80                    3518 	.db 0x80
      004B8A E2                    3519 	.db 0xe2
      004B8B 94                    3520 	.db 0x94
      004B8C 80                    3521 	.db 0x80
      004B8D E2                    3522 	.db 0xe2
      004B8E 94                    3523 	.db 0x94
      004B8F 80                    3524 	.db 0x80
      004B90 E2                    3525 	.db 0xe2
      004B91 94                    3526 	.db 0x94
      004B92 80                    3527 	.db 0x80
      004B93 E2                    3528 	.db 0xe2
      004B94 94                    3529 	.db 0x94
      004B95 80                    3530 	.db 0x80
      004B96 E2                    3531 	.db 0xe2
      004B97 94                    3532 	.db 0x94
      004B98 80                    3533 	.db 0x80
      004B99 E2                    3534 	.db 0xe2
      004B9A 94                    3535 	.db 0x94
      004B9B 80                    3536 	.db 0x80
      004B9C E2                    3537 	.db 0xe2
      004B9D 94                    3538 	.db 0x94
      004B9E 80                    3539 	.db 0x80
      004B9F E2                    3540 	.db 0xe2
      004BA0 94                    3541 	.db 0x94
      004BA1 80                    3542 	.db 0x80
      004BA2 E2                    3543 	.db 0xe2
      004BA3 94                    3544 	.db 0x94
      004BA4 80                    3545 	.db 0x80
      004BA5 E2                    3546 	.db 0xe2
      004BA6 94                    3547 	.db 0x94
      004BA7 80                    3548 	.db 0x80
      004BA8 E2                    3549 	.db 0xe2
      004BA9 94                    3550 	.db 0x94
      004BAA 80                    3551 	.db 0x80
      004BAB E2                    3552 	.db 0xe2
      004BAC 94                    3553 	.db 0x94
      004BAD 80                    3554 	.db 0x80
      004BAE E2                    3555 	.db 0xe2
      004BAF 94                    3556 	.db 0x94
      004BB0 80                    3557 	.db 0x80
      004BB1 E2                    3558 	.db 0xe2
      004BB2 94                    3559 	.db 0x94
      004BB3 80                    3560 	.db 0x80
      004BB4 E2                    3561 	.db 0xe2
      004BB5 94                    3562 	.db 0x94
      004BB6 80                    3563 	.db 0x80
      004BB7 E2                    3564 	.db 0xe2
      004BB8 94                    3565 	.db 0x94
      004BB9 80                    3566 	.db 0x80
      004BBA E2                    3567 	.db 0xe2
      004BBB 94                    3568 	.db 0x94
      004BBC 80                    3569 	.db 0x80
      004BBD E2                    3570 	.db 0xe2
      004BBE 94                    3571 	.db 0x94
      004BBF 80                    3572 	.db 0x80
      004BC0 E2                    3573 	.db 0xe2
      004BC1 94                    3574 	.db 0x94
      004BC2 98                    3575 	.db 0x98
      004BC3 0A                    3576 	.db 0x0a
      004BC4 0D                    3577 	.db 0x0d
      004BC5 00                    3578 	.db 0x00
                                   3579 	.area CSEG    (CODE)
                                   3580 	.area CONST   (CODE)
      004BC6                       3581 ___str_13:
      004BC6 7C 20 24 20 25 63     3582 	.ascii "| $ %c"
      004BCC 0A                    3583 	.db 0x0a
      004BCD 0D                    3584 	.db 0x0d
      004BCE 00                    3585 	.db 0x00
                                   3586 	.area CSEG    (CODE)
                                   3587 	.area CONST   (CODE)
      004BCF                       3588 ___str_14:
      004BCF 0A                    3589 	.db 0x0a
      004BD0 E2                    3590 	.db 0xe2
      004BD1 94                    3591 	.db 0x94
      004BD2 8C                    3592 	.db 0x8c
      004BD3 E2                    3593 	.db 0xe2
      004BD4 94                    3594 	.db 0x94
      004BD5 80                    3595 	.db 0x80
      004BD6 E2                    3596 	.db 0xe2
      004BD7 94                    3597 	.db 0x94
      004BD8 80                    3598 	.db 0x80
      004BD9 E2                    3599 	.db 0xe2
      004BDA 94                    3600 	.db 0x94
      004BDB 80                    3601 	.db 0x80
      004BDC E2                    3602 	.db 0xe2
      004BDD 94                    3603 	.db 0x94
      004BDE 80                    3604 	.db 0x80
      004BDF E2                    3605 	.db 0xe2
      004BE0 94                    3606 	.db 0x94
      004BE1 80                    3607 	.db 0x80
      004BE2 E2                    3608 	.db 0xe2
      004BE3 94                    3609 	.db 0x94
      004BE4 80                    3610 	.db 0x80
      004BE5 E2                    3611 	.db 0xe2
      004BE6 94                    3612 	.db 0x94
      004BE7 80                    3613 	.db 0x80
      004BE8 E2                    3614 	.db 0xe2
      004BE9 94                    3615 	.db 0x94
      004BEA 80                    3616 	.db 0x80
      004BEB E2                    3617 	.db 0xe2
      004BEC 94                    3618 	.db 0x94
      004BED 80                    3619 	.db 0x80
      004BEE E2                    3620 	.db 0xe2
      004BEF 94                    3621 	.db 0x94
      004BF0 80                    3622 	.db 0x80
      004BF1 E2                    3623 	.db 0xe2
      004BF2 94                    3624 	.db 0x94
      004BF3 80                    3625 	.db 0x80
      004BF4 E2                    3626 	.db 0xe2
      004BF5 94                    3627 	.db 0x94
      004BF6 80                    3628 	.db 0x80
      004BF7 E2                    3629 	.db 0xe2
      004BF8 94                    3630 	.db 0x94
      004BF9 80                    3631 	.db 0x80
      004BFA E2                    3632 	.db 0xe2
      004BFB 94                    3633 	.db 0x94
      004BFC 80                    3634 	.db 0x80
      004BFD E2                    3635 	.db 0xe2
      004BFE 94                    3636 	.db 0x94
      004BFF 80                    3637 	.db 0x80
      004C00 20 57 52 49 54 45 20  3638 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      004C11 E2                    3639 	.db 0xe2
      004C12 94                    3640 	.db 0x94
      004C13 80                    3641 	.db 0x80
      004C14 E2                    3642 	.db 0xe2
      004C15 94                    3643 	.db 0x94
      004C16 80                    3644 	.db 0x80
      004C17 E2                    3645 	.db 0xe2
      004C18 94                    3646 	.db 0x94
      004C19 80                    3647 	.db 0x80
      004C1A E2                    3648 	.db 0xe2
      004C1B 94                    3649 	.db 0x94
      004C1C 80                    3650 	.db 0x80
      004C1D E2                    3651 	.db 0xe2
      004C1E 94                    3652 	.db 0x94
      004C1F 80                    3653 	.db 0x80
      004C20 E2                    3654 	.db 0xe2
      004C21 94                    3655 	.db 0x94
      004C22 80                    3656 	.db 0x80
      004C23 E2                    3657 	.db 0xe2
      004C24 94                    3658 	.db 0x94
      004C25 80                    3659 	.db 0x80
      004C26 E2                    3660 	.db 0xe2
      004C27 94                    3661 	.db 0x94
      004C28 80                    3662 	.db 0x80
      004C29 E2                    3663 	.db 0xe2
      004C2A 94                    3664 	.db 0x94
      004C2B 80                    3665 	.db 0x80
      004C2C E2                    3666 	.db 0xe2
      004C2D 94                    3667 	.db 0x94
      004C2E 80                    3668 	.db 0x80
      004C2F E2                    3669 	.db 0xe2
      004C30 94                    3670 	.db 0x94
      004C31 80                    3671 	.db 0x80
      004C32 E2                    3672 	.db 0xe2
      004C33 94                    3673 	.db 0x94
      004C34 80                    3674 	.db 0x80
      004C35 E2                    3675 	.db 0xe2
      004C36 94                    3676 	.db 0x94
      004C37 80                    3677 	.db 0x80
      004C38 E2                    3678 	.db 0xe2
      004C39 94                    3679 	.db 0x94
      004C3A 80                    3680 	.db 0x80
      004C3B E2                    3681 	.db 0xe2
      004C3C 94                    3682 	.db 0x94
      004C3D 90                    3683 	.db 0x90
      004C3E 0A                    3684 	.db 0x0a
      004C3F 0D                    3685 	.db 0x0d
      004C40 00                    3686 	.db 0x00
                                   3687 	.area CSEG    (CODE)
                                   3688 	.area CONST   (CODE)
      004C41                       3689 ___str_15:
      004C41 63 68 65 63 6B 20 70  3690 	.ascii "check point 1 "
             6F 69 6E 74 20 31 20
      004C4F 0A                    3691 	.db 0x0a
      004C50 0D                    3692 	.db 0x0d
      004C51 00                    3693 	.db 0x00
                                   3694 	.area CSEG    (CODE)
                                   3695 	.area CONST   (CODE)
      004C52                       3696 ___str_16:
      004C52 0A                    3697 	.db 0x0a
      004C53 E2                    3698 	.db 0xe2
      004C54 94                    3699 	.db 0x94
      004C55 8C                    3700 	.db 0x8c
      004C56 E2                    3701 	.db 0xe2
      004C57 94                    3702 	.db 0x94
      004C58 80                    3703 	.db 0x80
      004C59 E2                    3704 	.db 0xe2
      004C5A 94                    3705 	.db 0x94
      004C5B 80                    3706 	.db 0x80
      004C5C E2                    3707 	.db 0xe2
      004C5D 94                    3708 	.db 0x94
      004C5E 80                    3709 	.db 0x80
      004C5F E2                    3710 	.db 0xe2
      004C60 94                    3711 	.db 0x94
      004C61 80                    3712 	.db 0x80
      004C62 E2                    3713 	.db 0xe2
      004C63 94                    3714 	.db 0x94
      004C64 80                    3715 	.db 0x80
      004C65 E2                    3716 	.db 0xe2
      004C66 94                    3717 	.db 0x94
      004C67 80                    3718 	.db 0x80
      004C68 E2                    3719 	.db 0xe2
      004C69 94                    3720 	.db 0x94
      004C6A 80                    3721 	.db 0x80
      004C6B E2                    3722 	.db 0xe2
      004C6C 94                    3723 	.db 0x94
      004C6D 80                    3724 	.db 0x80
      004C6E E2                    3725 	.db 0xe2
      004C6F 94                    3726 	.db 0x94
      004C70 80                    3727 	.db 0x80
      004C71 E2                    3728 	.db 0xe2
      004C72 94                    3729 	.db 0x94
      004C73 80                    3730 	.db 0x80
      004C74 E2                    3731 	.db 0xe2
      004C75 94                    3732 	.db 0x94
      004C76 80                    3733 	.db 0x80
      004C77 E2                    3734 	.db 0xe2
      004C78 94                    3735 	.db 0x94
      004C79 80                    3736 	.db 0x80
      004C7A E2                    3737 	.db 0xe2
      004C7B 94                    3738 	.db 0x94
      004C7C 80                    3739 	.db 0x80
      004C7D E2                    3740 	.db 0xe2
      004C7E 94                    3741 	.db 0x94
      004C7F 80                    3742 	.db 0x80
      004C80 E2                    3743 	.db 0xe2
      004C81 94                    3744 	.db 0x94
      004C82 80                    3745 	.db 0x80
      004C83 20 52 45 41 44 20 4F  3746 	.ascii " READ OPERATION "
             50 45 52 41 54 49 4F
             4E 20
      004C93 E2                    3747 	.db 0xe2
      004C94 94                    3748 	.db 0x94
      004C95 80                    3749 	.db 0x80
      004C96 E2                    3750 	.db 0xe2
      004C97 94                    3751 	.db 0x94
      004C98 80                    3752 	.db 0x80
      004C99 E2                    3753 	.db 0xe2
      004C9A 94                    3754 	.db 0x94
      004C9B 80                    3755 	.db 0x80
      004C9C E2                    3756 	.db 0xe2
      004C9D 94                    3757 	.db 0x94
      004C9E 80                    3758 	.db 0x80
      004C9F E2                    3759 	.db 0xe2
      004CA0 94                    3760 	.db 0x94
      004CA1 80                    3761 	.db 0x80
      004CA2 E2                    3762 	.db 0xe2
      004CA3 94                    3763 	.db 0x94
      004CA4 80                    3764 	.db 0x80
      004CA5 E2                    3765 	.db 0xe2
      004CA6 94                    3766 	.db 0x94
      004CA7 80                    3767 	.db 0x80
      004CA8 E2                    3768 	.db 0xe2
      004CA9 94                    3769 	.db 0x94
      004CAA 80                    3770 	.db 0x80
      004CAB E2                    3771 	.db 0xe2
      004CAC 94                    3772 	.db 0x94
      004CAD 80                    3773 	.db 0x80
      004CAE E2                    3774 	.db 0xe2
      004CAF 94                    3775 	.db 0x94
      004CB0 80                    3776 	.db 0x80
      004CB1 E2                    3777 	.db 0xe2
      004CB2 94                    3778 	.db 0x94
      004CB3 80                    3779 	.db 0x80
      004CB4 E2                    3780 	.db 0xe2
      004CB5 94                    3781 	.db 0x94
      004CB6 80                    3782 	.db 0x80
      004CB7 E2                    3783 	.db 0xe2
      004CB8 94                    3784 	.db 0x94
      004CB9 80                    3785 	.db 0x80
      004CBA E2                    3786 	.db 0xe2
      004CBB 94                    3787 	.db 0x94
      004CBC 80                    3788 	.db 0x80
      004CBD E2                    3789 	.db 0xe2
      004CBE 94                    3790 	.db 0x94
      004CBF 80                    3791 	.db 0x80
      004CC0 E2                    3792 	.db 0xe2
      004CC1 94                    3793 	.db 0x94
      004CC2 90                    3794 	.db 0x90
      004CC3 0A                    3795 	.db 0x0a
      004CC4 0D                    3796 	.db 0x0d
      004CC5 00                    3797 	.db 0x00
                                   3798 	.area CSEG    (CODE)
                                   3799 	.area CONST   (CODE)
      004CC6                       3800 ___str_17:
      004CC6 7C 20 52 65 61 64 69  3801 	.ascii "| Reading from Address 0x%03X           |"
             6E 67 20 66 72 6F 6D
             20 41 64 64 72 65 73
             73 20 30 78 25 30 33
             58 20 20 20 20 20 20
             20 20 20 20 20 7C
      004CEF 0A                    3802 	.db 0x0a
      004CF0 0D                    3803 	.db 0x0d
      004CF1 00                    3804 	.db 0x00
                                   3805 	.area CSEG    (CODE)
                                   3806 	.area CONST   (CODE)
      004CF2                       3807 ___str_18:
      004CF2 49 4E 56 41 4C 49 44  3808 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      004CFF 0A                    3809 	.db 0x0a
      004D00 0D                    3810 	.db 0x0d
      004D01 00                    3811 	.db 0x00
                                   3812 	.area CSEG    (CODE)
                                   3813 	.area CONST   (CODE)
      004D02                       3814 ___str_19:
      004D02 E2                    3815 	.db 0xe2
      004D03 94                    3816 	.db 0x94
      004D04 82                    3817 	.db 0x82
      004D05 20 45 6E 74 65 72 20  3818 	.ascii " Enter address (hex, up to 3 characters): "
             61 64 64 72 65 73 73
             20 28 68 65 78 2C 20
             75 70 20 74 6F 20 33
             20 63 68 61 72 61 63
             74 65 72 73 29 3A 20
      004D2F 0A                    3819 	.db 0x0a
      004D30 0D                    3820 	.db 0x0d
      004D31 7C                    3821 	.ascii "|"
      004D32 00                    3822 	.db 0x00
                                   3823 	.area CSEG    (CODE)
                                   3824 	.area CONST   (CODE)
      004D33                       3825 ___str_20:
      004D33 7C 20 24 20           3826 	.ascii "| $ "
      004D37 00                    3827 	.db 0x00
                                   3828 	.area CSEG    (CODE)
                                   3829 	.area CONST   (CODE)
      004D38                       3830 ___str_21:
      004D38 0A                    3831 	.db 0x0a
      004D39 0D                    3832 	.db 0x0d
      004D3A E2                    3833 	.db 0xe2
      004D3B 94                    3834 	.db 0x94
      004D3C 82                    3835 	.db 0x82
      004D3D 20 45 6E 74 65 72 65  3836 	.ascii " Entered address: 0x%03X"
             64 20 61 64 64 72 65
             73 73 3A 20 30 78 25
             30 33 58
      004D55 0A                    3837 	.db 0x0a
      004D56 0D                    3838 	.db 0x0d
      004D57 00                    3839 	.db 0x00
                                   3840 	.area CSEG    (CODE)
                                   3841 	.area CONST   (CODE)
      004D58                       3842 ___str_22:
      004D58 E2                    3843 	.db 0xe2
      004D59 95                    3844 	.db 0x95
      004D5A 94                    3845 	.db 0x94
      004D5B E2                    3846 	.db 0xe2
      004D5C 95                    3847 	.db 0x95
      004D5D 90                    3848 	.db 0x90
      004D5E E2                    3849 	.db 0xe2
      004D5F 95                    3850 	.db 0x95
      004D60 90                    3851 	.db 0x90
      004D61 E2                    3852 	.db 0xe2
      004D62 95                    3853 	.db 0x95
      004D63 90                    3854 	.db 0x90
      004D64 E2                    3855 	.db 0xe2
      004D65 95                    3856 	.db 0x95
      004D66 90                    3857 	.db 0x90
      004D67 E2                    3858 	.db 0xe2
      004D68 95                    3859 	.db 0x95
      004D69 90                    3860 	.db 0x90
      004D6A E2                    3861 	.db 0xe2
      004D6B 95                    3862 	.db 0x95
      004D6C 90                    3863 	.db 0x90
      004D6D E2                    3864 	.db 0xe2
      004D6E 95                    3865 	.db 0x95
      004D6F 90                    3866 	.db 0x90
      004D70 E2                    3867 	.db 0xe2
      004D71 95                    3868 	.db 0x95
      004D72 90                    3869 	.db 0x90
      004D73 E2                    3870 	.db 0xe2
      004D74 95                    3871 	.db 0x95
      004D75 90                    3872 	.db 0x90
      004D76 E2                    3873 	.db 0xe2
      004D77 95                    3874 	.db 0x95
      004D78 90                    3875 	.db 0x90
      004D79 E2                    3876 	.db 0xe2
      004D7A 95                    3877 	.db 0x95
      004D7B 90                    3878 	.db 0x90
      004D7C E2                    3879 	.db 0xe2
      004D7D 95                    3880 	.db 0x95
      004D7E 90                    3881 	.db 0x90
      004D7F E2                    3882 	.db 0xe2
      004D80 95                    3883 	.db 0x95
      004D81 90                    3884 	.db 0x90
      004D82 E2                    3885 	.db 0xe2
      004D83 95                    3886 	.db 0x95
      004D84 90                    3887 	.db 0x90
      004D85 E2                    3888 	.db 0xe2
      004D86 95                    3889 	.db 0x95
      004D87 90                    3890 	.db 0x90
      004D88 E2                    3891 	.db 0xe2
      004D89 95                    3892 	.db 0x95
      004D8A 90                    3893 	.db 0x90
      004D8B E2                    3894 	.db 0xe2
      004D8C 95                    3895 	.db 0x95
      004D8D 90                    3896 	.db 0x90
      004D8E E2                    3897 	.db 0xe2
      004D8F 95                    3898 	.db 0x95
      004D90 90                    3899 	.db 0x90
      004D91 E2                    3900 	.db 0xe2
      004D92 95                    3901 	.db 0x95
      004D93 90                    3902 	.db 0x90
      004D94 E2                    3903 	.db 0xe2
      004D95 95                    3904 	.db 0x95
      004D96 90                    3905 	.db 0x90
      004D97 E2                    3906 	.db 0xe2
      004D98 95                    3907 	.db 0x95
      004D99 90                    3908 	.db 0x90
      004D9A E2                    3909 	.db 0xe2
      004D9B 95                    3910 	.db 0x95
      004D9C 90                    3911 	.db 0x90
      004D9D E2                    3912 	.db 0xe2
      004D9E 95                    3913 	.db 0x95
      004D9F 90                    3914 	.db 0x90
      004DA0 E2                    3915 	.db 0xe2
      004DA1 95                    3916 	.db 0x95
      004DA2 90                    3917 	.db 0x90
      004DA3 E2                    3918 	.db 0xe2
      004DA4 95                    3919 	.db 0x95
      004DA5 90                    3920 	.db 0x90
      004DA6 E2                    3921 	.db 0xe2
      004DA7 95                    3922 	.db 0x95
      004DA8 90                    3923 	.db 0x90
      004DA9 E2                    3924 	.db 0xe2
      004DAA 95                    3925 	.db 0x95
      004DAB 90                    3926 	.db 0x90
      004DAC E2                    3927 	.db 0xe2
      004DAD 95                    3928 	.db 0x95
      004DAE 90                    3929 	.db 0x90
      004DAF E2                    3930 	.db 0xe2
      004DB0 95                    3931 	.db 0x95
      004DB1 90                    3932 	.db 0x90
      004DB2 E2                    3933 	.db 0xe2
      004DB3 95                    3934 	.db 0x95
      004DB4 90                    3935 	.db 0x90
      004DB5 E2                    3936 	.db 0xe2
      004DB6 95                    3937 	.db 0x95
      004DB7 90                    3938 	.db 0x90
      004DB8 E2                    3939 	.db 0xe2
      004DB9 95                    3940 	.db 0x95
      004DBA 90                    3941 	.db 0x90
      004DBB E2                    3942 	.db 0xe2
      004DBC 95                    3943 	.db 0x95
      004DBD 90                    3944 	.db 0x90
      004DBE E2                    3945 	.db 0xe2
      004DBF 95                    3946 	.db 0x95
      004DC0 90                    3947 	.db 0x90
      004DC1 E2                    3948 	.db 0xe2
      004DC2 95                    3949 	.db 0x95
      004DC3 90                    3950 	.db 0x90
      004DC4 E2                    3951 	.db 0xe2
      004DC5 95                    3952 	.db 0x95
      004DC6 90                    3953 	.db 0x90
      004DC7 E2                    3954 	.db 0xe2
      004DC8 95                    3955 	.db 0x95
      004DC9 90                    3956 	.db 0x90
      004DCA E2                    3957 	.db 0xe2
      004DCB 95                    3958 	.db 0x95
      004DCC 90                    3959 	.db 0x90
      004DCD E2                    3960 	.db 0xe2
      004DCE 95                    3961 	.db 0x95
      004DCF 90                    3962 	.db 0x90
      004DD0 E2                    3963 	.db 0xe2
      004DD1 95                    3964 	.db 0x95
      004DD2 90                    3965 	.db 0x90
      004DD3 E2                    3966 	.db 0xe2
      004DD4 95                    3967 	.db 0x95
      004DD5 90                    3968 	.db 0x90
      004DD6 E2                    3969 	.db 0xe2
      004DD7 95                    3970 	.db 0x95
      004DD8 90                    3971 	.db 0x90
      004DD9 E2                    3972 	.db 0xe2
      004DDA 95                    3973 	.db 0x95
      004DDB 97                    3974 	.db 0x97
      004DDC 0A                    3975 	.db 0x0a
      004DDD 0D                    3976 	.db 0x0d
      004DDE 00                    3977 	.db 0x00
                                   3978 	.area CSEG    (CODE)
                                   3979 	.area CONST   (CODE)
      004DDF                       3980 ___str_23:
      004DDF E2                    3981 	.db 0xe2
      004DE0 95                    3982 	.db 0x95
      004DE1 91                    3983 	.db 0x91
      004DE2 20 20 20 20 20 20 20  3984 	.ascii "       ! ADDRESS OUT OF RANGE !         "
             21 20 41 44 44 52 45
             53 53 20 4F 55 54 20
             4F 46 20 52 41 4E 47
             45 20 21 20 20 20 20
             20 20 20 20 20
      004E0A E2                    3985 	.db 0xe2
      004E0B 95                    3986 	.db 0x95
      004E0C 91                    3987 	.db 0x91
      004E0D 0A                    3988 	.db 0x0a
      004E0E 0D                    3989 	.db 0x0d
      004E0F 00                    3990 	.db 0x00
                                   3991 	.area CSEG    (CODE)
                                   3992 	.area CONST   (CODE)
      004E10                       3993 ___str_24:
      004E10 E2                    3994 	.db 0xe2
      004E11 95                    3995 	.db 0x95
      004E12 91                    3996 	.db 0x91
      004E13 20 20 20 20 20 50 6C  3997 	.ascii "     Please Enter Valid Address         "
             65 61 73 65 20 45 6E
             74 65 72 20 56 61 6C
             69 64 20 41 64 64 72
             65 73 73 20 20 20 20
             20 20 20 20 20
      004E3B E2                    3998 	.db 0xe2
      004E3C 95                    3999 	.db 0x95
      004E3D 91                    4000 	.db 0x91
      004E3E 0A                    4001 	.db 0x0a
      004E3F 0D                    4002 	.db 0x0d
      004E40 00                    4003 	.db 0x00
                                   4004 	.area CSEG    (CODE)
                                   4005 	.area CONST   (CODE)
      004E41                       4006 ___str_25:
      004E41 E2                    4007 	.db 0xe2
      004E42 95                    4008 	.db 0x95
      004E43 9A                    4009 	.db 0x9a
      004E44 E2                    4010 	.db 0xe2
      004E45 95                    4011 	.db 0x95
      004E46 90                    4012 	.db 0x90
      004E47 E2                    4013 	.db 0xe2
      004E48 95                    4014 	.db 0x95
      004E49 90                    4015 	.db 0x90
      004E4A E2                    4016 	.db 0xe2
      004E4B 95                    4017 	.db 0x95
      004E4C 90                    4018 	.db 0x90
      004E4D E2                    4019 	.db 0xe2
      004E4E 95                    4020 	.db 0x95
      004E4F 90                    4021 	.db 0x90
      004E50 E2                    4022 	.db 0xe2
      004E51 95                    4023 	.db 0x95
      004E52 90                    4024 	.db 0x90
      004E53 E2                    4025 	.db 0xe2
      004E54 95                    4026 	.db 0x95
      004E55 90                    4027 	.db 0x90
      004E56 E2                    4028 	.db 0xe2
      004E57 95                    4029 	.db 0x95
      004E58 90                    4030 	.db 0x90
      004E59 E2                    4031 	.db 0xe2
      004E5A 95                    4032 	.db 0x95
      004E5B 90                    4033 	.db 0x90
      004E5C E2                    4034 	.db 0xe2
      004E5D 95                    4035 	.db 0x95
      004E5E 90                    4036 	.db 0x90
      004E5F E2                    4037 	.db 0xe2
      004E60 95                    4038 	.db 0x95
      004E61 90                    4039 	.db 0x90
      004E62 E2                    4040 	.db 0xe2
      004E63 95                    4041 	.db 0x95
      004E64 90                    4042 	.db 0x90
      004E65 E2                    4043 	.db 0xe2
      004E66 95                    4044 	.db 0x95
      004E67 90                    4045 	.db 0x90
      004E68 E2                    4046 	.db 0xe2
      004E69 95                    4047 	.db 0x95
      004E6A 90                    4048 	.db 0x90
      004E6B E2                    4049 	.db 0xe2
      004E6C 95                    4050 	.db 0x95
      004E6D 90                    4051 	.db 0x90
      004E6E E2                    4052 	.db 0xe2
      004E6F 95                    4053 	.db 0x95
      004E70 90                    4054 	.db 0x90
      004E71 E2                    4055 	.db 0xe2
      004E72 95                    4056 	.db 0x95
      004E73 90                    4057 	.db 0x90
      004E74 E2                    4058 	.db 0xe2
      004E75 95                    4059 	.db 0x95
      004E76 90                    4060 	.db 0x90
      004E77 E2                    4061 	.db 0xe2
      004E78 95                    4062 	.db 0x95
      004E79 90                    4063 	.db 0x90
      004E7A E2                    4064 	.db 0xe2
      004E7B 95                    4065 	.db 0x95
      004E7C 90                    4066 	.db 0x90
      004E7D E2                    4067 	.db 0xe2
      004E7E 95                    4068 	.db 0x95
      004E7F 90                    4069 	.db 0x90
      004E80 E2                    4070 	.db 0xe2
      004E81 95                    4071 	.db 0x95
      004E82 90                    4072 	.db 0x90
      004E83 E2                    4073 	.db 0xe2
      004E84 95                    4074 	.db 0x95
      004E85 90                    4075 	.db 0x90
      004E86 E2                    4076 	.db 0xe2
      004E87 95                    4077 	.db 0x95
      004E88 90                    4078 	.db 0x90
      004E89 E2                    4079 	.db 0xe2
      004E8A 95                    4080 	.db 0x95
      004E8B 90                    4081 	.db 0x90
      004E8C E2                    4082 	.db 0xe2
      004E8D 95                    4083 	.db 0x95
      004E8E 90                    4084 	.db 0x90
      004E8F E2                    4085 	.db 0xe2
      004E90 95                    4086 	.db 0x95
      004E91 90                    4087 	.db 0x90
      004E92 E2                    4088 	.db 0xe2
      004E93 95                    4089 	.db 0x95
      004E94 90                    4090 	.db 0x90
      004E95 E2                    4091 	.db 0xe2
      004E96 95                    4092 	.db 0x95
      004E97 90                    4093 	.db 0x90
      004E98 E2                    4094 	.db 0xe2
      004E99 95                    4095 	.db 0x95
      004E9A 90                    4096 	.db 0x90
      004E9B E2                    4097 	.db 0xe2
      004E9C 95                    4098 	.db 0x95
      004E9D 90                    4099 	.db 0x90
      004E9E E2                    4100 	.db 0xe2
      004E9F 95                    4101 	.db 0x95
      004EA0 90                    4102 	.db 0x90
      004EA1 E2                    4103 	.db 0xe2
      004EA2 95                    4104 	.db 0x95
      004EA3 90                    4105 	.db 0x90
      004EA4 E2                    4106 	.db 0xe2
      004EA5 95                    4107 	.db 0x95
      004EA6 90                    4108 	.db 0x90
      004EA7 E2                    4109 	.db 0xe2
      004EA8 95                    4110 	.db 0x95
      004EA9 90                    4111 	.db 0x90
      004EAA E2                    4112 	.db 0xe2
      004EAB 95                    4113 	.db 0x95
      004EAC 90                    4114 	.db 0x90
      004EAD E2                    4115 	.db 0xe2
      004EAE 95                    4116 	.db 0x95
      004EAF 90                    4117 	.db 0x90
      004EB0 E2                    4118 	.db 0xe2
      004EB1 95                    4119 	.db 0x95
      004EB2 90                    4120 	.db 0x90
      004EB3 E2                    4121 	.db 0xe2
      004EB4 95                    4122 	.db 0x95
      004EB5 90                    4123 	.db 0x90
      004EB6 E2                    4124 	.db 0xe2
      004EB7 95                    4125 	.db 0x95
      004EB8 90                    4126 	.db 0x90
      004EB9 E2                    4127 	.db 0xe2
      004EBA 95                    4128 	.db 0x95
      004EBB 90                    4129 	.db 0x90
      004EBC E2                    4130 	.db 0xe2
      004EBD 95                    4131 	.db 0x95
      004EBE 90                    4132 	.db 0x90
      004EBF E2                    4133 	.db 0xe2
      004EC0 95                    4134 	.db 0x95
      004EC1 90                    4135 	.db 0x90
      004EC2 E2                    4136 	.db 0xe2
      004EC3 95                    4137 	.db 0x95
      004EC4 9D                    4138 	.db 0x9d
      004EC5 0A                    4139 	.db 0x0a
      004EC6 0D                    4140 	.db 0x0d
      004EC7 00                    4141 	.db 0x00
                                   4142 	.area CSEG    (CODE)
                                   4143 	.area CONST   (CODE)
      004EC8                       4144 ___str_26:
      004EC8 E2                    4145 	.db 0xe2
      004EC9 94                    4146 	.db 0x94
      004ECA 82                    4147 	.db 0x82
      004ECB 20 45 6E 74 65 72 20  4148 	.ascii " Enter data (hex, up to 2 characters): "
             64 61 74 61 20 28 68
             65 78 2C 20 75 70 20
             74 6F 20 32 20 63 68
             61 72 61 63 74 65 72
             73 29 3A 20
      004EF2 0A                    4149 	.db 0x0a
      004EF3 0D                    4150 	.db 0x0d
      004EF4 7C                    4151 	.ascii "|"
      004EF5 00                    4152 	.db 0x00
                                   4153 	.area CSEG    (CODE)
                                   4154 	.area CONST   (CODE)
      004EF6                       4155 ___str_27:
      004EF6 0A                    4156 	.db 0x0a
      004EF7 0D                    4157 	.db 0x0d
      004EF8 E2                    4158 	.db 0xe2
      004EF9 94                    4159 	.db 0x94
      004EFA 82                    4160 	.db 0x82
      004EFB 20 45 6E 74 65 72 65  4161 	.ascii " Entered data: 0x%03X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 33 58
      004F10 0A                    4162 	.db 0x0a
      004F11 0D                    4163 	.db 0x0d
      004F12 00                    4164 	.db 0x00
                                   4165 	.area CSEG    (CODE)
                                   4166 	.area CONST   (CODE)
      004F13                       4167 ___str_28:
      004F13 44 61 74 61 20 6F 75  4168 	.ascii "Data out of Range"
             74 20 6F 66 20 52 61
             6E 67 65
      004F24 0A                    4169 	.db 0x0a
      004F25 0D                    4170 	.db 0x0d
      004F26 00                    4171 	.db 0x00
                                   4172 	.area CSEG    (CODE)
                                   4173 	.area CONST   (CODE)
      004F27                       4174 ___str_29:
      004F27 63 68 65 63 6B 20 70  4175 	.ascii "check point 2"
             6F 69 6E 74 20 32
      004F34 0A                    4176 	.db 0x0a
      004F35 0D                    4177 	.db 0x0d
      004F36 00                    4178 	.db 0x00
                                   4179 	.area CSEG    (CODE)
                                   4180 	.area CONST   (CODE)
      004F37                       4181 ___str_30:
      004F37 63 68 65 63 6B 70 6F  4182 	.ascii "checkpoint 3"
             69 6E 74 20 33
      004F43 0A                    4183 	.db 0x0a
      004F44 0D                    4184 	.db 0x0d
      004F45 00                    4185 	.db 0x00
                                   4186 	.area CSEG    (CODE)
                                   4187 	.area CONST   (CODE)
      004F46                       4188 ___str_31:
      004F46 45 72 72 6F 72 3A 20  4189 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      004F6E 0A                    4190 	.db 0x0a
      004F6F 0D                    4191 	.db 0x0d
      004F70 00                    4192 	.db 0x00
                                   4193 	.area CSEG    (CODE)
                                   4194 	.area CONST   (CODE)
      004F71                       4195 ___str_32:
      004F71 45 72 72 6F 72 3A 20  4196 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      004F91 0A                    4197 	.db 0x0a
      004F92 0D                    4198 	.db 0x0d
      004F93 00                    4199 	.db 0x00
                                   4200 	.area CSEG    (CODE)
                                   4201 	.area CONST   (CODE)
      004F94                       4202 ___str_33:
      004F94 45 72 72 6F 72 3A 20  4203 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      004FAA 0A                    4204 	.db 0x0a
      004FAB 0D                    4205 	.db 0x0d
      004FAC 00                    4206 	.db 0x00
                                   4207 	.area CSEG    (CODE)
                                   4208 	.area CONST   (CODE)
      004FAD                       4209 ___str_34:
      004FAD 63 68 65 63 6B 70 6F  4210 	.ascii "checkpoint 4"
             69 6E 74 20 34
      004FB9 0A                    4211 	.db 0x0a
      004FBA 0D                    4212 	.db 0x0d
      004FBB 00                    4213 	.db 0x00
                                   4214 	.area CSEG    (CODE)
                                   4215 	.area CONST   (CODE)
      004FBC                       4216 ___str_35:
      004FBC 7C 20 57 72 69 74 69  4217 	.ascii "| Writing at Address 0x%03X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 33 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      004FEE 0A                    4218 	.db 0x0a
      004FEF 0D                    4219 	.db 0x0d
      004FF0 00                    4220 	.db 0x00
                                   4221 	.area CSEG    (CODE)
                                   4222 	.area CONST   (CODE)
      004FF1                       4223 ___str_36:
      004FF1 E2                    4224 	.db 0xe2
      004FF2 94                    4225 	.db 0x94
      004FF3 82                    4226 	.db 0x82
      004FF4 20 57 72 69 74 65 20  4227 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      005023 E2                    4228 	.db 0xe2
      005024 94                    4229 	.db 0x94
      005025 82                    4230 	.db 0x82
      005026 0A                    4231 	.db 0x0a
      005027 0D                    4232 	.db 0x0d
      005028 00                    4233 	.db 0x00
                                   4234 	.area CSEG    (CODE)
                                   4235 	.area CONST   (CODE)
      005029                       4236 ___str_37:
      005029 E2                    4237 	.db 0xe2
      00502A 94                    4238 	.db 0x94
      00502B 94                    4239 	.db 0x94
      00502C E2                    4240 	.db 0xe2
      00502D 94                    4241 	.db 0x94
      00502E 80                    4242 	.db 0x80
      00502F E2                    4243 	.db 0xe2
      005030 94                    4244 	.db 0x94
      005031 80                    4245 	.db 0x80
      005032 E2                    4246 	.db 0xe2
      005033 94                    4247 	.db 0x94
      005034 80                    4248 	.db 0x80
      005035 E2                    4249 	.db 0xe2
      005036 94                    4250 	.db 0x94
      005037 80                    4251 	.db 0x80
      005038 E2                    4252 	.db 0xe2
      005039 94                    4253 	.db 0x94
      00503A 80                    4254 	.db 0x80
      00503B E2                    4255 	.db 0xe2
      00503C 94                    4256 	.db 0x94
      00503D 80                    4257 	.db 0x80
      00503E E2                    4258 	.db 0xe2
      00503F 94                    4259 	.db 0x94
      005040 80                    4260 	.db 0x80
      005041 E2                    4261 	.db 0xe2
      005042 94                    4262 	.db 0x94
      005043 80                    4263 	.db 0x80
      005044 E2                    4264 	.db 0xe2
      005045 94                    4265 	.db 0x94
      005046 80                    4266 	.db 0x80
      005047 E2                    4267 	.db 0xe2
      005048 94                    4268 	.db 0x94
      005049 80                    4269 	.db 0x80
      00504A E2                    4270 	.db 0xe2
      00504B 94                    4271 	.db 0x94
      00504C 80                    4272 	.db 0x80
      00504D E2                    4273 	.db 0xe2
      00504E 94                    4274 	.db 0x94
      00504F 80                    4275 	.db 0x80
      005050 E2                    4276 	.db 0xe2
      005051 94                    4277 	.db 0x94
      005052 80                    4278 	.db 0x80
      005053 E2                    4279 	.db 0xe2
      005054 94                    4280 	.db 0x94
      005055 80                    4281 	.db 0x80
      005056 E2                    4282 	.db 0xe2
      005057 94                    4283 	.db 0x94
      005058 80                    4284 	.db 0x80
      005059 E2                    4285 	.db 0xe2
      00505A 94                    4286 	.db 0x94
      00505B 80                    4287 	.db 0x80
      00505C E2                    4288 	.db 0xe2
      00505D 94                    4289 	.db 0x94
      00505E 80                    4290 	.db 0x80
      00505F E2                    4291 	.db 0xe2
      005060 94                    4292 	.db 0x94
      005061 80                    4293 	.db 0x80
      005062 E2                    4294 	.db 0xe2
      005063 94                    4295 	.db 0x94
      005064 80                    4296 	.db 0x80
      005065 E2                    4297 	.db 0xe2
      005066 94                    4298 	.db 0x94
      005067 80                    4299 	.db 0x80
      005068 E2                    4300 	.db 0xe2
      005069 94                    4301 	.db 0x94
      00506A 80                    4302 	.db 0x80
      00506B E2                    4303 	.db 0xe2
      00506C 94                    4304 	.db 0x94
      00506D 80                    4305 	.db 0x80
      00506E E2                    4306 	.db 0xe2
      00506F 94                    4307 	.db 0x94
      005070 80                    4308 	.db 0x80
      005071 E2                    4309 	.db 0xe2
      005072 94                    4310 	.db 0x94
      005073 80                    4311 	.db 0x80
      005074 E2                    4312 	.db 0xe2
      005075 94                    4313 	.db 0x94
      005076 80                    4314 	.db 0x80
      005077 E2                    4315 	.db 0xe2
      005078 94                    4316 	.db 0x94
      005079 80                    4317 	.db 0x80
      00507A E2                    4318 	.db 0xe2
      00507B 94                    4319 	.db 0x94
      00507C 80                    4320 	.db 0x80
      00507D E2                    4321 	.db 0xe2
      00507E 94                    4322 	.db 0x94
      00507F 80                    4323 	.db 0x80
      005080 E2                    4324 	.db 0xe2
      005081 94                    4325 	.db 0x94
      005082 80                    4326 	.db 0x80
      005083 E2                    4327 	.db 0xe2
      005084 94                    4328 	.db 0x94
      005085 80                    4329 	.db 0x80
      005086 E2                    4330 	.db 0xe2
      005087 94                    4331 	.db 0x94
      005088 80                    4332 	.db 0x80
      005089 E2                    4333 	.db 0xe2
      00508A 94                    4334 	.db 0x94
      00508B 80                    4335 	.db 0x80
      00508C E2                    4336 	.db 0xe2
      00508D 94                    4337 	.db 0x94
      00508E 80                    4338 	.db 0x80
      00508F E2                    4339 	.db 0xe2
      005090 94                    4340 	.db 0x94
      005091 80                    4341 	.db 0x80
      005092 E2                    4342 	.db 0xe2
      005093 94                    4343 	.db 0x94
      005094 80                    4344 	.db 0x80
      005095 E2                    4345 	.db 0xe2
      005096 94                    4346 	.db 0x94
      005097 80                    4347 	.db 0x80
      005098 E2                    4348 	.db 0xe2
      005099 94                    4349 	.db 0x94
      00509A 80                    4350 	.db 0x80
      00509B E2                    4351 	.db 0xe2
      00509C 94                    4352 	.db 0x94
      00509D 80                    4353 	.db 0x80
      00509E E2                    4354 	.db 0xe2
      00509F 94                    4355 	.db 0x94
      0050A0 80                    4356 	.db 0x80
      0050A1 E2                    4357 	.db 0xe2
      0050A2 94                    4358 	.db 0x94
      0050A3 80                    4359 	.db 0x80
      0050A4 E2                    4360 	.db 0xe2
      0050A5 94                    4361 	.db 0x94
      0050A6 80                    4362 	.db 0x80
      0050A7 E2                    4363 	.db 0xe2
      0050A8 94                    4364 	.db 0x94
      0050A9 80                    4365 	.db 0x80
      0050AA E2                    4366 	.db 0xe2
      0050AB 94                    4367 	.db 0x94
      0050AC 80                    4368 	.db 0x80
      0050AD E2                    4369 	.db 0xe2
      0050AE 94                    4370 	.db 0x94
      0050AF 80                    4371 	.db 0x80
      0050B0 E2                    4372 	.db 0xe2
      0050B1 94                    4373 	.db 0x94
      0050B2 80                    4374 	.db 0x80
      0050B3 E2                    4375 	.db 0xe2
      0050B4 94                    4376 	.db 0x94
      0050B5 80                    4377 	.db 0x80
      0050B6 E2                    4378 	.db 0xe2
      0050B7 94                    4379 	.db 0x94
      0050B8 80                    4380 	.db 0x80
      0050B9 E2                    4381 	.db 0xe2
      0050BA 94                    4382 	.db 0x94
      0050BB 98                    4383 	.db 0x98
      0050BC 0A                    4384 	.db 0x0a
      0050BD 0D                    4385 	.db 0x0d
      0050BE 00                    4386 	.db 0x00
                                   4387 	.area CSEG    (CODE)
                                   4388 	.area CONST   (CODE)
      0050BF                       4389 ___str_38:
      0050BF 63 68 65 63 6B 70 6F  4390 	.ascii "checkpoint 5"
             69 6E 74 20 35
      0050CB 0A                    4391 	.db 0x0a
      0050CC 0D                    4392 	.db 0x0d
      0050CD 00                    4393 	.db 0x00
                                   4394 	.area CSEG    (CODE)
                                   4395 	.area CONST   (CODE)
      0050CE                       4396 ___str_39:
      0050CE 45 72 72 6F 72 3A 20  4397 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      0050FB 0A                    4398 	.db 0x0a
      0050FC 0D                    4399 	.db 0x0d
      0050FD 00                    4400 	.db 0x00
                                   4401 	.area CSEG    (CODE)
                                   4402 	.area CONST   (CODE)
      0050FE                       4403 ___str_40:
      0050FE 45 72 72 6F 72 3A 20  4404 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      00512A 0A                    4405 	.db 0x0a
      00512B 0D                    4406 	.db 0x0d
      00512C 00                    4407 	.db 0x00
                                   4408 	.area CSEG    (CODE)
                                   4409 	.area CONST   (CODE)
      00512D                       4410 ___str_41:
      00512D E2                    4411 	.db 0xe2
      00512E 94                    4412 	.db 0x94
      00512F 82                    4413 	.db 0x82
      005130 20 52 65 61 64 69 6E  4414 	.ascii " Reading from Adress: 0x%03X Data: 0x%02X                   "
             67 20 66 72 6F 6D 20
             41 64 72 65 73 73 3A
             20 30 78 25 30 33 58
             20 44 61 74 61 3A 20
             30 78 25 30 32 58 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      00516C 20                    4415 	.ascii " "
      00516D 0A                    4416 	.db 0x0a
      00516E 0D                    4417 	.db 0x0d
      00516F 00                    4418 	.db 0x00
                                   4419 	.area CSEG    (CODE)
                                   4420 	.area CONST   (CODE)
      005170                       4421 ___str_42:
      005170 7C 20 30 78 25 30 33  4422 	.ascii "| 0x%03X : 0x%02X "
             58 20 3A 20 30 78 25
             30 32 58 20
      005182 0A                    4423 	.db 0x0a
      005183 0D                    4424 	.db 0x0d
      005184 00                    4425 	.db 0x00
                                   4426 	.area CSEG    (CODE)
                                   4427 	.area CONST   (CODE)
      005185                       4428 ___str_43:
      005185 E2                    4429 	.db 0xe2
      005186 94                    4430 	.db 0x94
      005187 82                    4431 	.db 0x82
      005188 20 52 65 61 64 20 73  4432 	.ascii " Read successful!                 "
             75 63 63 65 73 73 66
             75 6C 21 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20
      0051AA E2                    4433 	.db 0xe2
      0051AB 94                    4434 	.db 0x94
      0051AC 82                    4435 	.db 0x82
      0051AD 0A                    4436 	.db 0x0a
      0051AE 0D                    4437 	.db 0x0d
      0051AF 00                    4438 	.db 0x00
                                   4439 	.area CSEG    (CODE)
                                   4440 	.area CONST   (CODE)
      0051B0                       4441 ___str_44:
      0051B0 41 43 4B 20 44 49 44  4442 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      0051C2 0A                    4443 	.db 0x0a
      0051C3 0D                    4444 	.db 0x0d
      0051C4 00                    4445 	.db 0x00
                                   4446 	.area CSEG    (CODE)
                                   4447 	.area CONST   (CODE)
      0051C5                       4448 ___str_45:
      0051C5 57 72 69 74 69 6E 67  4449 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      0051EA 0A                    4450 	.db 0x0a
      0051EB 0D                    4451 	.db 0x0d
      0051EC 00                    4452 	.db 0x00
                                   4453 	.area CSEG    (CODE)
                                   4454 	.area CONST   (CODE)
      0051ED                       4455 ___str_46:
      0051ED 52 65 61 64 20 62 61  4456 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      005212 0A                    4457 	.db 0x0a
      005213 0D                    4458 	.db 0x0d
      005214 00                    4459 	.db 0x00
                                   4460 	.area CSEG    (CODE)
                                   4461 	.area CONST   (CODE)
      005215                       4462 ___str_47:
      005215 4D 41 54 43 48 20 2D  4463 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      005233 0A                    4464 	.db 0x0a
      005234 0D                    4465 	.db 0x0d
      005235 00                    4466 	.db 0x00
                                   4467 	.area CSEG    (CODE)
                                   4468 	.area CONST   (CODE)
      005236                       4469 ___str_48:
      005236 45 52 52 4F 52 20 2D  4470 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      00524C 0A                    4471 	.db 0x0a
      00524D 0D                    4472 	.db 0x0d
      00524E 00                    4473 	.db 0x00
                                   4474 	.area CSEG    (CODE)
                                   4475 	.area XINIT   (CODE)
      00525A                       4476 __xinit__address_range_flag:
      00525A 01 00                 4477 	.byte #0x01, #0x00	;  1
      00525C                       4478 __xinit__data_range_flag:
      00525C 01 00                 4479 	.byte #0x01, #0x00	;  1
      00525E                       4480 __xinit__block:
      00525E 00 00                 4481 	.byte #0x00, #0x00	; 0
                                   4482 	.area CABS    (ABS,CODE)
