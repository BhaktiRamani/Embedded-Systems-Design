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
                                     17 	.globl _strtol
                                     18 	.globl _printf
                                     19 	.globl _P5_7
                                     20 	.globl _P5_6
                                     21 	.globl _P5_5
                                     22 	.globl _P5_4
                                     23 	.globl _P5_3
                                     24 	.globl _P5_2
                                     25 	.globl _P5_1
                                     26 	.globl _P5_0
                                     27 	.globl _P4_7
                                     28 	.globl _P4_6
                                     29 	.globl _P4_5
                                     30 	.globl _P4_4
                                     31 	.globl _P4_3
                                     32 	.globl _P4_2
                                     33 	.globl _P4_1
                                     34 	.globl _P4_0
                                     35 	.globl _PX0L
                                     36 	.globl _PT0L
                                     37 	.globl _PX1L
                                     38 	.globl _PT1L
                                     39 	.globl _PSL
                                     40 	.globl _PT2L
                                     41 	.globl _PPCL
                                     42 	.globl _EC
                                     43 	.globl _CCF0
                                     44 	.globl _CCF1
                                     45 	.globl _CCF2
                                     46 	.globl _CCF3
                                     47 	.globl _CCF4
                                     48 	.globl _CR
                                     49 	.globl _CF
                                     50 	.globl _TF2
                                     51 	.globl _EXF2
                                     52 	.globl _RCLK
                                     53 	.globl _TCLK
                                     54 	.globl _EXEN2
                                     55 	.globl _TR2
                                     56 	.globl _C_T2
                                     57 	.globl _CP_RL2
                                     58 	.globl _T2CON_7
                                     59 	.globl _T2CON_6
                                     60 	.globl _T2CON_5
                                     61 	.globl _T2CON_4
                                     62 	.globl _T2CON_3
                                     63 	.globl _T2CON_2
                                     64 	.globl _T2CON_1
                                     65 	.globl _T2CON_0
                                     66 	.globl _PT2
                                     67 	.globl _ET2
                                     68 	.globl _CY
                                     69 	.globl _AC
                                     70 	.globl _F0
                                     71 	.globl _RS1
                                     72 	.globl _RS0
                                     73 	.globl _OV
                                     74 	.globl _F1
                                     75 	.globl _P
                                     76 	.globl _PS
                                     77 	.globl _PT1
                                     78 	.globl _PX1
                                     79 	.globl _PT0
                                     80 	.globl _PX0
                                     81 	.globl _RD
                                     82 	.globl _WR
                                     83 	.globl _T1
                                     84 	.globl _T0
                                     85 	.globl _INT1
                                     86 	.globl _INT0
                                     87 	.globl _TXD
                                     88 	.globl _RXD
                                     89 	.globl _P3_7
                                     90 	.globl _P3_6
                                     91 	.globl _P3_5
                                     92 	.globl _P3_4
                                     93 	.globl _P3_3
                                     94 	.globl _P3_2
                                     95 	.globl _P3_1
                                     96 	.globl _P3_0
                                     97 	.globl _EA
                                     98 	.globl _ES
                                     99 	.globl _ET1
                                    100 	.globl _EX1
                                    101 	.globl _ET0
                                    102 	.globl _EX0
                                    103 	.globl _P2_7
                                    104 	.globl _P2_6
                                    105 	.globl _P2_5
                                    106 	.globl _P2_4
                                    107 	.globl _P2_3
                                    108 	.globl _P2_2
                                    109 	.globl _P2_1
                                    110 	.globl _P2_0
                                    111 	.globl _SM0
                                    112 	.globl _SM1
                                    113 	.globl _SM2
                                    114 	.globl _REN
                                    115 	.globl _TB8
                                    116 	.globl _RB8
                                    117 	.globl _TI
                                    118 	.globl _RI
                                    119 	.globl _P1_7
                                    120 	.globl _P1_6
                                    121 	.globl _P1_5
                                    122 	.globl _P1_4
                                    123 	.globl _P1_3
                                    124 	.globl _P1_2
                                    125 	.globl _P1_1
                                    126 	.globl _P1_0
                                    127 	.globl _TF1
                                    128 	.globl _TR1
                                    129 	.globl _TF0
                                    130 	.globl _TR0
                                    131 	.globl _IE1
                                    132 	.globl _IT1
                                    133 	.globl _IE0
                                    134 	.globl _IT0
                                    135 	.globl _P0_7
                                    136 	.globl _P0_6
                                    137 	.globl _P0_5
                                    138 	.globl _P0_4
                                    139 	.globl _P0_3
                                    140 	.globl _P0_2
                                    141 	.globl _P0_1
                                    142 	.globl _P0_0
                                    143 	.globl _EECON
                                    144 	.globl _KBF
                                    145 	.globl _KBE
                                    146 	.globl _KBLS
                                    147 	.globl _BRL
                                    148 	.globl _BDRCON
                                    149 	.globl _T2MOD
                                    150 	.globl _SPDAT
                                    151 	.globl _SPSTA
                                    152 	.globl _SPCON
                                    153 	.globl _SADEN
                                    154 	.globl _SADDR
                                    155 	.globl _WDTPRG
                                    156 	.globl _WDTRST
                                    157 	.globl _P5
                                    158 	.globl _P4
                                    159 	.globl _IPH1
                                    160 	.globl _IPL1
                                    161 	.globl _IPH0
                                    162 	.globl _IPL0
                                    163 	.globl _IEN1
                                    164 	.globl _IEN0
                                    165 	.globl _CMOD
                                    166 	.globl _CL
                                    167 	.globl _CH
                                    168 	.globl _CCON
                                    169 	.globl _CCAPM4
                                    170 	.globl _CCAPM3
                                    171 	.globl _CCAPM2
                                    172 	.globl _CCAPM1
                                    173 	.globl _CCAPM0
                                    174 	.globl _CCAP4L
                                    175 	.globl _CCAP3L
                                    176 	.globl _CCAP2L
                                    177 	.globl _CCAP1L
                                    178 	.globl _CCAP0L
                                    179 	.globl _CCAP4H
                                    180 	.globl _CCAP3H
                                    181 	.globl _CCAP2H
                                    182 	.globl _CCAP1H
                                    183 	.globl _CCAP0H
                                    184 	.globl _CKCON1
                                    185 	.globl _CKCON0
                                    186 	.globl _CKRL
                                    187 	.globl _AUXR1
                                    188 	.globl _AUXR
                                    189 	.globl _TH2
                                    190 	.globl _TL2
                                    191 	.globl _RCAP2H
                                    192 	.globl _RCAP2L
                                    193 	.globl _T2CON
                                    194 	.globl _B
                                    195 	.globl _ACC
                                    196 	.globl _PSW
                                    197 	.globl _IP
                                    198 	.globl _P3
                                    199 	.globl _IE
                                    200 	.globl _P2
                                    201 	.globl _SBUF
                                    202 	.globl _SCON
                                    203 	.globl _P1
                                    204 	.globl _TH1
                                    205 	.globl _TH0
                                    206 	.globl _TL1
                                    207 	.globl _TL0
                                    208 	.globl _TMOD
                                    209 	.globl _TCON
                                    210 	.globl _PCON
                                    211 	.globl _DPH
                                    212 	.globl _DPL
                                    213 	.globl _SP
                                    214 	.globl _P0
                                    215 	.globl _eeprom_write_PARM_2
                                    216 	.globl _ACK
                                    217 	.globl _take_address
                                    218 	.globl _take_data
                                    219 	.globl _eeprom_write
                                    220 	.globl _eeprom_read
                                    221 	.globl _i2c_write
                                    222 	.globl _i2c_read
                                    223 	.globl _i2c_start
                                    224 	.globl _i2c_stop
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
      000021                        448 __start__stack:
      000021                        449 	.ds	1
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
      000404                        476 _take_address_input_65537_62:
      000404                        477 	.ds 4
      000408                        478 _take_data_input_65536_65:
      000408                        479 	.ds 3
      00040B                        480 _eeprom_write_PARM_2:
      00040B                        481 	.ds 1
      00040C                        482 _eeprom_write_address_65536_68:
      00040C                        483 	.ds 2
      00040E                        484 _eeprom_read_address_65536_75:
      00040E                        485 	.ds 2
      000410                        486 _i2c_write_data_65536_80:
      000410                        487 	.ds 1
      000411                        488 _i2c_read_ACK_65536_85:
      000411                        489 	.ds 2
      000413                        490 _i2c_read_buff_65536_86:
      000413                        491 	.ds 1
                                    492 ;--------------------------------------------------------
                                    493 ; absolute external ram data
                                    494 ;--------------------------------------------------------
                                    495 	.area XABS    (ABS,XDATA)
                                    496 ;--------------------------------------------------------
                                    497 ; external initialized ram data
                                    498 ;--------------------------------------------------------
                                    499 	.area XISEG   (XDATA)
                                    500 	.area HOME    (CODE)
                                    501 	.area GSINIT0 (CODE)
                                    502 	.area GSINIT1 (CODE)
                                    503 	.area GSINIT2 (CODE)
                                    504 	.area GSINIT3 (CODE)
                                    505 	.area GSINIT4 (CODE)
                                    506 	.area GSINIT5 (CODE)
                                    507 	.area GSINIT  (CODE)
                                    508 	.area GSFINAL (CODE)
                                    509 	.area CSEG    (CODE)
                                    510 ;--------------------------------------------------------
                                    511 ; interrupt vector 
                                    512 ;--------------------------------------------------------
                                    513 	.area HOME    (CODE)
      003000                        514 __interrupt_vect:
      003000 02 30 34         [24]  515 	ljmp	__sdcc_gsinit_startup
                                    516 ;--------------------------------------------------------
                                    517 ; global & static initialisations
                                    518 ;--------------------------------------------------------
                                    519 	.area HOME    (CODE)
                                    520 	.area GSINIT  (CODE)
                                    521 	.area GSFINAL (CODE)
                                    522 	.area GSINIT  (CODE)
                                    523 	.globl __sdcc_gsinit_startup
                                    524 	.globl __sdcc_program_startup
                                    525 	.globl __start__stack
                                    526 	.globl __mcs51_genXINIT
                                    527 	.globl __mcs51_genXRAMCLEAR
                                    528 	.globl __mcs51_genRAMCLEAR
                                    529 	.area GSFINAL (CODE)
      00308D 02 30 03         [24]  530 	ljmp	__sdcc_program_startup
                                    531 ;--------------------------------------------------------
                                    532 ; Home
                                    533 ;--------------------------------------------------------
                                    534 	.area HOME    (CODE)
                                    535 	.area HOME    (CODE)
      003003                        536 __sdcc_program_startup:
      003003 02 31 D0         [24]  537 	ljmp	_main
                                    538 ;	return from main will return to caller
                                    539 ;--------------------------------------------------------
                                    540 ; code
                                    541 ;--------------------------------------------------------
                                    542 	.area CSEG    (CODE)
                                    543 ;------------------------------------------------------------
                                    544 ;Allocation info for local variables in function 'putchar'
                                    545 ;------------------------------------------------------------
                                    546 ;charToSend                Allocated with name '_putchar_charToSend_65536_48'
                                    547 ;------------------------------------------------------------
                                    548 ;	8051_i2c_eeprom.c:26: int putchar(int charToSend) {
                                    549 ;	-----------------------------------------
                                    550 ;	 function putchar
                                    551 ;	-----------------------------------------
      003090                        552 _putchar:
                           000007   553 	ar7 = 0x07
                           000006   554 	ar6 = 0x06
                           000005   555 	ar5 = 0x05
                           000004   556 	ar4 = 0x04
                           000003   557 	ar3 = 0x03
                           000002   558 	ar2 = 0x02
                           000001   559 	ar1 = 0x01
                           000000   560 	ar0 = 0x00
      003090 AF 83            [24]  561 	mov	r7,dph
      003092 E5 82            [12]  562 	mov	a,dpl
      003094 90 04 02         [24]  563 	mov	dptr,#_putchar_charToSend_65536_48
      003097 F0               [24]  564 	movx	@dptr,a
      003098 EF               [12]  565 	mov	a,r7
      003099 A3               [24]  566 	inc	dptr
      00309A F0               [24]  567 	movx	@dptr,a
                                    568 ;	8051_i2c_eeprom.c:27: SBUF = charToSend;  // Send character to serial buffer
      00309B 90 04 02         [24]  569 	mov	dptr,#_putchar_charToSend_65536_48
      00309E E0               [24]  570 	movx	a,@dptr
      00309F FE               [12]  571 	mov	r6,a
      0030A0 A3               [24]  572 	inc	dptr
      0030A1 E0               [24]  573 	movx	a,@dptr
      0030A2 FF               [12]  574 	mov	r7,a
      0030A3 8E 99            [24]  575 	mov	_SBUF,r6
                                    576 ;	8051_i2c_eeprom.c:28: while (!TI);        // Wait for transmission to complete
      0030A5                        577 00101$:
                                    578 ;	8051_i2c_eeprom.c:29: TI = 0;            // Clear transmission interrupt flag
                                    579 ;	assignBit
      0030A5 10 99 02         [24]  580 	jbc	_TI,00114$
      0030A8 80 FB            [24]  581 	sjmp	00101$
      0030AA                        582 00114$:
                                    583 ;	8051_i2c_eeprom.c:30: return charToSend;
      0030AA 8E 82            [24]  584 	mov	dpl,r6
      0030AC 8F 83            [24]  585 	mov	dph,r7
                                    586 ;	8051_i2c_eeprom.c:31: }
      0030AE 22               [24]  587 	ret
                                    588 ;------------------------------------------------------------
                                    589 ;Allocation info for local variables in function 'getchar'
                                    590 ;------------------------------------------------------------
                                    591 ;	8051_i2c_eeprom.c:33: int getchar(void) 
                                    592 ;	-----------------------------------------
                                    593 ;	 function getchar
                                    594 ;	-----------------------------------------
      0030AF                        595 _getchar:
                                    596 ;	8051_i2c_eeprom.c:35: while (!RI);        // Wait for reception to complete
      0030AF                        597 00101$:
                                    598 ;	8051_i2c_eeprom.c:36: RI = 0;            // Clear reception interrupt flag
                                    599 ;	assignBit
      0030AF 10 98 02         [24]  600 	jbc	_RI,00114$
      0030B2 80 FB            [24]  601 	sjmp	00101$
      0030B4                        602 00114$:
                                    603 ;	8051_i2c_eeprom.c:37: return SBUF;       // Return received character
      0030B4 AE 99            [24]  604 	mov	r6,_SBUF
      0030B6 7F 00            [12]  605 	mov	r7,#0x00
      0030B8 8E 82            [24]  606 	mov	dpl,r6
      0030BA 8F 83            [24]  607 	mov	dph,r7
                                    608 ;	8051_i2c_eeprom.c:38: }
      0030BC 22               [24]  609 	ret
                                    610 ;------------------------------------------------------------
                                    611 ;Allocation info for local variables in function 'ui'
                                    612 ;------------------------------------------------------------
                                    613 ;	8051_i2c_eeprom.c:40: void ui()
                                    614 ;	-----------------------------------------
                                    615 ;	 function ui
                                    616 ;	-----------------------------------------
      0030BD                        617 _ui:
                                    618 ;	8051_i2c_eeprom.c:42: printf("\n╔════════════════════════════════════════════════════════╗\n\r");
      0030BD 74 7F            [12]  619 	mov	a,#___str_0
      0030BF C0 E0            [24]  620 	push	acc
      0030C1 74 4A            [12]  621 	mov	a,#(___str_0 >> 8)
      0030C3 C0 E0            [24]  622 	push	acc
      0030C5 74 80            [12]  623 	mov	a,#0x80
      0030C7 C0 E0            [24]  624 	push	acc
      0030C9 12 3F B1         [24]  625 	lcall	_printf
      0030CC 15 81            [12]  626 	dec	sp
      0030CE 15 81            [12]  627 	dec	sp
      0030D0 15 81            [12]  628 	dec	sp
                                    629 ;	8051_i2c_eeprom.c:43: printf("║           I2C Memory Management System v1.0             ║\n\r");
      0030D2 74 31            [12]  630 	mov	a,#___str_1
      0030D4 C0 E0            [24]  631 	push	acc
      0030D6 74 4B            [12]  632 	mov	a,#(___str_1 >> 8)
      0030D8 C0 E0            [24]  633 	push	acc
      0030DA 74 80            [12]  634 	mov	a,#0x80
      0030DC C0 E0            [24]  635 	push	acc
      0030DE 12 3F B1         [24]  636 	lcall	_printf
      0030E1 15 81            [12]  637 	dec	sp
      0030E3 15 81            [12]  638 	dec	sp
      0030E5 15 81            [12]  639 	dec	sp
                                    640 ;	8051_i2c_eeprom.c:44: printf("╚════════════════════════════════════════════════════════╝\n\r");
      0030E7 74 73            [12]  641 	mov	a,#___str_2
      0030E9 C0 E0            [24]  642 	push	acc
      0030EB 74 4B            [12]  643 	mov	a,#(___str_2 >> 8)
      0030ED C0 E0            [24]  644 	push	acc
      0030EF 74 80            [12]  645 	mov	a,#0x80
      0030F1 C0 E0            [24]  646 	push	acc
      0030F3 12 3F B1         [24]  647 	lcall	_printf
      0030F6 15 81            [12]  648 	dec	sp
      0030F8 15 81            [12]  649 	dec	sp
      0030FA 15 81            [12]  650 	dec	sp
                                    651 ;	8051_i2c_eeprom.c:46: }
      0030FC 22               [24]  652 	ret
                                    653 ;------------------------------------------------------------
                                    654 ;Allocation info for local variables in function 'command_menu'
                                    655 ;------------------------------------------------------------
                                    656 ;	8051_i2c_eeprom.c:48: void command_menu()
                                    657 ;	-----------------------------------------
                                    658 ;	 function command_menu
                                    659 ;	-----------------------------------------
      0030FD                        660 _command_menu:
                                    661 ;	8051_i2c_eeprom.c:50: printf("\n\r┌────────────┬────────────────────────────────────────────┐\n\r");
      0030FD 74 24            [12]  662 	mov	a,#___str_3
      0030FF C0 E0            [24]  663 	push	acc
      003101 74 4C            [12]  664 	mov	a,#(___str_3 >> 8)
      003103 C0 E0            [24]  665 	push	acc
      003105 74 80            [12]  666 	mov	a,#0x80
      003107 C0 E0            [24]  667 	push	acc
      003109 12 3F B1         [24]  668 	lcall	_printf
      00310C 15 81            [12]  669 	dec	sp
      00310E 15 81            [12]  670 	dec	sp
      003110 15 81            [12]  671 	dec	sp
                                    672 ;	8051_i2c_eeprom.c:51: printf("│  Command   │               Description                   │\n\r");
      003112 74 DA            [12]  673 	mov	a,#___str_4
      003114 C0 E0            [24]  674 	push	acc
      003116 74 4C            [12]  675 	mov	a,#(___str_4 >> 8)
      003118 C0 E0            [24]  676 	push	acc
      00311A 74 80            [12]  677 	mov	a,#0x80
      00311C C0 E0            [24]  678 	push	acc
      00311E 12 3F B1         [24]  679 	lcall	_printf
      003121 15 81            [12]  680 	dec	sp
      003123 15 81            [12]  681 	dec	sp
      003125 15 81            [12]  682 	dec	sp
                                    683 ;	8051_i2c_eeprom.c:52: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      003127 74 1F            [12]  684 	mov	a,#___str_5
      003129 C0 E0            [24]  685 	push	acc
      00312B 74 4D            [12]  686 	mov	a,#(___str_5 >> 8)
      00312D C0 E0            [24]  687 	push	acc
      00312F 74 80            [12]  688 	mov	a,#0x80
      003131 C0 E0            [24]  689 	push	acc
      003133 12 3F B1         [24]  690 	lcall	_printf
      003136 15 81            [12]  691 	dec	sp
      003138 15 81            [12]  692 	dec	sp
      00313A 15 81            [12]  693 	dec	sp
                                    694 ;	8051_i2c_eeprom.c:53: printf("│     R      │ Read from address                          │\n\r");
      00313C 74 D3            [12]  695 	mov	a,#___str_6
      00313E C0 E0            [24]  696 	push	acc
      003140 74 4D            [12]  697 	mov	a,#(___str_6 >> 8)
      003142 C0 E0            [24]  698 	push	acc
      003144 74 80            [12]  699 	mov	a,#0x80
      003146 C0 E0            [24]  700 	push	acc
      003148 12 3F B1         [24]  701 	lcall	_printf
      00314B 15 81            [12]  702 	dec	sp
      00314D 15 81            [12]  703 	dec	sp
      00314F 15 81            [12]  704 	dec	sp
                                    705 ;	8051_i2c_eeprom.c:54: printf("│     W      │ Write data to address                      │\n\r");
      003151 74 17            [12]  706 	mov	a,#___str_7
      003153 C0 E0            [24]  707 	push	acc
      003155 74 4E            [12]  708 	mov	a,#(___str_7 >> 8)
      003157 C0 E0            [24]  709 	push	acc
      003159 74 80            [12]  710 	mov	a,#0x80
      00315B C0 E0            [24]  711 	push	acc
      00315D 12 3F B1         [24]  712 	lcall	_printf
      003160 15 81            [12]  713 	dec	sp
      003162 15 81            [12]  714 	dec	sp
      003164 15 81            [12]  715 	dec	sp
                                    716 ;	8051_i2c_eeprom.c:55: printf("│     H      │ Display hex dump                           │\n\r");
      003166 74 5B            [12]  717 	mov	a,#___str_8
      003168 C0 E0            [24]  718 	push	acc
      00316A 74 4E            [12]  719 	mov	a,#(___str_8 >> 8)
      00316C C0 E0            [24]  720 	push	acc
      00316E 74 80            [12]  721 	mov	a,#0x80
      003170 C0 E0            [24]  722 	push	acc
      003172 12 3F B1         [24]  723 	lcall	_printf
      003175 15 81            [12]  724 	dec	sp
      003177 15 81            [12]  725 	dec	sp
      003179 15 81            [12]  726 	dec	sp
                                    727 ;	8051_i2c_eeprom.c:56: printf("│     X      │ Reset memory system                        │\n\r");
      00317B 74 9F            [12]  728 	mov	a,#___str_9
      00317D C0 E0            [24]  729 	push	acc
      00317F 74 4E            [12]  730 	mov	a,#(___str_9 >> 8)
      003181 C0 E0            [24]  731 	push	acc
      003183 74 80            [12]  732 	mov	a,#0x80
      003185 C0 E0            [24]  733 	push	acc
      003187 12 3F B1         [24]  734 	lcall	_printf
      00318A 15 81            [12]  735 	dec	sp
      00318C 15 81            [12]  736 	dec	sp
      00318E 15 81            [12]  737 	dec	sp
                                    738 ;	8051_i2c_eeprom.c:57: printf("│     ?      │ Display this help menu                     │\n\r");
      003190 74 E3            [12]  739 	mov	a,#___str_10
      003192 C0 E0            [24]  740 	push	acc
      003194 74 4E            [12]  741 	mov	a,#(___str_10 >> 8)
      003196 C0 E0            [24]  742 	push	acc
      003198 74 80            [12]  743 	mov	a,#0x80
      00319A C0 E0            [24]  744 	push	acc
      00319C 12 3F B1         [24]  745 	lcall	_printf
      00319F 15 81            [12]  746 	dec	sp
      0031A1 15 81            [12]  747 	dec	sp
      0031A3 15 81            [12]  748 	dec	sp
                                    749 ;	8051_i2c_eeprom.c:58: printf("│     Q      │ Quit program                              │\n\r");
      0031A5 74 27            [12]  750 	mov	a,#___str_11
      0031A7 C0 E0            [24]  751 	push	acc
      0031A9 74 4F            [12]  752 	mov	a,#(___str_11 >> 8)
      0031AB C0 E0            [24]  753 	push	acc
      0031AD 74 80            [12]  754 	mov	a,#0x80
      0031AF C0 E0            [24]  755 	push	acc
      0031B1 12 3F B1         [24]  756 	lcall	_printf
      0031B4 15 81            [12]  757 	dec	sp
      0031B6 15 81            [12]  758 	dec	sp
      0031B8 15 81            [12]  759 	dec	sp
                                    760 ;	8051_i2c_eeprom.c:59: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      0031BA 74 6A            [12]  761 	mov	a,#___str_12
      0031BC C0 E0            [24]  762 	push	acc
      0031BE 74 4F            [12]  763 	mov	a,#(___str_12 >> 8)
      0031C0 C0 E0            [24]  764 	push	acc
      0031C2 74 80            [12]  765 	mov	a,#0x80
      0031C4 C0 E0            [24]  766 	push	acc
      0031C6 12 3F B1         [24]  767 	lcall	_printf
      0031C9 15 81            [12]  768 	dec	sp
      0031CB 15 81            [12]  769 	dec	sp
      0031CD 15 81            [12]  770 	dec	sp
                                    771 ;	8051_i2c_eeprom.c:62: }
      0031CF 22               [24]  772 	ret
                                    773 ;------------------------------------------------------------
                                    774 ;Allocation info for local variables in function 'main'
                                    775 ;------------------------------------------------------------
                                    776 ;user_input                Allocated with name '_main_user_input_131072_55'
                                    777 ;address                   Allocated with name '_main_address_262145_58'
                                    778 ;data                      Allocated with name '_main_data_262146_59'
                                    779 ;address                   Allocated with name '_main_address_262144_60'
                                    780 ;------------------------------------------------------------
                                    781 ;	8051_i2c_eeprom.c:63: int main()
                                    782 ;	-----------------------------------------
                                    783 ;	 function main
                                    784 ;	-----------------------------------------
      0031D0                        785 _main:
                                    786 ;	8051_i2c_eeprom.c:66: P1 &= ~(1<<3);  // Set P1.3 as output
      0031D0 53 90 F7         [24]  787 	anl	_P1,#0xf7
                                    788 ;	8051_i2c_eeprom.c:67: P1 &= ~(1<<4);  // Set P1.4 as output
      0031D3 53 90 EF         [24]  789 	anl	_P1,#0xef
                                    790 ;	8051_i2c_eeprom.c:68: ui();
      0031D6 12 30 BD         [24]  791 	lcall	_ui
                                    792 ;	8051_i2c_eeprom.c:69: command_menu();
      0031D9 12 30 FD         [24]  793 	lcall	_command_menu
                                    794 ;	8051_i2c_eeprom.c:70: while(1)
      0031DC                        795 00107$:
                                    796 ;	8051_i2c_eeprom.c:72: char user_input = getchar();
      0031DC 12 30 AF         [24]  797 	lcall	_getchar
      0031DF AE 82            [24]  798 	mov	r6,dpl
                                    799 ;	8051_i2c_eeprom.c:73: printf("$ %c\n\r", user_input);
      0031E1 8E 05            [24]  800 	mov	ar5,r6
      0031E3 7F 00            [12]  801 	mov	r7,#0x00
      0031E5 C0 06            [24]  802 	push	ar6
      0031E7 C0 05            [24]  803 	push	ar5
      0031E9 C0 07            [24]  804 	push	ar7
      0031EB 74 1E            [12]  805 	mov	a,#___str_13
      0031ED C0 E0            [24]  806 	push	acc
      0031EF 74 50            [12]  807 	mov	a,#(___str_13 >> 8)
      0031F1 C0 E0            [24]  808 	push	acc
      0031F3 74 80            [12]  809 	mov	a,#0x80
      0031F5 C0 E0            [24]  810 	push	acc
      0031F7 12 3F B1         [24]  811 	lcall	_printf
      0031FA E5 81            [12]  812 	mov	a,sp
      0031FC 24 FB            [12]  813 	add	a,#0xfb
      0031FE F5 81            [12]  814 	mov	sp,a
      003200 D0 06            [24]  815 	pop	ar6
                                    816 ;	8051_i2c_eeprom.c:74: switch(user_input)
      003202 BE 3F 03         [24]  817 	cjne	r6,#0x3f,00127$
      003205 02 32 7E         [24]  818 	ljmp	00103$
      003208                        819 00127$:
      003208 BE 52 02         [24]  820 	cjne	r6,#0x52,00128$
      00320B 80 68            [24]  821 	sjmp	00102$
      00320D                        822 00128$:
      00320D BE 57 74         [24]  823 	cjne	r6,#0x57,00104$
                                    824 ;	8051_i2c_eeprom.c:78: printf("\n┌─────────────── WRITE OPERATION ──────────────┐\n\r");
      003210 74 25            [12]  825 	mov	a,#___str_14
      003212 C0 E0            [24]  826 	push	acc
      003214 74 50            [12]  827 	mov	a,#(___str_14 >> 8)
      003216 C0 E0            [24]  828 	push	acc
      003218 74 80            [12]  829 	mov	a,#0x80
      00321A C0 E0            [24]  830 	push	acc
      00321C 12 3F B1         [24]  831 	lcall	_printf
      00321F 15 81            [12]  832 	dec	sp
      003221 15 81            [12]  833 	dec	sp
      003223 15 81            [12]  834 	dec	sp
                                    835 ;	8051_i2c_eeprom.c:80: address = take_address(); 
      003225 12 32 9C         [24]  836 	lcall	_take_address
      003228 AE 82            [24]  837 	mov	r6,dpl
      00322A AF 83            [24]  838 	mov	r7,dph
                                    839 ;	8051_i2c_eeprom.c:82: data = (unsigned char)take_data();
      00322C C0 07            [24]  840 	push	ar7
      00322E C0 06            [24]  841 	push	ar6
      003230 12 33 71         [24]  842 	lcall	_take_data
      003233 AC 82            [24]  843 	mov	r4,dpl
      003235 D0 06            [24]  844 	pop	ar6
      003237 D0 07            [24]  845 	pop	ar7
                                    846 ;	8051_i2c_eeprom.c:83: printf("| Writing at Address %d Data %c          |\n\r", address, data);
      003239 8C 03            [24]  847 	mov	ar3,r4
      00323B 7D 00            [12]  848 	mov	r5,#0x00
      00323D C0 07            [24]  849 	push	ar7
      00323F C0 06            [24]  850 	push	ar6
      003241 C0 04            [24]  851 	push	ar4
      003243 C0 03            [24]  852 	push	ar3
      003245 C0 05            [24]  853 	push	ar5
      003247 C0 06            [24]  854 	push	ar6
      003249 C0 07            [24]  855 	push	ar7
      00324B 74 97            [12]  856 	mov	a,#___str_15
      00324D C0 E0            [24]  857 	push	acc
      00324F 74 50            [12]  858 	mov	a,#(___str_15 >> 8)
      003251 C0 E0            [24]  859 	push	acc
      003253 74 80            [12]  860 	mov	a,#0x80
      003255 C0 E0            [24]  861 	push	acc
      003257 12 3F B1         [24]  862 	lcall	_printf
      00325A E5 81            [12]  863 	mov	a,sp
      00325C 24 F9            [12]  864 	add	a,#0xf9
      00325E F5 81            [12]  865 	mov	sp,a
      003260 D0 04            [24]  866 	pop	ar4
      003262 D0 06            [24]  867 	pop	ar6
      003264 D0 07            [24]  868 	pop	ar7
                                    869 ;	8051_i2c_eeprom.c:84: eeprom_write(address, data);
      003266 90 04 0B         [24]  870 	mov	dptr,#_eeprom_write_PARM_2
      003269 EC               [12]  871 	mov	a,r4
      00326A F0               [24]  872 	movx	@dptr,a
      00326B 8E 82            [24]  873 	mov	dpl,r6
      00326D 8F 83            [24]  874 	mov	dph,r7
      00326F 12 34 42         [24]  875 	lcall	_eeprom_write
                                    876 ;	8051_i2c_eeprom.c:85: break;
      003272 02 31 DC         [24]  877 	ljmp	00107$
                                    878 ;	8051_i2c_eeprom.c:87: case 'R':
      003275                        879 00102$:
                                    880 ;	8051_i2c_eeprom.c:90: address = take_address(); 
      003275 12 32 9C         [24]  881 	lcall	_take_address
                                    882 ;	8051_i2c_eeprom.c:91: eeprom_read(address);
      003278 12 35 7B         [24]  883 	lcall	_eeprom_read
                                    884 ;	8051_i2c_eeprom.c:92: break;
      00327B 02 31 DC         [24]  885 	ljmp	00107$
                                    886 ;	8051_i2c_eeprom.c:95: case '?':
      00327E                        887 00103$:
                                    888 ;	8051_i2c_eeprom.c:96: command_menu();
      00327E 12 30 FD         [24]  889 	lcall	_command_menu
                                    890 ;	8051_i2c_eeprom.c:97: break;
      003281 02 31 DC         [24]  891 	ljmp	00107$
                                    892 ;	8051_i2c_eeprom.c:99: default:
      003284                        893 00104$:
                                    894 ;	8051_i2c_eeprom.c:100: printf("INVALID INPUT\n\r");
      003284 74 C4            [12]  895 	mov	a,#___str_16
      003286 C0 E0            [24]  896 	push	acc
      003288 74 50            [12]  897 	mov	a,#(___str_16 >> 8)
      00328A C0 E0            [24]  898 	push	acc
      00328C 74 80            [12]  899 	mov	a,#0x80
      00328E C0 E0            [24]  900 	push	acc
      003290 12 3F B1         [24]  901 	lcall	_printf
      003293 15 81            [12]  902 	dec	sp
      003295 15 81            [12]  903 	dec	sp
      003297 15 81            [12]  904 	dec	sp
                                    905 ;	8051_i2c_eeprom.c:102: }
                                    906 ;	8051_i2c_eeprom.c:105: }
      003299 02 31 DC         [24]  907 	ljmp	00107$
                                    908 ;------------------------------------------------------------
                                    909 ;Allocation info for local variables in function 'take_address'
                                    910 ;------------------------------------------------------------
                                    911 ;input                     Allocated with name '_take_address_input_65537_62'
                                    912 ;i                         Allocated with name '_take_address_i_65537_62'
                                    913 ;address                   Allocated with name '_take_address_address_65538_64'
                                    914 ;------------------------------------------------------------
                                    915 ;	8051_i2c_eeprom.c:107: int take_address() {
                                    916 ;	-----------------------------------------
                                    917 ;	 function take_address
                                    918 ;	-----------------------------------------
      00329C                        919 _take_address:
                                    920 ;	8051_i2c_eeprom.c:108: printf("│ Enter address (hex, up to 3 characters): \n\r|");
      00329C 74 D4            [12]  921 	mov	a,#___str_17
      00329E C0 E0            [24]  922 	push	acc
      0032A0 74 50            [12]  923 	mov	a,#(___str_17 >> 8)
      0032A2 C0 E0            [24]  924 	push	acc
      0032A4 74 80            [12]  925 	mov	a,#0x80
      0032A6 C0 E0            [24]  926 	push	acc
      0032A8 12 3F B1         [24]  927 	lcall	_printf
      0032AB 15 81            [12]  928 	dec	sp
      0032AD 15 81            [12]  929 	dec	sp
      0032AF 15 81            [12]  930 	dec	sp
                                    931 ;	8051_i2c_eeprom.c:109: char input[4] = {0};  // Array to store hex input + null terminator
      0032B1 90 04 04         [24]  932 	mov	dptr,#_take_address_input_65537_62
      0032B4 E4               [12]  933 	clr	a
      0032B5 F0               [24]  934 	movx	@dptr,a
      0032B6 90 04 05         [24]  935 	mov	dptr,#(_take_address_input_65537_62 + 0x0001)
      0032B9 F0               [24]  936 	movx	@dptr,a
      0032BA 90 04 06         [24]  937 	mov	dptr,#(_take_address_input_65537_62 + 0x0002)
      0032BD F0               [24]  938 	movx	@dptr,a
      0032BE 90 04 07         [24]  939 	mov	dptr,#(_take_address_input_65537_62 + 0x0003)
      0032C1 F0               [24]  940 	movx	@dptr,a
                                    941 ;	8051_i2c_eeprom.c:113: while (i < 3) {
      0032C2 7E 00            [12]  942 	mov	r6,#0x00
      0032C4 7F 00            [12]  943 	mov	r7,#0x00
      0032C6                        944 00101$:
      0032C6 C3               [12]  945 	clr	c
      0032C7 EE               [12]  946 	mov	a,r6
      0032C8 94 03            [12]  947 	subb	a,#0x03
      0032CA EF               [12]  948 	mov	a,r7
      0032CB 64 80            [12]  949 	xrl	a,#0x80
      0032CD 94 80            [12]  950 	subb	a,#0x80
      0032CF 50 50            [24]  951 	jnc	00103$
                                    952 ;	8051_i2c_eeprom.c:114: input[i] = getchar();
      0032D1 EE               [12]  953 	mov	a,r6
      0032D2 24 04            [12]  954 	add	a,#_take_address_input_65537_62
      0032D4 FC               [12]  955 	mov	r4,a
      0032D5 EF               [12]  956 	mov	a,r7
      0032D6 34 04            [12]  957 	addc	a,#(_take_address_input_65537_62 >> 8)
      0032D8 FD               [12]  958 	mov	r5,a
      0032D9 C0 07            [24]  959 	push	ar7
      0032DB C0 06            [24]  960 	push	ar6
      0032DD C0 05            [24]  961 	push	ar5
      0032DF C0 04            [24]  962 	push	ar4
      0032E1 12 30 AF         [24]  963 	lcall	_getchar
      0032E4 AA 82            [24]  964 	mov	r2,dpl
      0032E6 D0 04            [24]  965 	pop	ar4
      0032E8 D0 05            [24]  966 	pop	ar5
      0032EA 8C 82            [24]  967 	mov	dpl,r4
      0032EC 8D 83            [24]  968 	mov	dph,r5
      0032EE EA               [12]  969 	mov	a,r2
      0032EF F0               [24]  970 	movx	@dptr,a
                                    971 ;	8051_i2c_eeprom.c:115: printf("$ %c", putchar(input[i]));
      0032F0 7D 00            [12]  972 	mov	r5,#0x00
      0032F2 8A 82            [24]  973 	mov	dpl,r2
      0032F4 8D 83            [24]  974 	mov	dph,r5
      0032F6 12 30 90         [24]  975 	lcall	_putchar
      0032F9 AC 82            [24]  976 	mov	r4,dpl
      0032FB AD 83            [24]  977 	mov	r5,dph
      0032FD C0 04            [24]  978 	push	ar4
      0032FF C0 05            [24]  979 	push	ar5
      003301 74 05            [12]  980 	mov	a,#___str_18
      003303 C0 E0            [24]  981 	push	acc
      003305 74 51            [12]  982 	mov	a,#(___str_18 >> 8)
      003307 C0 E0            [24]  983 	push	acc
      003309 74 80            [12]  984 	mov	a,#0x80
      00330B C0 E0            [24]  985 	push	acc
      00330D 12 3F B1         [24]  986 	lcall	_printf
      003310 E5 81            [12]  987 	mov	a,sp
      003312 24 FB            [12]  988 	add	a,#0xfb
      003314 F5 81            [12]  989 	mov	sp,a
      003316 D0 06            [24]  990 	pop	ar6
      003318 D0 07            [24]  991 	pop	ar7
                                    992 ;	8051_i2c_eeprom.c:116: i++;
      00331A 0E               [12]  993 	inc	r6
      00331B BE 00 A8         [24]  994 	cjne	r6,#0x00,00101$
      00331E 0F               [12]  995 	inc	r7
      00331F 80 A5            [24]  996 	sjmp	00101$
      003321                        997 00103$:
                                    998 ;	8051_i2c_eeprom.c:118: input[i] = '\0';  // Null-terminate the string
      003321 EE               [12]  999 	mov	a,r6
      003322 24 04            [12] 1000 	add	a,#_take_address_input_65537_62
      003324 F5 82            [12] 1001 	mov	dpl,a
      003326 EF               [12] 1002 	mov	a,r7
      003327 34 04            [12] 1003 	addc	a,#(_take_address_input_65537_62 >> 8)
      003329 F5 83            [12] 1004 	mov	dph,a
      00332B E4               [12] 1005 	clr	a
      00332C F0               [24] 1006 	movx	@dptr,a
                                   1007 ;	8051_i2c_eeprom.c:121: unsigned int address = (unsigned int)strtol(input, NULL, 16);
      00332D 90 04 14         [24] 1008 	mov	dptr,#_strtol_PARM_2
      003330 F0               [24] 1009 	movx	@dptr,a
      003331 A3               [24] 1010 	inc	dptr
      003332 F0               [24] 1011 	movx	@dptr,a
      003333 A3               [24] 1012 	inc	dptr
      003334 F0               [24] 1013 	movx	@dptr,a
      003335 90 04 17         [24] 1014 	mov	dptr,#_strtol_PARM_3
      003338 74 10            [12] 1015 	mov	a,#0x10
      00333A F0               [24] 1016 	movx	@dptr,a
      00333B E4               [12] 1017 	clr	a
      00333C A3               [24] 1018 	inc	dptr
      00333D F0               [24] 1019 	movx	@dptr,a
      00333E 90 04 04         [24] 1020 	mov	dptr,#_take_address_input_65537_62
      003341 75 F0 00         [24] 1021 	mov	b,#0x00
      003344 12 38 1C         [24] 1022 	lcall	_strtol
      003347 AC 82            [24] 1023 	mov	r4,dpl
      003349 AD 83            [24] 1024 	mov	r5,dph
                                   1025 ;	8051_i2c_eeprom.c:122: printf("address %d\n\r", address);
      00334B C0 05            [24] 1026 	push	ar5
      00334D C0 04            [24] 1027 	push	ar4
      00334F C0 04            [24] 1028 	push	ar4
      003351 C0 05            [24] 1029 	push	ar5
      003353 74 0A            [12] 1030 	mov	a,#___str_19
      003355 C0 E0            [24] 1031 	push	acc
      003357 74 51            [12] 1032 	mov	a,#(___str_19 >> 8)
      003359 C0 E0            [24] 1033 	push	acc
      00335B 74 80            [12] 1034 	mov	a,#0x80
      00335D C0 E0            [24] 1035 	push	acc
      00335F 12 3F B1         [24] 1036 	lcall	_printf
      003362 E5 81            [12] 1037 	mov	a,sp
      003364 24 FB            [12] 1038 	add	a,#0xfb
      003366 F5 81            [12] 1039 	mov	sp,a
      003368 D0 04            [24] 1040 	pop	ar4
      00336A D0 05            [24] 1041 	pop	ar5
                                   1042 ;	8051_i2c_eeprom.c:123: return address;
      00336C 8C 82            [24] 1043 	mov	dpl,r4
      00336E 8D 83            [24] 1044 	mov	dph,r5
                                   1045 ;	8051_i2c_eeprom.c:124: }
      003370 22               [24] 1046 	ret
                                   1047 ;------------------------------------------------------------
                                   1048 ;Allocation info for local variables in function 'take_data'
                                   1049 ;------------------------------------------------------------
                                   1050 ;input                     Allocated with name '_take_data_input_65536_65'
                                   1051 ;i                         Allocated with name '_take_data_i_65536_65'
                                   1052 ;value                     Allocated with name '_take_data_value_65537_67'
                                   1053 ;------------------------------------------------------------
                                   1054 ;	8051_i2c_eeprom.c:126: int take_data()
                                   1055 ;	-----------------------------------------
                                   1056 ;	 function take_data
                                   1057 ;	-----------------------------------------
      003371                       1058 _take_data:
                                   1059 ;	8051_i2c_eeprom.c:128: char input[3] = {0};  // Array to store up to 2 hex characters + null terminator
      003371 90 04 08         [24] 1060 	mov	dptr,#_take_data_input_65536_65
      003374 E4               [12] 1061 	clr	a
      003375 F0               [24] 1062 	movx	@dptr,a
      003376 90 04 09         [24] 1063 	mov	dptr,#(_take_data_input_65536_65 + 0x0001)
      003379 F0               [24] 1064 	movx	@dptr,a
      00337A 90 04 0A         [24] 1065 	mov	dptr,#(_take_data_input_65536_65 + 0x0002)
      00337D F0               [24] 1066 	movx	@dptr,a
                                   1067 ;	8051_i2c_eeprom.c:131: printf("|Enter a 2-digit hexadecimal value: \n\r|");
      00337E 74 17            [12] 1068 	mov	a,#___str_20
      003380 C0 E0            [24] 1069 	push	acc
      003382 74 51            [12] 1070 	mov	a,#(___str_20 >> 8)
      003384 C0 E0            [24] 1071 	push	acc
      003386 74 80            [12] 1072 	mov	a,#0x80
      003388 C0 E0            [24] 1073 	push	acc
      00338A 12 3F B1         [24] 1074 	lcall	_printf
      00338D 15 81            [12] 1075 	dec	sp
      00338F 15 81            [12] 1076 	dec	sp
      003391 15 81            [12] 1077 	dec	sp
                                   1078 ;	8051_i2c_eeprom.c:132: while (i < 2) {
      003393 7E 00            [12] 1079 	mov	r6,#0x00
      003395 7F 00            [12] 1080 	mov	r7,#0x00
      003397                       1081 00101$:
      003397 C3               [12] 1082 	clr	c
      003398 EE               [12] 1083 	mov	a,r6
      003399 94 02            [12] 1084 	subb	a,#0x02
      00339B EF               [12] 1085 	mov	a,r7
      00339C 64 80            [12] 1086 	xrl	a,#0x80
      00339E 94 80            [12] 1087 	subb	a,#0x80
      0033A0 50 50            [24] 1088 	jnc	00103$
                                   1089 ;	8051_i2c_eeprom.c:133: input[i] = getchar();
      0033A2 EE               [12] 1090 	mov	a,r6
      0033A3 24 08            [12] 1091 	add	a,#_take_data_input_65536_65
      0033A5 FC               [12] 1092 	mov	r4,a
      0033A6 EF               [12] 1093 	mov	a,r7
      0033A7 34 04            [12] 1094 	addc	a,#(_take_data_input_65536_65 >> 8)
      0033A9 FD               [12] 1095 	mov	r5,a
      0033AA C0 07            [24] 1096 	push	ar7
      0033AC C0 06            [24] 1097 	push	ar6
      0033AE C0 05            [24] 1098 	push	ar5
      0033B0 C0 04            [24] 1099 	push	ar4
      0033B2 12 30 AF         [24] 1100 	lcall	_getchar
      0033B5 AA 82            [24] 1101 	mov	r2,dpl
      0033B7 D0 04            [24] 1102 	pop	ar4
      0033B9 D0 05            [24] 1103 	pop	ar5
      0033BB 8C 82            [24] 1104 	mov	dpl,r4
      0033BD 8D 83            [24] 1105 	mov	dph,r5
      0033BF EA               [12] 1106 	mov	a,r2
      0033C0 F0               [24] 1107 	movx	@dptr,a
                                   1108 ;	8051_i2c_eeprom.c:134: printf("$ %c", putchar(input[i]));
      0033C1 7D 00            [12] 1109 	mov	r5,#0x00
      0033C3 8A 82            [24] 1110 	mov	dpl,r2
      0033C5 8D 83            [24] 1111 	mov	dph,r5
      0033C7 12 30 90         [24] 1112 	lcall	_putchar
      0033CA AC 82            [24] 1113 	mov	r4,dpl
      0033CC AD 83            [24] 1114 	mov	r5,dph
      0033CE C0 04            [24] 1115 	push	ar4
      0033D0 C0 05            [24] 1116 	push	ar5
      0033D2 74 05            [12] 1117 	mov	a,#___str_18
      0033D4 C0 E0            [24] 1118 	push	acc
      0033D6 74 51            [12] 1119 	mov	a,#(___str_18 >> 8)
      0033D8 C0 E0            [24] 1120 	push	acc
      0033DA 74 80            [12] 1121 	mov	a,#0x80
      0033DC C0 E0            [24] 1122 	push	acc
      0033DE 12 3F B1         [24] 1123 	lcall	_printf
      0033E1 E5 81            [12] 1124 	mov	a,sp
      0033E3 24 FB            [12] 1125 	add	a,#0xfb
      0033E5 F5 81            [12] 1126 	mov	sp,a
      0033E7 D0 06            [24] 1127 	pop	ar6
      0033E9 D0 07            [24] 1128 	pop	ar7
                                   1129 ;	8051_i2c_eeprom.c:136: i++;
      0033EB 0E               [12] 1130 	inc	r6
      0033EC BE 00 A8         [24] 1131 	cjne	r6,#0x00,00101$
      0033EF 0F               [12] 1132 	inc	r7
      0033F0 80 A5            [24] 1133 	sjmp	00101$
      0033F2                       1134 00103$:
                                   1135 ;	8051_i2c_eeprom.c:138: input[i] = '\0';  // Null-terminate the string
      0033F2 EE               [12] 1136 	mov	a,r6
      0033F3 24 08            [12] 1137 	add	a,#_take_data_input_65536_65
      0033F5 F5 82            [12] 1138 	mov	dpl,a
      0033F7 EF               [12] 1139 	mov	a,r7
      0033F8 34 04            [12] 1140 	addc	a,#(_take_data_input_65536_65 >> 8)
      0033FA F5 83            [12] 1141 	mov	dph,a
      0033FC E4               [12] 1142 	clr	a
      0033FD F0               [24] 1143 	movx	@dptr,a
                                   1144 ;	8051_i2c_eeprom.c:141: unsigned char value = (unsigned char)strtol(input, NULL, 16);
      0033FE 90 04 14         [24] 1145 	mov	dptr,#_strtol_PARM_2
      003401 F0               [24] 1146 	movx	@dptr,a
      003402 A3               [24] 1147 	inc	dptr
      003403 F0               [24] 1148 	movx	@dptr,a
      003404 A3               [24] 1149 	inc	dptr
      003405 F0               [24] 1150 	movx	@dptr,a
      003406 90 04 17         [24] 1151 	mov	dptr,#_strtol_PARM_3
      003409 74 10            [12] 1152 	mov	a,#0x10
      00340B F0               [24] 1153 	movx	@dptr,a
      00340C E4               [12] 1154 	clr	a
      00340D A3               [24] 1155 	inc	dptr
      00340E F0               [24] 1156 	movx	@dptr,a
      00340F 90 04 08         [24] 1157 	mov	dptr,#_take_data_input_65536_65
      003412 75 F0 00         [24] 1158 	mov	b,#0x00
      003415 12 38 1C         [24] 1159 	lcall	_strtol
      003418 AC 82            [24] 1160 	mov	r4,dpl
                                   1161 ;	8051_i2c_eeprom.c:142: printf("data %c\n\r", value);
      00341A 7F 00            [12] 1162 	mov	r7,#0x00
      00341C C0 07            [24] 1163 	push	ar7
      00341E C0 04            [24] 1164 	push	ar4
      003420 C0 04            [24] 1165 	push	ar4
      003422 C0 07            [24] 1166 	push	ar7
      003424 74 3F            [12] 1167 	mov	a,#___str_21
      003426 C0 E0            [24] 1168 	push	acc
      003428 74 51            [12] 1169 	mov	a,#(___str_21 >> 8)
      00342A C0 E0            [24] 1170 	push	acc
      00342C 74 80            [12] 1171 	mov	a,#0x80
      00342E C0 E0            [24] 1172 	push	acc
      003430 12 3F B1         [24] 1173 	lcall	_printf
      003433 E5 81            [12] 1174 	mov	a,sp
      003435 24 FB            [12] 1175 	add	a,#0xfb
      003437 F5 81            [12] 1176 	mov	sp,a
      003439 D0 04            [24] 1177 	pop	ar4
      00343B D0 07            [24] 1178 	pop	ar7
                                   1179 ;	8051_i2c_eeprom.c:143: return value;
      00343D 8C 82            [24] 1180 	mov	dpl,r4
      00343F 8F 83            [24] 1181 	mov	dph,r7
                                   1182 ;	8051_i2c_eeprom.c:145: }
      003441 22               [24] 1183 	ret
                                   1184 ;------------------------------------------------------------
                                   1185 ;Allocation info for local variables in function 'eeprom_write'
                                   1186 ;------------------------------------------------------------
                                   1187 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                   1188 ;address                   Allocated with name '_eeprom_write_address_65536_68'
                                   1189 ;i                         Allocated with name '_eeprom_write_i_131072_73'
                                   1190 ;------------------------------------------------------------
                                   1191 ;	8051_i2c_eeprom.c:147: int eeprom_write(unsigned int address, unsigned char data) 
                                   1192 ;	-----------------------------------------
                                   1193 ;	 function eeprom_write
                                   1194 ;	-----------------------------------------
      003442                       1195 _eeprom_write:
      003442 AF 83            [24] 1196 	mov	r7,dph
      003444 E5 82            [12] 1197 	mov	a,dpl
      003446 90 04 0C         [24] 1198 	mov	dptr,#_eeprom_write_address_65536_68
      003449 F0               [24] 1199 	movx	@dptr,a
      00344A EF               [12] 1200 	mov	a,r7
      00344B A3               [24] 1201 	inc	dptr
      00344C F0               [24] 1202 	movx	@dptr,a
                                   1203 ;	8051_i2c_eeprom.c:150: i2c_start();
      00344D 12 37 2B         [24] 1204 	lcall	_i2c_start
                                   1205 ;	8051_i2c_eeprom.c:153: if(!i2c_write(EEPROM_ID | WRITE)) {
      003450 75 82 A0         [24] 1206 	mov	dpl,#0xa0
      003453 12 36 29         [24] 1207 	lcall	_i2c_write
      003456 E5 82            [12] 1208 	mov	a,dpl
      003458 85 83 F0         [24] 1209 	mov	b,dph
      00345B 45 F0            [12] 1210 	orl	a,b
      00345D 70 1C            [24] 1211 	jnz	00102$
                                   1212 ;	8051_i2c_eeprom.c:154: printf("Error: No ACK for device address (write)\n\r");
      00345F 74 49            [12] 1213 	mov	a,#___str_22
      003461 C0 E0            [24] 1214 	push	acc
      003463 74 51            [12] 1215 	mov	a,#(___str_22 >> 8)
      003465 C0 E0            [24] 1216 	push	acc
      003467 74 80            [12] 1217 	mov	a,#0x80
      003469 C0 E0            [24] 1218 	push	acc
      00346B 12 3F B1         [24] 1219 	lcall	_printf
      00346E 15 81            [12] 1220 	dec	sp
      003470 15 81            [12] 1221 	dec	sp
      003472 15 81            [12] 1222 	dec	sp
                                   1223 ;	8051_i2c_eeprom.c:155: i2c_stop();
      003474 12 37 40         [24] 1224 	lcall	_i2c_stop
                                   1225 ;	8051_i2c_eeprom.c:156: return 0;
      003477 90 00 00         [24] 1226 	mov	dptr,#0x0000
      00347A 22               [24] 1227 	ret
      00347B                       1228 00102$:
                                   1229 ;	8051_i2c_eeprom.c:160: if(!i2c_write((unsigned char)address)) {
      00347B 90 04 0C         [24] 1230 	mov	dptr,#_eeprom_write_address_65536_68
      00347E E0               [24] 1231 	movx	a,@dptr
      00347F FE               [12] 1232 	mov	r6,a
      003480 A3               [24] 1233 	inc	dptr
      003481 E0               [24] 1234 	movx	a,@dptr
      003482 FF               [12] 1235 	mov	r7,a
      003483 8E 05            [24] 1236 	mov	ar5,r6
      003485 8D 82            [24] 1237 	mov	dpl,r5
      003487 C0 07            [24] 1238 	push	ar7
      003489 C0 06            [24] 1239 	push	ar6
      00348B 12 36 29         [24] 1240 	lcall	_i2c_write
      00348E E5 82            [12] 1241 	mov	a,dpl
      003490 85 83 F0         [24] 1242 	mov	b,dph
      003493 D0 06            [24] 1243 	pop	ar6
      003495 D0 07            [24] 1244 	pop	ar7
      003497 45 F0            [12] 1245 	orl	a,b
      003499 70 1C            [24] 1246 	jnz	00104$
                                   1247 ;	8051_i2c_eeprom.c:161: printf("Error: No ACK for memory address\n\r");
      00349B 74 74            [12] 1248 	mov	a,#___str_23
      00349D C0 E0            [24] 1249 	push	acc
      00349F 74 51            [12] 1250 	mov	a,#(___str_23 >> 8)
      0034A1 C0 E0            [24] 1251 	push	acc
      0034A3 74 80            [12] 1252 	mov	a,#0x80
      0034A5 C0 E0            [24] 1253 	push	acc
      0034A7 12 3F B1         [24] 1254 	lcall	_printf
      0034AA 15 81            [12] 1255 	dec	sp
      0034AC 15 81            [12] 1256 	dec	sp
      0034AE 15 81            [12] 1257 	dec	sp
                                   1258 ;	8051_i2c_eeprom.c:162: i2c_stop();
      0034B0 12 37 40         [24] 1259 	lcall	_i2c_stop
                                   1260 ;	8051_i2c_eeprom.c:163: return 0;
      0034B3 90 00 00         [24] 1261 	mov	dptr,#0x0000
      0034B6 22               [24] 1262 	ret
      0034B7                       1263 00104$:
                                   1264 ;	8051_i2c_eeprom.c:167: if(!i2c_write(data)) {
      0034B7 90 04 0B         [24] 1265 	mov	dptr,#_eeprom_write_PARM_2
      0034BA E0               [24] 1266 	movx	a,@dptr
      0034BB FD               [12] 1267 	mov	r5,a
      0034BC F5 82            [12] 1268 	mov	dpl,a
      0034BE C0 07            [24] 1269 	push	ar7
      0034C0 C0 06            [24] 1270 	push	ar6
      0034C2 C0 05            [24] 1271 	push	ar5
      0034C4 12 36 29         [24] 1272 	lcall	_i2c_write
      0034C7 E5 82            [12] 1273 	mov	a,dpl
      0034C9 85 83 F0         [24] 1274 	mov	b,dph
      0034CC D0 05            [24] 1275 	pop	ar5
      0034CE D0 06            [24] 1276 	pop	ar6
      0034D0 D0 07            [24] 1277 	pop	ar7
      0034D2 45 F0            [12] 1278 	orl	a,b
      0034D4 70 1C            [24] 1279 	jnz	00106$
                                   1280 ;	8051_i2c_eeprom.c:168: printf("Error: No ACK for data\n\r");
      0034D6 74 97            [12] 1281 	mov	a,#___str_24
      0034D8 C0 E0            [24] 1282 	push	acc
      0034DA 74 51            [12] 1283 	mov	a,#(___str_24 >> 8)
      0034DC C0 E0            [24] 1284 	push	acc
      0034DE 74 80            [12] 1285 	mov	a,#0x80
      0034E0 C0 E0            [24] 1286 	push	acc
      0034E2 12 3F B1         [24] 1287 	lcall	_printf
      0034E5 15 81            [12] 1288 	dec	sp
      0034E7 15 81            [12] 1289 	dec	sp
      0034E9 15 81            [12] 1290 	dec	sp
                                   1291 ;	8051_i2c_eeprom.c:169: i2c_stop();
      0034EB 12 37 40         [24] 1292 	lcall	_i2c_stop
                                   1293 ;	8051_i2c_eeprom.c:170: return 0;
      0034EE 90 00 00         [24] 1294 	mov	dptr,#0x0000
      0034F1 22               [24] 1295 	ret
      0034F2                       1296 00106$:
                                   1297 ;	8051_i2c_eeprom.c:173: i2c_stop();
      0034F2 C0 07            [24] 1298 	push	ar7
      0034F4 C0 06            [24] 1299 	push	ar6
      0034F6 C0 05            [24] 1300 	push	ar5
      0034F8 12 37 40         [24] 1301 	lcall	_i2c_stop
      0034FB D0 05            [24] 1302 	pop	ar5
      0034FD D0 06            [24] 1303 	pop	ar6
      0034FF D0 07            [24] 1304 	pop	ar7
                                   1305 ;	8051_i2c_eeprom.c:175: for(int i = 0; i<100; i++)
      003501 7B 00            [12] 1306 	mov	r3,#0x00
      003503 7C 00            [12] 1307 	mov	r4,#0x00
      003505                       1308 00109$:
      003505 C3               [12] 1309 	clr	c
      003506 EB               [12] 1310 	mov	a,r3
      003507 94 64            [12] 1311 	subb	a,#0x64
      003509 EC               [12] 1312 	mov	a,r4
      00350A 64 80            [12] 1313 	xrl	a,#0x80
      00350C 94 80            [12] 1314 	subb	a,#0x80
      00350E 50 1E            [24] 1315 	jnc	00107$
                                   1316 ;	8051_i2c_eeprom.c:177: i2c_delay();
      003510 C0 07            [24] 1317 	push	ar7
      003512 C0 06            [24] 1318 	push	ar6
      003514 C0 05            [24] 1319 	push	ar5
      003516 C0 04            [24] 1320 	push	ar4
      003518 C0 03            [24] 1321 	push	ar3
      00351A 12 37 4D         [24] 1322 	lcall	_i2c_delay
      00351D D0 03            [24] 1323 	pop	ar3
      00351F D0 04            [24] 1324 	pop	ar4
      003521 D0 05            [24] 1325 	pop	ar5
      003523 D0 06            [24] 1326 	pop	ar6
      003525 D0 07            [24] 1327 	pop	ar7
                                   1328 ;	8051_i2c_eeprom.c:175: for(int i = 0; i<100; i++)
      003527 0B               [12] 1329 	inc	r3
      003528 BB 00 DA         [24] 1330 	cjne	r3,#0x00,00109$
      00352B 0C               [12] 1331 	inc	r4
      00352C 80 D7            [24] 1332 	sjmp	00109$
      00352E                       1333 00107$:
                                   1334 ;	8051_i2c_eeprom.c:179: printf("| Writing at Address 0x%02X Data 0x%02X          |\n\r", address, data);
      00352E 7C 00            [12] 1335 	mov	r4,#0x00
      003530 C0 05            [24] 1336 	push	ar5
      003532 C0 04            [24] 1337 	push	ar4
      003534 C0 06            [24] 1338 	push	ar6
      003536 C0 07            [24] 1339 	push	ar7
      003538 74 B0            [12] 1340 	mov	a,#___str_25
      00353A C0 E0            [24] 1341 	push	acc
      00353C 74 51            [12] 1342 	mov	a,#(___str_25 >> 8)
      00353E C0 E0            [24] 1343 	push	acc
      003540 74 80            [12] 1344 	mov	a,#0x80
      003542 C0 E0            [24] 1345 	push	acc
      003544 12 3F B1         [24] 1346 	lcall	_printf
      003547 E5 81            [12] 1347 	mov	a,sp
      003549 24 F9            [12] 1348 	add	a,#0xf9
      00354B F5 81            [12] 1349 	mov	sp,a
                                   1350 ;	8051_i2c_eeprom.c:180: printf("│ Write successful!                             │\n");
      00354D 74 E5            [12] 1351 	mov	a,#___str_26
      00354F C0 E0            [24] 1352 	push	acc
      003551 74 51            [12] 1353 	mov	a,#(___str_26 >> 8)
      003553 C0 E0            [24] 1354 	push	acc
      003555 74 80            [12] 1355 	mov	a,#0x80
      003557 C0 E0            [24] 1356 	push	acc
      003559 12 3F B1         [24] 1357 	lcall	_printf
      00355C 15 81            [12] 1358 	dec	sp
      00355E 15 81            [12] 1359 	dec	sp
      003560 15 81            [12] 1360 	dec	sp
                                   1361 ;	8051_i2c_eeprom.c:181: printf("└───────────────────────────────────────────────┘\n");
      003562 74 1C            [12] 1362 	mov	a,#___str_27
      003564 C0 E0            [24] 1363 	push	acc
      003566 74 52            [12] 1364 	mov	a,#(___str_27 >> 8)
      003568 C0 E0            [24] 1365 	push	acc
      00356A 74 80            [12] 1366 	mov	a,#0x80
      00356C C0 E0            [24] 1367 	push	acc
      00356E 12 3F B1         [24] 1368 	lcall	_printf
      003571 15 81            [12] 1369 	dec	sp
      003573 15 81            [12] 1370 	dec	sp
      003575 15 81            [12] 1371 	dec	sp
                                   1372 ;	8051_i2c_eeprom.c:182: return 1;  // Success
      003577 90 00 01         [24] 1373 	mov	dptr,#0x0001
                                   1374 ;	8051_i2c_eeprom.c:184: }
      00357A 22               [24] 1375 	ret
                                   1376 ;------------------------------------------------------------
                                   1377 ;Allocation info for local variables in function 'eeprom_read'
                                   1378 ;------------------------------------------------------------
                                   1379 ;address                   Allocated with name '_eeprom_read_address_65536_75'
                                   1380 ;result                    Allocated with name '_eeprom_read_result_65536_76'
                                   1381 ;------------------------------------------------------------
                                   1382 ;	8051_i2c_eeprom.c:186: int eeprom_read(unsigned int address) 
                                   1383 ;	-----------------------------------------
                                   1384 ;	 function eeprom_read
                                   1385 ;	-----------------------------------------
      00357B                       1386 _eeprom_read:
      00357B AF 83            [24] 1387 	mov	r7,dph
      00357D E5 82            [12] 1388 	mov	a,dpl
      00357F 90 04 0E         [24] 1389 	mov	dptr,#_eeprom_read_address_65536_75
      003582 F0               [24] 1390 	movx	@dptr,a
      003583 EF               [12] 1391 	mov	a,r7
      003584 A3               [24] 1392 	inc	dptr
      003585 F0               [24] 1393 	movx	@dptr,a
                                   1394 ;	8051_i2c_eeprom.c:192: i2c_start();
      003586 12 37 2B         [24] 1395 	lcall	_i2c_start
                                   1396 ;	8051_i2c_eeprom.c:195: if(!i2c_write(EEPROM_ID | WRITE)) {
      003589 75 82 A0         [24] 1397 	mov	dpl,#0xa0
      00358C 12 36 29         [24] 1398 	lcall	_i2c_write
      00358F E5 82            [12] 1399 	mov	a,dpl
      003591 85 83 F0         [24] 1400 	mov	b,dph
      003594 45 F0            [12] 1401 	orl	a,b
      003596 70 1C            [24] 1402 	jnz	00102$
                                   1403 ;	8051_i2c_eeprom.c:196: printf("Error: No ACK for device address (write mode)\n\r");
      003598 74 B1            [12] 1404 	mov	a,#___str_28
      00359A C0 E0            [24] 1405 	push	acc
      00359C 74 52            [12] 1406 	mov	a,#(___str_28 >> 8)
      00359E C0 E0            [24] 1407 	push	acc
      0035A0 74 80            [12] 1408 	mov	a,#0x80
      0035A2 C0 E0            [24] 1409 	push	acc
      0035A4 12 3F B1         [24] 1410 	lcall	_printf
      0035A7 15 81            [12] 1411 	dec	sp
      0035A9 15 81            [12] 1412 	dec	sp
      0035AB 15 81            [12] 1413 	dec	sp
                                   1414 ;	8051_i2c_eeprom.c:197: i2c_stop();
      0035AD 12 37 40         [24] 1415 	lcall	_i2c_stop
                                   1416 ;	8051_i2c_eeprom.c:198: return -1;
      0035B0 90 FF FF         [24] 1417 	mov	dptr,#0xffff
      0035B3 22               [24] 1418 	ret
      0035B4                       1419 00102$:
                                   1420 ;	8051_i2c_eeprom.c:202: if(!i2c_write((unsigned char)address)) {
      0035B4 90 04 0E         [24] 1421 	mov	dptr,#_eeprom_read_address_65536_75
      0035B7 E0               [24] 1422 	movx	a,@dptr
      0035B8 FE               [12] 1423 	mov	r6,a
      0035B9 A3               [24] 1424 	inc	dptr
      0035BA E0               [24] 1425 	movx	a,@dptr
      0035BB 8E 82            [24] 1426 	mov	dpl,r6
      0035BD 12 36 29         [24] 1427 	lcall	_i2c_write
      0035C0 E5 82            [12] 1428 	mov	a,dpl
      0035C2 85 83 F0         [24] 1429 	mov	b,dph
      0035C5 45 F0            [12] 1430 	orl	a,b
      0035C7 70 1C            [24] 1431 	jnz	00104$
                                   1432 ;	8051_i2c_eeprom.c:203: printf("Error: No ACK for memory address\n\r");
      0035C9 74 74            [12] 1433 	mov	a,#___str_23
      0035CB C0 E0            [24] 1434 	push	acc
      0035CD 74 51            [12] 1435 	mov	a,#(___str_23 >> 8)
      0035CF C0 E0            [24] 1436 	push	acc
      0035D1 74 80            [12] 1437 	mov	a,#0x80
      0035D3 C0 E0            [24] 1438 	push	acc
      0035D5 12 3F B1         [24] 1439 	lcall	_printf
      0035D8 15 81            [12] 1440 	dec	sp
      0035DA 15 81            [12] 1441 	dec	sp
      0035DC 15 81            [12] 1442 	dec	sp
                                   1443 ;	8051_i2c_eeprom.c:204: i2c_stop();
      0035DE 12 37 40         [24] 1444 	lcall	_i2c_stop
                                   1445 ;	8051_i2c_eeprom.c:205: return -1;
      0035E1 90 FF FF         [24] 1446 	mov	dptr,#0xffff
      0035E4 22               [24] 1447 	ret
      0035E5                       1448 00104$:
                                   1449 ;	8051_i2c_eeprom.c:209: i2c_start();
      0035E5 12 37 2B         [24] 1450 	lcall	_i2c_start
                                   1451 ;	8051_i2c_eeprom.c:212: if(!i2c_write(EEPROM_ID | READ)) {
      0035E8 75 82 A1         [24] 1452 	mov	dpl,#0xa1
      0035EB 12 36 29         [24] 1453 	lcall	_i2c_write
      0035EE E5 82            [12] 1454 	mov	a,dpl
      0035F0 85 83 F0         [24] 1455 	mov	b,dph
      0035F3 45 F0            [12] 1456 	orl	a,b
      0035F5 70 1C            [24] 1457 	jnz	00106$
                                   1458 ;	8051_i2c_eeprom.c:213: printf("Error: No ACK for device address (read mode)\n\r");
      0035F7 74 E1            [12] 1459 	mov	a,#___str_29
      0035F9 C0 E0            [24] 1460 	push	acc
      0035FB 74 52            [12] 1461 	mov	a,#(___str_29 >> 8)
      0035FD C0 E0            [24] 1462 	push	acc
      0035FF 74 80            [12] 1463 	mov	a,#0x80
      003601 C0 E0            [24] 1464 	push	acc
      003603 12 3F B1         [24] 1465 	lcall	_printf
      003606 15 81            [12] 1466 	dec	sp
      003608 15 81            [12] 1467 	dec	sp
      00360A 15 81            [12] 1468 	dec	sp
                                   1469 ;	8051_i2c_eeprom.c:214: i2c_stop();
      00360C 12 37 40         [24] 1470 	lcall	_i2c_stop
                                   1471 ;	8051_i2c_eeprom.c:215: return -1;
      00360F 90 FF FF         [24] 1472 	mov	dptr,#0xffff
      003612 22               [24] 1473 	ret
      003613                       1474 00106$:
                                   1475 ;	8051_i2c_eeprom.c:219: result = i2c_read(0);  // 0 means send NACK
      003613 90 00 00         [24] 1476 	mov	dptr,#0x0000
      003616 12 36 A6         [24] 1477 	lcall	_i2c_read
      003619 AE 82            [24] 1478 	mov	r6,dpl
                                   1479 ;	8051_i2c_eeprom.c:221: i2c_stop();
      00361B C0 06            [24] 1480 	push	ar6
      00361D 12 37 40         [24] 1481 	lcall	_i2c_stop
      003620 D0 06            [24] 1482 	pop	ar6
                                   1483 ;	8051_i2c_eeprom.c:222: return result;
      003622 7F 00            [12] 1484 	mov	r7,#0x00
      003624 8E 82            [24] 1485 	mov	dpl,r6
      003626 8F 83            [24] 1486 	mov	dph,r7
                                   1487 ;	8051_i2c_eeprom.c:223: }
      003628 22               [24] 1488 	ret
                                   1489 ;------------------------------------------------------------
                                   1490 ;Allocation info for local variables in function 'i2c_write'
                                   1491 ;------------------------------------------------------------
                                   1492 ;data                      Allocated with name '_i2c_write_data_65536_80'
                                   1493 ;i                         Allocated with name '_i2c_write_i_65536_81'
                                   1494 ;------------------------------------------------------------
                                   1495 ;	8051_i2c_eeprom.c:226: int i2c_write(unsigned char data)
                                   1496 ;	-----------------------------------------
                                   1497 ;	 function i2c_write
                                   1498 ;	-----------------------------------------
      003629                       1499 _i2c_write:
      003629 E5 82            [12] 1500 	mov	a,dpl
      00362B 90 04 10         [24] 1501 	mov	dptr,#_i2c_write_data_65536_80
      00362E F0               [24] 1502 	movx	@dptr,a
                                   1503 ;	8051_i2c_eeprom.c:230: for(i=0;i<=7;i++)
      00362F 7E 00            [12] 1504 	mov	r6,#0x00
      003631 7F 00            [12] 1505 	mov	r7,#0x00
      003633                       1506 00104$:
                                   1507 ;	8051_i2c_eeprom.c:232: SDA = (data & 0x80) ? 1 : 0;    //msb first
      003633 90 04 10         [24] 1508 	mov	dptr,#_i2c_write_data_65536_80
      003636 E0               [24] 1509 	movx	a,@dptr
      003637 FD               [12] 1510 	mov	r5,a
      003638 23               [12] 1511 	rl	a
      003639 54 01            [12] 1512 	anl	a,#0x01
      00363B 24 FF            [12] 1513 	add	a,#0xff
      00363D 92 94            [24] 1514 	mov	_P1_4,c
                                   1515 ;	8051_i2c_eeprom.c:233: i2c_delay();        // Setup time for data
      00363F C0 07            [24] 1516 	push	ar7
      003641 C0 06            [24] 1517 	push	ar6
      003643 C0 05            [24] 1518 	push	ar5
      003645 12 37 4D         [24] 1519 	lcall	_i2c_delay
                                   1520 ;	8051_i2c_eeprom.c:234: SCL=1;
                                   1521 ;	assignBit
      003648 D2 93            [12] 1522 	setb	_P1_3
                                   1523 ;	8051_i2c_eeprom.c:235: i2c_delay();        // Hold time for clock
      00364A 12 37 4D         [24] 1524 	lcall	_i2c_delay
      00364D D0 05            [24] 1525 	pop	ar5
      00364F D0 06            [24] 1526 	pop	ar6
      003651 D0 07            [24] 1527 	pop	ar7
                                   1528 ;	8051_i2c_eeprom.c:236: SCL=0;
                                   1529 ;	assignBit
      003653 C2 93            [12] 1530 	clr	_P1_3
                                   1531 ;	8051_i2c_eeprom.c:237: data = data << 1;
      003655 ED               [12] 1532 	mov	a,r5
      003656 2D               [12] 1533 	add	a,r5
      003657 90 04 10         [24] 1534 	mov	dptr,#_i2c_write_data_65536_80
      00365A F0               [24] 1535 	movx	@dptr,a
                                   1536 ;	8051_i2c_eeprom.c:230: for(i=0;i<=7;i++)
      00365B 0E               [12] 1537 	inc	r6
      00365C BE 00 01         [24] 1538 	cjne	r6,#0x00,00121$
      00365F 0F               [12] 1539 	inc	r7
      003660                       1540 00121$:
      003660 C3               [12] 1541 	clr	c
      003661 74 07            [12] 1542 	mov	a,#0x07
      003663 9E               [12] 1543 	subb	a,r6
      003664 E4               [12] 1544 	clr	a
      003665 9F               [12] 1545 	subb	a,r7
      003666 50 CB            [24] 1546 	jnc	00104$
                                   1547 ;	8051_i2c_eeprom.c:241: SDA = 1;            // Release SDA for slave
                                   1548 ;	assignBit
      003668 D2 94            [12] 1549 	setb	_P1_4
                                   1550 ;	8051_i2c_eeprom.c:242: SCL = 1;            // 9th clock pulse for ACK
                                   1551 ;	assignBit
      00366A D2 93            [12] 1552 	setb	_P1_3
                                   1553 ;	8051_i2c_eeprom.c:243: i2c_delay();
      00366C 12 37 4D         [24] 1554 	lcall	_i2c_delay
                                   1555 ;	8051_i2c_eeprom.c:244: if(SDA == 1)        // If SDA is still high, no ACK received
      00366F 30 94 19         [24] 1556 	jnb	_P1_4,00103$
                                   1557 ;	8051_i2c_eeprom.c:247: printf("ACK DID NOT ARRIVE\n\r");
      003672 74 10            [12] 1558 	mov	a,#___str_30
      003674 C0 E0            [24] 1559 	push	acc
      003676 74 53            [12] 1560 	mov	a,#(___str_30 >> 8)
      003678 C0 E0            [24] 1561 	push	acc
      00367A 74 80            [12] 1562 	mov	a,#0x80
      00367C C0 E0            [24] 1563 	push	acc
      00367E 12 3F B1         [24] 1564 	lcall	_printf
      003681 15 81            [12] 1565 	dec	sp
      003683 15 81            [12] 1566 	dec	sp
      003685 15 81            [12] 1567 	dec	sp
                                   1568 ;	8051_i2c_eeprom.c:248: return 0;       // Error
      003687 90 00 00         [24] 1569 	mov	dptr,#0x0000
      00368A 22               [24] 1570 	ret
      00368B                       1571 00103$:
                                   1572 ;	8051_i2c_eeprom.c:250: SCL = 0;
                                   1573 ;	assignBit
      00368B C2 93            [12] 1574 	clr	_P1_3
                                   1575 ;	8051_i2c_eeprom.c:251: printf("Transmission successfull\n\r");
      00368D 74 25            [12] 1576 	mov	a,#___str_31
      00368F C0 E0            [24] 1577 	push	acc
      003691 74 53            [12] 1578 	mov	a,#(___str_31 >> 8)
      003693 C0 E0            [24] 1579 	push	acc
      003695 74 80            [12] 1580 	mov	a,#0x80
      003697 C0 E0            [24] 1581 	push	acc
      003699 12 3F B1         [24] 1582 	lcall	_printf
      00369C 15 81            [12] 1583 	dec	sp
      00369E 15 81            [12] 1584 	dec	sp
      0036A0 15 81            [12] 1585 	dec	sp
                                   1586 ;	8051_i2c_eeprom.c:252: return 1;           // Success
      0036A2 90 00 01         [24] 1587 	mov	dptr,#0x0001
                                   1588 ;	8051_i2c_eeprom.c:254: }
      0036A5 22               [24] 1589 	ret
                                   1590 ;------------------------------------------------------------
                                   1591 ;Allocation info for local variables in function 'i2c_read'
                                   1592 ;------------------------------------------------------------
                                   1593 ;ACK                       Allocated with name '_i2c_read_ACK_65536_85'
                                   1594 ;buff                      Allocated with name '_i2c_read_buff_65536_86'
                                   1595 ;i                         Allocated with name '_i2c_read_i_131072_87'
                                   1596 ;------------------------------------------------------------
                                   1597 ;	8051_i2c_eeprom.c:255: int i2c_read(int ACK)
                                   1598 ;	-----------------------------------------
                                   1599 ;	 function i2c_read
                                   1600 ;	-----------------------------------------
      0036A6                       1601 _i2c_read:
      0036A6 AF 83            [24] 1602 	mov	r7,dph
      0036A8 E5 82            [12] 1603 	mov	a,dpl
      0036AA 90 04 11         [24] 1604 	mov	dptr,#_i2c_read_ACK_65536_85
      0036AD F0               [24] 1605 	movx	@dptr,a
      0036AE EF               [12] 1606 	mov	a,r7
      0036AF A3               [24] 1607 	inc	dptr
      0036B0 F0               [24] 1608 	movx	@dptr,a
                                   1609 ;	8051_i2c_eeprom.c:257: unsigned char buff=0;
      0036B1 90 04 13         [24] 1610 	mov	dptr,#_i2c_read_buff_65536_86
      0036B4 E4               [12] 1611 	clr	a
      0036B5 F0               [24] 1612 	movx	@dptr,a
                                   1613 ;	8051_i2c_eeprom.c:258: SCL = 0;
                                   1614 ;	assignBit
      0036B6 C2 93            [12] 1615 	clr	_P1_3
                                   1616 ;	8051_i2c_eeprom.c:259: for(int i=0;i<8;i++)
      0036B8 7E 00            [12] 1617 	mov	r6,#0x00
      0036BA 7F 00            [12] 1618 	mov	r7,#0x00
      0036BC                       1619 00103$:
      0036BC C3               [12] 1620 	clr	c
      0036BD EE               [12] 1621 	mov	a,r6
      0036BE 94 08            [12] 1622 	subb	a,#0x08
      0036C0 EF               [12] 1623 	mov	a,r7
      0036C1 64 80            [12] 1624 	xrl	a,#0x80
      0036C3 94 80            [12] 1625 	subb	a,#0x80
      0036C5 50 40            [24] 1626 	jnc	00101$
                                   1627 ;	8051_i2c_eeprom.c:261: SCL = 1;
                                   1628 ;	assignBit
      0036C7 D2 93            [12] 1629 	setb	_P1_3
                                   1630 ;	8051_i2c_eeprom.c:262: i2c_delay();
      0036C9 C0 07            [24] 1631 	push	ar7
      0036CB C0 06            [24] 1632 	push	ar6
      0036CD 12 37 4D         [24] 1633 	lcall	_i2c_delay
      0036D0 D0 06            [24] 1634 	pop	ar6
      0036D2 D0 07            [24] 1635 	pop	ar7
                                   1636 ;	8051_i2c_eeprom.c:263: buff |= (SDA << (7 - i));
      0036D4 A2 94            [12] 1637 	mov	c,_P1_4
      0036D6 E4               [12] 1638 	clr	a
      0036D7 33               [12] 1639 	rlc	a
      0036D8 FD               [12] 1640 	mov	r5,a
      0036D9 8E 04            [24] 1641 	mov	ar4,r6
      0036DB 74 07            [12] 1642 	mov	a,#0x07
      0036DD C3               [12] 1643 	clr	c
      0036DE 9C               [12] 1644 	subb	a,r4
      0036DF FC               [12] 1645 	mov	r4,a
      0036E0 8C F0            [24] 1646 	mov	b,r4
      0036E2 05 F0            [12] 1647 	inc	b
      0036E4 ED               [12] 1648 	mov	a,r5
      0036E5 80 02            [24] 1649 	sjmp	00119$
      0036E7                       1650 00117$:
      0036E7 25 E0            [12] 1651 	add	a,acc
      0036E9                       1652 00119$:
      0036E9 D5 F0 FB         [24] 1653 	djnz	b,00117$
      0036EC FC               [12] 1654 	mov	r4,a
      0036ED 90 04 13         [24] 1655 	mov	dptr,#_i2c_read_buff_65536_86
      0036F0 E0               [24] 1656 	movx	a,@dptr
      0036F1 4C               [12] 1657 	orl	a,r4
      0036F2 F0               [24] 1658 	movx	@dptr,a
                                   1659 ;	8051_i2c_eeprom.c:264: i2c_delay();
      0036F3 C0 07            [24] 1660 	push	ar7
      0036F5 C0 06            [24] 1661 	push	ar6
      0036F7 12 37 4D         [24] 1662 	lcall	_i2c_delay
      0036FA D0 06            [24] 1663 	pop	ar6
      0036FC D0 07            [24] 1664 	pop	ar7
                                   1665 ;	8051_i2c_eeprom.c:265: SCL=0;
                                   1666 ;	assignBit
      0036FE C2 93            [12] 1667 	clr	_P1_3
                                   1668 ;	8051_i2c_eeprom.c:259: for(int i=0;i<8;i++)
      003700 0E               [12] 1669 	inc	r6
      003701 BE 00 B8         [24] 1670 	cjne	r6,#0x00,00103$
      003704 0F               [12] 1671 	inc	r7
      003705 80 B5            [24] 1672 	sjmp	00103$
      003707                       1673 00101$:
                                   1674 ;	8051_i2c_eeprom.c:269: SDA = !ACK;         // ACK = 0, NACK = 1
      003707 90 04 11         [24] 1675 	mov	dptr,#_i2c_read_ACK_65536_85
      00370A E0               [24] 1676 	movx	a,@dptr
      00370B FE               [12] 1677 	mov	r6,a
      00370C A3               [24] 1678 	inc	dptr
      00370D E0               [24] 1679 	movx	a,@dptr
      00370E 4E               [12] 1680 	orl	a,r6
      00370F B4 01 00         [24] 1681 	cjne	a,#0x01,00121$
      003712                       1682 00121$:
      003712 E4               [12] 1683 	clr	a
      003713 33               [12] 1684 	rlc	a
      003714 24 FF            [12] 1685 	add	a,#0xff
      003716 92 94            [24] 1686 	mov	_P1_4,c
                                   1687 ;	8051_i2c_eeprom.c:270: SCL = 1;
                                   1688 ;	assignBit
      003718 D2 93            [12] 1689 	setb	_P1_3
                                   1690 ;	8051_i2c_eeprom.c:271: i2c_delay();
      00371A 12 37 4D         [24] 1691 	lcall	_i2c_delay
                                   1692 ;	8051_i2c_eeprom.c:272: SCL = 0;
                                   1693 ;	assignBit
      00371D C2 93            [12] 1694 	clr	_P1_3
                                   1695 ;	8051_i2c_eeprom.c:274: return buff;
      00371F 90 04 13         [24] 1696 	mov	dptr,#_i2c_read_buff_65536_86
      003722 E0               [24] 1697 	movx	a,@dptr
      003723 FF               [12] 1698 	mov	r7,a
      003724 7E 00            [12] 1699 	mov	r6,#0x00
      003726 8F 82            [24] 1700 	mov	dpl,r7
      003728 8E 83            [24] 1701 	mov	dph,r6
                                   1702 ;	8051_i2c_eeprom.c:275: }
      00372A 22               [24] 1703 	ret
                                   1704 ;------------------------------------------------------------
                                   1705 ;Allocation info for local variables in function 'i2c_start'
                                   1706 ;------------------------------------------------------------
                                   1707 ;	8051_i2c_eeprom.c:276: void i2c_start(void)
                                   1708 ;	-----------------------------------------
                                   1709 ;	 function i2c_start
                                   1710 ;	-----------------------------------------
      00372B                       1711 _i2c_start:
                                   1712 ;	8051_i2c_eeprom.c:278: i2c_delay();
      00372B 12 37 4D         [24] 1713 	lcall	_i2c_delay
                                   1714 ;	8051_i2c_eeprom.c:279: SDA = 1;
                                   1715 ;	assignBit
      00372E D2 94            [12] 1716 	setb	_P1_4
                                   1717 ;	8051_i2c_eeprom.c:280: i2c_delay();
      003730 12 37 4D         [24] 1718 	lcall	_i2c_delay
                                   1719 ;	8051_i2c_eeprom.c:281: SCL = 1;
                                   1720 ;	assignBit
      003733 D2 93            [12] 1721 	setb	_P1_3
                                   1722 ;	8051_i2c_eeprom.c:282: i2c_delay();
      003735 12 37 4D         [24] 1723 	lcall	_i2c_delay
                                   1724 ;	8051_i2c_eeprom.c:283: SDA = 0;
                                   1725 ;	assignBit
      003738 C2 94            [12] 1726 	clr	_P1_4
                                   1727 ;	8051_i2c_eeprom.c:284: i2c_delay();
      00373A 12 37 4D         [24] 1728 	lcall	_i2c_delay
                                   1729 ;	8051_i2c_eeprom.c:285: SCL = 0;
                                   1730 ;	assignBit
      00373D C2 93            [12] 1731 	clr	_P1_3
                                   1732 ;	8051_i2c_eeprom.c:286: }
      00373F 22               [24] 1733 	ret
                                   1734 ;------------------------------------------------------------
                                   1735 ;Allocation info for local variables in function 'i2c_stop'
                                   1736 ;------------------------------------------------------------
                                   1737 ;	8051_i2c_eeprom.c:288: void i2c_stop(void)
                                   1738 ;	-----------------------------------------
                                   1739 ;	 function i2c_stop
                                   1740 ;	-----------------------------------------
      003740                       1741 _i2c_stop:
                                   1742 ;	8051_i2c_eeprom.c:290: SDA = 0;
                                   1743 ;	assignBit
      003740 C2 94            [12] 1744 	clr	_P1_4
                                   1745 ;	8051_i2c_eeprom.c:291: i2c_delay();
      003742 12 37 4D         [24] 1746 	lcall	_i2c_delay
                                   1747 ;	8051_i2c_eeprom.c:292: SCL = 1;
                                   1748 ;	assignBit
      003745 D2 93            [12] 1749 	setb	_P1_3
                                   1750 ;	8051_i2c_eeprom.c:293: i2c_delay();
      003747 12 37 4D         [24] 1751 	lcall	_i2c_delay
                                   1752 ;	8051_i2c_eeprom.c:294: SDA = 1; 
                                   1753 ;	assignBit
      00374A D2 94            [12] 1754 	setb	_P1_4
                                   1755 ;	8051_i2c_eeprom.c:295: }
      00374C 22               [24] 1756 	ret
                                   1757 ;------------------------------------------------------------
                                   1758 ;Allocation info for local variables in function 'i2c_delay'
                                   1759 ;------------------------------------------------------------
                                   1760 ;i                         Allocated with name '_i2c_delay_i_131072_94'
                                   1761 ;------------------------------------------------------------
                                   1762 ;	8051_i2c_eeprom.c:297: void i2c_delay() 
                                   1763 ;	-----------------------------------------
                                   1764 ;	 function i2c_delay
                                   1765 ;	-----------------------------------------
      00374D                       1766 _i2c_delay:
                                   1767 ;	8051_i2c_eeprom.c:305: for(int i = 0; i<500; i++);
      00374D 7E 00            [12] 1768 	mov	r6,#0x00
      00374F 7F 00            [12] 1769 	mov	r7,#0x00
      003751                       1770 00103$:
      003751 C3               [12] 1771 	clr	c
      003752 EE               [12] 1772 	mov	a,r6
      003753 94 F4            [12] 1773 	subb	a,#0xf4
      003755 EF               [12] 1774 	mov	a,r7
      003756 64 80            [12] 1775 	xrl	a,#0x80
      003758 94 81            [12] 1776 	subb	a,#0x81
      00375A 50 07            [24] 1777 	jnc	00105$
      00375C 0E               [12] 1778 	inc	r6
      00375D BE 00 F1         [24] 1779 	cjne	r6,#0x00,00103$
      003760 0F               [12] 1780 	inc	r7
      003761 80 EE            [24] 1781 	sjmp	00103$
      003763                       1782 00105$:
                                   1783 ;	8051_i2c_eeprom.c:306: }
      003763 22               [24] 1784 	ret
                                   1785 ;------------------------------------------------------------
                                   1786 ;Allocation info for local variables in function 'test_function'
                                   1787 ;------------------------------------------------------------
                                   1788 ;test_data                 Allocated with name '_test_function_test_data_65537_96'
                                   1789 ;address                   Allocated with name '_test_function_address_65537_96'
                                   1790 ;i                         Allocated with name '_test_function_i_131073_97'
                                   1791 ;read_data                 Allocated with name '_test_function_read_data_65538_99'
                                   1792 ;------------------------------------------------------------
                                   1793 ;	8051_i2c_eeprom.c:308: void test_function()
                                   1794 ;	-----------------------------------------
                                   1795 ;	 function test_function
                                   1796 ;	-----------------------------------------
      003764                       1797 _test_function:
                                   1798 ;	8051_i2c_eeprom.c:310: i2c_start();
      003764 12 37 2B         [24] 1799 	lcall	_i2c_start
                                   1800 ;	8051_i2c_eeprom.c:311: i2c_delay();
      003767 12 37 4D         [24] 1801 	lcall	_i2c_delay
                                   1802 ;	8051_i2c_eeprom.c:317: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      00376A 74 02            [12] 1803 	mov	a,#0x02
      00376C C0 E0            [24] 1804 	push	acc
      00376E E4               [12] 1805 	clr	a
      00376F C0 E0            [24] 1806 	push	acc
      003771 74 26            [12] 1807 	mov	a,#0x26
      003773 C0 E0            [24] 1808 	push	acc
      003775 E4               [12] 1809 	clr	a
      003776 C0 E0            [24] 1810 	push	acc
      003778 74 40            [12] 1811 	mov	a,#___str_32
      00377A C0 E0            [24] 1812 	push	acc
      00377C 74 53            [12] 1813 	mov	a,#(___str_32 >> 8)
      00377E C0 E0            [24] 1814 	push	acc
      003780 74 80            [12] 1815 	mov	a,#0x80
      003782 C0 E0            [24] 1816 	push	acc
      003784 12 3F B1         [24] 1817 	lcall	_printf
      003787 E5 81            [12] 1818 	mov	a,sp
      003789 24 F9            [12] 1819 	add	a,#0xf9
      00378B F5 81            [12] 1820 	mov	sp,a
                                   1821 ;	8051_i2c_eeprom.c:318: eeprom_write(address, test_data);
      00378D 90 04 0B         [24] 1822 	mov	dptr,#_eeprom_write_PARM_2
      003790 74 26            [12] 1823 	mov	a,#0x26
      003792 F0               [24] 1824 	movx	@dptr,a
      003793 90 00 02         [24] 1825 	mov	dptr,#0x0002
      003796 12 34 42         [24] 1826 	lcall	_eeprom_write
                                   1827 ;	8051_i2c_eeprom.c:319: i2c_stop();
      003799 12 37 40         [24] 1828 	lcall	_i2c_stop
                                   1829 ;	8051_i2c_eeprom.c:321: for(int i = 0; i<100; i++)
      00379C 7E 00            [12] 1830 	mov	r6,#0x00
      00379E 7F 00            [12] 1831 	mov	r7,#0x00
      0037A0                       1832 00106$:
      0037A0 C3               [12] 1833 	clr	c
      0037A1 EE               [12] 1834 	mov	a,r6
      0037A2 94 64            [12] 1835 	subb	a,#0x64
      0037A4 EF               [12] 1836 	mov	a,r7
      0037A5 64 80            [12] 1837 	xrl	a,#0x80
      0037A7 94 80            [12] 1838 	subb	a,#0x80
      0037A9 50 12            [24] 1839 	jnc	00101$
                                   1840 ;	8051_i2c_eeprom.c:323: i2c_delay();
      0037AB C0 07            [24] 1841 	push	ar7
      0037AD C0 06            [24] 1842 	push	ar6
      0037AF 12 37 4D         [24] 1843 	lcall	_i2c_delay
      0037B2 D0 06            [24] 1844 	pop	ar6
      0037B4 D0 07            [24] 1845 	pop	ar7
                                   1846 ;	8051_i2c_eeprom.c:321: for(int i = 0; i<100; i++)
      0037B6 0E               [12] 1847 	inc	r6
      0037B7 BE 00 E6         [24] 1848 	cjne	r6,#0x00,00106$
      0037BA 0F               [12] 1849 	inc	r7
      0037BB 80 E3            [24] 1850 	sjmp	00106$
      0037BD                       1851 00101$:
                                   1852 ;	8051_i2c_eeprom.c:327: unsigned char read_data = eeprom_read(address);
      0037BD 90 00 02         [24] 1853 	mov	dptr,#0x0002
      0037C0 12 35 7B         [24] 1854 	lcall	_eeprom_read
      0037C3 AE 82            [24] 1855 	mov	r6,dpl
                                   1856 ;	8051_i2c_eeprom.c:328: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      0037C5 8E 05            [24] 1857 	mov	ar5,r6
      0037C7 7F 00            [12] 1858 	mov	r7,#0x00
      0037C9 C0 06            [24] 1859 	push	ar6
      0037CB C0 05            [24] 1860 	push	ar5
      0037CD C0 07            [24] 1861 	push	ar7
      0037CF 74 02            [12] 1862 	mov	a,#0x02
      0037D1 C0 E0            [24] 1863 	push	acc
      0037D3 E4               [12] 1864 	clr	a
      0037D4 C0 E0            [24] 1865 	push	acc
      0037D6 74 68            [12] 1866 	mov	a,#___str_33
      0037D8 C0 E0            [24] 1867 	push	acc
      0037DA 74 53            [12] 1868 	mov	a,#(___str_33 >> 8)
      0037DC C0 E0            [24] 1869 	push	acc
      0037DE 74 80            [12] 1870 	mov	a,#0x80
      0037E0 C0 E0            [24] 1871 	push	acc
      0037E2 12 3F B1         [24] 1872 	lcall	_printf
      0037E5 E5 81            [12] 1873 	mov	a,sp
      0037E7 24 F9            [12] 1874 	add	a,#0xf9
      0037E9 F5 81            [12] 1875 	mov	sp,a
      0037EB D0 06            [24] 1876 	pop	ar6
                                   1877 ;	8051_i2c_eeprom.c:331: if(read_data == test_data) {
      0037ED BE 26 16         [24] 1878 	cjne	r6,#0x26,00103$
                                   1879 ;	8051_i2c_eeprom.c:332: printf("MATCH - Write/Read successful!\n\r");
      0037F0 74 90            [12] 1880 	mov	a,#___str_34
      0037F2 C0 E0            [24] 1881 	push	acc
      0037F4 74 53            [12] 1882 	mov	a,#(___str_34 >> 8)
      0037F6 C0 E0            [24] 1883 	push	acc
      0037F8 74 80            [12] 1884 	mov	a,#0x80
      0037FA C0 E0            [24] 1885 	push	acc
      0037FC 12 3F B1         [24] 1886 	lcall	_printf
      0037FF 15 81            [12] 1887 	dec	sp
      003801 15 81            [12] 1888 	dec	sp
      003803 15 81            [12] 1889 	dec	sp
      003805 22               [24] 1890 	ret
      003806                       1891 00103$:
                                   1892 ;	8051_i2c_eeprom.c:334: printf("ERROR - Data mismatch!\n\r");
      003806 74 B1            [12] 1893 	mov	a,#___str_35
      003808 C0 E0            [24] 1894 	push	acc
      00380A 74 53            [12] 1895 	mov	a,#(___str_35 >> 8)
      00380C C0 E0            [24] 1896 	push	acc
      00380E 74 80            [12] 1897 	mov	a,#0x80
      003810 C0 E0            [24] 1898 	push	acc
      003812 12 3F B1         [24] 1899 	lcall	_printf
      003815 15 81            [12] 1900 	dec	sp
      003817 15 81            [12] 1901 	dec	sp
      003819 15 81            [12] 1902 	dec	sp
                                   1903 ;	8051_i2c_eeprom.c:338: }
      00381B 22               [24] 1904 	ret
                                   1905 	.area CSEG    (CODE)
                                   1906 	.area CONST   (CODE)
                                   1907 	.area CONST   (CODE)
      004A7F                       1908 ___str_0:
      004A7F 0A                    1909 	.db 0x0a
      004A80 E2                    1910 	.db 0xe2
      004A81 95                    1911 	.db 0x95
      004A82 94                    1912 	.db 0x94
      004A83 E2                    1913 	.db 0xe2
      004A84 95                    1914 	.db 0x95
      004A85 90                    1915 	.db 0x90
      004A86 E2                    1916 	.db 0xe2
      004A87 95                    1917 	.db 0x95
      004A88 90                    1918 	.db 0x90
      004A89 E2                    1919 	.db 0xe2
      004A8A 95                    1920 	.db 0x95
      004A8B 90                    1921 	.db 0x90
      004A8C E2                    1922 	.db 0xe2
      004A8D 95                    1923 	.db 0x95
      004A8E 90                    1924 	.db 0x90
      004A8F E2                    1925 	.db 0xe2
      004A90 95                    1926 	.db 0x95
      004A91 90                    1927 	.db 0x90
      004A92 E2                    1928 	.db 0xe2
      004A93 95                    1929 	.db 0x95
      004A94 90                    1930 	.db 0x90
      004A95 E2                    1931 	.db 0xe2
      004A96 95                    1932 	.db 0x95
      004A97 90                    1933 	.db 0x90
      004A98 E2                    1934 	.db 0xe2
      004A99 95                    1935 	.db 0x95
      004A9A 90                    1936 	.db 0x90
      004A9B E2                    1937 	.db 0xe2
      004A9C 95                    1938 	.db 0x95
      004A9D 90                    1939 	.db 0x90
      004A9E E2                    1940 	.db 0xe2
      004A9F 95                    1941 	.db 0x95
      004AA0 90                    1942 	.db 0x90
      004AA1 E2                    1943 	.db 0xe2
      004AA2 95                    1944 	.db 0x95
      004AA3 90                    1945 	.db 0x90
      004AA4 E2                    1946 	.db 0xe2
      004AA5 95                    1947 	.db 0x95
      004AA6 90                    1948 	.db 0x90
      004AA7 E2                    1949 	.db 0xe2
      004AA8 95                    1950 	.db 0x95
      004AA9 90                    1951 	.db 0x90
      004AAA E2                    1952 	.db 0xe2
      004AAB 95                    1953 	.db 0x95
      004AAC 90                    1954 	.db 0x90
      004AAD E2                    1955 	.db 0xe2
      004AAE 95                    1956 	.db 0x95
      004AAF 90                    1957 	.db 0x90
      004AB0 E2                    1958 	.db 0xe2
      004AB1 95                    1959 	.db 0x95
      004AB2 90                    1960 	.db 0x90
      004AB3 E2                    1961 	.db 0xe2
      004AB4 95                    1962 	.db 0x95
      004AB5 90                    1963 	.db 0x90
      004AB6 E2                    1964 	.db 0xe2
      004AB7 95                    1965 	.db 0x95
      004AB8 90                    1966 	.db 0x90
      004AB9 E2                    1967 	.db 0xe2
      004ABA 95                    1968 	.db 0x95
      004ABB 90                    1969 	.db 0x90
      004ABC E2                    1970 	.db 0xe2
      004ABD 95                    1971 	.db 0x95
      004ABE 90                    1972 	.db 0x90
      004ABF E2                    1973 	.db 0xe2
      004AC0 95                    1974 	.db 0x95
      004AC1 90                    1975 	.db 0x90
      004AC2 E2                    1976 	.db 0xe2
      004AC3 95                    1977 	.db 0x95
      004AC4 90                    1978 	.db 0x90
      004AC5 E2                    1979 	.db 0xe2
      004AC6 95                    1980 	.db 0x95
      004AC7 90                    1981 	.db 0x90
      004AC8 E2                    1982 	.db 0xe2
      004AC9 95                    1983 	.db 0x95
      004ACA 90                    1984 	.db 0x90
      004ACB E2                    1985 	.db 0xe2
      004ACC 95                    1986 	.db 0x95
      004ACD 90                    1987 	.db 0x90
      004ACE E2                    1988 	.db 0xe2
      004ACF 95                    1989 	.db 0x95
      004AD0 90                    1990 	.db 0x90
      004AD1 E2                    1991 	.db 0xe2
      004AD2 95                    1992 	.db 0x95
      004AD3 90                    1993 	.db 0x90
      004AD4 E2                    1994 	.db 0xe2
      004AD5 95                    1995 	.db 0x95
      004AD6 90                    1996 	.db 0x90
      004AD7 E2                    1997 	.db 0xe2
      004AD8 95                    1998 	.db 0x95
      004AD9 90                    1999 	.db 0x90
      004ADA E2                    2000 	.db 0xe2
      004ADB 95                    2001 	.db 0x95
      004ADC 90                    2002 	.db 0x90
      004ADD E2                    2003 	.db 0xe2
      004ADE 95                    2004 	.db 0x95
      004ADF 90                    2005 	.db 0x90
      004AE0 E2                    2006 	.db 0xe2
      004AE1 95                    2007 	.db 0x95
      004AE2 90                    2008 	.db 0x90
      004AE3 E2                    2009 	.db 0xe2
      004AE4 95                    2010 	.db 0x95
      004AE5 90                    2011 	.db 0x90
      004AE6 E2                    2012 	.db 0xe2
      004AE7 95                    2013 	.db 0x95
      004AE8 90                    2014 	.db 0x90
      004AE9 E2                    2015 	.db 0xe2
      004AEA 95                    2016 	.db 0x95
      004AEB 90                    2017 	.db 0x90
      004AEC E2                    2018 	.db 0xe2
      004AED 95                    2019 	.db 0x95
      004AEE 90                    2020 	.db 0x90
      004AEF E2                    2021 	.db 0xe2
      004AF0 95                    2022 	.db 0x95
      004AF1 90                    2023 	.db 0x90
      004AF2 E2                    2024 	.db 0xe2
      004AF3 95                    2025 	.db 0x95
      004AF4 90                    2026 	.db 0x90
      004AF5 E2                    2027 	.db 0xe2
      004AF6 95                    2028 	.db 0x95
      004AF7 90                    2029 	.db 0x90
      004AF8 E2                    2030 	.db 0xe2
      004AF9 95                    2031 	.db 0x95
      004AFA 90                    2032 	.db 0x90
      004AFB E2                    2033 	.db 0xe2
      004AFC 95                    2034 	.db 0x95
      004AFD 90                    2035 	.db 0x90
      004AFE E2                    2036 	.db 0xe2
      004AFF 95                    2037 	.db 0x95
      004B00 90                    2038 	.db 0x90
      004B01 E2                    2039 	.db 0xe2
      004B02 95                    2040 	.db 0x95
      004B03 90                    2041 	.db 0x90
      004B04 E2                    2042 	.db 0xe2
      004B05 95                    2043 	.db 0x95
      004B06 90                    2044 	.db 0x90
      004B07 E2                    2045 	.db 0xe2
      004B08 95                    2046 	.db 0x95
      004B09 90                    2047 	.db 0x90
      004B0A E2                    2048 	.db 0xe2
      004B0B 95                    2049 	.db 0x95
      004B0C 90                    2050 	.db 0x90
      004B0D E2                    2051 	.db 0xe2
      004B0E 95                    2052 	.db 0x95
      004B0F 90                    2053 	.db 0x90
      004B10 E2                    2054 	.db 0xe2
      004B11 95                    2055 	.db 0x95
      004B12 90                    2056 	.db 0x90
      004B13 E2                    2057 	.db 0xe2
      004B14 95                    2058 	.db 0x95
      004B15 90                    2059 	.db 0x90
      004B16 E2                    2060 	.db 0xe2
      004B17 95                    2061 	.db 0x95
      004B18 90                    2062 	.db 0x90
      004B19 E2                    2063 	.db 0xe2
      004B1A 95                    2064 	.db 0x95
      004B1B 90                    2065 	.db 0x90
      004B1C E2                    2066 	.db 0xe2
      004B1D 95                    2067 	.db 0x95
      004B1E 90                    2068 	.db 0x90
      004B1F E2                    2069 	.db 0xe2
      004B20 95                    2070 	.db 0x95
      004B21 90                    2071 	.db 0x90
      004B22 E2                    2072 	.db 0xe2
      004B23 95                    2073 	.db 0x95
      004B24 90                    2074 	.db 0x90
      004B25 E2                    2075 	.db 0xe2
      004B26 95                    2076 	.db 0x95
      004B27 90                    2077 	.db 0x90
      004B28 E2                    2078 	.db 0xe2
      004B29 95                    2079 	.db 0x95
      004B2A 90                    2080 	.db 0x90
      004B2B E2                    2081 	.db 0xe2
      004B2C 95                    2082 	.db 0x95
      004B2D 97                    2083 	.db 0x97
      004B2E 0A                    2084 	.db 0x0a
      004B2F 0D                    2085 	.db 0x0d
      004B30 00                    2086 	.db 0x00
                                   2087 	.area CSEG    (CODE)
                                   2088 	.area CONST   (CODE)
      004B31                       2089 ___str_1:
      004B31 E2                    2090 	.db 0xe2
      004B32 95                    2091 	.db 0x95
      004B33 91                    2092 	.db 0x91
      004B34 20 20 20 20 20 20 20  2093 	.ascii "           I2C Memory Management System v1.0             "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
             20
      004B6D E2                    2094 	.db 0xe2
      004B6E 95                    2095 	.db 0x95
      004B6F 91                    2096 	.db 0x91
      004B70 0A                    2097 	.db 0x0a
      004B71 0D                    2098 	.db 0x0d
      004B72 00                    2099 	.db 0x00
                                   2100 	.area CSEG    (CODE)
                                   2101 	.area CONST   (CODE)
      004B73                       2102 ___str_2:
      004B73 E2                    2103 	.db 0xe2
      004B74 95                    2104 	.db 0x95
      004B75 9A                    2105 	.db 0x9a
      004B76 E2                    2106 	.db 0xe2
      004B77 95                    2107 	.db 0x95
      004B78 90                    2108 	.db 0x90
      004B79 E2                    2109 	.db 0xe2
      004B7A 95                    2110 	.db 0x95
      004B7B 90                    2111 	.db 0x90
      004B7C E2                    2112 	.db 0xe2
      004B7D 95                    2113 	.db 0x95
      004B7E 90                    2114 	.db 0x90
      004B7F E2                    2115 	.db 0xe2
      004B80 95                    2116 	.db 0x95
      004B81 90                    2117 	.db 0x90
      004B82 E2                    2118 	.db 0xe2
      004B83 95                    2119 	.db 0x95
      004B84 90                    2120 	.db 0x90
      004B85 E2                    2121 	.db 0xe2
      004B86 95                    2122 	.db 0x95
      004B87 90                    2123 	.db 0x90
      004B88 E2                    2124 	.db 0xe2
      004B89 95                    2125 	.db 0x95
      004B8A 90                    2126 	.db 0x90
      004B8B E2                    2127 	.db 0xe2
      004B8C 95                    2128 	.db 0x95
      004B8D 90                    2129 	.db 0x90
      004B8E E2                    2130 	.db 0xe2
      004B8F 95                    2131 	.db 0x95
      004B90 90                    2132 	.db 0x90
      004B91 E2                    2133 	.db 0xe2
      004B92 95                    2134 	.db 0x95
      004B93 90                    2135 	.db 0x90
      004B94 E2                    2136 	.db 0xe2
      004B95 95                    2137 	.db 0x95
      004B96 90                    2138 	.db 0x90
      004B97 E2                    2139 	.db 0xe2
      004B98 95                    2140 	.db 0x95
      004B99 90                    2141 	.db 0x90
      004B9A E2                    2142 	.db 0xe2
      004B9B 95                    2143 	.db 0x95
      004B9C 90                    2144 	.db 0x90
      004B9D E2                    2145 	.db 0xe2
      004B9E 95                    2146 	.db 0x95
      004B9F 90                    2147 	.db 0x90
      004BA0 E2                    2148 	.db 0xe2
      004BA1 95                    2149 	.db 0x95
      004BA2 90                    2150 	.db 0x90
      004BA3 E2                    2151 	.db 0xe2
      004BA4 95                    2152 	.db 0x95
      004BA5 90                    2153 	.db 0x90
      004BA6 E2                    2154 	.db 0xe2
      004BA7 95                    2155 	.db 0x95
      004BA8 90                    2156 	.db 0x90
      004BA9 E2                    2157 	.db 0xe2
      004BAA 95                    2158 	.db 0x95
      004BAB 90                    2159 	.db 0x90
      004BAC E2                    2160 	.db 0xe2
      004BAD 95                    2161 	.db 0x95
      004BAE 90                    2162 	.db 0x90
      004BAF E2                    2163 	.db 0xe2
      004BB0 95                    2164 	.db 0x95
      004BB1 90                    2165 	.db 0x90
      004BB2 E2                    2166 	.db 0xe2
      004BB3 95                    2167 	.db 0x95
      004BB4 90                    2168 	.db 0x90
      004BB5 E2                    2169 	.db 0xe2
      004BB6 95                    2170 	.db 0x95
      004BB7 90                    2171 	.db 0x90
      004BB8 E2                    2172 	.db 0xe2
      004BB9 95                    2173 	.db 0x95
      004BBA 90                    2174 	.db 0x90
      004BBB E2                    2175 	.db 0xe2
      004BBC 95                    2176 	.db 0x95
      004BBD 90                    2177 	.db 0x90
      004BBE E2                    2178 	.db 0xe2
      004BBF 95                    2179 	.db 0x95
      004BC0 90                    2180 	.db 0x90
      004BC1 E2                    2181 	.db 0xe2
      004BC2 95                    2182 	.db 0x95
      004BC3 90                    2183 	.db 0x90
      004BC4 E2                    2184 	.db 0xe2
      004BC5 95                    2185 	.db 0x95
      004BC6 90                    2186 	.db 0x90
      004BC7 E2                    2187 	.db 0xe2
      004BC8 95                    2188 	.db 0x95
      004BC9 90                    2189 	.db 0x90
      004BCA E2                    2190 	.db 0xe2
      004BCB 95                    2191 	.db 0x95
      004BCC 90                    2192 	.db 0x90
      004BCD E2                    2193 	.db 0xe2
      004BCE 95                    2194 	.db 0x95
      004BCF 90                    2195 	.db 0x90
      004BD0 E2                    2196 	.db 0xe2
      004BD1 95                    2197 	.db 0x95
      004BD2 90                    2198 	.db 0x90
      004BD3 E2                    2199 	.db 0xe2
      004BD4 95                    2200 	.db 0x95
      004BD5 90                    2201 	.db 0x90
      004BD6 E2                    2202 	.db 0xe2
      004BD7 95                    2203 	.db 0x95
      004BD8 90                    2204 	.db 0x90
      004BD9 E2                    2205 	.db 0xe2
      004BDA 95                    2206 	.db 0x95
      004BDB 90                    2207 	.db 0x90
      004BDC E2                    2208 	.db 0xe2
      004BDD 95                    2209 	.db 0x95
      004BDE 90                    2210 	.db 0x90
      004BDF E2                    2211 	.db 0xe2
      004BE0 95                    2212 	.db 0x95
      004BE1 90                    2213 	.db 0x90
      004BE2 E2                    2214 	.db 0xe2
      004BE3 95                    2215 	.db 0x95
      004BE4 90                    2216 	.db 0x90
      004BE5 E2                    2217 	.db 0xe2
      004BE6 95                    2218 	.db 0x95
      004BE7 90                    2219 	.db 0x90
      004BE8 E2                    2220 	.db 0xe2
      004BE9 95                    2221 	.db 0x95
      004BEA 90                    2222 	.db 0x90
      004BEB E2                    2223 	.db 0xe2
      004BEC 95                    2224 	.db 0x95
      004BED 90                    2225 	.db 0x90
      004BEE E2                    2226 	.db 0xe2
      004BEF 95                    2227 	.db 0x95
      004BF0 90                    2228 	.db 0x90
      004BF1 E2                    2229 	.db 0xe2
      004BF2 95                    2230 	.db 0x95
      004BF3 90                    2231 	.db 0x90
      004BF4 E2                    2232 	.db 0xe2
      004BF5 95                    2233 	.db 0x95
      004BF6 90                    2234 	.db 0x90
      004BF7 E2                    2235 	.db 0xe2
      004BF8 95                    2236 	.db 0x95
      004BF9 90                    2237 	.db 0x90
      004BFA E2                    2238 	.db 0xe2
      004BFB 95                    2239 	.db 0x95
      004BFC 90                    2240 	.db 0x90
      004BFD E2                    2241 	.db 0xe2
      004BFE 95                    2242 	.db 0x95
      004BFF 90                    2243 	.db 0x90
      004C00 E2                    2244 	.db 0xe2
      004C01 95                    2245 	.db 0x95
      004C02 90                    2246 	.db 0x90
      004C03 E2                    2247 	.db 0xe2
      004C04 95                    2248 	.db 0x95
      004C05 90                    2249 	.db 0x90
      004C06 E2                    2250 	.db 0xe2
      004C07 95                    2251 	.db 0x95
      004C08 90                    2252 	.db 0x90
      004C09 E2                    2253 	.db 0xe2
      004C0A 95                    2254 	.db 0x95
      004C0B 90                    2255 	.db 0x90
      004C0C E2                    2256 	.db 0xe2
      004C0D 95                    2257 	.db 0x95
      004C0E 90                    2258 	.db 0x90
      004C0F E2                    2259 	.db 0xe2
      004C10 95                    2260 	.db 0x95
      004C11 90                    2261 	.db 0x90
      004C12 E2                    2262 	.db 0xe2
      004C13 95                    2263 	.db 0x95
      004C14 90                    2264 	.db 0x90
      004C15 E2                    2265 	.db 0xe2
      004C16 95                    2266 	.db 0x95
      004C17 90                    2267 	.db 0x90
      004C18 E2                    2268 	.db 0xe2
      004C19 95                    2269 	.db 0x95
      004C1A 90                    2270 	.db 0x90
      004C1B E2                    2271 	.db 0xe2
      004C1C 95                    2272 	.db 0x95
      004C1D 90                    2273 	.db 0x90
      004C1E E2                    2274 	.db 0xe2
      004C1F 95                    2275 	.db 0x95
      004C20 9D                    2276 	.db 0x9d
      004C21 0A                    2277 	.db 0x0a
      004C22 0D                    2278 	.db 0x0d
      004C23 00                    2279 	.db 0x00
                                   2280 	.area CSEG    (CODE)
                                   2281 	.area CONST   (CODE)
      004C24                       2282 ___str_3:
      004C24 0A                    2283 	.db 0x0a
      004C25 0D                    2284 	.db 0x0d
      004C26 E2                    2285 	.db 0xe2
      004C27 94                    2286 	.db 0x94
      004C28 8C                    2287 	.db 0x8c
      004C29 E2                    2288 	.db 0xe2
      004C2A 94                    2289 	.db 0x94
      004C2B 80                    2290 	.db 0x80
      004C2C E2                    2291 	.db 0xe2
      004C2D 94                    2292 	.db 0x94
      004C2E 80                    2293 	.db 0x80
      004C2F E2                    2294 	.db 0xe2
      004C30 94                    2295 	.db 0x94
      004C31 80                    2296 	.db 0x80
      004C32 E2                    2297 	.db 0xe2
      004C33 94                    2298 	.db 0x94
      004C34 80                    2299 	.db 0x80
      004C35 E2                    2300 	.db 0xe2
      004C36 94                    2301 	.db 0x94
      004C37 80                    2302 	.db 0x80
      004C38 E2                    2303 	.db 0xe2
      004C39 94                    2304 	.db 0x94
      004C3A 80                    2305 	.db 0x80
      004C3B E2                    2306 	.db 0xe2
      004C3C 94                    2307 	.db 0x94
      004C3D 80                    2308 	.db 0x80
      004C3E E2                    2309 	.db 0xe2
      004C3F 94                    2310 	.db 0x94
      004C40 80                    2311 	.db 0x80
      004C41 E2                    2312 	.db 0xe2
      004C42 94                    2313 	.db 0x94
      004C43 80                    2314 	.db 0x80
      004C44 E2                    2315 	.db 0xe2
      004C45 94                    2316 	.db 0x94
      004C46 80                    2317 	.db 0x80
      004C47 E2                    2318 	.db 0xe2
      004C48 94                    2319 	.db 0x94
      004C49 80                    2320 	.db 0x80
      004C4A E2                    2321 	.db 0xe2
      004C4B 94                    2322 	.db 0x94
      004C4C 80                    2323 	.db 0x80
      004C4D E2                    2324 	.db 0xe2
      004C4E 94                    2325 	.db 0x94
      004C4F AC                    2326 	.db 0xac
      004C50 E2                    2327 	.db 0xe2
      004C51 94                    2328 	.db 0x94
      004C52 80                    2329 	.db 0x80
      004C53 E2                    2330 	.db 0xe2
      004C54 94                    2331 	.db 0x94
      004C55 80                    2332 	.db 0x80
      004C56 E2                    2333 	.db 0xe2
      004C57 94                    2334 	.db 0x94
      004C58 80                    2335 	.db 0x80
      004C59 E2                    2336 	.db 0xe2
      004C5A 94                    2337 	.db 0x94
      004C5B 80                    2338 	.db 0x80
      004C5C E2                    2339 	.db 0xe2
      004C5D 94                    2340 	.db 0x94
      004C5E 80                    2341 	.db 0x80
      004C5F E2                    2342 	.db 0xe2
      004C60 94                    2343 	.db 0x94
      004C61 80                    2344 	.db 0x80
      004C62 E2                    2345 	.db 0xe2
      004C63 94                    2346 	.db 0x94
      004C64 80                    2347 	.db 0x80
      004C65 E2                    2348 	.db 0xe2
      004C66 94                    2349 	.db 0x94
      004C67 80                    2350 	.db 0x80
      004C68 E2                    2351 	.db 0xe2
      004C69 94                    2352 	.db 0x94
      004C6A 80                    2353 	.db 0x80
      004C6B E2                    2354 	.db 0xe2
      004C6C 94                    2355 	.db 0x94
      004C6D 80                    2356 	.db 0x80
      004C6E E2                    2357 	.db 0xe2
      004C6F 94                    2358 	.db 0x94
      004C70 80                    2359 	.db 0x80
      004C71 E2                    2360 	.db 0xe2
      004C72 94                    2361 	.db 0x94
      004C73 80                    2362 	.db 0x80
      004C74 E2                    2363 	.db 0xe2
      004C75 94                    2364 	.db 0x94
      004C76 80                    2365 	.db 0x80
      004C77 E2                    2366 	.db 0xe2
      004C78 94                    2367 	.db 0x94
      004C79 80                    2368 	.db 0x80
      004C7A E2                    2369 	.db 0xe2
      004C7B 94                    2370 	.db 0x94
      004C7C 80                    2371 	.db 0x80
      004C7D E2                    2372 	.db 0xe2
      004C7E 94                    2373 	.db 0x94
      004C7F 80                    2374 	.db 0x80
      004C80 E2                    2375 	.db 0xe2
      004C81 94                    2376 	.db 0x94
      004C82 80                    2377 	.db 0x80
      004C83 E2                    2378 	.db 0xe2
      004C84 94                    2379 	.db 0x94
      004C85 80                    2380 	.db 0x80
      004C86 E2                    2381 	.db 0xe2
      004C87 94                    2382 	.db 0x94
      004C88 80                    2383 	.db 0x80
      004C89 E2                    2384 	.db 0xe2
      004C8A 94                    2385 	.db 0x94
      004C8B 80                    2386 	.db 0x80
      004C8C E2                    2387 	.db 0xe2
      004C8D 94                    2388 	.db 0x94
      004C8E 80                    2389 	.db 0x80
      004C8F E2                    2390 	.db 0xe2
      004C90 94                    2391 	.db 0x94
      004C91 80                    2392 	.db 0x80
      004C92 E2                    2393 	.db 0xe2
      004C93 94                    2394 	.db 0x94
      004C94 80                    2395 	.db 0x80
      004C95 E2                    2396 	.db 0xe2
      004C96 94                    2397 	.db 0x94
      004C97 80                    2398 	.db 0x80
      004C98 E2                    2399 	.db 0xe2
      004C99 94                    2400 	.db 0x94
      004C9A 80                    2401 	.db 0x80
      004C9B E2                    2402 	.db 0xe2
      004C9C 94                    2403 	.db 0x94
      004C9D 80                    2404 	.db 0x80
      004C9E E2                    2405 	.db 0xe2
      004C9F 94                    2406 	.db 0x94
      004CA0 80                    2407 	.db 0x80
      004CA1 E2                    2408 	.db 0xe2
      004CA2 94                    2409 	.db 0x94
      004CA3 80                    2410 	.db 0x80
      004CA4 E2                    2411 	.db 0xe2
      004CA5 94                    2412 	.db 0x94
      004CA6 80                    2413 	.db 0x80
      004CA7 E2                    2414 	.db 0xe2
      004CA8 94                    2415 	.db 0x94
      004CA9 80                    2416 	.db 0x80
      004CAA E2                    2417 	.db 0xe2
      004CAB 94                    2418 	.db 0x94
      004CAC 80                    2419 	.db 0x80
      004CAD E2                    2420 	.db 0xe2
      004CAE 94                    2421 	.db 0x94
      004CAF 80                    2422 	.db 0x80
      004CB0 E2                    2423 	.db 0xe2
      004CB1 94                    2424 	.db 0x94
      004CB2 80                    2425 	.db 0x80
      004CB3 E2                    2426 	.db 0xe2
      004CB4 94                    2427 	.db 0x94
      004CB5 80                    2428 	.db 0x80
      004CB6 E2                    2429 	.db 0xe2
      004CB7 94                    2430 	.db 0x94
      004CB8 80                    2431 	.db 0x80
      004CB9 E2                    2432 	.db 0xe2
      004CBA 94                    2433 	.db 0x94
      004CBB 80                    2434 	.db 0x80
      004CBC E2                    2435 	.db 0xe2
      004CBD 94                    2436 	.db 0x94
      004CBE 80                    2437 	.db 0x80
      004CBF E2                    2438 	.db 0xe2
      004CC0 94                    2439 	.db 0x94
      004CC1 80                    2440 	.db 0x80
      004CC2 E2                    2441 	.db 0xe2
      004CC3 94                    2442 	.db 0x94
      004CC4 80                    2443 	.db 0x80
      004CC5 E2                    2444 	.db 0xe2
      004CC6 94                    2445 	.db 0x94
      004CC7 80                    2446 	.db 0x80
      004CC8 E2                    2447 	.db 0xe2
      004CC9 94                    2448 	.db 0x94
      004CCA 80                    2449 	.db 0x80
      004CCB E2                    2450 	.db 0xe2
      004CCC 94                    2451 	.db 0x94
      004CCD 80                    2452 	.db 0x80
      004CCE E2                    2453 	.db 0xe2
      004CCF 94                    2454 	.db 0x94
      004CD0 80                    2455 	.db 0x80
      004CD1 E2                    2456 	.db 0xe2
      004CD2 94                    2457 	.db 0x94
      004CD3 80                    2458 	.db 0x80
      004CD4 E2                    2459 	.db 0xe2
      004CD5 94                    2460 	.db 0x94
      004CD6 90                    2461 	.db 0x90
      004CD7 0A                    2462 	.db 0x0a
      004CD8 0D                    2463 	.db 0x0d
      004CD9 00                    2464 	.db 0x00
                                   2465 	.area CSEG    (CODE)
                                   2466 	.area CONST   (CODE)
      004CDA                       2467 ___str_4:
      004CDA E2                    2468 	.db 0xe2
      004CDB 94                    2469 	.db 0x94
      004CDC 82                    2470 	.db 0x82
      004CDD 20 20 43 6F 6D 6D 61  2471 	.ascii "  Command   "
             6E 64 20 20 20
      004CE9 E2                    2472 	.db 0xe2
      004CEA 94                    2473 	.db 0x94
      004CEB 82                    2474 	.db 0x82
      004CEC 20 20 20 20 20 20 20  2475 	.ascii "               Description                   "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20
      004D19 E2                    2476 	.db 0xe2
      004D1A 94                    2477 	.db 0x94
      004D1B 82                    2478 	.db 0x82
      004D1C 0A                    2479 	.db 0x0a
      004D1D 0D                    2480 	.db 0x0d
      004D1E 00                    2481 	.db 0x00
                                   2482 	.area CSEG    (CODE)
                                   2483 	.area CONST   (CODE)
      004D1F                       2484 ___str_5:
      004D1F E2                    2485 	.db 0xe2
      004D20 94                    2486 	.db 0x94
      004D21 9C                    2487 	.db 0x9c
      004D22 E2                    2488 	.db 0xe2
      004D23 94                    2489 	.db 0x94
      004D24 80                    2490 	.db 0x80
      004D25 E2                    2491 	.db 0xe2
      004D26 94                    2492 	.db 0x94
      004D27 80                    2493 	.db 0x80
      004D28 E2                    2494 	.db 0xe2
      004D29 94                    2495 	.db 0x94
      004D2A 80                    2496 	.db 0x80
      004D2B E2                    2497 	.db 0xe2
      004D2C 94                    2498 	.db 0x94
      004D2D 80                    2499 	.db 0x80
      004D2E E2                    2500 	.db 0xe2
      004D2F 94                    2501 	.db 0x94
      004D30 80                    2502 	.db 0x80
      004D31 E2                    2503 	.db 0xe2
      004D32 94                    2504 	.db 0x94
      004D33 80                    2505 	.db 0x80
      004D34 E2                    2506 	.db 0xe2
      004D35 94                    2507 	.db 0x94
      004D36 80                    2508 	.db 0x80
      004D37 E2                    2509 	.db 0xe2
      004D38 94                    2510 	.db 0x94
      004D39 80                    2511 	.db 0x80
      004D3A E2                    2512 	.db 0xe2
      004D3B 94                    2513 	.db 0x94
      004D3C 80                    2514 	.db 0x80
      004D3D E2                    2515 	.db 0xe2
      004D3E 94                    2516 	.db 0x94
      004D3F 80                    2517 	.db 0x80
      004D40 E2                    2518 	.db 0xe2
      004D41 94                    2519 	.db 0x94
      004D42 80                    2520 	.db 0x80
      004D43 E2                    2521 	.db 0xe2
      004D44 94                    2522 	.db 0x94
      004D45 80                    2523 	.db 0x80
      004D46 E2                    2524 	.db 0xe2
      004D47 94                    2525 	.db 0x94
      004D48 BC                    2526 	.db 0xbc
      004D49 E2                    2527 	.db 0xe2
      004D4A 94                    2528 	.db 0x94
      004D4B 80                    2529 	.db 0x80
      004D4C E2                    2530 	.db 0xe2
      004D4D 94                    2531 	.db 0x94
      004D4E 80                    2532 	.db 0x80
      004D4F E2                    2533 	.db 0xe2
      004D50 94                    2534 	.db 0x94
      004D51 80                    2535 	.db 0x80
      004D52 E2                    2536 	.db 0xe2
      004D53 94                    2537 	.db 0x94
      004D54 80                    2538 	.db 0x80
      004D55 E2                    2539 	.db 0xe2
      004D56 94                    2540 	.db 0x94
      004D57 80                    2541 	.db 0x80
      004D58 E2                    2542 	.db 0xe2
      004D59 94                    2543 	.db 0x94
      004D5A 80                    2544 	.db 0x80
      004D5B E2                    2545 	.db 0xe2
      004D5C 94                    2546 	.db 0x94
      004D5D 80                    2547 	.db 0x80
      004D5E E2                    2548 	.db 0xe2
      004D5F 94                    2549 	.db 0x94
      004D60 80                    2550 	.db 0x80
      004D61 E2                    2551 	.db 0xe2
      004D62 94                    2552 	.db 0x94
      004D63 80                    2553 	.db 0x80
      004D64 E2                    2554 	.db 0xe2
      004D65 94                    2555 	.db 0x94
      004D66 80                    2556 	.db 0x80
      004D67 E2                    2557 	.db 0xe2
      004D68 94                    2558 	.db 0x94
      004D69 80                    2559 	.db 0x80
      004D6A E2                    2560 	.db 0xe2
      004D6B 94                    2561 	.db 0x94
      004D6C 80                    2562 	.db 0x80
      004D6D E2                    2563 	.db 0xe2
      004D6E 94                    2564 	.db 0x94
      004D6F 80                    2565 	.db 0x80
      004D70 E2                    2566 	.db 0xe2
      004D71 94                    2567 	.db 0x94
      004D72 80                    2568 	.db 0x80
      004D73 E2                    2569 	.db 0xe2
      004D74 94                    2570 	.db 0x94
      004D75 80                    2571 	.db 0x80
      004D76 E2                    2572 	.db 0xe2
      004D77 94                    2573 	.db 0x94
      004D78 80                    2574 	.db 0x80
      004D79 E2                    2575 	.db 0xe2
      004D7A 94                    2576 	.db 0x94
      004D7B 80                    2577 	.db 0x80
      004D7C E2                    2578 	.db 0xe2
      004D7D 94                    2579 	.db 0x94
      004D7E 80                    2580 	.db 0x80
      004D7F E2                    2581 	.db 0xe2
      004D80 94                    2582 	.db 0x94
      004D81 80                    2583 	.db 0x80
      004D82 E2                    2584 	.db 0xe2
      004D83 94                    2585 	.db 0x94
      004D84 80                    2586 	.db 0x80
      004D85 E2                    2587 	.db 0xe2
      004D86 94                    2588 	.db 0x94
      004D87 80                    2589 	.db 0x80
      004D88 E2                    2590 	.db 0xe2
      004D89 94                    2591 	.db 0x94
      004D8A 80                    2592 	.db 0x80
      004D8B E2                    2593 	.db 0xe2
      004D8C 94                    2594 	.db 0x94
      004D8D 80                    2595 	.db 0x80
      004D8E E2                    2596 	.db 0xe2
      004D8F 94                    2597 	.db 0x94
      004D90 80                    2598 	.db 0x80
      004D91 E2                    2599 	.db 0xe2
      004D92 94                    2600 	.db 0x94
      004D93 80                    2601 	.db 0x80
      004D94 E2                    2602 	.db 0xe2
      004D95 94                    2603 	.db 0x94
      004D96 80                    2604 	.db 0x80
      004D97 E2                    2605 	.db 0xe2
      004D98 94                    2606 	.db 0x94
      004D99 80                    2607 	.db 0x80
      004D9A E2                    2608 	.db 0xe2
      004D9B 94                    2609 	.db 0x94
      004D9C 80                    2610 	.db 0x80
      004D9D E2                    2611 	.db 0xe2
      004D9E 94                    2612 	.db 0x94
      004D9F 80                    2613 	.db 0x80
      004DA0 E2                    2614 	.db 0xe2
      004DA1 94                    2615 	.db 0x94
      004DA2 80                    2616 	.db 0x80
      004DA3 E2                    2617 	.db 0xe2
      004DA4 94                    2618 	.db 0x94
      004DA5 80                    2619 	.db 0x80
      004DA6 E2                    2620 	.db 0xe2
      004DA7 94                    2621 	.db 0x94
      004DA8 80                    2622 	.db 0x80
      004DA9 E2                    2623 	.db 0xe2
      004DAA 94                    2624 	.db 0x94
      004DAB 80                    2625 	.db 0x80
      004DAC E2                    2626 	.db 0xe2
      004DAD 94                    2627 	.db 0x94
      004DAE 80                    2628 	.db 0x80
      004DAF E2                    2629 	.db 0xe2
      004DB0 94                    2630 	.db 0x94
      004DB1 80                    2631 	.db 0x80
      004DB2 E2                    2632 	.db 0xe2
      004DB3 94                    2633 	.db 0x94
      004DB4 80                    2634 	.db 0x80
      004DB5 E2                    2635 	.db 0xe2
      004DB6 94                    2636 	.db 0x94
      004DB7 80                    2637 	.db 0x80
      004DB8 E2                    2638 	.db 0xe2
      004DB9 94                    2639 	.db 0x94
      004DBA 80                    2640 	.db 0x80
      004DBB E2                    2641 	.db 0xe2
      004DBC 94                    2642 	.db 0x94
      004DBD 80                    2643 	.db 0x80
      004DBE E2                    2644 	.db 0xe2
      004DBF 94                    2645 	.db 0x94
      004DC0 80                    2646 	.db 0x80
      004DC1 E2                    2647 	.db 0xe2
      004DC2 94                    2648 	.db 0x94
      004DC3 80                    2649 	.db 0x80
      004DC4 E2                    2650 	.db 0xe2
      004DC5 94                    2651 	.db 0x94
      004DC6 80                    2652 	.db 0x80
      004DC7 E2                    2653 	.db 0xe2
      004DC8 94                    2654 	.db 0x94
      004DC9 80                    2655 	.db 0x80
      004DCA E2                    2656 	.db 0xe2
      004DCB 94                    2657 	.db 0x94
      004DCC 80                    2658 	.db 0x80
      004DCD E2                    2659 	.db 0xe2
      004DCE 94                    2660 	.db 0x94
      004DCF A4                    2661 	.db 0xa4
      004DD0 0A                    2662 	.db 0x0a
      004DD1 0D                    2663 	.db 0x0d
      004DD2 00                    2664 	.db 0x00
                                   2665 	.area CSEG    (CODE)
                                   2666 	.area CONST   (CODE)
      004DD3                       2667 ___str_6:
      004DD3 E2                    2668 	.db 0xe2
      004DD4 94                    2669 	.db 0x94
      004DD5 82                    2670 	.db 0x82
      004DD6 20 20 20 20 20 52 20  2671 	.ascii "     R      "
             20 20 20 20 20
      004DE2 E2                    2672 	.db 0xe2
      004DE3 94                    2673 	.db 0x94
      004DE4 82                    2674 	.db 0x82
      004DE5 20 52 65 61 64 20 66  2675 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004E11 E2                    2676 	.db 0xe2
      004E12 94                    2677 	.db 0x94
      004E13 82                    2678 	.db 0x82
      004E14 0A                    2679 	.db 0x0a
      004E15 0D                    2680 	.db 0x0d
      004E16 00                    2681 	.db 0x00
                                   2682 	.area CSEG    (CODE)
                                   2683 	.area CONST   (CODE)
      004E17                       2684 ___str_7:
      004E17 E2                    2685 	.db 0xe2
      004E18 94                    2686 	.db 0x94
      004E19 82                    2687 	.db 0x82
      004E1A 20 20 20 20 20 57 20  2688 	.ascii "     W      "
             20 20 20 20 20
      004E26 E2                    2689 	.db 0xe2
      004E27 94                    2690 	.db 0x94
      004E28 82                    2691 	.db 0x82
      004E29 20 57 72 69 74 65 20  2692 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004E55 E2                    2693 	.db 0xe2
      004E56 94                    2694 	.db 0x94
      004E57 82                    2695 	.db 0x82
      004E58 0A                    2696 	.db 0x0a
      004E59 0D                    2697 	.db 0x0d
      004E5A 00                    2698 	.db 0x00
                                   2699 	.area CSEG    (CODE)
                                   2700 	.area CONST   (CODE)
      004E5B                       2701 ___str_8:
      004E5B E2                    2702 	.db 0xe2
      004E5C 94                    2703 	.db 0x94
      004E5D 82                    2704 	.db 0x82
      004E5E 20 20 20 20 20 48 20  2705 	.ascii "     H      "
             20 20 20 20 20
      004E6A E2                    2706 	.db 0xe2
      004E6B 94                    2707 	.db 0x94
      004E6C 82                    2708 	.db 0x82
      004E6D 20 44 69 73 70 6C 61  2709 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004E99 E2                    2710 	.db 0xe2
      004E9A 94                    2711 	.db 0x94
      004E9B 82                    2712 	.db 0x82
      004E9C 0A                    2713 	.db 0x0a
      004E9D 0D                    2714 	.db 0x0d
      004E9E 00                    2715 	.db 0x00
                                   2716 	.area CSEG    (CODE)
                                   2717 	.area CONST   (CODE)
      004E9F                       2718 ___str_9:
      004E9F E2                    2719 	.db 0xe2
      004EA0 94                    2720 	.db 0x94
      004EA1 82                    2721 	.db 0x82
      004EA2 20 20 20 20 20 58 20  2722 	.ascii "     X      "
             20 20 20 20 20
      004EAE E2                    2723 	.db 0xe2
      004EAF 94                    2724 	.db 0x94
      004EB0 82                    2725 	.db 0x82
      004EB1 20 52 65 73 65 74 20  2726 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004EDD E2                    2727 	.db 0xe2
      004EDE 94                    2728 	.db 0x94
      004EDF 82                    2729 	.db 0x82
      004EE0 0A                    2730 	.db 0x0a
      004EE1 0D                    2731 	.db 0x0d
      004EE2 00                    2732 	.db 0x00
                                   2733 	.area CSEG    (CODE)
                                   2734 	.area CONST   (CODE)
      004EE3                       2735 ___str_10:
      004EE3 E2                    2736 	.db 0xe2
      004EE4 94                    2737 	.db 0x94
      004EE5 82                    2738 	.db 0x82
      004EE6 20 20 20 20 20 3F 20  2739 	.ascii "     ?      "
             20 20 20 20 20
      004EF2 E2                    2740 	.db 0xe2
      004EF3 94                    2741 	.db 0x94
      004EF4 82                    2742 	.db 0x82
      004EF5 20 44 69 73 70 6C 61  2743 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004F21 E2                    2744 	.db 0xe2
      004F22 94                    2745 	.db 0x94
      004F23 82                    2746 	.db 0x82
      004F24 0A                    2747 	.db 0x0a
      004F25 0D                    2748 	.db 0x0d
      004F26 00                    2749 	.db 0x00
                                   2750 	.area CSEG    (CODE)
                                   2751 	.area CONST   (CODE)
      004F27                       2752 ___str_11:
      004F27 E2                    2753 	.db 0xe2
      004F28 94                    2754 	.db 0x94
      004F29 82                    2755 	.db 0x82
      004F2A 20 20 20 20 20 51 20  2756 	.ascii "     Q      "
             20 20 20 20 20
      004F36 E2                    2757 	.db 0xe2
      004F37 94                    2758 	.db 0x94
      004F38 82                    2759 	.db 0x82
      004F39 20 51 75 69 74 20 70  2760 	.ascii " Quit program                              "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20
      004F64 E2                    2761 	.db 0xe2
      004F65 94                    2762 	.db 0x94
      004F66 82                    2763 	.db 0x82
      004F67 0A                    2764 	.db 0x0a
      004F68 0D                    2765 	.db 0x0d
      004F69 00                    2766 	.db 0x00
                                   2767 	.area CSEG    (CODE)
                                   2768 	.area CONST   (CODE)
      004F6A                       2769 ___str_12:
      004F6A E2                    2770 	.db 0xe2
      004F6B 94                    2771 	.db 0x94
      004F6C 94                    2772 	.db 0x94
      004F6D E2                    2773 	.db 0xe2
      004F6E 94                    2774 	.db 0x94
      004F6F 80                    2775 	.db 0x80
      004F70 E2                    2776 	.db 0xe2
      004F71 94                    2777 	.db 0x94
      004F72 80                    2778 	.db 0x80
      004F73 E2                    2779 	.db 0xe2
      004F74 94                    2780 	.db 0x94
      004F75 80                    2781 	.db 0x80
      004F76 E2                    2782 	.db 0xe2
      004F77 94                    2783 	.db 0x94
      004F78 80                    2784 	.db 0x80
      004F79 E2                    2785 	.db 0xe2
      004F7A 94                    2786 	.db 0x94
      004F7B 80                    2787 	.db 0x80
      004F7C E2                    2788 	.db 0xe2
      004F7D 94                    2789 	.db 0x94
      004F7E 80                    2790 	.db 0x80
      004F7F E2                    2791 	.db 0xe2
      004F80 94                    2792 	.db 0x94
      004F81 80                    2793 	.db 0x80
      004F82 E2                    2794 	.db 0xe2
      004F83 94                    2795 	.db 0x94
      004F84 80                    2796 	.db 0x80
      004F85 E2                    2797 	.db 0xe2
      004F86 94                    2798 	.db 0x94
      004F87 80                    2799 	.db 0x80
      004F88 E2                    2800 	.db 0xe2
      004F89 94                    2801 	.db 0x94
      004F8A 80                    2802 	.db 0x80
      004F8B E2                    2803 	.db 0xe2
      004F8C 94                    2804 	.db 0x94
      004F8D 80                    2805 	.db 0x80
      004F8E E2                    2806 	.db 0xe2
      004F8F 94                    2807 	.db 0x94
      004F90 80                    2808 	.db 0x80
      004F91 E2                    2809 	.db 0xe2
      004F92 94                    2810 	.db 0x94
      004F93 B4                    2811 	.db 0xb4
      004F94 E2                    2812 	.db 0xe2
      004F95 94                    2813 	.db 0x94
      004F96 80                    2814 	.db 0x80
      004F97 E2                    2815 	.db 0xe2
      004F98 94                    2816 	.db 0x94
      004F99 80                    2817 	.db 0x80
      004F9A E2                    2818 	.db 0xe2
      004F9B 94                    2819 	.db 0x94
      004F9C 80                    2820 	.db 0x80
      004F9D E2                    2821 	.db 0xe2
      004F9E 94                    2822 	.db 0x94
      004F9F 80                    2823 	.db 0x80
      004FA0 E2                    2824 	.db 0xe2
      004FA1 94                    2825 	.db 0x94
      004FA2 80                    2826 	.db 0x80
      004FA3 E2                    2827 	.db 0xe2
      004FA4 94                    2828 	.db 0x94
      004FA5 80                    2829 	.db 0x80
      004FA6 E2                    2830 	.db 0xe2
      004FA7 94                    2831 	.db 0x94
      004FA8 80                    2832 	.db 0x80
      004FA9 E2                    2833 	.db 0xe2
      004FAA 94                    2834 	.db 0x94
      004FAB 80                    2835 	.db 0x80
      004FAC E2                    2836 	.db 0xe2
      004FAD 94                    2837 	.db 0x94
      004FAE 80                    2838 	.db 0x80
      004FAF E2                    2839 	.db 0xe2
      004FB0 94                    2840 	.db 0x94
      004FB1 80                    2841 	.db 0x80
      004FB2 E2                    2842 	.db 0xe2
      004FB3 94                    2843 	.db 0x94
      004FB4 80                    2844 	.db 0x80
      004FB5 E2                    2845 	.db 0xe2
      004FB6 94                    2846 	.db 0x94
      004FB7 80                    2847 	.db 0x80
      004FB8 E2                    2848 	.db 0xe2
      004FB9 94                    2849 	.db 0x94
      004FBA 80                    2850 	.db 0x80
      004FBB E2                    2851 	.db 0xe2
      004FBC 94                    2852 	.db 0x94
      004FBD 80                    2853 	.db 0x80
      004FBE E2                    2854 	.db 0xe2
      004FBF 94                    2855 	.db 0x94
      004FC0 80                    2856 	.db 0x80
      004FC1 E2                    2857 	.db 0xe2
      004FC2 94                    2858 	.db 0x94
      004FC3 80                    2859 	.db 0x80
      004FC4 E2                    2860 	.db 0xe2
      004FC5 94                    2861 	.db 0x94
      004FC6 80                    2862 	.db 0x80
      004FC7 E2                    2863 	.db 0xe2
      004FC8 94                    2864 	.db 0x94
      004FC9 80                    2865 	.db 0x80
      004FCA E2                    2866 	.db 0xe2
      004FCB 94                    2867 	.db 0x94
      004FCC 80                    2868 	.db 0x80
      004FCD E2                    2869 	.db 0xe2
      004FCE 94                    2870 	.db 0x94
      004FCF 80                    2871 	.db 0x80
      004FD0 E2                    2872 	.db 0xe2
      004FD1 94                    2873 	.db 0x94
      004FD2 80                    2874 	.db 0x80
      004FD3 E2                    2875 	.db 0xe2
      004FD4 94                    2876 	.db 0x94
      004FD5 80                    2877 	.db 0x80
      004FD6 E2                    2878 	.db 0xe2
      004FD7 94                    2879 	.db 0x94
      004FD8 80                    2880 	.db 0x80
      004FD9 E2                    2881 	.db 0xe2
      004FDA 94                    2882 	.db 0x94
      004FDB 80                    2883 	.db 0x80
      004FDC E2                    2884 	.db 0xe2
      004FDD 94                    2885 	.db 0x94
      004FDE 80                    2886 	.db 0x80
      004FDF E2                    2887 	.db 0xe2
      004FE0 94                    2888 	.db 0x94
      004FE1 80                    2889 	.db 0x80
      004FE2 E2                    2890 	.db 0xe2
      004FE3 94                    2891 	.db 0x94
      004FE4 80                    2892 	.db 0x80
      004FE5 E2                    2893 	.db 0xe2
      004FE6 94                    2894 	.db 0x94
      004FE7 80                    2895 	.db 0x80
      004FE8 E2                    2896 	.db 0xe2
      004FE9 94                    2897 	.db 0x94
      004FEA 80                    2898 	.db 0x80
      004FEB E2                    2899 	.db 0xe2
      004FEC 94                    2900 	.db 0x94
      004FED 80                    2901 	.db 0x80
      004FEE E2                    2902 	.db 0xe2
      004FEF 94                    2903 	.db 0x94
      004FF0 80                    2904 	.db 0x80
      004FF1 E2                    2905 	.db 0xe2
      004FF2 94                    2906 	.db 0x94
      004FF3 80                    2907 	.db 0x80
      004FF4 E2                    2908 	.db 0xe2
      004FF5 94                    2909 	.db 0x94
      004FF6 80                    2910 	.db 0x80
      004FF7 E2                    2911 	.db 0xe2
      004FF8 94                    2912 	.db 0x94
      004FF9 80                    2913 	.db 0x80
      004FFA E2                    2914 	.db 0xe2
      004FFB 94                    2915 	.db 0x94
      004FFC 80                    2916 	.db 0x80
      004FFD E2                    2917 	.db 0xe2
      004FFE 94                    2918 	.db 0x94
      004FFF 80                    2919 	.db 0x80
      005000 E2                    2920 	.db 0xe2
      005001 94                    2921 	.db 0x94
      005002 80                    2922 	.db 0x80
      005003 E2                    2923 	.db 0xe2
      005004 94                    2924 	.db 0x94
      005005 80                    2925 	.db 0x80
      005006 E2                    2926 	.db 0xe2
      005007 94                    2927 	.db 0x94
      005008 80                    2928 	.db 0x80
      005009 E2                    2929 	.db 0xe2
      00500A 94                    2930 	.db 0x94
      00500B 80                    2931 	.db 0x80
      00500C E2                    2932 	.db 0xe2
      00500D 94                    2933 	.db 0x94
      00500E 80                    2934 	.db 0x80
      00500F E2                    2935 	.db 0xe2
      005010 94                    2936 	.db 0x94
      005011 80                    2937 	.db 0x80
      005012 E2                    2938 	.db 0xe2
      005013 94                    2939 	.db 0x94
      005014 80                    2940 	.db 0x80
      005015 E2                    2941 	.db 0xe2
      005016 94                    2942 	.db 0x94
      005017 80                    2943 	.db 0x80
      005018 E2                    2944 	.db 0xe2
      005019 94                    2945 	.db 0x94
      00501A 98                    2946 	.db 0x98
      00501B 0A                    2947 	.db 0x0a
      00501C 0D                    2948 	.db 0x0d
      00501D 00                    2949 	.db 0x00
                                   2950 	.area CSEG    (CODE)
                                   2951 	.area CONST   (CODE)
      00501E                       2952 ___str_13:
      00501E 24 20 25 63           2953 	.ascii "$ %c"
      005022 0A                    2954 	.db 0x0a
      005023 0D                    2955 	.db 0x0d
      005024 00                    2956 	.db 0x00
                                   2957 	.area CSEG    (CODE)
                                   2958 	.area CONST   (CODE)
      005025                       2959 ___str_14:
      005025 0A                    2960 	.db 0x0a
      005026 E2                    2961 	.db 0xe2
      005027 94                    2962 	.db 0x94
      005028 8C                    2963 	.db 0x8c
      005029 E2                    2964 	.db 0xe2
      00502A 94                    2965 	.db 0x94
      00502B 80                    2966 	.db 0x80
      00502C E2                    2967 	.db 0xe2
      00502D 94                    2968 	.db 0x94
      00502E 80                    2969 	.db 0x80
      00502F E2                    2970 	.db 0xe2
      005030 94                    2971 	.db 0x94
      005031 80                    2972 	.db 0x80
      005032 E2                    2973 	.db 0xe2
      005033 94                    2974 	.db 0x94
      005034 80                    2975 	.db 0x80
      005035 E2                    2976 	.db 0xe2
      005036 94                    2977 	.db 0x94
      005037 80                    2978 	.db 0x80
      005038 E2                    2979 	.db 0xe2
      005039 94                    2980 	.db 0x94
      00503A 80                    2981 	.db 0x80
      00503B E2                    2982 	.db 0xe2
      00503C 94                    2983 	.db 0x94
      00503D 80                    2984 	.db 0x80
      00503E E2                    2985 	.db 0xe2
      00503F 94                    2986 	.db 0x94
      005040 80                    2987 	.db 0x80
      005041 E2                    2988 	.db 0xe2
      005042 94                    2989 	.db 0x94
      005043 80                    2990 	.db 0x80
      005044 E2                    2991 	.db 0xe2
      005045 94                    2992 	.db 0x94
      005046 80                    2993 	.db 0x80
      005047 E2                    2994 	.db 0xe2
      005048 94                    2995 	.db 0x94
      005049 80                    2996 	.db 0x80
      00504A E2                    2997 	.db 0xe2
      00504B 94                    2998 	.db 0x94
      00504C 80                    2999 	.db 0x80
      00504D E2                    3000 	.db 0xe2
      00504E 94                    3001 	.db 0x94
      00504F 80                    3002 	.db 0x80
      005050 E2                    3003 	.db 0xe2
      005051 94                    3004 	.db 0x94
      005052 80                    3005 	.db 0x80
      005053 E2                    3006 	.db 0xe2
      005054 94                    3007 	.db 0x94
      005055 80                    3008 	.db 0x80
      005056 20 57 52 49 54 45 20  3009 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      005067 E2                    3010 	.db 0xe2
      005068 94                    3011 	.db 0x94
      005069 80                    3012 	.db 0x80
      00506A E2                    3013 	.db 0xe2
      00506B 94                    3014 	.db 0x94
      00506C 80                    3015 	.db 0x80
      00506D E2                    3016 	.db 0xe2
      00506E 94                    3017 	.db 0x94
      00506F 80                    3018 	.db 0x80
      005070 E2                    3019 	.db 0xe2
      005071 94                    3020 	.db 0x94
      005072 80                    3021 	.db 0x80
      005073 E2                    3022 	.db 0xe2
      005074 94                    3023 	.db 0x94
      005075 80                    3024 	.db 0x80
      005076 E2                    3025 	.db 0xe2
      005077 94                    3026 	.db 0x94
      005078 80                    3027 	.db 0x80
      005079 E2                    3028 	.db 0xe2
      00507A 94                    3029 	.db 0x94
      00507B 80                    3030 	.db 0x80
      00507C E2                    3031 	.db 0xe2
      00507D 94                    3032 	.db 0x94
      00507E 80                    3033 	.db 0x80
      00507F E2                    3034 	.db 0xe2
      005080 94                    3035 	.db 0x94
      005081 80                    3036 	.db 0x80
      005082 E2                    3037 	.db 0xe2
      005083 94                    3038 	.db 0x94
      005084 80                    3039 	.db 0x80
      005085 E2                    3040 	.db 0xe2
      005086 94                    3041 	.db 0x94
      005087 80                    3042 	.db 0x80
      005088 E2                    3043 	.db 0xe2
      005089 94                    3044 	.db 0x94
      00508A 80                    3045 	.db 0x80
      00508B E2                    3046 	.db 0xe2
      00508C 94                    3047 	.db 0x94
      00508D 80                    3048 	.db 0x80
      00508E E2                    3049 	.db 0xe2
      00508F 94                    3050 	.db 0x94
      005090 80                    3051 	.db 0x80
      005091 E2                    3052 	.db 0xe2
      005092 94                    3053 	.db 0x94
      005093 90                    3054 	.db 0x90
      005094 0A                    3055 	.db 0x0a
      005095 0D                    3056 	.db 0x0d
      005096 00                    3057 	.db 0x00
                                   3058 	.area CSEG    (CODE)
                                   3059 	.area CONST   (CODE)
      005097                       3060 ___str_15:
      005097 7C 20 57 72 69 74 69  3061 	.ascii "| Writing at Address %d Data %c          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             25 64 20 44 61 74 61
             20 25 63 20 20 20 20
             20 20 20 20 20 20 7C
      0050C1 0A                    3062 	.db 0x0a
      0050C2 0D                    3063 	.db 0x0d
      0050C3 00                    3064 	.db 0x00
                                   3065 	.area CSEG    (CODE)
                                   3066 	.area CONST   (CODE)
      0050C4                       3067 ___str_16:
      0050C4 49 4E 56 41 4C 49 44  3068 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      0050D1 0A                    3069 	.db 0x0a
      0050D2 0D                    3070 	.db 0x0d
      0050D3 00                    3071 	.db 0x00
                                   3072 	.area CSEG    (CODE)
                                   3073 	.area CONST   (CODE)
      0050D4                       3074 ___str_17:
      0050D4 E2                    3075 	.db 0xe2
      0050D5 94                    3076 	.db 0x94
      0050D6 82                    3077 	.db 0x82
      0050D7 20 45 6E 74 65 72 20  3078 	.ascii " Enter address (hex, up to 3 characters): "
             61 64 64 72 65 73 73
             20 28 68 65 78 2C 20
             75 70 20 74 6F 20 33
             20 63 68 61 72 61 63
             74 65 72 73 29 3A 20
      005101 0A                    3079 	.db 0x0a
      005102 0D                    3080 	.db 0x0d
      005103 7C                    3081 	.ascii "|"
      005104 00                    3082 	.db 0x00
                                   3083 	.area CSEG    (CODE)
                                   3084 	.area CONST   (CODE)
      005105                       3085 ___str_18:
      005105 24 20 25 63           3086 	.ascii "$ %c"
      005109 00                    3087 	.db 0x00
                                   3088 	.area CSEG    (CODE)
                                   3089 	.area CONST   (CODE)
      00510A                       3090 ___str_19:
      00510A 61 64 64 72 65 73 73  3091 	.ascii "address %d"
             20 25 64
      005114 0A                    3092 	.db 0x0a
      005115 0D                    3093 	.db 0x0d
      005116 00                    3094 	.db 0x00
                                   3095 	.area CSEG    (CODE)
                                   3096 	.area CONST   (CODE)
      005117                       3097 ___str_20:
      005117 7C 45 6E 74 65 72 20  3098 	.ascii "|Enter a 2-digit hexadecimal value: "
             61 20 32 2D 64 69 67
             69 74 20 68 65 78 61
             64 65 63 69 6D 61 6C
             20 76 61 6C 75 65 3A
             20
      00513B 0A                    3099 	.db 0x0a
      00513C 0D                    3100 	.db 0x0d
      00513D 7C                    3101 	.ascii "|"
      00513E 00                    3102 	.db 0x00
                                   3103 	.area CSEG    (CODE)
                                   3104 	.area CONST   (CODE)
      00513F                       3105 ___str_21:
      00513F 64 61 74 61 20 25 63  3106 	.ascii "data %c"
      005146 0A                    3107 	.db 0x0a
      005147 0D                    3108 	.db 0x0d
      005148 00                    3109 	.db 0x00
                                   3110 	.area CSEG    (CODE)
                                   3111 	.area CONST   (CODE)
      005149                       3112 ___str_22:
      005149 45 72 72 6F 72 3A 20  3113 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      005171 0A                    3114 	.db 0x0a
      005172 0D                    3115 	.db 0x0d
      005173 00                    3116 	.db 0x00
                                   3117 	.area CSEG    (CODE)
                                   3118 	.area CONST   (CODE)
      005174                       3119 ___str_23:
      005174 45 72 72 6F 72 3A 20  3120 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      005194 0A                    3121 	.db 0x0a
      005195 0D                    3122 	.db 0x0d
      005196 00                    3123 	.db 0x00
                                   3124 	.area CSEG    (CODE)
                                   3125 	.area CONST   (CODE)
      005197                       3126 ___str_24:
      005197 45 72 72 6F 72 3A 20  3127 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      0051AD 0A                    3128 	.db 0x0a
      0051AE 0D                    3129 	.db 0x0d
      0051AF 00                    3130 	.db 0x00
                                   3131 	.area CSEG    (CODE)
                                   3132 	.area CONST   (CODE)
      0051B0                       3133 ___str_25:
      0051B0 7C 20 57 72 69 74 69  3134 	.ascii "| Writing at Address 0x%02X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 32 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      0051E2 0A                    3135 	.db 0x0a
      0051E3 0D                    3136 	.db 0x0d
      0051E4 00                    3137 	.db 0x00
                                   3138 	.area CSEG    (CODE)
                                   3139 	.area CONST   (CODE)
      0051E5                       3140 ___str_26:
      0051E5 E2                    3141 	.db 0xe2
      0051E6 94                    3142 	.db 0x94
      0051E7 82                    3143 	.db 0x82
      0051E8 20 57 72 69 74 65 20  3144 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      005217 E2                    3145 	.db 0xe2
      005218 94                    3146 	.db 0x94
      005219 82                    3147 	.db 0x82
      00521A 0A                    3148 	.db 0x0a
      00521B 00                    3149 	.db 0x00
                                   3150 	.area CSEG    (CODE)
                                   3151 	.area CONST   (CODE)
      00521C                       3152 ___str_27:
      00521C E2                    3153 	.db 0xe2
      00521D 94                    3154 	.db 0x94
      00521E 94                    3155 	.db 0x94
      00521F E2                    3156 	.db 0xe2
      005220 94                    3157 	.db 0x94
      005221 80                    3158 	.db 0x80
      005222 E2                    3159 	.db 0xe2
      005223 94                    3160 	.db 0x94
      005224 80                    3161 	.db 0x80
      005225 E2                    3162 	.db 0xe2
      005226 94                    3163 	.db 0x94
      005227 80                    3164 	.db 0x80
      005228 E2                    3165 	.db 0xe2
      005229 94                    3166 	.db 0x94
      00522A 80                    3167 	.db 0x80
      00522B E2                    3168 	.db 0xe2
      00522C 94                    3169 	.db 0x94
      00522D 80                    3170 	.db 0x80
      00522E E2                    3171 	.db 0xe2
      00522F 94                    3172 	.db 0x94
      005230 80                    3173 	.db 0x80
      005231 E2                    3174 	.db 0xe2
      005232 94                    3175 	.db 0x94
      005233 80                    3176 	.db 0x80
      005234 E2                    3177 	.db 0xe2
      005235 94                    3178 	.db 0x94
      005236 80                    3179 	.db 0x80
      005237 E2                    3180 	.db 0xe2
      005238 94                    3181 	.db 0x94
      005239 80                    3182 	.db 0x80
      00523A E2                    3183 	.db 0xe2
      00523B 94                    3184 	.db 0x94
      00523C 80                    3185 	.db 0x80
      00523D E2                    3186 	.db 0xe2
      00523E 94                    3187 	.db 0x94
      00523F 80                    3188 	.db 0x80
      005240 E2                    3189 	.db 0xe2
      005241 94                    3190 	.db 0x94
      005242 80                    3191 	.db 0x80
      005243 E2                    3192 	.db 0xe2
      005244 94                    3193 	.db 0x94
      005245 80                    3194 	.db 0x80
      005246 E2                    3195 	.db 0xe2
      005247 94                    3196 	.db 0x94
      005248 80                    3197 	.db 0x80
      005249 E2                    3198 	.db 0xe2
      00524A 94                    3199 	.db 0x94
      00524B 80                    3200 	.db 0x80
      00524C E2                    3201 	.db 0xe2
      00524D 94                    3202 	.db 0x94
      00524E 80                    3203 	.db 0x80
      00524F E2                    3204 	.db 0xe2
      005250 94                    3205 	.db 0x94
      005251 80                    3206 	.db 0x80
      005252 E2                    3207 	.db 0xe2
      005253 94                    3208 	.db 0x94
      005254 80                    3209 	.db 0x80
      005255 E2                    3210 	.db 0xe2
      005256 94                    3211 	.db 0x94
      005257 80                    3212 	.db 0x80
      005258 E2                    3213 	.db 0xe2
      005259 94                    3214 	.db 0x94
      00525A 80                    3215 	.db 0x80
      00525B E2                    3216 	.db 0xe2
      00525C 94                    3217 	.db 0x94
      00525D 80                    3218 	.db 0x80
      00525E E2                    3219 	.db 0xe2
      00525F 94                    3220 	.db 0x94
      005260 80                    3221 	.db 0x80
      005261 E2                    3222 	.db 0xe2
      005262 94                    3223 	.db 0x94
      005263 80                    3224 	.db 0x80
      005264 E2                    3225 	.db 0xe2
      005265 94                    3226 	.db 0x94
      005266 80                    3227 	.db 0x80
      005267 E2                    3228 	.db 0xe2
      005268 94                    3229 	.db 0x94
      005269 80                    3230 	.db 0x80
      00526A E2                    3231 	.db 0xe2
      00526B 94                    3232 	.db 0x94
      00526C 80                    3233 	.db 0x80
      00526D E2                    3234 	.db 0xe2
      00526E 94                    3235 	.db 0x94
      00526F 80                    3236 	.db 0x80
      005270 E2                    3237 	.db 0xe2
      005271 94                    3238 	.db 0x94
      005272 80                    3239 	.db 0x80
      005273 E2                    3240 	.db 0xe2
      005274 94                    3241 	.db 0x94
      005275 80                    3242 	.db 0x80
      005276 E2                    3243 	.db 0xe2
      005277 94                    3244 	.db 0x94
      005278 80                    3245 	.db 0x80
      005279 E2                    3246 	.db 0xe2
      00527A 94                    3247 	.db 0x94
      00527B 80                    3248 	.db 0x80
      00527C E2                    3249 	.db 0xe2
      00527D 94                    3250 	.db 0x94
      00527E 80                    3251 	.db 0x80
      00527F E2                    3252 	.db 0xe2
      005280 94                    3253 	.db 0x94
      005281 80                    3254 	.db 0x80
      005282 E2                    3255 	.db 0xe2
      005283 94                    3256 	.db 0x94
      005284 80                    3257 	.db 0x80
      005285 E2                    3258 	.db 0xe2
      005286 94                    3259 	.db 0x94
      005287 80                    3260 	.db 0x80
      005288 E2                    3261 	.db 0xe2
      005289 94                    3262 	.db 0x94
      00528A 80                    3263 	.db 0x80
      00528B E2                    3264 	.db 0xe2
      00528C 94                    3265 	.db 0x94
      00528D 80                    3266 	.db 0x80
      00528E E2                    3267 	.db 0xe2
      00528F 94                    3268 	.db 0x94
      005290 80                    3269 	.db 0x80
      005291 E2                    3270 	.db 0xe2
      005292 94                    3271 	.db 0x94
      005293 80                    3272 	.db 0x80
      005294 E2                    3273 	.db 0xe2
      005295 94                    3274 	.db 0x94
      005296 80                    3275 	.db 0x80
      005297 E2                    3276 	.db 0xe2
      005298 94                    3277 	.db 0x94
      005299 80                    3278 	.db 0x80
      00529A E2                    3279 	.db 0xe2
      00529B 94                    3280 	.db 0x94
      00529C 80                    3281 	.db 0x80
      00529D E2                    3282 	.db 0xe2
      00529E 94                    3283 	.db 0x94
      00529F 80                    3284 	.db 0x80
      0052A0 E2                    3285 	.db 0xe2
      0052A1 94                    3286 	.db 0x94
      0052A2 80                    3287 	.db 0x80
      0052A3 E2                    3288 	.db 0xe2
      0052A4 94                    3289 	.db 0x94
      0052A5 80                    3290 	.db 0x80
      0052A6 E2                    3291 	.db 0xe2
      0052A7 94                    3292 	.db 0x94
      0052A8 80                    3293 	.db 0x80
      0052A9 E2                    3294 	.db 0xe2
      0052AA 94                    3295 	.db 0x94
      0052AB 80                    3296 	.db 0x80
      0052AC E2                    3297 	.db 0xe2
      0052AD 94                    3298 	.db 0x94
      0052AE 98                    3299 	.db 0x98
      0052AF 0A                    3300 	.db 0x0a
      0052B0 00                    3301 	.db 0x00
                                   3302 	.area CSEG    (CODE)
                                   3303 	.area CONST   (CODE)
      0052B1                       3304 ___str_28:
      0052B1 45 72 72 6F 72 3A 20  3305 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      0052DE 0A                    3306 	.db 0x0a
      0052DF 0D                    3307 	.db 0x0d
      0052E0 00                    3308 	.db 0x00
                                   3309 	.area CSEG    (CODE)
                                   3310 	.area CONST   (CODE)
      0052E1                       3311 ___str_29:
      0052E1 45 72 72 6F 72 3A 20  3312 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      00530D 0A                    3313 	.db 0x0a
      00530E 0D                    3314 	.db 0x0d
      00530F 00                    3315 	.db 0x00
                                   3316 	.area CSEG    (CODE)
                                   3317 	.area CONST   (CODE)
      005310                       3318 ___str_30:
      005310 41 43 4B 20 44 49 44  3319 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      005322 0A                    3320 	.db 0x0a
      005323 0D                    3321 	.db 0x0d
      005324 00                    3322 	.db 0x00
                                   3323 	.area CSEG    (CODE)
                                   3324 	.area CONST   (CODE)
      005325                       3325 ___str_31:
      005325 54 72 61 6E 73 6D 69  3326 	.ascii "Transmission successfull"
             73 73 69 6F 6E 20 73
             75 63 63 65 73 73 66
             75 6C 6C
      00533D 0A                    3327 	.db 0x0a
      00533E 0D                    3328 	.db 0x0d
      00533F 00                    3329 	.db 0x00
                                   3330 	.area CSEG    (CODE)
                                   3331 	.area CONST   (CODE)
      005340                       3332 ___str_32:
      005340 57 72 69 74 69 6E 67  3333 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      005365 0A                    3334 	.db 0x0a
      005366 0D                    3335 	.db 0x0d
      005367 00                    3336 	.db 0x00
                                   3337 	.area CSEG    (CODE)
                                   3338 	.area CONST   (CODE)
      005368                       3339 ___str_33:
      005368 52 65 61 64 20 62 61  3340 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      00538D 0A                    3341 	.db 0x0a
      00538E 0D                    3342 	.db 0x0d
      00538F 00                    3343 	.db 0x00
                                   3344 	.area CSEG    (CODE)
                                   3345 	.area CONST   (CODE)
      005390                       3346 ___str_34:
      005390 4D 41 54 43 48 20 2D  3347 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      0053AE 0A                    3348 	.db 0x0a
      0053AF 0D                    3349 	.db 0x0d
      0053B0 00                    3350 	.db 0x00
                                   3351 	.area CSEG    (CODE)
                                   3352 	.area CONST   (CODE)
      0053B1                       3353 ___str_35:
      0053B1 45 52 52 4F 52 20 2D  3354 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      0053C7 0A                    3355 	.db 0x0a
      0053C8 0D                    3356 	.db 0x0d
      0053C9 00                    3357 	.db 0x00
                                   3358 	.area CSEG    (CODE)
                                   3359 	.area XINIT   (CODE)
                                   3360 	.area CABS    (ABS,CODE)
