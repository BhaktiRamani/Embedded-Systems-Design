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
      00308F 74 D2            [12]  622 	mov	a,#___str_0
      003091 C0 E0            [24]  623 	push	acc
      003093 74 44            [12]  624 	mov	a,#(___str_0 >> 8)
      003095 C0 E0            [24]  625 	push	acc
      003097 74 80            [12]  626 	mov	a,#0x80
      003099 C0 E0            [24]  627 	push	acc
      00309B 12 3A 70         [24]  628 	lcall	_printf
      00309E 15 81            [12]  629 	dec	sp
      0030A0 15 81            [12]  630 	dec	sp
      0030A2 15 81            [12]  631 	dec	sp
                                    632 ;	8051_i2c_eeprom.c:43: printf("║           I2C Memory Management System v1.0             ║\n\r");
      0030A4 74 84            [12]  633 	mov	a,#___str_1
      0030A6 C0 E0            [24]  634 	push	acc
      0030A8 74 45            [12]  635 	mov	a,#(___str_1 >> 8)
      0030AA C0 E0            [24]  636 	push	acc
      0030AC 74 80            [12]  637 	mov	a,#0x80
      0030AE C0 E0            [24]  638 	push	acc
      0030B0 12 3A 70         [24]  639 	lcall	_printf
      0030B3 15 81            [12]  640 	dec	sp
      0030B5 15 81            [12]  641 	dec	sp
      0030B7 15 81            [12]  642 	dec	sp
                                    643 ;	8051_i2c_eeprom.c:44: printf("╚════════════════════════════════════════════════════════╝\n\r");
      0030B9 74 C6            [12]  644 	mov	a,#___str_2
      0030BB C0 E0            [24]  645 	push	acc
      0030BD 74 45            [12]  646 	mov	a,#(___str_2 >> 8)
      0030BF C0 E0            [24]  647 	push	acc
      0030C1 74 80            [12]  648 	mov	a,#0x80
      0030C3 C0 E0            [24]  649 	push	acc
      0030C5 12 3A 70         [24]  650 	lcall	_printf
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
      0030CF 74 77            [12]  665 	mov	a,#___str_3
      0030D1 C0 E0            [24]  666 	push	acc
      0030D3 74 46            [12]  667 	mov	a,#(___str_3 >> 8)
      0030D5 C0 E0            [24]  668 	push	acc
      0030D7 74 80            [12]  669 	mov	a,#0x80
      0030D9 C0 E0            [24]  670 	push	acc
      0030DB 12 3A 70         [24]  671 	lcall	_printf
      0030DE 15 81            [12]  672 	dec	sp
      0030E0 15 81            [12]  673 	dec	sp
      0030E2 15 81            [12]  674 	dec	sp
                                    675 ;	8051_i2c_eeprom.c:51: printf("│  Command   │               Description                   │\n\r");
      0030E4 74 2D            [12]  676 	mov	a,#___str_4
      0030E6 C0 E0            [24]  677 	push	acc
      0030E8 74 47            [12]  678 	mov	a,#(___str_4 >> 8)
      0030EA C0 E0            [24]  679 	push	acc
      0030EC 74 80            [12]  680 	mov	a,#0x80
      0030EE C0 E0            [24]  681 	push	acc
      0030F0 12 3A 70         [24]  682 	lcall	_printf
      0030F3 15 81            [12]  683 	dec	sp
      0030F5 15 81            [12]  684 	dec	sp
      0030F7 15 81            [12]  685 	dec	sp
                                    686 ;	8051_i2c_eeprom.c:52: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      0030F9 74 72            [12]  687 	mov	a,#___str_5
      0030FB C0 E0            [24]  688 	push	acc
      0030FD 74 47            [12]  689 	mov	a,#(___str_5 >> 8)
      0030FF C0 E0            [24]  690 	push	acc
      003101 74 80            [12]  691 	mov	a,#0x80
      003103 C0 E0            [24]  692 	push	acc
      003105 12 3A 70         [24]  693 	lcall	_printf
      003108 15 81            [12]  694 	dec	sp
      00310A 15 81            [12]  695 	dec	sp
      00310C 15 81            [12]  696 	dec	sp
                                    697 ;	8051_i2c_eeprom.c:53: printf("│     R      │ Read from address                          │\n\r");
      00310E 74 26            [12]  698 	mov	a,#___str_6
      003110 C0 E0            [24]  699 	push	acc
      003112 74 48            [12]  700 	mov	a,#(___str_6 >> 8)
      003114 C0 E0            [24]  701 	push	acc
      003116 74 80            [12]  702 	mov	a,#0x80
      003118 C0 E0            [24]  703 	push	acc
      00311A 12 3A 70         [24]  704 	lcall	_printf
      00311D 15 81            [12]  705 	dec	sp
      00311F 15 81            [12]  706 	dec	sp
      003121 15 81            [12]  707 	dec	sp
                                    708 ;	8051_i2c_eeprom.c:54: printf("│     W      │ Write data to address                      │\n\r");
      003123 74 6A            [12]  709 	mov	a,#___str_7
      003125 C0 E0            [24]  710 	push	acc
      003127 74 48            [12]  711 	mov	a,#(___str_7 >> 8)
      003129 C0 E0            [24]  712 	push	acc
      00312B 74 80            [12]  713 	mov	a,#0x80
      00312D C0 E0            [24]  714 	push	acc
      00312F 12 3A 70         [24]  715 	lcall	_printf
      003132 15 81            [12]  716 	dec	sp
      003134 15 81            [12]  717 	dec	sp
      003136 15 81            [12]  718 	dec	sp
                                    719 ;	8051_i2c_eeprom.c:55: printf("│     H      │ Display hex dump                           │\n\r");
      003138 74 AE            [12]  720 	mov	a,#___str_8
      00313A C0 E0            [24]  721 	push	acc
      00313C 74 48            [12]  722 	mov	a,#(___str_8 >> 8)
      00313E C0 E0            [24]  723 	push	acc
      003140 74 80            [12]  724 	mov	a,#0x80
      003142 C0 E0            [24]  725 	push	acc
      003144 12 3A 70         [24]  726 	lcall	_printf
      003147 15 81            [12]  727 	dec	sp
      003149 15 81            [12]  728 	dec	sp
      00314B 15 81            [12]  729 	dec	sp
                                    730 ;	8051_i2c_eeprom.c:56: printf("│     X      │ Reset memory system                        │\n\r");
      00314D 74 F2            [12]  731 	mov	a,#___str_9
      00314F C0 E0            [24]  732 	push	acc
      003151 74 48            [12]  733 	mov	a,#(___str_9 >> 8)
      003153 C0 E0            [24]  734 	push	acc
      003155 74 80            [12]  735 	mov	a,#0x80
      003157 C0 E0            [24]  736 	push	acc
      003159 12 3A 70         [24]  737 	lcall	_printf
      00315C 15 81            [12]  738 	dec	sp
      00315E 15 81            [12]  739 	dec	sp
      003160 15 81            [12]  740 	dec	sp
                                    741 ;	8051_i2c_eeprom.c:57: printf("│     ?      │ Display this help menu                     │\n\r");
      003162 74 36            [12]  742 	mov	a,#___str_10
      003164 C0 E0            [24]  743 	push	acc
      003166 74 49            [12]  744 	mov	a,#(___str_10 >> 8)
      003168 C0 E0            [24]  745 	push	acc
      00316A 74 80            [12]  746 	mov	a,#0x80
      00316C C0 E0            [24]  747 	push	acc
      00316E 12 3A 70         [24]  748 	lcall	_printf
      003171 15 81            [12]  749 	dec	sp
      003173 15 81            [12]  750 	dec	sp
      003175 15 81            [12]  751 	dec	sp
                                    752 ;	8051_i2c_eeprom.c:58: printf("│     Q      │ Quit program                              │\n\r");
      003177 74 7A            [12]  753 	mov	a,#___str_11
      003179 C0 E0            [24]  754 	push	acc
      00317B 74 49            [12]  755 	mov	a,#(___str_11 >> 8)
      00317D C0 E0            [24]  756 	push	acc
      00317F 74 80            [12]  757 	mov	a,#0x80
      003181 C0 E0            [24]  758 	push	acc
      003183 12 3A 70         [24]  759 	lcall	_printf
      003186 15 81            [12]  760 	dec	sp
      003188 15 81            [12]  761 	dec	sp
      00318A 15 81            [12]  762 	dec	sp
                                    763 ;	8051_i2c_eeprom.c:59: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      00318C 74 BD            [12]  764 	mov	a,#___str_12
      00318E C0 E0            [24]  765 	push	acc
      003190 74 49            [12]  766 	mov	a,#(___str_12 >> 8)
      003192 C0 E0            [24]  767 	push	acc
      003194 74 80            [12]  768 	mov	a,#0x80
      003196 C0 E0            [24]  769 	push	acc
      003198 12 3A 70         [24]  770 	lcall	_printf
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
      0031AE 12 39 31         [24]  798 	lcall	_i2c_start
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
      0031C0 74 71            [12]  810 	mov	a,#___str_13
      0031C2 C0 E0            [24]  811 	push	acc
      0031C4 74 4A            [12]  812 	mov	a,#(___str_13 >> 8)
      0031C6 C0 E0            [24]  813 	push	acc
      0031C8 74 80            [12]  814 	mov	a,#0x80
      0031CA C0 E0            [24]  815 	push	acc
      0031CC 12 3A 70         [24]  816 	lcall	_printf
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
      0031EA 74 78            [12]  834 	mov	a,#___str_14
      0031EC C0 E0            [24]  835 	push	acc
      0031EE 74 4A            [12]  836 	mov	a,#(___str_14 >> 8)
      0031F0 C0 E0            [24]  837 	push	acc
      0031F2 74 80            [12]  838 	mov	a,#0x80
      0031F4 C0 E0            [24]  839 	push	acc
      0031F6 12 3A 70         [24]  840 	lcall	_printf
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
      003225 74 EA            [12]  865 	mov	a,#___str_15
      003227 C0 E0            [24]  866 	push	acc
      003229 74 4A            [12]  867 	mov	a,#(___str_15 >> 8)
      00322B C0 E0            [24]  868 	push	acc
      00322D 74 80            [12]  869 	mov	a,#0x80
      00322F C0 E0            [24]  870 	push	acc
      003231 12 3A 70         [24]  871 	lcall	_printf
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
      00324F 74 1E            [12]  890 	mov	a,#___str_16
      003251 C0 E0            [24]  891 	push	acc
      003253 74 4B            [12]  892 	mov	a,#(___str_16 >> 8)
      003255 C0 E0            [24]  893 	push	acc
      003257 74 80            [12]  894 	mov	a,#0x80
      003259 C0 E0            [24]  895 	push	acc
      00325B 12 3A 70         [24]  896 	lcall	_printf
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
      003273 74 92            [12]  909 	mov	a,#___str_17
      003275 C0 E0            [24]  910 	push	acc
      003277 74 4B            [12]  911 	mov	a,#(___str_17 >> 8)
      003279 C0 E0            [24]  912 	push	acc
      00327B 74 80            [12]  913 	mov	a,#0x80
      00327D C0 E0            [24]  914 	push	acc
      00327F 12 3A 70         [24]  915 	lcall	_printf
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
      00329C 74 BD            [12]  936 	mov	a,#___str_18
      00329E C0 E0            [24]  937 	push	acc
      0032A0 74 4B            [12]  938 	mov	a,#(___str_18 >> 8)
      0032A2 C0 E0            [24]  939 	push	acc
      0032A4 74 80            [12]  940 	mov	a,#0x80
      0032A6 C0 E0            [24]  941 	push	acc
      0032A8 12 3A 70         [24]  942 	lcall	_printf
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
      0032B4 74 CD            [12]  963 	mov	a,#___str_19
      0032B6 C0 E0            [24]  964 	push	acc
      0032B8 74 4B            [12]  965 	mov	a,#(___str_19 >> 8)
      0032BA C0 E0            [24]  966 	push	acc
      0032BC 74 80            [12]  967 	mov	a,#0x80
      0032BE C0 E0            [24]  968 	push	acc
      0032C0 12 3A 70         [24]  969 	lcall	_printf
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
      0032DA 74 FE            [12]  984 	mov	a,#___str_20
      0032DC C0 E0            [24]  985 	push	acc
      0032DE 74 4B            [12]  986 	mov	a,#(___str_20 >> 8)
      0032E0 C0 E0            [24]  987 	push	acc
      0032E2 74 80            [12]  988 	mov	a,#0x80
      0032E4 C0 E0            [24]  989 	push	acc
      0032E6 12 3A 70         [24]  990 	lcall	_printf
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
      003438 74 01            [12] 1239 	mov	a,#___str_21
      00343A C0 E0            [24] 1240 	push	acc
      00343C 74 4C            [12] 1241 	mov	a,#(___str_21 >> 8)
      00343E C0 E0            [24] 1242 	push	acc
      003440 74 80            [12] 1243 	mov	a,#0x80
      003442 C0 E0            [24] 1244 	push	acc
      003444 12 3A 70         [24] 1245 	lcall	_printf
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
      00345A 74 21            [12] 1259 	mov	a,#___str_22
      00345C C0 E0            [24] 1260 	push	acc
      00345E 74 4C            [12] 1261 	mov	a,#(___str_22 >> 8)
      003460 C0 E0            [24] 1262 	push	acc
      003462 74 80            [12] 1263 	mov	a,#0x80
      003464 C0 E0            [24] 1264 	push	acc
      003466 12 3A 70         [24] 1265 	lcall	_printf
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
      003478 74 38            [12] 1292 	mov	a,#___str_23
      00347A C0 E0            [24] 1293 	push	acc
      00347C 74 4C            [12] 1294 	mov	a,#(___str_23 >> 8)
      00347E C0 E0            [24] 1295 	push	acc
      003480 74 80            [12] 1296 	mov	a,#0x80
      003482 C0 E0            [24] 1297 	push	acc
      003484 12 3A 70         [24] 1298 	lcall	_printf
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
      00349E 74 FE            [12] 1313 	mov	a,#___str_20
      0034A0 C0 E0            [24] 1314 	push	acc
      0034A2 74 4B            [12] 1315 	mov	a,#(___str_20 >> 8)
      0034A4 C0 E0            [24] 1316 	push	acc
      0034A6 74 80            [12] 1317 	mov	a,#0x80
      0034A8 C0 E0            [24] 1318 	push	acc
      0034AA 12 3A 70         [24] 1319 	lcall	_printf
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
      0035B2 74 66            [12] 1509 	mov	a,#___str_24
      0035B4 C0 E0            [24] 1510 	push	acc
      0035B6 74 4C            [12] 1511 	mov	a,#(___str_24 >> 8)
      0035B8 C0 E0            [24] 1512 	push	acc
      0035BA 74 80            [12] 1513 	mov	a,#0x80
      0035BC C0 E0            [24] 1514 	push	acc
      0035BE 12 3A 70         [24] 1515 	lcall	_printf
      0035C1 E5 81            [12] 1516 	mov	a,sp
      0035C3 24 FB            [12] 1517 	add	a,#0xfb
      0035C5 F5 81            [12] 1518 	mov	sp,a
      0035C7 D0 07            [24] 1519 	pop	ar7
                                   1520 ;	8051_i2c_eeprom.c:206: if(data > 254) 
      0035C9 EF               [12] 1521 	mov	a,r7
      0035CA 24 01            [12] 1522 	add	a,#0xff - 0xfe
      0035CC 50 19            [24] 1523 	jnc	00127$
                                   1524 ;	8051_i2c_eeprom.c:208: printf("Data out of Range\n\r");
      0035CE 74 83            [12] 1525 	mov	a,#___str_25
      0035D0 C0 E0            [24] 1526 	push	acc
      0035D2 74 4C            [12] 1527 	mov	a,#(___str_25 >> 8)
      0035D4 C0 E0            [24] 1528 	push	acc
      0035D6 74 80            [12] 1529 	mov	a,#0x80
      0035D8 C0 E0            [24] 1530 	push	acc
      0035DA 12 3A 70         [24] 1531 	lcall	_printf
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
      0035F5 12 39 31         [24] 1563 	lcall	_i2c_start
                                   1564 ;	8051_i2c_eeprom.c:221: if(!i2c_write(EEPROM_ID | WRITE)) {
      0035F8 75 82 A0         [24] 1565 	mov	dpl,#0xa0
      0035FB 12 38 2F         [24] 1566 	lcall	_i2c_write
      0035FE E5 82            [12] 1567 	mov	a,dpl
      003600 85 83 F0         [24] 1568 	mov	b,dph
      003603 45 F0            [12] 1569 	orl	a,b
      003605 70 1C            [24] 1570 	jnz	00102$
                                   1571 ;	8051_i2c_eeprom.c:222: printf("Error: No ACK for device address (write)\n\r");
      003607 74 97            [12] 1572 	mov	a,#___str_26
      003609 C0 E0            [24] 1573 	push	acc
      00360B 74 4C            [12] 1574 	mov	a,#(___str_26 >> 8)
      00360D C0 E0            [24] 1575 	push	acc
      00360F 74 80            [12] 1576 	mov	a,#0x80
      003611 C0 E0            [24] 1577 	push	acc
      003613 12 3A 70         [24] 1578 	lcall	_printf
      003616 15 81            [12] 1579 	dec	sp
      003618 15 81            [12] 1580 	dec	sp
      00361A 15 81            [12] 1581 	dec	sp
                                   1582 ;	8051_i2c_eeprom.c:223: i2c_stop();
      00361C 12 39 46         [24] 1583 	lcall	_i2c_stop
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
      003633 12 38 2F         [24] 1599 	lcall	_i2c_write
      003636 E5 82            [12] 1600 	mov	a,dpl
      003638 85 83 F0         [24] 1601 	mov	b,dph
      00363B D0 06            [24] 1602 	pop	ar6
      00363D D0 07            [24] 1603 	pop	ar7
      00363F 45 F0            [12] 1604 	orl	a,b
      003641 70 1C            [24] 1605 	jnz	00104$
                                   1606 ;	8051_i2c_eeprom.c:229: printf("Error: No ACK for memory address\n\r");
      003643 74 C2            [12] 1607 	mov	a,#___str_27
      003645 C0 E0            [24] 1608 	push	acc
      003647 74 4C            [12] 1609 	mov	a,#(___str_27 >> 8)
      003649 C0 E0            [24] 1610 	push	acc
      00364B 74 80            [12] 1611 	mov	a,#0x80
      00364D C0 E0            [24] 1612 	push	acc
      00364F 12 3A 70         [24] 1613 	lcall	_printf
      003652 15 81            [12] 1614 	dec	sp
      003654 15 81            [12] 1615 	dec	sp
      003656 15 81            [12] 1616 	dec	sp
                                   1617 ;	8051_i2c_eeprom.c:230: i2c_stop();
      003658 12 39 46         [24] 1618 	lcall	_i2c_stop
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
      00366C 12 38 2F         [24] 1631 	lcall	_i2c_write
      00366F E5 82            [12] 1632 	mov	a,dpl
      003671 85 83 F0         [24] 1633 	mov	b,dph
      003674 D0 05            [24] 1634 	pop	ar5
      003676 D0 06            [24] 1635 	pop	ar6
      003678 D0 07            [24] 1636 	pop	ar7
      00367A 45 F0            [12] 1637 	orl	a,b
      00367C 70 1C            [24] 1638 	jnz	00106$
                                   1639 ;	8051_i2c_eeprom.c:236: printf("Error: No ACK for data\n\r");
      00367E 74 E5            [12] 1640 	mov	a,#___str_28
      003680 C0 E0            [24] 1641 	push	acc
      003682 74 4C            [12] 1642 	mov	a,#(___str_28 >> 8)
      003684 C0 E0            [24] 1643 	push	acc
      003686 74 80            [12] 1644 	mov	a,#0x80
      003688 C0 E0            [24] 1645 	push	acc
      00368A 12 3A 70         [24] 1646 	lcall	_printf
      00368D 15 81            [12] 1647 	dec	sp
      00368F 15 81            [12] 1648 	dec	sp
      003691 15 81            [12] 1649 	dec	sp
                                   1650 ;	8051_i2c_eeprom.c:237: i2c_stop();
      003693 12 39 46         [24] 1651 	lcall	_i2c_stop
                                   1652 ;	8051_i2c_eeprom.c:238: return 0;
      003696 90 00 00         [24] 1653 	mov	dptr,#0x0000
      003699 22               [24] 1654 	ret
      00369A                       1655 00106$:
                                   1656 ;	8051_i2c_eeprom.c:241: i2c_stop();
      00369A C0 07            [24] 1657 	push	ar7
      00369C C0 06            [24] 1658 	push	ar6
      00369E C0 05            [24] 1659 	push	ar5
      0036A0 12 39 46         [24] 1660 	lcall	_i2c_stop
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
      0036C2 12 39 53         [24] 1681 	lcall	_i2c_delay
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
      0036E0 74 FE            [12] 1699 	mov	a,#___str_29
      0036E2 C0 E0            [24] 1700 	push	acc
      0036E4 74 4C            [12] 1701 	mov	a,#(___str_29 >> 8)
      0036E6 C0 E0            [24] 1702 	push	acc
      0036E8 74 80            [12] 1703 	mov	a,#0x80
      0036EA C0 E0            [24] 1704 	push	acc
      0036EC 12 3A 70         [24] 1705 	lcall	_printf
      0036EF E5 81            [12] 1706 	mov	a,sp
      0036F1 24 F9            [12] 1707 	add	a,#0xf9
      0036F3 F5 81            [12] 1708 	mov	sp,a
                                   1709 ;	8051_i2c_eeprom.c:248: printf("│ Write successful!                             │\n\r");
      0036F5 74 33            [12] 1710 	mov	a,#___str_30
      0036F7 C0 E0            [24] 1711 	push	acc
      0036F9 74 4D            [12] 1712 	mov	a,#(___str_30 >> 8)
      0036FB C0 E0            [24] 1713 	push	acc
      0036FD 74 80            [12] 1714 	mov	a,#0x80
      0036FF C0 E0            [24] 1715 	push	acc
      003701 12 3A 70         [24] 1716 	lcall	_printf
      003704 15 81            [12] 1717 	dec	sp
      003706 15 81            [12] 1718 	dec	sp
      003708 15 81            [12] 1719 	dec	sp
                                   1720 ;	8051_i2c_eeprom.c:249: printf("└───────────────────────────────────────────────┘\n\r");
      00370A 74 6B            [12] 1721 	mov	a,#___str_31
      00370C C0 E0            [24] 1722 	push	acc
      00370E 74 4D            [12] 1723 	mov	a,#(___str_31 >> 8)
      003710 C0 E0            [24] 1724 	push	acc
      003712 74 80            [12] 1725 	mov	a,#0x80
      003714 C0 E0            [24] 1726 	push	acc
      003716 12 3A 70         [24] 1727 	lcall	_printf
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
      00372E 12 39 31         [24] 1754 	lcall	_i2c_start
                                   1755 ;	8051_i2c_eeprom.c:263: if(!i2c_write(EEPROM_ID | WRITE)) {
      003731 75 82 A0         [24] 1756 	mov	dpl,#0xa0
      003734 12 38 2F         [24] 1757 	lcall	_i2c_write
      003737 E5 82            [12] 1758 	mov	a,dpl
      003739 85 83 F0         [24] 1759 	mov	b,dph
      00373C 45 F0            [12] 1760 	orl	a,b
      00373E 70 1C            [24] 1761 	jnz	00102$
                                   1762 ;	8051_i2c_eeprom.c:264: printf("Error: No ACK for device address (write mode)\n\r");
      003740 74 01            [12] 1763 	mov	a,#___str_32
      003742 C0 E0            [24] 1764 	push	acc
      003744 74 4E            [12] 1765 	mov	a,#(___str_32 >> 8)
      003746 C0 E0            [24] 1766 	push	acc
      003748 74 80            [12] 1767 	mov	a,#0x80
      00374A C0 E0            [24] 1768 	push	acc
      00374C 12 3A 70         [24] 1769 	lcall	_printf
      00374F 15 81            [12] 1770 	dec	sp
      003751 15 81            [12] 1771 	dec	sp
      003753 15 81            [12] 1772 	dec	sp
                                   1773 ;	8051_i2c_eeprom.c:265: i2c_stop();
      003755 12 39 46         [24] 1774 	lcall	_i2c_stop
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
      00376C 12 38 2F         [24] 1790 	lcall	_i2c_write
      00376F E5 82            [12] 1791 	mov	a,dpl
      003771 85 83 F0         [24] 1792 	mov	b,dph
      003774 D0 06            [24] 1793 	pop	ar6
      003776 D0 07            [24] 1794 	pop	ar7
      003778 45 F0            [12] 1795 	orl	a,b
      00377A 70 1C            [24] 1796 	jnz	00104$
                                   1797 ;	8051_i2c_eeprom.c:271: printf("Error: No ACK for memory address\n\r");
      00377C 74 C2            [12] 1798 	mov	a,#___str_27
      00377E C0 E0            [24] 1799 	push	acc
      003780 74 4C            [12] 1800 	mov	a,#(___str_27 >> 8)
      003782 C0 E0            [24] 1801 	push	acc
      003784 74 80            [12] 1802 	mov	a,#0x80
      003786 C0 E0            [24] 1803 	push	acc
      003788 12 3A 70         [24] 1804 	lcall	_printf
      00378B 15 81            [12] 1805 	dec	sp
      00378D 15 81            [12] 1806 	dec	sp
      00378F 15 81            [12] 1807 	dec	sp
                                   1808 ;	8051_i2c_eeprom.c:272: i2c_stop();
      003791 12 39 46         [24] 1809 	lcall	_i2c_stop
                                   1810 ;	8051_i2c_eeprom.c:273: return -1;
      003794 90 FF FF         [24] 1811 	mov	dptr,#0xffff
      003797 22               [24] 1812 	ret
      003798                       1813 00104$:
                                   1814 ;	8051_i2c_eeprom.c:277: i2c_start();
      003798 C0 07            [24] 1815 	push	ar7
      00379A C0 06            [24] 1816 	push	ar6
      00379C 12 39 31         [24] 1817 	lcall	_i2c_start
                                   1818 ;	8051_i2c_eeprom.c:280: if(!i2c_write(EEPROM_ID | READ)) {
      00379F 75 82 A1         [24] 1819 	mov	dpl,#0xa1
      0037A2 12 38 2F         [24] 1820 	lcall	_i2c_write
      0037A5 E5 82            [12] 1821 	mov	a,dpl
      0037A7 85 83 F0         [24] 1822 	mov	b,dph
      0037AA D0 06            [24] 1823 	pop	ar6
      0037AC D0 07            [24] 1824 	pop	ar7
      0037AE 45 F0            [12] 1825 	orl	a,b
      0037B0 70 1C            [24] 1826 	jnz	00106$
                                   1827 ;	8051_i2c_eeprom.c:281: printf("Error: No ACK for device address (read mode)\n\r");
      0037B2 74 31            [12] 1828 	mov	a,#___str_33
      0037B4 C0 E0            [24] 1829 	push	acc
      0037B6 74 4E            [12] 1830 	mov	a,#(___str_33 >> 8)
      0037B8 C0 E0            [24] 1831 	push	acc
      0037BA 74 80            [12] 1832 	mov	a,#0x80
      0037BC C0 E0            [24] 1833 	push	acc
      0037BE 12 3A 70         [24] 1834 	lcall	_printf
      0037C1 15 81            [12] 1835 	dec	sp
      0037C3 15 81            [12] 1836 	dec	sp
      0037C5 15 81            [12] 1837 	dec	sp
                                   1838 ;	8051_i2c_eeprom.c:282: i2c_stop();
      0037C7 12 39 46         [24] 1839 	lcall	_i2c_stop
                                   1840 ;	8051_i2c_eeprom.c:283: return -1;
      0037CA 90 FF FF         [24] 1841 	mov	dptr,#0xffff
      0037CD 22               [24] 1842 	ret
      0037CE                       1843 00106$:
                                   1844 ;	8051_i2c_eeprom.c:287: result = i2c_read(0);  // 0 means send NACK
      0037CE 90 00 00         [24] 1845 	mov	dptr,#0x0000
      0037D1 C0 07            [24] 1846 	push	ar7
      0037D3 C0 06            [24] 1847 	push	ar6
      0037D5 12 38 AC         [24] 1848 	lcall	_i2c_read
      0037D8 AC 82            [24] 1849 	mov	r4,dpl
      0037DA D0 06            [24] 1850 	pop	ar6
      0037DC D0 07            [24] 1851 	pop	ar7
                                   1852 ;	8051_i2c_eeprom.c:288: printf("│ Reading from Adress: 0x%03X Data: 0x%02X                    \n\r", address);
      0037DE C0 04            [24] 1853 	push	ar4
      0037E0 C0 06            [24] 1854 	push	ar6
      0037E2 C0 07            [24] 1855 	push	ar7
      0037E4 74 60            [12] 1856 	mov	a,#___str_34
      0037E6 C0 E0            [24] 1857 	push	acc
      0037E8 74 4E            [12] 1858 	mov	a,#(___str_34 >> 8)
      0037EA C0 E0            [24] 1859 	push	acc
      0037EC 74 80            [12] 1860 	mov	a,#0x80
      0037EE C0 E0            [24] 1861 	push	acc
      0037F0 12 3A 70         [24] 1862 	lcall	_printf
      0037F3 E5 81            [12] 1863 	mov	a,sp
      0037F5 24 FB            [12] 1864 	add	a,#0xfb
      0037F7 F5 81            [12] 1865 	mov	sp,a
                                   1866 ;	8051_i2c_eeprom.c:289: printf("│ Read successful !                  │\n\r");
      0037F9 74 A3            [12] 1867 	mov	a,#___str_35
      0037FB C0 E0            [24] 1868 	push	acc
      0037FD 74 4E            [12] 1869 	mov	a,#(___str_35 >> 8)
      0037FF C0 E0            [24] 1870 	push	acc
      003801 74 80            [12] 1871 	mov	a,#0x80
      003803 C0 E0            [24] 1872 	push	acc
      003805 12 3A 70         [24] 1873 	lcall	_printf
      003808 15 81            [12] 1874 	dec	sp
      00380A 15 81            [12] 1875 	dec	sp
      00380C 15 81            [12] 1876 	dec	sp
                                   1877 ;	8051_i2c_eeprom.c:290: printf("└───────────────────────────────────────────────┘\n\r");
      00380E 74 6B            [12] 1878 	mov	a,#___str_31
      003810 C0 E0            [24] 1879 	push	acc
      003812 74 4D            [12] 1880 	mov	a,#(___str_31 >> 8)
      003814 C0 E0            [24] 1881 	push	acc
      003816 74 80            [12] 1882 	mov	a,#0x80
      003818 C0 E0            [24] 1883 	push	acc
      00381A 12 3A 70         [24] 1884 	lcall	_printf
      00381D 15 81            [12] 1885 	dec	sp
      00381F 15 81            [12] 1886 	dec	sp
      003821 15 81            [12] 1887 	dec	sp
                                   1888 ;	8051_i2c_eeprom.c:291: i2c_stop();
      003823 12 39 46         [24] 1889 	lcall	_i2c_stop
      003826 D0 04            [24] 1890 	pop	ar4
                                   1891 ;	8051_i2c_eeprom.c:292: return result;
      003828 7F 00            [12] 1892 	mov	r7,#0x00
      00382A 8C 82            [24] 1893 	mov	dpl,r4
      00382C 8F 83            [24] 1894 	mov	dph,r7
                                   1895 ;	8051_i2c_eeprom.c:293: }
      00382E 22               [24] 1896 	ret
                                   1897 ;------------------------------------------------------------
                                   1898 ;Allocation info for local variables in function 'i2c_write'
                                   1899 ;------------------------------------------------------------
                                   1900 ;data                      Allocated with name '_i2c_write_data_65536_92'
                                   1901 ;i                         Allocated with name '_i2c_write_i_65536_93'
                                   1902 ;------------------------------------------------------------
                                   1903 ;	8051_i2c_eeprom.c:296: int i2c_write(unsigned char data)
                                   1904 ;	-----------------------------------------
                                   1905 ;	 function i2c_write
                                   1906 ;	-----------------------------------------
      00382F                       1907 _i2c_write:
      00382F E5 82            [12] 1908 	mov	a,dpl
      003831 90 04 14         [24] 1909 	mov	dptr,#_i2c_write_data_65536_92
      003834 F0               [24] 1910 	movx	@dptr,a
                                   1911 ;	8051_i2c_eeprom.c:300: for(i=0;i<=7;i++)
      003835 7E 00            [12] 1912 	mov	r6,#0x00
      003837 7F 00            [12] 1913 	mov	r7,#0x00
      003839                       1914 00104$:
                                   1915 ;	8051_i2c_eeprom.c:302: SDA = (data & 0x80) ? 1 : 0;    //msb first
      003839 90 04 14         [24] 1916 	mov	dptr,#_i2c_write_data_65536_92
      00383C E0               [24] 1917 	movx	a,@dptr
      00383D FD               [12] 1918 	mov	r5,a
      00383E 23               [12] 1919 	rl	a
      00383F 54 01            [12] 1920 	anl	a,#0x01
      003841 24 FF            [12] 1921 	add	a,#0xff
      003843 92 94            [24] 1922 	mov	_P1_4,c
                                   1923 ;	8051_i2c_eeprom.c:303: i2c_delay();        // Setup time for data
      003845 C0 07            [24] 1924 	push	ar7
      003847 C0 06            [24] 1925 	push	ar6
      003849 C0 05            [24] 1926 	push	ar5
      00384B 12 39 53         [24] 1927 	lcall	_i2c_delay
                                   1928 ;	8051_i2c_eeprom.c:304: SCL=1;
                                   1929 ;	assignBit
      00384E D2 93            [12] 1930 	setb	_P1_3
                                   1931 ;	8051_i2c_eeprom.c:305: i2c_delay();        // Hold time for clock
      003850 12 39 53         [24] 1932 	lcall	_i2c_delay
      003853 D0 05            [24] 1933 	pop	ar5
      003855 D0 06            [24] 1934 	pop	ar6
      003857 D0 07            [24] 1935 	pop	ar7
                                   1936 ;	8051_i2c_eeprom.c:306: SCL=0;
                                   1937 ;	assignBit
      003859 C2 93            [12] 1938 	clr	_P1_3
                                   1939 ;	8051_i2c_eeprom.c:307: data = data << 1;
      00385B ED               [12] 1940 	mov	a,r5
      00385C 2D               [12] 1941 	add	a,r5
      00385D 90 04 14         [24] 1942 	mov	dptr,#_i2c_write_data_65536_92
      003860 F0               [24] 1943 	movx	@dptr,a
                                   1944 ;	8051_i2c_eeprom.c:300: for(i=0;i<=7;i++)
      003861 0E               [12] 1945 	inc	r6
      003862 BE 00 01         [24] 1946 	cjne	r6,#0x00,00121$
      003865 0F               [12] 1947 	inc	r7
      003866                       1948 00121$:
      003866 C3               [12] 1949 	clr	c
      003867 74 07            [12] 1950 	mov	a,#0x07
      003869 9E               [12] 1951 	subb	a,r6
      00386A E4               [12] 1952 	clr	a
      00386B 9F               [12] 1953 	subb	a,r7
      00386C 50 CB            [24] 1954 	jnc	00104$
                                   1955 ;	8051_i2c_eeprom.c:311: SDA = 1;            // Release SDA for slave
                                   1956 ;	assignBit
      00386E D2 94            [12] 1957 	setb	_P1_4
                                   1958 ;	8051_i2c_eeprom.c:312: SCL = 1;            // 9th clock pulse for ACK
                                   1959 ;	assignBit
      003870 D2 93            [12] 1960 	setb	_P1_3
                                   1961 ;	8051_i2c_eeprom.c:313: i2c_delay();
      003872 12 39 53         [24] 1962 	lcall	_i2c_delay
                                   1963 ;	8051_i2c_eeprom.c:314: if(SDA == 1)        // If SDA is still high, no ACK received
      003875 30 94 19         [24] 1964 	jnb	_P1_4,00103$
                                   1965 ;	8051_i2c_eeprom.c:317: printf("ACK DID NOT ARRIVE\n\r");
      003878 74 D0            [12] 1966 	mov	a,#___str_36
      00387A C0 E0            [24] 1967 	push	acc
      00387C 74 4E            [12] 1968 	mov	a,#(___str_36 >> 8)
      00387E C0 E0            [24] 1969 	push	acc
      003880 74 80            [12] 1970 	mov	a,#0x80
      003882 C0 E0            [24] 1971 	push	acc
      003884 12 3A 70         [24] 1972 	lcall	_printf
      003887 15 81            [12] 1973 	dec	sp
      003889 15 81            [12] 1974 	dec	sp
      00388B 15 81            [12] 1975 	dec	sp
                                   1976 ;	8051_i2c_eeprom.c:318: return 0;       // Error
      00388D 90 00 00         [24] 1977 	mov	dptr,#0x0000
      003890 22               [24] 1978 	ret
      003891                       1979 00103$:
                                   1980 ;	8051_i2c_eeprom.c:320: SCL = 0;
                                   1981 ;	assignBit
      003891 C2 93            [12] 1982 	clr	_P1_3
                                   1983 ;	8051_i2c_eeprom.c:321: printf("Transmission successfull\n\r");
      003893 74 E5            [12] 1984 	mov	a,#___str_37
      003895 C0 E0            [24] 1985 	push	acc
      003897 74 4E            [12] 1986 	mov	a,#(___str_37 >> 8)
      003899 C0 E0            [24] 1987 	push	acc
      00389B 74 80            [12] 1988 	mov	a,#0x80
      00389D C0 E0            [24] 1989 	push	acc
      00389F 12 3A 70         [24] 1990 	lcall	_printf
      0038A2 15 81            [12] 1991 	dec	sp
      0038A4 15 81            [12] 1992 	dec	sp
      0038A6 15 81            [12] 1993 	dec	sp
                                   1994 ;	8051_i2c_eeprom.c:322: return 1;           // Success
      0038A8 90 00 01         [24] 1995 	mov	dptr,#0x0001
                                   1996 ;	8051_i2c_eeprom.c:324: }
      0038AB 22               [24] 1997 	ret
                                   1998 ;------------------------------------------------------------
                                   1999 ;Allocation info for local variables in function 'i2c_read'
                                   2000 ;------------------------------------------------------------
                                   2001 ;ACK                       Allocated with name '_i2c_read_ACK_65536_97'
                                   2002 ;buff                      Allocated with name '_i2c_read_buff_65536_98'
                                   2003 ;i                         Allocated with name '_i2c_read_i_131072_99'
                                   2004 ;------------------------------------------------------------
                                   2005 ;	8051_i2c_eeprom.c:325: int i2c_read(int ACK)
                                   2006 ;	-----------------------------------------
                                   2007 ;	 function i2c_read
                                   2008 ;	-----------------------------------------
      0038AC                       2009 _i2c_read:
      0038AC AF 83            [24] 2010 	mov	r7,dph
      0038AE E5 82            [12] 2011 	mov	a,dpl
      0038B0 90 04 15         [24] 2012 	mov	dptr,#_i2c_read_ACK_65536_97
      0038B3 F0               [24] 2013 	movx	@dptr,a
      0038B4 EF               [12] 2014 	mov	a,r7
      0038B5 A3               [24] 2015 	inc	dptr
      0038B6 F0               [24] 2016 	movx	@dptr,a
                                   2017 ;	8051_i2c_eeprom.c:327: unsigned char buff=0;
      0038B7 90 04 17         [24] 2018 	mov	dptr,#_i2c_read_buff_65536_98
      0038BA E4               [12] 2019 	clr	a
      0038BB F0               [24] 2020 	movx	@dptr,a
                                   2021 ;	8051_i2c_eeprom.c:328: SCL = 0;
                                   2022 ;	assignBit
      0038BC C2 93            [12] 2023 	clr	_P1_3
                                   2024 ;	8051_i2c_eeprom.c:329: for(int i=0;i<8;i++)
      0038BE 7E 00            [12] 2025 	mov	r6,#0x00
      0038C0 7F 00            [12] 2026 	mov	r7,#0x00
      0038C2                       2027 00103$:
      0038C2 C3               [12] 2028 	clr	c
      0038C3 EE               [12] 2029 	mov	a,r6
      0038C4 94 08            [12] 2030 	subb	a,#0x08
      0038C6 EF               [12] 2031 	mov	a,r7
      0038C7 64 80            [12] 2032 	xrl	a,#0x80
      0038C9 94 80            [12] 2033 	subb	a,#0x80
      0038CB 50 40            [24] 2034 	jnc	00101$
                                   2035 ;	8051_i2c_eeprom.c:331: SCL = 1;
                                   2036 ;	assignBit
      0038CD D2 93            [12] 2037 	setb	_P1_3
                                   2038 ;	8051_i2c_eeprom.c:332: i2c_delay();
      0038CF C0 07            [24] 2039 	push	ar7
      0038D1 C0 06            [24] 2040 	push	ar6
      0038D3 12 39 53         [24] 2041 	lcall	_i2c_delay
      0038D6 D0 06            [24] 2042 	pop	ar6
      0038D8 D0 07            [24] 2043 	pop	ar7
                                   2044 ;	8051_i2c_eeprom.c:333: buff |= (SDA << (7 - i));
      0038DA A2 94            [12] 2045 	mov	c,_P1_4
      0038DC E4               [12] 2046 	clr	a
      0038DD 33               [12] 2047 	rlc	a
      0038DE FD               [12] 2048 	mov	r5,a
      0038DF 8E 04            [24] 2049 	mov	ar4,r6
      0038E1 74 07            [12] 2050 	mov	a,#0x07
      0038E3 C3               [12] 2051 	clr	c
      0038E4 9C               [12] 2052 	subb	a,r4
      0038E5 FC               [12] 2053 	mov	r4,a
      0038E6 8C F0            [24] 2054 	mov	b,r4
      0038E8 05 F0            [12] 2055 	inc	b
      0038EA ED               [12] 2056 	mov	a,r5
      0038EB 80 02            [24] 2057 	sjmp	00119$
      0038ED                       2058 00117$:
      0038ED 25 E0            [12] 2059 	add	a,acc
      0038EF                       2060 00119$:
      0038EF D5 F0 FB         [24] 2061 	djnz	b,00117$
      0038F2 FC               [12] 2062 	mov	r4,a
      0038F3 90 04 17         [24] 2063 	mov	dptr,#_i2c_read_buff_65536_98
      0038F6 E0               [24] 2064 	movx	a,@dptr
      0038F7 4C               [12] 2065 	orl	a,r4
      0038F8 F0               [24] 2066 	movx	@dptr,a
                                   2067 ;	8051_i2c_eeprom.c:334: i2c_delay();
      0038F9 C0 07            [24] 2068 	push	ar7
      0038FB C0 06            [24] 2069 	push	ar6
      0038FD 12 39 53         [24] 2070 	lcall	_i2c_delay
      003900 D0 06            [24] 2071 	pop	ar6
      003902 D0 07            [24] 2072 	pop	ar7
                                   2073 ;	8051_i2c_eeprom.c:335: SCL=0;
                                   2074 ;	assignBit
      003904 C2 93            [12] 2075 	clr	_P1_3
                                   2076 ;	8051_i2c_eeprom.c:329: for(int i=0;i<8;i++)
      003906 0E               [12] 2077 	inc	r6
      003907 BE 00 B8         [24] 2078 	cjne	r6,#0x00,00103$
      00390A 0F               [12] 2079 	inc	r7
      00390B 80 B5            [24] 2080 	sjmp	00103$
      00390D                       2081 00101$:
                                   2082 ;	8051_i2c_eeprom.c:339: SDA = !ACK;         // ACK = 0, NACK = 1
      00390D 90 04 15         [24] 2083 	mov	dptr,#_i2c_read_ACK_65536_97
      003910 E0               [24] 2084 	movx	a,@dptr
      003911 FE               [12] 2085 	mov	r6,a
      003912 A3               [24] 2086 	inc	dptr
      003913 E0               [24] 2087 	movx	a,@dptr
      003914 4E               [12] 2088 	orl	a,r6
      003915 B4 01 00         [24] 2089 	cjne	a,#0x01,00121$
      003918                       2090 00121$:
      003918 E4               [12] 2091 	clr	a
      003919 33               [12] 2092 	rlc	a
      00391A 24 FF            [12] 2093 	add	a,#0xff
      00391C 92 94            [24] 2094 	mov	_P1_4,c
                                   2095 ;	8051_i2c_eeprom.c:340: SCL = 1;
                                   2096 ;	assignBit
      00391E D2 93            [12] 2097 	setb	_P1_3
                                   2098 ;	8051_i2c_eeprom.c:341: i2c_delay();
      003920 12 39 53         [24] 2099 	lcall	_i2c_delay
                                   2100 ;	8051_i2c_eeprom.c:342: SCL = 0;
                                   2101 ;	assignBit
      003923 C2 93            [12] 2102 	clr	_P1_3
                                   2103 ;	8051_i2c_eeprom.c:344: return buff;
      003925 90 04 17         [24] 2104 	mov	dptr,#_i2c_read_buff_65536_98
      003928 E0               [24] 2105 	movx	a,@dptr
      003929 FF               [12] 2106 	mov	r7,a
      00392A 7E 00            [12] 2107 	mov	r6,#0x00
      00392C 8F 82            [24] 2108 	mov	dpl,r7
      00392E 8E 83            [24] 2109 	mov	dph,r6
                                   2110 ;	8051_i2c_eeprom.c:345: }
      003930 22               [24] 2111 	ret
                                   2112 ;------------------------------------------------------------
                                   2113 ;Allocation info for local variables in function 'i2c_start'
                                   2114 ;------------------------------------------------------------
                                   2115 ;	8051_i2c_eeprom.c:346: void i2c_start(void)
                                   2116 ;	-----------------------------------------
                                   2117 ;	 function i2c_start
                                   2118 ;	-----------------------------------------
      003931                       2119 _i2c_start:
                                   2120 ;	8051_i2c_eeprom.c:348: i2c_delay();
      003931 12 39 53         [24] 2121 	lcall	_i2c_delay
                                   2122 ;	8051_i2c_eeprom.c:349: SDA = 1;
                                   2123 ;	assignBit
      003934 D2 94            [12] 2124 	setb	_P1_4
                                   2125 ;	8051_i2c_eeprom.c:350: i2c_delay();
      003936 12 39 53         [24] 2126 	lcall	_i2c_delay
                                   2127 ;	8051_i2c_eeprom.c:351: SCL = 1;
                                   2128 ;	assignBit
      003939 D2 93            [12] 2129 	setb	_P1_3
                                   2130 ;	8051_i2c_eeprom.c:352: i2c_delay();
      00393B 12 39 53         [24] 2131 	lcall	_i2c_delay
                                   2132 ;	8051_i2c_eeprom.c:353: SDA = 0;
                                   2133 ;	assignBit
      00393E C2 94            [12] 2134 	clr	_P1_4
                                   2135 ;	8051_i2c_eeprom.c:354: i2c_delay();
      003940 12 39 53         [24] 2136 	lcall	_i2c_delay
                                   2137 ;	8051_i2c_eeprom.c:355: SCL = 0;
                                   2138 ;	assignBit
      003943 C2 93            [12] 2139 	clr	_P1_3
                                   2140 ;	8051_i2c_eeprom.c:356: }
      003945 22               [24] 2141 	ret
                                   2142 ;------------------------------------------------------------
                                   2143 ;Allocation info for local variables in function 'i2c_stop'
                                   2144 ;------------------------------------------------------------
                                   2145 ;	8051_i2c_eeprom.c:358: void i2c_stop(void)
                                   2146 ;	-----------------------------------------
                                   2147 ;	 function i2c_stop
                                   2148 ;	-----------------------------------------
      003946                       2149 _i2c_stop:
                                   2150 ;	8051_i2c_eeprom.c:360: SDA = 0;
                                   2151 ;	assignBit
      003946 C2 94            [12] 2152 	clr	_P1_4
                                   2153 ;	8051_i2c_eeprom.c:361: i2c_delay();
      003948 12 39 53         [24] 2154 	lcall	_i2c_delay
                                   2155 ;	8051_i2c_eeprom.c:362: SCL = 1;
                                   2156 ;	assignBit
      00394B D2 93            [12] 2157 	setb	_P1_3
                                   2158 ;	8051_i2c_eeprom.c:363: i2c_delay();
      00394D 12 39 53         [24] 2159 	lcall	_i2c_delay
                                   2160 ;	8051_i2c_eeprom.c:364: SDA = 1; 
                                   2161 ;	assignBit
      003950 D2 94            [12] 2162 	setb	_P1_4
                                   2163 ;	8051_i2c_eeprom.c:365: }
      003952 22               [24] 2164 	ret
                                   2165 ;------------------------------------------------------------
                                   2166 ;Allocation info for local variables in function 'i2c_delay'
                                   2167 ;------------------------------------------------------------
                                   2168 ;i                         Allocated with name '_i2c_delay_i_131072_106'
                                   2169 ;------------------------------------------------------------
                                   2170 ;	8051_i2c_eeprom.c:367: void i2c_delay() 
                                   2171 ;	-----------------------------------------
                                   2172 ;	 function i2c_delay
                                   2173 ;	-----------------------------------------
      003953                       2174 _i2c_delay:
                                   2175 ;	8051_i2c_eeprom.c:375: for(int i = 0; i<500; i++);
      003953 7E 00            [12] 2176 	mov	r6,#0x00
      003955 7F 00            [12] 2177 	mov	r7,#0x00
      003957                       2178 00103$:
      003957 C3               [12] 2179 	clr	c
      003958 EE               [12] 2180 	mov	a,r6
      003959 94 F4            [12] 2181 	subb	a,#0xf4
      00395B EF               [12] 2182 	mov	a,r7
      00395C 64 80            [12] 2183 	xrl	a,#0x80
      00395E 94 81            [12] 2184 	subb	a,#0x81
      003960 50 07            [24] 2185 	jnc	00105$
      003962 0E               [12] 2186 	inc	r6
      003963 BE 00 F1         [24] 2187 	cjne	r6,#0x00,00103$
      003966 0F               [12] 2188 	inc	r7
      003967 80 EE            [24] 2189 	sjmp	00103$
      003969                       2190 00105$:
                                   2191 ;	8051_i2c_eeprom.c:376: }
      003969 22               [24] 2192 	ret
                                   2193 ;------------------------------------------------------------
                                   2194 ;Allocation info for local variables in function 'test_function'
                                   2195 ;------------------------------------------------------------
                                   2196 ;test_data                 Allocated with name '_test_function_test_data_65537_108'
                                   2197 ;address                   Allocated with name '_test_function_address_65537_108'
                                   2198 ;i                         Allocated with name '_test_function_i_131073_109'
                                   2199 ;read_data                 Allocated with name '_test_function_read_data_65538_111'
                                   2200 ;------------------------------------------------------------
                                   2201 ;	8051_i2c_eeprom.c:378: void test_function()
                                   2202 ;	-----------------------------------------
                                   2203 ;	 function test_function
                                   2204 ;	-----------------------------------------
      00396A                       2205 _test_function:
                                   2206 ;	8051_i2c_eeprom.c:380: i2c_start();
      00396A 12 39 31         [24] 2207 	lcall	_i2c_start
                                   2208 ;	8051_i2c_eeprom.c:381: i2c_delay();
      00396D 12 39 53         [24] 2209 	lcall	_i2c_delay
                                   2210 ;	8051_i2c_eeprom.c:387: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      003970 74 02            [12] 2211 	mov	a,#0x02
      003972 C0 E0            [24] 2212 	push	acc
      003974 E4               [12] 2213 	clr	a
      003975 C0 E0            [24] 2214 	push	acc
      003977 74 26            [12] 2215 	mov	a,#0x26
      003979 C0 E0            [24] 2216 	push	acc
      00397B E4               [12] 2217 	clr	a
      00397C C0 E0            [24] 2218 	push	acc
      00397E 74 00            [12] 2219 	mov	a,#___str_38
      003980 C0 E0            [24] 2220 	push	acc
      003982 74 4F            [12] 2221 	mov	a,#(___str_38 >> 8)
      003984 C0 E0            [24] 2222 	push	acc
      003986 74 80            [12] 2223 	mov	a,#0x80
      003988 C0 E0            [24] 2224 	push	acc
      00398A 12 3A 70         [24] 2225 	lcall	_printf
      00398D E5 81            [12] 2226 	mov	a,sp
      00398F 24 F9            [12] 2227 	add	a,#0xf9
      003991 F5 81            [12] 2228 	mov	sp,a
                                   2229 ;	8051_i2c_eeprom.c:388: eeprom_write(address, test_data);
      003993 90 04 0F         [24] 2230 	mov	dptr,#_eeprom_write_PARM_2
      003996 74 26            [12] 2231 	mov	a,#0x26
      003998 F0               [24] 2232 	movx	@dptr,a
      003999 90 00 02         [24] 2233 	mov	dptr,#0x0002
      00399C 12 35 EA         [24] 2234 	lcall	_eeprom_write
                                   2235 ;	8051_i2c_eeprom.c:389: i2c_stop();
      00399F 12 39 46         [24] 2236 	lcall	_i2c_stop
                                   2237 ;	8051_i2c_eeprom.c:391: for(int i = 0; i<100; i++)
      0039A2 7E 00            [12] 2238 	mov	r6,#0x00
      0039A4 7F 00            [12] 2239 	mov	r7,#0x00
      0039A6                       2240 00106$:
      0039A6 C3               [12] 2241 	clr	c
      0039A7 EE               [12] 2242 	mov	a,r6
      0039A8 94 64            [12] 2243 	subb	a,#0x64
      0039AA EF               [12] 2244 	mov	a,r7
      0039AB 64 80            [12] 2245 	xrl	a,#0x80
      0039AD 94 80            [12] 2246 	subb	a,#0x80
      0039AF 50 12            [24] 2247 	jnc	00101$
                                   2248 ;	8051_i2c_eeprom.c:393: i2c_delay();
      0039B1 C0 07            [24] 2249 	push	ar7
      0039B3 C0 06            [24] 2250 	push	ar6
      0039B5 12 39 53         [24] 2251 	lcall	_i2c_delay
      0039B8 D0 06            [24] 2252 	pop	ar6
      0039BA D0 07            [24] 2253 	pop	ar7
                                   2254 ;	8051_i2c_eeprom.c:391: for(int i = 0; i<100; i++)
      0039BC 0E               [12] 2255 	inc	r6
      0039BD BE 00 E6         [24] 2256 	cjne	r6,#0x00,00106$
      0039C0 0F               [12] 2257 	inc	r7
      0039C1 80 E3            [24] 2258 	sjmp	00106$
      0039C3                       2259 00101$:
                                   2260 ;	8051_i2c_eeprom.c:397: unsigned char read_data = eeprom_read(address);
      0039C3 90 00 02         [24] 2261 	mov	dptr,#0x0002
      0039C6 12 37 23         [24] 2262 	lcall	_eeprom_read
      0039C9 AE 82            [24] 2263 	mov	r6,dpl
                                   2264 ;	8051_i2c_eeprom.c:398: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      0039CB 8E 05            [24] 2265 	mov	ar5,r6
      0039CD 7F 00            [12] 2266 	mov	r7,#0x00
      0039CF C0 06            [24] 2267 	push	ar6
      0039D1 C0 05            [24] 2268 	push	ar5
      0039D3 C0 07            [24] 2269 	push	ar7
      0039D5 74 02            [12] 2270 	mov	a,#0x02
      0039D7 C0 E0            [24] 2271 	push	acc
      0039D9 E4               [12] 2272 	clr	a
      0039DA C0 E0            [24] 2273 	push	acc
      0039DC 74 28            [12] 2274 	mov	a,#___str_39
      0039DE C0 E0            [24] 2275 	push	acc
      0039E0 74 4F            [12] 2276 	mov	a,#(___str_39 >> 8)
      0039E2 C0 E0            [24] 2277 	push	acc
      0039E4 74 80            [12] 2278 	mov	a,#0x80
      0039E6 C0 E0            [24] 2279 	push	acc
      0039E8 12 3A 70         [24] 2280 	lcall	_printf
      0039EB E5 81            [12] 2281 	mov	a,sp
      0039ED 24 F9            [12] 2282 	add	a,#0xf9
      0039EF F5 81            [12] 2283 	mov	sp,a
      0039F1 D0 06            [24] 2284 	pop	ar6
                                   2285 ;	8051_i2c_eeprom.c:401: if(read_data == test_data) {
      0039F3 BE 26 16         [24] 2286 	cjne	r6,#0x26,00103$
                                   2287 ;	8051_i2c_eeprom.c:402: printf("MATCH - Write/Read successful!\n\r");
      0039F6 74 50            [12] 2288 	mov	a,#___str_40
      0039F8 C0 E0            [24] 2289 	push	acc
      0039FA 74 4F            [12] 2290 	mov	a,#(___str_40 >> 8)
      0039FC C0 E0            [24] 2291 	push	acc
      0039FE 74 80            [12] 2292 	mov	a,#0x80
      003A00 C0 E0            [24] 2293 	push	acc
      003A02 12 3A 70         [24] 2294 	lcall	_printf
      003A05 15 81            [12] 2295 	dec	sp
      003A07 15 81            [12] 2296 	dec	sp
      003A09 15 81            [12] 2297 	dec	sp
      003A0B 22               [24] 2298 	ret
      003A0C                       2299 00103$:
                                   2300 ;	8051_i2c_eeprom.c:404: printf("ERROR - Data mismatch!\n\r");
      003A0C 74 71            [12] 2301 	mov	a,#___str_41
      003A0E C0 E0            [24] 2302 	push	acc
      003A10 74 4F            [12] 2303 	mov	a,#(___str_41 >> 8)
      003A12 C0 E0            [24] 2304 	push	acc
      003A14 74 80            [12] 2305 	mov	a,#0x80
      003A16 C0 E0            [24] 2306 	push	acc
      003A18 12 3A 70         [24] 2307 	lcall	_printf
      003A1B 15 81            [12] 2308 	dec	sp
      003A1D 15 81            [12] 2309 	dec	sp
      003A1F 15 81            [12] 2310 	dec	sp
                                   2311 ;	8051_i2c_eeprom.c:408: }
      003A21 22               [24] 2312 	ret
                                   2313 	.area CSEG    (CODE)
                                   2314 	.area CONST   (CODE)
                                   2315 	.area CONST   (CODE)
      0044D2                       2316 ___str_0:
      0044D2 0A                    2317 	.db 0x0a
      0044D3 E2                    2318 	.db 0xe2
      0044D4 95                    2319 	.db 0x95
      0044D5 94                    2320 	.db 0x94
      0044D6 E2                    2321 	.db 0xe2
      0044D7 95                    2322 	.db 0x95
      0044D8 90                    2323 	.db 0x90
      0044D9 E2                    2324 	.db 0xe2
      0044DA 95                    2325 	.db 0x95
      0044DB 90                    2326 	.db 0x90
      0044DC E2                    2327 	.db 0xe2
      0044DD 95                    2328 	.db 0x95
      0044DE 90                    2329 	.db 0x90
      0044DF E2                    2330 	.db 0xe2
      0044E0 95                    2331 	.db 0x95
      0044E1 90                    2332 	.db 0x90
      0044E2 E2                    2333 	.db 0xe2
      0044E3 95                    2334 	.db 0x95
      0044E4 90                    2335 	.db 0x90
      0044E5 E2                    2336 	.db 0xe2
      0044E6 95                    2337 	.db 0x95
      0044E7 90                    2338 	.db 0x90
      0044E8 E2                    2339 	.db 0xe2
      0044E9 95                    2340 	.db 0x95
      0044EA 90                    2341 	.db 0x90
      0044EB E2                    2342 	.db 0xe2
      0044EC 95                    2343 	.db 0x95
      0044ED 90                    2344 	.db 0x90
      0044EE E2                    2345 	.db 0xe2
      0044EF 95                    2346 	.db 0x95
      0044F0 90                    2347 	.db 0x90
      0044F1 E2                    2348 	.db 0xe2
      0044F2 95                    2349 	.db 0x95
      0044F3 90                    2350 	.db 0x90
      0044F4 E2                    2351 	.db 0xe2
      0044F5 95                    2352 	.db 0x95
      0044F6 90                    2353 	.db 0x90
      0044F7 E2                    2354 	.db 0xe2
      0044F8 95                    2355 	.db 0x95
      0044F9 90                    2356 	.db 0x90
      0044FA E2                    2357 	.db 0xe2
      0044FB 95                    2358 	.db 0x95
      0044FC 90                    2359 	.db 0x90
      0044FD E2                    2360 	.db 0xe2
      0044FE 95                    2361 	.db 0x95
      0044FF 90                    2362 	.db 0x90
      004500 E2                    2363 	.db 0xe2
      004501 95                    2364 	.db 0x95
      004502 90                    2365 	.db 0x90
      004503 E2                    2366 	.db 0xe2
      004504 95                    2367 	.db 0x95
      004505 90                    2368 	.db 0x90
      004506 E2                    2369 	.db 0xe2
      004507 95                    2370 	.db 0x95
      004508 90                    2371 	.db 0x90
      004509 E2                    2372 	.db 0xe2
      00450A 95                    2373 	.db 0x95
      00450B 90                    2374 	.db 0x90
      00450C E2                    2375 	.db 0xe2
      00450D 95                    2376 	.db 0x95
      00450E 90                    2377 	.db 0x90
      00450F E2                    2378 	.db 0xe2
      004510 95                    2379 	.db 0x95
      004511 90                    2380 	.db 0x90
      004512 E2                    2381 	.db 0xe2
      004513 95                    2382 	.db 0x95
      004514 90                    2383 	.db 0x90
      004515 E2                    2384 	.db 0xe2
      004516 95                    2385 	.db 0x95
      004517 90                    2386 	.db 0x90
      004518 E2                    2387 	.db 0xe2
      004519 95                    2388 	.db 0x95
      00451A 90                    2389 	.db 0x90
      00451B E2                    2390 	.db 0xe2
      00451C 95                    2391 	.db 0x95
      00451D 90                    2392 	.db 0x90
      00451E E2                    2393 	.db 0xe2
      00451F 95                    2394 	.db 0x95
      004520 90                    2395 	.db 0x90
      004521 E2                    2396 	.db 0xe2
      004522 95                    2397 	.db 0x95
      004523 90                    2398 	.db 0x90
      004524 E2                    2399 	.db 0xe2
      004525 95                    2400 	.db 0x95
      004526 90                    2401 	.db 0x90
      004527 E2                    2402 	.db 0xe2
      004528 95                    2403 	.db 0x95
      004529 90                    2404 	.db 0x90
      00452A E2                    2405 	.db 0xe2
      00452B 95                    2406 	.db 0x95
      00452C 90                    2407 	.db 0x90
      00452D E2                    2408 	.db 0xe2
      00452E 95                    2409 	.db 0x95
      00452F 90                    2410 	.db 0x90
      004530 E2                    2411 	.db 0xe2
      004531 95                    2412 	.db 0x95
      004532 90                    2413 	.db 0x90
      004533 E2                    2414 	.db 0xe2
      004534 95                    2415 	.db 0x95
      004535 90                    2416 	.db 0x90
      004536 E2                    2417 	.db 0xe2
      004537 95                    2418 	.db 0x95
      004538 90                    2419 	.db 0x90
      004539 E2                    2420 	.db 0xe2
      00453A 95                    2421 	.db 0x95
      00453B 90                    2422 	.db 0x90
      00453C E2                    2423 	.db 0xe2
      00453D 95                    2424 	.db 0x95
      00453E 90                    2425 	.db 0x90
      00453F E2                    2426 	.db 0xe2
      004540 95                    2427 	.db 0x95
      004541 90                    2428 	.db 0x90
      004542 E2                    2429 	.db 0xe2
      004543 95                    2430 	.db 0x95
      004544 90                    2431 	.db 0x90
      004545 E2                    2432 	.db 0xe2
      004546 95                    2433 	.db 0x95
      004547 90                    2434 	.db 0x90
      004548 E2                    2435 	.db 0xe2
      004549 95                    2436 	.db 0x95
      00454A 90                    2437 	.db 0x90
      00454B E2                    2438 	.db 0xe2
      00454C 95                    2439 	.db 0x95
      00454D 90                    2440 	.db 0x90
      00454E E2                    2441 	.db 0xe2
      00454F 95                    2442 	.db 0x95
      004550 90                    2443 	.db 0x90
      004551 E2                    2444 	.db 0xe2
      004552 95                    2445 	.db 0x95
      004553 90                    2446 	.db 0x90
      004554 E2                    2447 	.db 0xe2
      004555 95                    2448 	.db 0x95
      004556 90                    2449 	.db 0x90
      004557 E2                    2450 	.db 0xe2
      004558 95                    2451 	.db 0x95
      004559 90                    2452 	.db 0x90
      00455A E2                    2453 	.db 0xe2
      00455B 95                    2454 	.db 0x95
      00455C 90                    2455 	.db 0x90
      00455D E2                    2456 	.db 0xe2
      00455E 95                    2457 	.db 0x95
      00455F 90                    2458 	.db 0x90
      004560 E2                    2459 	.db 0xe2
      004561 95                    2460 	.db 0x95
      004562 90                    2461 	.db 0x90
      004563 E2                    2462 	.db 0xe2
      004564 95                    2463 	.db 0x95
      004565 90                    2464 	.db 0x90
      004566 E2                    2465 	.db 0xe2
      004567 95                    2466 	.db 0x95
      004568 90                    2467 	.db 0x90
      004569 E2                    2468 	.db 0xe2
      00456A 95                    2469 	.db 0x95
      00456B 90                    2470 	.db 0x90
      00456C E2                    2471 	.db 0xe2
      00456D 95                    2472 	.db 0x95
      00456E 90                    2473 	.db 0x90
      00456F E2                    2474 	.db 0xe2
      004570 95                    2475 	.db 0x95
      004571 90                    2476 	.db 0x90
      004572 E2                    2477 	.db 0xe2
      004573 95                    2478 	.db 0x95
      004574 90                    2479 	.db 0x90
      004575 E2                    2480 	.db 0xe2
      004576 95                    2481 	.db 0x95
      004577 90                    2482 	.db 0x90
      004578 E2                    2483 	.db 0xe2
      004579 95                    2484 	.db 0x95
      00457A 90                    2485 	.db 0x90
      00457B E2                    2486 	.db 0xe2
      00457C 95                    2487 	.db 0x95
      00457D 90                    2488 	.db 0x90
      00457E E2                    2489 	.db 0xe2
      00457F 95                    2490 	.db 0x95
      004580 97                    2491 	.db 0x97
      004581 0A                    2492 	.db 0x0a
      004582 0D                    2493 	.db 0x0d
      004583 00                    2494 	.db 0x00
                                   2495 	.area CSEG    (CODE)
                                   2496 	.area CONST   (CODE)
      004584                       2497 ___str_1:
      004584 E2                    2498 	.db 0xe2
      004585 95                    2499 	.db 0x95
      004586 91                    2500 	.db 0x91
      004587 20 20 20 20 20 20 20  2501 	.ascii "           I2C Memory Management System v1.0             "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
             20
      0045C0 E2                    2502 	.db 0xe2
      0045C1 95                    2503 	.db 0x95
      0045C2 91                    2504 	.db 0x91
      0045C3 0A                    2505 	.db 0x0a
      0045C4 0D                    2506 	.db 0x0d
      0045C5 00                    2507 	.db 0x00
                                   2508 	.area CSEG    (CODE)
                                   2509 	.area CONST   (CODE)
      0045C6                       2510 ___str_2:
      0045C6 E2                    2511 	.db 0xe2
      0045C7 95                    2512 	.db 0x95
      0045C8 9A                    2513 	.db 0x9a
      0045C9 E2                    2514 	.db 0xe2
      0045CA 95                    2515 	.db 0x95
      0045CB 90                    2516 	.db 0x90
      0045CC E2                    2517 	.db 0xe2
      0045CD 95                    2518 	.db 0x95
      0045CE 90                    2519 	.db 0x90
      0045CF E2                    2520 	.db 0xe2
      0045D0 95                    2521 	.db 0x95
      0045D1 90                    2522 	.db 0x90
      0045D2 E2                    2523 	.db 0xe2
      0045D3 95                    2524 	.db 0x95
      0045D4 90                    2525 	.db 0x90
      0045D5 E2                    2526 	.db 0xe2
      0045D6 95                    2527 	.db 0x95
      0045D7 90                    2528 	.db 0x90
      0045D8 E2                    2529 	.db 0xe2
      0045D9 95                    2530 	.db 0x95
      0045DA 90                    2531 	.db 0x90
      0045DB E2                    2532 	.db 0xe2
      0045DC 95                    2533 	.db 0x95
      0045DD 90                    2534 	.db 0x90
      0045DE E2                    2535 	.db 0xe2
      0045DF 95                    2536 	.db 0x95
      0045E0 90                    2537 	.db 0x90
      0045E1 E2                    2538 	.db 0xe2
      0045E2 95                    2539 	.db 0x95
      0045E3 90                    2540 	.db 0x90
      0045E4 E2                    2541 	.db 0xe2
      0045E5 95                    2542 	.db 0x95
      0045E6 90                    2543 	.db 0x90
      0045E7 E2                    2544 	.db 0xe2
      0045E8 95                    2545 	.db 0x95
      0045E9 90                    2546 	.db 0x90
      0045EA E2                    2547 	.db 0xe2
      0045EB 95                    2548 	.db 0x95
      0045EC 90                    2549 	.db 0x90
      0045ED E2                    2550 	.db 0xe2
      0045EE 95                    2551 	.db 0x95
      0045EF 90                    2552 	.db 0x90
      0045F0 E2                    2553 	.db 0xe2
      0045F1 95                    2554 	.db 0x95
      0045F2 90                    2555 	.db 0x90
      0045F3 E2                    2556 	.db 0xe2
      0045F4 95                    2557 	.db 0x95
      0045F5 90                    2558 	.db 0x90
      0045F6 E2                    2559 	.db 0xe2
      0045F7 95                    2560 	.db 0x95
      0045F8 90                    2561 	.db 0x90
      0045F9 E2                    2562 	.db 0xe2
      0045FA 95                    2563 	.db 0x95
      0045FB 90                    2564 	.db 0x90
      0045FC E2                    2565 	.db 0xe2
      0045FD 95                    2566 	.db 0x95
      0045FE 90                    2567 	.db 0x90
      0045FF E2                    2568 	.db 0xe2
      004600 95                    2569 	.db 0x95
      004601 90                    2570 	.db 0x90
      004602 E2                    2571 	.db 0xe2
      004603 95                    2572 	.db 0x95
      004604 90                    2573 	.db 0x90
      004605 E2                    2574 	.db 0xe2
      004606 95                    2575 	.db 0x95
      004607 90                    2576 	.db 0x90
      004608 E2                    2577 	.db 0xe2
      004609 95                    2578 	.db 0x95
      00460A 90                    2579 	.db 0x90
      00460B E2                    2580 	.db 0xe2
      00460C 95                    2581 	.db 0x95
      00460D 90                    2582 	.db 0x90
      00460E E2                    2583 	.db 0xe2
      00460F 95                    2584 	.db 0x95
      004610 90                    2585 	.db 0x90
      004611 E2                    2586 	.db 0xe2
      004612 95                    2587 	.db 0x95
      004613 90                    2588 	.db 0x90
      004614 E2                    2589 	.db 0xe2
      004615 95                    2590 	.db 0x95
      004616 90                    2591 	.db 0x90
      004617 E2                    2592 	.db 0xe2
      004618 95                    2593 	.db 0x95
      004619 90                    2594 	.db 0x90
      00461A E2                    2595 	.db 0xe2
      00461B 95                    2596 	.db 0x95
      00461C 90                    2597 	.db 0x90
      00461D E2                    2598 	.db 0xe2
      00461E 95                    2599 	.db 0x95
      00461F 90                    2600 	.db 0x90
      004620 E2                    2601 	.db 0xe2
      004621 95                    2602 	.db 0x95
      004622 90                    2603 	.db 0x90
      004623 E2                    2604 	.db 0xe2
      004624 95                    2605 	.db 0x95
      004625 90                    2606 	.db 0x90
      004626 E2                    2607 	.db 0xe2
      004627 95                    2608 	.db 0x95
      004628 90                    2609 	.db 0x90
      004629 E2                    2610 	.db 0xe2
      00462A 95                    2611 	.db 0x95
      00462B 90                    2612 	.db 0x90
      00462C E2                    2613 	.db 0xe2
      00462D 95                    2614 	.db 0x95
      00462E 90                    2615 	.db 0x90
      00462F E2                    2616 	.db 0xe2
      004630 95                    2617 	.db 0x95
      004631 90                    2618 	.db 0x90
      004632 E2                    2619 	.db 0xe2
      004633 95                    2620 	.db 0x95
      004634 90                    2621 	.db 0x90
      004635 E2                    2622 	.db 0xe2
      004636 95                    2623 	.db 0x95
      004637 90                    2624 	.db 0x90
      004638 E2                    2625 	.db 0xe2
      004639 95                    2626 	.db 0x95
      00463A 90                    2627 	.db 0x90
      00463B E2                    2628 	.db 0xe2
      00463C 95                    2629 	.db 0x95
      00463D 90                    2630 	.db 0x90
      00463E E2                    2631 	.db 0xe2
      00463F 95                    2632 	.db 0x95
      004640 90                    2633 	.db 0x90
      004641 E2                    2634 	.db 0xe2
      004642 95                    2635 	.db 0x95
      004643 90                    2636 	.db 0x90
      004644 E2                    2637 	.db 0xe2
      004645 95                    2638 	.db 0x95
      004646 90                    2639 	.db 0x90
      004647 E2                    2640 	.db 0xe2
      004648 95                    2641 	.db 0x95
      004649 90                    2642 	.db 0x90
      00464A E2                    2643 	.db 0xe2
      00464B 95                    2644 	.db 0x95
      00464C 90                    2645 	.db 0x90
      00464D E2                    2646 	.db 0xe2
      00464E 95                    2647 	.db 0x95
      00464F 90                    2648 	.db 0x90
      004650 E2                    2649 	.db 0xe2
      004651 95                    2650 	.db 0x95
      004652 90                    2651 	.db 0x90
      004653 E2                    2652 	.db 0xe2
      004654 95                    2653 	.db 0x95
      004655 90                    2654 	.db 0x90
      004656 E2                    2655 	.db 0xe2
      004657 95                    2656 	.db 0x95
      004658 90                    2657 	.db 0x90
      004659 E2                    2658 	.db 0xe2
      00465A 95                    2659 	.db 0x95
      00465B 90                    2660 	.db 0x90
      00465C E2                    2661 	.db 0xe2
      00465D 95                    2662 	.db 0x95
      00465E 90                    2663 	.db 0x90
      00465F E2                    2664 	.db 0xe2
      004660 95                    2665 	.db 0x95
      004661 90                    2666 	.db 0x90
      004662 E2                    2667 	.db 0xe2
      004663 95                    2668 	.db 0x95
      004664 90                    2669 	.db 0x90
      004665 E2                    2670 	.db 0xe2
      004666 95                    2671 	.db 0x95
      004667 90                    2672 	.db 0x90
      004668 E2                    2673 	.db 0xe2
      004669 95                    2674 	.db 0x95
      00466A 90                    2675 	.db 0x90
      00466B E2                    2676 	.db 0xe2
      00466C 95                    2677 	.db 0x95
      00466D 90                    2678 	.db 0x90
      00466E E2                    2679 	.db 0xe2
      00466F 95                    2680 	.db 0x95
      004670 90                    2681 	.db 0x90
      004671 E2                    2682 	.db 0xe2
      004672 95                    2683 	.db 0x95
      004673 9D                    2684 	.db 0x9d
      004674 0A                    2685 	.db 0x0a
      004675 0D                    2686 	.db 0x0d
      004676 00                    2687 	.db 0x00
                                   2688 	.area CSEG    (CODE)
                                   2689 	.area CONST   (CODE)
      004677                       2690 ___str_3:
      004677 0A                    2691 	.db 0x0a
      004678 0D                    2692 	.db 0x0d
      004679 E2                    2693 	.db 0xe2
      00467A 94                    2694 	.db 0x94
      00467B 8C                    2695 	.db 0x8c
      00467C E2                    2696 	.db 0xe2
      00467D 94                    2697 	.db 0x94
      00467E 80                    2698 	.db 0x80
      00467F E2                    2699 	.db 0xe2
      004680 94                    2700 	.db 0x94
      004681 80                    2701 	.db 0x80
      004682 E2                    2702 	.db 0xe2
      004683 94                    2703 	.db 0x94
      004684 80                    2704 	.db 0x80
      004685 E2                    2705 	.db 0xe2
      004686 94                    2706 	.db 0x94
      004687 80                    2707 	.db 0x80
      004688 E2                    2708 	.db 0xe2
      004689 94                    2709 	.db 0x94
      00468A 80                    2710 	.db 0x80
      00468B E2                    2711 	.db 0xe2
      00468C 94                    2712 	.db 0x94
      00468D 80                    2713 	.db 0x80
      00468E E2                    2714 	.db 0xe2
      00468F 94                    2715 	.db 0x94
      004690 80                    2716 	.db 0x80
      004691 E2                    2717 	.db 0xe2
      004692 94                    2718 	.db 0x94
      004693 80                    2719 	.db 0x80
      004694 E2                    2720 	.db 0xe2
      004695 94                    2721 	.db 0x94
      004696 80                    2722 	.db 0x80
      004697 E2                    2723 	.db 0xe2
      004698 94                    2724 	.db 0x94
      004699 80                    2725 	.db 0x80
      00469A E2                    2726 	.db 0xe2
      00469B 94                    2727 	.db 0x94
      00469C 80                    2728 	.db 0x80
      00469D E2                    2729 	.db 0xe2
      00469E 94                    2730 	.db 0x94
      00469F 80                    2731 	.db 0x80
      0046A0 E2                    2732 	.db 0xe2
      0046A1 94                    2733 	.db 0x94
      0046A2 AC                    2734 	.db 0xac
      0046A3 E2                    2735 	.db 0xe2
      0046A4 94                    2736 	.db 0x94
      0046A5 80                    2737 	.db 0x80
      0046A6 E2                    2738 	.db 0xe2
      0046A7 94                    2739 	.db 0x94
      0046A8 80                    2740 	.db 0x80
      0046A9 E2                    2741 	.db 0xe2
      0046AA 94                    2742 	.db 0x94
      0046AB 80                    2743 	.db 0x80
      0046AC E2                    2744 	.db 0xe2
      0046AD 94                    2745 	.db 0x94
      0046AE 80                    2746 	.db 0x80
      0046AF E2                    2747 	.db 0xe2
      0046B0 94                    2748 	.db 0x94
      0046B1 80                    2749 	.db 0x80
      0046B2 E2                    2750 	.db 0xe2
      0046B3 94                    2751 	.db 0x94
      0046B4 80                    2752 	.db 0x80
      0046B5 E2                    2753 	.db 0xe2
      0046B6 94                    2754 	.db 0x94
      0046B7 80                    2755 	.db 0x80
      0046B8 E2                    2756 	.db 0xe2
      0046B9 94                    2757 	.db 0x94
      0046BA 80                    2758 	.db 0x80
      0046BB E2                    2759 	.db 0xe2
      0046BC 94                    2760 	.db 0x94
      0046BD 80                    2761 	.db 0x80
      0046BE E2                    2762 	.db 0xe2
      0046BF 94                    2763 	.db 0x94
      0046C0 80                    2764 	.db 0x80
      0046C1 E2                    2765 	.db 0xe2
      0046C2 94                    2766 	.db 0x94
      0046C3 80                    2767 	.db 0x80
      0046C4 E2                    2768 	.db 0xe2
      0046C5 94                    2769 	.db 0x94
      0046C6 80                    2770 	.db 0x80
      0046C7 E2                    2771 	.db 0xe2
      0046C8 94                    2772 	.db 0x94
      0046C9 80                    2773 	.db 0x80
      0046CA E2                    2774 	.db 0xe2
      0046CB 94                    2775 	.db 0x94
      0046CC 80                    2776 	.db 0x80
      0046CD E2                    2777 	.db 0xe2
      0046CE 94                    2778 	.db 0x94
      0046CF 80                    2779 	.db 0x80
      0046D0 E2                    2780 	.db 0xe2
      0046D1 94                    2781 	.db 0x94
      0046D2 80                    2782 	.db 0x80
      0046D3 E2                    2783 	.db 0xe2
      0046D4 94                    2784 	.db 0x94
      0046D5 80                    2785 	.db 0x80
      0046D6 E2                    2786 	.db 0xe2
      0046D7 94                    2787 	.db 0x94
      0046D8 80                    2788 	.db 0x80
      0046D9 E2                    2789 	.db 0xe2
      0046DA 94                    2790 	.db 0x94
      0046DB 80                    2791 	.db 0x80
      0046DC E2                    2792 	.db 0xe2
      0046DD 94                    2793 	.db 0x94
      0046DE 80                    2794 	.db 0x80
      0046DF E2                    2795 	.db 0xe2
      0046E0 94                    2796 	.db 0x94
      0046E1 80                    2797 	.db 0x80
      0046E2 E2                    2798 	.db 0xe2
      0046E3 94                    2799 	.db 0x94
      0046E4 80                    2800 	.db 0x80
      0046E5 E2                    2801 	.db 0xe2
      0046E6 94                    2802 	.db 0x94
      0046E7 80                    2803 	.db 0x80
      0046E8 E2                    2804 	.db 0xe2
      0046E9 94                    2805 	.db 0x94
      0046EA 80                    2806 	.db 0x80
      0046EB E2                    2807 	.db 0xe2
      0046EC 94                    2808 	.db 0x94
      0046ED 80                    2809 	.db 0x80
      0046EE E2                    2810 	.db 0xe2
      0046EF 94                    2811 	.db 0x94
      0046F0 80                    2812 	.db 0x80
      0046F1 E2                    2813 	.db 0xe2
      0046F2 94                    2814 	.db 0x94
      0046F3 80                    2815 	.db 0x80
      0046F4 E2                    2816 	.db 0xe2
      0046F5 94                    2817 	.db 0x94
      0046F6 80                    2818 	.db 0x80
      0046F7 E2                    2819 	.db 0xe2
      0046F8 94                    2820 	.db 0x94
      0046F9 80                    2821 	.db 0x80
      0046FA E2                    2822 	.db 0xe2
      0046FB 94                    2823 	.db 0x94
      0046FC 80                    2824 	.db 0x80
      0046FD E2                    2825 	.db 0xe2
      0046FE 94                    2826 	.db 0x94
      0046FF 80                    2827 	.db 0x80
      004700 E2                    2828 	.db 0xe2
      004701 94                    2829 	.db 0x94
      004702 80                    2830 	.db 0x80
      004703 E2                    2831 	.db 0xe2
      004704 94                    2832 	.db 0x94
      004705 80                    2833 	.db 0x80
      004706 E2                    2834 	.db 0xe2
      004707 94                    2835 	.db 0x94
      004708 80                    2836 	.db 0x80
      004709 E2                    2837 	.db 0xe2
      00470A 94                    2838 	.db 0x94
      00470B 80                    2839 	.db 0x80
      00470C E2                    2840 	.db 0xe2
      00470D 94                    2841 	.db 0x94
      00470E 80                    2842 	.db 0x80
      00470F E2                    2843 	.db 0xe2
      004710 94                    2844 	.db 0x94
      004711 80                    2845 	.db 0x80
      004712 E2                    2846 	.db 0xe2
      004713 94                    2847 	.db 0x94
      004714 80                    2848 	.db 0x80
      004715 E2                    2849 	.db 0xe2
      004716 94                    2850 	.db 0x94
      004717 80                    2851 	.db 0x80
      004718 E2                    2852 	.db 0xe2
      004719 94                    2853 	.db 0x94
      00471A 80                    2854 	.db 0x80
      00471B E2                    2855 	.db 0xe2
      00471C 94                    2856 	.db 0x94
      00471D 80                    2857 	.db 0x80
      00471E E2                    2858 	.db 0xe2
      00471F 94                    2859 	.db 0x94
      004720 80                    2860 	.db 0x80
      004721 E2                    2861 	.db 0xe2
      004722 94                    2862 	.db 0x94
      004723 80                    2863 	.db 0x80
      004724 E2                    2864 	.db 0xe2
      004725 94                    2865 	.db 0x94
      004726 80                    2866 	.db 0x80
      004727 E2                    2867 	.db 0xe2
      004728 94                    2868 	.db 0x94
      004729 90                    2869 	.db 0x90
      00472A 0A                    2870 	.db 0x0a
      00472B 0D                    2871 	.db 0x0d
      00472C 00                    2872 	.db 0x00
                                   2873 	.area CSEG    (CODE)
                                   2874 	.area CONST   (CODE)
      00472D                       2875 ___str_4:
      00472D E2                    2876 	.db 0xe2
      00472E 94                    2877 	.db 0x94
      00472F 82                    2878 	.db 0x82
      004730 20 20 43 6F 6D 6D 61  2879 	.ascii "  Command   "
             6E 64 20 20 20
      00473C E2                    2880 	.db 0xe2
      00473D 94                    2881 	.db 0x94
      00473E 82                    2882 	.db 0x82
      00473F 20 20 20 20 20 20 20  2883 	.ascii "               Description                   "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20
      00476C E2                    2884 	.db 0xe2
      00476D 94                    2885 	.db 0x94
      00476E 82                    2886 	.db 0x82
      00476F 0A                    2887 	.db 0x0a
      004770 0D                    2888 	.db 0x0d
      004771 00                    2889 	.db 0x00
                                   2890 	.area CSEG    (CODE)
                                   2891 	.area CONST   (CODE)
      004772                       2892 ___str_5:
      004772 E2                    2893 	.db 0xe2
      004773 94                    2894 	.db 0x94
      004774 9C                    2895 	.db 0x9c
      004775 E2                    2896 	.db 0xe2
      004776 94                    2897 	.db 0x94
      004777 80                    2898 	.db 0x80
      004778 E2                    2899 	.db 0xe2
      004779 94                    2900 	.db 0x94
      00477A 80                    2901 	.db 0x80
      00477B E2                    2902 	.db 0xe2
      00477C 94                    2903 	.db 0x94
      00477D 80                    2904 	.db 0x80
      00477E E2                    2905 	.db 0xe2
      00477F 94                    2906 	.db 0x94
      004780 80                    2907 	.db 0x80
      004781 E2                    2908 	.db 0xe2
      004782 94                    2909 	.db 0x94
      004783 80                    2910 	.db 0x80
      004784 E2                    2911 	.db 0xe2
      004785 94                    2912 	.db 0x94
      004786 80                    2913 	.db 0x80
      004787 E2                    2914 	.db 0xe2
      004788 94                    2915 	.db 0x94
      004789 80                    2916 	.db 0x80
      00478A E2                    2917 	.db 0xe2
      00478B 94                    2918 	.db 0x94
      00478C 80                    2919 	.db 0x80
      00478D E2                    2920 	.db 0xe2
      00478E 94                    2921 	.db 0x94
      00478F 80                    2922 	.db 0x80
      004790 E2                    2923 	.db 0xe2
      004791 94                    2924 	.db 0x94
      004792 80                    2925 	.db 0x80
      004793 E2                    2926 	.db 0xe2
      004794 94                    2927 	.db 0x94
      004795 80                    2928 	.db 0x80
      004796 E2                    2929 	.db 0xe2
      004797 94                    2930 	.db 0x94
      004798 80                    2931 	.db 0x80
      004799 E2                    2932 	.db 0xe2
      00479A 94                    2933 	.db 0x94
      00479B BC                    2934 	.db 0xbc
      00479C E2                    2935 	.db 0xe2
      00479D 94                    2936 	.db 0x94
      00479E 80                    2937 	.db 0x80
      00479F E2                    2938 	.db 0xe2
      0047A0 94                    2939 	.db 0x94
      0047A1 80                    2940 	.db 0x80
      0047A2 E2                    2941 	.db 0xe2
      0047A3 94                    2942 	.db 0x94
      0047A4 80                    2943 	.db 0x80
      0047A5 E2                    2944 	.db 0xe2
      0047A6 94                    2945 	.db 0x94
      0047A7 80                    2946 	.db 0x80
      0047A8 E2                    2947 	.db 0xe2
      0047A9 94                    2948 	.db 0x94
      0047AA 80                    2949 	.db 0x80
      0047AB E2                    2950 	.db 0xe2
      0047AC 94                    2951 	.db 0x94
      0047AD 80                    2952 	.db 0x80
      0047AE E2                    2953 	.db 0xe2
      0047AF 94                    2954 	.db 0x94
      0047B0 80                    2955 	.db 0x80
      0047B1 E2                    2956 	.db 0xe2
      0047B2 94                    2957 	.db 0x94
      0047B3 80                    2958 	.db 0x80
      0047B4 E2                    2959 	.db 0xe2
      0047B5 94                    2960 	.db 0x94
      0047B6 80                    2961 	.db 0x80
      0047B7 E2                    2962 	.db 0xe2
      0047B8 94                    2963 	.db 0x94
      0047B9 80                    2964 	.db 0x80
      0047BA E2                    2965 	.db 0xe2
      0047BB 94                    2966 	.db 0x94
      0047BC 80                    2967 	.db 0x80
      0047BD E2                    2968 	.db 0xe2
      0047BE 94                    2969 	.db 0x94
      0047BF 80                    2970 	.db 0x80
      0047C0 E2                    2971 	.db 0xe2
      0047C1 94                    2972 	.db 0x94
      0047C2 80                    2973 	.db 0x80
      0047C3 E2                    2974 	.db 0xe2
      0047C4 94                    2975 	.db 0x94
      0047C5 80                    2976 	.db 0x80
      0047C6 E2                    2977 	.db 0xe2
      0047C7 94                    2978 	.db 0x94
      0047C8 80                    2979 	.db 0x80
      0047C9 E2                    2980 	.db 0xe2
      0047CA 94                    2981 	.db 0x94
      0047CB 80                    2982 	.db 0x80
      0047CC E2                    2983 	.db 0xe2
      0047CD 94                    2984 	.db 0x94
      0047CE 80                    2985 	.db 0x80
      0047CF E2                    2986 	.db 0xe2
      0047D0 94                    2987 	.db 0x94
      0047D1 80                    2988 	.db 0x80
      0047D2 E2                    2989 	.db 0xe2
      0047D3 94                    2990 	.db 0x94
      0047D4 80                    2991 	.db 0x80
      0047D5 E2                    2992 	.db 0xe2
      0047D6 94                    2993 	.db 0x94
      0047D7 80                    2994 	.db 0x80
      0047D8 E2                    2995 	.db 0xe2
      0047D9 94                    2996 	.db 0x94
      0047DA 80                    2997 	.db 0x80
      0047DB E2                    2998 	.db 0xe2
      0047DC 94                    2999 	.db 0x94
      0047DD 80                    3000 	.db 0x80
      0047DE E2                    3001 	.db 0xe2
      0047DF 94                    3002 	.db 0x94
      0047E0 80                    3003 	.db 0x80
      0047E1 E2                    3004 	.db 0xe2
      0047E2 94                    3005 	.db 0x94
      0047E3 80                    3006 	.db 0x80
      0047E4 E2                    3007 	.db 0xe2
      0047E5 94                    3008 	.db 0x94
      0047E6 80                    3009 	.db 0x80
      0047E7 E2                    3010 	.db 0xe2
      0047E8 94                    3011 	.db 0x94
      0047E9 80                    3012 	.db 0x80
      0047EA E2                    3013 	.db 0xe2
      0047EB 94                    3014 	.db 0x94
      0047EC 80                    3015 	.db 0x80
      0047ED E2                    3016 	.db 0xe2
      0047EE 94                    3017 	.db 0x94
      0047EF 80                    3018 	.db 0x80
      0047F0 E2                    3019 	.db 0xe2
      0047F1 94                    3020 	.db 0x94
      0047F2 80                    3021 	.db 0x80
      0047F3 E2                    3022 	.db 0xe2
      0047F4 94                    3023 	.db 0x94
      0047F5 80                    3024 	.db 0x80
      0047F6 E2                    3025 	.db 0xe2
      0047F7 94                    3026 	.db 0x94
      0047F8 80                    3027 	.db 0x80
      0047F9 E2                    3028 	.db 0xe2
      0047FA 94                    3029 	.db 0x94
      0047FB 80                    3030 	.db 0x80
      0047FC E2                    3031 	.db 0xe2
      0047FD 94                    3032 	.db 0x94
      0047FE 80                    3033 	.db 0x80
      0047FF E2                    3034 	.db 0xe2
      004800 94                    3035 	.db 0x94
      004801 80                    3036 	.db 0x80
      004802 E2                    3037 	.db 0xe2
      004803 94                    3038 	.db 0x94
      004804 80                    3039 	.db 0x80
      004805 E2                    3040 	.db 0xe2
      004806 94                    3041 	.db 0x94
      004807 80                    3042 	.db 0x80
      004808 E2                    3043 	.db 0xe2
      004809 94                    3044 	.db 0x94
      00480A 80                    3045 	.db 0x80
      00480B E2                    3046 	.db 0xe2
      00480C 94                    3047 	.db 0x94
      00480D 80                    3048 	.db 0x80
      00480E E2                    3049 	.db 0xe2
      00480F 94                    3050 	.db 0x94
      004810 80                    3051 	.db 0x80
      004811 E2                    3052 	.db 0xe2
      004812 94                    3053 	.db 0x94
      004813 80                    3054 	.db 0x80
      004814 E2                    3055 	.db 0xe2
      004815 94                    3056 	.db 0x94
      004816 80                    3057 	.db 0x80
      004817 E2                    3058 	.db 0xe2
      004818 94                    3059 	.db 0x94
      004819 80                    3060 	.db 0x80
      00481A E2                    3061 	.db 0xe2
      00481B 94                    3062 	.db 0x94
      00481C 80                    3063 	.db 0x80
      00481D E2                    3064 	.db 0xe2
      00481E 94                    3065 	.db 0x94
      00481F 80                    3066 	.db 0x80
      004820 E2                    3067 	.db 0xe2
      004821 94                    3068 	.db 0x94
      004822 A4                    3069 	.db 0xa4
      004823 0A                    3070 	.db 0x0a
      004824 0D                    3071 	.db 0x0d
      004825 00                    3072 	.db 0x00
                                   3073 	.area CSEG    (CODE)
                                   3074 	.area CONST   (CODE)
      004826                       3075 ___str_6:
      004826 E2                    3076 	.db 0xe2
      004827 94                    3077 	.db 0x94
      004828 82                    3078 	.db 0x82
      004829 20 20 20 20 20 52 20  3079 	.ascii "     R      "
             20 20 20 20 20
      004835 E2                    3080 	.db 0xe2
      004836 94                    3081 	.db 0x94
      004837 82                    3082 	.db 0x82
      004838 20 52 65 61 64 20 66  3083 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004864 E2                    3084 	.db 0xe2
      004865 94                    3085 	.db 0x94
      004866 82                    3086 	.db 0x82
      004867 0A                    3087 	.db 0x0a
      004868 0D                    3088 	.db 0x0d
      004869 00                    3089 	.db 0x00
                                   3090 	.area CSEG    (CODE)
                                   3091 	.area CONST   (CODE)
      00486A                       3092 ___str_7:
      00486A E2                    3093 	.db 0xe2
      00486B 94                    3094 	.db 0x94
      00486C 82                    3095 	.db 0x82
      00486D 20 20 20 20 20 57 20  3096 	.ascii "     W      "
             20 20 20 20 20
      004879 E2                    3097 	.db 0xe2
      00487A 94                    3098 	.db 0x94
      00487B 82                    3099 	.db 0x82
      00487C 20 57 72 69 74 65 20  3100 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0048A8 E2                    3101 	.db 0xe2
      0048A9 94                    3102 	.db 0x94
      0048AA 82                    3103 	.db 0x82
      0048AB 0A                    3104 	.db 0x0a
      0048AC 0D                    3105 	.db 0x0d
      0048AD 00                    3106 	.db 0x00
                                   3107 	.area CSEG    (CODE)
                                   3108 	.area CONST   (CODE)
      0048AE                       3109 ___str_8:
      0048AE E2                    3110 	.db 0xe2
      0048AF 94                    3111 	.db 0x94
      0048B0 82                    3112 	.db 0x82
      0048B1 20 20 20 20 20 48 20  3113 	.ascii "     H      "
             20 20 20 20 20
      0048BD E2                    3114 	.db 0xe2
      0048BE 94                    3115 	.db 0x94
      0048BF 82                    3116 	.db 0x82
      0048C0 20 44 69 73 70 6C 61  3117 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0048EC E2                    3118 	.db 0xe2
      0048ED 94                    3119 	.db 0x94
      0048EE 82                    3120 	.db 0x82
      0048EF 0A                    3121 	.db 0x0a
      0048F0 0D                    3122 	.db 0x0d
      0048F1 00                    3123 	.db 0x00
                                   3124 	.area CSEG    (CODE)
                                   3125 	.area CONST   (CODE)
      0048F2                       3126 ___str_9:
      0048F2 E2                    3127 	.db 0xe2
      0048F3 94                    3128 	.db 0x94
      0048F4 82                    3129 	.db 0x82
      0048F5 20 20 20 20 20 58 20  3130 	.ascii "     X      "
             20 20 20 20 20
      004901 E2                    3131 	.db 0xe2
      004902 94                    3132 	.db 0x94
      004903 82                    3133 	.db 0x82
      004904 20 52 65 73 65 74 20  3134 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004930 E2                    3135 	.db 0xe2
      004931 94                    3136 	.db 0x94
      004932 82                    3137 	.db 0x82
      004933 0A                    3138 	.db 0x0a
      004934 0D                    3139 	.db 0x0d
      004935 00                    3140 	.db 0x00
                                   3141 	.area CSEG    (CODE)
                                   3142 	.area CONST   (CODE)
      004936                       3143 ___str_10:
      004936 E2                    3144 	.db 0xe2
      004937 94                    3145 	.db 0x94
      004938 82                    3146 	.db 0x82
      004939 20 20 20 20 20 3F 20  3147 	.ascii "     ?      "
             20 20 20 20 20
      004945 E2                    3148 	.db 0xe2
      004946 94                    3149 	.db 0x94
      004947 82                    3150 	.db 0x82
      004948 20 44 69 73 70 6C 61  3151 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004974 E2                    3152 	.db 0xe2
      004975 94                    3153 	.db 0x94
      004976 82                    3154 	.db 0x82
      004977 0A                    3155 	.db 0x0a
      004978 0D                    3156 	.db 0x0d
      004979 00                    3157 	.db 0x00
                                   3158 	.area CSEG    (CODE)
                                   3159 	.area CONST   (CODE)
      00497A                       3160 ___str_11:
      00497A E2                    3161 	.db 0xe2
      00497B 94                    3162 	.db 0x94
      00497C 82                    3163 	.db 0x82
      00497D 20 20 20 20 20 51 20  3164 	.ascii "     Q      "
             20 20 20 20 20
      004989 E2                    3165 	.db 0xe2
      00498A 94                    3166 	.db 0x94
      00498B 82                    3167 	.db 0x82
      00498C 20 51 75 69 74 20 70  3168 	.ascii " Quit program                              "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20
      0049B7 E2                    3169 	.db 0xe2
      0049B8 94                    3170 	.db 0x94
      0049B9 82                    3171 	.db 0x82
      0049BA 0A                    3172 	.db 0x0a
      0049BB 0D                    3173 	.db 0x0d
      0049BC 00                    3174 	.db 0x00
                                   3175 	.area CSEG    (CODE)
                                   3176 	.area CONST   (CODE)
      0049BD                       3177 ___str_12:
      0049BD E2                    3178 	.db 0xe2
      0049BE 94                    3179 	.db 0x94
      0049BF 94                    3180 	.db 0x94
      0049C0 E2                    3181 	.db 0xe2
      0049C1 94                    3182 	.db 0x94
      0049C2 80                    3183 	.db 0x80
      0049C3 E2                    3184 	.db 0xe2
      0049C4 94                    3185 	.db 0x94
      0049C5 80                    3186 	.db 0x80
      0049C6 E2                    3187 	.db 0xe2
      0049C7 94                    3188 	.db 0x94
      0049C8 80                    3189 	.db 0x80
      0049C9 E2                    3190 	.db 0xe2
      0049CA 94                    3191 	.db 0x94
      0049CB 80                    3192 	.db 0x80
      0049CC E2                    3193 	.db 0xe2
      0049CD 94                    3194 	.db 0x94
      0049CE 80                    3195 	.db 0x80
      0049CF E2                    3196 	.db 0xe2
      0049D0 94                    3197 	.db 0x94
      0049D1 80                    3198 	.db 0x80
      0049D2 E2                    3199 	.db 0xe2
      0049D3 94                    3200 	.db 0x94
      0049D4 80                    3201 	.db 0x80
      0049D5 E2                    3202 	.db 0xe2
      0049D6 94                    3203 	.db 0x94
      0049D7 80                    3204 	.db 0x80
      0049D8 E2                    3205 	.db 0xe2
      0049D9 94                    3206 	.db 0x94
      0049DA 80                    3207 	.db 0x80
      0049DB E2                    3208 	.db 0xe2
      0049DC 94                    3209 	.db 0x94
      0049DD 80                    3210 	.db 0x80
      0049DE E2                    3211 	.db 0xe2
      0049DF 94                    3212 	.db 0x94
      0049E0 80                    3213 	.db 0x80
      0049E1 E2                    3214 	.db 0xe2
      0049E2 94                    3215 	.db 0x94
      0049E3 80                    3216 	.db 0x80
      0049E4 E2                    3217 	.db 0xe2
      0049E5 94                    3218 	.db 0x94
      0049E6 B4                    3219 	.db 0xb4
      0049E7 E2                    3220 	.db 0xe2
      0049E8 94                    3221 	.db 0x94
      0049E9 80                    3222 	.db 0x80
      0049EA E2                    3223 	.db 0xe2
      0049EB 94                    3224 	.db 0x94
      0049EC 80                    3225 	.db 0x80
      0049ED E2                    3226 	.db 0xe2
      0049EE 94                    3227 	.db 0x94
      0049EF 80                    3228 	.db 0x80
      0049F0 E2                    3229 	.db 0xe2
      0049F1 94                    3230 	.db 0x94
      0049F2 80                    3231 	.db 0x80
      0049F3 E2                    3232 	.db 0xe2
      0049F4 94                    3233 	.db 0x94
      0049F5 80                    3234 	.db 0x80
      0049F6 E2                    3235 	.db 0xe2
      0049F7 94                    3236 	.db 0x94
      0049F8 80                    3237 	.db 0x80
      0049F9 E2                    3238 	.db 0xe2
      0049FA 94                    3239 	.db 0x94
      0049FB 80                    3240 	.db 0x80
      0049FC E2                    3241 	.db 0xe2
      0049FD 94                    3242 	.db 0x94
      0049FE 80                    3243 	.db 0x80
      0049FF E2                    3244 	.db 0xe2
      004A00 94                    3245 	.db 0x94
      004A01 80                    3246 	.db 0x80
      004A02 E2                    3247 	.db 0xe2
      004A03 94                    3248 	.db 0x94
      004A04 80                    3249 	.db 0x80
      004A05 E2                    3250 	.db 0xe2
      004A06 94                    3251 	.db 0x94
      004A07 80                    3252 	.db 0x80
      004A08 E2                    3253 	.db 0xe2
      004A09 94                    3254 	.db 0x94
      004A0A 80                    3255 	.db 0x80
      004A0B E2                    3256 	.db 0xe2
      004A0C 94                    3257 	.db 0x94
      004A0D 80                    3258 	.db 0x80
      004A0E E2                    3259 	.db 0xe2
      004A0F 94                    3260 	.db 0x94
      004A10 80                    3261 	.db 0x80
      004A11 E2                    3262 	.db 0xe2
      004A12 94                    3263 	.db 0x94
      004A13 80                    3264 	.db 0x80
      004A14 E2                    3265 	.db 0xe2
      004A15 94                    3266 	.db 0x94
      004A16 80                    3267 	.db 0x80
      004A17 E2                    3268 	.db 0xe2
      004A18 94                    3269 	.db 0x94
      004A19 80                    3270 	.db 0x80
      004A1A E2                    3271 	.db 0xe2
      004A1B 94                    3272 	.db 0x94
      004A1C 80                    3273 	.db 0x80
      004A1D E2                    3274 	.db 0xe2
      004A1E 94                    3275 	.db 0x94
      004A1F 80                    3276 	.db 0x80
      004A20 E2                    3277 	.db 0xe2
      004A21 94                    3278 	.db 0x94
      004A22 80                    3279 	.db 0x80
      004A23 E2                    3280 	.db 0xe2
      004A24 94                    3281 	.db 0x94
      004A25 80                    3282 	.db 0x80
      004A26 E2                    3283 	.db 0xe2
      004A27 94                    3284 	.db 0x94
      004A28 80                    3285 	.db 0x80
      004A29 E2                    3286 	.db 0xe2
      004A2A 94                    3287 	.db 0x94
      004A2B 80                    3288 	.db 0x80
      004A2C E2                    3289 	.db 0xe2
      004A2D 94                    3290 	.db 0x94
      004A2E 80                    3291 	.db 0x80
      004A2F E2                    3292 	.db 0xe2
      004A30 94                    3293 	.db 0x94
      004A31 80                    3294 	.db 0x80
      004A32 E2                    3295 	.db 0xe2
      004A33 94                    3296 	.db 0x94
      004A34 80                    3297 	.db 0x80
      004A35 E2                    3298 	.db 0xe2
      004A36 94                    3299 	.db 0x94
      004A37 80                    3300 	.db 0x80
      004A38 E2                    3301 	.db 0xe2
      004A39 94                    3302 	.db 0x94
      004A3A 80                    3303 	.db 0x80
      004A3B E2                    3304 	.db 0xe2
      004A3C 94                    3305 	.db 0x94
      004A3D 80                    3306 	.db 0x80
      004A3E E2                    3307 	.db 0xe2
      004A3F 94                    3308 	.db 0x94
      004A40 80                    3309 	.db 0x80
      004A41 E2                    3310 	.db 0xe2
      004A42 94                    3311 	.db 0x94
      004A43 80                    3312 	.db 0x80
      004A44 E2                    3313 	.db 0xe2
      004A45 94                    3314 	.db 0x94
      004A46 80                    3315 	.db 0x80
      004A47 E2                    3316 	.db 0xe2
      004A48 94                    3317 	.db 0x94
      004A49 80                    3318 	.db 0x80
      004A4A E2                    3319 	.db 0xe2
      004A4B 94                    3320 	.db 0x94
      004A4C 80                    3321 	.db 0x80
      004A4D E2                    3322 	.db 0xe2
      004A4E 94                    3323 	.db 0x94
      004A4F 80                    3324 	.db 0x80
      004A50 E2                    3325 	.db 0xe2
      004A51 94                    3326 	.db 0x94
      004A52 80                    3327 	.db 0x80
      004A53 E2                    3328 	.db 0xe2
      004A54 94                    3329 	.db 0x94
      004A55 80                    3330 	.db 0x80
      004A56 E2                    3331 	.db 0xe2
      004A57 94                    3332 	.db 0x94
      004A58 80                    3333 	.db 0x80
      004A59 E2                    3334 	.db 0xe2
      004A5A 94                    3335 	.db 0x94
      004A5B 80                    3336 	.db 0x80
      004A5C E2                    3337 	.db 0xe2
      004A5D 94                    3338 	.db 0x94
      004A5E 80                    3339 	.db 0x80
      004A5F E2                    3340 	.db 0xe2
      004A60 94                    3341 	.db 0x94
      004A61 80                    3342 	.db 0x80
      004A62 E2                    3343 	.db 0xe2
      004A63 94                    3344 	.db 0x94
      004A64 80                    3345 	.db 0x80
      004A65 E2                    3346 	.db 0xe2
      004A66 94                    3347 	.db 0x94
      004A67 80                    3348 	.db 0x80
      004A68 E2                    3349 	.db 0xe2
      004A69 94                    3350 	.db 0x94
      004A6A 80                    3351 	.db 0x80
      004A6B E2                    3352 	.db 0xe2
      004A6C 94                    3353 	.db 0x94
      004A6D 98                    3354 	.db 0x98
      004A6E 0A                    3355 	.db 0x0a
      004A6F 0D                    3356 	.db 0x0d
      004A70 00                    3357 	.db 0x00
                                   3358 	.area CSEG    (CODE)
                                   3359 	.area CONST   (CODE)
      004A71                       3360 ___str_13:
      004A71 24 20 25 63           3361 	.ascii "$ %c"
      004A75 0A                    3362 	.db 0x0a
      004A76 0D                    3363 	.db 0x0d
      004A77 00                    3364 	.db 0x00
                                   3365 	.area CSEG    (CODE)
                                   3366 	.area CONST   (CODE)
      004A78                       3367 ___str_14:
      004A78 0A                    3368 	.db 0x0a
      004A79 E2                    3369 	.db 0xe2
      004A7A 94                    3370 	.db 0x94
      004A7B 8C                    3371 	.db 0x8c
      004A7C E2                    3372 	.db 0xe2
      004A7D 94                    3373 	.db 0x94
      004A7E 80                    3374 	.db 0x80
      004A7F E2                    3375 	.db 0xe2
      004A80 94                    3376 	.db 0x94
      004A81 80                    3377 	.db 0x80
      004A82 E2                    3378 	.db 0xe2
      004A83 94                    3379 	.db 0x94
      004A84 80                    3380 	.db 0x80
      004A85 E2                    3381 	.db 0xe2
      004A86 94                    3382 	.db 0x94
      004A87 80                    3383 	.db 0x80
      004A88 E2                    3384 	.db 0xe2
      004A89 94                    3385 	.db 0x94
      004A8A 80                    3386 	.db 0x80
      004A8B E2                    3387 	.db 0xe2
      004A8C 94                    3388 	.db 0x94
      004A8D 80                    3389 	.db 0x80
      004A8E E2                    3390 	.db 0xe2
      004A8F 94                    3391 	.db 0x94
      004A90 80                    3392 	.db 0x80
      004A91 E2                    3393 	.db 0xe2
      004A92 94                    3394 	.db 0x94
      004A93 80                    3395 	.db 0x80
      004A94 E2                    3396 	.db 0xe2
      004A95 94                    3397 	.db 0x94
      004A96 80                    3398 	.db 0x80
      004A97 E2                    3399 	.db 0xe2
      004A98 94                    3400 	.db 0x94
      004A99 80                    3401 	.db 0x80
      004A9A E2                    3402 	.db 0xe2
      004A9B 94                    3403 	.db 0x94
      004A9C 80                    3404 	.db 0x80
      004A9D E2                    3405 	.db 0xe2
      004A9E 94                    3406 	.db 0x94
      004A9F 80                    3407 	.db 0x80
      004AA0 E2                    3408 	.db 0xe2
      004AA1 94                    3409 	.db 0x94
      004AA2 80                    3410 	.db 0x80
      004AA3 E2                    3411 	.db 0xe2
      004AA4 94                    3412 	.db 0x94
      004AA5 80                    3413 	.db 0x80
      004AA6 E2                    3414 	.db 0xe2
      004AA7 94                    3415 	.db 0x94
      004AA8 80                    3416 	.db 0x80
      004AA9 20 57 52 49 54 45 20  3417 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
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
      004AC9 E2                    3433 	.db 0xe2
      004ACA 94                    3434 	.db 0x94
      004ACB 80                    3435 	.db 0x80
      004ACC E2                    3436 	.db 0xe2
      004ACD 94                    3437 	.db 0x94
      004ACE 80                    3438 	.db 0x80
      004ACF E2                    3439 	.db 0xe2
      004AD0 94                    3440 	.db 0x94
      004AD1 80                    3441 	.db 0x80
      004AD2 E2                    3442 	.db 0xe2
      004AD3 94                    3443 	.db 0x94
      004AD4 80                    3444 	.db 0x80
      004AD5 E2                    3445 	.db 0xe2
      004AD6 94                    3446 	.db 0x94
      004AD7 80                    3447 	.db 0x80
      004AD8 E2                    3448 	.db 0xe2
      004AD9 94                    3449 	.db 0x94
      004ADA 80                    3450 	.db 0x80
      004ADB E2                    3451 	.db 0xe2
      004ADC 94                    3452 	.db 0x94
      004ADD 80                    3453 	.db 0x80
      004ADE E2                    3454 	.db 0xe2
      004ADF 94                    3455 	.db 0x94
      004AE0 80                    3456 	.db 0x80
      004AE1 E2                    3457 	.db 0xe2
      004AE2 94                    3458 	.db 0x94
      004AE3 80                    3459 	.db 0x80
      004AE4 E2                    3460 	.db 0xe2
      004AE5 94                    3461 	.db 0x94
      004AE6 90                    3462 	.db 0x90
      004AE7 0A                    3463 	.db 0x0a
      004AE8 0D                    3464 	.db 0x0d
      004AE9 00                    3465 	.db 0x00
                                   3466 	.area CSEG    (CODE)
                                   3467 	.area CONST   (CODE)
      004AEA                       3468 ___str_15:
      004AEA 7C 57 72 69 74 69 6E  3469 	.ascii "|Writing at Address 0x%03X Data 0x%02X          |"
             67 20 61 74 20 41 64
             64 72 65 73 73 20 30
             78 25 30 33 58 20 44
             61 74 61 20 30 78 25
             30 32 58 20 20 20 20
             20 20 20 20 20 20 7C
      004B1B 0A                    3470 	.db 0x0a
      004B1C 0D                    3471 	.db 0x0d
      004B1D 00                    3472 	.db 0x00
                                   3473 	.area CSEG    (CODE)
                                   3474 	.area CONST   (CODE)
      004B1E                       3475 ___str_16:
      004B1E 0A                    3476 	.db 0x0a
      004B1F E2                    3477 	.db 0xe2
      004B20 94                    3478 	.db 0x94
      004B21 8C                    3479 	.db 0x8c
      004B22 E2                    3480 	.db 0xe2
      004B23 94                    3481 	.db 0x94
      004B24 80                    3482 	.db 0x80
      004B25 E2                    3483 	.db 0xe2
      004B26 94                    3484 	.db 0x94
      004B27 80                    3485 	.db 0x80
      004B28 E2                    3486 	.db 0xe2
      004B29 94                    3487 	.db 0x94
      004B2A 80                    3488 	.db 0x80
      004B2B E2                    3489 	.db 0xe2
      004B2C 94                    3490 	.db 0x94
      004B2D 80                    3491 	.db 0x80
      004B2E E2                    3492 	.db 0xe2
      004B2F 94                    3493 	.db 0x94
      004B30 80                    3494 	.db 0x80
      004B31 E2                    3495 	.db 0xe2
      004B32 94                    3496 	.db 0x94
      004B33 80                    3497 	.db 0x80
      004B34 E2                    3498 	.db 0xe2
      004B35 94                    3499 	.db 0x94
      004B36 80                    3500 	.db 0x80
      004B37 E2                    3501 	.db 0xe2
      004B38 94                    3502 	.db 0x94
      004B39 80                    3503 	.db 0x80
      004B3A E2                    3504 	.db 0xe2
      004B3B 94                    3505 	.db 0x94
      004B3C 80                    3506 	.db 0x80
      004B3D E2                    3507 	.db 0xe2
      004B3E 94                    3508 	.db 0x94
      004B3F 80                    3509 	.db 0x80
      004B40 E2                    3510 	.db 0xe2
      004B41 94                    3511 	.db 0x94
      004B42 80                    3512 	.db 0x80
      004B43 E2                    3513 	.db 0xe2
      004B44 94                    3514 	.db 0x94
      004B45 80                    3515 	.db 0x80
      004B46 E2                    3516 	.db 0xe2
      004B47 94                    3517 	.db 0x94
      004B48 80                    3518 	.db 0x80
      004B49 E2                    3519 	.db 0xe2
      004B4A 94                    3520 	.db 0x94
      004B4B 80                    3521 	.db 0x80
      004B4C E2                    3522 	.db 0xe2
      004B4D 94                    3523 	.db 0x94
      004B4E 80                    3524 	.db 0x80
      004B4F 20 52 45 41 44 20 4F  3525 	.ascii " READ OPERATION "
             50 45 52 41 54 49 4F
             4E 20
      004B5F E2                    3526 	.db 0xe2
      004B60 94                    3527 	.db 0x94
      004B61 80                    3528 	.db 0x80
      004B62 E2                    3529 	.db 0xe2
      004B63 94                    3530 	.db 0x94
      004B64 80                    3531 	.db 0x80
      004B65 E2                    3532 	.db 0xe2
      004B66 94                    3533 	.db 0x94
      004B67 80                    3534 	.db 0x80
      004B68 E2                    3535 	.db 0xe2
      004B69 94                    3536 	.db 0x94
      004B6A 80                    3537 	.db 0x80
      004B6B E2                    3538 	.db 0xe2
      004B6C 94                    3539 	.db 0x94
      004B6D 80                    3540 	.db 0x80
      004B6E E2                    3541 	.db 0xe2
      004B6F 94                    3542 	.db 0x94
      004B70 80                    3543 	.db 0x80
      004B71 E2                    3544 	.db 0xe2
      004B72 94                    3545 	.db 0x94
      004B73 80                    3546 	.db 0x80
      004B74 E2                    3547 	.db 0xe2
      004B75 94                    3548 	.db 0x94
      004B76 80                    3549 	.db 0x80
      004B77 E2                    3550 	.db 0xe2
      004B78 94                    3551 	.db 0x94
      004B79 80                    3552 	.db 0x80
      004B7A E2                    3553 	.db 0xe2
      004B7B 94                    3554 	.db 0x94
      004B7C 80                    3555 	.db 0x80
      004B7D E2                    3556 	.db 0xe2
      004B7E 94                    3557 	.db 0x94
      004B7F 80                    3558 	.db 0x80
      004B80 E2                    3559 	.db 0xe2
      004B81 94                    3560 	.db 0x94
      004B82 80                    3561 	.db 0x80
      004B83 E2                    3562 	.db 0xe2
      004B84 94                    3563 	.db 0x94
      004B85 80                    3564 	.db 0x80
      004B86 E2                    3565 	.db 0xe2
      004B87 94                    3566 	.db 0x94
      004B88 80                    3567 	.db 0x80
      004B89 E2                    3568 	.db 0xe2
      004B8A 94                    3569 	.db 0x94
      004B8B 80                    3570 	.db 0x80
      004B8C E2                    3571 	.db 0xe2
      004B8D 94                    3572 	.db 0x94
      004B8E 90                    3573 	.db 0x90
      004B8F 0A                    3574 	.db 0x0a
      004B90 0D                    3575 	.db 0x0d
      004B91 00                    3576 	.db 0x00
                                   3577 	.area CSEG    (CODE)
                                   3578 	.area CONST   (CODE)
      004B92                       3579 ___str_17:
      004B92 7C 52 65 61 64 69 6E  3580 	.ascii "|Reading from Address 0x%03X           |"
             67 20 66 72 6F 6D 20
             41 64 64 72 65 73 73
             20 30 78 25 30 33 58
             20 20 20 20 20 20 20
             20 20 20 20 7C
      004BBA 0A                    3581 	.db 0x0a
      004BBB 0D                    3582 	.db 0x0d
      004BBC 00                    3583 	.db 0x00
                                   3584 	.area CSEG    (CODE)
                                   3585 	.area CONST   (CODE)
      004BBD                       3586 ___str_18:
      004BBD 49 4E 56 41 4C 49 44  3587 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      004BCA 0A                    3588 	.db 0x0a
      004BCB 0D                    3589 	.db 0x0d
      004BCC 00                    3590 	.db 0x00
                                   3591 	.area CSEG    (CODE)
                                   3592 	.area CONST   (CODE)
      004BCD                       3593 ___str_19:
      004BCD E2                    3594 	.db 0xe2
      004BCE 94                    3595 	.db 0x94
      004BCF 82                    3596 	.db 0x82
      004BD0 20 45 6E 74 65 72 20  3597 	.ascii " Enter address (hex, up to 3 characters): "
             61 64 64 72 65 73 73
             20 28 68 65 78 2C 20
             75 70 20 74 6F 20 33
             20 63 68 61 72 61 63
             74 65 72 73 29 3A 20
      004BFA 0A                    3598 	.db 0x0a
      004BFB 0D                    3599 	.db 0x0d
      004BFC 7C                    3600 	.ascii "|"
      004BFD 00                    3601 	.db 0x00
                                   3602 	.area CSEG    (CODE)
                                   3603 	.area CONST   (CODE)
      004BFE                       3604 ___str_20:
      004BFE 24 20                 3605 	.ascii "$ "
      004C00 00                    3606 	.db 0x00
                                   3607 	.area CSEG    (CODE)
                                   3608 	.area CONST   (CODE)
      004C01                       3609 ___str_21:
      004C01 0A                    3610 	.db 0x0a
      004C02 0D                    3611 	.db 0x0d
      004C03 E2                    3612 	.db 0xe2
      004C04 94                    3613 	.db 0x94
      004C05 82                    3614 	.db 0x82
      004C06 20 45 6E 74 65 72 65  3615 	.ascii " Entered address: 0x%03X"
             64 20 61 64 64 72 65
             73 73 3A 20 30 78 25
             30 33 58
      004C1E 0A                    3616 	.db 0x0a
      004C1F 0D                    3617 	.db 0x0d
      004C20 00                    3618 	.db 0x00
                                   3619 	.area CSEG    (CODE)
                                   3620 	.area CONST   (CODE)
      004C21                       3621 ___str_22:
      004C21 41 64 64 72 65 73 73  3622 	.ascii "Address out of Range"
             20 6F 75 74 20 6F 66
             20 52 61 6E 67 65
      004C35 0A                    3623 	.db 0x0a
      004C36 0D                    3624 	.db 0x0d
      004C37 00                    3625 	.db 0x00
                                   3626 	.area CSEG    (CODE)
                                   3627 	.area CONST   (CODE)
      004C38                       3628 ___str_23:
      004C38 E2                    3629 	.db 0xe2
      004C39 94                    3630 	.db 0x94
      004C3A 82                    3631 	.db 0x82
      004C3B 20 45 6E 74 65 72 20  3632 	.ascii " Enter data (hex, up to 2 characters): "
             64 61 74 61 20 28 68
             65 78 2C 20 75 70 20
             74 6F 20 32 20 63 68
             61 72 61 63 74 65 72
             73 29 3A 20
      004C62 0A                    3633 	.db 0x0a
      004C63 0D                    3634 	.db 0x0d
      004C64 7C                    3635 	.ascii "|"
      004C65 00                    3636 	.db 0x00
                                   3637 	.area CSEG    (CODE)
                                   3638 	.area CONST   (CODE)
      004C66                       3639 ___str_24:
      004C66 0A                    3640 	.db 0x0a
      004C67 0D                    3641 	.db 0x0d
      004C68 E2                    3642 	.db 0xe2
      004C69 94                    3643 	.db 0x94
      004C6A 82                    3644 	.db 0x82
      004C6B 20 45 6E 74 65 72 65  3645 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      004C80 0A                    3646 	.db 0x0a
      004C81 0D                    3647 	.db 0x0d
      004C82 00                    3648 	.db 0x00
                                   3649 	.area CSEG    (CODE)
                                   3650 	.area CONST   (CODE)
      004C83                       3651 ___str_25:
      004C83 44 61 74 61 20 6F 75  3652 	.ascii "Data out of Range"
             74 20 6F 66 20 52 61
             6E 67 65
      004C94 0A                    3653 	.db 0x0a
      004C95 0D                    3654 	.db 0x0d
      004C96 00                    3655 	.db 0x00
                                   3656 	.area CSEG    (CODE)
                                   3657 	.area CONST   (CODE)
      004C97                       3658 ___str_26:
      004C97 45 72 72 6F 72 3A 20  3659 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      004CBF 0A                    3660 	.db 0x0a
      004CC0 0D                    3661 	.db 0x0d
      004CC1 00                    3662 	.db 0x00
                                   3663 	.area CSEG    (CODE)
                                   3664 	.area CONST   (CODE)
      004CC2                       3665 ___str_27:
      004CC2 45 72 72 6F 72 3A 20  3666 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      004CE2 0A                    3667 	.db 0x0a
      004CE3 0D                    3668 	.db 0x0d
      004CE4 00                    3669 	.db 0x00
                                   3670 	.area CSEG    (CODE)
                                   3671 	.area CONST   (CODE)
      004CE5                       3672 ___str_28:
      004CE5 45 72 72 6F 72 3A 20  3673 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      004CFB 0A                    3674 	.db 0x0a
      004CFC 0D                    3675 	.db 0x0d
      004CFD 00                    3676 	.db 0x00
                                   3677 	.area CSEG    (CODE)
                                   3678 	.area CONST   (CODE)
      004CFE                       3679 ___str_29:
      004CFE 7C 20 57 72 69 74 69  3680 	.ascii "| Writing at Address 0x%03X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 33 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      004D30 0A                    3681 	.db 0x0a
      004D31 0D                    3682 	.db 0x0d
      004D32 00                    3683 	.db 0x00
                                   3684 	.area CSEG    (CODE)
                                   3685 	.area CONST   (CODE)
      004D33                       3686 ___str_30:
      004D33 E2                    3687 	.db 0xe2
      004D34 94                    3688 	.db 0x94
      004D35 82                    3689 	.db 0x82
      004D36 20 57 72 69 74 65 20  3690 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      004D65 E2                    3691 	.db 0xe2
      004D66 94                    3692 	.db 0x94
      004D67 82                    3693 	.db 0x82
      004D68 0A                    3694 	.db 0x0a
      004D69 0D                    3695 	.db 0x0d
      004D6A 00                    3696 	.db 0x00
                                   3697 	.area CSEG    (CODE)
                                   3698 	.area CONST   (CODE)
      004D6B                       3699 ___str_31:
      004D6B E2                    3700 	.db 0xe2
      004D6C 94                    3701 	.db 0x94
      004D6D 94                    3702 	.db 0x94
      004D6E E2                    3703 	.db 0xe2
      004D6F 94                    3704 	.db 0x94
      004D70 80                    3705 	.db 0x80
      004D71 E2                    3706 	.db 0xe2
      004D72 94                    3707 	.db 0x94
      004D73 80                    3708 	.db 0x80
      004D74 E2                    3709 	.db 0xe2
      004D75 94                    3710 	.db 0x94
      004D76 80                    3711 	.db 0x80
      004D77 E2                    3712 	.db 0xe2
      004D78 94                    3713 	.db 0x94
      004D79 80                    3714 	.db 0x80
      004D7A E2                    3715 	.db 0xe2
      004D7B 94                    3716 	.db 0x94
      004D7C 80                    3717 	.db 0x80
      004D7D E2                    3718 	.db 0xe2
      004D7E 94                    3719 	.db 0x94
      004D7F 80                    3720 	.db 0x80
      004D80 E2                    3721 	.db 0xe2
      004D81 94                    3722 	.db 0x94
      004D82 80                    3723 	.db 0x80
      004D83 E2                    3724 	.db 0xe2
      004D84 94                    3725 	.db 0x94
      004D85 80                    3726 	.db 0x80
      004D86 E2                    3727 	.db 0xe2
      004D87 94                    3728 	.db 0x94
      004D88 80                    3729 	.db 0x80
      004D89 E2                    3730 	.db 0xe2
      004D8A 94                    3731 	.db 0x94
      004D8B 80                    3732 	.db 0x80
      004D8C E2                    3733 	.db 0xe2
      004D8D 94                    3734 	.db 0x94
      004D8E 80                    3735 	.db 0x80
      004D8F E2                    3736 	.db 0xe2
      004D90 94                    3737 	.db 0x94
      004D91 80                    3738 	.db 0x80
      004D92 E2                    3739 	.db 0xe2
      004D93 94                    3740 	.db 0x94
      004D94 80                    3741 	.db 0x80
      004D95 E2                    3742 	.db 0xe2
      004D96 94                    3743 	.db 0x94
      004D97 80                    3744 	.db 0x80
      004D98 E2                    3745 	.db 0xe2
      004D99 94                    3746 	.db 0x94
      004D9A 80                    3747 	.db 0x80
      004D9B E2                    3748 	.db 0xe2
      004D9C 94                    3749 	.db 0x94
      004D9D 80                    3750 	.db 0x80
      004D9E E2                    3751 	.db 0xe2
      004D9F 94                    3752 	.db 0x94
      004DA0 80                    3753 	.db 0x80
      004DA1 E2                    3754 	.db 0xe2
      004DA2 94                    3755 	.db 0x94
      004DA3 80                    3756 	.db 0x80
      004DA4 E2                    3757 	.db 0xe2
      004DA5 94                    3758 	.db 0x94
      004DA6 80                    3759 	.db 0x80
      004DA7 E2                    3760 	.db 0xe2
      004DA8 94                    3761 	.db 0x94
      004DA9 80                    3762 	.db 0x80
      004DAA E2                    3763 	.db 0xe2
      004DAB 94                    3764 	.db 0x94
      004DAC 80                    3765 	.db 0x80
      004DAD E2                    3766 	.db 0xe2
      004DAE 94                    3767 	.db 0x94
      004DAF 80                    3768 	.db 0x80
      004DB0 E2                    3769 	.db 0xe2
      004DB1 94                    3770 	.db 0x94
      004DB2 80                    3771 	.db 0x80
      004DB3 E2                    3772 	.db 0xe2
      004DB4 94                    3773 	.db 0x94
      004DB5 80                    3774 	.db 0x80
      004DB6 E2                    3775 	.db 0xe2
      004DB7 94                    3776 	.db 0x94
      004DB8 80                    3777 	.db 0x80
      004DB9 E2                    3778 	.db 0xe2
      004DBA 94                    3779 	.db 0x94
      004DBB 80                    3780 	.db 0x80
      004DBC E2                    3781 	.db 0xe2
      004DBD 94                    3782 	.db 0x94
      004DBE 80                    3783 	.db 0x80
      004DBF E2                    3784 	.db 0xe2
      004DC0 94                    3785 	.db 0x94
      004DC1 80                    3786 	.db 0x80
      004DC2 E2                    3787 	.db 0xe2
      004DC3 94                    3788 	.db 0x94
      004DC4 80                    3789 	.db 0x80
      004DC5 E2                    3790 	.db 0xe2
      004DC6 94                    3791 	.db 0x94
      004DC7 80                    3792 	.db 0x80
      004DC8 E2                    3793 	.db 0xe2
      004DC9 94                    3794 	.db 0x94
      004DCA 80                    3795 	.db 0x80
      004DCB E2                    3796 	.db 0xe2
      004DCC 94                    3797 	.db 0x94
      004DCD 80                    3798 	.db 0x80
      004DCE E2                    3799 	.db 0xe2
      004DCF 94                    3800 	.db 0x94
      004DD0 80                    3801 	.db 0x80
      004DD1 E2                    3802 	.db 0xe2
      004DD2 94                    3803 	.db 0x94
      004DD3 80                    3804 	.db 0x80
      004DD4 E2                    3805 	.db 0xe2
      004DD5 94                    3806 	.db 0x94
      004DD6 80                    3807 	.db 0x80
      004DD7 E2                    3808 	.db 0xe2
      004DD8 94                    3809 	.db 0x94
      004DD9 80                    3810 	.db 0x80
      004DDA E2                    3811 	.db 0xe2
      004DDB 94                    3812 	.db 0x94
      004DDC 80                    3813 	.db 0x80
      004DDD E2                    3814 	.db 0xe2
      004DDE 94                    3815 	.db 0x94
      004DDF 80                    3816 	.db 0x80
      004DE0 E2                    3817 	.db 0xe2
      004DE1 94                    3818 	.db 0x94
      004DE2 80                    3819 	.db 0x80
      004DE3 E2                    3820 	.db 0xe2
      004DE4 94                    3821 	.db 0x94
      004DE5 80                    3822 	.db 0x80
      004DE6 E2                    3823 	.db 0xe2
      004DE7 94                    3824 	.db 0x94
      004DE8 80                    3825 	.db 0x80
      004DE9 E2                    3826 	.db 0xe2
      004DEA 94                    3827 	.db 0x94
      004DEB 80                    3828 	.db 0x80
      004DEC E2                    3829 	.db 0xe2
      004DED 94                    3830 	.db 0x94
      004DEE 80                    3831 	.db 0x80
      004DEF E2                    3832 	.db 0xe2
      004DF0 94                    3833 	.db 0x94
      004DF1 80                    3834 	.db 0x80
      004DF2 E2                    3835 	.db 0xe2
      004DF3 94                    3836 	.db 0x94
      004DF4 80                    3837 	.db 0x80
      004DF5 E2                    3838 	.db 0xe2
      004DF6 94                    3839 	.db 0x94
      004DF7 80                    3840 	.db 0x80
      004DF8 E2                    3841 	.db 0xe2
      004DF9 94                    3842 	.db 0x94
      004DFA 80                    3843 	.db 0x80
      004DFB E2                    3844 	.db 0xe2
      004DFC 94                    3845 	.db 0x94
      004DFD 98                    3846 	.db 0x98
      004DFE 0A                    3847 	.db 0x0a
      004DFF 0D                    3848 	.db 0x0d
      004E00 00                    3849 	.db 0x00
                                   3850 	.area CSEG    (CODE)
                                   3851 	.area CONST   (CODE)
      004E01                       3852 ___str_32:
      004E01 45 72 72 6F 72 3A 20  3853 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      004E2E 0A                    3854 	.db 0x0a
      004E2F 0D                    3855 	.db 0x0d
      004E30 00                    3856 	.db 0x00
                                   3857 	.area CSEG    (CODE)
                                   3858 	.area CONST   (CODE)
      004E31                       3859 ___str_33:
      004E31 45 72 72 6F 72 3A 20  3860 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      004E5D 0A                    3861 	.db 0x0a
      004E5E 0D                    3862 	.db 0x0d
      004E5F 00                    3863 	.db 0x00
                                   3864 	.area CSEG    (CODE)
                                   3865 	.area CONST   (CODE)
      004E60                       3866 ___str_34:
      004E60 E2                    3867 	.db 0xe2
      004E61 94                    3868 	.db 0x94
      004E62 82                    3869 	.db 0x82
      004E63 20 52 65 61 64 69 6E  3870 	.ascii " Reading from Adress: 0x%03X Data: 0x%02X                   "
             67 20 66 72 6F 6D 20
             41 64 72 65 73 73 3A
             20 30 78 25 30 33 58
             20 44 61 74 61 3A 20
             30 78 25 30 32 58 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      004E9F 20                    3871 	.ascii " "
      004EA0 0A                    3872 	.db 0x0a
      004EA1 0D                    3873 	.db 0x0d
      004EA2 00                    3874 	.db 0x00
                                   3875 	.area CSEG    (CODE)
                                   3876 	.area CONST   (CODE)
      004EA3                       3877 ___str_35:
      004EA3 E2                    3878 	.db 0xe2
      004EA4 94                    3879 	.db 0x94
      004EA5 82                    3880 	.db 0x82
      004EA6 20 52 65 61 64 20 73  3881 	.ascii " Read successful !                  "
             75 63 63 65 73 73 66
             75 6C 20 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20
      004ECA E2                    3882 	.db 0xe2
      004ECB 94                    3883 	.db 0x94
      004ECC 82                    3884 	.db 0x82
      004ECD 0A                    3885 	.db 0x0a
      004ECE 0D                    3886 	.db 0x0d
      004ECF 00                    3887 	.db 0x00
                                   3888 	.area CSEG    (CODE)
                                   3889 	.area CONST   (CODE)
      004ED0                       3890 ___str_36:
      004ED0 41 43 4B 20 44 49 44  3891 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      004EE2 0A                    3892 	.db 0x0a
      004EE3 0D                    3893 	.db 0x0d
      004EE4 00                    3894 	.db 0x00
                                   3895 	.area CSEG    (CODE)
                                   3896 	.area CONST   (CODE)
      004EE5                       3897 ___str_37:
      004EE5 54 72 61 6E 73 6D 69  3898 	.ascii "Transmission successfull"
             73 73 69 6F 6E 20 73
             75 63 63 65 73 73 66
             75 6C 6C
      004EFD 0A                    3899 	.db 0x0a
      004EFE 0D                    3900 	.db 0x0d
      004EFF 00                    3901 	.db 0x00
                                   3902 	.area CSEG    (CODE)
                                   3903 	.area CONST   (CODE)
      004F00                       3904 ___str_38:
      004F00 57 72 69 74 69 6E 67  3905 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      004F25 0A                    3906 	.db 0x0a
      004F26 0D                    3907 	.db 0x0d
      004F27 00                    3908 	.db 0x00
                                   3909 	.area CSEG    (CODE)
                                   3910 	.area CONST   (CODE)
      004F28                       3911 ___str_39:
      004F28 52 65 61 64 20 62 61  3912 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      004F4D 0A                    3913 	.db 0x0a
      004F4E 0D                    3914 	.db 0x0d
      004F4F 00                    3915 	.db 0x00
                                   3916 	.area CSEG    (CODE)
                                   3917 	.area CONST   (CODE)
      004F50                       3918 ___str_40:
      004F50 4D 41 54 43 48 20 2D  3919 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      004F6E 0A                    3920 	.db 0x0a
      004F6F 0D                    3921 	.db 0x0d
      004F70 00                    3922 	.db 0x00
                                   3923 	.area CSEG    (CODE)
                                   3924 	.area CONST   (CODE)
      004F71                       3925 ___str_41:
      004F71 45 52 52 4F 52 20 2D  3926 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      004F87 0A                    3927 	.db 0x0a
      004F88 0D                    3928 	.db 0x0d
      004F89 00                    3929 	.db 0x00
                                   3930 	.area CSEG    (CODE)
                                   3931 	.area XINIT   (CODE)
                                   3932 	.area CABS    (ABS,CODE)
