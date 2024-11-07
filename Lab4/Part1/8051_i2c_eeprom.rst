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
      00040A                        479 _take_data_input_65537_72:
      00040A                        480 	.ds 4
      00040E                        481 _take_data_data_65538_76:
      00040E                        482 	.ds 1
      00040F                        483 _eeprom_write_PARM_2:
      00040F                        484 	.ds 1
      000410                        485 _eeprom_write_address_65536_80:
      000410                        486 	.ds 2
      000412                        487 _eeprom_read_address_65536_87:
      000412                        488 	.ds 2
      000414                        489 _i2c_write_data_65536_92:
      000414                        490 	.ds 1
      000415                        491 _i2c_read_ACK_65536_97:
      000415                        492 	.ds 2
      000417                        493 _i2c_read_buff_65536_98:
      000417                        494 	.ds 1
                                    495 ;--------------------------------------------------------
                                    496 ; absolute external ram data
                                    497 ;--------------------------------------------------------
                                    498 	.area XABS    (ABS,XDATA)
                                    499 ;--------------------------------------------------------
                                    500 ; external initialized ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area XISEG   (XDATA)
                                    503 	.area HOME    (CODE)
                                    504 	.area GSINIT0 (CODE)
                                    505 	.area GSINIT1 (CODE)
                                    506 	.area GSINIT2 (CODE)
                                    507 	.area GSINIT3 (CODE)
                                    508 	.area GSINIT4 (CODE)
                                    509 	.area GSINIT5 (CODE)
                                    510 	.area GSINIT  (CODE)
                                    511 	.area GSFINAL (CODE)
                                    512 	.area CSEG    (CODE)
                                    513 ;--------------------------------------------------------
                                    514 ; interrupt vector 
                                    515 ;--------------------------------------------------------
                                    516 	.area HOME    (CODE)
      003000                        517 __interrupt_vect:
      003000 02 30 06         [24]  518 	ljmp	__sdcc_gsinit_startup
                                    519 ;--------------------------------------------------------
                                    520 ; global & static initialisations
                                    521 ;--------------------------------------------------------
                                    522 	.area HOME    (CODE)
                                    523 	.area GSINIT  (CODE)
                                    524 	.area GSFINAL (CODE)
                                    525 	.area GSINIT  (CODE)
                                    526 	.globl __sdcc_gsinit_startup
                                    527 	.globl __sdcc_program_startup
                                    528 	.globl __start__stack
                                    529 	.globl __mcs51_genXINIT
                                    530 	.globl __mcs51_genXRAMCLEAR
                                    531 	.globl __mcs51_genRAMCLEAR
                                    532 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  533 	ljmp	__sdcc_program_startup
                                    534 ;--------------------------------------------------------
                                    535 ; Home
                                    536 ;--------------------------------------------------------
                                    537 	.area HOME    (CODE)
                                    538 	.area HOME    (CODE)
      003003                        539 __sdcc_program_startup:
      003003 02 31 A2         [24]  540 	ljmp	_main
                                    541 ;	return from main will return to caller
                                    542 ;--------------------------------------------------------
                                    543 ; code
                                    544 ;--------------------------------------------------------
                                    545 	.area CSEG    (CODE)
                                    546 ;------------------------------------------------------------
                                    547 ;Allocation info for local variables in function 'putchar'
                                    548 ;------------------------------------------------------------
                                    549 ;charToSend                Allocated with name '_putchar_charToSend_65536_48'
                                    550 ;------------------------------------------------------------
                                    551 ;	8051_i2c_eeprom.c:26: int putchar(int charToSend) {
                                    552 ;	-----------------------------------------
                                    553 ;	 function putchar
                                    554 ;	-----------------------------------------
      003062                        555 _putchar:
                           000007   556 	ar7 = 0x07
                           000006   557 	ar6 = 0x06
                           000005   558 	ar5 = 0x05
                           000004   559 	ar4 = 0x04
                           000003   560 	ar3 = 0x03
                           000002   561 	ar2 = 0x02
                           000001   562 	ar1 = 0x01
                           000000   563 	ar0 = 0x00
      003062 AF 83            [24]  564 	mov	r7,dph
      003064 E5 82            [12]  565 	mov	a,dpl
      003066 90 04 02         [24]  566 	mov	dptr,#_putchar_charToSend_65536_48
      003069 F0               [24]  567 	movx	@dptr,a
      00306A EF               [12]  568 	mov	a,r7
      00306B A3               [24]  569 	inc	dptr
      00306C F0               [24]  570 	movx	@dptr,a
                                    571 ;	8051_i2c_eeprom.c:27: SBUF = charToSend;  // Send character to serial buffer
      00306D 90 04 02         [24]  572 	mov	dptr,#_putchar_charToSend_65536_48
      003070 E0               [24]  573 	movx	a,@dptr
      003071 FE               [12]  574 	mov	r6,a
      003072 A3               [24]  575 	inc	dptr
      003073 E0               [24]  576 	movx	a,@dptr
      003074 FF               [12]  577 	mov	r7,a
      003075 8E 99            [24]  578 	mov	_SBUF,r6
                                    579 ;	8051_i2c_eeprom.c:28: while (!TI);        // Wait for transmission to complete
      003077                        580 00101$:
                                    581 ;	8051_i2c_eeprom.c:29: TI = 0;            // Clear transmission interrupt flag
                                    582 ;	assignBit
      003077 10 99 02         [24]  583 	jbc	_TI,00114$
      00307A 80 FB            [24]  584 	sjmp	00101$
      00307C                        585 00114$:
                                    586 ;	8051_i2c_eeprom.c:30: return charToSend;
      00307C 8E 82            [24]  587 	mov	dpl,r6
      00307E 8F 83            [24]  588 	mov	dph,r7
                                    589 ;	8051_i2c_eeprom.c:31: }
      003080 22               [24]  590 	ret
                                    591 ;------------------------------------------------------------
                                    592 ;Allocation info for local variables in function 'getchar'
                                    593 ;------------------------------------------------------------
                                    594 ;	8051_i2c_eeprom.c:33: int getchar(void) 
                                    595 ;	-----------------------------------------
                                    596 ;	 function getchar
                                    597 ;	-----------------------------------------
      003081                        598 _getchar:
                                    599 ;	8051_i2c_eeprom.c:35: while (!RI);        // Wait for reception to complete
      003081                        600 00101$:
                                    601 ;	8051_i2c_eeprom.c:36: RI = 0;            // Clear reception interrupt flag
                                    602 ;	assignBit
      003081 10 98 02         [24]  603 	jbc	_RI,00114$
      003084 80 FB            [24]  604 	sjmp	00101$
      003086                        605 00114$:
                                    606 ;	8051_i2c_eeprom.c:37: return SBUF;       // Return received character
      003086 AE 99            [24]  607 	mov	r6,_SBUF
      003088 7F 00            [12]  608 	mov	r7,#0x00
      00308A 8E 82            [24]  609 	mov	dpl,r6
      00308C 8F 83            [24]  610 	mov	dph,r7
                                    611 ;	8051_i2c_eeprom.c:38: }
      00308E 22               [24]  612 	ret
                                    613 ;------------------------------------------------------------
                                    614 ;Allocation info for local variables in function 'ui'
                                    615 ;------------------------------------------------------------
                                    616 ;	8051_i2c_eeprom.c:40: void ui()
                                    617 ;	-----------------------------------------
                                    618 ;	 function ui
                                    619 ;	-----------------------------------------
      00308F                        620 _ui:
                                    621 ;	8051_i2c_eeprom.c:42: printf("\n╔════════════════════════════════════════════════════════╗\n\r");
      00308F 74 F2            [12]  622 	mov	a,#___str_0
      003091 C0 E0            [24]  623 	push	acc
      003093 74 44            [12]  624 	mov	a,#(___str_0 >> 8)
      003095 C0 E0            [24]  625 	push	acc
      003097 74 80            [12]  626 	mov	a,#0x80
      003099 C0 E0            [24]  627 	push	acc
      00309B 12 3A 90         [24]  628 	lcall	_printf
      00309E 15 81            [12]  629 	dec	sp
      0030A0 15 81            [12]  630 	dec	sp
      0030A2 15 81            [12]  631 	dec	sp
                                    632 ;	8051_i2c_eeprom.c:43: printf("║           I2C Memory Management System v1.0             ║\n\r");
      0030A4 74 A4            [12]  633 	mov	a,#___str_1
      0030A6 C0 E0            [24]  634 	push	acc
      0030A8 74 45            [12]  635 	mov	a,#(___str_1 >> 8)
      0030AA C0 E0            [24]  636 	push	acc
      0030AC 74 80            [12]  637 	mov	a,#0x80
      0030AE C0 E0            [24]  638 	push	acc
      0030B0 12 3A 90         [24]  639 	lcall	_printf
      0030B3 15 81            [12]  640 	dec	sp
      0030B5 15 81            [12]  641 	dec	sp
      0030B7 15 81            [12]  642 	dec	sp
                                    643 ;	8051_i2c_eeprom.c:44: printf("╚════════════════════════════════════════════════════════╝\n\r");
      0030B9 74 E6            [12]  644 	mov	a,#___str_2
      0030BB C0 E0            [24]  645 	push	acc
      0030BD 74 45            [12]  646 	mov	a,#(___str_2 >> 8)
      0030BF C0 E0            [24]  647 	push	acc
      0030C1 74 80            [12]  648 	mov	a,#0x80
      0030C3 C0 E0            [24]  649 	push	acc
      0030C5 12 3A 90         [24]  650 	lcall	_printf
      0030C8 15 81            [12]  651 	dec	sp
      0030CA 15 81            [12]  652 	dec	sp
      0030CC 15 81            [12]  653 	dec	sp
                                    654 ;	8051_i2c_eeprom.c:46: }
      0030CE 22               [24]  655 	ret
                                    656 ;------------------------------------------------------------
                                    657 ;Allocation info for local variables in function 'command_menu'
                                    658 ;------------------------------------------------------------
                                    659 ;	8051_i2c_eeprom.c:48: void command_menu()
                                    660 ;	-----------------------------------------
                                    661 ;	 function command_menu
                                    662 ;	-----------------------------------------
      0030CF                        663 _command_menu:
                                    664 ;	8051_i2c_eeprom.c:50: printf("\n\r┌────────────┬────────────────────────────────────────────┐\n\r");
      0030CF 74 97            [12]  665 	mov	a,#___str_3
      0030D1 C0 E0            [24]  666 	push	acc
      0030D3 74 46            [12]  667 	mov	a,#(___str_3 >> 8)
      0030D5 C0 E0            [24]  668 	push	acc
      0030D7 74 80            [12]  669 	mov	a,#0x80
      0030D9 C0 E0            [24]  670 	push	acc
      0030DB 12 3A 90         [24]  671 	lcall	_printf
      0030DE 15 81            [12]  672 	dec	sp
      0030E0 15 81            [12]  673 	dec	sp
      0030E2 15 81            [12]  674 	dec	sp
                                    675 ;	8051_i2c_eeprom.c:51: printf("│  Command   │               Description                   │\n\r");
      0030E4 74 4D            [12]  676 	mov	a,#___str_4
      0030E6 C0 E0            [24]  677 	push	acc
      0030E8 74 47            [12]  678 	mov	a,#(___str_4 >> 8)
      0030EA C0 E0            [24]  679 	push	acc
      0030EC 74 80            [12]  680 	mov	a,#0x80
      0030EE C0 E0            [24]  681 	push	acc
      0030F0 12 3A 90         [24]  682 	lcall	_printf
      0030F3 15 81            [12]  683 	dec	sp
      0030F5 15 81            [12]  684 	dec	sp
      0030F7 15 81            [12]  685 	dec	sp
                                    686 ;	8051_i2c_eeprom.c:52: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      0030F9 74 92            [12]  687 	mov	a,#___str_5
      0030FB C0 E0            [24]  688 	push	acc
      0030FD 74 47            [12]  689 	mov	a,#(___str_5 >> 8)
      0030FF C0 E0            [24]  690 	push	acc
      003101 74 80            [12]  691 	mov	a,#0x80
      003103 C0 E0            [24]  692 	push	acc
      003105 12 3A 90         [24]  693 	lcall	_printf
      003108 15 81            [12]  694 	dec	sp
      00310A 15 81            [12]  695 	dec	sp
      00310C 15 81            [12]  696 	dec	sp
                                    697 ;	8051_i2c_eeprom.c:53: printf("│     R      │ Read from address                          │\n\r");
      00310E 74 46            [12]  698 	mov	a,#___str_6
      003110 C0 E0            [24]  699 	push	acc
      003112 74 48            [12]  700 	mov	a,#(___str_6 >> 8)
      003114 C0 E0            [24]  701 	push	acc
      003116 74 80            [12]  702 	mov	a,#0x80
      003118 C0 E0            [24]  703 	push	acc
      00311A 12 3A 90         [24]  704 	lcall	_printf
      00311D 15 81            [12]  705 	dec	sp
      00311F 15 81            [12]  706 	dec	sp
      003121 15 81            [12]  707 	dec	sp
                                    708 ;	8051_i2c_eeprom.c:54: printf("│     W      │ Write data to address                      │\n\r");
      003123 74 8A            [12]  709 	mov	a,#___str_7
      003125 C0 E0            [24]  710 	push	acc
      003127 74 48            [12]  711 	mov	a,#(___str_7 >> 8)
      003129 C0 E0            [24]  712 	push	acc
      00312B 74 80            [12]  713 	mov	a,#0x80
      00312D C0 E0            [24]  714 	push	acc
      00312F 12 3A 90         [24]  715 	lcall	_printf
      003132 15 81            [12]  716 	dec	sp
      003134 15 81            [12]  717 	dec	sp
      003136 15 81            [12]  718 	dec	sp
                                    719 ;	8051_i2c_eeprom.c:55: printf("│     H      │ Display hex dump                           │\n\r");
      003138 74 CE            [12]  720 	mov	a,#___str_8
      00313A C0 E0            [24]  721 	push	acc
      00313C 74 48            [12]  722 	mov	a,#(___str_8 >> 8)
      00313E C0 E0            [24]  723 	push	acc
      003140 74 80            [12]  724 	mov	a,#0x80
      003142 C0 E0            [24]  725 	push	acc
      003144 12 3A 90         [24]  726 	lcall	_printf
      003147 15 81            [12]  727 	dec	sp
      003149 15 81            [12]  728 	dec	sp
      00314B 15 81            [12]  729 	dec	sp
                                    730 ;	8051_i2c_eeprom.c:56: printf("│     X      │ Reset memory system                        │\n\r");
      00314D 74 12            [12]  731 	mov	a,#___str_9
      00314F C0 E0            [24]  732 	push	acc
      003151 74 49            [12]  733 	mov	a,#(___str_9 >> 8)
      003153 C0 E0            [24]  734 	push	acc
      003155 74 80            [12]  735 	mov	a,#0x80
      003157 C0 E0            [24]  736 	push	acc
      003159 12 3A 90         [24]  737 	lcall	_printf
      00315C 15 81            [12]  738 	dec	sp
      00315E 15 81            [12]  739 	dec	sp
      003160 15 81            [12]  740 	dec	sp
                                    741 ;	8051_i2c_eeprom.c:57: printf("│     ?      │ Display this help menu                     │\n\r");
      003162 74 56            [12]  742 	mov	a,#___str_10
      003164 C0 E0            [24]  743 	push	acc
      003166 74 49            [12]  744 	mov	a,#(___str_10 >> 8)
      003168 C0 E0            [24]  745 	push	acc
      00316A 74 80            [12]  746 	mov	a,#0x80
      00316C C0 E0            [24]  747 	push	acc
      00316E 12 3A 90         [24]  748 	lcall	_printf
      003171 15 81            [12]  749 	dec	sp
      003173 15 81            [12]  750 	dec	sp
      003175 15 81            [12]  751 	dec	sp
                                    752 ;	8051_i2c_eeprom.c:58: printf("│     Q      │ Quit program                              │\n\r");
      003177 74 9A            [12]  753 	mov	a,#___str_11
      003179 C0 E0            [24]  754 	push	acc
      00317B 74 49            [12]  755 	mov	a,#(___str_11 >> 8)
      00317D C0 E0            [24]  756 	push	acc
      00317F 74 80            [12]  757 	mov	a,#0x80
      003181 C0 E0            [24]  758 	push	acc
      003183 12 3A 90         [24]  759 	lcall	_printf
      003186 15 81            [12]  760 	dec	sp
      003188 15 81            [12]  761 	dec	sp
      00318A 15 81            [12]  762 	dec	sp
                                    763 ;	8051_i2c_eeprom.c:59: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      00318C 74 DD            [12]  764 	mov	a,#___str_12
      00318E C0 E0            [24]  765 	push	acc
      003190 74 49            [12]  766 	mov	a,#(___str_12 >> 8)
      003192 C0 E0            [24]  767 	push	acc
      003194 74 80            [12]  768 	mov	a,#0x80
      003196 C0 E0            [24]  769 	push	acc
      003198 12 3A 90         [24]  770 	lcall	_printf
      00319B 15 81            [12]  771 	dec	sp
      00319D 15 81            [12]  772 	dec	sp
      00319F 15 81            [12]  773 	dec	sp
                                    774 ;	8051_i2c_eeprom.c:62: }
      0031A1 22               [24]  775 	ret
                                    776 ;------------------------------------------------------------
                                    777 ;Allocation info for local variables in function 'main'
                                    778 ;------------------------------------------------------------
                                    779 ;user_input                Allocated with name '_main_user_input_131072_55'
                                    780 ;address                   Allocated with name '_main_address_262145_58'
                                    781 ;data                      Allocated with name '_main_data_262146_59'
                                    782 ;address                   Allocated with name '_main_address_262145_61'
                                    783 ;------------------------------------------------------------
                                    784 ;	8051_i2c_eeprom.c:63: int main()
                                    785 ;	-----------------------------------------
                                    786 ;	 function main
                                    787 ;	-----------------------------------------
      0031A2                        788 _main:
                                    789 ;	8051_i2c_eeprom.c:66: P1 &= ~(1<<3);  // Set P1.3 as output
      0031A2 53 90 F7         [24]  790 	anl	_P1,#0xf7
                                    791 ;	8051_i2c_eeprom.c:67: P1 &= ~(1<<4);  // Set P1.4 as output
      0031A5 53 90 EF         [24]  792 	anl	_P1,#0xef
                                    793 ;	8051_i2c_eeprom.c:68: ui();
      0031A8 12 30 8F         [24]  794 	lcall	_ui
                                    795 ;	8051_i2c_eeprom.c:69: command_menu();
      0031AB 12 30 CF         [24]  796 	lcall	_command_menu
                                    797 ;	8051_i2c_eeprom.c:70: i2c_start();
      0031AE 12 39 51         [24]  798 	lcall	_i2c_start
                                    799 ;	8051_i2c_eeprom.c:71: while(1)
      0031B1                        800 00107$:
                                    801 ;	8051_i2c_eeprom.c:73: char user_input = getchar();
      0031B1 12 30 81         [24]  802 	lcall	_getchar
      0031B4 AE 82            [24]  803 	mov	r6,dpl
                                    804 ;	8051_i2c_eeprom.c:74: printf("$ %c\n\r", user_input);
      0031B6 8E 05            [24]  805 	mov	ar5,r6
      0031B8 7F 00            [12]  806 	mov	r7,#0x00
      0031BA C0 06            [24]  807 	push	ar6
      0031BC C0 05            [24]  808 	push	ar5
      0031BE C0 07            [24]  809 	push	ar7
      0031C0 74 91            [12]  810 	mov	a,#___str_13
      0031C2 C0 E0            [24]  811 	push	acc
      0031C4 74 4A            [12]  812 	mov	a,#(___str_13 >> 8)
      0031C6 C0 E0            [24]  813 	push	acc
      0031C8 74 80            [12]  814 	mov	a,#0x80
      0031CA C0 E0            [24]  815 	push	acc
      0031CC 12 3A 90         [24]  816 	lcall	_printf
      0031CF E5 81            [12]  817 	mov	a,sp
      0031D1 24 FB            [12]  818 	add	a,#0xfb
      0031D3 F5 81            [12]  819 	mov	sp,a
      0031D5 D0 06            [24]  820 	pop	ar6
                                    821 ;	8051_i2c_eeprom.c:75: switch(user_input)
      0031D7 BE 3F 03         [24]  822 	cjne	r6,#0x3f,00127$
      0031DA 02 32 96         [24]  823 	ljmp	00103$
      0031DD                        824 00127$:
      0031DD BE 52 02         [24]  825 	cjne	r6,#0x52,00128$
      0031E0 80 6D            [24]  826 	sjmp	00102$
      0031E2                        827 00128$:
      0031E2 BE 57 02         [24]  828 	cjne	r6,#0x57,00129$
      0031E5 80 03            [24]  829 	sjmp	00130$
      0031E7                        830 00129$:
      0031E7 02 32 9C         [24]  831 	ljmp	00104$
      0031EA                        832 00130$:
                                    833 ;	8051_i2c_eeprom.c:79: printf("\n┌─────────────── WRITE OPERATION ──────────────┐\n\r");
      0031EA 74 98            [12]  834 	mov	a,#___str_14
      0031EC C0 E0            [24]  835 	push	acc
      0031EE 74 4A            [12]  836 	mov	a,#(___str_14 >> 8)
      0031F0 C0 E0            [24]  837 	push	acc
      0031F2 74 80            [12]  838 	mov	a,#0x80
      0031F4 C0 E0            [24]  839 	push	acc
      0031F6 12 3A 90         [24]  840 	lcall	_printf
      0031F9 15 81            [12]  841 	dec	sp
      0031FB 15 81            [12]  842 	dec	sp
      0031FD 15 81            [12]  843 	dec	sp
                                    844 ;	8051_i2c_eeprom.c:81: address = take_address(); 
      0031FF 12 32 B4         [24]  845 	lcall	_take_address
      003202 AE 82            [24]  846 	mov	r6,dpl
      003204 AF 83            [24]  847 	mov	r7,dph
                                    848 ;	8051_i2c_eeprom.c:83: data = take_data();
      003206 C0 07            [24]  849 	push	ar7
      003208 C0 06            [24]  850 	push	ar6
      00320A 12 34 78         [24]  851 	lcall	_take_data
      00320D AD 82            [24]  852 	mov	r5,dpl
      00320F D0 06            [24]  853 	pop	ar6
      003211 D0 07            [24]  854 	pop	ar7
                                    855 ;	8051_i2c_eeprom.c:84: printf("|Writing at Address 0x%03X Data 0x%02X          |\n\r", address, data);
      003213 8D 03            [24]  856 	mov	ar3,r5
      003215 7C 00            [12]  857 	mov	r4,#0x00
      003217 C0 07            [24]  858 	push	ar7
      003219 C0 06            [24]  859 	push	ar6
      00321B C0 05            [24]  860 	push	ar5
      00321D C0 03            [24]  861 	push	ar3
      00321F C0 04            [24]  862 	push	ar4
      003221 C0 06            [24]  863 	push	ar6
      003223 C0 07            [24]  864 	push	ar7
      003225 74 0A            [12]  865 	mov	a,#___str_15
      003227 C0 E0            [24]  866 	push	acc
      003229 74 4B            [12]  867 	mov	a,#(___str_15 >> 8)
      00322B C0 E0            [24]  868 	push	acc
      00322D 74 80            [12]  869 	mov	a,#0x80
      00322F C0 E0            [24]  870 	push	acc
      003231 12 3A 90         [24]  871 	lcall	_printf
      003234 E5 81            [12]  872 	mov	a,sp
      003236 24 F9            [12]  873 	add	a,#0xf9
      003238 F5 81            [12]  874 	mov	sp,a
      00323A D0 05            [24]  875 	pop	ar5
      00323C D0 06            [24]  876 	pop	ar6
      00323E D0 07            [24]  877 	pop	ar7
                                    878 ;	8051_i2c_eeprom.c:85: eeprom_write(address, data);
      003240 90 04 0F         [24]  879 	mov	dptr,#_eeprom_write_PARM_2
      003243 ED               [12]  880 	mov	a,r5
      003244 F0               [24]  881 	movx	@dptr,a
      003245 8E 82            [24]  882 	mov	dpl,r6
      003247 8F 83            [24]  883 	mov	dph,r7
      003249 12 35 EA         [24]  884 	lcall	_eeprom_write
                                    885 ;	8051_i2c_eeprom.c:86: break;
      00324C 02 31 B1         [24]  886 	ljmp	00107$
                                    887 ;	8051_i2c_eeprom.c:88: case 'R':
      00324F                        888 00102$:
                                    889 ;	8051_i2c_eeprom.c:90: printf("\n┌─────────────── READ OPERATION ───────────────┐\n\r");
      00324F 74 3E            [12]  890 	mov	a,#___str_16
      003251 C0 E0            [24]  891 	push	acc
      003253 74 4B            [12]  892 	mov	a,#(___str_16 >> 8)
      003255 C0 E0            [24]  893 	push	acc
      003257 74 80            [12]  894 	mov	a,#0x80
      003259 C0 E0            [24]  895 	push	acc
      00325B 12 3A 90         [24]  896 	lcall	_printf
      00325E 15 81            [12]  897 	dec	sp
      003260 15 81            [12]  898 	dec	sp
      003262 15 81            [12]  899 	dec	sp
                                    900 ;	8051_i2c_eeprom.c:92: address = take_address(); 
      003264 12 32 B4         [24]  901 	lcall	_take_address
      003267 AE 82            [24]  902 	mov	r6,dpl
      003269 AF 83            [24]  903 	mov	r7,dph
                                    904 ;	8051_i2c_eeprom.c:93: printf("|Reading from Address 0x%03X           |\n\r", address);
      00326B C0 07            [24]  905 	push	ar7
      00326D C0 06            [24]  906 	push	ar6
      00326F C0 06            [24]  907 	push	ar6
      003271 C0 07            [24]  908 	push	ar7
      003273 74 B2            [12]  909 	mov	a,#___str_17
      003275 C0 E0            [24]  910 	push	acc
      003277 74 4B            [12]  911 	mov	a,#(___str_17 >> 8)
      003279 C0 E0            [24]  912 	push	acc
      00327B 74 80            [12]  913 	mov	a,#0x80
      00327D C0 E0            [24]  914 	push	acc
      00327F 12 3A 90         [24]  915 	lcall	_printf
      003282 E5 81            [12]  916 	mov	a,sp
      003284 24 FB            [12]  917 	add	a,#0xfb
      003286 F5 81            [12]  918 	mov	sp,a
      003288 D0 06            [24]  919 	pop	ar6
      00328A D0 07            [24]  920 	pop	ar7
                                    921 ;	8051_i2c_eeprom.c:94: eeprom_read(address);
      00328C 8E 82            [24]  922 	mov	dpl,r6
      00328E 8F 83            [24]  923 	mov	dph,r7
      003290 12 37 23         [24]  924 	lcall	_eeprom_read
                                    925 ;	8051_i2c_eeprom.c:95: break;
      003293 02 31 B1         [24]  926 	ljmp	00107$
                                    927 ;	8051_i2c_eeprom.c:98: case '?':
      003296                        928 00103$:
                                    929 ;	8051_i2c_eeprom.c:99: command_menu();
      003296 12 30 CF         [24]  930 	lcall	_command_menu
                                    931 ;	8051_i2c_eeprom.c:100: break;
      003299 02 31 B1         [24]  932 	ljmp	00107$
                                    933 ;	8051_i2c_eeprom.c:102: default:
      00329C                        934 00104$:
                                    935 ;	8051_i2c_eeprom.c:103: printf("INVALID INPUT\n\r");
      00329C 74 DD            [12]  936 	mov	a,#___str_18
      00329E C0 E0            [24]  937 	push	acc
      0032A0 74 4B            [12]  938 	mov	a,#(___str_18 >> 8)
      0032A2 C0 E0            [24]  939 	push	acc
      0032A4 74 80            [12]  940 	mov	a,#0x80
      0032A6 C0 E0            [24]  941 	push	acc
      0032A8 12 3A 90         [24]  942 	lcall	_printf
      0032AB 15 81            [12]  943 	dec	sp
      0032AD 15 81            [12]  944 	dec	sp
      0032AF 15 81            [12]  945 	dec	sp
                                    946 ;	8051_i2c_eeprom.c:105: }
                                    947 ;	8051_i2c_eeprom.c:108: }
      0032B1 02 31 B1         [24]  948 	ljmp	00107$
                                    949 ;------------------------------------------------------------
                                    950 ;Allocation info for local variables in function 'take_address'
                                    951 ;------------------------------------------------------------
                                    952 ;input                     Allocated with name '_take_address_input_65537_63'
                                    953 ;i                         Allocated with name '_take_address_i_65537_63'
                                    954 ;c                         Allocated with name '_take_address_c_65537_63'
                                    955 ;address                   Allocated with name '_take_address_address_65538_67'
                                    956 ;------------------------------------------------------------
                                    957 ;	8051_i2c_eeprom.c:110: unsigned int take_address() 
                                    958 ;	-----------------------------------------
                                    959 ;	 function take_address
                                    960 ;	-----------------------------------------
      0032B4                        961 _take_address:
                                    962 ;	8051_i2c_eeprom.c:112: printf("│ Enter address (hex, up to 3 characters): \n\r|");
      0032B4 74 ED            [12]  963 	mov	a,#___str_19
      0032B6 C0 E0            [24]  964 	push	acc
      0032B8 74 4B            [12]  965 	mov	a,#(___str_19 >> 8)
      0032BA C0 E0            [24]  966 	push	acc
      0032BC 74 80            [12]  967 	mov	a,#0x80
      0032BE C0 E0            [24]  968 	push	acc
      0032C0 12 3A 90         [24]  969 	lcall	_printf
      0032C3 15 81            [12]  970 	dec	sp
      0032C5 15 81            [12]  971 	dec	sp
      0032C7 15 81            [12]  972 	dec	sp
                                    973 ;	8051_i2c_eeprom.c:113: char input[4] = {0};  // Array for 3 hex chars + null terminator
      0032C9 90 04 04         [24]  974 	mov	dptr,#_take_address_input_65537_63
      0032CC E4               [12]  975 	clr	a
      0032CD F0               [24]  976 	movx	@dptr,a
      0032CE 90 04 05         [24]  977 	mov	dptr,#(_take_address_input_65537_63 + 0x0001)
      0032D1 F0               [24]  978 	movx	@dptr,a
      0032D2 90 04 06         [24]  979 	mov	dptr,#(_take_address_input_65537_63 + 0x0002)
      0032D5 F0               [24]  980 	movx	@dptr,a
      0032D6 90 04 07         [24]  981 	mov	dptr,#(_take_address_input_65537_63 + 0x0003)
      0032D9 F0               [24]  982 	movx	@dptr,a
                                    983 ;	8051_i2c_eeprom.c:117: printf("$ ");
      0032DA 74 1E            [12]  984 	mov	a,#___str_20
      0032DC C0 E0            [24]  985 	push	acc
      0032DE 74 4C            [12]  986 	mov	a,#(___str_20 >> 8)
      0032E0 C0 E0            [24]  987 	push	acc
      0032E2 74 80            [12]  988 	mov	a,#0x80
      0032E4 C0 E0            [24]  989 	push	acc
      0032E6 12 3A 90         [24]  990 	lcall	_printf
      0032E9 15 81            [12]  991 	dec	sp
      0032EB 15 81            [12]  992 	dec	sp
      0032ED 15 81            [12]  993 	dec	sp
                                    994 ;	8051_i2c_eeprom.c:119: while (i < 3) {
      0032EF 7E 00            [12]  995 	mov	r6,#0x00
      0032F1 7F 00            [12]  996 	mov	r7,#0x00
      0032F3                        997 00111$:
      0032F3 C3               [12]  998 	clr	c
      0032F4 EE               [12]  999 	mov	a,r6
      0032F5 94 03            [12] 1000 	subb	a,#0x03
      0032F7 EF               [12] 1001 	mov	a,r7
      0032F8 64 80            [12] 1002 	xrl	a,#0x80
      0032FA 94 80            [12] 1003 	subb	a,#0x80
      0032FC 50 5B            [24] 1004 	jnc	00113$
                                   1005 ;	8051_i2c_eeprom.c:121: c = getchar();
      0032FE C0 07            [24] 1006 	push	ar7
      003300 C0 06            [24] 1007 	push	ar6
      003302 12 30 81         [24] 1008 	lcall	_getchar
      003305 AC 82            [24] 1009 	mov	r4,dpl
      003307 AD 83            [24] 1010 	mov	r5,dph
      003309 D0 06            [24] 1011 	pop	ar6
      00330B D0 07            [24] 1012 	pop	ar7
                                   1013 ;	8051_i2c_eeprom.c:124: if (c == '\r' || c == '\n') {
      00330D BC 0D 02         [24] 1014 	cjne	r4,#0x0d,00200$
      003310 80 47            [24] 1015 	sjmp	00113$
      003312                       1016 00200$:
      003312 BC 0A 02         [24] 1017 	cjne	r4,#0x0a,00201$
      003315 80 42            [24] 1018 	sjmp	00113$
      003317                       1019 00201$:
                                   1020 ;	8051_i2c_eeprom.c:129: if ((c >= '0' && c <= '9') || 
      003317 BC 30 00         [24] 1021 	cjne	r4,#0x30,00202$
      00331A                       1022 00202$:
      00331A 40 05            [24] 1023 	jc	00108$
      00331C EC               [12] 1024 	mov	a,r4
      00331D 24 C6            [12] 1025 	add	a,#0xff - 0x39
      00331F 50 14            [24] 1026 	jnc	00104$
      003321                       1027 00108$:
                                   1028 ;	8051_i2c_eeprom.c:130: (c >= 'a' && c <= 'f') || 
      003321 BC 61 00         [24] 1029 	cjne	r4,#0x61,00205$
      003324                       1030 00205$:
      003324 40 05            [24] 1031 	jc	00110$
      003326 EC               [12] 1032 	mov	a,r4
      003327 24 99            [12] 1033 	add	a,#0xff - 0x66
      003329 50 0A            [24] 1034 	jnc	00104$
      00332B                       1035 00110$:
                                   1036 ;	8051_i2c_eeprom.c:131: (c >= 'A' && c <= 'F')) {
      00332B BC 41 00         [24] 1037 	cjne	r4,#0x41,00208$
      00332E                       1038 00208$:
      00332E 40 C3            [24] 1039 	jc	00111$
      003330 EC               [12] 1040 	mov	a,r4
      003331 24 B9            [12] 1041 	add	a,#0xff - 0x46
      003333 40 BE            [24] 1042 	jc	00111$
      003335                       1043 00104$:
                                   1044 ;	8051_i2c_eeprom.c:133: input[i] = c;
      003335 EE               [12] 1045 	mov	a,r6
      003336 24 04            [12] 1046 	add	a,#_take_address_input_65537_63
      003338 F5 82            [12] 1047 	mov	dpl,a
      00333A EF               [12] 1048 	mov	a,r7
      00333B 34 04            [12] 1049 	addc	a,#(_take_address_input_65537_63 >> 8)
      00333D F5 83            [12] 1050 	mov	dph,a
      00333F EC               [12] 1051 	mov	a,r4
      003340 F0               [24] 1052 	movx	@dptr,a
                                   1053 ;	8051_i2c_eeprom.c:134: putchar(c);  // Echo character back
      003341 7D 00            [12] 1054 	mov	r5,#0x00
      003343 8C 82            [24] 1055 	mov	dpl,r4
      003345 8D 83            [24] 1056 	mov	dph,r5
      003347 C0 07            [24] 1057 	push	ar7
      003349 C0 06            [24] 1058 	push	ar6
      00334B 12 30 62         [24] 1059 	lcall	_putchar
      00334E D0 06            [24] 1060 	pop	ar6
      003350 D0 07            [24] 1061 	pop	ar7
                                   1062 ;	8051_i2c_eeprom.c:135: i++;
      003352 0E               [12] 1063 	inc	r6
      003353 BE 00 9D         [24] 1064 	cjne	r6,#0x00,00111$
      003356 0F               [12] 1065 	inc	r7
      003357 80 9A            [24] 1066 	sjmp	00111$
      003359                       1067 00113$:
                                   1068 ;	8051_i2c_eeprom.c:139: input[i] = '\0';  // Null-terminate the string
      003359 EE               [12] 1069 	mov	a,r6
      00335A 24 04            [12] 1070 	add	a,#_take_address_input_65537_63
      00335C F5 82            [12] 1071 	mov	dpl,a
      00335E EF               [12] 1072 	mov	a,r7
      00335F 34 04            [12] 1073 	addc	a,#(_take_address_input_65537_63 >> 8)
      003361 F5 83            [12] 1074 	mov	dph,a
      003363 E4               [12] 1075 	clr	a
      003364 F0               [24] 1076 	movx	@dptr,a
                                   1077 ;	8051_i2c_eeprom.c:142: unsigned int address = 0;
      003365 90 04 08         [24] 1078 	mov	dptr,#_take_address_address_65538_67
      003368 F0               [24] 1079 	movx	@dptr,a
      003369 A3               [24] 1080 	inc	dptr
      00336A F0               [24] 1081 	movx	@dptr,a
                                   1082 ;	8051_i2c_eeprom.c:143: for(i = 0; input[i] != '\0'; i++) {
      00336B 7E 00            [12] 1083 	mov	r6,#0x00
      00336D 7F 00            [12] 1084 	mov	r7,#0x00
      00336F                       1085 00129$:
      00336F EE               [12] 1086 	mov	a,r6
      003370 24 04            [12] 1087 	add	a,#_take_address_input_65537_63
      003372 F5 82            [12] 1088 	mov	dpl,a
      003374 EF               [12] 1089 	mov	a,r7
      003375 34 04            [12] 1090 	addc	a,#(_take_address_input_65537_63 >> 8)
      003377 F5 83            [12] 1091 	mov	dph,a
      003379 E0               [24] 1092 	movx	a,@dptr
      00337A FD               [12] 1093 	mov	r5,a
      00337B 70 03            [24] 1094 	jnz	00212$
      00337D 02 34 28         [24] 1095 	ljmp	00125$
      003380                       1096 00212$:
                                   1097 ;	8051_i2c_eeprom.c:144: address = address * 16;
      003380 90 04 08         [24] 1098 	mov	dptr,#_take_address_address_65538_67
      003383 E0               [24] 1099 	movx	a,@dptr
      003384 FB               [12] 1100 	mov	r3,a
      003385 A3               [24] 1101 	inc	dptr
      003386 E0               [24] 1102 	movx	a,@dptr
      003387 C4               [12] 1103 	swap	a
      003388 54 F0            [12] 1104 	anl	a,#0xf0
      00338A CB               [12] 1105 	xch	a,r3
      00338B C4               [12] 1106 	swap	a
      00338C CB               [12] 1107 	xch	a,r3
      00338D 6B               [12] 1108 	xrl	a,r3
      00338E CB               [12] 1109 	xch	a,r3
      00338F 54 F0            [12] 1110 	anl	a,#0xf0
      003391 CB               [12] 1111 	xch	a,r3
      003392 6B               [12] 1112 	xrl	a,r3
      003393 FC               [12] 1113 	mov	r4,a
      003394 90 04 08         [24] 1114 	mov	dptr,#_take_address_address_65538_67
      003397 EB               [12] 1115 	mov	a,r3
      003398 F0               [24] 1116 	movx	@dptr,a
      003399 EC               [12] 1117 	mov	a,r4
      00339A A3               [24] 1118 	inc	dptr
      00339B F0               [24] 1119 	movx	@dptr,a
                                   1120 ;	8051_i2c_eeprom.c:145: if(input[i] >= '0' && input[i] <= '9')
      00339C BD 30 00         [24] 1121 	cjne	r5,#0x30,00213$
      00339F                       1122 00213$:
      00339F 40 23            [24] 1123 	jc	00122$
      0033A1 ED               [12] 1124 	mov	a,r5
      0033A2 24 C6            [12] 1125 	add	a,#0xff - 0x39
      0033A4 40 1E            [24] 1126 	jc	00122$
                                   1127 ;	8051_i2c_eeprom.c:146: address += input[i] - '0';
      0033A6 7C 00            [12] 1128 	mov	r4,#0x00
      0033A8 ED               [12] 1129 	mov	a,r5
      0033A9 24 D0            [12] 1130 	add	a,#0xd0
      0033AB FD               [12] 1131 	mov	r5,a
      0033AC EC               [12] 1132 	mov	a,r4
      0033AD 34 FF            [12] 1133 	addc	a,#0xff
      0033AF FC               [12] 1134 	mov	r4,a
      0033B0 90 04 08         [24] 1135 	mov	dptr,#_take_address_address_65538_67
      0033B3 E0               [24] 1136 	movx	a,@dptr
      0033B4 FA               [12] 1137 	mov	r2,a
      0033B5 A3               [24] 1138 	inc	dptr
      0033B6 E0               [24] 1139 	movx	a,@dptr
      0033B7 FB               [12] 1140 	mov	r3,a
      0033B8 90 04 08         [24] 1141 	mov	dptr,#_take_address_address_65538_67
      0033BB ED               [12] 1142 	mov	a,r5
      0033BC 2A               [12] 1143 	add	a,r2
      0033BD F0               [24] 1144 	movx	@dptr,a
      0033BE EC               [12] 1145 	mov	a,r4
      0033BF 3B               [12] 1146 	addc	a,r3
      0033C0 A3               [24] 1147 	inc	dptr
      0033C1 F0               [24] 1148 	movx	@dptr,a
      0033C2 80 5C            [24] 1149 	sjmp	00130$
      0033C4                       1150 00122$:
                                   1151 ;	8051_i2c_eeprom.c:147: else if(input[i] >= 'A' && input[i] <= 'F')
      0033C4 EE               [12] 1152 	mov	a,r6
      0033C5 24 04            [12] 1153 	add	a,#_take_address_input_65537_63
      0033C7 F5 82            [12] 1154 	mov	dpl,a
      0033C9 EF               [12] 1155 	mov	a,r7
      0033CA 34 04            [12] 1156 	addc	a,#(_take_address_input_65537_63 >> 8)
      0033CC F5 83            [12] 1157 	mov	dph,a
      0033CE E0               [24] 1158 	movx	a,@dptr
      0033CF FD               [12] 1159 	mov	r5,a
      0033D0 BD 41 00         [24] 1160 	cjne	r5,#0x41,00216$
      0033D3                       1161 00216$:
      0033D3 40 25            [24] 1162 	jc	00118$
      0033D5 ED               [12] 1163 	mov	a,r5
      0033D6 24 B9            [12] 1164 	add	a,#0xff - 0x46
      0033D8 40 20            [24] 1165 	jc	00118$
                                   1166 ;	8051_i2c_eeprom.c:148: address += input[i] - 'A' + 10;
      0033DA 8D 03            [24] 1167 	mov	ar3,r5
      0033DC 7C 00            [12] 1168 	mov	r4,#0x00
      0033DE 74 C9            [12] 1169 	mov	a,#0xc9
      0033E0 2B               [12] 1170 	add	a,r3
      0033E1 FB               [12] 1171 	mov	r3,a
      0033E2 74 FF            [12] 1172 	mov	a,#0xff
      0033E4 3C               [12] 1173 	addc	a,r4
      0033E5 FC               [12] 1174 	mov	r4,a
      0033E6 90 04 08         [24] 1175 	mov	dptr,#_take_address_address_65538_67
      0033E9 E0               [24] 1176 	movx	a,@dptr
      0033EA F9               [12] 1177 	mov	r1,a
      0033EB A3               [24] 1178 	inc	dptr
      0033EC E0               [24] 1179 	movx	a,@dptr
      0033ED FA               [12] 1180 	mov	r2,a
      0033EE 90 04 08         [24] 1181 	mov	dptr,#_take_address_address_65538_67
      0033F1 EB               [12] 1182 	mov	a,r3
      0033F2 29               [12] 1183 	add	a,r1
      0033F3 F0               [24] 1184 	movx	@dptr,a
      0033F4 EC               [12] 1185 	mov	a,r4
      0033F5 3A               [12] 1186 	addc	a,r2
      0033F6 A3               [24] 1187 	inc	dptr
      0033F7 F0               [24] 1188 	movx	@dptr,a
      0033F8 80 26            [24] 1189 	sjmp	00130$
      0033FA                       1190 00118$:
                                   1191 ;	8051_i2c_eeprom.c:149: else if(input[i] >= 'a' && input[i] <= 'f')
      0033FA BD 61 00         [24] 1192 	cjne	r5,#0x61,00219$
      0033FD                       1193 00219$:
      0033FD 40 21            [24] 1194 	jc	00130$
      0033FF ED               [12] 1195 	mov	a,r5
      003400 24 99            [12] 1196 	add	a,#0xff - 0x66
      003402 40 1C            [24] 1197 	jc	00130$
                                   1198 ;	8051_i2c_eeprom.c:150: address += input[i] - 'a' + 10;
      003404 7C 00            [12] 1199 	mov	r4,#0x00
      003406 74 A9            [12] 1200 	mov	a,#0xa9
      003408 2D               [12] 1201 	add	a,r5
      003409 FD               [12] 1202 	mov	r5,a
      00340A 74 FF            [12] 1203 	mov	a,#0xff
      00340C 3C               [12] 1204 	addc	a,r4
      00340D FC               [12] 1205 	mov	r4,a
      00340E 90 04 08         [24] 1206 	mov	dptr,#_take_address_address_65538_67
      003411 E0               [24] 1207 	movx	a,@dptr
      003412 FA               [12] 1208 	mov	r2,a
      003413 A3               [24] 1209 	inc	dptr
      003414 E0               [24] 1210 	movx	a,@dptr
      003415 FB               [12] 1211 	mov	r3,a
      003416 90 04 08         [24] 1212 	mov	dptr,#_take_address_address_65538_67
      003419 ED               [12] 1213 	mov	a,r5
      00341A 2A               [12] 1214 	add	a,r2
      00341B F0               [24] 1215 	movx	@dptr,a
      00341C EC               [12] 1216 	mov	a,r4
      00341D 3B               [12] 1217 	addc	a,r3
      00341E A3               [24] 1218 	inc	dptr
      00341F F0               [24] 1219 	movx	@dptr,a
      003420                       1220 00130$:
                                   1221 ;	8051_i2c_eeprom.c:143: for(i = 0; input[i] != '\0'; i++) {
      003420 0E               [12] 1222 	inc	r6
      003421 BE 00 01         [24] 1223 	cjne	r6,#0x00,00222$
      003424 0F               [12] 1224 	inc	r7
      003425                       1225 00222$:
      003425 02 33 6F         [24] 1226 	ljmp	00129$
      003428                       1227 00125$:
                                   1228 ;	8051_i2c_eeprom.c:153: printf("\n\r│ Entered address: 0x%03X\n\r", address);
      003428 90 04 08         [24] 1229 	mov	dptr,#_take_address_address_65538_67
      00342B E0               [24] 1230 	movx	a,@dptr
      00342C FE               [12] 1231 	mov	r6,a
      00342D A3               [24] 1232 	inc	dptr
      00342E E0               [24] 1233 	movx	a,@dptr
      00342F FF               [12] 1234 	mov	r7,a
      003430 C0 07            [24] 1235 	push	ar7
      003432 C0 06            [24] 1236 	push	ar6
      003434 C0 06            [24] 1237 	push	ar6
      003436 C0 07            [24] 1238 	push	ar7
      003438 74 21            [12] 1239 	mov	a,#___str_21
      00343A C0 E0            [24] 1240 	push	acc
      00343C 74 4C            [12] 1241 	mov	a,#(___str_21 >> 8)
      00343E C0 E0            [24] 1242 	push	acc
      003440 74 80            [12] 1243 	mov	a,#0x80
      003442 C0 E0            [24] 1244 	push	acc
      003444 12 3A 90         [24] 1245 	lcall	_printf
      003447 E5 81            [12] 1246 	mov	a,sp
      003449 24 FB            [12] 1247 	add	a,#0xfb
      00344B F5 81            [12] 1248 	mov	sp,a
      00344D D0 06            [24] 1249 	pop	ar6
      00344F D0 07            [24] 1250 	pop	ar7
                                   1251 ;	8051_i2c_eeprom.c:154: if(address > 0x7ff) 
      003451 C3               [12] 1252 	clr	c
      003452 74 FF            [12] 1253 	mov	a,#0xff
      003454 9E               [12] 1254 	subb	a,r6
      003455 74 07            [12] 1255 	mov	a,#0x07
      003457 9F               [12] 1256 	subb	a,r7
      003458 50 19            [24] 1257 	jnc	00127$
                                   1258 ;	8051_i2c_eeprom.c:156: printf("Address out of Range\n\r");
      00345A 74 41            [12] 1259 	mov	a,#___str_22
      00345C C0 E0            [24] 1260 	push	acc
      00345E 74 4C            [12] 1261 	mov	a,#(___str_22 >> 8)
      003460 C0 E0            [24] 1262 	push	acc
      003462 74 80            [12] 1263 	mov	a,#0x80
      003464 C0 E0            [24] 1264 	push	acc
      003466 12 3A 90         [24] 1265 	lcall	_printf
      003469 15 81            [12] 1266 	dec	sp
      00346B 15 81            [12] 1267 	dec	sp
      00346D 15 81            [12] 1268 	dec	sp
                                   1269 ;	8051_i2c_eeprom.c:157: return 0;
      00346F 90 00 00         [24] 1270 	mov	dptr,#0x0000
      003472 22               [24] 1271 	ret
      003473                       1272 00127$:
                                   1273 ;	8051_i2c_eeprom.c:159: return address;
      003473 8E 82            [24] 1274 	mov	dpl,r6
      003475 8F 83            [24] 1275 	mov	dph,r7
                                   1276 ;	8051_i2c_eeprom.c:160: }
      003477 22               [24] 1277 	ret
                                   1278 ;------------------------------------------------------------
                                   1279 ;Allocation info for local variables in function 'take_data'
                                   1280 ;------------------------------------------------------------
                                   1281 ;input                     Allocated with name '_take_data_input_65537_72'
                                   1282 ;i                         Allocated with name '_take_data_i_65537_72'
                                   1283 ;c                         Allocated with name '_take_data_c_65537_72'
                                   1284 ;data                      Allocated with name '_take_data_data_65538_76'
                                   1285 ;------------------------------------------------------------
                                   1286 ;	8051_i2c_eeprom.c:162: unsigned char take_data()
                                   1287 ;	-----------------------------------------
                                   1288 ;	 function take_data
                                   1289 ;	-----------------------------------------
      003478                       1290 _take_data:
                                   1291 ;	8051_i2c_eeprom.c:164: printf("│ Enter data (hex, up to 2 characters): \n\r|");
      003478 74 58            [12] 1292 	mov	a,#___str_23
      00347A C0 E0            [24] 1293 	push	acc
      00347C 74 4C            [12] 1294 	mov	a,#(___str_23 >> 8)
      00347E C0 E0            [24] 1295 	push	acc
      003480 74 80            [12] 1296 	mov	a,#0x80
      003482 C0 E0            [24] 1297 	push	acc
      003484 12 3A 90         [24] 1298 	lcall	_printf
      003487 15 81            [12] 1299 	dec	sp
      003489 15 81            [12] 1300 	dec	sp
      00348B 15 81            [12] 1301 	dec	sp
                                   1302 ;	8051_i2c_eeprom.c:165: char input[4] = {0};  // Array for 3 hex chars + null terminator
      00348D 90 04 0A         [24] 1303 	mov	dptr,#_take_data_input_65537_72
      003490 E4               [12] 1304 	clr	a
      003491 F0               [24] 1305 	movx	@dptr,a
      003492 90 04 0B         [24] 1306 	mov	dptr,#(_take_data_input_65537_72 + 0x0001)
      003495 F0               [24] 1307 	movx	@dptr,a
      003496 90 04 0C         [24] 1308 	mov	dptr,#(_take_data_input_65537_72 + 0x0002)
      003499 F0               [24] 1309 	movx	@dptr,a
      00349A 90 04 0D         [24] 1310 	mov	dptr,#(_take_data_input_65537_72 + 0x0003)
      00349D F0               [24] 1311 	movx	@dptr,a
                                   1312 ;	8051_i2c_eeprom.c:169: printf("$ ");
      00349E 74 1E            [12] 1313 	mov	a,#___str_20
      0034A0 C0 E0            [24] 1314 	push	acc
      0034A2 74 4C            [12] 1315 	mov	a,#(___str_20 >> 8)
      0034A4 C0 E0            [24] 1316 	push	acc
      0034A6 74 80            [12] 1317 	mov	a,#0x80
      0034A8 C0 E0            [24] 1318 	push	acc
      0034AA 12 3A 90         [24] 1319 	lcall	_printf
      0034AD 15 81            [12] 1320 	dec	sp
      0034AF 15 81            [12] 1321 	dec	sp
      0034B1 15 81            [12] 1322 	dec	sp
                                   1323 ;	8051_i2c_eeprom.c:171: while (i < 3) {
      0034B3 7E 00            [12] 1324 	mov	r6,#0x00
      0034B5 7F 00            [12] 1325 	mov	r7,#0x00
      0034B7                       1326 00111$:
      0034B7 C3               [12] 1327 	clr	c
      0034B8 EE               [12] 1328 	mov	a,r6
      0034B9 94 03            [12] 1329 	subb	a,#0x03
      0034BB EF               [12] 1330 	mov	a,r7
      0034BC 64 80            [12] 1331 	xrl	a,#0x80
      0034BE 94 80            [12] 1332 	subb	a,#0x80
      0034C0 50 5B            [24] 1333 	jnc	00113$
                                   1334 ;	8051_i2c_eeprom.c:173: c = getchar();
      0034C2 C0 07            [24] 1335 	push	ar7
      0034C4 C0 06            [24] 1336 	push	ar6
      0034C6 12 30 81         [24] 1337 	lcall	_getchar
      0034C9 AC 82            [24] 1338 	mov	r4,dpl
      0034CB AD 83            [24] 1339 	mov	r5,dph
      0034CD D0 06            [24] 1340 	pop	ar6
      0034CF D0 07            [24] 1341 	pop	ar7
                                   1342 ;	8051_i2c_eeprom.c:176: if (c == '\r' || c == '\n') {
      0034D1 BC 0D 02         [24] 1343 	cjne	r4,#0x0d,00200$
      0034D4 80 47            [24] 1344 	sjmp	00113$
      0034D6                       1345 00200$:
      0034D6 BC 0A 02         [24] 1346 	cjne	r4,#0x0a,00201$
      0034D9 80 42            [24] 1347 	sjmp	00113$
      0034DB                       1348 00201$:
                                   1349 ;	8051_i2c_eeprom.c:181: if ((c >= '0' && c <= '9') || 
      0034DB BC 30 00         [24] 1350 	cjne	r4,#0x30,00202$
      0034DE                       1351 00202$:
      0034DE 40 05            [24] 1352 	jc	00108$
      0034E0 EC               [12] 1353 	mov	a,r4
      0034E1 24 C6            [12] 1354 	add	a,#0xff - 0x39
      0034E3 50 14            [24] 1355 	jnc	00104$
      0034E5                       1356 00108$:
                                   1357 ;	8051_i2c_eeprom.c:182: (c >= 'a' && c <= 'f') || 
      0034E5 BC 61 00         [24] 1358 	cjne	r4,#0x61,00205$
      0034E8                       1359 00205$:
      0034E8 40 05            [24] 1360 	jc	00110$
      0034EA EC               [12] 1361 	mov	a,r4
      0034EB 24 99            [12] 1362 	add	a,#0xff - 0x66
      0034ED 50 0A            [24] 1363 	jnc	00104$
      0034EF                       1364 00110$:
                                   1365 ;	8051_i2c_eeprom.c:183: (c >= 'A' && c <= 'F')) {
      0034EF BC 41 00         [24] 1366 	cjne	r4,#0x41,00208$
      0034F2                       1367 00208$:
      0034F2 40 C3            [24] 1368 	jc	00111$
      0034F4 EC               [12] 1369 	mov	a,r4
      0034F5 24 B9            [12] 1370 	add	a,#0xff - 0x46
      0034F7 40 BE            [24] 1371 	jc	00111$
      0034F9                       1372 00104$:
                                   1373 ;	8051_i2c_eeprom.c:185: input[i] = c;
      0034F9 EE               [12] 1374 	mov	a,r6
      0034FA 24 0A            [12] 1375 	add	a,#_take_data_input_65537_72
      0034FC F5 82            [12] 1376 	mov	dpl,a
      0034FE EF               [12] 1377 	mov	a,r7
      0034FF 34 04            [12] 1378 	addc	a,#(_take_data_input_65537_72 >> 8)
      003501 F5 83            [12] 1379 	mov	dph,a
      003503 EC               [12] 1380 	mov	a,r4
      003504 F0               [24] 1381 	movx	@dptr,a
                                   1382 ;	8051_i2c_eeprom.c:186: putchar(c);  // Echo character back
      003505 7D 00            [12] 1383 	mov	r5,#0x00
      003507 8C 82            [24] 1384 	mov	dpl,r4
      003509 8D 83            [24] 1385 	mov	dph,r5
      00350B C0 07            [24] 1386 	push	ar7
      00350D C0 06            [24] 1387 	push	ar6
      00350F 12 30 62         [24] 1388 	lcall	_putchar
      003512 D0 06            [24] 1389 	pop	ar6
      003514 D0 07            [24] 1390 	pop	ar7
                                   1391 ;	8051_i2c_eeprom.c:187: i++;
      003516 0E               [12] 1392 	inc	r6
      003517 BE 00 9D         [24] 1393 	cjne	r6,#0x00,00111$
      00351A 0F               [12] 1394 	inc	r7
      00351B 80 9A            [24] 1395 	sjmp	00111$
      00351D                       1396 00113$:
                                   1397 ;	8051_i2c_eeprom.c:191: input[i] = '\0';  // Null-terminate the string
      00351D EE               [12] 1398 	mov	a,r6
      00351E 24 0A            [12] 1399 	add	a,#_take_data_input_65537_72
      003520 F5 82            [12] 1400 	mov	dpl,a
      003522 EF               [12] 1401 	mov	a,r7
      003523 34 04            [12] 1402 	addc	a,#(_take_data_input_65537_72 >> 8)
      003525 F5 83            [12] 1403 	mov	dph,a
      003527 E4               [12] 1404 	clr	a
      003528 F0               [24] 1405 	movx	@dptr,a
                                   1406 ;	8051_i2c_eeprom.c:194: unsigned char data = 0;
      003529 90 04 0E         [24] 1407 	mov	dptr,#_take_data_data_65538_76
      00352C F0               [24] 1408 	movx	@dptr,a
                                   1409 ;	8051_i2c_eeprom.c:195: for (i = 0; input[i] != '\0'; i++) {
      00352D 7E 00            [12] 1410 	mov	r6,#0x00
      00352F 7F 00            [12] 1411 	mov	r7,#0x00
      003531                       1412 00129$:
      003531 EE               [12] 1413 	mov	a,r6
      003532 24 0A            [12] 1414 	add	a,#_take_data_input_65537_72
      003534 F5 82            [12] 1415 	mov	dpl,a
      003536 EF               [12] 1416 	mov	a,r7
      003537 34 04            [12] 1417 	addc	a,#(_take_data_input_65537_72 >> 8)
      003539 F5 83            [12] 1418 	mov	dph,a
      00353B E0               [24] 1419 	movx	a,@dptr
      00353C FD               [12] 1420 	mov	r5,a
      00353D 70 03            [24] 1421 	jnz	00212$
      00353F 02 35 A4         [24] 1422 	ljmp	00125$
      003542                       1423 00212$:
                                   1424 ;	8051_i2c_eeprom.c:196: data = data * 16;
      003542 90 04 0E         [24] 1425 	mov	dptr,#_take_data_data_65538_76
      003545 E0               [24] 1426 	movx	a,@dptr
      003546 C4               [12] 1427 	swap	a
      003547 54 F0            [12] 1428 	anl	a,#0xf0
      003549 FC               [12] 1429 	mov	r4,a
      00354A F0               [24] 1430 	movx	@dptr,a
                                   1431 ;	8051_i2c_eeprom.c:197: if (input[i] >= '0' && input[i] <= '9')
      00354B BD 30 00         [24] 1432 	cjne	r5,#0x30,00213$
      00354E                       1433 00213$:
      00354E 40 12            [24] 1434 	jc	00122$
      003550 ED               [12] 1435 	mov	a,r5
      003551 24 C6            [12] 1436 	add	a,#0xff - 0x39
      003553 40 0D            [24] 1437 	jc	00122$
                                   1438 ;	8051_i2c_eeprom.c:198: data += input[i] - '0';
      003555 ED               [12] 1439 	mov	a,r5
      003556 24 D0            [12] 1440 	add	a,#0xd0
      003558 FD               [12] 1441 	mov	r5,a
      003559 90 04 0E         [24] 1442 	mov	dptr,#_take_data_data_65538_76
      00355C E0               [24] 1443 	movx	a,@dptr
      00355D FC               [12] 1444 	mov	r4,a
      00355E 2D               [12] 1445 	add	a,r5
      00355F F0               [24] 1446 	movx	@dptr,a
      003560 80 3A            [24] 1447 	sjmp	00130$
      003562                       1448 00122$:
                                   1449 ;	8051_i2c_eeprom.c:199: else if (input[i] >= 'A' && input[i] <= 'F')
      003562 EE               [12] 1450 	mov	a,r6
      003563 24 0A            [12] 1451 	add	a,#_take_data_input_65537_72
      003565 F5 82            [12] 1452 	mov	dpl,a
      003567 EF               [12] 1453 	mov	a,r7
      003568 34 04            [12] 1454 	addc	a,#(_take_data_input_65537_72 >> 8)
      00356A F5 83            [12] 1455 	mov	dph,a
      00356C E0               [24] 1456 	movx	a,@dptr
      00356D FD               [12] 1457 	mov	r5,a
      00356E BD 41 00         [24] 1458 	cjne	r5,#0x41,00216$
      003571                       1459 00216$:
      003571 40 14            [24] 1460 	jc	00118$
      003573 ED               [12] 1461 	mov	a,r5
      003574 24 B9            [12] 1462 	add	a,#0xff - 0x46
      003576 40 0F            [24] 1463 	jc	00118$
                                   1464 ;	8051_i2c_eeprom.c:200: data += input[i] - 'A' + 10;
      003578 8D 04            [24] 1465 	mov	ar4,r5
      00357A 74 C9            [12] 1466 	mov	a,#0xc9
      00357C 2C               [12] 1467 	add	a,r4
      00357D FC               [12] 1468 	mov	r4,a
      00357E 90 04 0E         [24] 1469 	mov	dptr,#_take_data_data_65538_76
      003581 E0               [24] 1470 	movx	a,@dptr
      003582 FB               [12] 1471 	mov	r3,a
      003583 2C               [12] 1472 	add	a,r4
      003584 F0               [24] 1473 	movx	@dptr,a
      003585 80 15            [24] 1474 	sjmp	00130$
      003587                       1475 00118$:
                                   1476 ;	8051_i2c_eeprom.c:201: else if (input[i] >= 'a' && input[i] <= 'f')
      003587 BD 61 00         [24] 1477 	cjne	r5,#0x61,00219$
      00358A                       1478 00219$:
      00358A 40 10            [24] 1479 	jc	00130$
      00358C ED               [12] 1480 	mov	a,r5
      00358D 24 99            [12] 1481 	add	a,#0xff - 0x66
      00358F 40 0B            [24] 1482 	jc	00130$
                                   1483 ;	8051_i2c_eeprom.c:202: data += input[i] - 'a' + 10;
      003591 74 A9            [12] 1484 	mov	a,#0xa9
      003593 2D               [12] 1485 	add	a,r5
      003594 FD               [12] 1486 	mov	r5,a
      003595 90 04 0E         [24] 1487 	mov	dptr,#_take_data_data_65538_76
      003598 E0               [24] 1488 	movx	a,@dptr
      003599 FC               [12] 1489 	mov	r4,a
      00359A 2D               [12] 1490 	add	a,r5
      00359B F0               [24] 1491 	movx	@dptr,a
      00359C                       1492 00130$:
                                   1493 ;	8051_i2c_eeprom.c:195: for (i = 0; input[i] != '\0'; i++) {
      00359C 0E               [12] 1494 	inc	r6
      00359D BE 00 01         [24] 1495 	cjne	r6,#0x00,00222$
      0035A0 0F               [12] 1496 	inc	r7
      0035A1                       1497 00222$:
      0035A1 02 35 31         [24] 1498 	ljmp	00129$
      0035A4                       1499 00125$:
                                   1500 ;	8051_i2c_eeprom.c:205: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      0035A4 90 04 0E         [24] 1501 	mov	dptr,#_take_data_data_65538_76
      0035A7 E0               [24] 1502 	movx	a,@dptr
      0035A8 FF               [12] 1503 	mov	r7,a
      0035A9 FD               [12] 1504 	mov	r5,a
      0035AA 7E 00            [12] 1505 	mov	r6,#0x00
      0035AC C0 07            [24] 1506 	push	ar7
      0035AE C0 05            [24] 1507 	push	ar5
      0035B0 C0 06            [24] 1508 	push	ar6
      0035B2 74 86            [12] 1509 	mov	a,#___str_24
      0035B4 C0 E0            [24] 1510 	push	acc
      0035B6 74 4C            [12] 1511 	mov	a,#(___str_24 >> 8)
      0035B8 C0 E0            [24] 1512 	push	acc
      0035BA 74 80            [12] 1513 	mov	a,#0x80
      0035BC C0 E0            [24] 1514 	push	acc
      0035BE 12 3A 90         [24] 1515 	lcall	_printf
      0035C1 E5 81            [12] 1516 	mov	a,sp
      0035C3 24 FB            [12] 1517 	add	a,#0xfb
      0035C5 F5 81            [12] 1518 	mov	sp,a
      0035C7 D0 07            [24] 1519 	pop	ar7
                                   1520 ;	8051_i2c_eeprom.c:206: if(data > 254) 
      0035C9 EF               [12] 1521 	mov	a,r7
      0035CA 24 01            [12] 1522 	add	a,#0xff - 0xfe
      0035CC 50 19            [24] 1523 	jnc	00127$
                                   1524 ;	8051_i2c_eeprom.c:208: printf("Data out of Range\n\r");
      0035CE 74 A3            [12] 1525 	mov	a,#___str_25
      0035D0 C0 E0            [24] 1526 	push	acc
      0035D2 74 4C            [12] 1527 	mov	a,#(___str_25 >> 8)
      0035D4 C0 E0            [24] 1528 	push	acc
      0035D6 74 80            [12] 1529 	mov	a,#0x80
      0035D8 C0 E0            [24] 1530 	push	acc
      0035DA 12 3A 90         [24] 1531 	lcall	_printf
      0035DD 15 81            [12] 1532 	dec	sp
      0035DF 15 81            [12] 1533 	dec	sp
      0035E1 15 81            [12] 1534 	dec	sp
                                   1535 ;	8051_i2c_eeprom.c:209: return 0;
      0035E3 75 82 00         [24] 1536 	mov	dpl,#0x00
      0035E6 22               [24] 1537 	ret
      0035E7                       1538 00127$:
                                   1539 ;	8051_i2c_eeprom.c:211: return data;
      0035E7 8F 82            [24] 1540 	mov	dpl,r7
                                   1541 ;	8051_i2c_eeprom.c:213: }
      0035E9 22               [24] 1542 	ret
                                   1543 ;------------------------------------------------------------
                                   1544 ;Allocation info for local variables in function 'eeprom_write'
                                   1545 ;------------------------------------------------------------
                                   1546 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                   1547 ;address                   Allocated with name '_eeprom_write_address_65536_80'
                                   1548 ;i                         Allocated with name '_eeprom_write_i_131072_85'
                                   1549 ;------------------------------------------------------------
                                   1550 ;	8051_i2c_eeprom.c:215: int eeprom_write(unsigned int address, unsigned char data) 
                                   1551 ;	-----------------------------------------
                                   1552 ;	 function eeprom_write
                                   1553 ;	-----------------------------------------
      0035EA                       1554 _eeprom_write:
      0035EA AF 83            [24] 1555 	mov	r7,dph
      0035EC E5 82            [12] 1556 	mov	a,dpl
      0035EE 90 04 10         [24] 1557 	mov	dptr,#_eeprom_write_address_65536_80
      0035F1 F0               [24] 1558 	movx	@dptr,a
      0035F2 EF               [12] 1559 	mov	a,r7
      0035F3 A3               [24] 1560 	inc	dptr
      0035F4 F0               [24] 1561 	movx	@dptr,a
                                   1562 ;	8051_i2c_eeprom.c:218: i2c_start();
      0035F5 12 39 51         [24] 1563 	lcall	_i2c_start
                                   1564 ;	8051_i2c_eeprom.c:221: if(!i2c_write(EEPROM_ID | WRITE)) {
      0035F8 75 82 A0         [24] 1565 	mov	dpl,#0xa0
      0035FB 12 38 64         [24] 1566 	lcall	_i2c_write
      0035FE E5 82            [12] 1567 	mov	a,dpl
      003600 85 83 F0         [24] 1568 	mov	b,dph
      003603 45 F0            [12] 1569 	orl	a,b
      003605 70 1C            [24] 1570 	jnz	00102$
                                   1571 ;	8051_i2c_eeprom.c:222: printf("Error: No ACK for device address (write)\n\r");
      003607 74 B7            [12] 1572 	mov	a,#___str_26
      003609 C0 E0            [24] 1573 	push	acc
      00360B 74 4C            [12] 1574 	mov	a,#(___str_26 >> 8)
      00360D C0 E0            [24] 1575 	push	acc
      00360F 74 80            [12] 1576 	mov	a,#0x80
      003611 C0 E0            [24] 1577 	push	acc
      003613 12 3A 90         [24] 1578 	lcall	_printf
      003616 15 81            [12] 1579 	dec	sp
      003618 15 81            [12] 1580 	dec	sp
      00361A 15 81            [12] 1581 	dec	sp
                                   1582 ;	8051_i2c_eeprom.c:223: i2c_stop();
      00361C 12 39 66         [24] 1583 	lcall	_i2c_stop
                                   1584 ;	8051_i2c_eeprom.c:224: return 0;
      00361F 90 00 00         [24] 1585 	mov	dptr,#0x0000
      003622 22               [24] 1586 	ret
      003623                       1587 00102$:
                                   1588 ;	8051_i2c_eeprom.c:228: if(!i2c_write((unsigned char)address)) {
      003623 90 04 10         [24] 1589 	mov	dptr,#_eeprom_write_address_65536_80
      003626 E0               [24] 1590 	movx	a,@dptr
      003627 FE               [12] 1591 	mov	r6,a
      003628 A3               [24] 1592 	inc	dptr
      003629 E0               [24] 1593 	movx	a,@dptr
      00362A FF               [12] 1594 	mov	r7,a
      00362B 8E 05            [24] 1595 	mov	ar5,r6
      00362D 8D 82            [24] 1596 	mov	dpl,r5
      00362F C0 07            [24] 1597 	push	ar7
      003631 C0 06            [24] 1598 	push	ar6
      003633 12 38 64         [24] 1599 	lcall	_i2c_write
      003636 E5 82            [12] 1600 	mov	a,dpl
      003638 85 83 F0         [24] 1601 	mov	b,dph
      00363B D0 06            [24] 1602 	pop	ar6
      00363D D0 07            [24] 1603 	pop	ar7
      00363F 45 F0            [12] 1604 	orl	a,b
      003641 70 1C            [24] 1605 	jnz	00104$
                                   1606 ;	8051_i2c_eeprom.c:229: printf("Error: No ACK for memory address\n\r");
      003643 74 E2            [12] 1607 	mov	a,#___str_27
      003645 C0 E0            [24] 1608 	push	acc
      003647 74 4C            [12] 1609 	mov	a,#(___str_27 >> 8)
      003649 C0 E0            [24] 1610 	push	acc
      00364B 74 80            [12] 1611 	mov	a,#0x80
      00364D C0 E0            [24] 1612 	push	acc
      00364F 12 3A 90         [24] 1613 	lcall	_printf
      003652 15 81            [12] 1614 	dec	sp
      003654 15 81            [12] 1615 	dec	sp
      003656 15 81            [12] 1616 	dec	sp
                                   1617 ;	8051_i2c_eeprom.c:230: i2c_stop();
      003658 12 39 66         [24] 1618 	lcall	_i2c_stop
                                   1619 ;	8051_i2c_eeprom.c:231: return 0;
      00365B 90 00 00         [24] 1620 	mov	dptr,#0x0000
      00365E 22               [24] 1621 	ret
      00365F                       1622 00104$:
                                   1623 ;	8051_i2c_eeprom.c:235: if(!i2c_write(data)) {
      00365F 90 04 0F         [24] 1624 	mov	dptr,#_eeprom_write_PARM_2
      003662 E0               [24] 1625 	movx	a,@dptr
      003663 FD               [12] 1626 	mov	r5,a
      003664 F5 82            [12] 1627 	mov	dpl,a
      003666 C0 07            [24] 1628 	push	ar7
      003668 C0 06            [24] 1629 	push	ar6
      00366A C0 05            [24] 1630 	push	ar5
      00366C 12 38 64         [24] 1631 	lcall	_i2c_write
      00366F E5 82            [12] 1632 	mov	a,dpl
      003671 85 83 F0         [24] 1633 	mov	b,dph
      003674 D0 05            [24] 1634 	pop	ar5
      003676 D0 06            [24] 1635 	pop	ar6
      003678 D0 07            [24] 1636 	pop	ar7
      00367A 45 F0            [12] 1637 	orl	a,b
      00367C 70 1C            [24] 1638 	jnz	00106$
                                   1639 ;	8051_i2c_eeprom.c:236: printf("Error: No ACK for data\n\r");
      00367E 74 05            [12] 1640 	mov	a,#___str_28
      003680 C0 E0            [24] 1641 	push	acc
      003682 74 4D            [12] 1642 	mov	a,#(___str_28 >> 8)
      003684 C0 E0            [24] 1643 	push	acc
      003686 74 80            [12] 1644 	mov	a,#0x80
      003688 C0 E0            [24] 1645 	push	acc
      00368A 12 3A 90         [24] 1646 	lcall	_printf
      00368D 15 81            [12] 1647 	dec	sp
      00368F 15 81            [12] 1648 	dec	sp
      003691 15 81            [12] 1649 	dec	sp
                                   1650 ;	8051_i2c_eeprom.c:237: i2c_stop();
      003693 12 39 66         [24] 1651 	lcall	_i2c_stop
                                   1652 ;	8051_i2c_eeprom.c:238: return 0;
      003696 90 00 00         [24] 1653 	mov	dptr,#0x0000
      003699 22               [24] 1654 	ret
      00369A                       1655 00106$:
                                   1656 ;	8051_i2c_eeprom.c:241: i2c_stop();
      00369A C0 07            [24] 1657 	push	ar7
      00369C C0 06            [24] 1658 	push	ar6
      00369E C0 05            [24] 1659 	push	ar5
      0036A0 12 39 66         [24] 1660 	lcall	_i2c_stop
      0036A3 D0 05            [24] 1661 	pop	ar5
      0036A5 D0 06            [24] 1662 	pop	ar6
      0036A7 D0 07            [24] 1663 	pop	ar7
                                   1664 ;	8051_i2c_eeprom.c:243: for(int i = 0; i<100; i++)
      0036A9 7B 00            [12] 1665 	mov	r3,#0x00
      0036AB 7C 00            [12] 1666 	mov	r4,#0x00
      0036AD                       1667 00109$:
      0036AD C3               [12] 1668 	clr	c
      0036AE EB               [12] 1669 	mov	a,r3
      0036AF 94 64            [12] 1670 	subb	a,#0x64
      0036B1 EC               [12] 1671 	mov	a,r4
      0036B2 64 80            [12] 1672 	xrl	a,#0x80
      0036B4 94 80            [12] 1673 	subb	a,#0x80
      0036B6 50 1E            [24] 1674 	jnc	00107$
                                   1675 ;	8051_i2c_eeprom.c:245: i2c_delay();
      0036B8 C0 07            [24] 1676 	push	ar7
      0036BA C0 06            [24] 1677 	push	ar6
      0036BC C0 05            [24] 1678 	push	ar5
      0036BE C0 04            [24] 1679 	push	ar4
      0036C0 C0 03            [24] 1680 	push	ar3
      0036C2 12 39 73         [24] 1681 	lcall	_i2c_delay
      0036C5 D0 03            [24] 1682 	pop	ar3
      0036C7 D0 04            [24] 1683 	pop	ar4
      0036C9 D0 05            [24] 1684 	pop	ar5
      0036CB D0 06            [24] 1685 	pop	ar6
      0036CD D0 07            [24] 1686 	pop	ar7
                                   1687 ;	8051_i2c_eeprom.c:243: for(int i = 0; i<100; i++)
      0036CF 0B               [12] 1688 	inc	r3
      0036D0 BB 00 DA         [24] 1689 	cjne	r3,#0x00,00109$
      0036D3 0C               [12] 1690 	inc	r4
      0036D4 80 D7            [24] 1691 	sjmp	00109$
      0036D6                       1692 00107$:
                                   1693 ;	8051_i2c_eeprom.c:247: printf("| Writing at Address 0x%03X Data 0x%02X          |\n\r", address, data);
      0036D6 7C 00            [12] 1694 	mov	r4,#0x00
      0036D8 C0 05            [24] 1695 	push	ar5
      0036DA C0 04            [24] 1696 	push	ar4
      0036DC C0 06            [24] 1697 	push	ar6
      0036DE C0 07            [24] 1698 	push	ar7
      0036E0 74 1E            [12] 1699 	mov	a,#___str_29
      0036E2 C0 E0            [24] 1700 	push	acc
      0036E4 74 4D            [12] 1701 	mov	a,#(___str_29 >> 8)
      0036E6 C0 E0            [24] 1702 	push	acc
      0036E8 74 80            [12] 1703 	mov	a,#0x80
      0036EA C0 E0            [24] 1704 	push	acc
      0036EC 12 3A 90         [24] 1705 	lcall	_printf
      0036EF E5 81            [12] 1706 	mov	a,sp
      0036F1 24 F9            [12] 1707 	add	a,#0xf9
      0036F3 F5 81            [12] 1708 	mov	sp,a
                                   1709 ;	8051_i2c_eeprom.c:248: printf("│ Write successful!                             │\n\r");
      0036F5 74 53            [12] 1710 	mov	a,#___str_30
      0036F7 C0 E0            [24] 1711 	push	acc
      0036F9 74 4D            [12] 1712 	mov	a,#(___str_30 >> 8)
      0036FB C0 E0            [24] 1713 	push	acc
      0036FD 74 80            [12] 1714 	mov	a,#0x80
      0036FF C0 E0            [24] 1715 	push	acc
      003701 12 3A 90         [24] 1716 	lcall	_printf
      003704 15 81            [12] 1717 	dec	sp
      003706 15 81            [12] 1718 	dec	sp
      003708 15 81            [12] 1719 	dec	sp
                                   1720 ;	8051_i2c_eeprom.c:249: printf("└───────────────────────────────────────────────┘\n\r");
      00370A 74 8B            [12] 1721 	mov	a,#___str_31
      00370C C0 E0            [24] 1722 	push	acc
      00370E 74 4D            [12] 1723 	mov	a,#(___str_31 >> 8)
      003710 C0 E0            [24] 1724 	push	acc
      003712 74 80            [12] 1725 	mov	a,#0x80
      003714 C0 E0            [24] 1726 	push	acc
      003716 12 3A 90         [24] 1727 	lcall	_printf
      003719 15 81            [12] 1728 	dec	sp
      00371B 15 81            [12] 1729 	dec	sp
      00371D 15 81            [12] 1730 	dec	sp
                                   1731 ;	8051_i2c_eeprom.c:250: return 1;  // Success
      00371F 90 00 01         [24] 1732 	mov	dptr,#0x0001
                                   1733 ;	8051_i2c_eeprom.c:252: }
      003722 22               [24] 1734 	ret
                                   1735 ;------------------------------------------------------------
                                   1736 ;Allocation info for local variables in function 'eeprom_read'
                                   1737 ;------------------------------------------------------------
                                   1738 ;address                   Allocated with name '_eeprom_read_address_65536_87'
                                   1739 ;result                    Allocated with name '_eeprom_read_result_65536_88'
                                   1740 ;------------------------------------------------------------
                                   1741 ;	8051_i2c_eeprom.c:254: int eeprom_read(unsigned int address) 
                                   1742 ;	-----------------------------------------
                                   1743 ;	 function eeprom_read
                                   1744 ;	-----------------------------------------
      003723                       1745 _eeprom_read:
      003723 AF 83            [24] 1746 	mov	r7,dph
      003725 E5 82            [12] 1747 	mov	a,dpl
      003727 90 04 12         [24] 1748 	mov	dptr,#_eeprom_read_address_65536_87
      00372A F0               [24] 1749 	movx	@dptr,a
      00372B EF               [12] 1750 	mov	a,r7
      00372C A3               [24] 1751 	inc	dptr
      00372D F0               [24] 1752 	movx	@dptr,a
                                   1753 ;	8051_i2c_eeprom.c:260: i2c_start();
      00372E 12 39 51         [24] 1754 	lcall	_i2c_start
                                   1755 ;	8051_i2c_eeprom.c:263: if(!i2c_write(EEPROM_ID | WRITE)) {
      003731 75 82 A0         [24] 1756 	mov	dpl,#0xa0
      003734 12 38 64         [24] 1757 	lcall	_i2c_write
      003737 E5 82            [12] 1758 	mov	a,dpl
      003739 85 83 F0         [24] 1759 	mov	b,dph
      00373C 45 F0            [12] 1760 	orl	a,b
      00373E 70 1C            [24] 1761 	jnz	00102$
                                   1762 ;	8051_i2c_eeprom.c:264: printf("Error: No ACK for device address (write mode)\n\r");
      003740 74 21            [12] 1763 	mov	a,#___str_32
      003742 C0 E0            [24] 1764 	push	acc
      003744 74 4E            [12] 1765 	mov	a,#(___str_32 >> 8)
      003746 C0 E0            [24] 1766 	push	acc
      003748 74 80            [12] 1767 	mov	a,#0x80
      00374A C0 E0            [24] 1768 	push	acc
      00374C 12 3A 90         [24] 1769 	lcall	_printf
      00374F 15 81            [12] 1770 	dec	sp
      003751 15 81            [12] 1771 	dec	sp
      003753 15 81            [12] 1772 	dec	sp
                                   1773 ;	8051_i2c_eeprom.c:265: i2c_stop();
      003755 12 39 66         [24] 1774 	lcall	_i2c_stop
                                   1775 ;	8051_i2c_eeprom.c:266: return -1;
      003758 90 FF FF         [24] 1776 	mov	dptr,#0xffff
      00375B 22               [24] 1777 	ret
      00375C                       1778 00102$:
                                   1779 ;	8051_i2c_eeprom.c:270: if(!i2c_write((unsigned char)address)) {
      00375C 90 04 12         [24] 1780 	mov	dptr,#_eeprom_read_address_65536_87
      00375F E0               [24] 1781 	movx	a,@dptr
      003760 FE               [12] 1782 	mov	r6,a
      003761 A3               [24] 1783 	inc	dptr
      003762 E0               [24] 1784 	movx	a,@dptr
      003763 FF               [12] 1785 	mov	r7,a
      003764 8E 05            [24] 1786 	mov	ar5,r6
      003766 8D 82            [24] 1787 	mov	dpl,r5
      003768 C0 07            [24] 1788 	push	ar7
      00376A C0 06            [24] 1789 	push	ar6
      00376C 12 38 64         [24] 1790 	lcall	_i2c_write
      00376F E5 82            [12] 1791 	mov	a,dpl
      003771 85 83 F0         [24] 1792 	mov	b,dph
      003774 D0 06            [24] 1793 	pop	ar6
      003776 D0 07            [24] 1794 	pop	ar7
      003778 45 F0            [12] 1795 	orl	a,b
      00377A 70 1C            [24] 1796 	jnz	00104$
                                   1797 ;	8051_i2c_eeprom.c:271: printf("Error: No ACK for memory address\n\r");
      00377C 74 E2            [12] 1798 	mov	a,#___str_27
      00377E C0 E0            [24] 1799 	push	acc
      003780 74 4C            [12] 1800 	mov	a,#(___str_27 >> 8)
      003782 C0 E0            [24] 1801 	push	acc
      003784 74 80            [12] 1802 	mov	a,#0x80
      003786 C0 E0            [24] 1803 	push	acc
      003788 12 3A 90         [24] 1804 	lcall	_printf
      00378B 15 81            [12] 1805 	dec	sp
      00378D 15 81            [12] 1806 	dec	sp
      00378F 15 81            [12] 1807 	dec	sp
                                   1808 ;	8051_i2c_eeprom.c:272: i2c_stop();
      003791 12 39 66         [24] 1809 	lcall	_i2c_stop
                                   1810 ;	8051_i2c_eeprom.c:273: return -1;
      003794 90 FF FF         [24] 1811 	mov	dptr,#0xffff
      003797 22               [24] 1812 	ret
      003798                       1813 00104$:
                                   1814 ;	8051_i2c_eeprom.c:277: i2c_start();
      003798 C0 07            [24] 1815 	push	ar7
      00379A C0 06            [24] 1816 	push	ar6
      00379C 12 39 51         [24] 1817 	lcall	_i2c_start
                                   1818 ;	8051_i2c_eeprom.c:280: if(!i2c_write(EEPROM_ID | READ)) {
      00379F 75 82 A1         [24] 1819 	mov	dpl,#0xa1
      0037A2 12 38 64         [24] 1820 	lcall	_i2c_write
      0037A5 E5 82            [12] 1821 	mov	a,dpl
      0037A7 85 83 F0         [24] 1822 	mov	b,dph
      0037AA D0 06            [24] 1823 	pop	ar6
      0037AC D0 07            [24] 1824 	pop	ar7
      0037AE 45 F0            [12] 1825 	orl	a,b
      0037B0 70 1C            [24] 1826 	jnz	00106$
                                   1827 ;	8051_i2c_eeprom.c:281: printf("Error: No ACK for device address (read mode)\n\r");
      0037B2 74 51            [12] 1828 	mov	a,#___str_33
      0037B4 C0 E0            [24] 1829 	push	acc
      0037B6 74 4E            [12] 1830 	mov	a,#(___str_33 >> 8)
      0037B8 C0 E0            [24] 1831 	push	acc
      0037BA 74 80            [12] 1832 	mov	a,#0x80
      0037BC C0 E0            [24] 1833 	push	acc
      0037BE 12 3A 90         [24] 1834 	lcall	_printf
      0037C1 15 81            [12] 1835 	dec	sp
      0037C3 15 81            [12] 1836 	dec	sp
      0037C5 15 81            [12] 1837 	dec	sp
                                   1838 ;	8051_i2c_eeprom.c:282: i2c_stop();
      0037C7 12 39 66         [24] 1839 	lcall	_i2c_stop
                                   1840 ;	8051_i2c_eeprom.c:283: return -1;
      0037CA 90 FF FF         [24] 1841 	mov	dptr,#0xffff
      0037CD 22               [24] 1842 	ret
      0037CE                       1843 00106$:
                                   1844 ;	8051_i2c_eeprom.c:287: result = i2c_read(0);  // 0 means send NACK
      0037CE 90 00 00         [24] 1845 	mov	dptr,#0x0000
      0037D1 C0 07            [24] 1846 	push	ar7
      0037D3 C0 06            [24] 1847 	push	ar6
      0037D5 12 38 CC         [24] 1848 	lcall	_i2c_read
      0037D8 AC 82            [24] 1849 	mov	r4,dpl
      0037DA D0 06            [24] 1850 	pop	ar6
      0037DC D0 07            [24] 1851 	pop	ar7
                                   1852 ;	8051_i2c_eeprom.c:288: printf("│ Reading from Adress: 0x%03X Data: 0x%02X                    \n\r", address, result);
      0037DE 7D 00            [12] 1853 	mov	r5,#0x00
      0037E0 C0 07            [24] 1854 	push	ar7
      0037E2 C0 06            [24] 1855 	push	ar6
      0037E4 C0 05            [24] 1856 	push	ar5
      0037E6 C0 04            [24] 1857 	push	ar4
      0037E8 C0 04            [24] 1858 	push	ar4
      0037EA C0 05            [24] 1859 	push	ar5
      0037EC C0 06            [24] 1860 	push	ar6
      0037EE C0 07            [24] 1861 	push	ar7
      0037F0 74 80            [12] 1862 	mov	a,#___str_34
      0037F2 C0 E0            [24] 1863 	push	acc
      0037F4 74 4E            [12] 1864 	mov	a,#(___str_34 >> 8)
      0037F6 C0 E0            [24] 1865 	push	acc
      0037F8 74 80            [12] 1866 	mov	a,#0x80
      0037FA C0 E0            [24] 1867 	push	acc
      0037FC 12 3A 90         [24] 1868 	lcall	_printf
      0037FF E5 81            [12] 1869 	mov	a,sp
      003801 24 F9            [12] 1870 	add	a,#0xf9
      003803 F5 81            [12] 1871 	mov	sp,a
      003805 D0 04            [24] 1872 	pop	ar4
      003807 D0 05            [24] 1873 	pop	ar5
      003809 D0 06            [24] 1874 	pop	ar6
      00380B D0 07            [24] 1875 	pop	ar7
                                   1876 ;	8051_i2c_eeprom.c:289: printf("| 0x%03X : 0x%02X \n\r", address, result);
      00380D C0 05            [24] 1877 	push	ar5
      00380F C0 04            [24] 1878 	push	ar4
      003811 C0 04            [24] 1879 	push	ar4
      003813 C0 05            [24] 1880 	push	ar5
      003815 C0 06            [24] 1881 	push	ar6
      003817 C0 07            [24] 1882 	push	ar7
      003819 74 C3            [12] 1883 	mov	a,#___str_35
      00381B C0 E0            [24] 1884 	push	acc
      00381D 74 4E            [12] 1885 	mov	a,#(___str_35 >> 8)
      00381F C0 E0            [24] 1886 	push	acc
      003821 74 80            [12] 1887 	mov	a,#0x80
      003823 C0 E0            [24] 1888 	push	acc
      003825 12 3A 90         [24] 1889 	lcall	_printf
      003828 E5 81            [12] 1890 	mov	a,sp
      00382A 24 F9            [12] 1891 	add	a,#0xf9
      00382C F5 81            [12] 1892 	mov	sp,a
                                   1893 ;	8051_i2c_eeprom.c:290: printf("│ Read successful!                 │\n\r");
      00382E 74 D8            [12] 1894 	mov	a,#___str_36
      003830 C0 E0            [24] 1895 	push	acc
      003832 74 4E            [12] 1896 	mov	a,#(___str_36 >> 8)
      003834 C0 E0            [24] 1897 	push	acc
      003836 74 80            [12] 1898 	mov	a,#0x80
      003838 C0 E0            [24] 1899 	push	acc
      00383A 12 3A 90         [24] 1900 	lcall	_printf
      00383D 15 81            [12] 1901 	dec	sp
      00383F 15 81            [12] 1902 	dec	sp
      003841 15 81            [12] 1903 	dec	sp
                                   1904 ;	8051_i2c_eeprom.c:291: printf("└───────────────────────────────────────────────┘\n\r");
      003843 74 8B            [12] 1905 	mov	a,#___str_31
      003845 C0 E0            [24] 1906 	push	acc
      003847 74 4D            [12] 1907 	mov	a,#(___str_31 >> 8)
      003849 C0 E0            [24] 1908 	push	acc
      00384B 74 80            [12] 1909 	mov	a,#0x80
      00384D C0 E0            [24] 1910 	push	acc
      00384F 12 3A 90         [24] 1911 	lcall	_printf
      003852 15 81            [12] 1912 	dec	sp
      003854 15 81            [12] 1913 	dec	sp
      003856 15 81            [12] 1914 	dec	sp
                                   1915 ;	8051_i2c_eeprom.c:292: i2c_stop();
      003858 12 39 66         [24] 1916 	lcall	_i2c_stop
      00385B D0 04            [24] 1917 	pop	ar4
      00385D D0 05            [24] 1918 	pop	ar5
                                   1919 ;	8051_i2c_eeprom.c:293: return result;
      00385F 8C 82            [24] 1920 	mov	dpl,r4
      003861 8D 83            [24] 1921 	mov	dph,r5
                                   1922 ;	8051_i2c_eeprom.c:294: }
      003863 22               [24] 1923 	ret
                                   1924 ;------------------------------------------------------------
                                   1925 ;Allocation info for local variables in function 'i2c_write'
                                   1926 ;------------------------------------------------------------
                                   1927 ;data                      Allocated with name '_i2c_write_data_65536_92'
                                   1928 ;i                         Allocated with name '_i2c_write_i_65536_93'
                                   1929 ;------------------------------------------------------------
                                   1930 ;	8051_i2c_eeprom.c:297: int i2c_write(unsigned char data)
                                   1931 ;	-----------------------------------------
                                   1932 ;	 function i2c_write
                                   1933 ;	-----------------------------------------
      003864                       1934 _i2c_write:
      003864 E5 82            [12] 1935 	mov	a,dpl
      003866 90 04 14         [24] 1936 	mov	dptr,#_i2c_write_data_65536_92
      003869 F0               [24] 1937 	movx	@dptr,a
                                   1938 ;	8051_i2c_eeprom.c:301: for(i=0;i<=7;i++)
      00386A 7E 00            [12] 1939 	mov	r6,#0x00
      00386C 7F 00            [12] 1940 	mov	r7,#0x00
      00386E                       1941 00104$:
                                   1942 ;	8051_i2c_eeprom.c:303: SDA = (data & 0x80) ? 1 : 0;    //msb first
      00386E 90 04 14         [24] 1943 	mov	dptr,#_i2c_write_data_65536_92
      003871 E0               [24] 1944 	movx	a,@dptr
      003872 FD               [12] 1945 	mov	r5,a
      003873 23               [12] 1946 	rl	a
      003874 54 01            [12] 1947 	anl	a,#0x01
      003876 24 FF            [12] 1948 	add	a,#0xff
      003878 92 94            [24] 1949 	mov	_P1_4,c
                                   1950 ;	8051_i2c_eeprom.c:304: i2c_delay();        // Setup time for data
      00387A C0 07            [24] 1951 	push	ar7
      00387C C0 06            [24] 1952 	push	ar6
      00387E C0 05            [24] 1953 	push	ar5
      003880 12 39 73         [24] 1954 	lcall	_i2c_delay
                                   1955 ;	8051_i2c_eeprom.c:305: SCL=1;
                                   1956 ;	assignBit
      003883 D2 93            [12] 1957 	setb	_P1_3
                                   1958 ;	8051_i2c_eeprom.c:306: i2c_delay();        // Hold time for clock
      003885 12 39 73         [24] 1959 	lcall	_i2c_delay
      003888 D0 05            [24] 1960 	pop	ar5
      00388A D0 06            [24] 1961 	pop	ar6
      00388C D0 07            [24] 1962 	pop	ar7
                                   1963 ;	8051_i2c_eeprom.c:307: SCL=0;
                                   1964 ;	assignBit
      00388E C2 93            [12] 1965 	clr	_P1_3
                                   1966 ;	8051_i2c_eeprom.c:308: data = data << 1;
      003890 ED               [12] 1967 	mov	a,r5
      003891 2D               [12] 1968 	add	a,r5
      003892 90 04 14         [24] 1969 	mov	dptr,#_i2c_write_data_65536_92
      003895 F0               [24] 1970 	movx	@dptr,a
                                   1971 ;	8051_i2c_eeprom.c:301: for(i=0;i<=7;i++)
      003896 0E               [12] 1972 	inc	r6
      003897 BE 00 01         [24] 1973 	cjne	r6,#0x00,00121$
      00389A 0F               [12] 1974 	inc	r7
      00389B                       1975 00121$:
      00389B C3               [12] 1976 	clr	c
      00389C 74 07            [12] 1977 	mov	a,#0x07
      00389E 9E               [12] 1978 	subb	a,r6
      00389F E4               [12] 1979 	clr	a
      0038A0 9F               [12] 1980 	subb	a,r7
      0038A1 50 CB            [24] 1981 	jnc	00104$
                                   1982 ;	8051_i2c_eeprom.c:312: SDA = 1;            // Release SDA for slave
                                   1983 ;	assignBit
      0038A3 D2 94            [12] 1984 	setb	_P1_4
                                   1985 ;	8051_i2c_eeprom.c:313: SCL = 1;            // 9th clock pulse for ACK
                                   1986 ;	assignBit
      0038A5 D2 93            [12] 1987 	setb	_P1_3
                                   1988 ;	8051_i2c_eeprom.c:314: i2c_delay();
      0038A7 12 39 73         [24] 1989 	lcall	_i2c_delay
                                   1990 ;	8051_i2c_eeprom.c:315: if(SDA == 1)        // If SDA is still high, no ACK received
      0038AA 30 94 19         [24] 1991 	jnb	_P1_4,00103$
                                   1992 ;	8051_i2c_eeprom.c:318: printf("ACK DID NOT ARRIVE\n\r");
      0038AD 74 03            [12] 1993 	mov	a,#___str_37
      0038AF C0 E0            [24] 1994 	push	acc
      0038B1 74 4F            [12] 1995 	mov	a,#(___str_37 >> 8)
      0038B3 C0 E0            [24] 1996 	push	acc
      0038B5 74 80            [12] 1997 	mov	a,#0x80
      0038B7 C0 E0            [24] 1998 	push	acc
      0038B9 12 3A 90         [24] 1999 	lcall	_printf
      0038BC 15 81            [12] 2000 	dec	sp
      0038BE 15 81            [12] 2001 	dec	sp
      0038C0 15 81            [12] 2002 	dec	sp
                                   2003 ;	8051_i2c_eeprom.c:319: return 0;       // Error
      0038C2 90 00 00         [24] 2004 	mov	dptr,#0x0000
      0038C5 22               [24] 2005 	ret
      0038C6                       2006 00103$:
                                   2007 ;	8051_i2c_eeprom.c:321: SCL = 0;
                                   2008 ;	assignBit
      0038C6 C2 93            [12] 2009 	clr	_P1_3
                                   2010 ;	8051_i2c_eeprom.c:323: return 1;           // Success
      0038C8 90 00 01         [24] 2011 	mov	dptr,#0x0001
                                   2012 ;	8051_i2c_eeprom.c:325: }
      0038CB 22               [24] 2013 	ret
                                   2014 ;------------------------------------------------------------
                                   2015 ;Allocation info for local variables in function 'i2c_read'
                                   2016 ;------------------------------------------------------------
                                   2017 ;ACK                       Allocated with name '_i2c_read_ACK_65536_97'
                                   2018 ;buff                      Allocated with name '_i2c_read_buff_65536_98'
                                   2019 ;i                         Allocated with name '_i2c_read_i_131072_99'
                                   2020 ;------------------------------------------------------------
                                   2021 ;	8051_i2c_eeprom.c:326: int i2c_read(int ACK)
                                   2022 ;	-----------------------------------------
                                   2023 ;	 function i2c_read
                                   2024 ;	-----------------------------------------
      0038CC                       2025 _i2c_read:
      0038CC AF 83            [24] 2026 	mov	r7,dph
      0038CE E5 82            [12] 2027 	mov	a,dpl
      0038D0 90 04 15         [24] 2028 	mov	dptr,#_i2c_read_ACK_65536_97
      0038D3 F0               [24] 2029 	movx	@dptr,a
      0038D4 EF               [12] 2030 	mov	a,r7
      0038D5 A3               [24] 2031 	inc	dptr
      0038D6 F0               [24] 2032 	movx	@dptr,a
                                   2033 ;	8051_i2c_eeprom.c:328: unsigned char buff=0;
      0038D7 90 04 17         [24] 2034 	mov	dptr,#_i2c_read_buff_65536_98
      0038DA E4               [12] 2035 	clr	a
      0038DB F0               [24] 2036 	movx	@dptr,a
                                   2037 ;	8051_i2c_eeprom.c:329: SCL = 0;
                                   2038 ;	assignBit
      0038DC C2 93            [12] 2039 	clr	_P1_3
                                   2040 ;	8051_i2c_eeprom.c:330: for(int i=0;i<8;i++)
      0038DE 7E 00            [12] 2041 	mov	r6,#0x00
      0038E0 7F 00            [12] 2042 	mov	r7,#0x00
      0038E2                       2043 00103$:
      0038E2 C3               [12] 2044 	clr	c
      0038E3 EE               [12] 2045 	mov	a,r6
      0038E4 94 08            [12] 2046 	subb	a,#0x08
      0038E6 EF               [12] 2047 	mov	a,r7
      0038E7 64 80            [12] 2048 	xrl	a,#0x80
      0038E9 94 80            [12] 2049 	subb	a,#0x80
      0038EB 50 40            [24] 2050 	jnc	00101$
                                   2051 ;	8051_i2c_eeprom.c:332: SCL = 1;
                                   2052 ;	assignBit
      0038ED D2 93            [12] 2053 	setb	_P1_3
                                   2054 ;	8051_i2c_eeprom.c:333: i2c_delay();
      0038EF C0 07            [24] 2055 	push	ar7
      0038F1 C0 06            [24] 2056 	push	ar6
      0038F3 12 39 73         [24] 2057 	lcall	_i2c_delay
      0038F6 D0 06            [24] 2058 	pop	ar6
      0038F8 D0 07            [24] 2059 	pop	ar7
                                   2060 ;	8051_i2c_eeprom.c:334: buff |= (SDA << (7 - i));
      0038FA A2 94            [12] 2061 	mov	c,_P1_4
      0038FC E4               [12] 2062 	clr	a
      0038FD 33               [12] 2063 	rlc	a
      0038FE FD               [12] 2064 	mov	r5,a
      0038FF 8E 04            [24] 2065 	mov	ar4,r6
      003901 74 07            [12] 2066 	mov	a,#0x07
      003903 C3               [12] 2067 	clr	c
      003904 9C               [12] 2068 	subb	a,r4
      003905 FC               [12] 2069 	mov	r4,a
      003906 8C F0            [24] 2070 	mov	b,r4
      003908 05 F0            [12] 2071 	inc	b
      00390A ED               [12] 2072 	mov	a,r5
      00390B 80 02            [24] 2073 	sjmp	00119$
      00390D                       2074 00117$:
      00390D 25 E0            [12] 2075 	add	a,acc
      00390F                       2076 00119$:
      00390F D5 F0 FB         [24] 2077 	djnz	b,00117$
      003912 FC               [12] 2078 	mov	r4,a
      003913 90 04 17         [24] 2079 	mov	dptr,#_i2c_read_buff_65536_98
      003916 E0               [24] 2080 	movx	a,@dptr
      003917 4C               [12] 2081 	orl	a,r4
      003918 F0               [24] 2082 	movx	@dptr,a
                                   2083 ;	8051_i2c_eeprom.c:335: i2c_delay();
      003919 C0 07            [24] 2084 	push	ar7
      00391B C0 06            [24] 2085 	push	ar6
      00391D 12 39 73         [24] 2086 	lcall	_i2c_delay
      003920 D0 06            [24] 2087 	pop	ar6
      003922 D0 07            [24] 2088 	pop	ar7
                                   2089 ;	8051_i2c_eeprom.c:336: SCL=0;
                                   2090 ;	assignBit
      003924 C2 93            [12] 2091 	clr	_P1_3
                                   2092 ;	8051_i2c_eeprom.c:330: for(int i=0;i<8;i++)
      003926 0E               [12] 2093 	inc	r6
      003927 BE 00 B8         [24] 2094 	cjne	r6,#0x00,00103$
      00392A 0F               [12] 2095 	inc	r7
      00392B 80 B5            [24] 2096 	sjmp	00103$
      00392D                       2097 00101$:
                                   2098 ;	8051_i2c_eeprom.c:340: SDA = !ACK;         // ACK = 0, NACK = 1
      00392D 90 04 15         [24] 2099 	mov	dptr,#_i2c_read_ACK_65536_97
      003930 E0               [24] 2100 	movx	a,@dptr
      003931 FE               [12] 2101 	mov	r6,a
      003932 A3               [24] 2102 	inc	dptr
      003933 E0               [24] 2103 	movx	a,@dptr
      003934 4E               [12] 2104 	orl	a,r6
      003935 B4 01 00         [24] 2105 	cjne	a,#0x01,00121$
      003938                       2106 00121$:
      003938 E4               [12] 2107 	clr	a
      003939 33               [12] 2108 	rlc	a
      00393A 24 FF            [12] 2109 	add	a,#0xff
      00393C 92 94            [24] 2110 	mov	_P1_4,c
                                   2111 ;	8051_i2c_eeprom.c:341: SCL = 1;
                                   2112 ;	assignBit
      00393E D2 93            [12] 2113 	setb	_P1_3
                                   2114 ;	8051_i2c_eeprom.c:342: i2c_delay();
      003940 12 39 73         [24] 2115 	lcall	_i2c_delay
                                   2116 ;	8051_i2c_eeprom.c:343: SCL = 0;
                                   2117 ;	assignBit
      003943 C2 93            [12] 2118 	clr	_P1_3
                                   2119 ;	8051_i2c_eeprom.c:345: return buff;
      003945 90 04 17         [24] 2120 	mov	dptr,#_i2c_read_buff_65536_98
      003948 E0               [24] 2121 	movx	a,@dptr
      003949 FF               [12] 2122 	mov	r7,a
      00394A 7E 00            [12] 2123 	mov	r6,#0x00
      00394C 8F 82            [24] 2124 	mov	dpl,r7
      00394E 8E 83            [24] 2125 	mov	dph,r6
                                   2126 ;	8051_i2c_eeprom.c:346: }
      003950 22               [24] 2127 	ret
                                   2128 ;------------------------------------------------------------
                                   2129 ;Allocation info for local variables in function 'i2c_start'
                                   2130 ;------------------------------------------------------------
                                   2131 ;	8051_i2c_eeprom.c:347: void i2c_start(void)
                                   2132 ;	-----------------------------------------
                                   2133 ;	 function i2c_start
                                   2134 ;	-----------------------------------------
      003951                       2135 _i2c_start:
                                   2136 ;	8051_i2c_eeprom.c:349: i2c_delay();
      003951 12 39 73         [24] 2137 	lcall	_i2c_delay
                                   2138 ;	8051_i2c_eeprom.c:350: SDA = 1;
                                   2139 ;	assignBit
      003954 D2 94            [12] 2140 	setb	_P1_4
                                   2141 ;	8051_i2c_eeprom.c:351: i2c_delay();
      003956 12 39 73         [24] 2142 	lcall	_i2c_delay
                                   2143 ;	8051_i2c_eeprom.c:352: SCL = 1;
                                   2144 ;	assignBit
      003959 D2 93            [12] 2145 	setb	_P1_3
                                   2146 ;	8051_i2c_eeprom.c:353: i2c_delay();
      00395B 12 39 73         [24] 2147 	lcall	_i2c_delay
                                   2148 ;	8051_i2c_eeprom.c:354: SDA = 0;
                                   2149 ;	assignBit
      00395E C2 94            [12] 2150 	clr	_P1_4
                                   2151 ;	8051_i2c_eeprom.c:355: i2c_delay();
      003960 12 39 73         [24] 2152 	lcall	_i2c_delay
                                   2153 ;	8051_i2c_eeprom.c:356: SCL = 0;
                                   2154 ;	assignBit
      003963 C2 93            [12] 2155 	clr	_P1_3
                                   2156 ;	8051_i2c_eeprom.c:357: }
      003965 22               [24] 2157 	ret
                                   2158 ;------------------------------------------------------------
                                   2159 ;Allocation info for local variables in function 'i2c_stop'
                                   2160 ;------------------------------------------------------------
                                   2161 ;	8051_i2c_eeprom.c:359: void i2c_stop(void)
                                   2162 ;	-----------------------------------------
                                   2163 ;	 function i2c_stop
                                   2164 ;	-----------------------------------------
      003966                       2165 _i2c_stop:
                                   2166 ;	8051_i2c_eeprom.c:361: SDA = 0;
                                   2167 ;	assignBit
      003966 C2 94            [12] 2168 	clr	_P1_4
                                   2169 ;	8051_i2c_eeprom.c:362: i2c_delay();
      003968 12 39 73         [24] 2170 	lcall	_i2c_delay
                                   2171 ;	8051_i2c_eeprom.c:363: SCL = 1;
                                   2172 ;	assignBit
      00396B D2 93            [12] 2173 	setb	_P1_3
                                   2174 ;	8051_i2c_eeprom.c:364: i2c_delay();
      00396D 12 39 73         [24] 2175 	lcall	_i2c_delay
                                   2176 ;	8051_i2c_eeprom.c:365: SDA = 1; 
                                   2177 ;	assignBit
      003970 D2 94            [12] 2178 	setb	_P1_4
                                   2179 ;	8051_i2c_eeprom.c:366: }
      003972 22               [24] 2180 	ret
                                   2181 ;------------------------------------------------------------
                                   2182 ;Allocation info for local variables in function 'i2c_delay'
                                   2183 ;------------------------------------------------------------
                                   2184 ;i                         Allocated with name '_i2c_delay_i_131072_106'
                                   2185 ;------------------------------------------------------------
                                   2186 ;	8051_i2c_eeprom.c:368: void i2c_delay() 
                                   2187 ;	-----------------------------------------
                                   2188 ;	 function i2c_delay
                                   2189 ;	-----------------------------------------
      003973                       2190 _i2c_delay:
                                   2191 ;	8051_i2c_eeprom.c:376: for(int i = 0; i<500; i++);
      003973 7E 00            [12] 2192 	mov	r6,#0x00
      003975 7F 00            [12] 2193 	mov	r7,#0x00
      003977                       2194 00103$:
      003977 C3               [12] 2195 	clr	c
      003978 EE               [12] 2196 	mov	a,r6
      003979 94 F4            [12] 2197 	subb	a,#0xf4
      00397B EF               [12] 2198 	mov	a,r7
      00397C 64 80            [12] 2199 	xrl	a,#0x80
      00397E 94 81            [12] 2200 	subb	a,#0x81
      003980 50 07            [24] 2201 	jnc	00105$
      003982 0E               [12] 2202 	inc	r6
      003983 BE 00 F1         [24] 2203 	cjne	r6,#0x00,00103$
      003986 0F               [12] 2204 	inc	r7
      003987 80 EE            [24] 2205 	sjmp	00103$
      003989                       2206 00105$:
                                   2207 ;	8051_i2c_eeprom.c:377: }
      003989 22               [24] 2208 	ret
                                   2209 ;------------------------------------------------------------
                                   2210 ;Allocation info for local variables in function 'test_function'
                                   2211 ;------------------------------------------------------------
                                   2212 ;test_data                 Allocated with name '_test_function_test_data_65537_108'
                                   2213 ;address                   Allocated with name '_test_function_address_65537_108'
                                   2214 ;i                         Allocated with name '_test_function_i_131073_109'
                                   2215 ;read_data                 Allocated with name '_test_function_read_data_65538_111'
                                   2216 ;------------------------------------------------------------
                                   2217 ;	8051_i2c_eeprom.c:379: void test_function()
                                   2218 ;	-----------------------------------------
                                   2219 ;	 function test_function
                                   2220 ;	-----------------------------------------
      00398A                       2221 _test_function:
                                   2222 ;	8051_i2c_eeprom.c:381: i2c_start();
      00398A 12 39 51         [24] 2223 	lcall	_i2c_start
                                   2224 ;	8051_i2c_eeprom.c:382: i2c_delay();
      00398D 12 39 73         [24] 2225 	lcall	_i2c_delay
                                   2226 ;	8051_i2c_eeprom.c:388: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      003990 74 02            [12] 2227 	mov	a,#0x02
      003992 C0 E0            [24] 2228 	push	acc
      003994 E4               [12] 2229 	clr	a
      003995 C0 E0            [24] 2230 	push	acc
      003997 74 26            [12] 2231 	mov	a,#0x26
      003999 C0 E0            [24] 2232 	push	acc
      00399B E4               [12] 2233 	clr	a
      00399C C0 E0            [24] 2234 	push	acc
      00399E 74 18            [12] 2235 	mov	a,#___str_38
      0039A0 C0 E0            [24] 2236 	push	acc
      0039A2 74 4F            [12] 2237 	mov	a,#(___str_38 >> 8)
      0039A4 C0 E0            [24] 2238 	push	acc
      0039A6 74 80            [12] 2239 	mov	a,#0x80
      0039A8 C0 E0            [24] 2240 	push	acc
      0039AA 12 3A 90         [24] 2241 	lcall	_printf
      0039AD E5 81            [12] 2242 	mov	a,sp
      0039AF 24 F9            [12] 2243 	add	a,#0xf9
      0039B1 F5 81            [12] 2244 	mov	sp,a
                                   2245 ;	8051_i2c_eeprom.c:389: eeprom_write(address, test_data);
      0039B3 90 04 0F         [24] 2246 	mov	dptr,#_eeprom_write_PARM_2
      0039B6 74 26            [12] 2247 	mov	a,#0x26
      0039B8 F0               [24] 2248 	movx	@dptr,a
      0039B9 90 00 02         [24] 2249 	mov	dptr,#0x0002
      0039BC 12 35 EA         [24] 2250 	lcall	_eeprom_write
                                   2251 ;	8051_i2c_eeprom.c:390: i2c_stop();
      0039BF 12 39 66         [24] 2252 	lcall	_i2c_stop
                                   2253 ;	8051_i2c_eeprom.c:392: for(int i = 0; i<100; i++)
      0039C2 7E 00            [12] 2254 	mov	r6,#0x00
      0039C4 7F 00            [12] 2255 	mov	r7,#0x00
      0039C6                       2256 00106$:
      0039C6 C3               [12] 2257 	clr	c
      0039C7 EE               [12] 2258 	mov	a,r6
      0039C8 94 64            [12] 2259 	subb	a,#0x64
      0039CA EF               [12] 2260 	mov	a,r7
      0039CB 64 80            [12] 2261 	xrl	a,#0x80
      0039CD 94 80            [12] 2262 	subb	a,#0x80
      0039CF 50 12            [24] 2263 	jnc	00101$
                                   2264 ;	8051_i2c_eeprom.c:394: i2c_delay();
      0039D1 C0 07            [24] 2265 	push	ar7
      0039D3 C0 06            [24] 2266 	push	ar6
      0039D5 12 39 73         [24] 2267 	lcall	_i2c_delay
      0039D8 D0 06            [24] 2268 	pop	ar6
      0039DA D0 07            [24] 2269 	pop	ar7
                                   2270 ;	8051_i2c_eeprom.c:392: for(int i = 0; i<100; i++)
      0039DC 0E               [12] 2271 	inc	r6
      0039DD BE 00 E6         [24] 2272 	cjne	r6,#0x00,00106$
      0039E0 0F               [12] 2273 	inc	r7
      0039E1 80 E3            [24] 2274 	sjmp	00106$
      0039E3                       2275 00101$:
                                   2276 ;	8051_i2c_eeprom.c:398: unsigned char read_data = eeprom_read(address);
      0039E3 90 00 02         [24] 2277 	mov	dptr,#0x0002
      0039E6 12 37 23         [24] 2278 	lcall	_eeprom_read
      0039E9 AE 82            [24] 2279 	mov	r6,dpl
                                   2280 ;	8051_i2c_eeprom.c:399: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      0039EB 8E 05            [24] 2281 	mov	ar5,r6
      0039ED 7F 00            [12] 2282 	mov	r7,#0x00
      0039EF C0 06            [24] 2283 	push	ar6
      0039F1 C0 05            [24] 2284 	push	ar5
      0039F3 C0 07            [24] 2285 	push	ar7
      0039F5 74 02            [12] 2286 	mov	a,#0x02
      0039F7 C0 E0            [24] 2287 	push	acc
      0039F9 E4               [12] 2288 	clr	a
      0039FA C0 E0            [24] 2289 	push	acc
      0039FC 74 40            [12] 2290 	mov	a,#___str_39
      0039FE C0 E0            [24] 2291 	push	acc
      003A00 74 4F            [12] 2292 	mov	a,#(___str_39 >> 8)
      003A02 C0 E0            [24] 2293 	push	acc
      003A04 74 80            [12] 2294 	mov	a,#0x80
      003A06 C0 E0            [24] 2295 	push	acc
      003A08 12 3A 90         [24] 2296 	lcall	_printf
      003A0B E5 81            [12] 2297 	mov	a,sp
      003A0D 24 F9            [12] 2298 	add	a,#0xf9
      003A0F F5 81            [12] 2299 	mov	sp,a
      003A11 D0 06            [24] 2300 	pop	ar6
                                   2301 ;	8051_i2c_eeprom.c:402: if(read_data == test_data) {
      003A13 BE 26 16         [24] 2302 	cjne	r6,#0x26,00103$
                                   2303 ;	8051_i2c_eeprom.c:403: printf("MATCH - Write/Read successful!\n\r");
      003A16 74 68            [12] 2304 	mov	a,#___str_40
      003A18 C0 E0            [24] 2305 	push	acc
      003A1A 74 4F            [12] 2306 	mov	a,#(___str_40 >> 8)
      003A1C C0 E0            [24] 2307 	push	acc
      003A1E 74 80            [12] 2308 	mov	a,#0x80
      003A20 C0 E0            [24] 2309 	push	acc
      003A22 12 3A 90         [24] 2310 	lcall	_printf
      003A25 15 81            [12] 2311 	dec	sp
      003A27 15 81            [12] 2312 	dec	sp
      003A29 15 81            [12] 2313 	dec	sp
      003A2B 22               [24] 2314 	ret
      003A2C                       2315 00103$:
                                   2316 ;	8051_i2c_eeprom.c:405: printf("ERROR - Data mismatch!\n\r");
      003A2C 74 89            [12] 2317 	mov	a,#___str_41
      003A2E C0 E0            [24] 2318 	push	acc
      003A30 74 4F            [12] 2319 	mov	a,#(___str_41 >> 8)
      003A32 C0 E0            [24] 2320 	push	acc
      003A34 74 80            [12] 2321 	mov	a,#0x80
      003A36 C0 E0            [24] 2322 	push	acc
      003A38 12 3A 90         [24] 2323 	lcall	_printf
      003A3B 15 81            [12] 2324 	dec	sp
      003A3D 15 81            [12] 2325 	dec	sp
      003A3F 15 81            [12] 2326 	dec	sp
                                   2327 ;	8051_i2c_eeprom.c:409: }
      003A41 22               [24] 2328 	ret
                                   2329 	.area CSEG    (CODE)
                                   2330 	.area CONST   (CODE)
                                   2331 	.area CONST   (CODE)
      0044F2                       2332 ___str_0:
      0044F2 0A                    2333 	.db 0x0a
      0044F3 E2                    2334 	.db 0xe2
      0044F4 95                    2335 	.db 0x95
      0044F5 94                    2336 	.db 0x94
      0044F6 E2                    2337 	.db 0xe2
      0044F7 95                    2338 	.db 0x95
      0044F8 90                    2339 	.db 0x90
      0044F9 E2                    2340 	.db 0xe2
      0044FA 95                    2341 	.db 0x95
      0044FB 90                    2342 	.db 0x90
      0044FC E2                    2343 	.db 0xe2
      0044FD 95                    2344 	.db 0x95
      0044FE 90                    2345 	.db 0x90
      0044FF E2                    2346 	.db 0xe2
      004500 95                    2347 	.db 0x95
      004501 90                    2348 	.db 0x90
      004502 E2                    2349 	.db 0xe2
      004503 95                    2350 	.db 0x95
      004504 90                    2351 	.db 0x90
      004505 E2                    2352 	.db 0xe2
      004506 95                    2353 	.db 0x95
      004507 90                    2354 	.db 0x90
      004508 E2                    2355 	.db 0xe2
      004509 95                    2356 	.db 0x95
      00450A 90                    2357 	.db 0x90
      00450B E2                    2358 	.db 0xe2
      00450C 95                    2359 	.db 0x95
      00450D 90                    2360 	.db 0x90
      00450E E2                    2361 	.db 0xe2
      00450F 95                    2362 	.db 0x95
      004510 90                    2363 	.db 0x90
      004511 E2                    2364 	.db 0xe2
      004512 95                    2365 	.db 0x95
      004513 90                    2366 	.db 0x90
      004514 E2                    2367 	.db 0xe2
      004515 95                    2368 	.db 0x95
      004516 90                    2369 	.db 0x90
      004517 E2                    2370 	.db 0xe2
      004518 95                    2371 	.db 0x95
      004519 90                    2372 	.db 0x90
      00451A E2                    2373 	.db 0xe2
      00451B 95                    2374 	.db 0x95
      00451C 90                    2375 	.db 0x90
      00451D E2                    2376 	.db 0xe2
      00451E 95                    2377 	.db 0x95
      00451F 90                    2378 	.db 0x90
      004520 E2                    2379 	.db 0xe2
      004521 95                    2380 	.db 0x95
      004522 90                    2381 	.db 0x90
      004523 E2                    2382 	.db 0xe2
      004524 95                    2383 	.db 0x95
      004525 90                    2384 	.db 0x90
      004526 E2                    2385 	.db 0xe2
      004527 95                    2386 	.db 0x95
      004528 90                    2387 	.db 0x90
      004529 E2                    2388 	.db 0xe2
      00452A 95                    2389 	.db 0x95
      00452B 90                    2390 	.db 0x90
      00452C E2                    2391 	.db 0xe2
      00452D 95                    2392 	.db 0x95
      00452E 90                    2393 	.db 0x90
      00452F E2                    2394 	.db 0xe2
      004530 95                    2395 	.db 0x95
      004531 90                    2396 	.db 0x90
      004532 E2                    2397 	.db 0xe2
      004533 95                    2398 	.db 0x95
      004534 90                    2399 	.db 0x90
      004535 E2                    2400 	.db 0xe2
      004536 95                    2401 	.db 0x95
      004537 90                    2402 	.db 0x90
      004538 E2                    2403 	.db 0xe2
      004539 95                    2404 	.db 0x95
      00453A 90                    2405 	.db 0x90
      00453B E2                    2406 	.db 0xe2
      00453C 95                    2407 	.db 0x95
      00453D 90                    2408 	.db 0x90
      00453E E2                    2409 	.db 0xe2
      00453F 95                    2410 	.db 0x95
      004540 90                    2411 	.db 0x90
      004541 E2                    2412 	.db 0xe2
      004542 95                    2413 	.db 0x95
      004543 90                    2414 	.db 0x90
      004544 E2                    2415 	.db 0xe2
      004545 95                    2416 	.db 0x95
      004546 90                    2417 	.db 0x90
      004547 E2                    2418 	.db 0xe2
      004548 95                    2419 	.db 0x95
      004549 90                    2420 	.db 0x90
      00454A E2                    2421 	.db 0xe2
      00454B 95                    2422 	.db 0x95
      00454C 90                    2423 	.db 0x90
      00454D E2                    2424 	.db 0xe2
      00454E 95                    2425 	.db 0x95
      00454F 90                    2426 	.db 0x90
      004550 E2                    2427 	.db 0xe2
      004551 95                    2428 	.db 0x95
      004552 90                    2429 	.db 0x90
      004553 E2                    2430 	.db 0xe2
      004554 95                    2431 	.db 0x95
      004555 90                    2432 	.db 0x90
      004556 E2                    2433 	.db 0xe2
      004557 95                    2434 	.db 0x95
      004558 90                    2435 	.db 0x90
      004559 E2                    2436 	.db 0xe2
      00455A 95                    2437 	.db 0x95
      00455B 90                    2438 	.db 0x90
      00455C E2                    2439 	.db 0xe2
      00455D 95                    2440 	.db 0x95
      00455E 90                    2441 	.db 0x90
      00455F E2                    2442 	.db 0xe2
      004560 95                    2443 	.db 0x95
      004561 90                    2444 	.db 0x90
      004562 E2                    2445 	.db 0xe2
      004563 95                    2446 	.db 0x95
      004564 90                    2447 	.db 0x90
      004565 E2                    2448 	.db 0xe2
      004566 95                    2449 	.db 0x95
      004567 90                    2450 	.db 0x90
      004568 E2                    2451 	.db 0xe2
      004569 95                    2452 	.db 0x95
      00456A 90                    2453 	.db 0x90
      00456B E2                    2454 	.db 0xe2
      00456C 95                    2455 	.db 0x95
      00456D 90                    2456 	.db 0x90
      00456E E2                    2457 	.db 0xe2
      00456F 95                    2458 	.db 0x95
      004570 90                    2459 	.db 0x90
      004571 E2                    2460 	.db 0xe2
      004572 95                    2461 	.db 0x95
      004573 90                    2462 	.db 0x90
      004574 E2                    2463 	.db 0xe2
      004575 95                    2464 	.db 0x95
      004576 90                    2465 	.db 0x90
      004577 E2                    2466 	.db 0xe2
      004578 95                    2467 	.db 0x95
      004579 90                    2468 	.db 0x90
      00457A E2                    2469 	.db 0xe2
      00457B 95                    2470 	.db 0x95
      00457C 90                    2471 	.db 0x90
      00457D E2                    2472 	.db 0xe2
      00457E 95                    2473 	.db 0x95
      00457F 90                    2474 	.db 0x90
      004580 E2                    2475 	.db 0xe2
      004581 95                    2476 	.db 0x95
      004582 90                    2477 	.db 0x90
      004583 E2                    2478 	.db 0xe2
      004584 95                    2479 	.db 0x95
      004585 90                    2480 	.db 0x90
      004586 E2                    2481 	.db 0xe2
      004587 95                    2482 	.db 0x95
      004588 90                    2483 	.db 0x90
      004589 E2                    2484 	.db 0xe2
      00458A 95                    2485 	.db 0x95
      00458B 90                    2486 	.db 0x90
      00458C E2                    2487 	.db 0xe2
      00458D 95                    2488 	.db 0x95
      00458E 90                    2489 	.db 0x90
      00458F E2                    2490 	.db 0xe2
      004590 95                    2491 	.db 0x95
      004591 90                    2492 	.db 0x90
      004592 E2                    2493 	.db 0xe2
      004593 95                    2494 	.db 0x95
      004594 90                    2495 	.db 0x90
      004595 E2                    2496 	.db 0xe2
      004596 95                    2497 	.db 0x95
      004597 90                    2498 	.db 0x90
      004598 E2                    2499 	.db 0xe2
      004599 95                    2500 	.db 0x95
      00459A 90                    2501 	.db 0x90
      00459B E2                    2502 	.db 0xe2
      00459C 95                    2503 	.db 0x95
      00459D 90                    2504 	.db 0x90
      00459E E2                    2505 	.db 0xe2
      00459F 95                    2506 	.db 0x95
      0045A0 97                    2507 	.db 0x97
      0045A1 0A                    2508 	.db 0x0a
      0045A2 0D                    2509 	.db 0x0d
      0045A3 00                    2510 	.db 0x00
                                   2511 	.area CSEG    (CODE)
                                   2512 	.area CONST   (CODE)
      0045A4                       2513 ___str_1:
      0045A4 E2                    2514 	.db 0xe2
      0045A5 95                    2515 	.db 0x95
      0045A6 91                    2516 	.db 0x91
      0045A7 20 20 20 20 20 20 20  2517 	.ascii "           I2C Memory Management System v1.0             "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
             20
      0045E0 E2                    2518 	.db 0xe2
      0045E1 95                    2519 	.db 0x95
      0045E2 91                    2520 	.db 0x91
      0045E3 0A                    2521 	.db 0x0a
      0045E4 0D                    2522 	.db 0x0d
      0045E5 00                    2523 	.db 0x00
                                   2524 	.area CSEG    (CODE)
                                   2525 	.area CONST   (CODE)
      0045E6                       2526 ___str_2:
      0045E6 E2                    2527 	.db 0xe2
      0045E7 95                    2528 	.db 0x95
      0045E8 9A                    2529 	.db 0x9a
      0045E9 E2                    2530 	.db 0xe2
      0045EA 95                    2531 	.db 0x95
      0045EB 90                    2532 	.db 0x90
      0045EC E2                    2533 	.db 0xe2
      0045ED 95                    2534 	.db 0x95
      0045EE 90                    2535 	.db 0x90
      0045EF E2                    2536 	.db 0xe2
      0045F0 95                    2537 	.db 0x95
      0045F1 90                    2538 	.db 0x90
      0045F2 E2                    2539 	.db 0xe2
      0045F3 95                    2540 	.db 0x95
      0045F4 90                    2541 	.db 0x90
      0045F5 E2                    2542 	.db 0xe2
      0045F6 95                    2543 	.db 0x95
      0045F7 90                    2544 	.db 0x90
      0045F8 E2                    2545 	.db 0xe2
      0045F9 95                    2546 	.db 0x95
      0045FA 90                    2547 	.db 0x90
      0045FB E2                    2548 	.db 0xe2
      0045FC 95                    2549 	.db 0x95
      0045FD 90                    2550 	.db 0x90
      0045FE E2                    2551 	.db 0xe2
      0045FF 95                    2552 	.db 0x95
      004600 90                    2553 	.db 0x90
      004601 E2                    2554 	.db 0xe2
      004602 95                    2555 	.db 0x95
      004603 90                    2556 	.db 0x90
      004604 E2                    2557 	.db 0xe2
      004605 95                    2558 	.db 0x95
      004606 90                    2559 	.db 0x90
      004607 E2                    2560 	.db 0xe2
      004608 95                    2561 	.db 0x95
      004609 90                    2562 	.db 0x90
      00460A E2                    2563 	.db 0xe2
      00460B 95                    2564 	.db 0x95
      00460C 90                    2565 	.db 0x90
      00460D E2                    2566 	.db 0xe2
      00460E 95                    2567 	.db 0x95
      00460F 90                    2568 	.db 0x90
      004610 E2                    2569 	.db 0xe2
      004611 95                    2570 	.db 0x95
      004612 90                    2571 	.db 0x90
      004613 E2                    2572 	.db 0xe2
      004614 95                    2573 	.db 0x95
      004615 90                    2574 	.db 0x90
      004616 E2                    2575 	.db 0xe2
      004617 95                    2576 	.db 0x95
      004618 90                    2577 	.db 0x90
      004619 E2                    2578 	.db 0xe2
      00461A 95                    2579 	.db 0x95
      00461B 90                    2580 	.db 0x90
      00461C E2                    2581 	.db 0xe2
      00461D 95                    2582 	.db 0x95
      00461E 90                    2583 	.db 0x90
      00461F E2                    2584 	.db 0xe2
      004620 95                    2585 	.db 0x95
      004621 90                    2586 	.db 0x90
      004622 E2                    2587 	.db 0xe2
      004623 95                    2588 	.db 0x95
      004624 90                    2589 	.db 0x90
      004625 E2                    2590 	.db 0xe2
      004626 95                    2591 	.db 0x95
      004627 90                    2592 	.db 0x90
      004628 E2                    2593 	.db 0xe2
      004629 95                    2594 	.db 0x95
      00462A 90                    2595 	.db 0x90
      00462B E2                    2596 	.db 0xe2
      00462C 95                    2597 	.db 0x95
      00462D 90                    2598 	.db 0x90
      00462E E2                    2599 	.db 0xe2
      00462F 95                    2600 	.db 0x95
      004630 90                    2601 	.db 0x90
      004631 E2                    2602 	.db 0xe2
      004632 95                    2603 	.db 0x95
      004633 90                    2604 	.db 0x90
      004634 E2                    2605 	.db 0xe2
      004635 95                    2606 	.db 0x95
      004636 90                    2607 	.db 0x90
      004637 E2                    2608 	.db 0xe2
      004638 95                    2609 	.db 0x95
      004639 90                    2610 	.db 0x90
      00463A E2                    2611 	.db 0xe2
      00463B 95                    2612 	.db 0x95
      00463C 90                    2613 	.db 0x90
      00463D E2                    2614 	.db 0xe2
      00463E 95                    2615 	.db 0x95
      00463F 90                    2616 	.db 0x90
      004640 E2                    2617 	.db 0xe2
      004641 95                    2618 	.db 0x95
      004642 90                    2619 	.db 0x90
      004643 E2                    2620 	.db 0xe2
      004644 95                    2621 	.db 0x95
      004645 90                    2622 	.db 0x90
      004646 E2                    2623 	.db 0xe2
      004647 95                    2624 	.db 0x95
      004648 90                    2625 	.db 0x90
      004649 E2                    2626 	.db 0xe2
      00464A 95                    2627 	.db 0x95
      00464B 90                    2628 	.db 0x90
      00464C E2                    2629 	.db 0xe2
      00464D 95                    2630 	.db 0x95
      00464E 90                    2631 	.db 0x90
      00464F E2                    2632 	.db 0xe2
      004650 95                    2633 	.db 0x95
      004651 90                    2634 	.db 0x90
      004652 E2                    2635 	.db 0xe2
      004653 95                    2636 	.db 0x95
      004654 90                    2637 	.db 0x90
      004655 E2                    2638 	.db 0xe2
      004656 95                    2639 	.db 0x95
      004657 90                    2640 	.db 0x90
      004658 E2                    2641 	.db 0xe2
      004659 95                    2642 	.db 0x95
      00465A 90                    2643 	.db 0x90
      00465B E2                    2644 	.db 0xe2
      00465C 95                    2645 	.db 0x95
      00465D 90                    2646 	.db 0x90
      00465E E2                    2647 	.db 0xe2
      00465F 95                    2648 	.db 0x95
      004660 90                    2649 	.db 0x90
      004661 E2                    2650 	.db 0xe2
      004662 95                    2651 	.db 0x95
      004663 90                    2652 	.db 0x90
      004664 E2                    2653 	.db 0xe2
      004665 95                    2654 	.db 0x95
      004666 90                    2655 	.db 0x90
      004667 E2                    2656 	.db 0xe2
      004668 95                    2657 	.db 0x95
      004669 90                    2658 	.db 0x90
      00466A E2                    2659 	.db 0xe2
      00466B 95                    2660 	.db 0x95
      00466C 90                    2661 	.db 0x90
      00466D E2                    2662 	.db 0xe2
      00466E 95                    2663 	.db 0x95
      00466F 90                    2664 	.db 0x90
      004670 E2                    2665 	.db 0xe2
      004671 95                    2666 	.db 0x95
      004672 90                    2667 	.db 0x90
      004673 E2                    2668 	.db 0xe2
      004674 95                    2669 	.db 0x95
      004675 90                    2670 	.db 0x90
      004676 E2                    2671 	.db 0xe2
      004677 95                    2672 	.db 0x95
      004678 90                    2673 	.db 0x90
      004679 E2                    2674 	.db 0xe2
      00467A 95                    2675 	.db 0x95
      00467B 90                    2676 	.db 0x90
      00467C E2                    2677 	.db 0xe2
      00467D 95                    2678 	.db 0x95
      00467E 90                    2679 	.db 0x90
      00467F E2                    2680 	.db 0xe2
      004680 95                    2681 	.db 0x95
      004681 90                    2682 	.db 0x90
      004682 E2                    2683 	.db 0xe2
      004683 95                    2684 	.db 0x95
      004684 90                    2685 	.db 0x90
      004685 E2                    2686 	.db 0xe2
      004686 95                    2687 	.db 0x95
      004687 90                    2688 	.db 0x90
      004688 E2                    2689 	.db 0xe2
      004689 95                    2690 	.db 0x95
      00468A 90                    2691 	.db 0x90
      00468B E2                    2692 	.db 0xe2
      00468C 95                    2693 	.db 0x95
      00468D 90                    2694 	.db 0x90
      00468E E2                    2695 	.db 0xe2
      00468F 95                    2696 	.db 0x95
      004690 90                    2697 	.db 0x90
      004691 E2                    2698 	.db 0xe2
      004692 95                    2699 	.db 0x95
      004693 9D                    2700 	.db 0x9d
      004694 0A                    2701 	.db 0x0a
      004695 0D                    2702 	.db 0x0d
      004696 00                    2703 	.db 0x00
                                   2704 	.area CSEG    (CODE)
                                   2705 	.area CONST   (CODE)
      004697                       2706 ___str_3:
      004697 0A                    2707 	.db 0x0a
      004698 0D                    2708 	.db 0x0d
      004699 E2                    2709 	.db 0xe2
      00469A 94                    2710 	.db 0x94
      00469B 8C                    2711 	.db 0x8c
      00469C E2                    2712 	.db 0xe2
      00469D 94                    2713 	.db 0x94
      00469E 80                    2714 	.db 0x80
      00469F E2                    2715 	.db 0xe2
      0046A0 94                    2716 	.db 0x94
      0046A1 80                    2717 	.db 0x80
      0046A2 E2                    2718 	.db 0xe2
      0046A3 94                    2719 	.db 0x94
      0046A4 80                    2720 	.db 0x80
      0046A5 E2                    2721 	.db 0xe2
      0046A6 94                    2722 	.db 0x94
      0046A7 80                    2723 	.db 0x80
      0046A8 E2                    2724 	.db 0xe2
      0046A9 94                    2725 	.db 0x94
      0046AA 80                    2726 	.db 0x80
      0046AB E2                    2727 	.db 0xe2
      0046AC 94                    2728 	.db 0x94
      0046AD 80                    2729 	.db 0x80
      0046AE E2                    2730 	.db 0xe2
      0046AF 94                    2731 	.db 0x94
      0046B0 80                    2732 	.db 0x80
      0046B1 E2                    2733 	.db 0xe2
      0046B2 94                    2734 	.db 0x94
      0046B3 80                    2735 	.db 0x80
      0046B4 E2                    2736 	.db 0xe2
      0046B5 94                    2737 	.db 0x94
      0046B6 80                    2738 	.db 0x80
      0046B7 E2                    2739 	.db 0xe2
      0046B8 94                    2740 	.db 0x94
      0046B9 80                    2741 	.db 0x80
      0046BA E2                    2742 	.db 0xe2
      0046BB 94                    2743 	.db 0x94
      0046BC 80                    2744 	.db 0x80
      0046BD E2                    2745 	.db 0xe2
      0046BE 94                    2746 	.db 0x94
      0046BF 80                    2747 	.db 0x80
      0046C0 E2                    2748 	.db 0xe2
      0046C1 94                    2749 	.db 0x94
      0046C2 AC                    2750 	.db 0xac
      0046C3 E2                    2751 	.db 0xe2
      0046C4 94                    2752 	.db 0x94
      0046C5 80                    2753 	.db 0x80
      0046C6 E2                    2754 	.db 0xe2
      0046C7 94                    2755 	.db 0x94
      0046C8 80                    2756 	.db 0x80
      0046C9 E2                    2757 	.db 0xe2
      0046CA 94                    2758 	.db 0x94
      0046CB 80                    2759 	.db 0x80
      0046CC E2                    2760 	.db 0xe2
      0046CD 94                    2761 	.db 0x94
      0046CE 80                    2762 	.db 0x80
      0046CF E2                    2763 	.db 0xe2
      0046D0 94                    2764 	.db 0x94
      0046D1 80                    2765 	.db 0x80
      0046D2 E2                    2766 	.db 0xe2
      0046D3 94                    2767 	.db 0x94
      0046D4 80                    2768 	.db 0x80
      0046D5 E2                    2769 	.db 0xe2
      0046D6 94                    2770 	.db 0x94
      0046D7 80                    2771 	.db 0x80
      0046D8 E2                    2772 	.db 0xe2
      0046D9 94                    2773 	.db 0x94
      0046DA 80                    2774 	.db 0x80
      0046DB E2                    2775 	.db 0xe2
      0046DC 94                    2776 	.db 0x94
      0046DD 80                    2777 	.db 0x80
      0046DE E2                    2778 	.db 0xe2
      0046DF 94                    2779 	.db 0x94
      0046E0 80                    2780 	.db 0x80
      0046E1 E2                    2781 	.db 0xe2
      0046E2 94                    2782 	.db 0x94
      0046E3 80                    2783 	.db 0x80
      0046E4 E2                    2784 	.db 0xe2
      0046E5 94                    2785 	.db 0x94
      0046E6 80                    2786 	.db 0x80
      0046E7 E2                    2787 	.db 0xe2
      0046E8 94                    2788 	.db 0x94
      0046E9 80                    2789 	.db 0x80
      0046EA E2                    2790 	.db 0xe2
      0046EB 94                    2791 	.db 0x94
      0046EC 80                    2792 	.db 0x80
      0046ED E2                    2793 	.db 0xe2
      0046EE 94                    2794 	.db 0x94
      0046EF 80                    2795 	.db 0x80
      0046F0 E2                    2796 	.db 0xe2
      0046F1 94                    2797 	.db 0x94
      0046F2 80                    2798 	.db 0x80
      0046F3 E2                    2799 	.db 0xe2
      0046F4 94                    2800 	.db 0x94
      0046F5 80                    2801 	.db 0x80
      0046F6 E2                    2802 	.db 0xe2
      0046F7 94                    2803 	.db 0x94
      0046F8 80                    2804 	.db 0x80
      0046F9 E2                    2805 	.db 0xe2
      0046FA 94                    2806 	.db 0x94
      0046FB 80                    2807 	.db 0x80
      0046FC E2                    2808 	.db 0xe2
      0046FD 94                    2809 	.db 0x94
      0046FE 80                    2810 	.db 0x80
      0046FF E2                    2811 	.db 0xe2
      004700 94                    2812 	.db 0x94
      004701 80                    2813 	.db 0x80
      004702 E2                    2814 	.db 0xe2
      004703 94                    2815 	.db 0x94
      004704 80                    2816 	.db 0x80
      004705 E2                    2817 	.db 0xe2
      004706 94                    2818 	.db 0x94
      004707 80                    2819 	.db 0x80
      004708 E2                    2820 	.db 0xe2
      004709 94                    2821 	.db 0x94
      00470A 80                    2822 	.db 0x80
      00470B E2                    2823 	.db 0xe2
      00470C 94                    2824 	.db 0x94
      00470D 80                    2825 	.db 0x80
      00470E E2                    2826 	.db 0xe2
      00470F 94                    2827 	.db 0x94
      004710 80                    2828 	.db 0x80
      004711 E2                    2829 	.db 0xe2
      004712 94                    2830 	.db 0x94
      004713 80                    2831 	.db 0x80
      004714 E2                    2832 	.db 0xe2
      004715 94                    2833 	.db 0x94
      004716 80                    2834 	.db 0x80
      004717 E2                    2835 	.db 0xe2
      004718 94                    2836 	.db 0x94
      004719 80                    2837 	.db 0x80
      00471A E2                    2838 	.db 0xe2
      00471B 94                    2839 	.db 0x94
      00471C 80                    2840 	.db 0x80
      00471D E2                    2841 	.db 0xe2
      00471E 94                    2842 	.db 0x94
      00471F 80                    2843 	.db 0x80
      004720 E2                    2844 	.db 0xe2
      004721 94                    2845 	.db 0x94
      004722 80                    2846 	.db 0x80
      004723 E2                    2847 	.db 0xe2
      004724 94                    2848 	.db 0x94
      004725 80                    2849 	.db 0x80
      004726 E2                    2850 	.db 0xe2
      004727 94                    2851 	.db 0x94
      004728 80                    2852 	.db 0x80
      004729 E2                    2853 	.db 0xe2
      00472A 94                    2854 	.db 0x94
      00472B 80                    2855 	.db 0x80
      00472C E2                    2856 	.db 0xe2
      00472D 94                    2857 	.db 0x94
      00472E 80                    2858 	.db 0x80
      00472F E2                    2859 	.db 0xe2
      004730 94                    2860 	.db 0x94
      004731 80                    2861 	.db 0x80
      004732 E2                    2862 	.db 0xe2
      004733 94                    2863 	.db 0x94
      004734 80                    2864 	.db 0x80
      004735 E2                    2865 	.db 0xe2
      004736 94                    2866 	.db 0x94
      004737 80                    2867 	.db 0x80
      004738 E2                    2868 	.db 0xe2
      004739 94                    2869 	.db 0x94
      00473A 80                    2870 	.db 0x80
      00473B E2                    2871 	.db 0xe2
      00473C 94                    2872 	.db 0x94
      00473D 80                    2873 	.db 0x80
      00473E E2                    2874 	.db 0xe2
      00473F 94                    2875 	.db 0x94
      004740 80                    2876 	.db 0x80
      004741 E2                    2877 	.db 0xe2
      004742 94                    2878 	.db 0x94
      004743 80                    2879 	.db 0x80
      004744 E2                    2880 	.db 0xe2
      004745 94                    2881 	.db 0x94
      004746 80                    2882 	.db 0x80
      004747 E2                    2883 	.db 0xe2
      004748 94                    2884 	.db 0x94
      004749 90                    2885 	.db 0x90
      00474A 0A                    2886 	.db 0x0a
      00474B 0D                    2887 	.db 0x0d
      00474C 00                    2888 	.db 0x00
                                   2889 	.area CSEG    (CODE)
                                   2890 	.area CONST   (CODE)
      00474D                       2891 ___str_4:
      00474D E2                    2892 	.db 0xe2
      00474E 94                    2893 	.db 0x94
      00474F 82                    2894 	.db 0x82
      004750 20 20 43 6F 6D 6D 61  2895 	.ascii "  Command   "
             6E 64 20 20 20
      00475C E2                    2896 	.db 0xe2
      00475D 94                    2897 	.db 0x94
      00475E 82                    2898 	.db 0x82
      00475F 20 20 20 20 20 20 20  2899 	.ascii "               Description                   "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20
      00478C E2                    2900 	.db 0xe2
      00478D 94                    2901 	.db 0x94
      00478E 82                    2902 	.db 0x82
      00478F 0A                    2903 	.db 0x0a
      004790 0D                    2904 	.db 0x0d
      004791 00                    2905 	.db 0x00
                                   2906 	.area CSEG    (CODE)
                                   2907 	.area CONST   (CODE)
      004792                       2908 ___str_5:
      004792 E2                    2909 	.db 0xe2
      004793 94                    2910 	.db 0x94
      004794 9C                    2911 	.db 0x9c
      004795 E2                    2912 	.db 0xe2
      004796 94                    2913 	.db 0x94
      004797 80                    2914 	.db 0x80
      004798 E2                    2915 	.db 0xe2
      004799 94                    2916 	.db 0x94
      00479A 80                    2917 	.db 0x80
      00479B E2                    2918 	.db 0xe2
      00479C 94                    2919 	.db 0x94
      00479D 80                    2920 	.db 0x80
      00479E E2                    2921 	.db 0xe2
      00479F 94                    2922 	.db 0x94
      0047A0 80                    2923 	.db 0x80
      0047A1 E2                    2924 	.db 0xe2
      0047A2 94                    2925 	.db 0x94
      0047A3 80                    2926 	.db 0x80
      0047A4 E2                    2927 	.db 0xe2
      0047A5 94                    2928 	.db 0x94
      0047A6 80                    2929 	.db 0x80
      0047A7 E2                    2930 	.db 0xe2
      0047A8 94                    2931 	.db 0x94
      0047A9 80                    2932 	.db 0x80
      0047AA E2                    2933 	.db 0xe2
      0047AB 94                    2934 	.db 0x94
      0047AC 80                    2935 	.db 0x80
      0047AD E2                    2936 	.db 0xe2
      0047AE 94                    2937 	.db 0x94
      0047AF 80                    2938 	.db 0x80
      0047B0 E2                    2939 	.db 0xe2
      0047B1 94                    2940 	.db 0x94
      0047B2 80                    2941 	.db 0x80
      0047B3 E2                    2942 	.db 0xe2
      0047B4 94                    2943 	.db 0x94
      0047B5 80                    2944 	.db 0x80
      0047B6 E2                    2945 	.db 0xe2
      0047B7 94                    2946 	.db 0x94
      0047B8 80                    2947 	.db 0x80
      0047B9 E2                    2948 	.db 0xe2
      0047BA 94                    2949 	.db 0x94
      0047BB BC                    2950 	.db 0xbc
      0047BC E2                    2951 	.db 0xe2
      0047BD 94                    2952 	.db 0x94
      0047BE 80                    2953 	.db 0x80
      0047BF E2                    2954 	.db 0xe2
      0047C0 94                    2955 	.db 0x94
      0047C1 80                    2956 	.db 0x80
      0047C2 E2                    2957 	.db 0xe2
      0047C3 94                    2958 	.db 0x94
      0047C4 80                    2959 	.db 0x80
      0047C5 E2                    2960 	.db 0xe2
      0047C6 94                    2961 	.db 0x94
      0047C7 80                    2962 	.db 0x80
      0047C8 E2                    2963 	.db 0xe2
      0047C9 94                    2964 	.db 0x94
      0047CA 80                    2965 	.db 0x80
      0047CB E2                    2966 	.db 0xe2
      0047CC 94                    2967 	.db 0x94
      0047CD 80                    2968 	.db 0x80
      0047CE E2                    2969 	.db 0xe2
      0047CF 94                    2970 	.db 0x94
      0047D0 80                    2971 	.db 0x80
      0047D1 E2                    2972 	.db 0xe2
      0047D2 94                    2973 	.db 0x94
      0047D3 80                    2974 	.db 0x80
      0047D4 E2                    2975 	.db 0xe2
      0047D5 94                    2976 	.db 0x94
      0047D6 80                    2977 	.db 0x80
      0047D7 E2                    2978 	.db 0xe2
      0047D8 94                    2979 	.db 0x94
      0047D9 80                    2980 	.db 0x80
      0047DA E2                    2981 	.db 0xe2
      0047DB 94                    2982 	.db 0x94
      0047DC 80                    2983 	.db 0x80
      0047DD E2                    2984 	.db 0xe2
      0047DE 94                    2985 	.db 0x94
      0047DF 80                    2986 	.db 0x80
      0047E0 E2                    2987 	.db 0xe2
      0047E1 94                    2988 	.db 0x94
      0047E2 80                    2989 	.db 0x80
      0047E3 E2                    2990 	.db 0xe2
      0047E4 94                    2991 	.db 0x94
      0047E5 80                    2992 	.db 0x80
      0047E6 E2                    2993 	.db 0xe2
      0047E7 94                    2994 	.db 0x94
      0047E8 80                    2995 	.db 0x80
      0047E9 E2                    2996 	.db 0xe2
      0047EA 94                    2997 	.db 0x94
      0047EB 80                    2998 	.db 0x80
      0047EC E2                    2999 	.db 0xe2
      0047ED 94                    3000 	.db 0x94
      0047EE 80                    3001 	.db 0x80
      0047EF E2                    3002 	.db 0xe2
      0047F0 94                    3003 	.db 0x94
      0047F1 80                    3004 	.db 0x80
      0047F2 E2                    3005 	.db 0xe2
      0047F3 94                    3006 	.db 0x94
      0047F4 80                    3007 	.db 0x80
      0047F5 E2                    3008 	.db 0xe2
      0047F6 94                    3009 	.db 0x94
      0047F7 80                    3010 	.db 0x80
      0047F8 E2                    3011 	.db 0xe2
      0047F9 94                    3012 	.db 0x94
      0047FA 80                    3013 	.db 0x80
      0047FB E2                    3014 	.db 0xe2
      0047FC 94                    3015 	.db 0x94
      0047FD 80                    3016 	.db 0x80
      0047FE E2                    3017 	.db 0xe2
      0047FF 94                    3018 	.db 0x94
      004800 80                    3019 	.db 0x80
      004801 E2                    3020 	.db 0xe2
      004802 94                    3021 	.db 0x94
      004803 80                    3022 	.db 0x80
      004804 E2                    3023 	.db 0xe2
      004805 94                    3024 	.db 0x94
      004806 80                    3025 	.db 0x80
      004807 E2                    3026 	.db 0xe2
      004808 94                    3027 	.db 0x94
      004809 80                    3028 	.db 0x80
      00480A E2                    3029 	.db 0xe2
      00480B 94                    3030 	.db 0x94
      00480C 80                    3031 	.db 0x80
      00480D E2                    3032 	.db 0xe2
      00480E 94                    3033 	.db 0x94
      00480F 80                    3034 	.db 0x80
      004810 E2                    3035 	.db 0xe2
      004811 94                    3036 	.db 0x94
      004812 80                    3037 	.db 0x80
      004813 E2                    3038 	.db 0xe2
      004814 94                    3039 	.db 0x94
      004815 80                    3040 	.db 0x80
      004816 E2                    3041 	.db 0xe2
      004817 94                    3042 	.db 0x94
      004818 80                    3043 	.db 0x80
      004819 E2                    3044 	.db 0xe2
      00481A 94                    3045 	.db 0x94
      00481B 80                    3046 	.db 0x80
      00481C E2                    3047 	.db 0xe2
      00481D 94                    3048 	.db 0x94
      00481E 80                    3049 	.db 0x80
      00481F E2                    3050 	.db 0xe2
      004820 94                    3051 	.db 0x94
      004821 80                    3052 	.db 0x80
      004822 E2                    3053 	.db 0xe2
      004823 94                    3054 	.db 0x94
      004824 80                    3055 	.db 0x80
      004825 E2                    3056 	.db 0xe2
      004826 94                    3057 	.db 0x94
      004827 80                    3058 	.db 0x80
      004828 E2                    3059 	.db 0xe2
      004829 94                    3060 	.db 0x94
      00482A 80                    3061 	.db 0x80
      00482B E2                    3062 	.db 0xe2
      00482C 94                    3063 	.db 0x94
      00482D 80                    3064 	.db 0x80
      00482E E2                    3065 	.db 0xe2
      00482F 94                    3066 	.db 0x94
      004830 80                    3067 	.db 0x80
      004831 E2                    3068 	.db 0xe2
      004832 94                    3069 	.db 0x94
      004833 80                    3070 	.db 0x80
      004834 E2                    3071 	.db 0xe2
      004835 94                    3072 	.db 0x94
      004836 80                    3073 	.db 0x80
      004837 E2                    3074 	.db 0xe2
      004838 94                    3075 	.db 0x94
      004839 80                    3076 	.db 0x80
      00483A E2                    3077 	.db 0xe2
      00483B 94                    3078 	.db 0x94
      00483C 80                    3079 	.db 0x80
      00483D E2                    3080 	.db 0xe2
      00483E 94                    3081 	.db 0x94
      00483F 80                    3082 	.db 0x80
      004840 E2                    3083 	.db 0xe2
      004841 94                    3084 	.db 0x94
      004842 A4                    3085 	.db 0xa4
      004843 0A                    3086 	.db 0x0a
      004844 0D                    3087 	.db 0x0d
      004845 00                    3088 	.db 0x00
                                   3089 	.area CSEG    (CODE)
                                   3090 	.area CONST   (CODE)
      004846                       3091 ___str_6:
      004846 E2                    3092 	.db 0xe2
      004847 94                    3093 	.db 0x94
      004848 82                    3094 	.db 0x82
      004849 20 20 20 20 20 52 20  3095 	.ascii "     R      "
             20 20 20 20 20
      004855 E2                    3096 	.db 0xe2
      004856 94                    3097 	.db 0x94
      004857 82                    3098 	.db 0x82
      004858 20 52 65 61 64 20 66  3099 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004884 E2                    3100 	.db 0xe2
      004885 94                    3101 	.db 0x94
      004886 82                    3102 	.db 0x82
      004887 0A                    3103 	.db 0x0a
      004888 0D                    3104 	.db 0x0d
      004889 00                    3105 	.db 0x00
                                   3106 	.area CSEG    (CODE)
                                   3107 	.area CONST   (CODE)
      00488A                       3108 ___str_7:
      00488A E2                    3109 	.db 0xe2
      00488B 94                    3110 	.db 0x94
      00488C 82                    3111 	.db 0x82
      00488D 20 20 20 20 20 57 20  3112 	.ascii "     W      "
             20 20 20 20 20
      004899 E2                    3113 	.db 0xe2
      00489A 94                    3114 	.db 0x94
      00489B 82                    3115 	.db 0x82
      00489C 20 57 72 69 74 65 20  3116 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0048C8 E2                    3117 	.db 0xe2
      0048C9 94                    3118 	.db 0x94
      0048CA 82                    3119 	.db 0x82
      0048CB 0A                    3120 	.db 0x0a
      0048CC 0D                    3121 	.db 0x0d
      0048CD 00                    3122 	.db 0x00
                                   3123 	.area CSEG    (CODE)
                                   3124 	.area CONST   (CODE)
      0048CE                       3125 ___str_8:
      0048CE E2                    3126 	.db 0xe2
      0048CF 94                    3127 	.db 0x94
      0048D0 82                    3128 	.db 0x82
      0048D1 20 20 20 20 20 48 20  3129 	.ascii "     H      "
             20 20 20 20 20
      0048DD E2                    3130 	.db 0xe2
      0048DE 94                    3131 	.db 0x94
      0048DF 82                    3132 	.db 0x82
      0048E0 20 44 69 73 70 6C 61  3133 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      00490C E2                    3134 	.db 0xe2
      00490D 94                    3135 	.db 0x94
      00490E 82                    3136 	.db 0x82
      00490F 0A                    3137 	.db 0x0a
      004910 0D                    3138 	.db 0x0d
      004911 00                    3139 	.db 0x00
                                   3140 	.area CSEG    (CODE)
                                   3141 	.area CONST   (CODE)
      004912                       3142 ___str_9:
      004912 E2                    3143 	.db 0xe2
      004913 94                    3144 	.db 0x94
      004914 82                    3145 	.db 0x82
      004915 20 20 20 20 20 58 20  3146 	.ascii "     X      "
             20 20 20 20 20
      004921 E2                    3147 	.db 0xe2
      004922 94                    3148 	.db 0x94
      004923 82                    3149 	.db 0x82
      004924 20 52 65 73 65 74 20  3150 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004950 E2                    3151 	.db 0xe2
      004951 94                    3152 	.db 0x94
      004952 82                    3153 	.db 0x82
      004953 0A                    3154 	.db 0x0a
      004954 0D                    3155 	.db 0x0d
      004955 00                    3156 	.db 0x00
                                   3157 	.area CSEG    (CODE)
                                   3158 	.area CONST   (CODE)
      004956                       3159 ___str_10:
      004956 E2                    3160 	.db 0xe2
      004957 94                    3161 	.db 0x94
      004958 82                    3162 	.db 0x82
      004959 20 20 20 20 20 3F 20  3163 	.ascii "     ?      "
             20 20 20 20 20
      004965 E2                    3164 	.db 0xe2
      004966 94                    3165 	.db 0x94
      004967 82                    3166 	.db 0x82
      004968 20 44 69 73 70 6C 61  3167 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004994 E2                    3168 	.db 0xe2
      004995 94                    3169 	.db 0x94
      004996 82                    3170 	.db 0x82
      004997 0A                    3171 	.db 0x0a
      004998 0D                    3172 	.db 0x0d
      004999 00                    3173 	.db 0x00
                                   3174 	.area CSEG    (CODE)
                                   3175 	.area CONST   (CODE)
      00499A                       3176 ___str_11:
      00499A E2                    3177 	.db 0xe2
      00499B 94                    3178 	.db 0x94
      00499C 82                    3179 	.db 0x82
      00499D 20 20 20 20 20 51 20  3180 	.ascii "     Q      "
             20 20 20 20 20
      0049A9 E2                    3181 	.db 0xe2
      0049AA 94                    3182 	.db 0x94
      0049AB 82                    3183 	.db 0x82
      0049AC 20 51 75 69 74 20 70  3184 	.ascii " Quit program                              "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20
      0049D7 E2                    3185 	.db 0xe2
      0049D8 94                    3186 	.db 0x94
      0049D9 82                    3187 	.db 0x82
      0049DA 0A                    3188 	.db 0x0a
      0049DB 0D                    3189 	.db 0x0d
      0049DC 00                    3190 	.db 0x00
                                   3191 	.area CSEG    (CODE)
                                   3192 	.area CONST   (CODE)
      0049DD                       3193 ___str_12:
      0049DD E2                    3194 	.db 0xe2
      0049DE 94                    3195 	.db 0x94
      0049DF 94                    3196 	.db 0x94
      0049E0 E2                    3197 	.db 0xe2
      0049E1 94                    3198 	.db 0x94
      0049E2 80                    3199 	.db 0x80
      0049E3 E2                    3200 	.db 0xe2
      0049E4 94                    3201 	.db 0x94
      0049E5 80                    3202 	.db 0x80
      0049E6 E2                    3203 	.db 0xe2
      0049E7 94                    3204 	.db 0x94
      0049E8 80                    3205 	.db 0x80
      0049E9 E2                    3206 	.db 0xe2
      0049EA 94                    3207 	.db 0x94
      0049EB 80                    3208 	.db 0x80
      0049EC E2                    3209 	.db 0xe2
      0049ED 94                    3210 	.db 0x94
      0049EE 80                    3211 	.db 0x80
      0049EF E2                    3212 	.db 0xe2
      0049F0 94                    3213 	.db 0x94
      0049F1 80                    3214 	.db 0x80
      0049F2 E2                    3215 	.db 0xe2
      0049F3 94                    3216 	.db 0x94
      0049F4 80                    3217 	.db 0x80
      0049F5 E2                    3218 	.db 0xe2
      0049F6 94                    3219 	.db 0x94
      0049F7 80                    3220 	.db 0x80
      0049F8 E2                    3221 	.db 0xe2
      0049F9 94                    3222 	.db 0x94
      0049FA 80                    3223 	.db 0x80
      0049FB E2                    3224 	.db 0xe2
      0049FC 94                    3225 	.db 0x94
      0049FD 80                    3226 	.db 0x80
      0049FE E2                    3227 	.db 0xe2
      0049FF 94                    3228 	.db 0x94
      004A00 80                    3229 	.db 0x80
      004A01 E2                    3230 	.db 0xe2
      004A02 94                    3231 	.db 0x94
      004A03 80                    3232 	.db 0x80
      004A04 E2                    3233 	.db 0xe2
      004A05 94                    3234 	.db 0x94
      004A06 B4                    3235 	.db 0xb4
      004A07 E2                    3236 	.db 0xe2
      004A08 94                    3237 	.db 0x94
      004A09 80                    3238 	.db 0x80
      004A0A E2                    3239 	.db 0xe2
      004A0B 94                    3240 	.db 0x94
      004A0C 80                    3241 	.db 0x80
      004A0D E2                    3242 	.db 0xe2
      004A0E 94                    3243 	.db 0x94
      004A0F 80                    3244 	.db 0x80
      004A10 E2                    3245 	.db 0xe2
      004A11 94                    3246 	.db 0x94
      004A12 80                    3247 	.db 0x80
      004A13 E2                    3248 	.db 0xe2
      004A14 94                    3249 	.db 0x94
      004A15 80                    3250 	.db 0x80
      004A16 E2                    3251 	.db 0xe2
      004A17 94                    3252 	.db 0x94
      004A18 80                    3253 	.db 0x80
      004A19 E2                    3254 	.db 0xe2
      004A1A 94                    3255 	.db 0x94
      004A1B 80                    3256 	.db 0x80
      004A1C E2                    3257 	.db 0xe2
      004A1D 94                    3258 	.db 0x94
      004A1E 80                    3259 	.db 0x80
      004A1F E2                    3260 	.db 0xe2
      004A20 94                    3261 	.db 0x94
      004A21 80                    3262 	.db 0x80
      004A22 E2                    3263 	.db 0xe2
      004A23 94                    3264 	.db 0x94
      004A24 80                    3265 	.db 0x80
      004A25 E2                    3266 	.db 0xe2
      004A26 94                    3267 	.db 0x94
      004A27 80                    3268 	.db 0x80
      004A28 E2                    3269 	.db 0xe2
      004A29 94                    3270 	.db 0x94
      004A2A 80                    3271 	.db 0x80
      004A2B E2                    3272 	.db 0xe2
      004A2C 94                    3273 	.db 0x94
      004A2D 80                    3274 	.db 0x80
      004A2E E2                    3275 	.db 0xe2
      004A2F 94                    3276 	.db 0x94
      004A30 80                    3277 	.db 0x80
      004A31 E2                    3278 	.db 0xe2
      004A32 94                    3279 	.db 0x94
      004A33 80                    3280 	.db 0x80
      004A34 E2                    3281 	.db 0xe2
      004A35 94                    3282 	.db 0x94
      004A36 80                    3283 	.db 0x80
      004A37 E2                    3284 	.db 0xe2
      004A38 94                    3285 	.db 0x94
      004A39 80                    3286 	.db 0x80
      004A3A E2                    3287 	.db 0xe2
      004A3B 94                    3288 	.db 0x94
      004A3C 80                    3289 	.db 0x80
      004A3D E2                    3290 	.db 0xe2
      004A3E 94                    3291 	.db 0x94
      004A3F 80                    3292 	.db 0x80
      004A40 E2                    3293 	.db 0xe2
      004A41 94                    3294 	.db 0x94
      004A42 80                    3295 	.db 0x80
      004A43 E2                    3296 	.db 0xe2
      004A44 94                    3297 	.db 0x94
      004A45 80                    3298 	.db 0x80
      004A46 E2                    3299 	.db 0xe2
      004A47 94                    3300 	.db 0x94
      004A48 80                    3301 	.db 0x80
      004A49 E2                    3302 	.db 0xe2
      004A4A 94                    3303 	.db 0x94
      004A4B 80                    3304 	.db 0x80
      004A4C E2                    3305 	.db 0xe2
      004A4D 94                    3306 	.db 0x94
      004A4E 80                    3307 	.db 0x80
      004A4F E2                    3308 	.db 0xe2
      004A50 94                    3309 	.db 0x94
      004A51 80                    3310 	.db 0x80
      004A52 E2                    3311 	.db 0xe2
      004A53 94                    3312 	.db 0x94
      004A54 80                    3313 	.db 0x80
      004A55 E2                    3314 	.db 0xe2
      004A56 94                    3315 	.db 0x94
      004A57 80                    3316 	.db 0x80
      004A58 E2                    3317 	.db 0xe2
      004A59 94                    3318 	.db 0x94
      004A5A 80                    3319 	.db 0x80
      004A5B E2                    3320 	.db 0xe2
      004A5C 94                    3321 	.db 0x94
      004A5D 80                    3322 	.db 0x80
      004A5E E2                    3323 	.db 0xe2
      004A5F 94                    3324 	.db 0x94
      004A60 80                    3325 	.db 0x80
      004A61 E2                    3326 	.db 0xe2
      004A62 94                    3327 	.db 0x94
      004A63 80                    3328 	.db 0x80
      004A64 E2                    3329 	.db 0xe2
      004A65 94                    3330 	.db 0x94
      004A66 80                    3331 	.db 0x80
      004A67 E2                    3332 	.db 0xe2
      004A68 94                    3333 	.db 0x94
      004A69 80                    3334 	.db 0x80
      004A6A E2                    3335 	.db 0xe2
      004A6B 94                    3336 	.db 0x94
      004A6C 80                    3337 	.db 0x80
      004A6D E2                    3338 	.db 0xe2
      004A6E 94                    3339 	.db 0x94
      004A6F 80                    3340 	.db 0x80
      004A70 E2                    3341 	.db 0xe2
      004A71 94                    3342 	.db 0x94
      004A72 80                    3343 	.db 0x80
      004A73 E2                    3344 	.db 0xe2
      004A74 94                    3345 	.db 0x94
      004A75 80                    3346 	.db 0x80
      004A76 E2                    3347 	.db 0xe2
      004A77 94                    3348 	.db 0x94
      004A78 80                    3349 	.db 0x80
      004A79 E2                    3350 	.db 0xe2
      004A7A 94                    3351 	.db 0x94
      004A7B 80                    3352 	.db 0x80
      004A7C E2                    3353 	.db 0xe2
      004A7D 94                    3354 	.db 0x94
      004A7E 80                    3355 	.db 0x80
      004A7F E2                    3356 	.db 0xe2
      004A80 94                    3357 	.db 0x94
      004A81 80                    3358 	.db 0x80
      004A82 E2                    3359 	.db 0xe2
      004A83 94                    3360 	.db 0x94
      004A84 80                    3361 	.db 0x80
      004A85 E2                    3362 	.db 0xe2
      004A86 94                    3363 	.db 0x94
      004A87 80                    3364 	.db 0x80
      004A88 E2                    3365 	.db 0xe2
      004A89 94                    3366 	.db 0x94
      004A8A 80                    3367 	.db 0x80
      004A8B E2                    3368 	.db 0xe2
      004A8C 94                    3369 	.db 0x94
      004A8D 98                    3370 	.db 0x98
      004A8E 0A                    3371 	.db 0x0a
      004A8F 0D                    3372 	.db 0x0d
      004A90 00                    3373 	.db 0x00
                                   3374 	.area CSEG    (CODE)
                                   3375 	.area CONST   (CODE)
      004A91                       3376 ___str_13:
      004A91 24 20 25 63           3377 	.ascii "$ %c"
      004A95 0A                    3378 	.db 0x0a
      004A96 0D                    3379 	.db 0x0d
      004A97 00                    3380 	.db 0x00
                                   3381 	.area CSEG    (CODE)
                                   3382 	.area CONST   (CODE)
      004A98                       3383 ___str_14:
      004A98 0A                    3384 	.db 0x0a
      004A99 E2                    3385 	.db 0xe2
      004A9A 94                    3386 	.db 0x94
      004A9B 8C                    3387 	.db 0x8c
      004A9C E2                    3388 	.db 0xe2
      004A9D 94                    3389 	.db 0x94
      004A9E 80                    3390 	.db 0x80
      004A9F E2                    3391 	.db 0xe2
      004AA0 94                    3392 	.db 0x94
      004AA1 80                    3393 	.db 0x80
      004AA2 E2                    3394 	.db 0xe2
      004AA3 94                    3395 	.db 0x94
      004AA4 80                    3396 	.db 0x80
      004AA5 E2                    3397 	.db 0xe2
      004AA6 94                    3398 	.db 0x94
      004AA7 80                    3399 	.db 0x80
      004AA8 E2                    3400 	.db 0xe2
      004AA9 94                    3401 	.db 0x94
      004AAA 80                    3402 	.db 0x80
      004AAB E2                    3403 	.db 0xe2
      004AAC 94                    3404 	.db 0x94
      004AAD 80                    3405 	.db 0x80
      004AAE E2                    3406 	.db 0xe2
      004AAF 94                    3407 	.db 0x94
      004AB0 80                    3408 	.db 0x80
      004AB1 E2                    3409 	.db 0xe2
      004AB2 94                    3410 	.db 0x94
      004AB3 80                    3411 	.db 0x80
      004AB4 E2                    3412 	.db 0xe2
      004AB5 94                    3413 	.db 0x94
      004AB6 80                    3414 	.db 0x80
      004AB7 E2                    3415 	.db 0xe2
      004AB8 94                    3416 	.db 0x94
      004AB9 80                    3417 	.db 0x80
      004ABA E2                    3418 	.db 0xe2
      004ABB 94                    3419 	.db 0x94
      004ABC 80                    3420 	.db 0x80
      004ABD E2                    3421 	.db 0xe2
      004ABE 94                    3422 	.db 0x94
      004ABF 80                    3423 	.db 0x80
      004AC0 E2                    3424 	.db 0xe2
      004AC1 94                    3425 	.db 0x94
      004AC2 80                    3426 	.db 0x80
      004AC3 E2                    3427 	.db 0xe2
      004AC4 94                    3428 	.db 0x94
      004AC5 80                    3429 	.db 0x80
      004AC6 E2                    3430 	.db 0xe2
      004AC7 94                    3431 	.db 0x94
      004AC8 80                    3432 	.db 0x80
      004AC9 20 57 52 49 54 45 20  3433 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      004ADA E2                    3434 	.db 0xe2
      004ADB 94                    3435 	.db 0x94
      004ADC 80                    3436 	.db 0x80
      004ADD E2                    3437 	.db 0xe2
      004ADE 94                    3438 	.db 0x94
      004ADF 80                    3439 	.db 0x80
      004AE0 E2                    3440 	.db 0xe2
      004AE1 94                    3441 	.db 0x94
      004AE2 80                    3442 	.db 0x80
      004AE3 E2                    3443 	.db 0xe2
      004AE4 94                    3444 	.db 0x94
      004AE5 80                    3445 	.db 0x80
      004AE6 E2                    3446 	.db 0xe2
      004AE7 94                    3447 	.db 0x94
      004AE8 80                    3448 	.db 0x80
      004AE9 E2                    3449 	.db 0xe2
      004AEA 94                    3450 	.db 0x94
      004AEB 80                    3451 	.db 0x80
      004AEC E2                    3452 	.db 0xe2
      004AED 94                    3453 	.db 0x94
      004AEE 80                    3454 	.db 0x80
      004AEF E2                    3455 	.db 0xe2
      004AF0 94                    3456 	.db 0x94
      004AF1 80                    3457 	.db 0x80
      004AF2 E2                    3458 	.db 0xe2
      004AF3 94                    3459 	.db 0x94
      004AF4 80                    3460 	.db 0x80
      004AF5 E2                    3461 	.db 0xe2
      004AF6 94                    3462 	.db 0x94
      004AF7 80                    3463 	.db 0x80
      004AF8 E2                    3464 	.db 0xe2
      004AF9 94                    3465 	.db 0x94
      004AFA 80                    3466 	.db 0x80
      004AFB E2                    3467 	.db 0xe2
      004AFC 94                    3468 	.db 0x94
      004AFD 80                    3469 	.db 0x80
      004AFE E2                    3470 	.db 0xe2
      004AFF 94                    3471 	.db 0x94
      004B00 80                    3472 	.db 0x80
      004B01 E2                    3473 	.db 0xe2
      004B02 94                    3474 	.db 0x94
      004B03 80                    3475 	.db 0x80
      004B04 E2                    3476 	.db 0xe2
      004B05 94                    3477 	.db 0x94
      004B06 90                    3478 	.db 0x90
      004B07 0A                    3479 	.db 0x0a
      004B08 0D                    3480 	.db 0x0d
      004B09 00                    3481 	.db 0x00
                                   3482 	.area CSEG    (CODE)
                                   3483 	.area CONST   (CODE)
      004B0A                       3484 ___str_15:
      004B0A 7C 57 72 69 74 69 6E  3485 	.ascii "|Writing at Address 0x%03X Data 0x%02X          |"
             67 20 61 74 20 41 64
             64 72 65 73 73 20 30
             78 25 30 33 58 20 44
             61 74 61 20 30 78 25
             30 32 58 20 20 20 20
             20 20 20 20 20 20 7C
      004B3B 0A                    3486 	.db 0x0a
      004B3C 0D                    3487 	.db 0x0d
      004B3D 00                    3488 	.db 0x00
                                   3489 	.area CSEG    (CODE)
                                   3490 	.area CONST   (CODE)
      004B3E                       3491 ___str_16:
      004B3E 0A                    3492 	.db 0x0a
      004B3F E2                    3493 	.db 0xe2
      004B40 94                    3494 	.db 0x94
      004B41 8C                    3495 	.db 0x8c
      004B42 E2                    3496 	.db 0xe2
      004B43 94                    3497 	.db 0x94
      004B44 80                    3498 	.db 0x80
      004B45 E2                    3499 	.db 0xe2
      004B46 94                    3500 	.db 0x94
      004B47 80                    3501 	.db 0x80
      004B48 E2                    3502 	.db 0xe2
      004B49 94                    3503 	.db 0x94
      004B4A 80                    3504 	.db 0x80
      004B4B E2                    3505 	.db 0xe2
      004B4C 94                    3506 	.db 0x94
      004B4D 80                    3507 	.db 0x80
      004B4E E2                    3508 	.db 0xe2
      004B4F 94                    3509 	.db 0x94
      004B50 80                    3510 	.db 0x80
      004B51 E2                    3511 	.db 0xe2
      004B52 94                    3512 	.db 0x94
      004B53 80                    3513 	.db 0x80
      004B54 E2                    3514 	.db 0xe2
      004B55 94                    3515 	.db 0x94
      004B56 80                    3516 	.db 0x80
      004B57 E2                    3517 	.db 0xe2
      004B58 94                    3518 	.db 0x94
      004B59 80                    3519 	.db 0x80
      004B5A E2                    3520 	.db 0xe2
      004B5B 94                    3521 	.db 0x94
      004B5C 80                    3522 	.db 0x80
      004B5D E2                    3523 	.db 0xe2
      004B5E 94                    3524 	.db 0x94
      004B5F 80                    3525 	.db 0x80
      004B60 E2                    3526 	.db 0xe2
      004B61 94                    3527 	.db 0x94
      004B62 80                    3528 	.db 0x80
      004B63 E2                    3529 	.db 0xe2
      004B64 94                    3530 	.db 0x94
      004B65 80                    3531 	.db 0x80
      004B66 E2                    3532 	.db 0xe2
      004B67 94                    3533 	.db 0x94
      004B68 80                    3534 	.db 0x80
      004B69 E2                    3535 	.db 0xe2
      004B6A 94                    3536 	.db 0x94
      004B6B 80                    3537 	.db 0x80
      004B6C E2                    3538 	.db 0xe2
      004B6D 94                    3539 	.db 0x94
      004B6E 80                    3540 	.db 0x80
      004B6F 20 52 45 41 44 20 4F  3541 	.ascii " READ OPERATION "
             50 45 52 41 54 49 4F
             4E 20
      004B7F E2                    3542 	.db 0xe2
      004B80 94                    3543 	.db 0x94
      004B81 80                    3544 	.db 0x80
      004B82 E2                    3545 	.db 0xe2
      004B83 94                    3546 	.db 0x94
      004B84 80                    3547 	.db 0x80
      004B85 E2                    3548 	.db 0xe2
      004B86 94                    3549 	.db 0x94
      004B87 80                    3550 	.db 0x80
      004B88 E2                    3551 	.db 0xe2
      004B89 94                    3552 	.db 0x94
      004B8A 80                    3553 	.db 0x80
      004B8B E2                    3554 	.db 0xe2
      004B8C 94                    3555 	.db 0x94
      004B8D 80                    3556 	.db 0x80
      004B8E E2                    3557 	.db 0xe2
      004B8F 94                    3558 	.db 0x94
      004B90 80                    3559 	.db 0x80
      004B91 E2                    3560 	.db 0xe2
      004B92 94                    3561 	.db 0x94
      004B93 80                    3562 	.db 0x80
      004B94 E2                    3563 	.db 0xe2
      004B95 94                    3564 	.db 0x94
      004B96 80                    3565 	.db 0x80
      004B97 E2                    3566 	.db 0xe2
      004B98 94                    3567 	.db 0x94
      004B99 80                    3568 	.db 0x80
      004B9A E2                    3569 	.db 0xe2
      004B9B 94                    3570 	.db 0x94
      004B9C 80                    3571 	.db 0x80
      004B9D E2                    3572 	.db 0xe2
      004B9E 94                    3573 	.db 0x94
      004B9F 80                    3574 	.db 0x80
      004BA0 E2                    3575 	.db 0xe2
      004BA1 94                    3576 	.db 0x94
      004BA2 80                    3577 	.db 0x80
      004BA3 E2                    3578 	.db 0xe2
      004BA4 94                    3579 	.db 0x94
      004BA5 80                    3580 	.db 0x80
      004BA6 E2                    3581 	.db 0xe2
      004BA7 94                    3582 	.db 0x94
      004BA8 80                    3583 	.db 0x80
      004BA9 E2                    3584 	.db 0xe2
      004BAA 94                    3585 	.db 0x94
      004BAB 80                    3586 	.db 0x80
      004BAC E2                    3587 	.db 0xe2
      004BAD 94                    3588 	.db 0x94
      004BAE 90                    3589 	.db 0x90
      004BAF 0A                    3590 	.db 0x0a
      004BB0 0D                    3591 	.db 0x0d
      004BB1 00                    3592 	.db 0x00
                                   3593 	.area CSEG    (CODE)
                                   3594 	.area CONST   (CODE)
      004BB2                       3595 ___str_17:
      004BB2 7C 52 65 61 64 69 6E  3596 	.ascii "|Reading from Address 0x%03X           |"
             67 20 66 72 6F 6D 20
             41 64 64 72 65 73 73
             20 30 78 25 30 33 58
             20 20 20 20 20 20 20
             20 20 20 20 7C
      004BDA 0A                    3597 	.db 0x0a
      004BDB 0D                    3598 	.db 0x0d
      004BDC 00                    3599 	.db 0x00
                                   3600 	.area CSEG    (CODE)
                                   3601 	.area CONST   (CODE)
      004BDD                       3602 ___str_18:
      004BDD 49 4E 56 41 4C 49 44  3603 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      004BEA 0A                    3604 	.db 0x0a
      004BEB 0D                    3605 	.db 0x0d
      004BEC 00                    3606 	.db 0x00
                                   3607 	.area CSEG    (CODE)
                                   3608 	.area CONST   (CODE)
      004BED                       3609 ___str_19:
      004BED E2                    3610 	.db 0xe2
      004BEE 94                    3611 	.db 0x94
      004BEF 82                    3612 	.db 0x82
      004BF0 20 45 6E 74 65 72 20  3613 	.ascii " Enter address (hex, up to 3 characters): "
             61 64 64 72 65 73 73
             20 28 68 65 78 2C 20
             75 70 20 74 6F 20 33
             20 63 68 61 72 61 63
             74 65 72 73 29 3A 20
      004C1A 0A                    3614 	.db 0x0a
      004C1B 0D                    3615 	.db 0x0d
      004C1C 7C                    3616 	.ascii "|"
      004C1D 00                    3617 	.db 0x00
                                   3618 	.area CSEG    (CODE)
                                   3619 	.area CONST   (CODE)
      004C1E                       3620 ___str_20:
      004C1E 24 20                 3621 	.ascii "$ "
      004C20 00                    3622 	.db 0x00
                                   3623 	.area CSEG    (CODE)
                                   3624 	.area CONST   (CODE)
      004C21                       3625 ___str_21:
      004C21 0A                    3626 	.db 0x0a
      004C22 0D                    3627 	.db 0x0d
      004C23 E2                    3628 	.db 0xe2
      004C24 94                    3629 	.db 0x94
      004C25 82                    3630 	.db 0x82
      004C26 20 45 6E 74 65 72 65  3631 	.ascii " Entered address: 0x%03X"
             64 20 61 64 64 72 65
             73 73 3A 20 30 78 25
             30 33 58
      004C3E 0A                    3632 	.db 0x0a
      004C3F 0D                    3633 	.db 0x0d
      004C40 00                    3634 	.db 0x00
                                   3635 	.area CSEG    (CODE)
                                   3636 	.area CONST   (CODE)
      004C41                       3637 ___str_22:
      004C41 41 64 64 72 65 73 73  3638 	.ascii "Address out of Range"
             20 6F 75 74 20 6F 66
             20 52 61 6E 67 65
      004C55 0A                    3639 	.db 0x0a
      004C56 0D                    3640 	.db 0x0d
      004C57 00                    3641 	.db 0x00
                                   3642 	.area CSEG    (CODE)
                                   3643 	.area CONST   (CODE)
      004C58                       3644 ___str_23:
      004C58 E2                    3645 	.db 0xe2
      004C59 94                    3646 	.db 0x94
      004C5A 82                    3647 	.db 0x82
      004C5B 20 45 6E 74 65 72 20  3648 	.ascii " Enter data (hex, up to 2 characters): "
             64 61 74 61 20 28 68
             65 78 2C 20 75 70 20
             74 6F 20 32 20 63 68
             61 72 61 63 74 65 72
             73 29 3A 20
      004C82 0A                    3649 	.db 0x0a
      004C83 0D                    3650 	.db 0x0d
      004C84 7C                    3651 	.ascii "|"
      004C85 00                    3652 	.db 0x00
                                   3653 	.area CSEG    (CODE)
                                   3654 	.area CONST   (CODE)
      004C86                       3655 ___str_24:
      004C86 0A                    3656 	.db 0x0a
      004C87 0D                    3657 	.db 0x0d
      004C88 E2                    3658 	.db 0xe2
      004C89 94                    3659 	.db 0x94
      004C8A 82                    3660 	.db 0x82
      004C8B 20 45 6E 74 65 72 65  3661 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      004CA0 0A                    3662 	.db 0x0a
      004CA1 0D                    3663 	.db 0x0d
      004CA2 00                    3664 	.db 0x00
                                   3665 	.area CSEG    (CODE)
                                   3666 	.area CONST   (CODE)
      004CA3                       3667 ___str_25:
      004CA3 44 61 74 61 20 6F 75  3668 	.ascii "Data out of Range"
             74 20 6F 66 20 52 61
             6E 67 65
      004CB4 0A                    3669 	.db 0x0a
      004CB5 0D                    3670 	.db 0x0d
      004CB6 00                    3671 	.db 0x00
                                   3672 	.area CSEG    (CODE)
                                   3673 	.area CONST   (CODE)
      004CB7                       3674 ___str_26:
      004CB7 45 72 72 6F 72 3A 20  3675 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      004CDF 0A                    3676 	.db 0x0a
      004CE0 0D                    3677 	.db 0x0d
      004CE1 00                    3678 	.db 0x00
                                   3679 	.area CSEG    (CODE)
                                   3680 	.area CONST   (CODE)
      004CE2                       3681 ___str_27:
      004CE2 45 72 72 6F 72 3A 20  3682 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      004D02 0A                    3683 	.db 0x0a
      004D03 0D                    3684 	.db 0x0d
      004D04 00                    3685 	.db 0x00
                                   3686 	.area CSEG    (CODE)
                                   3687 	.area CONST   (CODE)
      004D05                       3688 ___str_28:
      004D05 45 72 72 6F 72 3A 20  3689 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      004D1B 0A                    3690 	.db 0x0a
      004D1C 0D                    3691 	.db 0x0d
      004D1D 00                    3692 	.db 0x00
                                   3693 	.area CSEG    (CODE)
                                   3694 	.area CONST   (CODE)
      004D1E                       3695 ___str_29:
      004D1E 7C 20 57 72 69 74 69  3696 	.ascii "| Writing at Address 0x%03X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 33 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      004D50 0A                    3697 	.db 0x0a
      004D51 0D                    3698 	.db 0x0d
      004D52 00                    3699 	.db 0x00
                                   3700 	.area CSEG    (CODE)
                                   3701 	.area CONST   (CODE)
      004D53                       3702 ___str_30:
      004D53 E2                    3703 	.db 0xe2
      004D54 94                    3704 	.db 0x94
      004D55 82                    3705 	.db 0x82
      004D56 20 57 72 69 74 65 20  3706 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      004D85 E2                    3707 	.db 0xe2
      004D86 94                    3708 	.db 0x94
      004D87 82                    3709 	.db 0x82
      004D88 0A                    3710 	.db 0x0a
      004D89 0D                    3711 	.db 0x0d
      004D8A 00                    3712 	.db 0x00
                                   3713 	.area CSEG    (CODE)
                                   3714 	.area CONST   (CODE)
      004D8B                       3715 ___str_31:
      004D8B E2                    3716 	.db 0xe2
      004D8C 94                    3717 	.db 0x94
      004D8D 94                    3718 	.db 0x94
      004D8E E2                    3719 	.db 0xe2
      004D8F 94                    3720 	.db 0x94
      004D90 80                    3721 	.db 0x80
      004D91 E2                    3722 	.db 0xe2
      004D92 94                    3723 	.db 0x94
      004D93 80                    3724 	.db 0x80
      004D94 E2                    3725 	.db 0xe2
      004D95 94                    3726 	.db 0x94
      004D96 80                    3727 	.db 0x80
      004D97 E2                    3728 	.db 0xe2
      004D98 94                    3729 	.db 0x94
      004D99 80                    3730 	.db 0x80
      004D9A E2                    3731 	.db 0xe2
      004D9B 94                    3732 	.db 0x94
      004D9C 80                    3733 	.db 0x80
      004D9D E2                    3734 	.db 0xe2
      004D9E 94                    3735 	.db 0x94
      004D9F 80                    3736 	.db 0x80
      004DA0 E2                    3737 	.db 0xe2
      004DA1 94                    3738 	.db 0x94
      004DA2 80                    3739 	.db 0x80
      004DA3 E2                    3740 	.db 0xe2
      004DA4 94                    3741 	.db 0x94
      004DA5 80                    3742 	.db 0x80
      004DA6 E2                    3743 	.db 0xe2
      004DA7 94                    3744 	.db 0x94
      004DA8 80                    3745 	.db 0x80
      004DA9 E2                    3746 	.db 0xe2
      004DAA 94                    3747 	.db 0x94
      004DAB 80                    3748 	.db 0x80
      004DAC E2                    3749 	.db 0xe2
      004DAD 94                    3750 	.db 0x94
      004DAE 80                    3751 	.db 0x80
      004DAF E2                    3752 	.db 0xe2
      004DB0 94                    3753 	.db 0x94
      004DB1 80                    3754 	.db 0x80
      004DB2 E2                    3755 	.db 0xe2
      004DB3 94                    3756 	.db 0x94
      004DB4 80                    3757 	.db 0x80
      004DB5 E2                    3758 	.db 0xe2
      004DB6 94                    3759 	.db 0x94
      004DB7 80                    3760 	.db 0x80
      004DB8 E2                    3761 	.db 0xe2
      004DB9 94                    3762 	.db 0x94
      004DBA 80                    3763 	.db 0x80
      004DBB E2                    3764 	.db 0xe2
      004DBC 94                    3765 	.db 0x94
      004DBD 80                    3766 	.db 0x80
      004DBE E2                    3767 	.db 0xe2
      004DBF 94                    3768 	.db 0x94
      004DC0 80                    3769 	.db 0x80
      004DC1 E2                    3770 	.db 0xe2
      004DC2 94                    3771 	.db 0x94
      004DC3 80                    3772 	.db 0x80
      004DC4 E2                    3773 	.db 0xe2
      004DC5 94                    3774 	.db 0x94
      004DC6 80                    3775 	.db 0x80
      004DC7 E2                    3776 	.db 0xe2
      004DC8 94                    3777 	.db 0x94
      004DC9 80                    3778 	.db 0x80
      004DCA E2                    3779 	.db 0xe2
      004DCB 94                    3780 	.db 0x94
      004DCC 80                    3781 	.db 0x80
      004DCD E2                    3782 	.db 0xe2
      004DCE 94                    3783 	.db 0x94
      004DCF 80                    3784 	.db 0x80
      004DD0 E2                    3785 	.db 0xe2
      004DD1 94                    3786 	.db 0x94
      004DD2 80                    3787 	.db 0x80
      004DD3 E2                    3788 	.db 0xe2
      004DD4 94                    3789 	.db 0x94
      004DD5 80                    3790 	.db 0x80
      004DD6 E2                    3791 	.db 0xe2
      004DD7 94                    3792 	.db 0x94
      004DD8 80                    3793 	.db 0x80
      004DD9 E2                    3794 	.db 0xe2
      004DDA 94                    3795 	.db 0x94
      004DDB 80                    3796 	.db 0x80
      004DDC E2                    3797 	.db 0xe2
      004DDD 94                    3798 	.db 0x94
      004DDE 80                    3799 	.db 0x80
      004DDF E2                    3800 	.db 0xe2
      004DE0 94                    3801 	.db 0x94
      004DE1 80                    3802 	.db 0x80
      004DE2 E2                    3803 	.db 0xe2
      004DE3 94                    3804 	.db 0x94
      004DE4 80                    3805 	.db 0x80
      004DE5 E2                    3806 	.db 0xe2
      004DE6 94                    3807 	.db 0x94
      004DE7 80                    3808 	.db 0x80
      004DE8 E2                    3809 	.db 0xe2
      004DE9 94                    3810 	.db 0x94
      004DEA 80                    3811 	.db 0x80
      004DEB E2                    3812 	.db 0xe2
      004DEC 94                    3813 	.db 0x94
      004DED 80                    3814 	.db 0x80
      004DEE E2                    3815 	.db 0xe2
      004DEF 94                    3816 	.db 0x94
      004DF0 80                    3817 	.db 0x80
      004DF1 E2                    3818 	.db 0xe2
      004DF2 94                    3819 	.db 0x94
      004DF3 80                    3820 	.db 0x80
      004DF4 E2                    3821 	.db 0xe2
      004DF5 94                    3822 	.db 0x94
      004DF6 80                    3823 	.db 0x80
      004DF7 E2                    3824 	.db 0xe2
      004DF8 94                    3825 	.db 0x94
      004DF9 80                    3826 	.db 0x80
      004DFA E2                    3827 	.db 0xe2
      004DFB 94                    3828 	.db 0x94
      004DFC 80                    3829 	.db 0x80
      004DFD E2                    3830 	.db 0xe2
      004DFE 94                    3831 	.db 0x94
      004DFF 80                    3832 	.db 0x80
      004E00 E2                    3833 	.db 0xe2
      004E01 94                    3834 	.db 0x94
      004E02 80                    3835 	.db 0x80
      004E03 E2                    3836 	.db 0xe2
      004E04 94                    3837 	.db 0x94
      004E05 80                    3838 	.db 0x80
      004E06 E2                    3839 	.db 0xe2
      004E07 94                    3840 	.db 0x94
      004E08 80                    3841 	.db 0x80
      004E09 E2                    3842 	.db 0xe2
      004E0A 94                    3843 	.db 0x94
      004E0B 80                    3844 	.db 0x80
      004E0C E2                    3845 	.db 0xe2
      004E0D 94                    3846 	.db 0x94
      004E0E 80                    3847 	.db 0x80
      004E0F E2                    3848 	.db 0xe2
      004E10 94                    3849 	.db 0x94
      004E11 80                    3850 	.db 0x80
      004E12 E2                    3851 	.db 0xe2
      004E13 94                    3852 	.db 0x94
      004E14 80                    3853 	.db 0x80
      004E15 E2                    3854 	.db 0xe2
      004E16 94                    3855 	.db 0x94
      004E17 80                    3856 	.db 0x80
      004E18 E2                    3857 	.db 0xe2
      004E19 94                    3858 	.db 0x94
      004E1A 80                    3859 	.db 0x80
      004E1B E2                    3860 	.db 0xe2
      004E1C 94                    3861 	.db 0x94
      004E1D 98                    3862 	.db 0x98
      004E1E 0A                    3863 	.db 0x0a
      004E1F 0D                    3864 	.db 0x0d
      004E20 00                    3865 	.db 0x00
                                   3866 	.area CSEG    (CODE)
                                   3867 	.area CONST   (CODE)
      004E21                       3868 ___str_32:
      004E21 45 72 72 6F 72 3A 20  3869 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      004E4E 0A                    3870 	.db 0x0a
      004E4F 0D                    3871 	.db 0x0d
      004E50 00                    3872 	.db 0x00
                                   3873 	.area CSEG    (CODE)
                                   3874 	.area CONST   (CODE)
      004E51                       3875 ___str_33:
      004E51 45 72 72 6F 72 3A 20  3876 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      004E7D 0A                    3877 	.db 0x0a
      004E7E 0D                    3878 	.db 0x0d
      004E7F 00                    3879 	.db 0x00
                                   3880 	.area CSEG    (CODE)
                                   3881 	.area CONST   (CODE)
      004E80                       3882 ___str_34:
      004E80 E2                    3883 	.db 0xe2
      004E81 94                    3884 	.db 0x94
      004E82 82                    3885 	.db 0x82
      004E83 20 52 65 61 64 69 6E  3886 	.ascii " Reading from Adress: 0x%03X Data: 0x%02X                   "
             67 20 66 72 6F 6D 20
             41 64 72 65 73 73 3A
             20 30 78 25 30 33 58
             20 44 61 74 61 3A 20
             30 78 25 30 32 58 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      004EBF 20                    3887 	.ascii " "
      004EC0 0A                    3888 	.db 0x0a
      004EC1 0D                    3889 	.db 0x0d
      004EC2 00                    3890 	.db 0x00
                                   3891 	.area CSEG    (CODE)
                                   3892 	.area CONST   (CODE)
      004EC3                       3893 ___str_35:
      004EC3 7C 20 30 78 25 30 33  3894 	.ascii "| 0x%03X : 0x%02X "
             58 20 3A 20 30 78 25
             30 32 58 20
      004ED5 0A                    3895 	.db 0x0a
      004ED6 0D                    3896 	.db 0x0d
      004ED7 00                    3897 	.db 0x00
                                   3898 	.area CSEG    (CODE)
                                   3899 	.area CONST   (CODE)
      004ED8                       3900 ___str_36:
      004ED8 E2                    3901 	.db 0xe2
      004ED9 94                    3902 	.db 0x94
      004EDA 82                    3903 	.db 0x82
      004EDB 20 52 65 61 64 20 73  3904 	.ascii " Read successful!                 "
             75 63 63 65 73 73 66
             75 6C 21 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20
      004EFD E2                    3905 	.db 0xe2
      004EFE 94                    3906 	.db 0x94
      004EFF 82                    3907 	.db 0x82
      004F00 0A                    3908 	.db 0x0a
      004F01 0D                    3909 	.db 0x0d
      004F02 00                    3910 	.db 0x00
                                   3911 	.area CSEG    (CODE)
                                   3912 	.area CONST   (CODE)
      004F03                       3913 ___str_37:
      004F03 41 43 4B 20 44 49 44  3914 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      004F15 0A                    3915 	.db 0x0a
      004F16 0D                    3916 	.db 0x0d
      004F17 00                    3917 	.db 0x00
                                   3918 	.area CSEG    (CODE)
                                   3919 	.area CONST   (CODE)
      004F18                       3920 ___str_38:
      004F18 57 72 69 74 69 6E 67  3921 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      004F3D 0A                    3922 	.db 0x0a
      004F3E 0D                    3923 	.db 0x0d
      004F3F 00                    3924 	.db 0x00
                                   3925 	.area CSEG    (CODE)
                                   3926 	.area CONST   (CODE)
      004F40                       3927 ___str_39:
      004F40 52 65 61 64 20 62 61  3928 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      004F65 0A                    3929 	.db 0x0a
      004F66 0D                    3930 	.db 0x0d
      004F67 00                    3931 	.db 0x00
                                   3932 	.area CSEG    (CODE)
                                   3933 	.area CONST   (CODE)
      004F68                       3934 ___str_40:
      004F68 4D 41 54 43 48 20 2D  3935 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      004F86 0A                    3936 	.db 0x0a
      004F87 0D                    3937 	.db 0x0d
      004F88 00                    3938 	.db 0x00
                                   3939 	.area CSEG    (CODE)
                                   3940 	.area CONST   (CODE)
      004F89                       3941 ___str_41:
      004F89 45 52 52 4F 52 20 2D  3942 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      004F9F 0A                    3943 	.db 0x0a
      004FA0 0D                    3944 	.db 0x0d
      004FA1 00                    3945 	.db 0x00
                                   3946 	.area CSEG    (CODE)
                                   3947 	.area XINIT   (CODE)
                                   3948 	.area CABS    (ABS,CODE)
