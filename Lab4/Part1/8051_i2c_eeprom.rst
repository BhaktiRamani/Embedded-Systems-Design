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
                                    224 	.globl _eeprom_reset
                                    225 	.globl _i2c_delay
                                    226 ;--------------------------------------------------------
                                    227 ; special function registers
                                    228 ;--------------------------------------------------------
                                    229 	.area RSEG    (ABS,DATA)
      000000                        230 	.org 0x0000
                           000080   231 _P0	=	0x0080
                           000081   232 _SP	=	0x0081
                           000082   233 _DPL	=	0x0082
                           000083   234 _DPH	=	0x0083
                           000087   235 _PCON	=	0x0087
                           000088   236 _TCON	=	0x0088
                           000089   237 _TMOD	=	0x0089
                           00008A   238 _TL0	=	0x008a
                           00008B   239 _TL1	=	0x008b
                           00008C   240 _TH0	=	0x008c
                           00008D   241 _TH1	=	0x008d
                           000090   242 _P1	=	0x0090
                           000098   243 _SCON	=	0x0098
                           000099   244 _SBUF	=	0x0099
                           0000A0   245 _P2	=	0x00a0
                           0000A8   246 _IE	=	0x00a8
                           0000B0   247 _P3	=	0x00b0
                           0000B8   248 _IP	=	0x00b8
                           0000D0   249 _PSW	=	0x00d0
                           0000E0   250 _ACC	=	0x00e0
                           0000F0   251 _B	=	0x00f0
                           0000C8   252 _T2CON	=	0x00c8
                           0000CA   253 _RCAP2L	=	0x00ca
                           0000CB   254 _RCAP2H	=	0x00cb
                           0000CC   255 _TL2	=	0x00cc
                           0000CD   256 _TH2	=	0x00cd
                           00008E   257 _AUXR	=	0x008e
                           0000A2   258 _AUXR1	=	0x00a2
                           000097   259 _CKRL	=	0x0097
                           00008F   260 _CKCON0	=	0x008f
                           0000AF   261 _CKCON1	=	0x00af
                           0000FA   262 _CCAP0H	=	0x00fa
                           0000FB   263 _CCAP1H	=	0x00fb
                           0000FC   264 _CCAP2H	=	0x00fc
                           0000FD   265 _CCAP3H	=	0x00fd
                           0000FE   266 _CCAP4H	=	0x00fe
                           0000EA   267 _CCAP0L	=	0x00ea
                           0000EB   268 _CCAP1L	=	0x00eb
                           0000EC   269 _CCAP2L	=	0x00ec
                           0000ED   270 _CCAP3L	=	0x00ed
                           0000EE   271 _CCAP4L	=	0x00ee
                           0000DA   272 _CCAPM0	=	0x00da
                           0000DB   273 _CCAPM1	=	0x00db
                           0000DC   274 _CCAPM2	=	0x00dc
                           0000DD   275 _CCAPM3	=	0x00dd
                           0000DE   276 _CCAPM4	=	0x00de
                           0000D8   277 _CCON	=	0x00d8
                           0000F9   278 _CH	=	0x00f9
                           0000E9   279 _CL	=	0x00e9
                           0000D9   280 _CMOD	=	0x00d9
                           0000A8   281 _IEN0	=	0x00a8
                           0000B1   282 _IEN1	=	0x00b1
                           0000B8   283 _IPL0	=	0x00b8
                           0000B7   284 _IPH0	=	0x00b7
                           0000B2   285 _IPL1	=	0x00b2
                           0000B3   286 _IPH1	=	0x00b3
                           0000C0   287 _P4	=	0x00c0
                           0000E8   288 _P5	=	0x00e8
                           0000A6   289 _WDTRST	=	0x00a6
                           0000A7   290 _WDTPRG	=	0x00a7
                           0000A9   291 _SADDR	=	0x00a9
                           0000B9   292 _SADEN	=	0x00b9
                           0000C3   293 _SPCON	=	0x00c3
                           0000C4   294 _SPSTA	=	0x00c4
                           0000C5   295 _SPDAT	=	0x00c5
                           0000C9   296 _T2MOD	=	0x00c9
                           00009B   297 _BDRCON	=	0x009b
                           00009A   298 _BRL	=	0x009a
                           00009C   299 _KBLS	=	0x009c
                           00009D   300 _KBE	=	0x009d
                           00009E   301 _KBF	=	0x009e
                           0000D2   302 _EECON	=	0x00d2
                                    303 ;--------------------------------------------------------
                                    304 ; special function bits
                                    305 ;--------------------------------------------------------
                                    306 	.area RSEG    (ABS,DATA)
      000000                        307 	.org 0x0000
                           000080   308 _P0_0	=	0x0080
                           000081   309 _P0_1	=	0x0081
                           000082   310 _P0_2	=	0x0082
                           000083   311 _P0_3	=	0x0083
                           000084   312 _P0_4	=	0x0084
                           000085   313 _P0_5	=	0x0085
                           000086   314 _P0_6	=	0x0086
                           000087   315 _P0_7	=	0x0087
                           000088   316 _IT0	=	0x0088
                           000089   317 _IE0	=	0x0089
                           00008A   318 _IT1	=	0x008a
                           00008B   319 _IE1	=	0x008b
                           00008C   320 _TR0	=	0x008c
                           00008D   321 _TF0	=	0x008d
                           00008E   322 _TR1	=	0x008e
                           00008F   323 _TF1	=	0x008f
                           000090   324 _P1_0	=	0x0090
                           000091   325 _P1_1	=	0x0091
                           000092   326 _P1_2	=	0x0092
                           000093   327 _P1_3	=	0x0093
                           000094   328 _P1_4	=	0x0094
                           000095   329 _P1_5	=	0x0095
                           000096   330 _P1_6	=	0x0096
                           000097   331 _P1_7	=	0x0097
                           000098   332 _RI	=	0x0098
                           000099   333 _TI	=	0x0099
                           00009A   334 _RB8	=	0x009a
                           00009B   335 _TB8	=	0x009b
                           00009C   336 _REN	=	0x009c
                           00009D   337 _SM2	=	0x009d
                           00009E   338 _SM1	=	0x009e
                           00009F   339 _SM0	=	0x009f
                           0000A0   340 _P2_0	=	0x00a0
                           0000A1   341 _P2_1	=	0x00a1
                           0000A2   342 _P2_2	=	0x00a2
                           0000A3   343 _P2_3	=	0x00a3
                           0000A4   344 _P2_4	=	0x00a4
                           0000A5   345 _P2_5	=	0x00a5
                           0000A6   346 _P2_6	=	0x00a6
                           0000A7   347 _P2_7	=	0x00a7
                           0000A8   348 _EX0	=	0x00a8
                           0000A9   349 _ET0	=	0x00a9
                           0000AA   350 _EX1	=	0x00aa
                           0000AB   351 _ET1	=	0x00ab
                           0000AC   352 _ES	=	0x00ac
                           0000AF   353 _EA	=	0x00af
                           0000B0   354 _P3_0	=	0x00b0
                           0000B1   355 _P3_1	=	0x00b1
                           0000B2   356 _P3_2	=	0x00b2
                           0000B3   357 _P3_3	=	0x00b3
                           0000B4   358 _P3_4	=	0x00b4
                           0000B5   359 _P3_5	=	0x00b5
                           0000B6   360 _P3_6	=	0x00b6
                           0000B7   361 _P3_7	=	0x00b7
                           0000B0   362 _RXD	=	0x00b0
                           0000B1   363 _TXD	=	0x00b1
                           0000B2   364 _INT0	=	0x00b2
                           0000B3   365 _INT1	=	0x00b3
                           0000B4   366 _T0	=	0x00b4
                           0000B5   367 _T1	=	0x00b5
                           0000B6   368 _WR	=	0x00b6
                           0000B7   369 _RD	=	0x00b7
                           0000B8   370 _PX0	=	0x00b8
                           0000B9   371 _PT0	=	0x00b9
                           0000BA   372 _PX1	=	0x00ba
                           0000BB   373 _PT1	=	0x00bb
                           0000BC   374 _PS	=	0x00bc
                           0000D0   375 _P	=	0x00d0
                           0000D1   376 _F1	=	0x00d1
                           0000D2   377 _OV	=	0x00d2
                           0000D3   378 _RS0	=	0x00d3
                           0000D4   379 _RS1	=	0x00d4
                           0000D5   380 _F0	=	0x00d5
                           0000D6   381 _AC	=	0x00d6
                           0000D7   382 _CY	=	0x00d7
                           0000AD   383 _ET2	=	0x00ad
                           0000BD   384 _PT2	=	0x00bd
                           0000C8   385 _T2CON_0	=	0x00c8
                           0000C9   386 _T2CON_1	=	0x00c9
                           0000CA   387 _T2CON_2	=	0x00ca
                           0000CB   388 _T2CON_3	=	0x00cb
                           0000CC   389 _T2CON_4	=	0x00cc
                           0000CD   390 _T2CON_5	=	0x00cd
                           0000CE   391 _T2CON_6	=	0x00ce
                           0000CF   392 _T2CON_7	=	0x00cf
                           0000C8   393 _CP_RL2	=	0x00c8
                           0000C9   394 _C_T2	=	0x00c9
                           0000CA   395 _TR2	=	0x00ca
                           0000CB   396 _EXEN2	=	0x00cb
                           0000CC   397 _TCLK	=	0x00cc
                           0000CD   398 _RCLK	=	0x00cd
                           0000CE   399 _EXF2	=	0x00ce
                           0000CF   400 _TF2	=	0x00cf
                           0000DF   401 _CF	=	0x00df
                           0000DE   402 _CR	=	0x00de
                           0000DC   403 _CCF4	=	0x00dc
                           0000DB   404 _CCF3	=	0x00db
                           0000DA   405 _CCF2	=	0x00da
                           0000D9   406 _CCF1	=	0x00d9
                           0000D8   407 _CCF0	=	0x00d8
                           0000AE   408 _EC	=	0x00ae
                           0000BE   409 _PPCL	=	0x00be
                           0000BD   410 _PT2L	=	0x00bd
                           0000BC   411 _PSL	=	0x00bc
                           0000BB   412 _PT1L	=	0x00bb
                           0000BA   413 _PX1L	=	0x00ba
                           0000B9   414 _PT0L	=	0x00b9
                           0000B8   415 _PX0L	=	0x00b8
                           0000C0   416 _P4_0	=	0x00c0
                           0000C1   417 _P4_1	=	0x00c1
                           0000C2   418 _P4_2	=	0x00c2
                           0000C3   419 _P4_3	=	0x00c3
                           0000C4   420 _P4_4	=	0x00c4
                           0000C5   421 _P4_5	=	0x00c5
                           0000C6   422 _P4_6	=	0x00c6
                           0000C7   423 _P4_7	=	0x00c7
                           0000E8   424 _P5_0	=	0x00e8
                           0000E9   425 _P5_1	=	0x00e9
                           0000EA   426 _P5_2	=	0x00ea
                           0000EB   427 _P5_3	=	0x00eb
                           0000EC   428 _P5_4	=	0x00ec
                           0000ED   429 _P5_5	=	0x00ed
                           0000EE   430 _P5_6	=	0x00ee
                           0000EF   431 _P5_7	=	0x00ef
                                    432 ;--------------------------------------------------------
                                    433 ; overlayable register banks
                                    434 ;--------------------------------------------------------
                                    435 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        436 	.ds 8
                                    437 ;--------------------------------------------------------
                                    438 ; internal ram data
                                    439 ;--------------------------------------------------------
                                    440 	.area DSEG    (DATA)
                                    441 ;--------------------------------------------------------
                                    442 ; overlayable items in internal ram 
                                    443 ;--------------------------------------------------------
                                    444 ;--------------------------------------------------------
                                    445 ; Stack segment in internal ram 
                                    446 ;--------------------------------------------------------
                                    447 	.area	SSEG
      000014                        448 __start__stack:
      000014                        449 	.ds	1
                                    450 
                                    451 ;--------------------------------------------------------
                                    452 ; indirectly addressable internal ram data
                                    453 ;--------------------------------------------------------
                                    454 	.area ISEG    (DATA)
                                    455 ;--------------------------------------------------------
                                    456 ; absolute internal ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area IABS    (ABS,DATA)
                                    459 	.area IABS    (ABS,DATA)
                                    460 ;--------------------------------------------------------
                                    461 ; bit data
                                    462 ;--------------------------------------------------------
                                    463 	.area BSEG    (BIT)
                                    464 ;--------------------------------------------------------
                                    465 ; paged external ram data
                                    466 ;--------------------------------------------------------
                                    467 	.area PSEG    (PAG,XDATA)
                                    468 ;--------------------------------------------------------
                                    469 ; external ram data
                                    470 ;--------------------------------------------------------
                                    471 	.area XSEG    (XDATA)
      000400                        472 _ACK::
      000400                        473 	.ds 2
      000402                        474 _putchar_charToSend_65536_48:
      000402                        475 	.ds 2
      000404                        476 _take_address_input_65537_66:
      000404                        477 	.ds 4
      000408                        478 _take_address_address_65538_70:
      000408                        479 	.ds 2
      00040A                        480 _take_data_input_65537_76:
      00040A                        481 	.ds 4
      00040E                        482 _take_data_data_65538_80:
      00040E                        483 	.ds 1
      00040F                        484 _eeprom_write_PARM_2:
      00040F                        485 	.ds 1
      000410                        486 _eeprom_write_address_65536_84:
      000410                        487 	.ds 2
      000412                        488 _eeprom_read_address_65536_91:
      000412                        489 	.ds 2
      000414                        490 _i2c_write_data_65536_96:
      000414                        491 	.ds 1
      000415                        492 _i2c_read_ACK_65536_101:
      000415                        493 	.ds 2
      000417                        494 _i2c_read_buff_65536_102:
      000417                        495 	.ds 1
                                    496 ;--------------------------------------------------------
                                    497 ; absolute external ram data
                                    498 ;--------------------------------------------------------
                                    499 	.area XABS    (ABS,XDATA)
                                    500 ;--------------------------------------------------------
                                    501 ; external initialized ram data
                                    502 ;--------------------------------------------------------
                                    503 	.area XISEG   (XDATA)
      000451                        504 _address_range_flag:
      000451                        505 	.ds 2
      000453                        506 _data_range_flag:
      000453                        507 	.ds 2
      000455                        508 _block:
      000455                        509 	.ds 2
                                    510 	.area HOME    (CODE)
                                    511 	.area GSINIT0 (CODE)
                                    512 	.area GSINIT1 (CODE)
                                    513 	.area GSINIT2 (CODE)
                                    514 	.area GSINIT3 (CODE)
                                    515 	.area GSINIT4 (CODE)
                                    516 	.area GSINIT5 (CODE)
                                    517 	.area GSINIT  (CODE)
                                    518 	.area GSFINAL (CODE)
                                    519 	.area CSEG    (CODE)
                                    520 ;--------------------------------------------------------
                                    521 ; interrupt vector 
                                    522 ;--------------------------------------------------------
                                    523 	.area HOME    (CODE)
      007000                        524 __interrupt_vect:
      007000 02 70 06         [24]  525 	ljmp	__sdcc_gsinit_startup
                                    526 ;--------------------------------------------------------
                                    527 ; global & static initialisations
                                    528 ;--------------------------------------------------------
                                    529 	.area HOME    (CODE)
                                    530 	.area GSINIT  (CODE)
                                    531 	.area GSFINAL (CODE)
                                    532 	.area GSINIT  (CODE)
                                    533 	.globl __sdcc_gsinit_startup
                                    534 	.globl __sdcc_program_startup
                                    535 	.globl __start__stack
                                    536 	.globl __mcs51_genXINIT
                                    537 	.globl __mcs51_genXRAMCLEAR
                                    538 	.globl __mcs51_genRAMCLEAR
                                    539 	.area GSFINAL (CODE)
      00705F 02 70 03         [24]  540 	ljmp	__sdcc_program_startup
                                    541 ;--------------------------------------------------------
                                    542 ; Home
                                    543 ;--------------------------------------------------------
                                    544 	.area HOME    (CODE)
                                    545 	.area HOME    (CODE)
      007003                        546 __sdcc_program_startup:
      007003 02 71 A2         [24]  547 	ljmp	_main
                                    548 ;	return from main will return to caller
                                    549 ;--------------------------------------------------------
                                    550 ; code
                                    551 ;--------------------------------------------------------
                                    552 	.area CSEG    (CODE)
                                    553 ;------------------------------------------------------------
                                    554 ;Allocation info for local variables in function 'putchar'
                                    555 ;------------------------------------------------------------
                                    556 ;charToSend                Allocated with name '_putchar_charToSend_65536_48'
                                    557 ;------------------------------------------------------------
                                    558 ;	8051_i2c_eeprom.c:31: int putchar(int charToSend) {
                                    559 ;	-----------------------------------------
                                    560 ;	 function putchar
                                    561 ;	-----------------------------------------
      007062                        562 _putchar:
                           000007   563 	ar7 = 0x07
                           000006   564 	ar6 = 0x06
                           000005   565 	ar5 = 0x05
                           000004   566 	ar4 = 0x04
                           000003   567 	ar3 = 0x03
                           000002   568 	ar2 = 0x02
                           000001   569 	ar1 = 0x01
                           000000   570 	ar0 = 0x00
      007062 AF 83            [24]  571 	mov	r7,dph
      007064 E5 82            [12]  572 	mov	a,dpl
      007066 90 04 02         [24]  573 	mov	dptr,#_putchar_charToSend_65536_48
      007069 F0               [24]  574 	movx	@dptr,a
      00706A EF               [12]  575 	mov	a,r7
      00706B A3               [24]  576 	inc	dptr
      00706C F0               [24]  577 	movx	@dptr,a
                                    578 ;	8051_i2c_eeprom.c:32: SBUF = charToSend;  // Send character to serial buffer
      00706D 90 04 02         [24]  579 	mov	dptr,#_putchar_charToSend_65536_48
      007070 E0               [24]  580 	movx	a,@dptr
      007071 FE               [12]  581 	mov	r6,a
      007072 A3               [24]  582 	inc	dptr
      007073 E0               [24]  583 	movx	a,@dptr
      007074 FF               [12]  584 	mov	r7,a
      007075 8E 99            [24]  585 	mov	_SBUF,r6
                                    586 ;	8051_i2c_eeprom.c:33: while (!TI);        // Wait for transmission to complete
      007077                        587 00101$:
                                    588 ;	8051_i2c_eeprom.c:34: TI = 0;            // Clear transmission interrupt flag
                                    589 ;	assignBit
      007077 10 99 02         [24]  590 	jbc	_TI,00114$
      00707A 80 FB            [24]  591 	sjmp	00101$
      00707C                        592 00114$:
                                    593 ;	8051_i2c_eeprom.c:35: return charToSend;
      00707C 8E 82            [24]  594 	mov	dpl,r6
      00707E 8F 83            [24]  595 	mov	dph,r7
                                    596 ;	8051_i2c_eeprom.c:36: }
      007080 22               [24]  597 	ret
                                    598 ;------------------------------------------------------------
                                    599 ;Allocation info for local variables in function 'getchar'
                                    600 ;------------------------------------------------------------
                                    601 ;	8051_i2c_eeprom.c:38: int getchar(void) 
                                    602 ;	-----------------------------------------
                                    603 ;	 function getchar
                                    604 ;	-----------------------------------------
      007081                        605 _getchar:
                                    606 ;	8051_i2c_eeprom.c:40: while (!RI);        // Wait for reception to complete
      007081                        607 00101$:
                                    608 ;	8051_i2c_eeprom.c:41: RI = 0;            // Clear reception interrupt flag
                                    609 ;	assignBit
      007081 10 98 02         [24]  610 	jbc	_RI,00114$
      007084 80 FB            [24]  611 	sjmp	00101$
      007086                        612 00114$:
                                    613 ;	8051_i2c_eeprom.c:42: return SBUF;       // Return received character
      007086 AE 99            [24]  614 	mov	r6,_SBUF
      007088 7F 00            [12]  615 	mov	r7,#0x00
      00708A 8E 82            [24]  616 	mov	dpl,r6
      00708C 8F 83            [24]  617 	mov	dph,r7
                                    618 ;	8051_i2c_eeprom.c:43: }
      00708E 22               [24]  619 	ret
                                    620 ;------------------------------------------------------------
                                    621 ;Allocation info for local variables in function 'ui'
                                    622 ;------------------------------------------------------------
                                    623 ;	8051_i2c_eeprom.c:45: void ui()
                                    624 ;	-----------------------------------------
                                    625 ;	 function ui
                                    626 ;	-----------------------------------------
      00708F                        627 _ui:
                                    628 ;	8051_i2c_eeprom.c:47: printf("\n╔════════════════════════════════════════════════════════╗\n\r");
      00708F 74 CB            [12]  629 	mov	a,#___str_0
      007091 C0 E0            [24]  630 	push	acc
      007093 74 85            [12]  631 	mov	a,#(___str_0 >> 8)
      007095 C0 E0            [24]  632 	push	acc
      007097 74 80            [12]  633 	mov	a,#0x80
      007099 C0 E0            [24]  634 	push	acc
      00709B 12 7B 69         [24]  635 	lcall	_printf
      00709E 15 81            [12]  636 	dec	sp
      0070A0 15 81            [12]  637 	dec	sp
      0070A2 15 81            [12]  638 	dec	sp
                                    639 ;	8051_i2c_eeprom.c:48: printf("║           I2C Memory Management System v1.0            ║\n\r");
      0070A4 74 7D            [12]  640 	mov	a,#___str_1
      0070A6 C0 E0            [24]  641 	push	acc
      0070A8 74 86            [12]  642 	mov	a,#(___str_1 >> 8)
      0070AA C0 E0            [24]  643 	push	acc
      0070AC 74 80            [12]  644 	mov	a,#0x80
      0070AE C0 E0            [24]  645 	push	acc
      0070B0 12 7B 69         [24]  646 	lcall	_printf
      0070B3 15 81            [12]  647 	dec	sp
      0070B5 15 81            [12]  648 	dec	sp
      0070B7 15 81            [12]  649 	dec	sp
                                    650 ;	8051_i2c_eeprom.c:49: printf("╚════════════════════════════════════════════════════════╝\n\r");
      0070B9 74 BE            [12]  651 	mov	a,#___str_2
      0070BB C0 E0            [24]  652 	push	acc
      0070BD 74 86            [12]  653 	mov	a,#(___str_2 >> 8)
      0070BF C0 E0            [24]  654 	push	acc
      0070C1 74 80            [12]  655 	mov	a,#0x80
      0070C3 C0 E0            [24]  656 	push	acc
      0070C5 12 7B 69         [24]  657 	lcall	_printf
      0070C8 15 81            [12]  658 	dec	sp
      0070CA 15 81            [12]  659 	dec	sp
      0070CC 15 81            [12]  660 	dec	sp
                                    661 ;	8051_i2c_eeprom.c:51: }
      0070CE 22               [24]  662 	ret
                                    663 ;------------------------------------------------------------
                                    664 ;Allocation info for local variables in function 'command_menu'
                                    665 ;------------------------------------------------------------
                                    666 ;	8051_i2c_eeprom.c:53: void command_menu()
                                    667 ;	-----------------------------------------
                                    668 ;	 function command_menu
                                    669 ;	-----------------------------------------
      0070CF                        670 _command_menu:
                                    671 ;	8051_i2c_eeprom.c:55: printf("\n\r┌────────────┬────────────────────────────────────────────┐\n\r");
      0070CF 74 6F            [12]  672 	mov	a,#___str_3
      0070D1 C0 E0            [24]  673 	push	acc
      0070D3 74 87            [12]  674 	mov	a,#(___str_3 >> 8)
      0070D5 C0 E0            [24]  675 	push	acc
      0070D7 74 80            [12]  676 	mov	a,#0x80
      0070D9 C0 E0            [24]  677 	push	acc
      0070DB 12 7B 69         [24]  678 	lcall	_printf
      0070DE 15 81            [12]  679 	dec	sp
      0070E0 15 81            [12]  680 	dec	sp
      0070E2 15 81            [12]  681 	dec	sp
                                    682 ;	8051_i2c_eeprom.c:56: printf("│  Command   │               Description                  │\n\r");
      0070E4 74 25            [12]  683 	mov	a,#___str_4
      0070E6 C0 E0            [24]  684 	push	acc
      0070E8 74 88            [12]  685 	mov	a,#(___str_4 >> 8)
      0070EA C0 E0            [24]  686 	push	acc
      0070EC 74 80            [12]  687 	mov	a,#0x80
      0070EE C0 E0            [24]  688 	push	acc
      0070F0 12 7B 69         [24]  689 	lcall	_printf
      0070F3 15 81            [12]  690 	dec	sp
      0070F5 15 81            [12]  691 	dec	sp
      0070F7 15 81            [12]  692 	dec	sp
                                    693 ;	8051_i2c_eeprom.c:57: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      0070F9 74 69            [12]  694 	mov	a,#___str_5
      0070FB C0 E0            [24]  695 	push	acc
      0070FD 74 88            [12]  696 	mov	a,#(___str_5 >> 8)
      0070FF C0 E0            [24]  697 	push	acc
      007101 74 80            [12]  698 	mov	a,#0x80
      007103 C0 E0            [24]  699 	push	acc
      007105 12 7B 69         [24]  700 	lcall	_printf
      007108 15 81            [12]  701 	dec	sp
      00710A 15 81            [12]  702 	dec	sp
      00710C 15 81            [12]  703 	dec	sp
                                    704 ;	8051_i2c_eeprom.c:58: printf("│     R      │ Read from address                          │\n\r");
      00710E 74 1D            [12]  705 	mov	a,#___str_6
      007110 C0 E0            [24]  706 	push	acc
      007112 74 89            [12]  707 	mov	a,#(___str_6 >> 8)
      007114 C0 E0            [24]  708 	push	acc
      007116 74 80            [12]  709 	mov	a,#0x80
      007118 C0 E0            [24]  710 	push	acc
      00711A 12 7B 69         [24]  711 	lcall	_printf
      00711D 15 81            [12]  712 	dec	sp
      00711F 15 81            [12]  713 	dec	sp
      007121 15 81            [12]  714 	dec	sp
                                    715 ;	8051_i2c_eeprom.c:59: printf("│     W      │ Write data to address                      │\n\r");
      007123 74 61            [12]  716 	mov	a,#___str_7
      007125 C0 E0            [24]  717 	push	acc
      007127 74 89            [12]  718 	mov	a,#(___str_7 >> 8)
      007129 C0 E0            [24]  719 	push	acc
      00712B 74 80            [12]  720 	mov	a,#0x80
      00712D C0 E0            [24]  721 	push	acc
      00712F 12 7B 69         [24]  722 	lcall	_printf
      007132 15 81            [12]  723 	dec	sp
      007134 15 81            [12]  724 	dec	sp
      007136 15 81            [12]  725 	dec	sp
                                    726 ;	8051_i2c_eeprom.c:60: printf("│     H      │ Display hex dump                           │\n\r");
      007138 74 A5            [12]  727 	mov	a,#___str_8
      00713A C0 E0            [24]  728 	push	acc
      00713C 74 89            [12]  729 	mov	a,#(___str_8 >> 8)
      00713E C0 E0            [24]  730 	push	acc
      007140 74 80            [12]  731 	mov	a,#0x80
      007142 C0 E0            [24]  732 	push	acc
      007144 12 7B 69         [24]  733 	lcall	_printf
      007147 15 81            [12]  734 	dec	sp
      007149 15 81            [12]  735 	dec	sp
      00714B 15 81            [12]  736 	dec	sp
                                    737 ;	8051_i2c_eeprom.c:61: printf("│     X      │ Reset memory system                        │\n\r");
      00714D 74 E9            [12]  738 	mov	a,#___str_9
      00714F C0 E0            [24]  739 	push	acc
      007151 74 89            [12]  740 	mov	a,#(___str_9 >> 8)
      007153 C0 E0            [24]  741 	push	acc
      007155 74 80            [12]  742 	mov	a,#0x80
      007157 C0 E0            [24]  743 	push	acc
      007159 12 7B 69         [24]  744 	lcall	_printf
      00715C 15 81            [12]  745 	dec	sp
      00715E 15 81            [12]  746 	dec	sp
      007160 15 81            [12]  747 	dec	sp
                                    748 ;	8051_i2c_eeprom.c:62: printf("│     ?      │ Display this help menu                     │\n\r");
      007162 74 2D            [12]  749 	mov	a,#___str_10
      007164 C0 E0            [24]  750 	push	acc
      007166 74 8A            [12]  751 	mov	a,#(___str_10 >> 8)
      007168 C0 E0            [24]  752 	push	acc
      00716A 74 80            [12]  753 	mov	a,#0x80
      00716C C0 E0            [24]  754 	push	acc
      00716E 12 7B 69         [24]  755 	lcall	_printf
      007171 15 81            [12]  756 	dec	sp
      007173 15 81            [12]  757 	dec	sp
      007175 15 81            [12]  758 	dec	sp
                                    759 ;	8051_i2c_eeprom.c:63: printf("│     Q      │ Quit program                               │\n\r");
      007177 74 71            [12]  760 	mov	a,#___str_11
      007179 C0 E0            [24]  761 	push	acc
      00717B 74 8A            [12]  762 	mov	a,#(___str_11 >> 8)
      00717D C0 E0            [24]  763 	push	acc
      00717F 74 80            [12]  764 	mov	a,#0x80
      007181 C0 E0            [24]  765 	push	acc
      007183 12 7B 69         [24]  766 	lcall	_printf
      007186 15 81            [12]  767 	dec	sp
      007188 15 81            [12]  768 	dec	sp
      00718A 15 81            [12]  769 	dec	sp
                                    770 ;	8051_i2c_eeprom.c:64: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      00718C 74 B5            [12]  771 	mov	a,#___str_12
      00718E C0 E0            [24]  772 	push	acc
      007190 74 8A            [12]  773 	mov	a,#(___str_12 >> 8)
      007192 C0 E0            [24]  774 	push	acc
      007194 74 80            [12]  775 	mov	a,#0x80
      007196 C0 E0            [24]  776 	push	acc
      007198 12 7B 69         [24]  777 	lcall	_printf
      00719B 15 81            [12]  778 	dec	sp
      00719D 15 81            [12]  779 	dec	sp
      00719F 15 81            [12]  780 	dec	sp
                                    781 ;	8051_i2c_eeprom.c:67: }
      0071A1 22               [24]  782 	ret
                                    783 ;------------------------------------------------------------
                                    784 ;Allocation info for local variables in function 'main'
                                    785 ;------------------------------------------------------------
                                    786 ;user_input                Allocated with name '_main_user_input_131072_55'
                                    787 ;addr                      Allocated with name '_main_addr_262145_58'
                                    788 ;data                      Allocated with name '_main_data_262146_60'
                                    789 ;addr                      Allocated with name '_main_addr_262145_63'
                                    790 ;------------------------------------------------------------
                                    791 ;	8051_i2c_eeprom.c:68: int main()
                                    792 ;	-----------------------------------------
                                    793 ;	 function main
                                    794 ;	-----------------------------------------
      0071A2                        795 _main:
                                    796 ;	8051_i2c_eeprom.c:71: P1 &= ~(1<<3);  // Set P1.3 as output
      0071A2 53 90 F7         [24]  797 	anl	_P1,#0xf7
                                    798 ;	8051_i2c_eeprom.c:72: P1 &= ~(1<<4);  // Set P1.4 as output
      0071A5 53 90 EF         [24]  799 	anl	_P1,#0xef
                                    800 ;	8051_i2c_eeprom.c:73: ui();
      0071A8 12 70 8F         [24]  801 	lcall	_ui
                                    802 ;	8051_i2c_eeprom.c:74: command_menu();
      0071AB 12 70 CF         [24]  803 	lcall	_command_menu
                                    804 ;	8051_i2c_eeprom.c:75: i2c_start();
      0071AE 12 79 FE         [24]  805 	lcall	_i2c_start
                                    806 ;	8051_i2c_eeprom.c:76: while(1)
      0071B1                        807 00114$:
                                    808 ;	8051_i2c_eeprom.c:78: char user_input = getchar();
      0071B1 12 70 81         [24]  809 	lcall	_getchar
      0071B4 AE 82            [24]  810 	mov	r6,dpl
                                    811 ;	8051_i2c_eeprom.c:79: printf("| $ %c\n\r", user_input);
      0071B6 8E 05            [24]  812 	mov	ar5,r6
      0071B8 7F 00            [12]  813 	mov	r7,#0x00
      0071BA C0 06            [24]  814 	push	ar6
      0071BC C0 05            [24]  815 	push	ar5
      0071BE C0 07            [24]  816 	push	ar7
      0071C0 74 69            [12]  817 	mov	a,#___str_13
      0071C2 C0 E0            [24]  818 	push	acc
      0071C4 74 8B            [12]  819 	mov	a,#(___str_13 >> 8)
      0071C6 C0 E0            [24]  820 	push	acc
      0071C8 74 80            [12]  821 	mov	a,#0x80
      0071CA C0 E0            [24]  822 	push	acc
      0071CC 12 7B 69         [24]  823 	lcall	_printf
      0071CF E5 81            [12]  824 	mov	a,sp
      0071D1 24 FB            [12]  825 	add	a,#0xfb
      0071D3 F5 81            [12]  826 	mov	sp,a
      0071D5 D0 06            [24]  827 	pop	ar6
                                    828 ;	8051_i2c_eeprom.c:80: switch(user_input)
      0071D7 BE 3F 03         [24]  829 	cjne	r6,#0x3f,00150$
      0071DA 02 72 D8         [24]  830 	ljmp	00109$
      0071DD                        831 00150$:
      0071DD BE 52 03         [24]  832 	cjne	r6,#0x52,00151$
      0071E0 02 72 79         [24]  833 	ljmp	00106$
      0071E3                        834 00151$:
      0071E3 BE 57 02         [24]  835 	cjne	r6,#0x57,00152$
      0071E6 80 09            [24]  836 	sjmp	00101$
      0071E8                        837 00152$:
      0071E8 BE 58 03         [24]  838 	cjne	r6,#0x58,00153$
      0071EB 02 72 DE         [24]  839 	ljmp	00110$
      0071EE                        840 00153$:
      0071EE 02 72 E4         [24]  841 	ljmp	00111$
                                    842 ;	8051_i2c_eeprom.c:82: case 'W':
      0071F1                        843 00101$:
                                    844 ;	8051_i2c_eeprom.c:84: printf("\n┌─────────────── WRITE OPERATION ──────────────┐\n\r");
      0071F1 74 72            [12]  845 	mov	a,#___str_14
      0071F3 C0 E0            [24]  846 	push	acc
      0071F5 74 8B            [12]  847 	mov	a,#(___str_14 >> 8)
      0071F7 C0 E0            [24]  848 	push	acc
      0071F9 74 80            [12]  849 	mov	a,#0x80
      0071FB C0 E0            [24]  850 	push	acc
      0071FD 12 7B 69         [24]  851 	lcall	_printf
      007200 15 81            [12]  852 	dec	sp
      007202 15 81            [12]  853 	dec	sp
      007204 15 81            [12]  854 	dec	sp
                                    855 ;	8051_i2c_eeprom.c:86: addr = take_address();
      007206 12 72 FC         [24]  856 	lcall	_take_address
      007209 AE 82            [24]  857 	mov	r6,dpl
      00720B AF 83            [24]  858 	mov	r7,dph
                                    859 ;	8051_i2c_eeprom.c:87: if(!address_range_flag) 
      00720D 90 04 51         [24]  860 	mov	dptr,#_address_range_flag
      007210 E0               [24]  861 	movx	a,@dptr
      007211 F5 F0            [12]  862 	mov	b,a
      007213 A3               [24]  863 	inc	dptr
      007214 E0               [24]  864 	movx	a,@dptr
      007215 45 F0            [12]  865 	orl	a,b
      007217 70 0B            [24]  866 	jnz	00103$
                                    867 ;	8051_i2c_eeprom.c:89: address_range_flag = 1;
      007219 90 04 51         [24]  868 	mov	dptr,#_address_range_flag
      00721C 74 01            [12]  869 	mov	a,#0x01
      00721E F0               [24]  870 	movx	@dptr,a
      00721F E4               [12]  871 	clr	a
      007220 A3               [24]  872 	inc	dptr
      007221 F0               [24]  873 	movx	@dptr,a
                                    874 ;	8051_i2c_eeprom.c:90: break;
      007222 80 8D            [24]  875 	sjmp	00114$
      007224                        876 00103$:
                                    877 ;	8051_i2c_eeprom.c:93: data = take_data();
      007224 C0 07            [24]  878 	push	ar7
      007226 C0 06            [24]  879 	push	ar6
      007228 12 75 15         [24]  880 	lcall	_take_data
      00722B AD 82            [24]  881 	mov	r5,dpl
      00722D D0 06            [24]  882 	pop	ar6
      00722F D0 07            [24]  883 	pop	ar7
                                    884 ;	8051_i2c_eeprom.c:94: if(!data_range_flag) 
      007231 90 04 53         [24]  885 	mov	dptr,#_data_range_flag
      007234 E0               [24]  886 	movx	a,@dptr
      007235 F5 F0            [12]  887 	mov	b,a
      007237 A3               [24]  888 	inc	dptr
      007238 E0               [24]  889 	movx	a,@dptr
      007239 45 F0            [12]  890 	orl	a,b
      00723B 70 0C            [24]  891 	jnz	00105$
                                    892 ;	8051_i2c_eeprom.c:96: data_range_flag = 1;
      00723D 90 04 53         [24]  893 	mov	dptr,#_data_range_flag
      007240 74 01            [12]  894 	mov	a,#0x01
      007242 F0               [24]  895 	movx	@dptr,a
      007243 E4               [12]  896 	clr	a
      007244 A3               [24]  897 	inc	dptr
      007245 F0               [24]  898 	movx	@dptr,a
                                    899 ;	8051_i2c_eeprom.c:97: break;
      007246 02 71 B1         [24]  900 	ljmp	00114$
      007249                        901 00105$:
                                    902 ;	8051_i2c_eeprom.c:99: printf("check point 1 \n\r");
      007249 C0 07            [24]  903 	push	ar7
      00724B C0 06            [24]  904 	push	ar6
      00724D C0 05            [24]  905 	push	ar5
      00724F 74 E4            [12]  906 	mov	a,#___str_15
      007251 C0 E0            [24]  907 	push	acc
      007253 74 8B            [12]  908 	mov	a,#(___str_15 >> 8)
      007255 C0 E0            [24]  909 	push	acc
      007257 74 80            [12]  910 	mov	a,#0x80
      007259 C0 E0            [24]  911 	push	acc
      00725B 12 7B 69         [24]  912 	lcall	_printf
      00725E 15 81            [12]  913 	dec	sp
      007260 15 81            [12]  914 	dec	sp
      007262 15 81            [12]  915 	dec	sp
      007264 D0 05            [24]  916 	pop	ar5
      007266 D0 06            [24]  917 	pop	ar6
      007268 D0 07            [24]  918 	pop	ar7
                                    919 ;	8051_i2c_eeprom.c:100: eeprom_write(addr, data);
      00726A 90 04 0F         [24]  920 	mov	dptr,#_eeprom_write_PARM_2
      00726D ED               [12]  921 	mov	a,r5
      00726E F0               [24]  922 	movx	@dptr,a
      00726F 8E 82            [24]  923 	mov	dpl,r6
      007271 8F 83            [24]  924 	mov	dph,r7
      007273 12 76 8E         [24]  925 	lcall	_eeprom_write
                                    926 ;	8051_i2c_eeprom.c:101: break;
      007276 02 71 B1         [24]  927 	ljmp	00114$
                                    928 ;	8051_i2c_eeprom.c:103: case 'R':
      007279                        929 00106$:
                                    930 ;	8051_i2c_eeprom.c:105: printf("\n┌─────────────── READ OPERATION ───────────────┐\n\r");
      007279 74 F5            [12]  931 	mov	a,#___str_16
      00727B C0 E0            [24]  932 	push	acc
      00727D 74 8B            [12]  933 	mov	a,#(___str_16 >> 8)
      00727F C0 E0            [24]  934 	push	acc
      007281 74 80            [12]  935 	mov	a,#0x80
      007283 C0 E0            [24]  936 	push	acc
      007285 12 7B 69         [24]  937 	lcall	_printf
      007288 15 81            [12]  938 	dec	sp
      00728A 15 81            [12]  939 	dec	sp
      00728C 15 81            [12]  940 	dec	sp
                                    941 ;	8051_i2c_eeprom.c:107: addr = take_address(); 
      00728E 12 72 FC         [24]  942 	lcall	_take_address
      007291 AE 82            [24]  943 	mov	r6,dpl
      007293 AF 83            [24]  944 	mov	r7,dph
                                    945 ;	8051_i2c_eeprom.c:108: if(!address_range_flag) 
      007295 90 04 51         [24]  946 	mov	dptr,#_address_range_flag
      007298 E0               [24]  947 	movx	a,@dptr
      007299 F5 F0            [12]  948 	mov	b,a
      00729B A3               [24]  949 	inc	dptr
      00729C E0               [24]  950 	movx	a,@dptr
      00729D 45 F0            [12]  951 	orl	a,b
      00729F 70 0C            [24]  952 	jnz	00108$
                                    953 ;	8051_i2c_eeprom.c:110: address_range_flag = 1;
      0072A1 90 04 51         [24]  954 	mov	dptr,#_address_range_flag
      0072A4 74 01            [12]  955 	mov	a,#0x01
      0072A6 F0               [24]  956 	movx	@dptr,a
      0072A7 E4               [12]  957 	clr	a
      0072A8 A3               [24]  958 	inc	dptr
      0072A9 F0               [24]  959 	movx	@dptr,a
                                    960 ;	8051_i2c_eeprom.c:111: break;
      0072AA 02 71 B1         [24]  961 	ljmp	00114$
      0072AD                        962 00108$:
                                    963 ;	8051_i2c_eeprom.c:113: printf("| Reading from Address 0x%03X           |\n\r", addr);
      0072AD C0 07            [24]  964 	push	ar7
      0072AF C0 06            [24]  965 	push	ar6
      0072B1 C0 06            [24]  966 	push	ar6
      0072B3 C0 07            [24]  967 	push	ar7
      0072B5 74 69            [12]  968 	mov	a,#___str_17
      0072B7 C0 E0            [24]  969 	push	acc
      0072B9 74 8C            [12]  970 	mov	a,#(___str_17 >> 8)
      0072BB C0 E0            [24]  971 	push	acc
      0072BD 74 80            [12]  972 	mov	a,#0x80
      0072BF C0 E0            [24]  973 	push	acc
      0072C1 12 7B 69         [24]  974 	lcall	_printf
      0072C4 E5 81            [12]  975 	mov	a,sp
      0072C6 24 FB            [12]  976 	add	a,#0xfb
      0072C8 F5 81            [12]  977 	mov	sp,a
      0072CA D0 06            [24]  978 	pop	ar6
      0072CC D0 07            [24]  979 	pop	ar7
                                    980 ;	8051_i2c_eeprom.c:114: eeprom_read(addr);
      0072CE 8E 82            [24]  981 	mov	dpl,r6
      0072D0 8F 83            [24]  982 	mov	dph,r7
      0072D2 12 77 D0         [24]  983 	lcall	_eeprom_read
                                    984 ;	8051_i2c_eeprom.c:115: break;
      0072D5 02 71 B1         [24]  985 	ljmp	00114$
                                    986 ;	8051_i2c_eeprom.c:118: case '?':
      0072D8                        987 00109$:
                                    988 ;	8051_i2c_eeprom.c:119: command_menu();
      0072D8 12 70 CF         [24]  989 	lcall	_command_menu
                                    990 ;	8051_i2c_eeprom.c:120: break;
      0072DB 02 71 B1         [24]  991 	ljmp	00114$
                                    992 ;	8051_i2c_eeprom.c:122: case 'X':
      0072DE                        993 00110$:
                                    994 ;	8051_i2c_eeprom.c:123: eeprom_reset();
      0072DE 12 7A 20         [24]  995 	lcall	_eeprom_reset
                                    996 ;	8051_i2c_eeprom.c:124: break;
      0072E1 02 71 B1         [24]  997 	ljmp	00114$
                                    998 ;	8051_i2c_eeprom.c:126: default:
      0072E4                        999 00111$:
                                   1000 ;	8051_i2c_eeprom.c:127: printf("INVALID INPUT\n\r");
      0072E4 74 95            [12] 1001 	mov	a,#___str_18
      0072E6 C0 E0            [24] 1002 	push	acc
      0072E8 74 8C            [12] 1003 	mov	a,#(___str_18 >> 8)
      0072EA C0 E0            [24] 1004 	push	acc
      0072EC 74 80            [12] 1005 	mov	a,#0x80
      0072EE C0 E0            [24] 1006 	push	acc
      0072F0 12 7B 69         [24] 1007 	lcall	_printf
      0072F3 15 81            [12] 1008 	dec	sp
      0072F5 15 81            [12] 1009 	dec	sp
      0072F7 15 81            [12] 1010 	dec	sp
                                   1011 ;	8051_i2c_eeprom.c:129: }
                                   1012 ;	8051_i2c_eeprom.c:132: }
      0072F9 02 71 B1         [24] 1013 	ljmp	00114$
                                   1014 ;------------------------------------------------------------
                                   1015 ;Allocation info for local variables in function 'take_address'
                                   1016 ;------------------------------------------------------------
                                   1017 ;input                     Allocated with name '_take_address_input_65537_66'
                                   1018 ;i                         Allocated with name '_take_address_i_65537_66'
                                   1019 ;c                         Allocated with name '_take_address_c_65537_66'
                                   1020 ;address                   Allocated with name '_take_address_address_65538_70'
                                   1021 ;block                     Allocated with name '_take_address_block_65539_74'
                                   1022 ;------------------------------------------------------------
                                   1023 ;	8051_i2c_eeprom.c:134: unsigned int take_address() 
                                   1024 ;	-----------------------------------------
                                   1025 ;	 function take_address
                                   1026 ;	-----------------------------------------
      0072FC                       1027 _take_address:
                                   1028 ;	8051_i2c_eeprom.c:136: printf("│ Enter address (hex, up to 3 characters): \n\r|");
      0072FC 74 A5            [12] 1029 	mov	a,#___str_19
      0072FE C0 E0            [24] 1030 	push	acc
      007300 74 8C            [12] 1031 	mov	a,#(___str_19 >> 8)
      007302 C0 E0            [24] 1032 	push	acc
      007304 74 80            [12] 1033 	mov	a,#0x80
      007306 C0 E0            [24] 1034 	push	acc
      007308 12 7B 69         [24] 1035 	lcall	_printf
      00730B 15 81            [12] 1036 	dec	sp
      00730D 15 81            [12] 1037 	dec	sp
      00730F 15 81            [12] 1038 	dec	sp
                                   1039 ;	8051_i2c_eeprom.c:137: char input[4] = {0};  // Array for 3 hex chars + null terminator
      007311 90 04 04         [24] 1040 	mov	dptr,#_take_address_input_65537_66
      007314 E4               [12] 1041 	clr	a
      007315 F0               [24] 1042 	movx	@dptr,a
      007316 90 04 05         [24] 1043 	mov	dptr,#(_take_address_input_65537_66 + 0x0001)
      007319 F0               [24] 1044 	movx	@dptr,a
      00731A 90 04 06         [24] 1045 	mov	dptr,#(_take_address_input_65537_66 + 0x0002)
      00731D F0               [24] 1046 	movx	@dptr,a
      00731E 90 04 07         [24] 1047 	mov	dptr,#(_take_address_input_65537_66 + 0x0003)
      007321 F0               [24] 1048 	movx	@dptr,a
                                   1049 ;	8051_i2c_eeprom.c:141: printf("| $ ");
      007322 74 D6            [12] 1050 	mov	a,#___str_20
      007324 C0 E0            [24] 1051 	push	acc
      007326 74 8C            [12] 1052 	mov	a,#(___str_20 >> 8)
      007328 C0 E0            [24] 1053 	push	acc
      00732A 74 80            [12] 1054 	mov	a,#0x80
      00732C C0 E0            [24] 1055 	push	acc
      00732E 12 7B 69         [24] 1056 	lcall	_printf
      007331 15 81            [12] 1057 	dec	sp
      007333 15 81            [12] 1058 	dec	sp
      007335 15 81            [12] 1059 	dec	sp
                                   1060 ;	8051_i2c_eeprom.c:143: while (i < 3) {
      007337 7E 00            [12] 1061 	mov	r6,#0x00
      007339 7F 00            [12] 1062 	mov	r7,#0x00
      00733B                       1063 00111$:
      00733B C3               [12] 1064 	clr	c
      00733C EE               [12] 1065 	mov	a,r6
      00733D 94 03            [12] 1066 	subb	a,#0x03
      00733F EF               [12] 1067 	mov	a,r7
      007340 64 80            [12] 1068 	xrl	a,#0x80
      007342 94 80            [12] 1069 	subb	a,#0x80
      007344 50 5B            [24] 1070 	jnc	00113$
                                   1071 ;	8051_i2c_eeprom.c:145: c = getchar();
      007346 C0 07            [24] 1072 	push	ar7
      007348 C0 06            [24] 1073 	push	ar6
      00734A 12 70 81         [24] 1074 	lcall	_getchar
      00734D AC 82            [24] 1075 	mov	r4,dpl
      00734F AD 83            [24] 1076 	mov	r5,dph
      007351 D0 06            [24] 1077 	pop	ar6
      007353 D0 07            [24] 1078 	pop	ar7
                                   1079 ;	8051_i2c_eeprom.c:148: if (c == '\r' || c == '\n') {
      007355 BC 0D 02         [24] 1080 	cjne	r4,#0x0d,00200$
      007358 80 47            [24] 1081 	sjmp	00113$
      00735A                       1082 00200$:
      00735A BC 0A 02         [24] 1083 	cjne	r4,#0x0a,00201$
      00735D 80 42            [24] 1084 	sjmp	00113$
      00735F                       1085 00201$:
                                   1086 ;	8051_i2c_eeprom.c:153: if ((c >= '0' && c <= '9') || 
      00735F BC 30 00         [24] 1087 	cjne	r4,#0x30,00202$
      007362                       1088 00202$:
      007362 40 05            [24] 1089 	jc	00108$
      007364 EC               [12] 1090 	mov	a,r4
      007365 24 C6            [12] 1091 	add	a,#0xff - 0x39
      007367 50 14            [24] 1092 	jnc	00104$
      007369                       1093 00108$:
                                   1094 ;	8051_i2c_eeprom.c:154: (c >= 'a' && c <= 'f') || 
      007369 BC 61 00         [24] 1095 	cjne	r4,#0x61,00205$
      00736C                       1096 00205$:
      00736C 40 05            [24] 1097 	jc	00110$
      00736E EC               [12] 1098 	mov	a,r4
      00736F 24 99            [12] 1099 	add	a,#0xff - 0x66
      007371 50 0A            [24] 1100 	jnc	00104$
      007373                       1101 00110$:
                                   1102 ;	8051_i2c_eeprom.c:155: (c >= 'A' && c <= 'F')) {
      007373 BC 41 00         [24] 1103 	cjne	r4,#0x41,00208$
      007376                       1104 00208$:
      007376 40 C3            [24] 1105 	jc	00111$
      007378 EC               [12] 1106 	mov	a,r4
      007379 24 B9            [12] 1107 	add	a,#0xff - 0x46
      00737B 40 BE            [24] 1108 	jc	00111$
      00737D                       1109 00104$:
                                   1110 ;	8051_i2c_eeprom.c:157: input[i] = c;
      00737D EE               [12] 1111 	mov	a,r6
      00737E 24 04            [12] 1112 	add	a,#_take_address_input_65537_66
      007380 F5 82            [12] 1113 	mov	dpl,a
      007382 EF               [12] 1114 	mov	a,r7
      007383 34 04            [12] 1115 	addc	a,#(_take_address_input_65537_66 >> 8)
      007385 F5 83            [12] 1116 	mov	dph,a
      007387 EC               [12] 1117 	mov	a,r4
      007388 F0               [24] 1118 	movx	@dptr,a
                                   1119 ;	8051_i2c_eeprom.c:158: putchar(c);  // Echo character back
      007389 7D 00            [12] 1120 	mov	r5,#0x00
      00738B 8C 82            [24] 1121 	mov	dpl,r4
      00738D 8D 83            [24] 1122 	mov	dph,r5
      00738F C0 07            [24] 1123 	push	ar7
      007391 C0 06            [24] 1124 	push	ar6
      007393 12 70 62         [24] 1125 	lcall	_putchar
      007396 D0 06            [24] 1126 	pop	ar6
      007398 D0 07            [24] 1127 	pop	ar7
                                   1128 ;	8051_i2c_eeprom.c:159: i++;
      00739A 0E               [12] 1129 	inc	r6
      00739B BE 00 9D         [24] 1130 	cjne	r6,#0x00,00111$
      00739E 0F               [12] 1131 	inc	r7
      00739F 80 9A            [24] 1132 	sjmp	00111$
      0073A1                       1133 00113$:
                                   1134 ;	8051_i2c_eeprom.c:163: input[i] = '\0';  // Null-terminate the string
      0073A1 EE               [12] 1135 	mov	a,r6
      0073A2 24 04            [12] 1136 	add	a,#_take_address_input_65537_66
      0073A4 F5 82            [12] 1137 	mov	dpl,a
      0073A6 EF               [12] 1138 	mov	a,r7
      0073A7 34 04            [12] 1139 	addc	a,#(_take_address_input_65537_66 >> 8)
      0073A9 F5 83            [12] 1140 	mov	dph,a
      0073AB E4               [12] 1141 	clr	a
      0073AC F0               [24] 1142 	movx	@dptr,a
                                   1143 ;	8051_i2c_eeprom.c:166: unsigned int address = 0;
      0073AD 90 04 08         [24] 1144 	mov	dptr,#_take_address_address_65538_70
      0073B0 F0               [24] 1145 	movx	@dptr,a
      0073B1 A3               [24] 1146 	inc	dptr
      0073B2 F0               [24] 1147 	movx	@dptr,a
                                   1148 ;	8051_i2c_eeprom.c:167: for(i = 0; input[i] != '\0'; i++) {
      0073B3 7E 00            [12] 1149 	mov	r6,#0x00
      0073B5 7F 00            [12] 1150 	mov	r7,#0x00
      0073B7                       1151 00129$:
      0073B7 EE               [12] 1152 	mov	a,r6
      0073B8 24 04            [12] 1153 	add	a,#_take_address_input_65537_66
      0073BA F5 82            [12] 1154 	mov	dpl,a
      0073BC EF               [12] 1155 	mov	a,r7
      0073BD 34 04            [12] 1156 	addc	a,#(_take_address_input_65537_66 >> 8)
      0073BF F5 83            [12] 1157 	mov	dph,a
      0073C1 E0               [24] 1158 	movx	a,@dptr
      0073C2 FD               [12] 1159 	mov	r5,a
      0073C3 70 03            [24] 1160 	jnz	00212$
      0073C5 02 74 70         [24] 1161 	ljmp	00125$
      0073C8                       1162 00212$:
                                   1163 ;	8051_i2c_eeprom.c:168: address = address * 16;
      0073C8 90 04 08         [24] 1164 	mov	dptr,#_take_address_address_65538_70
      0073CB E0               [24] 1165 	movx	a,@dptr
      0073CC FB               [12] 1166 	mov	r3,a
      0073CD A3               [24] 1167 	inc	dptr
      0073CE E0               [24] 1168 	movx	a,@dptr
      0073CF C4               [12] 1169 	swap	a
      0073D0 54 F0            [12] 1170 	anl	a,#0xf0
      0073D2 CB               [12] 1171 	xch	a,r3
      0073D3 C4               [12] 1172 	swap	a
      0073D4 CB               [12] 1173 	xch	a,r3
      0073D5 6B               [12] 1174 	xrl	a,r3
      0073D6 CB               [12] 1175 	xch	a,r3
      0073D7 54 F0            [12] 1176 	anl	a,#0xf0
      0073D9 CB               [12] 1177 	xch	a,r3
      0073DA 6B               [12] 1178 	xrl	a,r3
      0073DB FC               [12] 1179 	mov	r4,a
      0073DC 90 04 08         [24] 1180 	mov	dptr,#_take_address_address_65538_70
      0073DF EB               [12] 1181 	mov	a,r3
      0073E0 F0               [24] 1182 	movx	@dptr,a
      0073E1 EC               [12] 1183 	mov	a,r4
      0073E2 A3               [24] 1184 	inc	dptr
      0073E3 F0               [24] 1185 	movx	@dptr,a
                                   1186 ;	8051_i2c_eeprom.c:169: if(input[i] >= '0' && input[i] <= '9')
      0073E4 BD 30 00         [24] 1187 	cjne	r5,#0x30,00213$
      0073E7                       1188 00213$:
      0073E7 40 23            [24] 1189 	jc	00122$
      0073E9 ED               [12] 1190 	mov	a,r5
      0073EA 24 C6            [12] 1191 	add	a,#0xff - 0x39
      0073EC 40 1E            [24] 1192 	jc	00122$
                                   1193 ;	8051_i2c_eeprom.c:170: address += input[i] - '0';
      0073EE 7C 00            [12] 1194 	mov	r4,#0x00
      0073F0 ED               [12] 1195 	mov	a,r5
      0073F1 24 D0            [12] 1196 	add	a,#0xd0
      0073F3 FD               [12] 1197 	mov	r5,a
      0073F4 EC               [12] 1198 	mov	a,r4
      0073F5 34 FF            [12] 1199 	addc	a,#0xff
      0073F7 FC               [12] 1200 	mov	r4,a
      0073F8 90 04 08         [24] 1201 	mov	dptr,#_take_address_address_65538_70
      0073FB E0               [24] 1202 	movx	a,@dptr
      0073FC FA               [12] 1203 	mov	r2,a
      0073FD A3               [24] 1204 	inc	dptr
      0073FE E0               [24] 1205 	movx	a,@dptr
      0073FF FB               [12] 1206 	mov	r3,a
      007400 90 04 08         [24] 1207 	mov	dptr,#_take_address_address_65538_70
      007403 ED               [12] 1208 	mov	a,r5
      007404 2A               [12] 1209 	add	a,r2
      007405 F0               [24] 1210 	movx	@dptr,a
      007406 EC               [12] 1211 	mov	a,r4
      007407 3B               [12] 1212 	addc	a,r3
      007408 A3               [24] 1213 	inc	dptr
      007409 F0               [24] 1214 	movx	@dptr,a
      00740A 80 5C            [24] 1215 	sjmp	00130$
      00740C                       1216 00122$:
                                   1217 ;	8051_i2c_eeprom.c:171: else if(input[i] >= 'A' && input[i] <= 'F')
      00740C EE               [12] 1218 	mov	a,r6
      00740D 24 04            [12] 1219 	add	a,#_take_address_input_65537_66
      00740F F5 82            [12] 1220 	mov	dpl,a
      007411 EF               [12] 1221 	mov	a,r7
      007412 34 04            [12] 1222 	addc	a,#(_take_address_input_65537_66 >> 8)
      007414 F5 83            [12] 1223 	mov	dph,a
      007416 E0               [24] 1224 	movx	a,@dptr
      007417 FD               [12] 1225 	mov	r5,a
      007418 BD 41 00         [24] 1226 	cjne	r5,#0x41,00216$
      00741B                       1227 00216$:
      00741B 40 25            [24] 1228 	jc	00118$
      00741D ED               [12] 1229 	mov	a,r5
      00741E 24 B9            [12] 1230 	add	a,#0xff - 0x46
      007420 40 20            [24] 1231 	jc	00118$
                                   1232 ;	8051_i2c_eeprom.c:172: address += input[i] - 'A' + 10;
      007422 8D 03            [24] 1233 	mov	ar3,r5
      007424 7C 00            [12] 1234 	mov	r4,#0x00
      007426 74 C9            [12] 1235 	mov	a,#0xc9
      007428 2B               [12] 1236 	add	a,r3
      007429 FB               [12] 1237 	mov	r3,a
      00742A 74 FF            [12] 1238 	mov	a,#0xff
      00742C 3C               [12] 1239 	addc	a,r4
      00742D FC               [12] 1240 	mov	r4,a
      00742E 90 04 08         [24] 1241 	mov	dptr,#_take_address_address_65538_70
      007431 E0               [24] 1242 	movx	a,@dptr
      007432 F9               [12] 1243 	mov	r1,a
      007433 A3               [24] 1244 	inc	dptr
      007434 E0               [24] 1245 	movx	a,@dptr
      007435 FA               [12] 1246 	mov	r2,a
      007436 90 04 08         [24] 1247 	mov	dptr,#_take_address_address_65538_70
      007439 EB               [12] 1248 	mov	a,r3
      00743A 29               [12] 1249 	add	a,r1
      00743B F0               [24] 1250 	movx	@dptr,a
      00743C EC               [12] 1251 	mov	a,r4
      00743D 3A               [12] 1252 	addc	a,r2
      00743E A3               [24] 1253 	inc	dptr
      00743F F0               [24] 1254 	movx	@dptr,a
      007440 80 26            [24] 1255 	sjmp	00130$
      007442                       1256 00118$:
                                   1257 ;	8051_i2c_eeprom.c:173: else if(input[i] >= 'a' && input[i] <= 'f')
      007442 BD 61 00         [24] 1258 	cjne	r5,#0x61,00219$
      007445                       1259 00219$:
      007445 40 21            [24] 1260 	jc	00130$
      007447 ED               [12] 1261 	mov	a,r5
      007448 24 99            [12] 1262 	add	a,#0xff - 0x66
      00744A 40 1C            [24] 1263 	jc	00130$
                                   1264 ;	8051_i2c_eeprom.c:174: address += input[i] - 'a' + 10;
      00744C 7C 00            [12] 1265 	mov	r4,#0x00
      00744E 74 A9            [12] 1266 	mov	a,#0xa9
      007450 2D               [12] 1267 	add	a,r5
      007451 FD               [12] 1268 	mov	r5,a
      007452 74 FF            [12] 1269 	mov	a,#0xff
      007454 3C               [12] 1270 	addc	a,r4
      007455 FC               [12] 1271 	mov	r4,a
      007456 90 04 08         [24] 1272 	mov	dptr,#_take_address_address_65538_70
      007459 E0               [24] 1273 	movx	a,@dptr
      00745A FA               [12] 1274 	mov	r2,a
      00745B A3               [24] 1275 	inc	dptr
      00745C E0               [24] 1276 	movx	a,@dptr
      00745D FB               [12] 1277 	mov	r3,a
      00745E 90 04 08         [24] 1278 	mov	dptr,#_take_address_address_65538_70
      007461 ED               [12] 1279 	mov	a,r5
      007462 2A               [12] 1280 	add	a,r2
      007463 F0               [24] 1281 	movx	@dptr,a
      007464 EC               [12] 1282 	mov	a,r4
      007465 3B               [12] 1283 	addc	a,r3
      007466 A3               [24] 1284 	inc	dptr
      007467 F0               [24] 1285 	movx	@dptr,a
      007468                       1286 00130$:
                                   1287 ;	8051_i2c_eeprom.c:167: for(i = 0; input[i] != '\0'; i++) {
      007468 0E               [12] 1288 	inc	r6
      007469 BE 00 01         [24] 1289 	cjne	r6,#0x00,00222$
      00746C 0F               [12] 1290 	inc	r7
      00746D                       1291 00222$:
      00746D 02 73 B7         [24] 1292 	ljmp	00129$
      007470                       1293 00125$:
                                   1294 ;	8051_i2c_eeprom.c:177: printf("\n\r│ Entered address: 0x%03X\n\r", address);
      007470 90 04 08         [24] 1295 	mov	dptr,#_take_address_address_65538_70
      007473 E0               [24] 1296 	movx	a,@dptr
      007474 FE               [12] 1297 	mov	r6,a
      007475 A3               [24] 1298 	inc	dptr
      007476 E0               [24] 1299 	movx	a,@dptr
      007477 FF               [12] 1300 	mov	r7,a
      007478 C0 07            [24] 1301 	push	ar7
      00747A C0 06            [24] 1302 	push	ar6
      00747C C0 06            [24] 1303 	push	ar6
      00747E C0 07            [24] 1304 	push	ar7
      007480 74 DB            [12] 1305 	mov	a,#___str_21
      007482 C0 E0            [24] 1306 	push	acc
      007484 74 8C            [12] 1307 	mov	a,#(___str_21 >> 8)
      007486 C0 E0            [24] 1308 	push	acc
      007488 74 80            [12] 1309 	mov	a,#0x80
      00748A C0 E0            [24] 1310 	push	acc
      00748C 12 7B 69         [24] 1311 	lcall	_printf
      00748F E5 81            [12] 1312 	mov	a,sp
      007491 24 FB            [12] 1313 	add	a,#0xfb
      007493 F5 81            [12] 1314 	mov	sp,a
      007495 D0 06            [24] 1315 	pop	ar6
      007497 D0 07            [24] 1316 	pop	ar7
                                   1317 ;	8051_i2c_eeprom.c:178: if(address > 0x7ff) 
      007499 C3               [12] 1318 	clr	c
      00749A 74 FF            [12] 1319 	mov	a,#0xff
      00749C 9E               [12] 1320 	subb	a,r6
      00749D 74 07            [12] 1321 	mov	a,#0x07
      00749F 9F               [12] 1322 	subb	a,r7
      0074A0 50 5F            [24] 1323 	jnc	00127$
                                   1324 ;	8051_i2c_eeprom.c:180: printf("╔══════════════════════════════════════════╗\n\r");
      0074A2 74 FB            [12] 1325 	mov	a,#___str_22
      0074A4 C0 E0            [24] 1326 	push	acc
      0074A6 74 8C            [12] 1327 	mov	a,#(___str_22 >> 8)
      0074A8 C0 E0            [24] 1328 	push	acc
      0074AA 74 80            [12] 1329 	mov	a,#0x80
      0074AC C0 E0            [24] 1330 	push	acc
      0074AE 12 7B 69         [24] 1331 	lcall	_printf
      0074B1 15 81            [12] 1332 	dec	sp
      0074B3 15 81            [12] 1333 	dec	sp
      0074B5 15 81            [12] 1334 	dec	sp
                                   1335 ;	8051_i2c_eeprom.c:181: printf("║       ! ADDRESS OUT OF RANGE !         ║\n\r");
      0074B7 74 82            [12] 1336 	mov	a,#___str_23
      0074B9 C0 E0            [24] 1337 	push	acc
      0074BB 74 8D            [12] 1338 	mov	a,#(___str_23 >> 8)
      0074BD C0 E0            [24] 1339 	push	acc
      0074BF 74 80            [12] 1340 	mov	a,#0x80
      0074C1 C0 E0            [24] 1341 	push	acc
      0074C3 12 7B 69         [24] 1342 	lcall	_printf
      0074C6 15 81            [12] 1343 	dec	sp
      0074C8 15 81            [12] 1344 	dec	sp
      0074CA 15 81            [12] 1345 	dec	sp
                                   1346 ;	8051_i2c_eeprom.c:182: printf("║     Please Enter Valid Address         ║\n\r");
      0074CC 74 B3            [12] 1347 	mov	a,#___str_24
      0074CE C0 E0            [24] 1348 	push	acc
      0074D0 74 8D            [12] 1349 	mov	a,#(___str_24 >> 8)
      0074D2 C0 E0            [24] 1350 	push	acc
      0074D4 74 80            [12] 1351 	mov	a,#0x80
      0074D6 C0 E0            [24] 1352 	push	acc
      0074D8 12 7B 69         [24] 1353 	lcall	_printf
      0074DB 15 81            [12] 1354 	dec	sp
      0074DD 15 81            [12] 1355 	dec	sp
      0074DF 15 81            [12] 1356 	dec	sp
                                   1357 ;	8051_i2c_eeprom.c:183: printf("╚══════════════════════════════════════════╝\n\r");
      0074E1 74 E4            [12] 1358 	mov	a,#___str_25
      0074E3 C0 E0            [24] 1359 	push	acc
      0074E5 74 8D            [12] 1360 	mov	a,#(___str_25 >> 8)
      0074E7 C0 E0            [24] 1361 	push	acc
      0074E9 74 80            [12] 1362 	mov	a,#0x80
      0074EB C0 E0            [24] 1363 	push	acc
      0074ED 12 7B 69         [24] 1364 	lcall	_printf
      0074F0 15 81            [12] 1365 	dec	sp
      0074F2 15 81            [12] 1366 	dec	sp
      0074F4 15 81            [12] 1367 	dec	sp
                                   1368 ;	8051_i2c_eeprom.c:184: address_range_flag = 0;
      0074F6 90 04 51         [24] 1369 	mov	dptr,#_address_range_flag
      0074F9 E4               [12] 1370 	clr	a
      0074FA F0               [24] 1371 	movx	@dptr,a
      0074FB A3               [24] 1372 	inc	dptr
      0074FC F0               [24] 1373 	movx	@dptr,a
                                   1374 ;	8051_i2c_eeprom.c:185: return 0;
      0074FD 90 00 00         [24] 1375 	mov	dptr,#0x0000
      007500 22               [24] 1376 	ret
      007501                       1377 00127$:
                                   1378 ;	8051_i2c_eeprom.c:189: address = address%256;     //word address
      007501 90 04 08         [24] 1379 	mov	dptr,#_take_address_address_65538_70
      007504 EE               [12] 1380 	mov	a,r6
      007505 F0               [24] 1381 	movx	@dptr,a
      007506 E4               [12] 1382 	clr	a
      007507 A3               [24] 1383 	inc	dptr
      007508 F0               [24] 1384 	movx	@dptr,a
                                   1385 ;	8051_i2c_eeprom.c:192: return address;
      007509 90 04 08         [24] 1386 	mov	dptr,#_take_address_address_65538_70
      00750C E0               [24] 1387 	movx	a,@dptr
      00750D FE               [12] 1388 	mov	r6,a
      00750E A3               [24] 1389 	inc	dptr
      00750F E0               [24] 1390 	movx	a,@dptr
                                   1391 ;	8051_i2c_eeprom.c:193: }
      007510 8E 82            [24] 1392 	mov	dpl,r6
      007512 F5 83            [12] 1393 	mov	dph,a
      007514 22               [24] 1394 	ret
                                   1395 ;------------------------------------------------------------
                                   1396 ;Allocation info for local variables in function 'take_data'
                                   1397 ;------------------------------------------------------------
                                   1398 ;input                     Allocated with name '_take_data_input_65537_76'
                                   1399 ;i                         Allocated with name '_take_data_i_65537_76'
                                   1400 ;c                         Allocated with name '_take_data_c_65537_76'
                                   1401 ;data                      Allocated with name '_take_data_data_65538_80'
                                   1402 ;------------------------------------------------------------
                                   1403 ;	8051_i2c_eeprom.c:195: unsigned char take_data()
                                   1404 ;	-----------------------------------------
                                   1405 ;	 function take_data
                                   1406 ;	-----------------------------------------
      007515                       1407 _take_data:
                                   1408 ;	8051_i2c_eeprom.c:197: printf("│ Enter data (hex, up to 2 characters): \n\r|");
      007515 74 6B            [12] 1409 	mov	a,#___str_26
      007517 C0 E0            [24] 1410 	push	acc
      007519 74 8E            [12] 1411 	mov	a,#(___str_26 >> 8)
      00751B C0 E0            [24] 1412 	push	acc
      00751D 74 80            [12] 1413 	mov	a,#0x80
      00751F C0 E0            [24] 1414 	push	acc
      007521 12 7B 69         [24] 1415 	lcall	_printf
      007524 15 81            [12] 1416 	dec	sp
      007526 15 81            [12] 1417 	dec	sp
      007528 15 81            [12] 1418 	dec	sp
                                   1419 ;	8051_i2c_eeprom.c:198: char input[4] = {0};  // Array for 3 hex chars + null terminator
      00752A 90 04 0A         [24] 1420 	mov	dptr,#_take_data_input_65537_76
      00752D E4               [12] 1421 	clr	a
      00752E F0               [24] 1422 	movx	@dptr,a
      00752F 90 04 0B         [24] 1423 	mov	dptr,#(_take_data_input_65537_76 + 0x0001)
      007532 F0               [24] 1424 	movx	@dptr,a
      007533 90 04 0C         [24] 1425 	mov	dptr,#(_take_data_input_65537_76 + 0x0002)
      007536 F0               [24] 1426 	movx	@dptr,a
      007537 90 04 0D         [24] 1427 	mov	dptr,#(_take_data_input_65537_76 + 0x0003)
      00753A F0               [24] 1428 	movx	@dptr,a
                                   1429 ;	8051_i2c_eeprom.c:202: printf("$ ");
      00753B 74 99            [12] 1430 	mov	a,#___str_27
      00753D C0 E0            [24] 1431 	push	acc
      00753F 74 8E            [12] 1432 	mov	a,#(___str_27 >> 8)
      007541 C0 E0            [24] 1433 	push	acc
      007543 74 80            [12] 1434 	mov	a,#0x80
      007545 C0 E0            [24] 1435 	push	acc
      007547 12 7B 69         [24] 1436 	lcall	_printf
      00754A 15 81            [12] 1437 	dec	sp
      00754C 15 81            [12] 1438 	dec	sp
      00754E 15 81            [12] 1439 	dec	sp
                                   1440 ;	8051_i2c_eeprom.c:204: while (i < 3) {
      007550 7E 00            [12] 1441 	mov	r6,#0x00
      007552 7F 00            [12] 1442 	mov	r7,#0x00
      007554                       1443 00111$:
      007554 C3               [12] 1444 	clr	c
      007555 EE               [12] 1445 	mov	a,r6
      007556 94 03            [12] 1446 	subb	a,#0x03
      007558 EF               [12] 1447 	mov	a,r7
      007559 64 80            [12] 1448 	xrl	a,#0x80
      00755B 94 80            [12] 1449 	subb	a,#0x80
      00755D 50 5B            [24] 1450 	jnc	00113$
                                   1451 ;	8051_i2c_eeprom.c:206: c = getchar();
      00755F C0 07            [24] 1452 	push	ar7
      007561 C0 06            [24] 1453 	push	ar6
      007563 12 70 81         [24] 1454 	lcall	_getchar
      007566 AC 82            [24] 1455 	mov	r4,dpl
      007568 AD 83            [24] 1456 	mov	r5,dph
      00756A D0 06            [24] 1457 	pop	ar6
      00756C D0 07            [24] 1458 	pop	ar7
                                   1459 ;	8051_i2c_eeprom.c:209: if (c == '\r' || c == '\n') {
      00756E BC 0D 02         [24] 1460 	cjne	r4,#0x0d,00200$
      007571 80 47            [24] 1461 	sjmp	00113$
      007573                       1462 00200$:
      007573 BC 0A 02         [24] 1463 	cjne	r4,#0x0a,00201$
      007576 80 42            [24] 1464 	sjmp	00113$
      007578                       1465 00201$:
                                   1466 ;	8051_i2c_eeprom.c:214: if ((c >= '0' && c <= '9') ||
      007578 BC 30 00         [24] 1467 	cjne	r4,#0x30,00202$
      00757B                       1468 00202$:
      00757B 40 05            [24] 1469 	jc	00108$
      00757D EC               [12] 1470 	mov	a,r4
      00757E 24 C6            [12] 1471 	add	a,#0xff - 0x39
      007580 50 14            [24] 1472 	jnc	00104$
      007582                       1473 00108$:
                                   1474 ;	8051_i2c_eeprom.c:215: (c >= 'a' && c <= 'f') ||
      007582 BC 61 00         [24] 1475 	cjne	r4,#0x61,00205$
      007585                       1476 00205$:
      007585 40 05            [24] 1477 	jc	00110$
      007587 EC               [12] 1478 	mov	a,r4
      007588 24 99            [12] 1479 	add	a,#0xff - 0x66
      00758A 50 0A            [24] 1480 	jnc	00104$
      00758C                       1481 00110$:
                                   1482 ;	8051_i2c_eeprom.c:216: (c >= 'A' && c <= 'F')) {
      00758C BC 41 00         [24] 1483 	cjne	r4,#0x41,00208$
      00758F                       1484 00208$:
      00758F 40 C3            [24] 1485 	jc	00111$
      007591 EC               [12] 1486 	mov	a,r4
      007592 24 B9            [12] 1487 	add	a,#0xff - 0x46
      007594 40 BE            [24] 1488 	jc	00111$
      007596                       1489 00104$:
                                   1490 ;	8051_i2c_eeprom.c:218: input[i] = c;
      007596 EE               [12] 1491 	mov	a,r6
      007597 24 0A            [12] 1492 	add	a,#_take_data_input_65537_76
      007599 F5 82            [12] 1493 	mov	dpl,a
      00759B EF               [12] 1494 	mov	a,r7
      00759C 34 04            [12] 1495 	addc	a,#(_take_data_input_65537_76 >> 8)
      00759E F5 83            [12] 1496 	mov	dph,a
      0075A0 EC               [12] 1497 	mov	a,r4
      0075A1 F0               [24] 1498 	movx	@dptr,a
                                   1499 ;	8051_i2c_eeprom.c:219: putchar(c);  // Echo character back
      0075A2 7D 00            [12] 1500 	mov	r5,#0x00
      0075A4 8C 82            [24] 1501 	mov	dpl,r4
      0075A6 8D 83            [24] 1502 	mov	dph,r5
      0075A8 C0 07            [24] 1503 	push	ar7
      0075AA C0 06            [24] 1504 	push	ar6
      0075AC 12 70 62         [24] 1505 	lcall	_putchar
      0075AF D0 06            [24] 1506 	pop	ar6
      0075B1 D0 07            [24] 1507 	pop	ar7
                                   1508 ;	8051_i2c_eeprom.c:220: i++;
      0075B3 0E               [12] 1509 	inc	r6
      0075B4 BE 00 9D         [24] 1510 	cjne	r6,#0x00,00111$
      0075B7 0F               [12] 1511 	inc	r7
      0075B8 80 9A            [24] 1512 	sjmp	00111$
      0075BA                       1513 00113$:
                                   1514 ;	8051_i2c_eeprom.c:224: input[i] = '\0';  // Null-terminate the string
      0075BA EE               [12] 1515 	mov	a,r6
      0075BB 24 0A            [12] 1516 	add	a,#_take_data_input_65537_76
      0075BD F5 82            [12] 1517 	mov	dpl,a
      0075BF EF               [12] 1518 	mov	a,r7
      0075C0 34 04            [12] 1519 	addc	a,#(_take_data_input_65537_76 >> 8)
      0075C2 F5 83            [12] 1520 	mov	dph,a
      0075C4 E4               [12] 1521 	clr	a
      0075C5 F0               [24] 1522 	movx	@dptr,a
                                   1523 ;	8051_i2c_eeprom.c:227: unsigned char data = 0;
      0075C6 90 04 0E         [24] 1524 	mov	dptr,#_take_data_data_65538_80
      0075C9 F0               [24] 1525 	movx	@dptr,a
                                   1526 ;	8051_i2c_eeprom.c:228: for (i = 0; input[i] != '\0'; i++) {
      0075CA 7E 00            [12] 1527 	mov	r6,#0x00
      0075CC 7F 00            [12] 1528 	mov	r7,#0x00
      0075CE                       1529 00129$:
      0075CE EE               [12] 1530 	mov	a,r6
      0075CF 24 0A            [12] 1531 	add	a,#_take_data_input_65537_76
      0075D1 F5 82            [12] 1532 	mov	dpl,a
      0075D3 EF               [12] 1533 	mov	a,r7
      0075D4 34 04            [12] 1534 	addc	a,#(_take_data_input_65537_76 >> 8)
      0075D6 F5 83            [12] 1535 	mov	dph,a
      0075D8 E0               [24] 1536 	movx	a,@dptr
      0075D9 FD               [12] 1537 	mov	r5,a
      0075DA 70 03            [24] 1538 	jnz	00212$
      0075DC 02 76 41         [24] 1539 	ljmp	00125$
      0075DF                       1540 00212$:
                                   1541 ;	8051_i2c_eeprom.c:229: data = data * 16;
      0075DF 90 04 0E         [24] 1542 	mov	dptr,#_take_data_data_65538_80
      0075E2 E0               [24] 1543 	movx	a,@dptr
      0075E3 C4               [12] 1544 	swap	a
      0075E4 54 F0            [12] 1545 	anl	a,#0xf0
      0075E6 FC               [12] 1546 	mov	r4,a
      0075E7 F0               [24] 1547 	movx	@dptr,a
                                   1548 ;	8051_i2c_eeprom.c:230: if (input[i] >= '0' && input[i] <= '9')
      0075E8 BD 30 00         [24] 1549 	cjne	r5,#0x30,00213$
      0075EB                       1550 00213$:
      0075EB 40 12            [24] 1551 	jc	00122$
      0075ED ED               [12] 1552 	mov	a,r5
      0075EE 24 C6            [12] 1553 	add	a,#0xff - 0x39
      0075F0 40 0D            [24] 1554 	jc	00122$
                                   1555 ;	8051_i2c_eeprom.c:231: data += input[i] - '0';
      0075F2 ED               [12] 1556 	mov	a,r5
      0075F3 24 D0            [12] 1557 	add	a,#0xd0
      0075F5 FD               [12] 1558 	mov	r5,a
      0075F6 90 04 0E         [24] 1559 	mov	dptr,#_take_data_data_65538_80
      0075F9 E0               [24] 1560 	movx	a,@dptr
      0075FA FC               [12] 1561 	mov	r4,a
      0075FB 2D               [12] 1562 	add	a,r5
      0075FC F0               [24] 1563 	movx	@dptr,a
      0075FD 80 3A            [24] 1564 	sjmp	00130$
      0075FF                       1565 00122$:
                                   1566 ;	8051_i2c_eeprom.c:232: else if (input[i] >= 'A' && input[i] <= 'F')
      0075FF EE               [12] 1567 	mov	a,r6
      007600 24 0A            [12] 1568 	add	a,#_take_data_input_65537_76
      007602 F5 82            [12] 1569 	mov	dpl,a
      007604 EF               [12] 1570 	mov	a,r7
      007605 34 04            [12] 1571 	addc	a,#(_take_data_input_65537_76 >> 8)
      007607 F5 83            [12] 1572 	mov	dph,a
      007609 E0               [24] 1573 	movx	a,@dptr
      00760A FD               [12] 1574 	mov	r5,a
      00760B BD 41 00         [24] 1575 	cjne	r5,#0x41,00216$
      00760E                       1576 00216$:
      00760E 40 14            [24] 1577 	jc	00118$
      007610 ED               [12] 1578 	mov	a,r5
      007611 24 B9            [12] 1579 	add	a,#0xff - 0x46
      007613 40 0F            [24] 1580 	jc	00118$
                                   1581 ;	8051_i2c_eeprom.c:233: data += input[i] - 'A' + 10;
      007615 8D 04            [24] 1582 	mov	ar4,r5
      007617 74 C9            [12] 1583 	mov	a,#0xc9
      007619 2C               [12] 1584 	add	a,r4
      00761A FC               [12] 1585 	mov	r4,a
      00761B 90 04 0E         [24] 1586 	mov	dptr,#_take_data_data_65538_80
      00761E E0               [24] 1587 	movx	a,@dptr
      00761F FB               [12] 1588 	mov	r3,a
      007620 2C               [12] 1589 	add	a,r4
      007621 F0               [24] 1590 	movx	@dptr,a
      007622 80 15            [24] 1591 	sjmp	00130$
      007624                       1592 00118$:
                                   1593 ;	8051_i2c_eeprom.c:234: else if (input[i] >= 'a' && input[i] <= 'f')
      007624 BD 61 00         [24] 1594 	cjne	r5,#0x61,00219$
      007627                       1595 00219$:
      007627 40 10            [24] 1596 	jc	00130$
      007629 ED               [12] 1597 	mov	a,r5
      00762A 24 99            [12] 1598 	add	a,#0xff - 0x66
      00762C 40 0B            [24] 1599 	jc	00130$
                                   1600 ;	8051_i2c_eeprom.c:235: data += input[i] - 'a' + 10;
      00762E 74 A9            [12] 1601 	mov	a,#0xa9
      007630 2D               [12] 1602 	add	a,r5
      007631 FD               [12] 1603 	mov	r5,a
      007632 90 04 0E         [24] 1604 	mov	dptr,#_take_data_data_65538_80
      007635 E0               [24] 1605 	movx	a,@dptr
      007636 FC               [12] 1606 	mov	r4,a
      007637 2D               [12] 1607 	add	a,r5
      007638 F0               [24] 1608 	movx	@dptr,a
      007639                       1609 00130$:
                                   1610 ;	8051_i2c_eeprom.c:228: for (i = 0; input[i] != '\0'; i++) {
      007639 0E               [12] 1611 	inc	r6
      00763A BE 00 01         [24] 1612 	cjne	r6,#0x00,00222$
      00763D 0F               [12] 1613 	inc	r7
      00763E                       1614 00222$:
      00763E 02 75 CE         [24] 1615 	ljmp	00129$
      007641                       1616 00125$:
                                   1617 ;	8051_i2c_eeprom.c:238: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      007641 90 04 0E         [24] 1618 	mov	dptr,#_take_data_data_65538_80
      007644 E0               [24] 1619 	movx	a,@dptr
      007645 FF               [12] 1620 	mov	r7,a
      007646 FD               [12] 1621 	mov	r5,a
      007647 7E 00            [12] 1622 	mov	r6,#0x00
      007649 C0 07            [24] 1623 	push	ar7
      00764B C0 05            [24] 1624 	push	ar5
      00764D C0 06            [24] 1625 	push	ar6
      00764F 74 9C            [12] 1626 	mov	a,#___str_28
      007651 C0 E0            [24] 1627 	push	acc
      007653 74 8E            [12] 1628 	mov	a,#(___str_28 >> 8)
      007655 C0 E0            [24] 1629 	push	acc
      007657 74 80            [12] 1630 	mov	a,#0x80
      007659 C0 E0            [24] 1631 	push	acc
      00765B 12 7B 69         [24] 1632 	lcall	_printf
      00765E E5 81            [12] 1633 	mov	a,sp
      007660 24 FB            [12] 1634 	add	a,#0xfb
      007662 F5 81            [12] 1635 	mov	sp,a
      007664 D0 07            [24] 1636 	pop	ar7
                                   1637 ;	8051_i2c_eeprom.c:239: if(data > 0xfe)
      007666 EF               [12] 1638 	mov	a,r7
      007667 24 01            [12] 1639 	add	a,#0xff - 0xfe
      007669 50 20            [24] 1640 	jnc	00127$
                                   1641 ;	8051_i2c_eeprom.c:241: printf("Data out of Range\n\r");
      00766B 74 B9            [12] 1642 	mov	a,#___str_29
      00766D C0 E0            [24] 1643 	push	acc
      00766F 74 8E            [12] 1644 	mov	a,#(___str_29 >> 8)
      007671 C0 E0            [24] 1645 	push	acc
      007673 74 80            [12] 1646 	mov	a,#0x80
      007675 C0 E0            [24] 1647 	push	acc
      007677 12 7B 69         [24] 1648 	lcall	_printf
      00767A 15 81            [12] 1649 	dec	sp
      00767C 15 81            [12] 1650 	dec	sp
      00767E 15 81            [12] 1651 	dec	sp
                                   1652 ;	8051_i2c_eeprom.c:242: data_range_flag = 0;
      007680 90 04 53         [24] 1653 	mov	dptr,#_data_range_flag
      007683 E4               [12] 1654 	clr	a
      007684 F0               [24] 1655 	movx	@dptr,a
      007685 A3               [24] 1656 	inc	dptr
      007686 F0               [24] 1657 	movx	@dptr,a
                                   1658 ;	8051_i2c_eeprom.c:243: return 0;
      007687 75 82 00         [24] 1659 	mov	dpl,#0x00
      00768A 22               [24] 1660 	ret
      00768B                       1661 00127$:
                                   1662 ;	8051_i2c_eeprom.c:245: return data;
      00768B 8F 82            [24] 1663 	mov	dpl,r7
                                   1664 ;	8051_i2c_eeprom.c:247: }
      00768D 22               [24] 1665 	ret
                                   1666 ;------------------------------------------------------------
                                   1667 ;Allocation info for local variables in function 'eeprom_write'
                                   1668 ;------------------------------------------------------------
                                   1669 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                   1670 ;address                   Allocated with name '_eeprom_write_address_65536_84'
                                   1671 ;i                         Allocated with name '_eeprom_write_i_131072_89'
                                   1672 ;------------------------------------------------------------
                                   1673 ;	8051_i2c_eeprom.c:249: int eeprom_write(unsigned int address, unsigned char data) 
                                   1674 ;	-----------------------------------------
                                   1675 ;	 function eeprom_write
                                   1676 ;	-----------------------------------------
      00768E                       1677 _eeprom_write:
      00768E AF 83            [24] 1678 	mov	r7,dph
      007690 E5 82            [12] 1679 	mov	a,dpl
      007692 90 04 10         [24] 1680 	mov	dptr,#_eeprom_write_address_65536_84
      007695 F0               [24] 1681 	movx	@dptr,a
      007696 EF               [12] 1682 	mov	a,r7
      007697 A3               [24] 1683 	inc	dptr
      007698 F0               [24] 1684 	movx	@dptr,a
                                   1685 ;	8051_i2c_eeprom.c:255: i2c_start();
      007699 12 79 FE         [24] 1686 	lcall	_i2c_start
                                   1687 ;	8051_i2c_eeprom.c:258: if(!i2c_write(EEPROM_ID | block | WRITE)) {
      00769C 90 04 55         [24] 1688 	mov	dptr,#_block
      00769F E0               [24] 1689 	movx	a,@dptr
      0076A0 FE               [12] 1690 	mov	r6,a
      0076A1 A3               [24] 1691 	inc	dptr
      0076A2 E0               [24] 1692 	movx	a,@dptr
      0076A3 43 06 A0         [24] 1693 	orl	ar6,#0xa0
      0076A6 8E 82            [24] 1694 	mov	dpl,r6
      0076A8 12 79 11         [24] 1695 	lcall	_i2c_write
      0076AB E5 82            [12] 1696 	mov	a,dpl
      0076AD 85 83 F0         [24] 1697 	mov	b,dph
      0076B0 45 F0            [12] 1698 	orl	a,b
      0076B2 70 1C            [24] 1699 	jnz	00102$
                                   1700 ;	8051_i2c_eeprom.c:259: printf("Error: No ACK for device address (write)\n\r");
      0076B4 74 CD            [12] 1701 	mov	a,#___str_30
      0076B6 C0 E0            [24] 1702 	push	acc
      0076B8 74 8E            [12] 1703 	mov	a,#(___str_30 >> 8)
      0076BA C0 E0            [24] 1704 	push	acc
      0076BC 74 80            [12] 1705 	mov	a,#0x80
      0076BE C0 E0            [24] 1706 	push	acc
      0076C0 12 7B 69         [24] 1707 	lcall	_printf
      0076C3 15 81            [12] 1708 	dec	sp
      0076C5 15 81            [12] 1709 	dec	sp
      0076C7 15 81            [12] 1710 	dec	sp
                                   1711 ;	8051_i2c_eeprom.c:260: i2c_stop();
      0076C9 12 7A 13         [24] 1712 	lcall	_i2c_stop
                                   1713 ;	8051_i2c_eeprom.c:261: return 0;
      0076CC 90 00 00         [24] 1714 	mov	dptr,#0x0000
      0076CF 22               [24] 1715 	ret
      0076D0                       1716 00102$:
                                   1717 ;	8051_i2c_eeprom.c:265: if(!i2c_write((unsigned char)address)) {
      0076D0 90 04 10         [24] 1718 	mov	dptr,#_eeprom_write_address_65536_84
      0076D3 E0               [24] 1719 	movx	a,@dptr
      0076D4 FE               [12] 1720 	mov	r6,a
      0076D5 A3               [24] 1721 	inc	dptr
      0076D6 E0               [24] 1722 	movx	a,@dptr
      0076D7 FF               [12] 1723 	mov	r7,a
      0076D8 8E 05            [24] 1724 	mov	ar5,r6
      0076DA 8D 82            [24] 1725 	mov	dpl,r5
      0076DC C0 07            [24] 1726 	push	ar7
      0076DE C0 06            [24] 1727 	push	ar6
      0076E0 12 79 11         [24] 1728 	lcall	_i2c_write
      0076E3 E5 82            [12] 1729 	mov	a,dpl
      0076E5 85 83 F0         [24] 1730 	mov	b,dph
      0076E8 D0 06            [24] 1731 	pop	ar6
      0076EA D0 07            [24] 1732 	pop	ar7
      0076EC 45 F0            [12] 1733 	orl	a,b
      0076EE 70 1C            [24] 1734 	jnz	00104$
                                   1735 ;	8051_i2c_eeprom.c:266: printf("Error: No ACK for memory address\n\r");
      0076F0 74 F8            [12] 1736 	mov	a,#___str_31
      0076F2 C0 E0            [24] 1737 	push	acc
      0076F4 74 8E            [12] 1738 	mov	a,#(___str_31 >> 8)
      0076F6 C0 E0            [24] 1739 	push	acc
      0076F8 74 80            [12] 1740 	mov	a,#0x80
      0076FA C0 E0            [24] 1741 	push	acc
      0076FC 12 7B 69         [24] 1742 	lcall	_printf
      0076FF 15 81            [12] 1743 	dec	sp
      007701 15 81            [12] 1744 	dec	sp
      007703 15 81            [12] 1745 	dec	sp
                                   1746 ;	8051_i2c_eeprom.c:267: i2c_stop();
      007705 12 7A 13         [24] 1747 	lcall	_i2c_stop
                                   1748 ;	8051_i2c_eeprom.c:268: return 0;
      007708 90 00 00         [24] 1749 	mov	dptr,#0x0000
      00770B 22               [24] 1750 	ret
      00770C                       1751 00104$:
                                   1752 ;	8051_i2c_eeprom.c:272: if(!i2c_write(data)) {
      00770C 90 04 0F         [24] 1753 	mov	dptr,#_eeprom_write_PARM_2
      00770F E0               [24] 1754 	movx	a,@dptr
      007710 FD               [12] 1755 	mov	r5,a
      007711 F5 82            [12] 1756 	mov	dpl,a
      007713 C0 07            [24] 1757 	push	ar7
      007715 C0 06            [24] 1758 	push	ar6
      007717 C0 05            [24] 1759 	push	ar5
      007719 12 79 11         [24] 1760 	lcall	_i2c_write
      00771C E5 82            [12] 1761 	mov	a,dpl
      00771E 85 83 F0         [24] 1762 	mov	b,dph
      007721 D0 05            [24] 1763 	pop	ar5
      007723 D0 06            [24] 1764 	pop	ar6
      007725 D0 07            [24] 1765 	pop	ar7
      007727 45 F0            [12] 1766 	orl	a,b
      007729 70 1C            [24] 1767 	jnz	00106$
                                   1768 ;	8051_i2c_eeprom.c:273: printf("Error: No ACK for data\n\r");
      00772B 74 1B            [12] 1769 	mov	a,#___str_32
      00772D C0 E0            [24] 1770 	push	acc
      00772F 74 8F            [12] 1771 	mov	a,#(___str_32 >> 8)
      007731 C0 E0            [24] 1772 	push	acc
      007733 74 80            [12] 1773 	mov	a,#0x80
      007735 C0 E0            [24] 1774 	push	acc
      007737 12 7B 69         [24] 1775 	lcall	_printf
      00773A 15 81            [12] 1776 	dec	sp
      00773C 15 81            [12] 1777 	dec	sp
      00773E 15 81            [12] 1778 	dec	sp
                                   1779 ;	8051_i2c_eeprom.c:274: i2c_stop();
      007740 12 7A 13         [24] 1780 	lcall	_i2c_stop
                                   1781 ;	8051_i2c_eeprom.c:275: return 0;
      007743 90 00 00         [24] 1782 	mov	dptr,#0x0000
      007746 22               [24] 1783 	ret
      007747                       1784 00106$:
                                   1785 ;	8051_i2c_eeprom.c:278: i2c_stop();
      007747 C0 07            [24] 1786 	push	ar7
      007749 C0 06            [24] 1787 	push	ar6
      00774B C0 05            [24] 1788 	push	ar5
      00774D 12 7A 13         [24] 1789 	lcall	_i2c_stop
      007750 D0 05            [24] 1790 	pop	ar5
      007752 D0 06            [24] 1791 	pop	ar6
      007754 D0 07            [24] 1792 	pop	ar7
                                   1793 ;	8051_i2c_eeprom.c:280: for(int i = 0; i<10; i++)
      007756 7B 00            [12] 1794 	mov	r3,#0x00
      007758 7C 00            [12] 1795 	mov	r4,#0x00
      00775A                       1796 00109$:
      00775A C3               [12] 1797 	clr	c
      00775B EB               [12] 1798 	mov	a,r3
      00775C 94 0A            [12] 1799 	subb	a,#0x0a
      00775E EC               [12] 1800 	mov	a,r4
      00775F 64 80            [12] 1801 	xrl	a,#0x80
      007761 94 80            [12] 1802 	subb	a,#0x80
      007763 50 1E            [24] 1803 	jnc	00107$
                                   1804 ;	8051_i2c_eeprom.c:282: i2c_delay();
      007765 C0 07            [24] 1805 	push	ar7
      007767 C0 06            [24] 1806 	push	ar6
      007769 C0 05            [24] 1807 	push	ar5
      00776B C0 04            [24] 1808 	push	ar4
      00776D C0 03            [24] 1809 	push	ar3
      00776F 12 7A 4C         [24] 1810 	lcall	_i2c_delay
      007772 D0 03            [24] 1811 	pop	ar3
      007774 D0 04            [24] 1812 	pop	ar4
      007776 D0 05            [24] 1813 	pop	ar5
      007778 D0 06            [24] 1814 	pop	ar6
      00777A D0 07            [24] 1815 	pop	ar7
                                   1816 ;	8051_i2c_eeprom.c:280: for(int i = 0; i<10; i++)
      00777C 0B               [12] 1817 	inc	r3
      00777D BB 00 DA         [24] 1818 	cjne	r3,#0x00,00109$
      007780 0C               [12] 1819 	inc	r4
      007781 80 D7            [24] 1820 	sjmp	00109$
      007783                       1821 00107$:
                                   1822 ;	8051_i2c_eeprom.c:285: printf("| Writing at Address 0x%03X Data 0x%02X          |\n\r", address, data);
      007783 7C 00            [12] 1823 	mov	r4,#0x00
      007785 C0 05            [24] 1824 	push	ar5
      007787 C0 04            [24] 1825 	push	ar4
      007789 C0 06            [24] 1826 	push	ar6
      00778B C0 07            [24] 1827 	push	ar7
      00778D 74 34            [12] 1828 	mov	a,#___str_33
      00778F C0 E0            [24] 1829 	push	acc
      007791 74 8F            [12] 1830 	mov	a,#(___str_33 >> 8)
      007793 C0 E0            [24] 1831 	push	acc
      007795 74 80            [12] 1832 	mov	a,#0x80
      007797 C0 E0            [24] 1833 	push	acc
      007799 12 7B 69         [24] 1834 	lcall	_printf
      00779C E5 81            [12] 1835 	mov	a,sp
      00779E 24 F9            [12] 1836 	add	a,#0xf9
      0077A0 F5 81            [12] 1837 	mov	sp,a
                                   1838 ;	8051_i2c_eeprom.c:286: printf("│ Write successful!                             │\n\r");
      0077A2 74 69            [12] 1839 	mov	a,#___str_34
      0077A4 C0 E0            [24] 1840 	push	acc
      0077A6 74 8F            [12] 1841 	mov	a,#(___str_34 >> 8)
      0077A8 C0 E0            [24] 1842 	push	acc
      0077AA 74 80            [12] 1843 	mov	a,#0x80
      0077AC C0 E0            [24] 1844 	push	acc
      0077AE 12 7B 69         [24] 1845 	lcall	_printf
      0077B1 15 81            [12] 1846 	dec	sp
      0077B3 15 81            [12] 1847 	dec	sp
      0077B5 15 81            [12] 1848 	dec	sp
                                   1849 ;	8051_i2c_eeprom.c:287: printf("└───────────────────────────────────────────────┘\n\r");
      0077B7 74 A1            [12] 1850 	mov	a,#___str_35
      0077B9 C0 E0            [24] 1851 	push	acc
      0077BB 74 8F            [12] 1852 	mov	a,#(___str_35 >> 8)
      0077BD C0 E0            [24] 1853 	push	acc
      0077BF 74 80            [12] 1854 	mov	a,#0x80
      0077C1 C0 E0            [24] 1855 	push	acc
      0077C3 12 7B 69         [24] 1856 	lcall	_printf
      0077C6 15 81            [12] 1857 	dec	sp
      0077C8 15 81            [12] 1858 	dec	sp
      0077CA 15 81            [12] 1859 	dec	sp
                                   1860 ;	8051_i2c_eeprom.c:288: return 1;  // Success
      0077CC 90 00 01         [24] 1861 	mov	dptr,#0x0001
                                   1862 ;	8051_i2c_eeprom.c:298: }
      0077CF 22               [24] 1863 	ret
                                   1864 ;------------------------------------------------------------
                                   1865 ;Allocation info for local variables in function 'eeprom_read'
                                   1866 ;------------------------------------------------------------
                                   1867 ;address                   Allocated with name '_eeprom_read_address_65536_91'
                                   1868 ;result                    Allocated with name '_eeprom_read_result_65536_92'
                                   1869 ;------------------------------------------------------------
                                   1870 ;	8051_i2c_eeprom.c:299: int eeprom_read(unsigned int address)
                                   1871 ;	-----------------------------------------
                                   1872 ;	 function eeprom_read
                                   1873 ;	-----------------------------------------
      0077D0                       1874 _eeprom_read:
      0077D0 AF 83            [24] 1875 	mov	r7,dph
      0077D2 E5 82            [12] 1876 	mov	a,dpl
      0077D4 90 04 12         [24] 1877 	mov	dptr,#_eeprom_read_address_65536_91
      0077D7 F0               [24] 1878 	movx	@dptr,a
      0077D8 EF               [12] 1879 	mov	a,r7
      0077D9 A3               [24] 1880 	inc	dptr
      0077DA F0               [24] 1881 	movx	@dptr,a
                                   1882 ;	8051_i2c_eeprom.c:305: i2c_start();
      0077DB 12 79 FE         [24] 1883 	lcall	_i2c_start
                                   1884 ;	8051_i2c_eeprom.c:308: if(!i2c_write(EEPROM_ID | WRITE)) {
      0077DE 75 82 A0         [24] 1885 	mov	dpl,#0xa0
      0077E1 12 79 11         [24] 1886 	lcall	_i2c_write
      0077E4 E5 82            [12] 1887 	mov	a,dpl
      0077E6 85 83 F0         [24] 1888 	mov	b,dph
      0077E9 45 F0            [12] 1889 	orl	a,b
      0077EB 70 1C            [24] 1890 	jnz	00102$
                                   1891 ;	8051_i2c_eeprom.c:309: printf("Error: No ACK for device address (write mode)\n\r");
      0077ED 74 37            [12] 1892 	mov	a,#___str_36
      0077EF C0 E0            [24] 1893 	push	acc
      0077F1 74 90            [12] 1894 	mov	a,#(___str_36 >> 8)
      0077F3 C0 E0            [24] 1895 	push	acc
      0077F5 74 80            [12] 1896 	mov	a,#0x80
      0077F7 C0 E0            [24] 1897 	push	acc
      0077F9 12 7B 69         [24] 1898 	lcall	_printf
      0077FC 15 81            [12] 1899 	dec	sp
      0077FE 15 81            [12] 1900 	dec	sp
      007800 15 81            [12] 1901 	dec	sp
                                   1902 ;	8051_i2c_eeprom.c:310: i2c_stop();
      007802 12 7A 13         [24] 1903 	lcall	_i2c_stop
                                   1904 ;	8051_i2c_eeprom.c:311: return -1;
      007805 90 FF FF         [24] 1905 	mov	dptr,#0xffff
      007808 22               [24] 1906 	ret
      007809                       1907 00102$:
                                   1908 ;	8051_i2c_eeprom.c:315: if(!i2c_write((unsigned char)address)) {
      007809 90 04 12         [24] 1909 	mov	dptr,#_eeprom_read_address_65536_91
      00780C E0               [24] 1910 	movx	a,@dptr
      00780D FE               [12] 1911 	mov	r6,a
      00780E A3               [24] 1912 	inc	dptr
      00780F E0               [24] 1913 	movx	a,@dptr
      007810 FF               [12] 1914 	mov	r7,a
      007811 8E 05            [24] 1915 	mov	ar5,r6
      007813 8D 82            [24] 1916 	mov	dpl,r5
      007815 C0 07            [24] 1917 	push	ar7
      007817 C0 06            [24] 1918 	push	ar6
      007819 12 79 11         [24] 1919 	lcall	_i2c_write
      00781C E5 82            [12] 1920 	mov	a,dpl
      00781E 85 83 F0         [24] 1921 	mov	b,dph
      007821 D0 06            [24] 1922 	pop	ar6
      007823 D0 07            [24] 1923 	pop	ar7
      007825 45 F0            [12] 1924 	orl	a,b
      007827 70 1C            [24] 1925 	jnz	00104$
                                   1926 ;	8051_i2c_eeprom.c:316: printf("Error: No ACK for memory address\n\r");
      007829 74 F8            [12] 1927 	mov	a,#___str_31
      00782B C0 E0            [24] 1928 	push	acc
      00782D 74 8E            [12] 1929 	mov	a,#(___str_31 >> 8)
      00782F C0 E0            [24] 1930 	push	acc
      007831 74 80            [12] 1931 	mov	a,#0x80
      007833 C0 E0            [24] 1932 	push	acc
      007835 12 7B 69         [24] 1933 	lcall	_printf
      007838 15 81            [12] 1934 	dec	sp
      00783A 15 81            [12] 1935 	dec	sp
      00783C 15 81            [12] 1936 	dec	sp
                                   1937 ;	8051_i2c_eeprom.c:317: i2c_stop();
      00783E 12 7A 13         [24] 1938 	lcall	_i2c_stop
                                   1939 ;	8051_i2c_eeprom.c:318: return -1;
      007841 90 FF FF         [24] 1940 	mov	dptr,#0xffff
      007844 22               [24] 1941 	ret
      007845                       1942 00104$:
                                   1943 ;	8051_i2c_eeprom.c:322: i2c_start();
      007845 C0 07            [24] 1944 	push	ar7
      007847 C0 06            [24] 1945 	push	ar6
      007849 12 79 FE         [24] 1946 	lcall	_i2c_start
                                   1947 ;	8051_i2c_eeprom.c:325: if(!i2c_write(EEPROM_ID | READ)) {
      00784C 75 82 A1         [24] 1948 	mov	dpl,#0xa1
      00784F 12 79 11         [24] 1949 	lcall	_i2c_write
      007852 E5 82            [12] 1950 	mov	a,dpl
      007854 85 83 F0         [24] 1951 	mov	b,dph
      007857 D0 06            [24] 1952 	pop	ar6
      007859 D0 07            [24] 1953 	pop	ar7
      00785B 45 F0            [12] 1954 	orl	a,b
      00785D 70 1C            [24] 1955 	jnz	00106$
                                   1956 ;	8051_i2c_eeprom.c:326: printf("Error: No ACK for device address (read mode)\n\r");
      00785F 74 67            [12] 1957 	mov	a,#___str_37
      007861 C0 E0            [24] 1958 	push	acc
      007863 74 90            [12] 1959 	mov	a,#(___str_37 >> 8)
      007865 C0 E0            [24] 1960 	push	acc
      007867 74 80            [12] 1961 	mov	a,#0x80
      007869 C0 E0            [24] 1962 	push	acc
      00786B 12 7B 69         [24] 1963 	lcall	_printf
      00786E 15 81            [12] 1964 	dec	sp
      007870 15 81            [12] 1965 	dec	sp
      007872 15 81            [12] 1966 	dec	sp
                                   1967 ;	8051_i2c_eeprom.c:327: i2c_stop();
      007874 12 7A 13         [24] 1968 	lcall	_i2c_stop
                                   1969 ;	8051_i2c_eeprom.c:328: return -1;
      007877 90 FF FF         [24] 1970 	mov	dptr,#0xffff
      00787A 22               [24] 1971 	ret
      00787B                       1972 00106$:
                                   1973 ;	8051_i2c_eeprom.c:332: result = i2c_read(0);  // 0 means send NACK
      00787B 90 00 00         [24] 1974 	mov	dptr,#0x0000
      00787E C0 07            [24] 1975 	push	ar7
      007880 C0 06            [24] 1976 	push	ar6
      007882 12 79 79         [24] 1977 	lcall	_i2c_read
      007885 AC 82            [24] 1978 	mov	r4,dpl
      007887 D0 06            [24] 1979 	pop	ar6
      007889 D0 07            [24] 1980 	pop	ar7
                                   1981 ;	8051_i2c_eeprom.c:333: printf("│ Reading from Adress: 0x%03X Data: 0x%02X                    \n\r", address, result);
      00788B 7D 00            [12] 1982 	mov	r5,#0x00
      00788D C0 07            [24] 1983 	push	ar7
      00788F C0 06            [24] 1984 	push	ar6
      007891 C0 05            [24] 1985 	push	ar5
      007893 C0 04            [24] 1986 	push	ar4
      007895 C0 04            [24] 1987 	push	ar4
      007897 C0 05            [24] 1988 	push	ar5
      007899 C0 06            [24] 1989 	push	ar6
      00789B C0 07            [24] 1990 	push	ar7
      00789D 74 96            [12] 1991 	mov	a,#___str_38
      00789F C0 E0            [24] 1992 	push	acc
      0078A1 74 90            [12] 1993 	mov	a,#(___str_38 >> 8)
      0078A3 C0 E0            [24] 1994 	push	acc
      0078A5 74 80            [12] 1995 	mov	a,#0x80
      0078A7 C0 E0            [24] 1996 	push	acc
      0078A9 12 7B 69         [24] 1997 	lcall	_printf
      0078AC E5 81            [12] 1998 	mov	a,sp
      0078AE 24 F9            [12] 1999 	add	a,#0xf9
      0078B0 F5 81            [12] 2000 	mov	sp,a
      0078B2 D0 04            [24] 2001 	pop	ar4
      0078B4 D0 05            [24] 2002 	pop	ar5
      0078B6 D0 06            [24] 2003 	pop	ar6
      0078B8 D0 07            [24] 2004 	pop	ar7
                                   2005 ;	8051_i2c_eeprom.c:334: printf("| 0x%03X : 0x%02X \n\r", address, result);
      0078BA C0 05            [24] 2006 	push	ar5
      0078BC C0 04            [24] 2007 	push	ar4
      0078BE C0 04            [24] 2008 	push	ar4
      0078C0 C0 05            [24] 2009 	push	ar5
      0078C2 C0 06            [24] 2010 	push	ar6
      0078C4 C0 07            [24] 2011 	push	ar7
      0078C6 74 D9            [12] 2012 	mov	a,#___str_39
      0078C8 C0 E0            [24] 2013 	push	acc
      0078CA 74 90            [12] 2014 	mov	a,#(___str_39 >> 8)
      0078CC C0 E0            [24] 2015 	push	acc
      0078CE 74 80            [12] 2016 	mov	a,#0x80
      0078D0 C0 E0            [24] 2017 	push	acc
      0078D2 12 7B 69         [24] 2018 	lcall	_printf
      0078D5 E5 81            [12] 2019 	mov	a,sp
      0078D7 24 F9            [12] 2020 	add	a,#0xf9
      0078D9 F5 81            [12] 2021 	mov	sp,a
                                   2022 ;	8051_i2c_eeprom.c:335: printf("│ Read successful!                 │\n\r");
      0078DB 74 EE            [12] 2023 	mov	a,#___str_40
      0078DD C0 E0            [24] 2024 	push	acc
      0078DF 74 90            [12] 2025 	mov	a,#(___str_40 >> 8)
      0078E1 C0 E0            [24] 2026 	push	acc
      0078E3 74 80            [12] 2027 	mov	a,#0x80
      0078E5 C0 E0            [24] 2028 	push	acc
      0078E7 12 7B 69         [24] 2029 	lcall	_printf
      0078EA 15 81            [12] 2030 	dec	sp
      0078EC 15 81            [12] 2031 	dec	sp
      0078EE 15 81            [12] 2032 	dec	sp
                                   2033 ;	8051_i2c_eeprom.c:336: printf("└───────────────────────────────────────────────┘\n\r");
      0078F0 74 A1            [12] 2034 	mov	a,#___str_35
      0078F2 C0 E0            [24] 2035 	push	acc
      0078F4 74 8F            [12] 2036 	mov	a,#(___str_35 >> 8)
      0078F6 C0 E0            [24] 2037 	push	acc
      0078F8 74 80            [12] 2038 	mov	a,#0x80
      0078FA C0 E0            [24] 2039 	push	acc
      0078FC 12 7B 69         [24] 2040 	lcall	_printf
      0078FF 15 81            [12] 2041 	dec	sp
      007901 15 81            [12] 2042 	dec	sp
      007903 15 81            [12] 2043 	dec	sp
                                   2044 ;	8051_i2c_eeprom.c:337: i2c_stop();
      007905 12 7A 13         [24] 2045 	lcall	_i2c_stop
      007908 D0 04            [24] 2046 	pop	ar4
      00790A D0 05            [24] 2047 	pop	ar5
                                   2048 ;	8051_i2c_eeprom.c:338: return result;
      00790C 8C 82            [24] 2049 	mov	dpl,r4
      00790E 8D 83            [24] 2050 	mov	dph,r5
                                   2051 ;	8051_i2c_eeprom.c:339: }
      007910 22               [24] 2052 	ret
                                   2053 ;------------------------------------------------------------
                                   2054 ;Allocation info for local variables in function 'i2c_write'
                                   2055 ;------------------------------------------------------------
                                   2056 ;data                      Allocated with name '_i2c_write_data_65536_96'
                                   2057 ;i                         Allocated with name '_i2c_write_i_65536_97'
                                   2058 ;------------------------------------------------------------
                                   2059 ;	8051_i2c_eeprom.c:342: int i2c_write(unsigned char data)
                                   2060 ;	-----------------------------------------
                                   2061 ;	 function i2c_write
                                   2062 ;	-----------------------------------------
      007911                       2063 _i2c_write:
      007911 E5 82            [12] 2064 	mov	a,dpl
      007913 90 04 14         [24] 2065 	mov	dptr,#_i2c_write_data_65536_96
      007916 F0               [24] 2066 	movx	@dptr,a
                                   2067 ;	8051_i2c_eeprom.c:346: for(i=0;i<=7;i++)
      007917 7E 00            [12] 2068 	mov	r6,#0x00
      007919 7F 00            [12] 2069 	mov	r7,#0x00
      00791B                       2070 00104$:
                                   2071 ;	8051_i2c_eeprom.c:348: SDA = (data & 0x80) ? 1 : 0;    //msb first
      00791B 90 04 14         [24] 2072 	mov	dptr,#_i2c_write_data_65536_96
      00791E E0               [24] 2073 	movx	a,@dptr
      00791F FD               [12] 2074 	mov	r5,a
      007920 23               [12] 2075 	rl	a
      007921 54 01            [12] 2076 	anl	a,#0x01
      007923 24 FF            [12] 2077 	add	a,#0xff
      007925 92 94            [24] 2078 	mov	_P1_4,c
                                   2079 ;	8051_i2c_eeprom.c:349: i2c_delay();        // Setup time for data
      007927 C0 07            [24] 2080 	push	ar7
      007929 C0 06            [24] 2081 	push	ar6
      00792B C0 05            [24] 2082 	push	ar5
      00792D 12 7A 4C         [24] 2083 	lcall	_i2c_delay
                                   2084 ;	8051_i2c_eeprom.c:350: SCL=1;
                                   2085 ;	assignBit
      007930 D2 93            [12] 2086 	setb	_P1_3
                                   2087 ;	8051_i2c_eeprom.c:351: i2c_delay();        // Hold time for clock
      007932 12 7A 4C         [24] 2088 	lcall	_i2c_delay
      007935 D0 05            [24] 2089 	pop	ar5
      007937 D0 06            [24] 2090 	pop	ar6
      007939 D0 07            [24] 2091 	pop	ar7
                                   2092 ;	8051_i2c_eeprom.c:352: SCL=0;
                                   2093 ;	assignBit
      00793B C2 93            [12] 2094 	clr	_P1_3
                                   2095 ;	8051_i2c_eeprom.c:353: data = data << 1;
      00793D ED               [12] 2096 	mov	a,r5
      00793E 2D               [12] 2097 	add	a,r5
      00793F 90 04 14         [24] 2098 	mov	dptr,#_i2c_write_data_65536_96
      007942 F0               [24] 2099 	movx	@dptr,a
                                   2100 ;	8051_i2c_eeprom.c:346: for(i=0;i<=7;i++)
      007943 0E               [12] 2101 	inc	r6
      007944 BE 00 01         [24] 2102 	cjne	r6,#0x00,00121$
      007947 0F               [12] 2103 	inc	r7
      007948                       2104 00121$:
      007948 C3               [12] 2105 	clr	c
      007949 74 07            [12] 2106 	mov	a,#0x07
      00794B 9E               [12] 2107 	subb	a,r6
      00794C E4               [12] 2108 	clr	a
      00794D 9F               [12] 2109 	subb	a,r7
      00794E 50 CB            [24] 2110 	jnc	00104$
                                   2111 ;	8051_i2c_eeprom.c:357: SDA = 1;            // Release SDA for slave
                                   2112 ;	assignBit
      007950 D2 94            [12] 2113 	setb	_P1_4
                                   2114 ;	8051_i2c_eeprom.c:358: SCL = 1;            // 9th clock pulse for ACK
                                   2115 ;	assignBit
      007952 D2 93            [12] 2116 	setb	_P1_3
                                   2117 ;	8051_i2c_eeprom.c:359: i2c_delay();
      007954 12 7A 4C         [24] 2118 	lcall	_i2c_delay
                                   2119 ;	8051_i2c_eeprom.c:360: if(SDA == 1)        // If SDA is still high, no ACK received
      007957 30 94 19         [24] 2120 	jnb	_P1_4,00103$
                                   2121 ;	8051_i2c_eeprom.c:363: printf("ACK DID NOT ARRIVE\n\r");
      00795A 74 19            [12] 2122 	mov	a,#___str_41
      00795C C0 E0            [24] 2123 	push	acc
      00795E 74 91            [12] 2124 	mov	a,#(___str_41 >> 8)
      007960 C0 E0            [24] 2125 	push	acc
      007962 74 80            [12] 2126 	mov	a,#0x80
      007964 C0 E0            [24] 2127 	push	acc
      007966 12 7B 69         [24] 2128 	lcall	_printf
      007969 15 81            [12] 2129 	dec	sp
      00796B 15 81            [12] 2130 	dec	sp
      00796D 15 81            [12] 2131 	dec	sp
                                   2132 ;	8051_i2c_eeprom.c:364: return 0;       // Error
      00796F 90 00 00         [24] 2133 	mov	dptr,#0x0000
      007972 22               [24] 2134 	ret
      007973                       2135 00103$:
                                   2136 ;	8051_i2c_eeprom.c:366: SCL = 0;
                                   2137 ;	assignBit
      007973 C2 93            [12] 2138 	clr	_P1_3
                                   2139 ;	8051_i2c_eeprom.c:368: return 1;           // Success
      007975 90 00 01         [24] 2140 	mov	dptr,#0x0001
                                   2141 ;	8051_i2c_eeprom.c:370: }
      007978 22               [24] 2142 	ret
                                   2143 ;------------------------------------------------------------
                                   2144 ;Allocation info for local variables in function 'i2c_read'
                                   2145 ;------------------------------------------------------------
                                   2146 ;ACK                       Allocated with name '_i2c_read_ACK_65536_101'
                                   2147 ;buff                      Allocated with name '_i2c_read_buff_65536_102'
                                   2148 ;i                         Allocated with name '_i2c_read_i_131072_103'
                                   2149 ;------------------------------------------------------------
                                   2150 ;	8051_i2c_eeprom.c:371: int i2c_read(int ACK)
                                   2151 ;	-----------------------------------------
                                   2152 ;	 function i2c_read
                                   2153 ;	-----------------------------------------
      007979                       2154 _i2c_read:
      007979 AF 83            [24] 2155 	mov	r7,dph
      00797B E5 82            [12] 2156 	mov	a,dpl
      00797D 90 04 15         [24] 2157 	mov	dptr,#_i2c_read_ACK_65536_101
      007980 F0               [24] 2158 	movx	@dptr,a
      007981 EF               [12] 2159 	mov	a,r7
      007982 A3               [24] 2160 	inc	dptr
      007983 F0               [24] 2161 	movx	@dptr,a
                                   2162 ;	8051_i2c_eeprom.c:373: unsigned char buff=0;
      007984 90 04 17         [24] 2163 	mov	dptr,#_i2c_read_buff_65536_102
      007987 E4               [12] 2164 	clr	a
      007988 F0               [24] 2165 	movx	@dptr,a
                                   2166 ;	8051_i2c_eeprom.c:374: SCL = 0;
                                   2167 ;	assignBit
      007989 C2 93            [12] 2168 	clr	_P1_3
                                   2169 ;	8051_i2c_eeprom.c:375: for(int i=0;i<8;i++)
      00798B 7E 00            [12] 2170 	mov	r6,#0x00
      00798D 7F 00            [12] 2171 	mov	r7,#0x00
      00798F                       2172 00103$:
      00798F C3               [12] 2173 	clr	c
      007990 EE               [12] 2174 	mov	a,r6
      007991 94 08            [12] 2175 	subb	a,#0x08
      007993 EF               [12] 2176 	mov	a,r7
      007994 64 80            [12] 2177 	xrl	a,#0x80
      007996 94 80            [12] 2178 	subb	a,#0x80
      007998 50 40            [24] 2179 	jnc	00101$
                                   2180 ;	8051_i2c_eeprom.c:377: SCL = 1;
                                   2181 ;	assignBit
      00799A D2 93            [12] 2182 	setb	_P1_3
                                   2183 ;	8051_i2c_eeprom.c:378: i2c_delay();
      00799C C0 07            [24] 2184 	push	ar7
      00799E C0 06            [24] 2185 	push	ar6
      0079A0 12 7A 4C         [24] 2186 	lcall	_i2c_delay
      0079A3 D0 06            [24] 2187 	pop	ar6
      0079A5 D0 07            [24] 2188 	pop	ar7
                                   2189 ;	8051_i2c_eeprom.c:379: buff |= (SDA << (7 - i));
      0079A7 A2 94            [12] 2190 	mov	c,_P1_4
      0079A9 E4               [12] 2191 	clr	a
      0079AA 33               [12] 2192 	rlc	a
      0079AB FD               [12] 2193 	mov	r5,a
      0079AC 8E 04            [24] 2194 	mov	ar4,r6
      0079AE 74 07            [12] 2195 	mov	a,#0x07
      0079B0 C3               [12] 2196 	clr	c
      0079B1 9C               [12] 2197 	subb	a,r4
      0079B2 FC               [12] 2198 	mov	r4,a
      0079B3 8C F0            [24] 2199 	mov	b,r4
      0079B5 05 F0            [12] 2200 	inc	b
      0079B7 ED               [12] 2201 	mov	a,r5
      0079B8 80 02            [24] 2202 	sjmp	00119$
      0079BA                       2203 00117$:
      0079BA 25 E0            [12] 2204 	add	a,acc
      0079BC                       2205 00119$:
      0079BC D5 F0 FB         [24] 2206 	djnz	b,00117$
      0079BF FC               [12] 2207 	mov	r4,a
      0079C0 90 04 17         [24] 2208 	mov	dptr,#_i2c_read_buff_65536_102
      0079C3 E0               [24] 2209 	movx	a,@dptr
      0079C4 4C               [12] 2210 	orl	a,r4
      0079C5 F0               [24] 2211 	movx	@dptr,a
                                   2212 ;	8051_i2c_eeprom.c:380: i2c_delay();
      0079C6 C0 07            [24] 2213 	push	ar7
      0079C8 C0 06            [24] 2214 	push	ar6
      0079CA 12 7A 4C         [24] 2215 	lcall	_i2c_delay
      0079CD D0 06            [24] 2216 	pop	ar6
      0079CF D0 07            [24] 2217 	pop	ar7
                                   2218 ;	8051_i2c_eeprom.c:381: SCL=0;
                                   2219 ;	assignBit
      0079D1 C2 93            [12] 2220 	clr	_P1_3
                                   2221 ;	8051_i2c_eeprom.c:375: for(int i=0;i<8;i++)
      0079D3 0E               [12] 2222 	inc	r6
      0079D4 BE 00 B8         [24] 2223 	cjne	r6,#0x00,00103$
      0079D7 0F               [12] 2224 	inc	r7
      0079D8 80 B5            [24] 2225 	sjmp	00103$
      0079DA                       2226 00101$:
                                   2227 ;	8051_i2c_eeprom.c:385: SDA = !ACK;         // ACK = 0, NACK = 1
      0079DA 90 04 15         [24] 2228 	mov	dptr,#_i2c_read_ACK_65536_101
      0079DD E0               [24] 2229 	movx	a,@dptr
      0079DE FE               [12] 2230 	mov	r6,a
      0079DF A3               [24] 2231 	inc	dptr
      0079E0 E0               [24] 2232 	movx	a,@dptr
      0079E1 4E               [12] 2233 	orl	a,r6
      0079E2 B4 01 00         [24] 2234 	cjne	a,#0x01,00121$
      0079E5                       2235 00121$:
      0079E5 E4               [12] 2236 	clr	a
      0079E6 33               [12] 2237 	rlc	a
      0079E7 24 FF            [12] 2238 	add	a,#0xff
      0079E9 92 94            [24] 2239 	mov	_P1_4,c
                                   2240 ;	8051_i2c_eeprom.c:386: SCL = 1;
                                   2241 ;	assignBit
      0079EB D2 93            [12] 2242 	setb	_P1_3
                                   2243 ;	8051_i2c_eeprom.c:387: i2c_delay();
      0079ED 12 7A 4C         [24] 2244 	lcall	_i2c_delay
                                   2245 ;	8051_i2c_eeprom.c:388: SCL = 0;
                                   2246 ;	assignBit
      0079F0 C2 93            [12] 2247 	clr	_P1_3
                                   2248 ;	8051_i2c_eeprom.c:390: return buff;
      0079F2 90 04 17         [24] 2249 	mov	dptr,#_i2c_read_buff_65536_102
      0079F5 E0               [24] 2250 	movx	a,@dptr
      0079F6 FF               [12] 2251 	mov	r7,a
      0079F7 7E 00            [12] 2252 	mov	r6,#0x00
      0079F9 8F 82            [24] 2253 	mov	dpl,r7
      0079FB 8E 83            [24] 2254 	mov	dph,r6
                                   2255 ;	8051_i2c_eeprom.c:391: }
      0079FD 22               [24] 2256 	ret
                                   2257 ;------------------------------------------------------------
                                   2258 ;Allocation info for local variables in function 'i2c_start'
                                   2259 ;------------------------------------------------------------
                                   2260 ;	8051_i2c_eeprom.c:392: void i2c_start(void)
                                   2261 ;	-----------------------------------------
                                   2262 ;	 function i2c_start
                                   2263 ;	-----------------------------------------
      0079FE                       2264 _i2c_start:
                                   2265 ;	8051_i2c_eeprom.c:394: i2c_delay();
      0079FE 12 7A 4C         [24] 2266 	lcall	_i2c_delay
                                   2267 ;	8051_i2c_eeprom.c:395: SDA = 1;
                                   2268 ;	assignBit
      007A01 D2 94            [12] 2269 	setb	_P1_4
                                   2270 ;	8051_i2c_eeprom.c:396: i2c_delay();
      007A03 12 7A 4C         [24] 2271 	lcall	_i2c_delay
                                   2272 ;	8051_i2c_eeprom.c:397: SCL = 1;
                                   2273 ;	assignBit
      007A06 D2 93            [12] 2274 	setb	_P1_3
                                   2275 ;	8051_i2c_eeprom.c:398: i2c_delay();
      007A08 12 7A 4C         [24] 2276 	lcall	_i2c_delay
                                   2277 ;	8051_i2c_eeprom.c:399: SDA = 0;
                                   2278 ;	assignBit
      007A0B C2 94            [12] 2279 	clr	_P1_4
                                   2280 ;	8051_i2c_eeprom.c:400: i2c_delay();
      007A0D 12 7A 4C         [24] 2281 	lcall	_i2c_delay
                                   2282 ;	8051_i2c_eeprom.c:401: SCL = 0;
                                   2283 ;	assignBit
      007A10 C2 93            [12] 2284 	clr	_P1_3
                                   2285 ;	8051_i2c_eeprom.c:402: }
      007A12 22               [24] 2286 	ret
                                   2287 ;------------------------------------------------------------
                                   2288 ;Allocation info for local variables in function 'i2c_stop'
                                   2289 ;------------------------------------------------------------
                                   2290 ;	8051_i2c_eeprom.c:404: void i2c_stop(void)
                                   2291 ;	-----------------------------------------
                                   2292 ;	 function i2c_stop
                                   2293 ;	-----------------------------------------
      007A13                       2294 _i2c_stop:
                                   2295 ;	8051_i2c_eeprom.c:406: SDA = 0;
                                   2296 ;	assignBit
      007A13 C2 94            [12] 2297 	clr	_P1_4
                                   2298 ;	8051_i2c_eeprom.c:407: i2c_delay();
      007A15 12 7A 4C         [24] 2299 	lcall	_i2c_delay
                                   2300 ;	8051_i2c_eeprom.c:408: SCL = 1;
                                   2301 ;	assignBit
      007A18 D2 93            [12] 2302 	setb	_P1_3
                                   2303 ;	8051_i2c_eeprom.c:409: i2c_delay();
      007A1A 12 7A 4C         [24] 2304 	lcall	_i2c_delay
                                   2305 ;	8051_i2c_eeprom.c:410: SDA = 1; 
                                   2306 ;	assignBit
      007A1D D2 94            [12] 2307 	setb	_P1_4
                                   2308 ;	8051_i2c_eeprom.c:411: }
      007A1F 22               [24] 2309 	ret
                                   2310 ;------------------------------------------------------------
                                   2311 ;Allocation info for local variables in function 'eeprom_reset'
                                   2312 ;------------------------------------------------------------
                                   2313 ;i                         Allocated with name '_eeprom_reset_i_131072_110'
                                   2314 ;------------------------------------------------------------
                                   2315 ;	8051_i2c_eeprom.c:413: void eeprom_reset()
                                   2316 ;	-----------------------------------------
                                   2317 ;	 function eeprom_reset
                                   2318 ;	-----------------------------------------
      007A20                       2319 _eeprom_reset:
                                   2320 ;	8051_i2c_eeprom.c:415: i2c_start();
      007A20 12 79 FE         [24] 2321 	lcall	_i2c_start
                                   2322 ;	8051_i2c_eeprom.c:416: SDA = 0;
                                   2323 ;	assignBit
      007A23 C2 94            [12] 2324 	clr	_P1_4
                                   2325 ;	8051_i2c_eeprom.c:417: SDA = 1;
                                   2326 ;	assignBit
      007A25 D2 94            [12] 2327 	setb	_P1_4
                                   2328 ;	8051_i2c_eeprom.c:418: for(int i = 0; i<10; i++)
      007A27 7E 00            [12] 2329 	mov	r6,#0x00
      007A29 7F 00            [12] 2330 	mov	r7,#0x00
      007A2B                       2331 00103$:
      007A2B C3               [12] 2332 	clr	c
      007A2C EE               [12] 2333 	mov	a,r6
      007A2D 94 0A            [12] 2334 	subb	a,#0x0a
      007A2F EF               [12] 2335 	mov	a,r7
      007A30 64 80            [12] 2336 	xrl	a,#0x80
      007A32 94 80            [12] 2337 	subb	a,#0x80
      007A34 50 0B            [24] 2338 	jnc	00101$
                                   2339 ;	8051_i2c_eeprom.c:420: SCL = 0;
                                   2340 ;	assignBit
      007A36 C2 93            [12] 2341 	clr	_P1_3
                                   2342 ;	8051_i2c_eeprom.c:421: SCL = 1;
                                   2343 ;	assignBit
      007A38 D2 93            [12] 2344 	setb	_P1_3
                                   2345 ;	8051_i2c_eeprom.c:418: for(int i = 0; i<10; i++)
      007A3A 0E               [12] 2346 	inc	r6
      007A3B BE 00 ED         [24] 2347 	cjne	r6,#0x00,00103$
      007A3E 0F               [12] 2348 	inc	r7
      007A3F 80 EA            [24] 2349 	sjmp	00103$
      007A41                       2350 00101$:
                                   2351 ;	8051_i2c_eeprom.c:423: i2c_start();
      007A41 12 79 FE         [24] 2352 	lcall	_i2c_start
                                   2353 ;	8051_i2c_eeprom.c:424: SDA = 0;
                                   2354 ;	assignBit
      007A44 C2 94            [12] 2355 	clr	_P1_4
                                   2356 ;	8051_i2c_eeprom.c:425: i2c_stop();
      007A46 12 7A 13         [24] 2357 	lcall	_i2c_stop
                                   2358 ;	8051_i2c_eeprom.c:426: SDA = 1;
                                   2359 ;	assignBit
      007A49 D2 94            [12] 2360 	setb	_P1_4
                                   2361 ;	8051_i2c_eeprom.c:427: }
      007A4B 22               [24] 2362 	ret
                                   2363 ;------------------------------------------------------------
                                   2364 ;Allocation info for local variables in function 'i2c_delay'
                                   2365 ;------------------------------------------------------------
                                   2366 ;i                         Allocated with name '_i2c_delay_i_131072_113'
                                   2367 ;------------------------------------------------------------
                                   2368 ;	8051_i2c_eeprom.c:428: void i2c_delay() 
                                   2369 ;	-----------------------------------------
                                   2370 ;	 function i2c_delay
                                   2371 ;	-----------------------------------------
      007A4C                       2372 _i2c_delay:
                                   2373 ;	8051_i2c_eeprom.c:436: for(int i = 0; i<500; i++);
      007A4C 7E 00            [12] 2374 	mov	r6,#0x00
      007A4E 7F 00            [12] 2375 	mov	r7,#0x00
      007A50                       2376 00103$:
      007A50 C3               [12] 2377 	clr	c
      007A51 EE               [12] 2378 	mov	a,r6
      007A52 94 F4            [12] 2379 	subb	a,#0xf4
      007A54 EF               [12] 2380 	mov	a,r7
      007A55 64 80            [12] 2381 	xrl	a,#0x80
      007A57 94 81            [12] 2382 	subb	a,#0x81
      007A59 50 07            [24] 2383 	jnc	00105$
      007A5B 0E               [12] 2384 	inc	r6
      007A5C BE 00 F1         [24] 2385 	cjne	r6,#0x00,00103$
      007A5F 0F               [12] 2386 	inc	r7
      007A60 80 EE            [24] 2387 	sjmp	00103$
      007A62                       2388 00105$:
                                   2389 ;	8051_i2c_eeprom.c:437: }
      007A62 22               [24] 2390 	ret
                                   2391 ;------------------------------------------------------------
                                   2392 ;Allocation info for local variables in function 'test_function'
                                   2393 ;------------------------------------------------------------
                                   2394 ;test_data                 Allocated with name '_test_function_test_data_65537_115'
                                   2395 ;address                   Allocated with name '_test_function_address_65537_115'
                                   2396 ;i                         Allocated with name '_test_function_i_131073_116'
                                   2397 ;read_data                 Allocated with name '_test_function_read_data_65538_118'
                                   2398 ;------------------------------------------------------------
                                   2399 ;	8051_i2c_eeprom.c:439: void test_function()
                                   2400 ;	-----------------------------------------
                                   2401 ;	 function test_function
                                   2402 ;	-----------------------------------------
      007A63                       2403 _test_function:
                                   2404 ;	8051_i2c_eeprom.c:441: i2c_start();
      007A63 12 79 FE         [24] 2405 	lcall	_i2c_start
                                   2406 ;	8051_i2c_eeprom.c:442: i2c_delay();
      007A66 12 7A 4C         [24] 2407 	lcall	_i2c_delay
                                   2408 ;	8051_i2c_eeprom.c:448: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      007A69 74 02            [12] 2409 	mov	a,#0x02
      007A6B C0 E0            [24] 2410 	push	acc
      007A6D E4               [12] 2411 	clr	a
      007A6E C0 E0            [24] 2412 	push	acc
      007A70 74 26            [12] 2413 	mov	a,#0x26
      007A72 C0 E0            [24] 2414 	push	acc
      007A74 E4               [12] 2415 	clr	a
      007A75 C0 E0            [24] 2416 	push	acc
      007A77 74 2E            [12] 2417 	mov	a,#___str_42
      007A79 C0 E0            [24] 2418 	push	acc
      007A7B 74 91            [12] 2419 	mov	a,#(___str_42 >> 8)
      007A7D C0 E0            [24] 2420 	push	acc
      007A7F 74 80            [12] 2421 	mov	a,#0x80
      007A81 C0 E0            [24] 2422 	push	acc
      007A83 12 7B 69         [24] 2423 	lcall	_printf
      007A86 E5 81            [12] 2424 	mov	a,sp
      007A88 24 F9            [12] 2425 	add	a,#0xf9
      007A8A F5 81            [12] 2426 	mov	sp,a
                                   2427 ;	8051_i2c_eeprom.c:449: eeprom_write(address, test_data);
      007A8C 90 04 0F         [24] 2428 	mov	dptr,#_eeprom_write_PARM_2
      007A8F 74 26            [12] 2429 	mov	a,#0x26
      007A91 F0               [24] 2430 	movx	@dptr,a
      007A92 90 00 02         [24] 2431 	mov	dptr,#0x0002
      007A95 12 76 8E         [24] 2432 	lcall	_eeprom_write
                                   2433 ;	8051_i2c_eeprom.c:450: i2c_stop();
      007A98 12 7A 13         [24] 2434 	lcall	_i2c_stop
                                   2435 ;	8051_i2c_eeprom.c:452: for(int i = 0; i<100; i++)
      007A9B 7E 00            [12] 2436 	mov	r6,#0x00
      007A9D 7F 00            [12] 2437 	mov	r7,#0x00
      007A9F                       2438 00106$:
      007A9F C3               [12] 2439 	clr	c
      007AA0 EE               [12] 2440 	mov	a,r6
      007AA1 94 64            [12] 2441 	subb	a,#0x64
      007AA3 EF               [12] 2442 	mov	a,r7
      007AA4 64 80            [12] 2443 	xrl	a,#0x80
      007AA6 94 80            [12] 2444 	subb	a,#0x80
      007AA8 50 12            [24] 2445 	jnc	00101$
                                   2446 ;	8051_i2c_eeprom.c:454: i2c_delay();
      007AAA C0 07            [24] 2447 	push	ar7
      007AAC C0 06            [24] 2448 	push	ar6
      007AAE 12 7A 4C         [24] 2449 	lcall	_i2c_delay
      007AB1 D0 06            [24] 2450 	pop	ar6
      007AB3 D0 07            [24] 2451 	pop	ar7
                                   2452 ;	8051_i2c_eeprom.c:452: for(int i = 0; i<100; i++)
      007AB5 0E               [12] 2453 	inc	r6
      007AB6 BE 00 E6         [24] 2454 	cjne	r6,#0x00,00106$
      007AB9 0F               [12] 2455 	inc	r7
      007ABA 80 E3            [24] 2456 	sjmp	00106$
      007ABC                       2457 00101$:
                                   2458 ;	8051_i2c_eeprom.c:458: unsigned char read_data = eeprom_read(address);
      007ABC 90 00 02         [24] 2459 	mov	dptr,#0x0002
      007ABF 12 77 D0         [24] 2460 	lcall	_eeprom_read
      007AC2 AE 82            [24] 2461 	mov	r6,dpl
                                   2462 ;	8051_i2c_eeprom.c:459: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      007AC4 8E 05            [24] 2463 	mov	ar5,r6
      007AC6 7F 00            [12] 2464 	mov	r7,#0x00
      007AC8 C0 06            [24] 2465 	push	ar6
      007ACA C0 05            [24] 2466 	push	ar5
      007ACC C0 07            [24] 2467 	push	ar7
      007ACE 74 02            [12] 2468 	mov	a,#0x02
      007AD0 C0 E0            [24] 2469 	push	acc
      007AD2 E4               [12] 2470 	clr	a
      007AD3 C0 E0            [24] 2471 	push	acc
      007AD5 74 56            [12] 2472 	mov	a,#___str_43
      007AD7 C0 E0            [24] 2473 	push	acc
      007AD9 74 91            [12] 2474 	mov	a,#(___str_43 >> 8)
      007ADB C0 E0            [24] 2475 	push	acc
      007ADD 74 80            [12] 2476 	mov	a,#0x80
      007ADF C0 E0            [24] 2477 	push	acc
      007AE1 12 7B 69         [24] 2478 	lcall	_printf
      007AE4 E5 81            [12] 2479 	mov	a,sp
      007AE6 24 F9            [12] 2480 	add	a,#0xf9
      007AE8 F5 81            [12] 2481 	mov	sp,a
      007AEA D0 06            [24] 2482 	pop	ar6
                                   2483 ;	8051_i2c_eeprom.c:462: if(read_data == test_data) {
      007AEC BE 26 16         [24] 2484 	cjne	r6,#0x26,00103$
                                   2485 ;	8051_i2c_eeprom.c:463: printf("MATCH - Write/Read successful!\n\r");
      007AEF 74 7E            [12] 2486 	mov	a,#___str_44
      007AF1 C0 E0            [24] 2487 	push	acc
      007AF3 74 91            [12] 2488 	mov	a,#(___str_44 >> 8)
      007AF5 C0 E0            [24] 2489 	push	acc
      007AF7 74 80            [12] 2490 	mov	a,#0x80
      007AF9 C0 E0            [24] 2491 	push	acc
      007AFB 12 7B 69         [24] 2492 	lcall	_printf
      007AFE 15 81            [12] 2493 	dec	sp
      007B00 15 81            [12] 2494 	dec	sp
      007B02 15 81            [12] 2495 	dec	sp
      007B04 22               [24] 2496 	ret
      007B05                       2497 00103$:
                                   2498 ;	8051_i2c_eeprom.c:465: printf("ERROR - Data mismatch!\n\r");
      007B05 74 9F            [12] 2499 	mov	a,#___str_45
      007B07 C0 E0            [24] 2500 	push	acc
      007B09 74 91            [12] 2501 	mov	a,#(___str_45 >> 8)
      007B0B C0 E0            [24] 2502 	push	acc
      007B0D 74 80            [12] 2503 	mov	a,#0x80
      007B0F C0 E0            [24] 2504 	push	acc
      007B11 12 7B 69         [24] 2505 	lcall	_printf
      007B14 15 81            [12] 2506 	dec	sp
      007B16 15 81            [12] 2507 	dec	sp
      007B18 15 81            [12] 2508 	dec	sp
                                   2509 ;	8051_i2c_eeprom.c:469: }
      007B1A 22               [24] 2510 	ret
                                   2511 	.area CSEG    (CODE)
                                   2512 	.area CONST   (CODE)
                                   2513 	.area CONST   (CODE)
      0085CB                       2514 ___str_0:
      0085CB 0A                    2515 	.db 0x0a
      0085CC E2                    2516 	.db 0xe2
      0085CD 95                    2517 	.db 0x95
      0085CE 94                    2518 	.db 0x94
      0085CF E2                    2519 	.db 0xe2
      0085D0 95                    2520 	.db 0x95
      0085D1 90                    2521 	.db 0x90
      0085D2 E2                    2522 	.db 0xe2
      0085D3 95                    2523 	.db 0x95
      0085D4 90                    2524 	.db 0x90
      0085D5 E2                    2525 	.db 0xe2
      0085D6 95                    2526 	.db 0x95
      0085D7 90                    2527 	.db 0x90
      0085D8 E2                    2528 	.db 0xe2
      0085D9 95                    2529 	.db 0x95
      0085DA 90                    2530 	.db 0x90
      0085DB E2                    2531 	.db 0xe2
      0085DC 95                    2532 	.db 0x95
      0085DD 90                    2533 	.db 0x90
      0085DE E2                    2534 	.db 0xe2
      0085DF 95                    2535 	.db 0x95
      0085E0 90                    2536 	.db 0x90
      0085E1 E2                    2537 	.db 0xe2
      0085E2 95                    2538 	.db 0x95
      0085E3 90                    2539 	.db 0x90
      0085E4 E2                    2540 	.db 0xe2
      0085E5 95                    2541 	.db 0x95
      0085E6 90                    2542 	.db 0x90
      0085E7 E2                    2543 	.db 0xe2
      0085E8 95                    2544 	.db 0x95
      0085E9 90                    2545 	.db 0x90
      0085EA E2                    2546 	.db 0xe2
      0085EB 95                    2547 	.db 0x95
      0085EC 90                    2548 	.db 0x90
      0085ED E2                    2549 	.db 0xe2
      0085EE 95                    2550 	.db 0x95
      0085EF 90                    2551 	.db 0x90
      0085F0 E2                    2552 	.db 0xe2
      0085F1 95                    2553 	.db 0x95
      0085F2 90                    2554 	.db 0x90
      0085F3 E2                    2555 	.db 0xe2
      0085F4 95                    2556 	.db 0x95
      0085F5 90                    2557 	.db 0x90
      0085F6 E2                    2558 	.db 0xe2
      0085F7 95                    2559 	.db 0x95
      0085F8 90                    2560 	.db 0x90
      0085F9 E2                    2561 	.db 0xe2
      0085FA 95                    2562 	.db 0x95
      0085FB 90                    2563 	.db 0x90
      0085FC E2                    2564 	.db 0xe2
      0085FD 95                    2565 	.db 0x95
      0085FE 90                    2566 	.db 0x90
      0085FF E2                    2567 	.db 0xe2
      008600 95                    2568 	.db 0x95
      008601 90                    2569 	.db 0x90
      008602 E2                    2570 	.db 0xe2
      008603 95                    2571 	.db 0x95
      008604 90                    2572 	.db 0x90
      008605 E2                    2573 	.db 0xe2
      008606 95                    2574 	.db 0x95
      008607 90                    2575 	.db 0x90
      008608 E2                    2576 	.db 0xe2
      008609 95                    2577 	.db 0x95
      00860A 90                    2578 	.db 0x90
      00860B E2                    2579 	.db 0xe2
      00860C 95                    2580 	.db 0x95
      00860D 90                    2581 	.db 0x90
      00860E E2                    2582 	.db 0xe2
      00860F 95                    2583 	.db 0x95
      008610 90                    2584 	.db 0x90
      008611 E2                    2585 	.db 0xe2
      008612 95                    2586 	.db 0x95
      008613 90                    2587 	.db 0x90
      008614 E2                    2588 	.db 0xe2
      008615 95                    2589 	.db 0x95
      008616 90                    2590 	.db 0x90
      008617 E2                    2591 	.db 0xe2
      008618 95                    2592 	.db 0x95
      008619 90                    2593 	.db 0x90
      00861A E2                    2594 	.db 0xe2
      00861B 95                    2595 	.db 0x95
      00861C 90                    2596 	.db 0x90
      00861D E2                    2597 	.db 0xe2
      00861E 95                    2598 	.db 0x95
      00861F 90                    2599 	.db 0x90
      008620 E2                    2600 	.db 0xe2
      008621 95                    2601 	.db 0x95
      008622 90                    2602 	.db 0x90
      008623 E2                    2603 	.db 0xe2
      008624 95                    2604 	.db 0x95
      008625 90                    2605 	.db 0x90
      008626 E2                    2606 	.db 0xe2
      008627 95                    2607 	.db 0x95
      008628 90                    2608 	.db 0x90
      008629 E2                    2609 	.db 0xe2
      00862A 95                    2610 	.db 0x95
      00862B 90                    2611 	.db 0x90
      00862C E2                    2612 	.db 0xe2
      00862D 95                    2613 	.db 0x95
      00862E 90                    2614 	.db 0x90
      00862F E2                    2615 	.db 0xe2
      008630 95                    2616 	.db 0x95
      008631 90                    2617 	.db 0x90
      008632 E2                    2618 	.db 0xe2
      008633 95                    2619 	.db 0x95
      008634 90                    2620 	.db 0x90
      008635 E2                    2621 	.db 0xe2
      008636 95                    2622 	.db 0x95
      008637 90                    2623 	.db 0x90
      008638 E2                    2624 	.db 0xe2
      008639 95                    2625 	.db 0x95
      00863A 90                    2626 	.db 0x90
      00863B E2                    2627 	.db 0xe2
      00863C 95                    2628 	.db 0x95
      00863D 90                    2629 	.db 0x90
      00863E E2                    2630 	.db 0xe2
      00863F 95                    2631 	.db 0x95
      008640 90                    2632 	.db 0x90
      008641 E2                    2633 	.db 0xe2
      008642 95                    2634 	.db 0x95
      008643 90                    2635 	.db 0x90
      008644 E2                    2636 	.db 0xe2
      008645 95                    2637 	.db 0x95
      008646 90                    2638 	.db 0x90
      008647 E2                    2639 	.db 0xe2
      008648 95                    2640 	.db 0x95
      008649 90                    2641 	.db 0x90
      00864A E2                    2642 	.db 0xe2
      00864B 95                    2643 	.db 0x95
      00864C 90                    2644 	.db 0x90
      00864D E2                    2645 	.db 0xe2
      00864E 95                    2646 	.db 0x95
      00864F 90                    2647 	.db 0x90
      008650 E2                    2648 	.db 0xe2
      008651 95                    2649 	.db 0x95
      008652 90                    2650 	.db 0x90
      008653 E2                    2651 	.db 0xe2
      008654 95                    2652 	.db 0x95
      008655 90                    2653 	.db 0x90
      008656 E2                    2654 	.db 0xe2
      008657 95                    2655 	.db 0x95
      008658 90                    2656 	.db 0x90
      008659 E2                    2657 	.db 0xe2
      00865A 95                    2658 	.db 0x95
      00865B 90                    2659 	.db 0x90
      00865C E2                    2660 	.db 0xe2
      00865D 95                    2661 	.db 0x95
      00865E 90                    2662 	.db 0x90
      00865F E2                    2663 	.db 0xe2
      008660 95                    2664 	.db 0x95
      008661 90                    2665 	.db 0x90
      008662 E2                    2666 	.db 0xe2
      008663 95                    2667 	.db 0x95
      008664 90                    2668 	.db 0x90
      008665 E2                    2669 	.db 0xe2
      008666 95                    2670 	.db 0x95
      008667 90                    2671 	.db 0x90
      008668 E2                    2672 	.db 0xe2
      008669 95                    2673 	.db 0x95
      00866A 90                    2674 	.db 0x90
      00866B E2                    2675 	.db 0xe2
      00866C 95                    2676 	.db 0x95
      00866D 90                    2677 	.db 0x90
      00866E E2                    2678 	.db 0xe2
      00866F 95                    2679 	.db 0x95
      008670 90                    2680 	.db 0x90
      008671 E2                    2681 	.db 0xe2
      008672 95                    2682 	.db 0x95
      008673 90                    2683 	.db 0x90
      008674 E2                    2684 	.db 0xe2
      008675 95                    2685 	.db 0x95
      008676 90                    2686 	.db 0x90
      008677 E2                    2687 	.db 0xe2
      008678 95                    2688 	.db 0x95
      008679 97                    2689 	.db 0x97
      00867A 0A                    2690 	.db 0x0a
      00867B 0D                    2691 	.db 0x0d
      00867C 00                    2692 	.db 0x00
                                   2693 	.area CSEG    (CODE)
                                   2694 	.area CONST   (CODE)
      00867D                       2695 ___str_1:
      00867D E2                    2696 	.db 0xe2
      00867E 95                    2697 	.db 0x95
      00867F 91                    2698 	.db 0x91
      008680 20 20 20 20 20 20 20  2699 	.ascii "           I2C Memory Management System v1.0            "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
      0086B8 E2                    2700 	.db 0xe2
      0086B9 95                    2701 	.db 0x95
      0086BA 91                    2702 	.db 0x91
      0086BB 0A                    2703 	.db 0x0a
      0086BC 0D                    2704 	.db 0x0d
      0086BD 00                    2705 	.db 0x00
                                   2706 	.area CSEG    (CODE)
                                   2707 	.area CONST   (CODE)
      0086BE                       2708 ___str_2:
      0086BE E2                    2709 	.db 0xe2
      0086BF 95                    2710 	.db 0x95
      0086C0 9A                    2711 	.db 0x9a
      0086C1 E2                    2712 	.db 0xe2
      0086C2 95                    2713 	.db 0x95
      0086C3 90                    2714 	.db 0x90
      0086C4 E2                    2715 	.db 0xe2
      0086C5 95                    2716 	.db 0x95
      0086C6 90                    2717 	.db 0x90
      0086C7 E2                    2718 	.db 0xe2
      0086C8 95                    2719 	.db 0x95
      0086C9 90                    2720 	.db 0x90
      0086CA E2                    2721 	.db 0xe2
      0086CB 95                    2722 	.db 0x95
      0086CC 90                    2723 	.db 0x90
      0086CD E2                    2724 	.db 0xe2
      0086CE 95                    2725 	.db 0x95
      0086CF 90                    2726 	.db 0x90
      0086D0 E2                    2727 	.db 0xe2
      0086D1 95                    2728 	.db 0x95
      0086D2 90                    2729 	.db 0x90
      0086D3 E2                    2730 	.db 0xe2
      0086D4 95                    2731 	.db 0x95
      0086D5 90                    2732 	.db 0x90
      0086D6 E2                    2733 	.db 0xe2
      0086D7 95                    2734 	.db 0x95
      0086D8 90                    2735 	.db 0x90
      0086D9 E2                    2736 	.db 0xe2
      0086DA 95                    2737 	.db 0x95
      0086DB 90                    2738 	.db 0x90
      0086DC E2                    2739 	.db 0xe2
      0086DD 95                    2740 	.db 0x95
      0086DE 90                    2741 	.db 0x90
      0086DF E2                    2742 	.db 0xe2
      0086E0 95                    2743 	.db 0x95
      0086E1 90                    2744 	.db 0x90
      0086E2 E2                    2745 	.db 0xe2
      0086E3 95                    2746 	.db 0x95
      0086E4 90                    2747 	.db 0x90
      0086E5 E2                    2748 	.db 0xe2
      0086E6 95                    2749 	.db 0x95
      0086E7 90                    2750 	.db 0x90
      0086E8 E2                    2751 	.db 0xe2
      0086E9 95                    2752 	.db 0x95
      0086EA 90                    2753 	.db 0x90
      0086EB E2                    2754 	.db 0xe2
      0086EC 95                    2755 	.db 0x95
      0086ED 90                    2756 	.db 0x90
      0086EE E2                    2757 	.db 0xe2
      0086EF 95                    2758 	.db 0x95
      0086F0 90                    2759 	.db 0x90
      0086F1 E2                    2760 	.db 0xe2
      0086F2 95                    2761 	.db 0x95
      0086F3 90                    2762 	.db 0x90
      0086F4 E2                    2763 	.db 0xe2
      0086F5 95                    2764 	.db 0x95
      0086F6 90                    2765 	.db 0x90
      0086F7 E2                    2766 	.db 0xe2
      0086F8 95                    2767 	.db 0x95
      0086F9 90                    2768 	.db 0x90
      0086FA E2                    2769 	.db 0xe2
      0086FB 95                    2770 	.db 0x95
      0086FC 90                    2771 	.db 0x90
      0086FD E2                    2772 	.db 0xe2
      0086FE 95                    2773 	.db 0x95
      0086FF 90                    2774 	.db 0x90
      008700 E2                    2775 	.db 0xe2
      008701 95                    2776 	.db 0x95
      008702 90                    2777 	.db 0x90
      008703 E2                    2778 	.db 0xe2
      008704 95                    2779 	.db 0x95
      008705 90                    2780 	.db 0x90
      008706 E2                    2781 	.db 0xe2
      008707 95                    2782 	.db 0x95
      008708 90                    2783 	.db 0x90
      008709 E2                    2784 	.db 0xe2
      00870A 95                    2785 	.db 0x95
      00870B 90                    2786 	.db 0x90
      00870C E2                    2787 	.db 0xe2
      00870D 95                    2788 	.db 0x95
      00870E 90                    2789 	.db 0x90
      00870F E2                    2790 	.db 0xe2
      008710 95                    2791 	.db 0x95
      008711 90                    2792 	.db 0x90
      008712 E2                    2793 	.db 0xe2
      008713 95                    2794 	.db 0x95
      008714 90                    2795 	.db 0x90
      008715 E2                    2796 	.db 0xe2
      008716 95                    2797 	.db 0x95
      008717 90                    2798 	.db 0x90
      008718 E2                    2799 	.db 0xe2
      008719 95                    2800 	.db 0x95
      00871A 90                    2801 	.db 0x90
      00871B E2                    2802 	.db 0xe2
      00871C 95                    2803 	.db 0x95
      00871D 90                    2804 	.db 0x90
      00871E E2                    2805 	.db 0xe2
      00871F 95                    2806 	.db 0x95
      008720 90                    2807 	.db 0x90
      008721 E2                    2808 	.db 0xe2
      008722 95                    2809 	.db 0x95
      008723 90                    2810 	.db 0x90
      008724 E2                    2811 	.db 0xe2
      008725 95                    2812 	.db 0x95
      008726 90                    2813 	.db 0x90
      008727 E2                    2814 	.db 0xe2
      008728 95                    2815 	.db 0x95
      008729 90                    2816 	.db 0x90
      00872A E2                    2817 	.db 0xe2
      00872B 95                    2818 	.db 0x95
      00872C 90                    2819 	.db 0x90
      00872D E2                    2820 	.db 0xe2
      00872E 95                    2821 	.db 0x95
      00872F 90                    2822 	.db 0x90
      008730 E2                    2823 	.db 0xe2
      008731 95                    2824 	.db 0x95
      008732 90                    2825 	.db 0x90
      008733 E2                    2826 	.db 0xe2
      008734 95                    2827 	.db 0x95
      008735 90                    2828 	.db 0x90
      008736 E2                    2829 	.db 0xe2
      008737 95                    2830 	.db 0x95
      008738 90                    2831 	.db 0x90
      008739 E2                    2832 	.db 0xe2
      00873A 95                    2833 	.db 0x95
      00873B 90                    2834 	.db 0x90
      00873C E2                    2835 	.db 0xe2
      00873D 95                    2836 	.db 0x95
      00873E 90                    2837 	.db 0x90
      00873F E2                    2838 	.db 0xe2
      008740 95                    2839 	.db 0x95
      008741 90                    2840 	.db 0x90
      008742 E2                    2841 	.db 0xe2
      008743 95                    2842 	.db 0x95
      008744 90                    2843 	.db 0x90
      008745 E2                    2844 	.db 0xe2
      008746 95                    2845 	.db 0x95
      008747 90                    2846 	.db 0x90
      008748 E2                    2847 	.db 0xe2
      008749 95                    2848 	.db 0x95
      00874A 90                    2849 	.db 0x90
      00874B E2                    2850 	.db 0xe2
      00874C 95                    2851 	.db 0x95
      00874D 90                    2852 	.db 0x90
      00874E E2                    2853 	.db 0xe2
      00874F 95                    2854 	.db 0x95
      008750 90                    2855 	.db 0x90
      008751 E2                    2856 	.db 0xe2
      008752 95                    2857 	.db 0x95
      008753 90                    2858 	.db 0x90
      008754 E2                    2859 	.db 0xe2
      008755 95                    2860 	.db 0x95
      008756 90                    2861 	.db 0x90
      008757 E2                    2862 	.db 0xe2
      008758 95                    2863 	.db 0x95
      008759 90                    2864 	.db 0x90
      00875A E2                    2865 	.db 0xe2
      00875B 95                    2866 	.db 0x95
      00875C 90                    2867 	.db 0x90
      00875D E2                    2868 	.db 0xe2
      00875E 95                    2869 	.db 0x95
      00875F 90                    2870 	.db 0x90
      008760 E2                    2871 	.db 0xe2
      008761 95                    2872 	.db 0x95
      008762 90                    2873 	.db 0x90
      008763 E2                    2874 	.db 0xe2
      008764 95                    2875 	.db 0x95
      008765 90                    2876 	.db 0x90
      008766 E2                    2877 	.db 0xe2
      008767 95                    2878 	.db 0x95
      008768 90                    2879 	.db 0x90
      008769 E2                    2880 	.db 0xe2
      00876A 95                    2881 	.db 0x95
      00876B 9D                    2882 	.db 0x9d
      00876C 0A                    2883 	.db 0x0a
      00876D 0D                    2884 	.db 0x0d
      00876E 00                    2885 	.db 0x00
                                   2886 	.area CSEG    (CODE)
                                   2887 	.area CONST   (CODE)
      00876F                       2888 ___str_3:
      00876F 0A                    2889 	.db 0x0a
      008770 0D                    2890 	.db 0x0d
      008771 E2                    2891 	.db 0xe2
      008772 94                    2892 	.db 0x94
      008773 8C                    2893 	.db 0x8c
      008774 E2                    2894 	.db 0xe2
      008775 94                    2895 	.db 0x94
      008776 80                    2896 	.db 0x80
      008777 E2                    2897 	.db 0xe2
      008778 94                    2898 	.db 0x94
      008779 80                    2899 	.db 0x80
      00877A E2                    2900 	.db 0xe2
      00877B 94                    2901 	.db 0x94
      00877C 80                    2902 	.db 0x80
      00877D E2                    2903 	.db 0xe2
      00877E 94                    2904 	.db 0x94
      00877F 80                    2905 	.db 0x80
      008780 E2                    2906 	.db 0xe2
      008781 94                    2907 	.db 0x94
      008782 80                    2908 	.db 0x80
      008783 E2                    2909 	.db 0xe2
      008784 94                    2910 	.db 0x94
      008785 80                    2911 	.db 0x80
      008786 E2                    2912 	.db 0xe2
      008787 94                    2913 	.db 0x94
      008788 80                    2914 	.db 0x80
      008789 E2                    2915 	.db 0xe2
      00878A 94                    2916 	.db 0x94
      00878B 80                    2917 	.db 0x80
      00878C E2                    2918 	.db 0xe2
      00878D 94                    2919 	.db 0x94
      00878E 80                    2920 	.db 0x80
      00878F E2                    2921 	.db 0xe2
      008790 94                    2922 	.db 0x94
      008791 80                    2923 	.db 0x80
      008792 E2                    2924 	.db 0xe2
      008793 94                    2925 	.db 0x94
      008794 80                    2926 	.db 0x80
      008795 E2                    2927 	.db 0xe2
      008796 94                    2928 	.db 0x94
      008797 80                    2929 	.db 0x80
      008798 E2                    2930 	.db 0xe2
      008799 94                    2931 	.db 0x94
      00879A AC                    2932 	.db 0xac
      00879B E2                    2933 	.db 0xe2
      00879C 94                    2934 	.db 0x94
      00879D 80                    2935 	.db 0x80
      00879E E2                    2936 	.db 0xe2
      00879F 94                    2937 	.db 0x94
      0087A0 80                    2938 	.db 0x80
      0087A1 E2                    2939 	.db 0xe2
      0087A2 94                    2940 	.db 0x94
      0087A3 80                    2941 	.db 0x80
      0087A4 E2                    2942 	.db 0xe2
      0087A5 94                    2943 	.db 0x94
      0087A6 80                    2944 	.db 0x80
      0087A7 E2                    2945 	.db 0xe2
      0087A8 94                    2946 	.db 0x94
      0087A9 80                    2947 	.db 0x80
      0087AA E2                    2948 	.db 0xe2
      0087AB 94                    2949 	.db 0x94
      0087AC 80                    2950 	.db 0x80
      0087AD E2                    2951 	.db 0xe2
      0087AE 94                    2952 	.db 0x94
      0087AF 80                    2953 	.db 0x80
      0087B0 E2                    2954 	.db 0xe2
      0087B1 94                    2955 	.db 0x94
      0087B2 80                    2956 	.db 0x80
      0087B3 E2                    2957 	.db 0xe2
      0087B4 94                    2958 	.db 0x94
      0087B5 80                    2959 	.db 0x80
      0087B6 E2                    2960 	.db 0xe2
      0087B7 94                    2961 	.db 0x94
      0087B8 80                    2962 	.db 0x80
      0087B9 E2                    2963 	.db 0xe2
      0087BA 94                    2964 	.db 0x94
      0087BB 80                    2965 	.db 0x80
      0087BC E2                    2966 	.db 0xe2
      0087BD 94                    2967 	.db 0x94
      0087BE 80                    2968 	.db 0x80
      0087BF E2                    2969 	.db 0xe2
      0087C0 94                    2970 	.db 0x94
      0087C1 80                    2971 	.db 0x80
      0087C2 E2                    2972 	.db 0xe2
      0087C3 94                    2973 	.db 0x94
      0087C4 80                    2974 	.db 0x80
      0087C5 E2                    2975 	.db 0xe2
      0087C6 94                    2976 	.db 0x94
      0087C7 80                    2977 	.db 0x80
      0087C8 E2                    2978 	.db 0xe2
      0087C9 94                    2979 	.db 0x94
      0087CA 80                    2980 	.db 0x80
      0087CB E2                    2981 	.db 0xe2
      0087CC 94                    2982 	.db 0x94
      0087CD 80                    2983 	.db 0x80
      0087CE E2                    2984 	.db 0xe2
      0087CF 94                    2985 	.db 0x94
      0087D0 80                    2986 	.db 0x80
      0087D1 E2                    2987 	.db 0xe2
      0087D2 94                    2988 	.db 0x94
      0087D3 80                    2989 	.db 0x80
      0087D4 E2                    2990 	.db 0xe2
      0087D5 94                    2991 	.db 0x94
      0087D6 80                    2992 	.db 0x80
      0087D7 E2                    2993 	.db 0xe2
      0087D8 94                    2994 	.db 0x94
      0087D9 80                    2995 	.db 0x80
      0087DA E2                    2996 	.db 0xe2
      0087DB 94                    2997 	.db 0x94
      0087DC 80                    2998 	.db 0x80
      0087DD E2                    2999 	.db 0xe2
      0087DE 94                    3000 	.db 0x94
      0087DF 80                    3001 	.db 0x80
      0087E0 E2                    3002 	.db 0xe2
      0087E1 94                    3003 	.db 0x94
      0087E2 80                    3004 	.db 0x80
      0087E3 E2                    3005 	.db 0xe2
      0087E4 94                    3006 	.db 0x94
      0087E5 80                    3007 	.db 0x80
      0087E6 E2                    3008 	.db 0xe2
      0087E7 94                    3009 	.db 0x94
      0087E8 80                    3010 	.db 0x80
      0087E9 E2                    3011 	.db 0xe2
      0087EA 94                    3012 	.db 0x94
      0087EB 80                    3013 	.db 0x80
      0087EC E2                    3014 	.db 0xe2
      0087ED 94                    3015 	.db 0x94
      0087EE 80                    3016 	.db 0x80
      0087EF E2                    3017 	.db 0xe2
      0087F0 94                    3018 	.db 0x94
      0087F1 80                    3019 	.db 0x80
      0087F2 E2                    3020 	.db 0xe2
      0087F3 94                    3021 	.db 0x94
      0087F4 80                    3022 	.db 0x80
      0087F5 E2                    3023 	.db 0xe2
      0087F6 94                    3024 	.db 0x94
      0087F7 80                    3025 	.db 0x80
      0087F8 E2                    3026 	.db 0xe2
      0087F9 94                    3027 	.db 0x94
      0087FA 80                    3028 	.db 0x80
      0087FB E2                    3029 	.db 0xe2
      0087FC 94                    3030 	.db 0x94
      0087FD 80                    3031 	.db 0x80
      0087FE E2                    3032 	.db 0xe2
      0087FF 94                    3033 	.db 0x94
      008800 80                    3034 	.db 0x80
      008801 E2                    3035 	.db 0xe2
      008802 94                    3036 	.db 0x94
      008803 80                    3037 	.db 0x80
      008804 E2                    3038 	.db 0xe2
      008805 94                    3039 	.db 0x94
      008806 80                    3040 	.db 0x80
      008807 E2                    3041 	.db 0xe2
      008808 94                    3042 	.db 0x94
      008809 80                    3043 	.db 0x80
      00880A E2                    3044 	.db 0xe2
      00880B 94                    3045 	.db 0x94
      00880C 80                    3046 	.db 0x80
      00880D E2                    3047 	.db 0xe2
      00880E 94                    3048 	.db 0x94
      00880F 80                    3049 	.db 0x80
      008810 E2                    3050 	.db 0xe2
      008811 94                    3051 	.db 0x94
      008812 80                    3052 	.db 0x80
      008813 E2                    3053 	.db 0xe2
      008814 94                    3054 	.db 0x94
      008815 80                    3055 	.db 0x80
      008816 E2                    3056 	.db 0xe2
      008817 94                    3057 	.db 0x94
      008818 80                    3058 	.db 0x80
      008819 E2                    3059 	.db 0xe2
      00881A 94                    3060 	.db 0x94
      00881B 80                    3061 	.db 0x80
      00881C E2                    3062 	.db 0xe2
      00881D 94                    3063 	.db 0x94
      00881E 80                    3064 	.db 0x80
      00881F E2                    3065 	.db 0xe2
      008820 94                    3066 	.db 0x94
      008821 90                    3067 	.db 0x90
      008822 0A                    3068 	.db 0x0a
      008823 0D                    3069 	.db 0x0d
      008824 00                    3070 	.db 0x00
                                   3071 	.area CSEG    (CODE)
                                   3072 	.area CONST   (CODE)
      008825                       3073 ___str_4:
      008825 E2                    3074 	.db 0xe2
      008826 94                    3075 	.db 0x94
      008827 82                    3076 	.db 0x82
      008828 20 20 43 6F 6D 6D 61  3077 	.ascii "  Command   "
             6E 64 20 20 20
      008834 E2                    3078 	.db 0xe2
      008835 94                    3079 	.db 0x94
      008836 82                    3080 	.db 0x82
      008837 20 20 20 20 20 20 20  3081 	.ascii "               Description                  "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      008863 E2                    3082 	.db 0xe2
      008864 94                    3083 	.db 0x94
      008865 82                    3084 	.db 0x82
      008866 0A                    3085 	.db 0x0a
      008867 0D                    3086 	.db 0x0d
      008868 00                    3087 	.db 0x00
                                   3088 	.area CSEG    (CODE)
                                   3089 	.area CONST   (CODE)
      008869                       3090 ___str_5:
      008869 E2                    3091 	.db 0xe2
      00886A 94                    3092 	.db 0x94
      00886B 9C                    3093 	.db 0x9c
      00886C E2                    3094 	.db 0xe2
      00886D 94                    3095 	.db 0x94
      00886E 80                    3096 	.db 0x80
      00886F E2                    3097 	.db 0xe2
      008870 94                    3098 	.db 0x94
      008871 80                    3099 	.db 0x80
      008872 E2                    3100 	.db 0xe2
      008873 94                    3101 	.db 0x94
      008874 80                    3102 	.db 0x80
      008875 E2                    3103 	.db 0xe2
      008876 94                    3104 	.db 0x94
      008877 80                    3105 	.db 0x80
      008878 E2                    3106 	.db 0xe2
      008879 94                    3107 	.db 0x94
      00887A 80                    3108 	.db 0x80
      00887B E2                    3109 	.db 0xe2
      00887C 94                    3110 	.db 0x94
      00887D 80                    3111 	.db 0x80
      00887E E2                    3112 	.db 0xe2
      00887F 94                    3113 	.db 0x94
      008880 80                    3114 	.db 0x80
      008881 E2                    3115 	.db 0xe2
      008882 94                    3116 	.db 0x94
      008883 80                    3117 	.db 0x80
      008884 E2                    3118 	.db 0xe2
      008885 94                    3119 	.db 0x94
      008886 80                    3120 	.db 0x80
      008887 E2                    3121 	.db 0xe2
      008888 94                    3122 	.db 0x94
      008889 80                    3123 	.db 0x80
      00888A E2                    3124 	.db 0xe2
      00888B 94                    3125 	.db 0x94
      00888C 80                    3126 	.db 0x80
      00888D E2                    3127 	.db 0xe2
      00888E 94                    3128 	.db 0x94
      00888F 80                    3129 	.db 0x80
      008890 E2                    3130 	.db 0xe2
      008891 94                    3131 	.db 0x94
      008892 BC                    3132 	.db 0xbc
      008893 E2                    3133 	.db 0xe2
      008894 94                    3134 	.db 0x94
      008895 80                    3135 	.db 0x80
      008896 E2                    3136 	.db 0xe2
      008897 94                    3137 	.db 0x94
      008898 80                    3138 	.db 0x80
      008899 E2                    3139 	.db 0xe2
      00889A 94                    3140 	.db 0x94
      00889B 80                    3141 	.db 0x80
      00889C E2                    3142 	.db 0xe2
      00889D 94                    3143 	.db 0x94
      00889E 80                    3144 	.db 0x80
      00889F E2                    3145 	.db 0xe2
      0088A0 94                    3146 	.db 0x94
      0088A1 80                    3147 	.db 0x80
      0088A2 E2                    3148 	.db 0xe2
      0088A3 94                    3149 	.db 0x94
      0088A4 80                    3150 	.db 0x80
      0088A5 E2                    3151 	.db 0xe2
      0088A6 94                    3152 	.db 0x94
      0088A7 80                    3153 	.db 0x80
      0088A8 E2                    3154 	.db 0xe2
      0088A9 94                    3155 	.db 0x94
      0088AA 80                    3156 	.db 0x80
      0088AB E2                    3157 	.db 0xe2
      0088AC 94                    3158 	.db 0x94
      0088AD 80                    3159 	.db 0x80
      0088AE E2                    3160 	.db 0xe2
      0088AF 94                    3161 	.db 0x94
      0088B0 80                    3162 	.db 0x80
      0088B1 E2                    3163 	.db 0xe2
      0088B2 94                    3164 	.db 0x94
      0088B3 80                    3165 	.db 0x80
      0088B4 E2                    3166 	.db 0xe2
      0088B5 94                    3167 	.db 0x94
      0088B6 80                    3168 	.db 0x80
      0088B7 E2                    3169 	.db 0xe2
      0088B8 94                    3170 	.db 0x94
      0088B9 80                    3171 	.db 0x80
      0088BA E2                    3172 	.db 0xe2
      0088BB 94                    3173 	.db 0x94
      0088BC 80                    3174 	.db 0x80
      0088BD E2                    3175 	.db 0xe2
      0088BE 94                    3176 	.db 0x94
      0088BF 80                    3177 	.db 0x80
      0088C0 E2                    3178 	.db 0xe2
      0088C1 94                    3179 	.db 0x94
      0088C2 80                    3180 	.db 0x80
      0088C3 E2                    3181 	.db 0xe2
      0088C4 94                    3182 	.db 0x94
      0088C5 80                    3183 	.db 0x80
      0088C6 E2                    3184 	.db 0xe2
      0088C7 94                    3185 	.db 0x94
      0088C8 80                    3186 	.db 0x80
      0088C9 E2                    3187 	.db 0xe2
      0088CA 94                    3188 	.db 0x94
      0088CB 80                    3189 	.db 0x80
      0088CC E2                    3190 	.db 0xe2
      0088CD 94                    3191 	.db 0x94
      0088CE 80                    3192 	.db 0x80
      0088CF E2                    3193 	.db 0xe2
      0088D0 94                    3194 	.db 0x94
      0088D1 80                    3195 	.db 0x80
      0088D2 E2                    3196 	.db 0xe2
      0088D3 94                    3197 	.db 0x94
      0088D4 80                    3198 	.db 0x80
      0088D5 E2                    3199 	.db 0xe2
      0088D6 94                    3200 	.db 0x94
      0088D7 80                    3201 	.db 0x80
      0088D8 E2                    3202 	.db 0xe2
      0088D9 94                    3203 	.db 0x94
      0088DA 80                    3204 	.db 0x80
      0088DB E2                    3205 	.db 0xe2
      0088DC 94                    3206 	.db 0x94
      0088DD 80                    3207 	.db 0x80
      0088DE E2                    3208 	.db 0xe2
      0088DF 94                    3209 	.db 0x94
      0088E0 80                    3210 	.db 0x80
      0088E1 E2                    3211 	.db 0xe2
      0088E2 94                    3212 	.db 0x94
      0088E3 80                    3213 	.db 0x80
      0088E4 E2                    3214 	.db 0xe2
      0088E5 94                    3215 	.db 0x94
      0088E6 80                    3216 	.db 0x80
      0088E7 E2                    3217 	.db 0xe2
      0088E8 94                    3218 	.db 0x94
      0088E9 80                    3219 	.db 0x80
      0088EA E2                    3220 	.db 0xe2
      0088EB 94                    3221 	.db 0x94
      0088EC 80                    3222 	.db 0x80
      0088ED E2                    3223 	.db 0xe2
      0088EE 94                    3224 	.db 0x94
      0088EF 80                    3225 	.db 0x80
      0088F0 E2                    3226 	.db 0xe2
      0088F1 94                    3227 	.db 0x94
      0088F2 80                    3228 	.db 0x80
      0088F3 E2                    3229 	.db 0xe2
      0088F4 94                    3230 	.db 0x94
      0088F5 80                    3231 	.db 0x80
      0088F6 E2                    3232 	.db 0xe2
      0088F7 94                    3233 	.db 0x94
      0088F8 80                    3234 	.db 0x80
      0088F9 E2                    3235 	.db 0xe2
      0088FA 94                    3236 	.db 0x94
      0088FB 80                    3237 	.db 0x80
      0088FC E2                    3238 	.db 0xe2
      0088FD 94                    3239 	.db 0x94
      0088FE 80                    3240 	.db 0x80
      0088FF E2                    3241 	.db 0xe2
      008900 94                    3242 	.db 0x94
      008901 80                    3243 	.db 0x80
      008902 E2                    3244 	.db 0xe2
      008903 94                    3245 	.db 0x94
      008904 80                    3246 	.db 0x80
      008905 E2                    3247 	.db 0xe2
      008906 94                    3248 	.db 0x94
      008907 80                    3249 	.db 0x80
      008908 E2                    3250 	.db 0xe2
      008909 94                    3251 	.db 0x94
      00890A 80                    3252 	.db 0x80
      00890B E2                    3253 	.db 0xe2
      00890C 94                    3254 	.db 0x94
      00890D 80                    3255 	.db 0x80
      00890E E2                    3256 	.db 0xe2
      00890F 94                    3257 	.db 0x94
      008910 80                    3258 	.db 0x80
      008911 E2                    3259 	.db 0xe2
      008912 94                    3260 	.db 0x94
      008913 80                    3261 	.db 0x80
      008914 E2                    3262 	.db 0xe2
      008915 94                    3263 	.db 0x94
      008916 80                    3264 	.db 0x80
      008917 E2                    3265 	.db 0xe2
      008918 94                    3266 	.db 0x94
      008919 A4                    3267 	.db 0xa4
      00891A 0A                    3268 	.db 0x0a
      00891B 0D                    3269 	.db 0x0d
      00891C 00                    3270 	.db 0x00
                                   3271 	.area CSEG    (CODE)
                                   3272 	.area CONST   (CODE)
      00891D                       3273 ___str_6:
      00891D E2                    3274 	.db 0xe2
      00891E 94                    3275 	.db 0x94
      00891F 82                    3276 	.db 0x82
      008920 20 20 20 20 20 52 20  3277 	.ascii "     R      "
             20 20 20 20 20
      00892C E2                    3278 	.db 0xe2
      00892D 94                    3279 	.db 0x94
      00892E 82                    3280 	.db 0x82
      00892F 20 52 65 61 64 20 66  3281 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      00895B E2                    3282 	.db 0xe2
      00895C 94                    3283 	.db 0x94
      00895D 82                    3284 	.db 0x82
      00895E 0A                    3285 	.db 0x0a
      00895F 0D                    3286 	.db 0x0d
      008960 00                    3287 	.db 0x00
                                   3288 	.area CSEG    (CODE)
                                   3289 	.area CONST   (CODE)
      008961                       3290 ___str_7:
      008961 E2                    3291 	.db 0xe2
      008962 94                    3292 	.db 0x94
      008963 82                    3293 	.db 0x82
      008964 20 20 20 20 20 57 20  3294 	.ascii "     W      "
             20 20 20 20 20
      008970 E2                    3295 	.db 0xe2
      008971 94                    3296 	.db 0x94
      008972 82                    3297 	.db 0x82
      008973 20 57 72 69 74 65 20  3298 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      00899F E2                    3299 	.db 0xe2
      0089A0 94                    3300 	.db 0x94
      0089A1 82                    3301 	.db 0x82
      0089A2 0A                    3302 	.db 0x0a
      0089A3 0D                    3303 	.db 0x0d
      0089A4 00                    3304 	.db 0x00
                                   3305 	.area CSEG    (CODE)
                                   3306 	.area CONST   (CODE)
      0089A5                       3307 ___str_8:
      0089A5 E2                    3308 	.db 0xe2
      0089A6 94                    3309 	.db 0x94
      0089A7 82                    3310 	.db 0x82
      0089A8 20 20 20 20 20 48 20  3311 	.ascii "     H      "
             20 20 20 20 20
      0089B4 E2                    3312 	.db 0xe2
      0089B5 94                    3313 	.db 0x94
      0089B6 82                    3314 	.db 0x82
      0089B7 20 44 69 73 70 6C 61  3315 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      0089E3 E2                    3316 	.db 0xe2
      0089E4 94                    3317 	.db 0x94
      0089E5 82                    3318 	.db 0x82
      0089E6 0A                    3319 	.db 0x0a
      0089E7 0D                    3320 	.db 0x0d
      0089E8 00                    3321 	.db 0x00
                                   3322 	.area CSEG    (CODE)
                                   3323 	.area CONST   (CODE)
      0089E9                       3324 ___str_9:
      0089E9 E2                    3325 	.db 0xe2
      0089EA 94                    3326 	.db 0x94
      0089EB 82                    3327 	.db 0x82
      0089EC 20 20 20 20 20 58 20  3328 	.ascii "     X      "
             20 20 20 20 20
      0089F8 E2                    3329 	.db 0xe2
      0089F9 94                    3330 	.db 0x94
      0089FA 82                    3331 	.db 0x82
      0089FB 20 52 65 73 65 74 20  3332 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      008A27 E2                    3333 	.db 0xe2
      008A28 94                    3334 	.db 0x94
      008A29 82                    3335 	.db 0x82
      008A2A 0A                    3336 	.db 0x0a
      008A2B 0D                    3337 	.db 0x0d
      008A2C 00                    3338 	.db 0x00
                                   3339 	.area CSEG    (CODE)
                                   3340 	.area CONST   (CODE)
      008A2D                       3341 ___str_10:
      008A2D E2                    3342 	.db 0xe2
      008A2E 94                    3343 	.db 0x94
      008A2F 82                    3344 	.db 0x82
      008A30 20 20 20 20 20 3F 20  3345 	.ascii "     ?      "
             20 20 20 20 20
      008A3C E2                    3346 	.db 0xe2
      008A3D 94                    3347 	.db 0x94
      008A3E 82                    3348 	.db 0x82
      008A3F 20 44 69 73 70 6C 61  3349 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      008A6B E2                    3350 	.db 0xe2
      008A6C 94                    3351 	.db 0x94
      008A6D 82                    3352 	.db 0x82
      008A6E 0A                    3353 	.db 0x0a
      008A6F 0D                    3354 	.db 0x0d
      008A70 00                    3355 	.db 0x00
                                   3356 	.area CSEG    (CODE)
                                   3357 	.area CONST   (CODE)
      008A71                       3358 ___str_11:
      008A71 E2                    3359 	.db 0xe2
      008A72 94                    3360 	.db 0x94
      008A73 82                    3361 	.db 0x82
      008A74 20 20 20 20 20 51 20  3362 	.ascii "     Q      "
             20 20 20 20 20
      008A80 E2                    3363 	.db 0xe2
      008A81 94                    3364 	.db 0x94
      008A82 82                    3365 	.db 0x82
      008A83 20 51 75 69 74 20 70  3366 	.ascii " Quit program                               "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      008AAF E2                    3367 	.db 0xe2
      008AB0 94                    3368 	.db 0x94
      008AB1 82                    3369 	.db 0x82
      008AB2 0A                    3370 	.db 0x0a
      008AB3 0D                    3371 	.db 0x0d
      008AB4 00                    3372 	.db 0x00
                                   3373 	.area CSEG    (CODE)
                                   3374 	.area CONST   (CODE)
      008AB5                       3375 ___str_12:
      008AB5 E2                    3376 	.db 0xe2
      008AB6 94                    3377 	.db 0x94
      008AB7 94                    3378 	.db 0x94
      008AB8 E2                    3379 	.db 0xe2
      008AB9 94                    3380 	.db 0x94
      008ABA 80                    3381 	.db 0x80
      008ABB E2                    3382 	.db 0xe2
      008ABC 94                    3383 	.db 0x94
      008ABD 80                    3384 	.db 0x80
      008ABE E2                    3385 	.db 0xe2
      008ABF 94                    3386 	.db 0x94
      008AC0 80                    3387 	.db 0x80
      008AC1 E2                    3388 	.db 0xe2
      008AC2 94                    3389 	.db 0x94
      008AC3 80                    3390 	.db 0x80
      008AC4 E2                    3391 	.db 0xe2
      008AC5 94                    3392 	.db 0x94
      008AC6 80                    3393 	.db 0x80
      008AC7 E2                    3394 	.db 0xe2
      008AC8 94                    3395 	.db 0x94
      008AC9 80                    3396 	.db 0x80
      008ACA E2                    3397 	.db 0xe2
      008ACB 94                    3398 	.db 0x94
      008ACC 80                    3399 	.db 0x80
      008ACD E2                    3400 	.db 0xe2
      008ACE 94                    3401 	.db 0x94
      008ACF 80                    3402 	.db 0x80
      008AD0 E2                    3403 	.db 0xe2
      008AD1 94                    3404 	.db 0x94
      008AD2 80                    3405 	.db 0x80
      008AD3 E2                    3406 	.db 0xe2
      008AD4 94                    3407 	.db 0x94
      008AD5 80                    3408 	.db 0x80
      008AD6 E2                    3409 	.db 0xe2
      008AD7 94                    3410 	.db 0x94
      008AD8 80                    3411 	.db 0x80
      008AD9 E2                    3412 	.db 0xe2
      008ADA 94                    3413 	.db 0x94
      008ADB 80                    3414 	.db 0x80
      008ADC E2                    3415 	.db 0xe2
      008ADD 94                    3416 	.db 0x94
      008ADE B4                    3417 	.db 0xb4
      008ADF E2                    3418 	.db 0xe2
      008AE0 94                    3419 	.db 0x94
      008AE1 80                    3420 	.db 0x80
      008AE2 E2                    3421 	.db 0xe2
      008AE3 94                    3422 	.db 0x94
      008AE4 80                    3423 	.db 0x80
      008AE5 E2                    3424 	.db 0xe2
      008AE6 94                    3425 	.db 0x94
      008AE7 80                    3426 	.db 0x80
      008AE8 E2                    3427 	.db 0xe2
      008AE9 94                    3428 	.db 0x94
      008AEA 80                    3429 	.db 0x80
      008AEB E2                    3430 	.db 0xe2
      008AEC 94                    3431 	.db 0x94
      008AED 80                    3432 	.db 0x80
      008AEE E2                    3433 	.db 0xe2
      008AEF 94                    3434 	.db 0x94
      008AF0 80                    3435 	.db 0x80
      008AF1 E2                    3436 	.db 0xe2
      008AF2 94                    3437 	.db 0x94
      008AF3 80                    3438 	.db 0x80
      008AF4 E2                    3439 	.db 0xe2
      008AF5 94                    3440 	.db 0x94
      008AF6 80                    3441 	.db 0x80
      008AF7 E2                    3442 	.db 0xe2
      008AF8 94                    3443 	.db 0x94
      008AF9 80                    3444 	.db 0x80
      008AFA E2                    3445 	.db 0xe2
      008AFB 94                    3446 	.db 0x94
      008AFC 80                    3447 	.db 0x80
      008AFD E2                    3448 	.db 0xe2
      008AFE 94                    3449 	.db 0x94
      008AFF 80                    3450 	.db 0x80
      008B00 E2                    3451 	.db 0xe2
      008B01 94                    3452 	.db 0x94
      008B02 80                    3453 	.db 0x80
      008B03 E2                    3454 	.db 0xe2
      008B04 94                    3455 	.db 0x94
      008B05 80                    3456 	.db 0x80
      008B06 E2                    3457 	.db 0xe2
      008B07 94                    3458 	.db 0x94
      008B08 80                    3459 	.db 0x80
      008B09 E2                    3460 	.db 0xe2
      008B0A 94                    3461 	.db 0x94
      008B0B 80                    3462 	.db 0x80
      008B0C E2                    3463 	.db 0xe2
      008B0D 94                    3464 	.db 0x94
      008B0E 80                    3465 	.db 0x80
      008B0F E2                    3466 	.db 0xe2
      008B10 94                    3467 	.db 0x94
      008B11 80                    3468 	.db 0x80
      008B12 E2                    3469 	.db 0xe2
      008B13 94                    3470 	.db 0x94
      008B14 80                    3471 	.db 0x80
      008B15 E2                    3472 	.db 0xe2
      008B16 94                    3473 	.db 0x94
      008B17 80                    3474 	.db 0x80
      008B18 E2                    3475 	.db 0xe2
      008B19 94                    3476 	.db 0x94
      008B1A 80                    3477 	.db 0x80
      008B1B E2                    3478 	.db 0xe2
      008B1C 94                    3479 	.db 0x94
      008B1D 80                    3480 	.db 0x80
      008B1E E2                    3481 	.db 0xe2
      008B1F 94                    3482 	.db 0x94
      008B20 80                    3483 	.db 0x80
      008B21 E2                    3484 	.db 0xe2
      008B22 94                    3485 	.db 0x94
      008B23 80                    3486 	.db 0x80
      008B24 E2                    3487 	.db 0xe2
      008B25 94                    3488 	.db 0x94
      008B26 80                    3489 	.db 0x80
      008B27 E2                    3490 	.db 0xe2
      008B28 94                    3491 	.db 0x94
      008B29 80                    3492 	.db 0x80
      008B2A E2                    3493 	.db 0xe2
      008B2B 94                    3494 	.db 0x94
      008B2C 80                    3495 	.db 0x80
      008B2D E2                    3496 	.db 0xe2
      008B2E 94                    3497 	.db 0x94
      008B2F 80                    3498 	.db 0x80
      008B30 E2                    3499 	.db 0xe2
      008B31 94                    3500 	.db 0x94
      008B32 80                    3501 	.db 0x80
      008B33 E2                    3502 	.db 0xe2
      008B34 94                    3503 	.db 0x94
      008B35 80                    3504 	.db 0x80
      008B36 E2                    3505 	.db 0xe2
      008B37 94                    3506 	.db 0x94
      008B38 80                    3507 	.db 0x80
      008B39 E2                    3508 	.db 0xe2
      008B3A 94                    3509 	.db 0x94
      008B3B 80                    3510 	.db 0x80
      008B3C E2                    3511 	.db 0xe2
      008B3D 94                    3512 	.db 0x94
      008B3E 80                    3513 	.db 0x80
      008B3F E2                    3514 	.db 0xe2
      008B40 94                    3515 	.db 0x94
      008B41 80                    3516 	.db 0x80
      008B42 E2                    3517 	.db 0xe2
      008B43 94                    3518 	.db 0x94
      008B44 80                    3519 	.db 0x80
      008B45 E2                    3520 	.db 0xe2
      008B46 94                    3521 	.db 0x94
      008B47 80                    3522 	.db 0x80
      008B48 E2                    3523 	.db 0xe2
      008B49 94                    3524 	.db 0x94
      008B4A 80                    3525 	.db 0x80
      008B4B E2                    3526 	.db 0xe2
      008B4C 94                    3527 	.db 0x94
      008B4D 80                    3528 	.db 0x80
      008B4E E2                    3529 	.db 0xe2
      008B4F 94                    3530 	.db 0x94
      008B50 80                    3531 	.db 0x80
      008B51 E2                    3532 	.db 0xe2
      008B52 94                    3533 	.db 0x94
      008B53 80                    3534 	.db 0x80
      008B54 E2                    3535 	.db 0xe2
      008B55 94                    3536 	.db 0x94
      008B56 80                    3537 	.db 0x80
      008B57 E2                    3538 	.db 0xe2
      008B58 94                    3539 	.db 0x94
      008B59 80                    3540 	.db 0x80
      008B5A E2                    3541 	.db 0xe2
      008B5B 94                    3542 	.db 0x94
      008B5C 80                    3543 	.db 0x80
      008B5D E2                    3544 	.db 0xe2
      008B5E 94                    3545 	.db 0x94
      008B5F 80                    3546 	.db 0x80
      008B60 E2                    3547 	.db 0xe2
      008B61 94                    3548 	.db 0x94
      008B62 80                    3549 	.db 0x80
      008B63 E2                    3550 	.db 0xe2
      008B64 94                    3551 	.db 0x94
      008B65 98                    3552 	.db 0x98
      008B66 0A                    3553 	.db 0x0a
      008B67 0D                    3554 	.db 0x0d
      008B68 00                    3555 	.db 0x00
                                   3556 	.area CSEG    (CODE)
                                   3557 	.area CONST   (CODE)
      008B69                       3558 ___str_13:
      008B69 7C 20 24 20 25 63     3559 	.ascii "| $ %c"
      008B6F 0A                    3560 	.db 0x0a
      008B70 0D                    3561 	.db 0x0d
      008B71 00                    3562 	.db 0x00
                                   3563 	.area CSEG    (CODE)
                                   3564 	.area CONST   (CODE)
      008B72                       3565 ___str_14:
      008B72 0A                    3566 	.db 0x0a
      008B73 E2                    3567 	.db 0xe2
      008B74 94                    3568 	.db 0x94
      008B75 8C                    3569 	.db 0x8c
      008B76 E2                    3570 	.db 0xe2
      008B77 94                    3571 	.db 0x94
      008B78 80                    3572 	.db 0x80
      008B79 E2                    3573 	.db 0xe2
      008B7A 94                    3574 	.db 0x94
      008B7B 80                    3575 	.db 0x80
      008B7C E2                    3576 	.db 0xe2
      008B7D 94                    3577 	.db 0x94
      008B7E 80                    3578 	.db 0x80
      008B7F E2                    3579 	.db 0xe2
      008B80 94                    3580 	.db 0x94
      008B81 80                    3581 	.db 0x80
      008B82 E2                    3582 	.db 0xe2
      008B83 94                    3583 	.db 0x94
      008B84 80                    3584 	.db 0x80
      008B85 E2                    3585 	.db 0xe2
      008B86 94                    3586 	.db 0x94
      008B87 80                    3587 	.db 0x80
      008B88 E2                    3588 	.db 0xe2
      008B89 94                    3589 	.db 0x94
      008B8A 80                    3590 	.db 0x80
      008B8B E2                    3591 	.db 0xe2
      008B8C 94                    3592 	.db 0x94
      008B8D 80                    3593 	.db 0x80
      008B8E E2                    3594 	.db 0xe2
      008B8F 94                    3595 	.db 0x94
      008B90 80                    3596 	.db 0x80
      008B91 E2                    3597 	.db 0xe2
      008B92 94                    3598 	.db 0x94
      008B93 80                    3599 	.db 0x80
      008B94 E2                    3600 	.db 0xe2
      008B95 94                    3601 	.db 0x94
      008B96 80                    3602 	.db 0x80
      008B97 E2                    3603 	.db 0xe2
      008B98 94                    3604 	.db 0x94
      008B99 80                    3605 	.db 0x80
      008B9A E2                    3606 	.db 0xe2
      008B9B 94                    3607 	.db 0x94
      008B9C 80                    3608 	.db 0x80
      008B9D E2                    3609 	.db 0xe2
      008B9E 94                    3610 	.db 0x94
      008B9F 80                    3611 	.db 0x80
      008BA0 E2                    3612 	.db 0xe2
      008BA1 94                    3613 	.db 0x94
      008BA2 80                    3614 	.db 0x80
      008BA3 20 57 52 49 54 45 20  3615 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      008BB4 E2                    3616 	.db 0xe2
      008BB5 94                    3617 	.db 0x94
      008BB6 80                    3618 	.db 0x80
      008BB7 E2                    3619 	.db 0xe2
      008BB8 94                    3620 	.db 0x94
      008BB9 80                    3621 	.db 0x80
      008BBA E2                    3622 	.db 0xe2
      008BBB 94                    3623 	.db 0x94
      008BBC 80                    3624 	.db 0x80
      008BBD E2                    3625 	.db 0xe2
      008BBE 94                    3626 	.db 0x94
      008BBF 80                    3627 	.db 0x80
      008BC0 E2                    3628 	.db 0xe2
      008BC1 94                    3629 	.db 0x94
      008BC2 80                    3630 	.db 0x80
      008BC3 E2                    3631 	.db 0xe2
      008BC4 94                    3632 	.db 0x94
      008BC5 80                    3633 	.db 0x80
      008BC6 E2                    3634 	.db 0xe2
      008BC7 94                    3635 	.db 0x94
      008BC8 80                    3636 	.db 0x80
      008BC9 E2                    3637 	.db 0xe2
      008BCA 94                    3638 	.db 0x94
      008BCB 80                    3639 	.db 0x80
      008BCC E2                    3640 	.db 0xe2
      008BCD 94                    3641 	.db 0x94
      008BCE 80                    3642 	.db 0x80
      008BCF E2                    3643 	.db 0xe2
      008BD0 94                    3644 	.db 0x94
      008BD1 80                    3645 	.db 0x80
      008BD2 E2                    3646 	.db 0xe2
      008BD3 94                    3647 	.db 0x94
      008BD4 80                    3648 	.db 0x80
      008BD5 E2                    3649 	.db 0xe2
      008BD6 94                    3650 	.db 0x94
      008BD7 80                    3651 	.db 0x80
      008BD8 E2                    3652 	.db 0xe2
      008BD9 94                    3653 	.db 0x94
      008BDA 80                    3654 	.db 0x80
      008BDB E2                    3655 	.db 0xe2
      008BDC 94                    3656 	.db 0x94
      008BDD 80                    3657 	.db 0x80
      008BDE E2                    3658 	.db 0xe2
      008BDF 94                    3659 	.db 0x94
      008BE0 90                    3660 	.db 0x90
      008BE1 0A                    3661 	.db 0x0a
      008BE2 0D                    3662 	.db 0x0d
      008BE3 00                    3663 	.db 0x00
                                   3664 	.area CSEG    (CODE)
                                   3665 	.area CONST   (CODE)
      008BE4                       3666 ___str_15:
      008BE4 63 68 65 63 6B 20 70  3667 	.ascii "check point 1 "
             6F 69 6E 74 20 31 20
      008BF2 0A                    3668 	.db 0x0a
      008BF3 0D                    3669 	.db 0x0d
      008BF4 00                    3670 	.db 0x00
                                   3671 	.area CSEG    (CODE)
                                   3672 	.area CONST   (CODE)
      008BF5                       3673 ___str_16:
      008BF5 0A                    3674 	.db 0x0a
      008BF6 E2                    3675 	.db 0xe2
      008BF7 94                    3676 	.db 0x94
      008BF8 8C                    3677 	.db 0x8c
      008BF9 E2                    3678 	.db 0xe2
      008BFA 94                    3679 	.db 0x94
      008BFB 80                    3680 	.db 0x80
      008BFC E2                    3681 	.db 0xe2
      008BFD 94                    3682 	.db 0x94
      008BFE 80                    3683 	.db 0x80
      008BFF E2                    3684 	.db 0xe2
      008C00 94                    3685 	.db 0x94
      008C01 80                    3686 	.db 0x80
      008C02 E2                    3687 	.db 0xe2
      008C03 94                    3688 	.db 0x94
      008C04 80                    3689 	.db 0x80
      008C05 E2                    3690 	.db 0xe2
      008C06 94                    3691 	.db 0x94
      008C07 80                    3692 	.db 0x80
      008C08 E2                    3693 	.db 0xe2
      008C09 94                    3694 	.db 0x94
      008C0A 80                    3695 	.db 0x80
      008C0B E2                    3696 	.db 0xe2
      008C0C 94                    3697 	.db 0x94
      008C0D 80                    3698 	.db 0x80
      008C0E E2                    3699 	.db 0xe2
      008C0F 94                    3700 	.db 0x94
      008C10 80                    3701 	.db 0x80
      008C11 E2                    3702 	.db 0xe2
      008C12 94                    3703 	.db 0x94
      008C13 80                    3704 	.db 0x80
      008C14 E2                    3705 	.db 0xe2
      008C15 94                    3706 	.db 0x94
      008C16 80                    3707 	.db 0x80
      008C17 E2                    3708 	.db 0xe2
      008C18 94                    3709 	.db 0x94
      008C19 80                    3710 	.db 0x80
      008C1A E2                    3711 	.db 0xe2
      008C1B 94                    3712 	.db 0x94
      008C1C 80                    3713 	.db 0x80
      008C1D E2                    3714 	.db 0xe2
      008C1E 94                    3715 	.db 0x94
      008C1F 80                    3716 	.db 0x80
      008C20 E2                    3717 	.db 0xe2
      008C21 94                    3718 	.db 0x94
      008C22 80                    3719 	.db 0x80
      008C23 E2                    3720 	.db 0xe2
      008C24 94                    3721 	.db 0x94
      008C25 80                    3722 	.db 0x80
      008C26 20 52 45 41 44 20 4F  3723 	.ascii " READ OPERATION "
             50 45 52 41 54 49 4F
             4E 20
      008C36 E2                    3724 	.db 0xe2
      008C37 94                    3725 	.db 0x94
      008C38 80                    3726 	.db 0x80
      008C39 E2                    3727 	.db 0xe2
      008C3A 94                    3728 	.db 0x94
      008C3B 80                    3729 	.db 0x80
      008C3C E2                    3730 	.db 0xe2
      008C3D 94                    3731 	.db 0x94
      008C3E 80                    3732 	.db 0x80
      008C3F E2                    3733 	.db 0xe2
      008C40 94                    3734 	.db 0x94
      008C41 80                    3735 	.db 0x80
      008C42 E2                    3736 	.db 0xe2
      008C43 94                    3737 	.db 0x94
      008C44 80                    3738 	.db 0x80
      008C45 E2                    3739 	.db 0xe2
      008C46 94                    3740 	.db 0x94
      008C47 80                    3741 	.db 0x80
      008C48 E2                    3742 	.db 0xe2
      008C49 94                    3743 	.db 0x94
      008C4A 80                    3744 	.db 0x80
      008C4B E2                    3745 	.db 0xe2
      008C4C 94                    3746 	.db 0x94
      008C4D 80                    3747 	.db 0x80
      008C4E E2                    3748 	.db 0xe2
      008C4F 94                    3749 	.db 0x94
      008C50 80                    3750 	.db 0x80
      008C51 E2                    3751 	.db 0xe2
      008C52 94                    3752 	.db 0x94
      008C53 80                    3753 	.db 0x80
      008C54 E2                    3754 	.db 0xe2
      008C55 94                    3755 	.db 0x94
      008C56 80                    3756 	.db 0x80
      008C57 E2                    3757 	.db 0xe2
      008C58 94                    3758 	.db 0x94
      008C59 80                    3759 	.db 0x80
      008C5A E2                    3760 	.db 0xe2
      008C5B 94                    3761 	.db 0x94
      008C5C 80                    3762 	.db 0x80
      008C5D E2                    3763 	.db 0xe2
      008C5E 94                    3764 	.db 0x94
      008C5F 80                    3765 	.db 0x80
      008C60 E2                    3766 	.db 0xe2
      008C61 94                    3767 	.db 0x94
      008C62 80                    3768 	.db 0x80
      008C63 E2                    3769 	.db 0xe2
      008C64 94                    3770 	.db 0x94
      008C65 90                    3771 	.db 0x90
      008C66 0A                    3772 	.db 0x0a
      008C67 0D                    3773 	.db 0x0d
      008C68 00                    3774 	.db 0x00
                                   3775 	.area CSEG    (CODE)
                                   3776 	.area CONST   (CODE)
      008C69                       3777 ___str_17:
      008C69 7C 20 52 65 61 64 69  3778 	.ascii "| Reading from Address 0x%03X           |"
             6E 67 20 66 72 6F 6D
             20 41 64 64 72 65 73
             73 20 30 78 25 30 33
             58 20 20 20 20 20 20
             20 20 20 20 20 7C
      008C92 0A                    3779 	.db 0x0a
      008C93 0D                    3780 	.db 0x0d
      008C94 00                    3781 	.db 0x00
                                   3782 	.area CSEG    (CODE)
                                   3783 	.area CONST   (CODE)
      008C95                       3784 ___str_18:
      008C95 49 4E 56 41 4C 49 44  3785 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      008CA2 0A                    3786 	.db 0x0a
      008CA3 0D                    3787 	.db 0x0d
      008CA4 00                    3788 	.db 0x00
                                   3789 	.area CSEG    (CODE)
                                   3790 	.area CONST   (CODE)
      008CA5                       3791 ___str_19:
      008CA5 E2                    3792 	.db 0xe2
      008CA6 94                    3793 	.db 0x94
      008CA7 82                    3794 	.db 0x82
      008CA8 20 45 6E 74 65 72 20  3795 	.ascii " Enter address (hex, up to 3 characters): "
             61 64 64 72 65 73 73
             20 28 68 65 78 2C 20
             75 70 20 74 6F 20 33
             20 63 68 61 72 61 63
             74 65 72 73 29 3A 20
      008CD2 0A                    3796 	.db 0x0a
      008CD3 0D                    3797 	.db 0x0d
      008CD4 7C                    3798 	.ascii "|"
      008CD5 00                    3799 	.db 0x00
                                   3800 	.area CSEG    (CODE)
                                   3801 	.area CONST   (CODE)
      008CD6                       3802 ___str_20:
      008CD6 7C 20 24 20           3803 	.ascii "| $ "
      008CDA 00                    3804 	.db 0x00
                                   3805 	.area CSEG    (CODE)
                                   3806 	.area CONST   (CODE)
      008CDB                       3807 ___str_21:
      008CDB 0A                    3808 	.db 0x0a
      008CDC 0D                    3809 	.db 0x0d
      008CDD E2                    3810 	.db 0xe2
      008CDE 94                    3811 	.db 0x94
      008CDF 82                    3812 	.db 0x82
      008CE0 20 45 6E 74 65 72 65  3813 	.ascii " Entered address: 0x%03X"
             64 20 61 64 64 72 65
             73 73 3A 20 30 78 25
             30 33 58
      008CF8 0A                    3814 	.db 0x0a
      008CF9 0D                    3815 	.db 0x0d
      008CFA 00                    3816 	.db 0x00
                                   3817 	.area CSEG    (CODE)
                                   3818 	.area CONST   (CODE)
      008CFB                       3819 ___str_22:
      008CFB E2                    3820 	.db 0xe2
      008CFC 95                    3821 	.db 0x95
      008CFD 94                    3822 	.db 0x94
      008CFE E2                    3823 	.db 0xe2
      008CFF 95                    3824 	.db 0x95
      008D00 90                    3825 	.db 0x90
      008D01 E2                    3826 	.db 0xe2
      008D02 95                    3827 	.db 0x95
      008D03 90                    3828 	.db 0x90
      008D04 E2                    3829 	.db 0xe2
      008D05 95                    3830 	.db 0x95
      008D06 90                    3831 	.db 0x90
      008D07 E2                    3832 	.db 0xe2
      008D08 95                    3833 	.db 0x95
      008D09 90                    3834 	.db 0x90
      008D0A E2                    3835 	.db 0xe2
      008D0B 95                    3836 	.db 0x95
      008D0C 90                    3837 	.db 0x90
      008D0D E2                    3838 	.db 0xe2
      008D0E 95                    3839 	.db 0x95
      008D0F 90                    3840 	.db 0x90
      008D10 E2                    3841 	.db 0xe2
      008D11 95                    3842 	.db 0x95
      008D12 90                    3843 	.db 0x90
      008D13 E2                    3844 	.db 0xe2
      008D14 95                    3845 	.db 0x95
      008D15 90                    3846 	.db 0x90
      008D16 E2                    3847 	.db 0xe2
      008D17 95                    3848 	.db 0x95
      008D18 90                    3849 	.db 0x90
      008D19 E2                    3850 	.db 0xe2
      008D1A 95                    3851 	.db 0x95
      008D1B 90                    3852 	.db 0x90
      008D1C E2                    3853 	.db 0xe2
      008D1D 95                    3854 	.db 0x95
      008D1E 90                    3855 	.db 0x90
      008D1F E2                    3856 	.db 0xe2
      008D20 95                    3857 	.db 0x95
      008D21 90                    3858 	.db 0x90
      008D22 E2                    3859 	.db 0xe2
      008D23 95                    3860 	.db 0x95
      008D24 90                    3861 	.db 0x90
      008D25 E2                    3862 	.db 0xe2
      008D26 95                    3863 	.db 0x95
      008D27 90                    3864 	.db 0x90
      008D28 E2                    3865 	.db 0xe2
      008D29 95                    3866 	.db 0x95
      008D2A 90                    3867 	.db 0x90
      008D2B E2                    3868 	.db 0xe2
      008D2C 95                    3869 	.db 0x95
      008D2D 90                    3870 	.db 0x90
      008D2E E2                    3871 	.db 0xe2
      008D2F 95                    3872 	.db 0x95
      008D30 90                    3873 	.db 0x90
      008D31 E2                    3874 	.db 0xe2
      008D32 95                    3875 	.db 0x95
      008D33 90                    3876 	.db 0x90
      008D34 E2                    3877 	.db 0xe2
      008D35 95                    3878 	.db 0x95
      008D36 90                    3879 	.db 0x90
      008D37 E2                    3880 	.db 0xe2
      008D38 95                    3881 	.db 0x95
      008D39 90                    3882 	.db 0x90
      008D3A E2                    3883 	.db 0xe2
      008D3B 95                    3884 	.db 0x95
      008D3C 90                    3885 	.db 0x90
      008D3D E2                    3886 	.db 0xe2
      008D3E 95                    3887 	.db 0x95
      008D3F 90                    3888 	.db 0x90
      008D40 E2                    3889 	.db 0xe2
      008D41 95                    3890 	.db 0x95
      008D42 90                    3891 	.db 0x90
      008D43 E2                    3892 	.db 0xe2
      008D44 95                    3893 	.db 0x95
      008D45 90                    3894 	.db 0x90
      008D46 E2                    3895 	.db 0xe2
      008D47 95                    3896 	.db 0x95
      008D48 90                    3897 	.db 0x90
      008D49 E2                    3898 	.db 0xe2
      008D4A 95                    3899 	.db 0x95
      008D4B 90                    3900 	.db 0x90
      008D4C E2                    3901 	.db 0xe2
      008D4D 95                    3902 	.db 0x95
      008D4E 90                    3903 	.db 0x90
      008D4F E2                    3904 	.db 0xe2
      008D50 95                    3905 	.db 0x95
      008D51 90                    3906 	.db 0x90
      008D52 E2                    3907 	.db 0xe2
      008D53 95                    3908 	.db 0x95
      008D54 90                    3909 	.db 0x90
      008D55 E2                    3910 	.db 0xe2
      008D56 95                    3911 	.db 0x95
      008D57 90                    3912 	.db 0x90
      008D58 E2                    3913 	.db 0xe2
      008D59 95                    3914 	.db 0x95
      008D5A 90                    3915 	.db 0x90
      008D5B E2                    3916 	.db 0xe2
      008D5C 95                    3917 	.db 0x95
      008D5D 90                    3918 	.db 0x90
      008D5E E2                    3919 	.db 0xe2
      008D5F 95                    3920 	.db 0x95
      008D60 90                    3921 	.db 0x90
      008D61 E2                    3922 	.db 0xe2
      008D62 95                    3923 	.db 0x95
      008D63 90                    3924 	.db 0x90
      008D64 E2                    3925 	.db 0xe2
      008D65 95                    3926 	.db 0x95
      008D66 90                    3927 	.db 0x90
      008D67 E2                    3928 	.db 0xe2
      008D68 95                    3929 	.db 0x95
      008D69 90                    3930 	.db 0x90
      008D6A E2                    3931 	.db 0xe2
      008D6B 95                    3932 	.db 0x95
      008D6C 90                    3933 	.db 0x90
      008D6D E2                    3934 	.db 0xe2
      008D6E 95                    3935 	.db 0x95
      008D6F 90                    3936 	.db 0x90
      008D70 E2                    3937 	.db 0xe2
      008D71 95                    3938 	.db 0x95
      008D72 90                    3939 	.db 0x90
      008D73 E2                    3940 	.db 0xe2
      008D74 95                    3941 	.db 0x95
      008D75 90                    3942 	.db 0x90
      008D76 E2                    3943 	.db 0xe2
      008D77 95                    3944 	.db 0x95
      008D78 90                    3945 	.db 0x90
      008D79 E2                    3946 	.db 0xe2
      008D7A 95                    3947 	.db 0x95
      008D7B 90                    3948 	.db 0x90
      008D7C E2                    3949 	.db 0xe2
      008D7D 95                    3950 	.db 0x95
      008D7E 97                    3951 	.db 0x97
      008D7F 0A                    3952 	.db 0x0a
      008D80 0D                    3953 	.db 0x0d
      008D81 00                    3954 	.db 0x00
                                   3955 	.area CSEG    (CODE)
                                   3956 	.area CONST   (CODE)
      008D82                       3957 ___str_23:
      008D82 E2                    3958 	.db 0xe2
      008D83 95                    3959 	.db 0x95
      008D84 91                    3960 	.db 0x91
      008D85 20 20 20 20 20 20 20  3961 	.ascii "       ! ADDRESS OUT OF RANGE !         "
             21 20 41 44 44 52 45
             53 53 20 4F 55 54 20
             4F 46 20 52 41 4E 47
             45 20 21 20 20 20 20
             20 20 20 20 20
      008DAD E2                    3962 	.db 0xe2
      008DAE 95                    3963 	.db 0x95
      008DAF 91                    3964 	.db 0x91
      008DB0 0A                    3965 	.db 0x0a
      008DB1 0D                    3966 	.db 0x0d
      008DB2 00                    3967 	.db 0x00
                                   3968 	.area CSEG    (CODE)
                                   3969 	.area CONST   (CODE)
      008DB3                       3970 ___str_24:
      008DB3 E2                    3971 	.db 0xe2
      008DB4 95                    3972 	.db 0x95
      008DB5 91                    3973 	.db 0x91
      008DB6 20 20 20 20 20 50 6C  3974 	.ascii "     Please Enter Valid Address         "
             65 61 73 65 20 45 6E
             74 65 72 20 56 61 6C
             69 64 20 41 64 64 72
             65 73 73 20 20 20 20
             20 20 20 20 20
      008DDE E2                    3975 	.db 0xe2
      008DDF 95                    3976 	.db 0x95
      008DE0 91                    3977 	.db 0x91
      008DE1 0A                    3978 	.db 0x0a
      008DE2 0D                    3979 	.db 0x0d
      008DE3 00                    3980 	.db 0x00
                                   3981 	.area CSEG    (CODE)
                                   3982 	.area CONST   (CODE)
      008DE4                       3983 ___str_25:
      008DE4 E2                    3984 	.db 0xe2
      008DE5 95                    3985 	.db 0x95
      008DE6 9A                    3986 	.db 0x9a
      008DE7 E2                    3987 	.db 0xe2
      008DE8 95                    3988 	.db 0x95
      008DE9 90                    3989 	.db 0x90
      008DEA E2                    3990 	.db 0xe2
      008DEB 95                    3991 	.db 0x95
      008DEC 90                    3992 	.db 0x90
      008DED E2                    3993 	.db 0xe2
      008DEE 95                    3994 	.db 0x95
      008DEF 90                    3995 	.db 0x90
      008DF0 E2                    3996 	.db 0xe2
      008DF1 95                    3997 	.db 0x95
      008DF2 90                    3998 	.db 0x90
      008DF3 E2                    3999 	.db 0xe2
      008DF4 95                    4000 	.db 0x95
      008DF5 90                    4001 	.db 0x90
      008DF6 E2                    4002 	.db 0xe2
      008DF7 95                    4003 	.db 0x95
      008DF8 90                    4004 	.db 0x90
      008DF9 E2                    4005 	.db 0xe2
      008DFA 95                    4006 	.db 0x95
      008DFB 90                    4007 	.db 0x90
      008DFC E2                    4008 	.db 0xe2
      008DFD 95                    4009 	.db 0x95
      008DFE 90                    4010 	.db 0x90
      008DFF E2                    4011 	.db 0xe2
      008E00 95                    4012 	.db 0x95
      008E01 90                    4013 	.db 0x90
      008E02 E2                    4014 	.db 0xe2
      008E03 95                    4015 	.db 0x95
      008E04 90                    4016 	.db 0x90
      008E05 E2                    4017 	.db 0xe2
      008E06 95                    4018 	.db 0x95
      008E07 90                    4019 	.db 0x90
      008E08 E2                    4020 	.db 0xe2
      008E09 95                    4021 	.db 0x95
      008E0A 90                    4022 	.db 0x90
      008E0B E2                    4023 	.db 0xe2
      008E0C 95                    4024 	.db 0x95
      008E0D 90                    4025 	.db 0x90
      008E0E E2                    4026 	.db 0xe2
      008E0F 95                    4027 	.db 0x95
      008E10 90                    4028 	.db 0x90
      008E11 E2                    4029 	.db 0xe2
      008E12 95                    4030 	.db 0x95
      008E13 90                    4031 	.db 0x90
      008E14 E2                    4032 	.db 0xe2
      008E15 95                    4033 	.db 0x95
      008E16 90                    4034 	.db 0x90
      008E17 E2                    4035 	.db 0xe2
      008E18 95                    4036 	.db 0x95
      008E19 90                    4037 	.db 0x90
      008E1A E2                    4038 	.db 0xe2
      008E1B 95                    4039 	.db 0x95
      008E1C 90                    4040 	.db 0x90
      008E1D E2                    4041 	.db 0xe2
      008E1E 95                    4042 	.db 0x95
      008E1F 90                    4043 	.db 0x90
      008E20 E2                    4044 	.db 0xe2
      008E21 95                    4045 	.db 0x95
      008E22 90                    4046 	.db 0x90
      008E23 E2                    4047 	.db 0xe2
      008E24 95                    4048 	.db 0x95
      008E25 90                    4049 	.db 0x90
      008E26 E2                    4050 	.db 0xe2
      008E27 95                    4051 	.db 0x95
      008E28 90                    4052 	.db 0x90
      008E29 E2                    4053 	.db 0xe2
      008E2A 95                    4054 	.db 0x95
      008E2B 90                    4055 	.db 0x90
      008E2C E2                    4056 	.db 0xe2
      008E2D 95                    4057 	.db 0x95
      008E2E 90                    4058 	.db 0x90
      008E2F E2                    4059 	.db 0xe2
      008E30 95                    4060 	.db 0x95
      008E31 90                    4061 	.db 0x90
      008E32 E2                    4062 	.db 0xe2
      008E33 95                    4063 	.db 0x95
      008E34 90                    4064 	.db 0x90
      008E35 E2                    4065 	.db 0xe2
      008E36 95                    4066 	.db 0x95
      008E37 90                    4067 	.db 0x90
      008E38 E2                    4068 	.db 0xe2
      008E39 95                    4069 	.db 0x95
      008E3A 90                    4070 	.db 0x90
      008E3B E2                    4071 	.db 0xe2
      008E3C 95                    4072 	.db 0x95
      008E3D 90                    4073 	.db 0x90
      008E3E E2                    4074 	.db 0xe2
      008E3F 95                    4075 	.db 0x95
      008E40 90                    4076 	.db 0x90
      008E41 E2                    4077 	.db 0xe2
      008E42 95                    4078 	.db 0x95
      008E43 90                    4079 	.db 0x90
      008E44 E2                    4080 	.db 0xe2
      008E45 95                    4081 	.db 0x95
      008E46 90                    4082 	.db 0x90
      008E47 E2                    4083 	.db 0xe2
      008E48 95                    4084 	.db 0x95
      008E49 90                    4085 	.db 0x90
      008E4A E2                    4086 	.db 0xe2
      008E4B 95                    4087 	.db 0x95
      008E4C 90                    4088 	.db 0x90
      008E4D E2                    4089 	.db 0xe2
      008E4E 95                    4090 	.db 0x95
      008E4F 90                    4091 	.db 0x90
      008E50 E2                    4092 	.db 0xe2
      008E51 95                    4093 	.db 0x95
      008E52 90                    4094 	.db 0x90
      008E53 E2                    4095 	.db 0xe2
      008E54 95                    4096 	.db 0x95
      008E55 90                    4097 	.db 0x90
      008E56 E2                    4098 	.db 0xe2
      008E57 95                    4099 	.db 0x95
      008E58 90                    4100 	.db 0x90
      008E59 E2                    4101 	.db 0xe2
      008E5A 95                    4102 	.db 0x95
      008E5B 90                    4103 	.db 0x90
      008E5C E2                    4104 	.db 0xe2
      008E5D 95                    4105 	.db 0x95
      008E5E 90                    4106 	.db 0x90
      008E5F E2                    4107 	.db 0xe2
      008E60 95                    4108 	.db 0x95
      008E61 90                    4109 	.db 0x90
      008E62 E2                    4110 	.db 0xe2
      008E63 95                    4111 	.db 0x95
      008E64 90                    4112 	.db 0x90
      008E65 E2                    4113 	.db 0xe2
      008E66 95                    4114 	.db 0x95
      008E67 9D                    4115 	.db 0x9d
      008E68 0A                    4116 	.db 0x0a
      008E69 0D                    4117 	.db 0x0d
      008E6A 00                    4118 	.db 0x00
                                   4119 	.area CSEG    (CODE)
                                   4120 	.area CONST   (CODE)
      008E6B                       4121 ___str_26:
      008E6B E2                    4122 	.db 0xe2
      008E6C 94                    4123 	.db 0x94
      008E6D 82                    4124 	.db 0x82
      008E6E 20 45 6E 74 65 72 20  4125 	.ascii " Enter data (hex, up to 2 characters): "
             64 61 74 61 20 28 68
             65 78 2C 20 75 70 20
             74 6F 20 32 20 63 68
             61 72 61 63 74 65 72
             73 29 3A 20
      008E95 0A                    4126 	.db 0x0a
      008E96 0D                    4127 	.db 0x0d
      008E97 7C                    4128 	.ascii "|"
      008E98 00                    4129 	.db 0x00
                                   4130 	.area CSEG    (CODE)
                                   4131 	.area CONST   (CODE)
      008E99                       4132 ___str_27:
      008E99 24 20                 4133 	.ascii "$ "
      008E9B 00                    4134 	.db 0x00
                                   4135 	.area CSEG    (CODE)
                                   4136 	.area CONST   (CODE)
      008E9C                       4137 ___str_28:
      008E9C 0A                    4138 	.db 0x0a
      008E9D 0D                    4139 	.db 0x0d
      008E9E E2                    4140 	.db 0xe2
      008E9F 94                    4141 	.db 0x94
      008EA0 82                    4142 	.db 0x82
      008EA1 20 45 6E 74 65 72 65  4143 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      008EB6 0A                    4144 	.db 0x0a
      008EB7 0D                    4145 	.db 0x0d
      008EB8 00                    4146 	.db 0x00
                                   4147 	.area CSEG    (CODE)
                                   4148 	.area CONST   (CODE)
      008EB9                       4149 ___str_29:
      008EB9 44 61 74 61 20 6F 75  4150 	.ascii "Data out of Range"
             74 20 6F 66 20 52 61
             6E 67 65
      008ECA 0A                    4151 	.db 0x0a
      008ECB 0D                    4152 	.db 0x0d
      008ECC 00                    4153 	.db 0x00
                                   4154 	.area CSEG    (CODE)
                                   4155 	.area CONST   (CODE)
      008ECD                       4156 ___str_30:
      008ECD 45 72 72 6F 72 3A 20  4157 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      008EF5 0A                    4158 	.db 0x0a
      008EF6 0D                    4159 	.db 0x0d
      008EF7 00                    4160 	.db 0x00
                                   4161 	.area CSEG    (CODE)
                                   4162 	.area CONST   (CODE)
      008EF8                       4163 ___str_31:
      008EF8 45 72 72 6F 72 3A 20  4164 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      008F18 0A                    4165 	.db 0x0a
      008F19 0D                    4166 	.db 0x0d
      008F1A 00                    4167 	.db 0x00
                                   4168 	.area CSEG    (CODE)
                                   4169 	.area CONST   (CODE)
      008F1B                       4170 ___str_32:
      008F1B 45 72 72 6F 72 3A 20  4171 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      008F31 0A                    4172 	.db 0x0a
      008F32 0D                    4173 	.db 0x0d
      008F33 00                    4174 	.db 0x00
                                   4175 	.area CSEG    (CODE)
                                   4176 	.area CONST   (CODE)
      008F34                       4177 ___str_33:
      008F34 7C 20 57 72 69 74 69  4178 	.ascii "| Writing at Address 0x%03X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 33 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      008F66 0A                    4179 	.db 0x0a
      008F67 0D                    4180 	.db 0x0d
      008F68 00                    4181 	.db 0x00
                                   4182 	.area CSEG    (CODE)
                                   4183 	.area CONST   (CODE)
      008F69                       4184 ___str_34:
      008F69 E2                    4185 	.db 0xe2
      008F6A 94                    4186 	.db 0x94
      008F6B 82                    4187 	.db 0x82
      008F6C 20 57 72 69 74 65 20  4188 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      008F9B E2                    4189 	.db 0xe2
      008F9C 94                    4190 	.db 0x94
      008F9D 82                    4191 	.db 0x82
      008F9E 0A                    4192 	.db 0x0a
      008F9F 0D                    4193 	.db 0x0d
      008FA0 00                    4194 	.db 0x00
                                   4195 	.area CSEG    (CODE)
                                   4196 	.area CONST   (CODE)
      008FA1                       4197 ___str_35:
      008FA1 E2                    4198 	.db 0xe2
      008FA2 94                    4199 	.db 0x94
      008FA3 94                    4200 	.db 0x94
      008FA4 E2                    4201 	.db 0xe2
      008FA5 94                    4202 	.db 0x94
      008FA6 80                    4203 	.db 0x80
      008FA7 E2                    4204 	.db 0xe2
      008FA8 94                    4205 	.db 0x94
      008FA9 80                    4206 	.db 0x80
      008FAA E2                    4207 	.db 0xe2
      008FAB 94                    4208 	.db 0x94
      008FAC 80                    4209 	.db 0x80
      008FAD E2                    4210 	.db 0xe2
      008FAE 94                    4211 	.db 0x94
      008FAF 80                    4212 	.db 0x80
      008FB0 E2                    4213 	.db 0xe2
      008FB1 94                    4214 	.db 0x94
      008FB2 80                    4215 	.db 0x80
      008FB3 E2                    4216 	.db 0xe2
      008FB4 94                    4217 	.db 0x94
      008FB5 80                    4218 	.db 0x80
      008FB6 E2                    4219 	.db 0xe2
      008FB7 94                    4220 	.db 0x94
      008FB8 80                    4221 	.db 0x80
      008FB9 E2                    4222 	.db 0xe2
      008FBA 94                    4223 	.db 0x94
      008FBB 80                    4224 	.db 0x80
      008FBC E2                    4225 	.db 0xe2
      008FBD 94                    4226 	.db 0x94
      008FBE 80                    4227 	.db 0x80
      008FBF E2                    4228 	.db 0xe2
      008FC0 94                    4229 	.db 0x94
      008FC1 80                    4230 	.db 0x80
      008FC2 E2                    4231 	.db 0xe2
      008FC3 94                    4232 	.db 0x94
      008FC4 80                    4233 	.db 0x80
      008FC5 E2                    4234 	.db 0xe2
      008FC6 94                    4235 	.db 0x94
      008FC7 80                    4236 	.db 0x80
      008FC8 E2                    4237 	.db 0xe2
      008FC9 94                    4238 	.db 0x94
      008FCA 80                    4239 	.db 0x80
      008FCB E2                    4240 	.db 0xe2
      008FCC 94                    4241 	.db 0x94
      008FCD 80                    4242 	.db 0x80
      008FCE E2                    4243 	.db 0xe2
      008FCF 94                    4244 	.db 0x94
      008FD0 80                    4245 	.db 0x80
      008FD1 E2                    4246 	.db 0xe2
      008FD2 94                    4247 	.db 0x94
      008FD3 80                    4248 	.db 0x80
      008FD4 E2                    4249 	.db 0xe2
      008FD5 94                    4250 	.db 0x94
      008FD6 80                    4251 	.db 0x80
      008FD7 E2                    4252 	.db 0xe2
      008FD8 94                    4253 	.db 0x94
      008FD9 80                    4254 	.db 0x80
      008FDA E2                    4255 	.db 0xe2
      008FDB 94                    4256 	.db 0x94
      008FDC 80                    4257 	.db 0x80
      008FDD E2                    4258 	.db 0xe2
      008FDE 94                    4259 	.db 0x94
      008FDF 80                    4260 	.db 0x80
      008FE0 E2                    4261 	.db 0xe2
      008FE1 94                    4262 	.db 0x94
      008FE2 80                    4263 	.db 0x80
      008FE3 E2                    4264 	.db 0xe2
      008FE4 94                    4265 	.db 0x94
      008FE5 80                    4266 	.db 0x80
      008FE6 E2                    4267 	.db 0xe2
      008FE7 94                    4268 	.db 0x94
      008FE8 80                    4269 	.db 0x80
      008FE9 E2                    4270 	.db 0xe2
      008FEA 94                    4271 	.db 0x94
      008FEB 80                    4272 	.db 0x80
      008FEC E2                    4273 	.db 0xe2
      008FED 94                    4274 	.db 0x94
      008FEE 80                    4275 	.db 0x80
      008FEF E2                    4276 	.db 0xe2
      008FF0 94                    4277 	.db 0x94
      008FF1 80                    4278 	.db 0x80
      008FF2 E2                    4279 	.db 0xe2
      008FF3 94                    4280 	.db 0x94
      008FF4 80                    4281 	.db 0x80
      008FF5 E2                    4282 	.db 0xe2
      008FF6 94                    4283 	.db 0x94
      008FF7 80                    4284 	.db 0x80
      008FF8 E2                    4285 	.db 0xe2
      008FF9 94                    4286 	.db 0x94
      008FFA 80                    4287 	.db 0x80
      008FFB E2                    4288 	.db 0xe2
      008FFC 94                    4289 	.db 0x94
      008FFD 80                    4290 	.db 0x80
      008FFE E2                    4291 	.db 0xe2
      008FFF 94                    4292 	.db 0x94
      009000 80                    4293 	.db 0x80
      009001 E2                    4294 	.db 0xe2
      009002 94                    4295 	.db 0x94
      009003 80                    4296 	.db 0x80
      009004 E2                    4297 	.db 0xe2
      009005 94                    4298 	.db 0x94
      009006 80                    4299 	.db 0x80
      009007 E2                    4300 	.db 0xe2
      009008 94                    4301 	.db 0x94
      009009 80                    4302 	.db 0x80
      00900A E2                    4303 	.db 0xe2
      00900B 94                    4304 	.db 0x94
      00900C 80                    4305 	.db 0x80
      00900D E2                    4306 	.db 0xe2
      00900E 94                    4307 	.db 0x94
      00900F 80                    4308 	.db 0x80
      009010 E2                    4309 	.db 0xe2
      009011 94                    4310 	.db 0x94
      009012 80                    4311 	.db 0x80
      009013 E2                    4312 	.db 0xe2
      009014 94                    4313 	.db 0x94
      009015 80                    4314 	.db 0x80
      009016 E2                    4315 	.db 0xe2
      009017 94                    4316 	.db 0x94
      009018 80                    4317 	.db 0x80
      009019 E2                    4318 	.db 0xe2
      00901A 94                    4319 	.db 0x94
      00901B 80                    4320 	.db 0x80
      00901C E2                    4321 	.db 0xe2
      00901D 94                    4322 	.db 0x94
      00901E 80                    4323 	.db 0x80
      00901F E2                    4324 	.db 0xe2
      009020 94                    4325 	.db 0x94
      009021 80                    4326 	.db 0x80
      009022 E2                    4327 	.db 0xe2
      009023 94                    4328 	.db 0x94
      009024 80                    4329 	.db 0x80
      009025 E2                    4330 	.db 0xe2
      009026 94                    4331 	.db 0x94
      009027 80                    4332 	.db 0x80
      009028 E2                    4333 	.db 0xe2
      009029 94                    4334 	.db 0x94
      00902A 80                    4335 	.db 0x80
      00902B E2                    4336 	.db 0xe2
      00902C 94                    4337 	.db 0x94
      00902D 80                    4338 	.db 0x80
      00902E E2                    4339 	.db 0xe2
      00902F 94                    4340 	.db 0x94
      009030 80                    4341 	.db 0x80
      009031 E2                    4342 	.db 0xe2
      009032 94                    4343 	.db 0x94
      009033 98                    4344 	.db 0x98
      009034 0A                    4345 	.db 0x0a
      009035 0D                    4346 	.db 0x0d
      009036 00                    4347 	.db 0x00
                                   4348 	.area CSEG    (CODE)
                                   4349 	.area CONST   (CODE)
      009037                       4350 ___str_36:
      009037 45 72 72 6F 72 3A 20  4351 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      009064 0A                    4352 	.db 0x0a
      009065 0D                    4353 	.db 0x0d
      009066 00                    4354 	.db 0x00
                                   4355 	.area CSEG    (CODE)
                                   4356 	.area CONST   (CODE)
      009067                       4357 ___str_37:
      009067 45 72 72 6F 72 3A 20  4358 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      009093 0A                    4359 	.db 0x0a
      009094 0D                    4360 	.db 0x0d
      009095 00                    4361 	.db 0x00
                                   4362 	.area CSEG    (CODE)
                                   4363 	.area CONST   (CODE)
      009096                       4364 ___str_38:
      009096 E2                    4365 	.db 0xe2
      009097 94                    4366 	.db 0x94
      009098 82                    4367 	.db 0x82
      009099 20 52 65 61 64 69 6E  4368 	.ascii " Reading from Adress: 0x%03X Data: 0x%02X                   "
             67 20 66 72 6F 6D 20
             41 64 72 65 73 73 3A
             20 30 78 25 30 33 58
             20 44 61 74 61 3A 20
             30 78 25 30 32 58 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      0090D5 20                    4369 	.ascii " "
      0090D6 0A                    4370 	.db 0x0a
      0090D7 0D                    4371 	.db 0x0d
      0090D8 00                    4372 	.db 0x00
                                   4373 	.area CSEG    (CODE)
                                   4374 	.area CONST   (CODE)
      0090D9                       4375 ___str_39:
      0090D9 7C 20 30 78 25 30 33  4376 	.ascii "| 0x%03X : 0x%02X "
             58 20 3A 20 30 78 25
             30 32 58 20
      0090EB 0A                    4377 	.db 0x0a
      0090EC 0D                    4378 	.db 0x0d
      0090ED 00                    4379 	.db 0x00
                                   4380 	.area CSEG    (CODE)
                                   4381 	.area CONST   (CODE)
      0090EE                       4382 ___str_40:
      0090EE E2                    4383 	.db 0xe2
      0090EF 94                    4384 	.db 0x94
      0090F0 82                    4385 	.db 0x82
      0090F1 20 52 65 61 64 20 73  4386 	.ascii " Read successful!                 "
             75 63 63 65 73 73 66
             75 6C 21 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20
      009113 E2                    4387 	.db 0xe2
      009114 94                    4388 	.db 0x94
      009115 82                    4389 	.db 0x82
      009116 0A                    4390 	.db 0x0a
      009117 0D                    4391 	.db 0x0d
      009118 00                    4392 	.db 0x00
                                   4393 	.area CSEG    (CODE)
                                   4394 	.area CONST   (CODE)
      009119                       4395 ___str_41:
      009119 41 43 4B 20 44 49 44  4396 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      00912B 0A                    4397 	.db 0x0a
      00912C 0D                    4398 	.db 0x0d
      00912D 00                    4399 	.db 0x00
                                   4400 	.area CSEG    (CODE)
                                   4401 	.area CONST   (CODE)
      00912E                       4402 ___str_42:
      00912E 57 72 69 74 69 6E 67  4403 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      009153 0A                    4404 	.db 0x0a
      009154 0D                    4405 	.db 0x0d
      009155 00                    4406 	.db 0x00
                                   4407 	.area CSEG    (CODE)
                                   4408 	.area CONST   (CODE)
      009156                       4409 ___str_43:
      009156 52 65 61 64 20 62 61  4410 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      00917B 0A                    4411 	.db 0x0a
      00917C 0D                    4412 	.db 0x0d
      00917D 00                    4413 	.db 0x00
                                   4414 	.area CSEG    (CODE)
                                   4415 	.area CONST   (CODE)
      00917E                       4416 ___str_44:
      00917E 4D 41 54 43 48 20 2D  4417 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      00919C 0A                    4418 	.db 0x0a
      00919D 0D                    4419 	.db 0x0d
      00919E 00                    4420 	.db 0x00
                                   4421 	.area CSEG    (CODE)
                                   4422 	.area CONST   (CODE)
      00919F                       4423 ___str_45:
      00919F 45 52 52 4F 52 20 2D  4424 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      0091B5 0A                    4425 	.db 0x0a
      0091B6 0D                    4426 	.db 0x0d
      0091B7 00                    4427 	.db 0x00
                                   4428 	.area CSEG    (CODE)
                                   4429 	.area XINIT   (CODE)
      0091C3                       4430 __xinit__address_range_flag:
      0091C3 01 00                 4431 	.byte #0x01, #0x00	;  1
      0091C5                       4432 __xinit__data_range_flag:
      0091C5 01 00                 4433 	.byte #0x01, #0x00	;  1
      0091C7                       4434 __xinit__block:
      0091C7 00 00                 4435 	.byte #0x00, #0x00	; 0
                                   4436 	.area CABS    (ABS,CODE)
