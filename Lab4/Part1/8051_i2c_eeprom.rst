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
                                     12 	.globl _EEPROM_hexdump
                                     13 	.globl _main
                                     14 	.globl _command_menu
                                     15 	.globl _ui
                                     16 	.globl _getchar
                                     17 	.globl _putchar
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
                                    215 	.globl _EEPROM_hexdump_PARM_2
                                    216 	.globl _eeprom_write_PARM_2
                                    217 	.globl _ACK
                                    218 	.globl _take_address
                                    219 	.globl _take_data
                                    220 	.globl _eeprom_write
                                    221 	.globl _eeprom_read
                                    222 	.globl _i2c_write
                                    223 	.globl _i2c_read
                                    224 	.globl _i2c_start
                                    225 	.globl _handler_EEPROM_hexdump
                                    226 	.globl _i2c_stop
                                    227 	.globl _eeprom_reset
                                    228 	.globl _i2c_delay
                                    229 ;--------------------------------------------------------
                                    230 ; special function registers
                                    231 ;--------------------------------------------------------
                                    232 	.area RSEG    (ABS,DATA)
      000000                        233 	.org 0x0000
                           000080   234 _P0	=	0x0080
                           000081   235 _SP	=	0x0081
                           000082   236 _DPL	=	0x0082
                           000083   237 _DPH	=	0x0083
                           000087   238 _PCON	=	0x0087
                           000088   239 _TCON	=	0x0088
                           000089   240 _TMOD	=	0x0089
                           00008A   241 _TL0	=	0x008a
                           00008B   242 _TL1	=	0x008b
                           00008C   243 _TH0	=	0x008c
                           00008D   244 _TH1	=	0x008d
                           000090   245 _P1	=	0x0090
                           000098   246 _SCON	=	0x0098
                           000099   247 _SBUF	=	0x0099
                           0000A0   248 _P2	=	0x00a0
                           0000A8   249 _IE	=	0x00a8
                           0000B0   250 _P3	=	0x00b0
                           0000B8   251 _IP	=	0x00b8
                           0000D0   252 _PSW	=	0x00d0
                           0000E0   253 _ACC	=	0x00e0
                           0000F0   254 _B	=	0x00f0
                           0000C8   255 _T2CON	=	0x00c8
                           0000CA   256 _RCAP2L	=	0x00ca
                           0000CB   257 _RCAP2H	=	0x00cb
                           0000CC   258 _TL2	=	0x00cc
                           0000CD   259 _TH2	=	0x00cd
                           00008E   260 _AUXR	=	0x008e
                           0000A2   261 _AUXR1	=	0x00a2
                           000097   262 _CKRL	=	0x0097
                           00008F   263 _CKCON0	=	0x008f
                           0000AF   264 _CKCON1	=	0x00af
                           0000FA   265 _CCAP0H	=	0x00fa
                           0000FB   266 _CCAP1H	=	0x00fb
                           0000FC   267 _CCAP2H	=	0x00fc
                           0000FD   268 _CCAP3H	=	0x00fd
                           0000FE   269 _CCAP4H	=	0x00fe
                           0000EA   270 _CCAP0L	=	0x00ea
                           0000EB   271 _CCAP1L	=	0x00eb
                           0000EC   272 _CCAP2L	=	0x00ec
                           0000ED   273 _CCAP3L	=	0x00ed
                           0000EE   274 _CCAP4L	=	0x00ee
                           0000DA   275 _CCAPM0	=	0x00da
                           0000DB   276 _CCAPM1	=	0x00db
                           0000DC   277 _CCAPM2	=	0x00dc
                           0000DD   278 _CCAPM3	=	0x00dd
                           0000DE   279 _CCAPM4	=	0x00de
                           0000D8   280 _CCON	=	0x00d8
                           0000F9   281 _CH	=	0x00f9
                           0000E9   282 _CL	=	0x00e9
                           0000D9   283 _CMOD	=	0x00d9
                           0000A8   284 _IEN0	=	0x00a8
                           0000B1   285 _IEN1	=	0x00b1
                           0000B8   286 _IPL0	=	0x00b8
                           0000B7   287 _IPH0	=	0x00b7
                           0000B2   288 _IPL1	=	0x00b2
                           0000B3   289 _IPH1	=	0x00b3
                           0000C0   290 _P4	=	0x00c0
                           0000E8   291 _P5	=	0x00e8
                           0000A6   292 _WDTRST	=	0x00a6
                           0000A7   293 _WDTPRG	=	0x00a7
                           0000A9   294 _SADDR	=	0x00a9
                           0000B9   295 _SADEN	=	0x00b9
                           0000C3   296 _SPCON	=	0x00c3
                           0000C4   297 _SPSTA	=	0x00c4
                           0000C5   298 _SPDAT	=	0x00c5
                           0000C9   299 _T2MOD	=	0x00c9
                           00009B   300 _BDRCON	=	0x009b
                           00009A   301 _BRL	=	0x009a
                           00009C   302 _KBLS	=	0x009c
                           00009D   303 _KBE	=	0x009d
                           00009E   304 _KBF	=	0x009e
                           0000D2   305 _EECON	=	0x00d2
                                    306 ;--------------------------------------------------------
                                    307 ; special function bits
                                    308 ;--------------------------------------------------------
                                    309 	.area RSEG    (ABS,DATA)
      000000                        310 	.org 0x0000
                           000080   311 _P0_0	=	0x0080
                           000081   312 _P0_1	=	0x0081
                           000082   313 _P0_2	=	0x0082
                           000083   314 _P0_3	=	0x0083
                           000084   315 _P0_4	=	0x0084
                           000085   316 _P0_5	=	0x0085
                           000086   317 _P0_6	=	0x0086
                           000087   318 _P0_7	=	0x0087
                           000088   319 _IT0	=	0x0088
                           000089   320 _IE0	=	0x0089
                           00008A   321 _IT1	=	0x008a
                           00008B   322 _IE1	=	0x008b
                           00008C   323 _TR0	=	0x008c
                           00008D   324 _TF0	=	0x008d
                           00008E   325 _TR1	=	0x008e
                           00008F   326 _TF1	=	0x008f
                           000090   327 _P1_0	=	0x0090
                           000091   328 _P1_1	=	0x0091
                           000092   329 _P1_2	=	0x0092
                           000093   330 _P1_3	=	0x0093
                           000094   331 _P1_4	=	0x0094
                           000095   332 _P1_5	=	0x0095
                           000096   333 _P1_6	=	0x0096
                           000097   334 _P1_7	=	0x0097
                           000098   335 _RI	=	0x0098
                           000099   336 _TI	=	0x0099
                           00009A   337 _RB8	=	0x009a
                           00009B   338 _TB8	=	0x009b
                           00009C   339 _REN	=	0x009c
                           00009D   340 _SM2	=	0x009d
                           00009E   341 _SM1	=	0x009e
                           00009F   342 _SM0	=	0x009f
                           0000A0   343 _P2_0	=	0x00a0
                           0000A1   344 _P2_1	=	0x00a1
                           0000A2   345 _P2_2	=	0x00a2
                           0000A3   346 _P2_3	=	0x00a3
                           0000A4   347 _P2_4	=	0x00a4
                           0000A5   348 _P2_5	=	0x00a5
                           0000A6   349 _P2_6	=	0x00a6
                           0000A7   350 _P2_7	=	0x00a7
                           0000A8   351 _EX0	=	0x00a8
                           0000A9   352 _ET0	=	0x00a9
                           0000AA   353 _EX1	=	0x00aa
                           0000AB   354 _ET1	=	0x00ab
                           0000AC   355 _ES	=	0x00ac
                           0000AF   356 _EA	=	0x00af
                           0000B0   357 _P3_0	=	0x00b0
                           0000B1   358 _P3_1	=	0x00b1
                           0000B2   359 _P3_2	=	0x00b2
                           0000B3   360 _P3_3	=	0x00b3
                           0000B4   361 _P3_4	=	0x00b4
                           0000B5   362 _P3_5	=	0x00b5
                           0000B6   363 _P3_6	=	0x00b6
                           0000B7   364 _P3_7	=	0x00b7
                           0000B0   365 _RXD	=	0x00b0
                           0000B1   366 _TXD	=	0x00b1
                           0000B2   367 _INT0	=	0x00b2
                           0000B3   368 _INT1	=	0x00b3
                           0000B4   369 _T0	=	0x00b4
                           0000B5   370 _T1	=	0x00b5
                           0000B6   371 _WR	=	0x00b6
                           0000B7   372 _RD	=	0x00b7
                           0000B8   373 _PX0	=	0x00b8
                           0000B9   374 _PT0	=	0x00b9
                           0000BA   375 _PX1	=	0x00ba
                           0000BB   376 _PT1	=	0x00bb
                           0000BC   377 _PS	=	0x00bc
                           0000D0   378 _P	=	0x00d0
                           0000D1   379 _F1	=	0x00d1
                           0000D2   380 _OV	=	0x00d2
                           0000D3   381 _RS0	=	0x00d3
                           0000D4   382 _RS1	=	0x00d4
                           0000D5   383 _F0	=	0x00d5
                           0000D6   384 _AC	=	0x00d6
                           0000D7   385 _CY	=	0x00d7
                           0000AD   386 _ET2	=	0x00ad
                           0000BD   387 _PT2	=	0x00bd
                           0000C8   388 _T2CON_0	=	0x00c8
                           0000C9   389 _T2CON_1	=	0x00c9
                           0000CA   390 _T2CON_2	=	0x00ca
                           0000CB   391 _T2CON_3	=	0x00cb
                           0000CC   392 _T2CON_4	=	0x00cc
                           0000CD   393 _T2CON_5	=	0x00cd
                           0000CE   394 _T2CON_6	=	0x00ce
                           0000CF   395 _T2CON_7	=	0x00cf
                           0000C8   396 _CP_RL2	=	0x00c8
                           0000C9   397 _C_T2	=	0x00c9
                           0000CA   398 _TR2	=	0x00ca
                           0000CB   399 _EXEN2	=	0x00cb
                           0000CC   400 _TCLK	=	0x00cc
                           0000CD   401 _RCLK	=	0x00cd
                           0000CE   402 _EXF2	=	0x00ce
                           0000CF   403 _TF2	=	0x00cf
                           0000DF   404 _CF	=	0x00df
                           0000DE   405 _CR	=	0x00de
                           0000DC   406 _CCF4	=	0x00dc
                           0000DB   407 _CCF3	=	0x00db
                           0000DA   408 _CCF2	=	0x00da
                           0000D9   409 _CCF1	=	0x00d9
                           0000D8   410 _CCF0	=	0x00d8
                           0000AE   411 _EC	=	0x00ae
                           0000BE   412 _PPCL	=	0x00be
                           0000BD   413 _PT2L	=	0x00bd
                           0000BC   414 _PSL	=	0x00bc
                           0000BB   415 _PT1L	=	0x00bb
                           0000BA   416 _PX1L	=	0x00ba
                           0000B9   417 _PT0L	=	0x00b9
                           0000B8   418 _PX0L	=	0x00b8
                           0000C0   419 _P4_0	=	0x00c0
                           0000C1   420 _P4_1	=	0x00c1
                           0000C2   421 _P4_2	=	0x00c2
                           0000C3   422 _P4_3	=	0x00c3
                           0000C4   423 _P4_4	=	0x00c4
                           0000C5   424 _P4_5	=	0x00c5
                           0000C6   425 _P4_6	=	0x00c6
                           0000C7   426 _P4_7	=	0x00c7
                           0000E8   427 _P5_0	=	0x00e8
                           0000E9   428 _P5_1	=	0x00e9
                           0000EA   429 _P5_2	=	0x00ea
                           0000EB   430 _P5_3	=	0x00eb
                           0000EC   431 _P5_4	=	0x00ec
                           0000ED   432 _P5_5	=	0x00ed
                           0000EE   433 _P5_6	=	0x00ee
                           0000EF   434 _P5_7	=	0x00ef
                                    435 ;--------------------------------------------------------
                                    436 ; overlayable register banks
                                    437 ;--------------------------------------------------------
                                    438 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        439 	.ds 8
                                    440 ;--------------------------------------------------------
                                    441 ; internal ram data
                                    442 ;--------------------------------------------------------
                                    443 	.area DSEG    (DATA)
                                    444 ;--------------------------------------------------------
                                    445 ; overlayable items in internal ram 
                                    446 ;--------------------------------------------------------
                                    447 ;--------------------------------------------------------
                                    448 ; Stack segment in internal ram 
                                    449 ;--------------------------------------------------------
                                    450 	.area	SSEG
      000014                        451 __start__stack:
      000014                        452 	.ds	1
                                    453 
                                    454 ;--------------------------------------------------------
                                    455 ; indirectly addressable internal ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area ISEG    (DATA)
                                    458 ;--------------------------------------------------------
                                    459 ; absolute internal ram data
                                    460 ;--------------------------------------------------------
                                    461 	.area IABS    (ABS,DATA)
                                    462 	.area IABS    (ABS,DATA)
                                    463 ;--------------------------------------------------------
                                    464 ; bit data
                                    465 ;--------------------------------------------------------
                                    466 	.area BSEG    (BIT)
                                    467 ;--------------------------------------------------------
                                    468 ; paged external ram data
                                    469 ;--------------------------------------------------------
                                    470 	.area PSEG    (PAG,XDATA)
                                    471 ;--------------------------------------------------------
                                    472 ; external ram data
                                    473 ;--------------------------------------------------------
                                    474 	.area XSEG    (XDATA)
      000400                        475 _ACK::
      000400                        476 	.ds 2
      000402                        477 _putchar_charToSend_65536_50:
      000402                        478 	.ds 2
      000404                        479 _take_address_input_65537_68:
      000404                        480 	.ds 4
      000408                        481 _take_address_address_65538_72:
      000408                        482 	.ds 2
      00040A                        483 _take_data_input_65537_78:
      00040A                        484 	.ds 4
      00040E                        485 _take_data_data_65538_82:
      00040E                        486 	.ds 1
      00040F                        487 _eeprom_write_PARM_2:
      00040F                        488 	.ds 1
      000410                        489 _eeprom_write_address_65536_86:
      000410                        490 	.ds 2
      000412                        491 _eeprom_read_address_65536_93:
      000412                        492 	.ds 2
      000414                        493 _i2c_write_data_65536_98:
      000414                        494 	.ds 1
      000415                        495 _i2c_read_ACK_65536_103:
      000415                        496 	.ds 2
      000417                        497 _i2c_read_buff_65536_104:
      000417                        498 	.ds 1
      000418                        499 _EEPROM_hexdump_PARM_2:
      000418                        500 	.ds 2
      00041A                        501 _EEPROM_hexdump_start_address_65536_109:
      00041A                        502 	.ds 2
      00041C                        503 _EEPROM_hexdump_current_address_65537_111:
      00041C                        504 	.ds 2
                                    505 ;--------------------------------------------------------
                                    506 ; absolute external ram data
                                    507 ;--------------------------------------------------------
                                    508 	.area XABS    (ABS,XDATA)
                                    509 ;--------------------------------------------------------
                                    510 ; external initialized ram data
                                    511 ;--------------------------------------------------------
                                    512 	.area XISEG   (XDATA)
      000457                        513 _address_range_flag:
      000457                        514 	.ds 2
      000459                        515 _data_range_flag:
      000459                        516 	.ds 2
      00045B                        517 _block:
      00045B                        518 	.ds 2
                                    519 	.area HOME    (CODE)
                                    520 	.area GSINIT0 (CODE)
                                    521 	.area GSINIT1 (CODE)
                                    522 	.area GSINIT2 (CODE)
                                    523 	.area GSINIT3 (CODE)
                                    524 	.area GSINIT4 (CODE)
                                    525 	.area GSINIT5 (CODE)
                                    526 	.area GSINIT  (CODE)
                                    527 	.area GSFINAL (CODE)
                                    528 	.area CSEG    (CODE)
                                    529 ;--------------------------------------------------------
                                    530 ; interrupt vector 
                                    531 ;--------------------------------------------------------
                                    532 	.area HOME    (CODE)
      003000                        533 __interrupt_vect:
      003000 02 30 06         [24]  534 	ljmp	__sdcc_gsinit_startup
                                    535 ;--------------------------------------------------------
                                    536 ; global & static initialisations
                                    537 ;--------------------------------------------------------
                                    538 	.area HOME    (CODE)
                                    539 	.area GSINIT  (CODE)
                                    540 	.area GSFINAL (CODE)
                                    541 	.area GSINIT  (CODE)
                                    542 	.globl __sdcc_gsinit_startup
                                    543 	.globl __sdcc_program_startup
                                    544 	.globl __start__stack
                                    545 	.globl __mcs51_genXINIT
                                    546 	.globl __mcs51_genXRAMCLEAR
                                    547 	.globl __mcs51_genRAMCLEAR
                                    548 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  549 	ljmp	__sdcc_program_startup
                                    550 ;--------------------------------------------------------
                                    551 ; Home
                                    552 ;--------------------------------------------------------
                                    553 	.area HOME    (CODE)
                                    554 	.area HOME    (CODE)
      003003                        555 __sdcc_program_startup:
      003003 02 31 A2         [24]  556 	ljmp	_main
                                    557 ;	return from main will return to caller
                                    558 ;--------------------------------------------------------
                                    559 ; code
                                    560 ;--------------------------------------------------------
                                    561 	.area CSEG    (CODE)
                                    562 ;------------------------------------------------------------
                                    563 ;Allocation info for local variables in function 'putchar'
                                    564 ;------------------------------------------------------------
                                    565 ;charToSend                Allocated with name '_putchar_charToSend_65536_50'
                                    566 ;------------------------------------------------------------
                                    567 ;	8051_i2c_eeprom.c:64: int putchar(int charToSend) {
                                    568 ;	-----------------------------------------
                                    569 ;	 function putchar
                                    570 ;	-----------------------------------------
      003062                        571 _putchar:
                           000007   572 	ar7 = 0x07
                           000006   573 	ar6 = 0x06
                           000005   574 	ar5 = 0x05
                           000004   575 	ar4 = 0x04
                           000003   576 	ar3 = 0x03
                           000002   577 	ar2 = 0x02
                           000001   578 	ar1 = 0x01
                           000000   579 	ar0 = 0x00
      003062 AF 83            [24]  580 	mov	r7,dph
      003064 E5 82            [12]  581 	mov	a,dpl
      003066 90 04 02         [24]  582 	mov	dptr,#_putchar_charToSend_65536_50
      003069 F0               [24]  583 	movx	@dptr,a
      00306A EF               [12]  584 	mov	a,r7
      00306B A3               [24]  585 	inc	dptr
      00306C F0               [24]  586 	movx	@dptr,a
                                    587 ;	8051_i2c_eeprom.c:65: SBUF = charToSend;       /* Load character into serial buffer */
      00306D 90 04 02         [24]  588 	mov	dptr,#_putchar_charToSend_65536_50
      003070 E0               [24]  589 	movx	a,@dptr
      003071 FE               [12]  590 	mov	r6,a
      003072 A3               [24]  591 	inc	dptr
      003073 E0               [24]  592 	movx	a,@dptr
      003074 FF               [12]  593 	mov	r7,a
      003075 8E 99            [24]  594 	mov	_SBUF,r6
                                    595 ;	8051_i2c_eeprom.c:66: while (!TI);             /* Wait for transmission completion */
      003077                        596 00101$:
                                    597 ;	8051_i2c_eeprom.c:67: TI = 0;                  /* Clear transmission flag */
                                    598 ;	assignBit
      003077 10 99 02         [24]  599 	jbc	_TI,00114$
      00307A 80 FB            [24]  600 	sjmp	00101$
      00307C                        601 00114$:
                                    602 ;	8051_i2c_eeprom.c:68: return charToSend;
      00307C 8E 82            [24]  603 	mov	dpl,r6
      00307E 8F 83            [24]  604 	mov	dph,r7
                                    605 ;	8051_i2c_eeprom.c:69: }
      003080 22               [24]  606 	ret
                                    607 ;------------------------------------------------------------
                                    608 ;Allocation info for local variables in function 'getchar'
                                    609 ;------------------------------------------------------------
                                    610 ;	8051_i2c_eeprom.c:75: int getchar(void) {
                                    611 ;	-----------------------------------------
                                    612 ;	 function getchar
                                    613 ;	-----------------------------------------
      003081                        614 _getchar:
                                    615 ;	8051_i2c_eeprom.c:76: while (!RI);             /* Wait for reception completion */
      003081                        616 00101$:
                                    617 ;	8051_i2c_eeprom.c:77: RI = 0;                  /* Clear reception flag */
                                    618 ;	assignBit
      003081 10 98 02         [24]  619 	jbc	_RI,00114$
      003084 80 FB            [24]  620 	sjmp	00101$
      003086                        621 00114$:
                                    622 ;	8051_i2c_eeprom.c:78: return SBUF;             /* Return received character */
      003086 AE 99            [24]  623 	mov	r6,_SBUF
      003088 7F 00            [12]  624 	mov	r7,#0x00
      00308A 8E 82            [24]  625 	mov	dpl,r6
      00308C 8F 83            [24]  626 	mov	dph,r7
                                    627 ;	8051_i2c_eeprom.c:79: }
      00308E 22               [24]  628 	ret
                                    629 ;------------------------------------------------------------
                                    630 ;Allocation info for local variables in function 'ui'
                                    631 ;------------------------------------------------------------
                                    632 ;	8051_i2c_eeprom.c:84: void ui()
                                    633 ;	-----------------------------------------
                                    634 ;	 function ui
                                    635 ;	-----------------------------------------
      00308F                        636 _ui:
                                    637 ;	8051_i2c_eeprom.c:86: printf("\n╔════════════════════════════════════════════════════════╗\n\r");
      00308F 74 B8            [12]  638 	mov	a,#___str_0
      003091 C0 E0            [24]  639 	push	acc
      003093 74 49            [12]  640 	mov	a,#(___str_0 >> 8)
      003095 C0 E0            [24]  641 	push	acc
      003097 74 80            [12]  642 	mov	a,#0x80
      003099 C0 E0            [24]  643 	push	acc
      00309B 12 3F 56         [24]  644 	lcall	_printf
      00309E 15 81            [12]  645 	dec	sp
      0030A0 15 81            [12]  646 	dec	sp
      0030A2 15 81            [12]  647 	dec	sp
                                    648 ;	8051_i2c_eeprom.c:87: printf("║           I2C Memory Management System v1.0            ║\n\r");
      0030A4 74 6A            [12]  649 	mov	a,#___str_1
      0030A6 C0 E0            [24]  650 	push	acc
      0030A8 74 4A            [12]  651 	mov	a,#(___str_1 >> 8)
      0030AA C0 E0            [24]  652 	push	acc
      0030AC 74 80            [12]  653 	mov	a,#0x80
      0030AE C0 E0            [24]  654 	push	acc
      0030B0 12 3F 56         [24]  655 	lcall	_printf
      0030B3 15 81            [12]  656 	dec	sp
      0030B5 15 81            [12]  657 	dec	sp
      0030B7 15 81            [12]  658 	dec	sp
                                    659 ;	8051_i2c_eeprom.c:88: printf("╚════════════════════════════════════════════════════════╝\n\r");
      0030B9 74 AB            [12]  660 	mov	a,#___str_2
      0030BB C0 E0            [24]  661 	push	acc
      0030BD 74 4A            [12]  662 	mov	a,#(___str_2 >> 8)
      0030BF C0 E0            [24]  663 	push	acc
      0030C1 74 80            [12]  664 	mov	a,#0x80
      0030C3 C0 E0            [24]  665 	push	acc
      0030C5 12 3F 56         [24]  666 	lcall	_printf
      0030C8 15 81            [12]  667 	dec	sp
      0030CA 15 81            [12]  668 	dec	sp
      0030CC 15 81            [12]  669 	dec	sp
                                    670 ;	8051_i2c_eeprom.c:90: }
      0030CE 22               [24]  671 	ret
                                    672 ;------------------------------------------------------------
                                    673 ;Allocation info for local variables in function 'command_menu'
                                    674 ;------------------------------------------------------------
                                    675 ;	8051_i2c_eeprom.c:95: void command_menu()
                                    676 ;	-----------------------------------------
                                    677 ;	 function command_menu
                                    678 ;	-----------------------------------------
      0030CF                        679 _command_menu:
                                    680 ;	8051_i2c_eeprom.c:97: printf("\n\r┌────────────┬────────────────────────────────────────────┐\n\r");
      0030CF 74 5C            [12]  681 	mov	a,#___str_3
      0030D1 C0 E0            [24]  682 	push	acc
      0030D3 74 4B            [12]  683 	mov	a,#(___str_3 >> 8)
      0030D5 C0 E0            [24]  684 	push	acc
      0030D7 74 80            [12]  685 	mov	a,#0x80
      0030D9 C0 E0            [24]  686 	push	acc
      0030DB 12 3F 56         [24]  687 	lcall	_printf
      0030DE 15 81            [12]  688 	dec	sp
      0030E0 15 81            [12]  689 	dec	sp
      0030E2 15 81            [12]  690 	dec	sp
                                    691 ;	8051_i2c_eeprom.c:98: printf("│  Command   │               Description                  │\n\r");
      0030E4 74 12            [12]  692 	mov	a,#___str_4
      0030E6 C0 E0            [24]  693 	push	acc
      0030E8 74 4C            [12]  694 	mov	a,#(___str_4 >> 8)
      0030EA C0 E0            [24]  695 	push	acc
      0030EC 74 80            [12]  696 	mov	a,#0x80
      0030EE C0 E0            [24]  697 	push	acc
      0030F0 12 3F 56         [24]  698 	lcall	_printf
      0030F3 15 81            [12]  699 	dec	sp
      0030F5 15 81            [12]  700 	dec	sp
      0030F7 15 81            [12]  701 	dec	sp
                                    702 ;	8051_i2c_eeprom.c:99: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      0030F9 74 56            [12]  703 	mov	a,#___str_5
      0030FB C0 E0            [24]  704 	push	acc
      0030FD 74 4C            [12]  705 	mov	a,#(___str_5 >> 8)
      0030FF C0 E0            [24]  706 	push	acc
      003101 74 80            [12]  707 	mov	a,#0x80
      003103 C0 E0            [24]  708 	push	acc
      003105 12 3F 56         [24]  709 	lcall	_printf
      003108 15 81            [12]  710 	dec	sp
      00310A 15 81            [12]  711 	dec	sp
      00310C 15 81            [12]  712 	dec	sp
                                    713 ;	8051_i2c_eeprom.c:100: printf("│     R      │ Read from address                          │\n\r");
      00310E 74 0A            [12]  714 	mov	a,#___str_6
      003110 C0 E0            [24]  715 	push	acc
      003112 74 4D            [12]  716 	mov	a,#(___str_6 >> 8)
      003114 C0 E0            [24]  717 	push	acc
      003116 74 80            [12]  718 	mov	a,#0x80
      003118 C0 E0            [24]  719 	push	acc
      00311A 12 3F 56         [24]  720 	lcall	_printf
      00311D 15 81            [12]  721 	dec	sp
      00311F 15 81            [12]  722 	dec	sp
      003121 15 81            [12]  723 	dec	sp
                                    724 ;	8051_i2c_eeprom.c:101: printf("│     W      │ Write data to address                      │\n\r");
      003123 74 4E            [12]  725 	mov	a,#___str_7
      003125 C0 E0            [24]  726 	push	acc
      003127 74 4D            [12]  727 	mov	a,#(___str_7 >> 8)
      003129 C0 E0            [24]  728 	push	acc
      00312B 74 80            [12]  729 	mov	a,#0x80
      00312D C0 E0            [24]  730 	push	acc
      00312F 12 3F 56         [24]  731 	lcall	_printf
      003132 15 81            [12]  732 	dec	sp
      003134 15 81            [12]  733 	dec	sp
      003136 15 81            [12]  734 	dec	sp
                                    735 ;	8051_i2c_eeprom.c:102: printf("│     H      │ Display hex dump                           │\n\r");
      003138 74 92            [12]  736 	mov	a,#___str_8
      00313A C0 E0            [24]  737 	push	acc
      00313C 74 4D            [12]  738 	mov	a,#(___str_8 >> 8)
      00313E C0 E0            [24]  739 	push	acc
      003140 74 80            [12]  740 	mov	a,#0x80
      003142 C0 E0            [24]  741 	push	acc
      003144 12 3F 56         [24]  742 	lcall	_printf
      003147 15 81            [12]  743 	dec	sp
      003149 15 81            [12]  744 	dec	sp
      00314B 15 81            [12]  745 	dec	sp
                                    746 ;	8051_i2c_eeprom.c:103: printf("│     X      │ Reset memory system                        │\n\r");
      00314D 74 D6            [12]  747 	mov	a,#___str_9
      00314F C0 E0            [24]  748 	push	acc
      003151 74 4D            [12]  749 	mov	a,#(___str_9 >> 8)
      003153 C0 E0            [24]  750 	push	acc
      003155 74 80            [12]  751 	mov	a,#0x80
      003157 C0 E0            [24]  752 	push	acc
      003159 12 3F 56         [24]  753 	lcall	_printf
      00315C 15 81            [12]  754 	dec	sp
      00315E 15 81            [12]  755 	dec	sp
      003160 15 81            [12]  756 	dec	sp
                                    757 ;	8051_i2c_eeprom.c:104: printf("│     ?      │ Display this help menu                     │\n\r");
      003162 74 1A            [12]  758 	mov	a,#___str_10
      003164 C0 E0            [24]  759 	push	acc
      003166 74 4E            [12]  760 	mov	a,#(___str_10 >> 8)
      003168 C0 E0            [24]  761 	push	acc
      00316A 74 80            [12]  762 	mov	a,#0x80
      00316C C0 E0            [24]  763 	push	acc
      00316E 12 3F 56         [24]  764 	lcall	_printf
      003171 15 81            [12]  765 	dec	sp
      003173 15 81            [12]  766 	dec	sp
      003175 15 81            [12]  767 	dec	sp
                                    768 ;	8051_i2c_eeprom.c:105: printf("│     Q      │ Quit program                               │\n\r");
      003177 74 5E            [12]  769 	mov	a,#___str_11
      003179 C0 E0            [24]  770 	push	acc
      00317B 74 4E            [12]  771 	mov	a,#(___str_11 >> 8)
      00317D C0 E0            [24]  772 	push	acc
      00317F 74 80            [12]  773 	mov	a,#0x80
      003181 C0 E0            [24]  774 	push	acc
      003183 12 3F 56         [24]  775 	lcall	_printf
      003186 15 81            [12]  776 	dec	sp
      003188 15 81            [12]  777 	dec	sp
      00318A 15 81            [12]  778 	dec	sp
                                    779 ;	8051_i2c_eeprom.c:106: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      00318C 74 A2            [12]  780 	mov	a,#___str_12
      00318E C0 E0            [24]  781 	push	acc
      003190 74 4E            [12]  782 	mov	a,#(___str_12 >> 8)
      003192 C0 E0            [24]  783 	push	acc
      003194 74 80            [12]  784 	mov	a,#0x80
      003196 C0 E0            [24]  785 	push	acc
      003198 12 3F 56         [24]  786 	lcall	_printf
      00319B 15 81            [12]  787 	dec	sp
      00319D 15 81            [12]  788 	dec	sp
      00319F 15 81            [12]  789 	dec	sp
                                    790 ;	8051_i2c_eeprom.c:109: }
      0031A1 22               [24]  791 	ret
                                    792 ;------------------------------------------------------------
                                    793 ;Allocation info for local variables in function 'main'
                                    794 ;------------------------------------------------------------
                                    795 ;user_input                Allocated with name '_main_user_input_131072_57'
                                    796 ;addr                      Allocated with name '_main_addr_262145_60'
                                    797 ;data                      Allocated with name '_main_data_262146_62'
                                    798 ;addr                      Allocated with name '_main_addr_262145_65'
                                    799 ;------------------------------------------------------------
                                    800 ;	8051_i2c_eeprom.c:115: int main()
                                    801 ;	-----------------------------------------
                                    802 ;	 function main
                                    803 ;	-----------------------------------------
      0031A2                        804 _main:
                                    805 ;	8051_i2c_eeprom.c:118: P1 &= ~(1<<3);  // Set P1.3 as output
      0031A2 53 90 F7         [24]  806 	anl	_P1,#0xf7
                                    807 ;	8051_i2c_eeprom.c:119: P1 &= ~(1<<4);  // Set P1.4 as output
      0031A5 53 90 EF         [24]  808 	anl	_P1,#0xef
                                    809 ;	8051_i2c_eeprom.c:120: ui();
      0031A8 12 30 8F         [24]  810 	lcall	_ui
                                    811 ;	8051_i2c_eeprom.c:121: command_menu();
      0031AB 12 30 CF         [24]  812 	lcall	_command_menu
                                    813 ;	8051_i2c_eeprom.c:122: i2c_start();
      0031AE 12 3A 1D         [24]  814 	lcall	_i2c_start
                                    815 ;	8051_i2c_eeprom.c:123: while(1)
      0031B1                        816 00115$:
                                    817 ;	8051_i2c_eeprom.c:125: char user_input = getchar();
      0031B1 12 30 81         [24]  818 	lcall	_getchar
      0031B4 AE 82            [24]  819 	mov	r6,dpl
                                    820 ;	8051_i2c_eeprom.c:126: printf("| $ %c\n\r", user_input);
      0031B6 8E 05            [24]  821 	mov	ar5,r6
      0031B8 7F 00            [12]  822 	mov	r7,#0x00
      0031BA C0 06            [24]  823 	push	ar6
      0031BC C0 05            [24]  824 	push	ar5
      0031BE C0 07            [24]  825 	push	ar7
      0031C0 74 56            [12]  826 	mov	a,#___str_13
      0031C2 C0 E0            [24]  827 	push	acc
      0031C4 74 4F            [12]  828 	mov	a,#(___str_13 >> 8)
      0031C6 C0 E0            [24]  829 	push	acc
      0031C8 74 80            [12]  830 	mov	a,#0x80
      0031CA C0 E0            [24]  831 	push	acc
      0031CC 12 3F 56         [24]  832 	lcall	_printf
      0031CF E5 81            [12]  833 	mov	a,sp
      0031D1 24 FB            [12]  834 	add	a,#0xfb
      0031D3 F5 81            [12]  835 	mov	sp,a
                                    836 ;	8051_i2c_eeprom.c:127: printf("\n\r");
      0031D5 74 5F            [12]  837 	mov	a,#___str_14
      0031D7 C0 E0            [24]  838 	push	acc
      0031D9 74 4F            [12]  839 	mov	a,#(___str_14 >> 8)
      0031DB C0 E0            [24]  840 	push	acc
      0031DD 74 80            [12]  841 	mov	a,#0x80
      0031DF C0 E0            [24]  842 	push	acc
      0031E1 12 3F 56         [24]  843 	lcall	_printf
      0031E4 15 81            [12]  844 	dec	sp
      0031E6 15 81            [12]  845 	dec	sp
      0031E8 15 81            [12]  846 	dec	sp
      0031EA D0 06            [24]  847 	pop	ar6
                                    848 ;	8051_i2c_eeprom.c:128: switch(user_input)
      0031EC BE 3F 03         [24]  849 	cjne	r6,#0x3f,00155$
      0031EF 02 32 D2         [24]  850 	ljmp	00109$
      0031F2                        851 00155$:
      0031F2 BE 48 03         [24]  852 	cjne	r6,#0x48,00156$
      0031F5 02 32 F3         [24]  853 	ljmp	00111$
      0031F8                        854 00156$:
      0031F8 BE 52 02         [24]  855 	cjne	r6,#0x52,00157$
      0031FB 80 76            [24]  856 	sjmp	00106$
      0031FD                        857 00157$:
      0031FD BE 57 02         [24]  858 	cjne	r6,#0x57,00158$
      003200 80 09            [24]  859 	sjmp	00101$
      003202                        860 00158$:
      003202 BE 58 03         [24]  861 	cjne	r6,#0x58,00159$
      003205 02 32 D8         [24]  862 	ljmp	00110$
      003208                        863 00159$:
      003208 02 33 0B         [24]  864 	ljmp	00112$
                                    865 ;	8051_i2c_eeprom.c:130: case 'W':
      00320B                        866 00101$:
                                    867 ;	8051_i2c_eeprom.c:132: printf("\n┌─────────────── WRITE OPERATION ──────────────┐\n\r");
      00320B 74 62            [12]  868 	mov	a,#___str_15
      00320D C0 E0            [24]  869 	push	acc
      00320F 74 4F            [12]  870 	mov	a,#(___str_15 >> 8)
      003211 C0 E0            [24]  871 	push	acc
      003213 74 80            [12]  872 	mov	a,#0x80
      003215 C0 E0            [24]  873 	push	acc
      003217 12 3F 56         [24]  874 	lcall	_printf
      00321A 15 81            [12]  875 	dec	sp
      00321C 15 81            [12]  876 	dec	sp
      00321E 15 81            [12]  877 	dec	sp
                                    878 ;	8051_i2c_eeprom.c:134: addr = take_address();
      003220 12 33 23         [24]  879 	lcall	_take_address
      003223 AE 82            [24]  880 	mov	r6,dpl
      003225 AF 83            [24]  881 	mov	r7,dph
                                    882 ;	8051_i2c_eeprom.c:135: if(!address_range_flag) 
      003227 90 04 57         [24]  883 	mov	dptr,#_address_range_flag
      00322A E0               [24]  884 	movx	a,@dptr
      00322B F5 F0            [12]  885 	mov	b,a
      00322D A3               [24]  886 	inc	dptr
      00322E E0               [24]  887 	movx	a,@dptr
      00322F 45 F0            [12]  888 	orl	a,b
      003231 70 0C            [24]  889 	jnz	00103$
                                    890 ;	8051_i2c_eeprom.c:137: address_range_flag = 1;
      003233 90 04 57         [24]  891 	mov	dptr,#_address_range_flag
      003236 74 01            [12]  892 	mov	a,#0x01
      003238 F0               [24]  893 	movx	@dptr,a
      003239 E4               [12]  894 	clr	a
      00323A A3               [24]  895 	inc	dptr
      00323B F0               [24]  896 	movx	@dptr,a
                                    897 ;	8051_i2c_eeprom.c:138: break;
      00323C 02 31 B1         [24]  898 	ljmp	00115$
      00323F                        899 00103$:
                                    900 ;	8051_i2c_eeprom.c:141: data = take_data();
      00323F C0 07            [24]  901 	push	ar7
      003241 C0 06            [24]  902 	push	ar6
      003243 12 35 61         [24]  903 	lcall	_take_data
      003246 AD 82            [24]  904 	mov	r5,dpl
      003248 D0 06            [24]  905 	pop	ar6
      00324A D0 07            [24]  906 	pop	ar7
                                    907 ;	8051_i2c_eeprom.c:142: if(!data_range_flag) 
      00324C 90 04 59         [24]  908 	mov	dptr,#_data_range_flag
      00324F E0               [24]  909 	movx	a,@dptr
      003250 F5 F0            [12]  910 	mov	b,a
      003252 A3               [24]  911 	inc	dptr
      003253 E0               [24]  912 	movx	a,@dptr
      003254 45 F0            [12]  913 	orl	a,b
      003256 70 0C            [24]  914 	jnz	00105$
                                    915 ;	8051_i2c_eeprom.c:144: data_range_flag = 1;
      003258 90 04 59         [24]  916 	mov	dptr,#_data_range_flag
      00325B 74 01            [12]  917 	mov	a,#0x01
      00325D F0               [24]  918 	movx	@dptr,a
      00325E E4               [12]  919 	clr	a
      00325F A3               [24]  920 	inc	dptr
      003260 F0               [24]  921 	movx	@dptr,a
                                    922 ;	8051_i2c_eeprom.c:145: break;
      003261 02 31 B1         [24]  923 	ljmp	00115$
      003264                        924 00105$:
                                    925 ;	8051_i2c_eeprom.c:148: eeprom_write(addr, data);
      003264 90 04 0F         [24]  926 	mov	dptr,#_eeprom_write_PARM_2
      003267 ED               [12]  927 	mov	a,r5
      003268 F0               [24]  928 	movx	@dptr,a
      003269 8E 82            [24]  929 	mov	dpl,r6
      00326B 8F 83            [24]  930 	mov	dph,r7
      00326D 12 36 DA         [24]  931 	lcall	_eeprom_write
                                    932 ;	8051_i2c_eeprom.c:149: break;
      003270 02 31 B1         [24]  933 	ljmp	00115$
                                    934 ;	8051_i2c_eeprom.c:151: case 'R':
      003273                        935 00106$:
                                    936 ;	8051_i2c_eeprom.c:153: printf("\n┌─────────────── READ OPERATION ───────────────┐\n\r");
      003273 74 D4            [12]  937 	mov	a,#___str_16
      003275 C0 E0            [24]  938 	push	acc
      003277 74 4F            [12]  939 	mov	a,#(___str_16 >> 8)
      003279 C0 E0            [24]  940 	push	acc
      00327B 74 80            [12]  941 	mov	a,#0x80
      00327D C0 E0            [24]  942 	push	acc
      00327F 12 3F 56         [24]  943 	lcall	_printf
      003282 15 81            [12]  944 	dec	sp
      003284 15 81            [12]  945 	dec	sp
      003286 15 81            [12]  946 	dec	sp
                                    947 ;	8051_i2c_eeprom.c:155: addr = take_address(); 
      003288 12 33 23         [24]  948 	lcall	_take_address
      00328B AE 82            [24]  949 	mov	r6,dpl
      00328D AF 83            [24]  950 	mov	r7,dph
                                    951 ;	8051_i2c_eeprom.c:156: if(!address_range_flag) 
      00328F 90 04 57         [24]  952 	mov	dptr,#_address_range_flag
      003292 E0               [24]  953 	movx	a,@dptr
      003293 F5 F0            [12]  954 	mov	b,a
      003295 A3               [24]  955 	inc	dptr
      003296 E0               [24]  956 	movx	a,@dptr
      003297 45 F0            [12]  957 	orl	a,b
      003299 70 0C            [24]  958 	jnz	00108$
                                    959 ;	8051_i2c_eeprom.c:158: address_range_flag = 1;
      00329B 90 04 57         [24]  960 	mov	dptr,#_address_range_flag
      00329E 74 01            [12]  961 	mov	a,#0x01
      0032A0 F0               [24]  962 	movx	@dptr,a
      0032A1 E4               [12]  963 	clr	a
      0032A2 A3               [24]  964 	inc	dptr
      0032A3 F0               [24]  965 	movx	@dptr,a
                                    966 ;	8051_i2c_eeprom.c:159: break;
      0032A4 02 31 B1         [24]  967 	ljmp	00115$
      0032A7                        968 00108$:
                                    969 ;	8051_i2c_eeprom.c:161: printf("| Reading from Address 0x%03X           |\n\r", addr);
      0032A7 C0 07            [24]  970 	push	ar7
      0032A9 C0 06            [24]  971 	push	ar6
      0032AB C0 06            [24]  972 	push	ar6
      0032AD C0 07            [24]  973 	push	ar7
      0032AF 74 48            [12]  974 	mov	a,#___str_17
      0032B1 C0 E0            [24]  975 	push	acc
      0032B3 74 50            [12]  976 	mov	a,#(___str_17 >> 8)
      0032B5 C0 E0            [24]  977 	push	acc
      0032B7 74 80            [12]  978 	mov	a,#0x80
      0032B9 C0 E0            [24]  979 	push	acc
      0032BB 12 3F 56         [24]  980 	lcall	_printf
      0032BE E5 81            [12]  981 	mov	a,sp
      0032C0 24 FB            [12]  982 	add	a,#0xfb
      0032C2 F5 81            [12]  983 	mov	sp,a
      0032C4 D0 06            [24]  984 	pop	ar6
      0032C6 D0 07            [24]  985 	pop	ar7
                                    986 ;	8051_i2c_eeprom.c:162: eeprom_read(addr);
      0032C8 8E 82            [24]  987 	mov	dpl,r6
      0032CA 8F 83            [24]  988 	mov	dph,r7
      0032CC 12 38 1C         [24]  989 	lcall	_eeprom_read
                                    990 ;	8051_i2c_eeprom.c:163: break;
      0032CF 02 31 B1         [24]  991 	ljmp	00115$
                                    992 ;	8051_i2c_eeprom.c:166: case '?':
      0032D2                        993 00109$:
                                    994 ;	8051_i2c_eeprom.c:167: command_menu();
      0032D2 12 30 CF         [24]  995 	lcall	_command_menu
                                    996 ;	8051_i2c_eeprom.c:168: break;
      0032D5 02 31 B1         [24]  997 	ljmp	00115$
                                    998 ;	8051_i2c_eeprom.c:170: case 'X':
      0032D8                        999 00110$:
                                   1000 ;	8051_i2c_eeprom.c:171: printf("\n┌─────────────── RESET OPERATION ───────────┐\n\r");
      0032D8 74 74            [12] 1001 	mov	a,#___str_18
      0032DA C0 E0            [24] 1002 	push	acc
      0032DC 74 50            [12] 1003 	mov	a,#(___str_18 >> 8)
      0032DE C0 E0            [24] 1004 	push	acc
      0032E0 74 80            [12] 1005 	mov	a,#0x80
      0032E2 C0 E0            [24] 1006 	push	acc
      0032E4 12 3F 56         [24] 1007 	lcall	_printf
      0032E7 15 81            [12] 1008 	dec	sp
      0032E9 15 81            [12] 1009 	dec	sp
      0032EB 15 81            [12] 1010 	dec	sp
                                   1011 ;	8051_i2c_eeprom.c:172: eeprom_reset();
      0032ED 12 3E 0D         [24] 1012 	lcall	_eeprom_reset
                                   1013 ;	8051_i2c_eeprom.c:173: break;
      0032F0 02 31 B1         [24] 1014 	ljmp	00115$
                                   1015 ;	8051_i2c_eeprom.c:175: case 'H':
      0032F3                       1016 00111$:
                                   1017 ;	8051_i2c_eeprom.c:176: printf("\n┌───────────── HEX DUMP OPERATION ───────────────┐\n\r");
      0032F3 74 DD            [12] 1018 	mov	a,#___str_19
      0032F5 C0 E0            [24] 1019 	push	acc
      0032F7 74 50            [12] 1020 	mov	a,#(___str_19 >> 8)
      0032F9 C0 E0            [24] 1021 	push	acc
      0032FB 74 80            [12] 1022 	mov	a,#0x80
      0032FD C0 E0            [24] 1023 	push	acc
      0032FF 12 3F 56         [24] 1024 	lcall	_printf
      003302 15 81            [12] 1025 	dec	sp
      003304 15 81            [12] 1026 	dec	sp
      003306 15 81            [12] 1027 	dec	sp
                                   1028 ;	8051_i2c_eeprom.c:192: handler_EEPROM_hexdump();
      003308 12 3D 61         [24] 1029 	lcall	_handler_EEPROM_hexdump
                                   1030 ;	8051_i2c_eeprom.c:195: default:
      00330B                       1031 00112$:
                                   1032 ;	8051_i2c_eeprom.c:196: printf("INVALID INPUT\n\r");
      00330B 74 4F            [12] 1033 	mov	a,#___str_20
      00330D C0 E0            [24] 1034 	push	acc
      00330F 74 51            [12] 1035 	mov	a,#(___str_20 >> 8)
      003311 C0 E0            [24] 1036 	push	acc
      003313 74 80            [12] 1037 	mov	a,#0x80
      003315 C0 E0            [24] 1038 	push	acc
      003317 12 3F 56         [24] 1039 	lcall	_printf
      00331A 15 81            [12] 1040 	dec	sp
      00331C 15 81            [12] 1041 	dec	sp
      00331E 15 81            [12] 1042 	dec	sp
                                   1043 ;	8051_i2c_eeprom.c:198: }
                                   1044 ;	8051_i2c_eeprom.c:201: }
      003320 02 31 B1         [24] 1045 	ljmp	00115$
                                   1046 ;------------------------------------------------------------
                                   1047 ;Allocation info for local variables in function 'take_address'
                                   1048 ;------------------------------------------------------------
                                   1049 ;input                     Allocated with name '_take_address_input_65537_68'
                                   1050 ;i                         Allocated with name '_take_address_i_65537_68'
                                   1051 ;c                         Allocated with name '_take_address_c_65537_68'
                                   1052 ;address                   Allocated with name '_take_address_address_65538_72'
                                   1053 ;block                     Allocated with name '_take_address_block_65539_76'
                                   1054 ;------------------------------------------------------------
                                   1055 ;	8051_i2c_eeprom.c:209: unsigned int take_address() 
                                   1056 ;	-----------------------------------------
                                   1057 ;	 function take_address
                                   1058 ;	-----------------------------------------
      003323                       1059 _take_address:
                                   1060 ;	8051_i2c_eeprom.c:211: printf("│ Enter address (hex, up to 3 characters): \n\r|");
      003323 74 5F            [12] 1061 	mov	a,#___str_21
      003325 C0 E0            [24] 1062 	push	acc
      003327 74 51            [12] 1063 	mov	a,#(___str_21 >> 8)
      003329 C0 E0            [24] 1064 	push	acc
      00332B 74 80            [12] 1065 	mov	a,#0x80
      00332D C0 E0            [24] 1066 	push	acc
      00332F 12 3F 56         [24] 1067 	lcall	_printf
      003332 15 81            [12] 1068 	dec	sp
      003334 15 81            [12] 1069 	dec	sp
      003336 15 81            [12] 1070 	dec	sp
                                   1071 ;	8051_i2c_eeprom.c:212: char input[4] = {0};  // Array for 3 hex chars + null terminator
      003338 90 04 04         [24] 1072 	mov	dptr,#_take_address_input_65537_68
      00333B E4               [12] 1073 	clr	a
      00333C F0               [24] 1074 	movx	@dptr,a
      00333D 90 04 05         [24] 1075 	mov	dptr,#(_take_address_input_65537_68 + 0x0001)
      003340 F0               [24] 1076 	movx	@dptr,a
      003341 90 04 06         [24] 1077 	mov	dptr,#(_take_address_input_65537_68 + 0x0002)
      003344 F0               [24] 1078 	movx	@dptr,a
      003345 90 04 07         [24] 1079 	mov	dptr,#(_take_address_input_65537_68 + 0x0003)
      003348 F0               [24] 1080 	movx	@dptr,a
                                   1081 ;	8051_i2c_eeprom.c:216: printf("| $ ");
      003349 74 90            [12] 1082 	mov	a,#___str_22
      00334B C0 E0            [24] 1083 	push	acc
      00334D 74 51            [12] 1084 	mov	a,#(___str_22 >> 8)
      00334F C0 E0            [24] 1085 	push	acc
      003351 74 80            [12] 1086 	mov	a,#0x80
      003353 C0 E0            [24] 1087 	push	acc
      003355 12 3F 56         [24] 1088 	lcall	_printf
      003358 15 81            [12] 1089 	dec	sp
      00335A 15 81            [12] 1090 	dec	sp
      00335C 15 81            [12] 1091 	dec	sp
                                   1092 ;	8051_i2c_eeprom.c:218: while (i < 3) {
      00335E 7E 00            [12] 1093 	mov	r6,#0x00
      003360 7F 00            [12] 1094 	mov	r7,#0x00
      003362                       1095 00111$:
      003362 C3               [12] 1096 	clr	c
      003363 EE               [12] 1097 	mov	a,r6
      003364 94 03            [12] 1098 	subb	a,#0x03
      003366 EF               [12] 1099 	mov	a,r7
      003367 64 80            [12] 1100 	xrl	a,#0x80
      003369 94 80            [12] 1101 	subb	a,#0x80
      00336B 50 5B            [24] 1102 	jnc	00113$
                                   1103 ;	8051_i2c_eeprom.c:220: c = getchar();
      00336D C0 07            [24] 1104 	push	ar7
      00336F C0 06            [24] 1105 	push	ar6
      003371 12 30 81         [24] 1106 	lcall	_getchar
      003374 AC 82            [24] 1107 	mov	r4,dpl
      003376 AD 83            [24] 1108 	mov	r5,dph
      003378 D0 06            [24] 1109 	pop	ar6
      00337A D0 07            [24] 1110 	pop	ar7
                                   1111 ;	8051_i2c_eeprom.c:223: if (c == '\r' || c == '\n') {
      00337C BC 0D 02         [24] 1112 	cjne	r4,#0x0d,00200$
      00337F 80 47            [24] 1113 	sjmp	00113$
      003381                       1114 00200$:
      003381 BC 0A 02         [24] 1115 	cjne	r4,#0x0a,00201$
      003384 80 42            [24] 1116 	sjmp	00113$
      003386                       1117 00201$:
                                   1118 ;	8051_i2c_eeprom.c:228: if ((c >= '0' && c <= '9') || 
      003386 BC 30 00         [24] 1119 	cjne	r4,#0x30,00202$
      003389                       1120 00202$:
      003389 40 05            [24] 1121 	jc	00108$
      00338B EC               [12] 1122 	mov	a,r4
      00338C 24 C6            [12] 1123 	add	a,#0xff - 0x39
      00338E 50 14            [24] 1124 	jnc	00104$
      003390                       1125 00108$:
                                   1126 ;	8051_i2c_eeprom.c:229: (c >= 'a' && c <= 'f') || 
      003390 BC 61 00         [24] 1127 	cjne	r4,#0x61,00205$
      003393                       1128 00205$:
      003393 40 05            [24] 1129 	jc	00110$
      003395 EC               [12] 1130 	mov	a,r4
      003396 24 99            [12] 1131 	add	a,#0xff - 0x66
      003398 50 0A            [24] 1132 	jnc	00104$
      00339A                       1133 00110$:
                                   1134 ;	8051_i2c_eeprom.c:230: (c >= 'A' && c <= 'F')) {
      00339A BC 41 00         [24] 1135 	cjne	r4,#0x41,00208$
      00339D                       1136 00208$:
      00339D 40 C3            [24] 1137 	jc	00111$
      00339F EC               [12] 1138 	mov	a,r4
      0033A0 24 B9            [12] 1139 	add	a,#0xff - 0x46
      0033A2 40 BE            [24] 1140 	jc	00111$
      0033A4                       1141 00104$:
                                   1142 ;	8051_i2c_eeprom.c:232: input[i] = c;
      0033A4 EE               [12] 1143 	mov	a,r6
      0033A5 24 04            [12] 1144 	add	a,#_take_address_input_65537_68
      0033A7 F5 82            [12] 1145 	mov	dpl,a
      0033A9 EF               [12] 1146 	mov	a,r7
      0033AA 34 04            [12] 1147 	addc	a,#(_take_address_input_65537_68 >> 8)
      0033AC F5 83            [12] 1148 	mov	dph,a
      0033AE EC               [12] 1149 	mov	a,r4
      0033AF F0               [24] 1150 	movx	@dptr,a
                                   1151 ;	8051_i2c_eeprom.c:233: putchar(c);  // Echo character back
      0033B0 7D 00            [12] 1152 	mov	r5,#0x00
      0033B2 8C 82            [24] 1153 	mov	dpl,r4
      0033B4 8D 83            [24] 1154 	mov	dph,r5
      0033B6 C0 07            [24] 1155 	push	ar7
      0033B8 C0 06            [24] 1156 	push	ar6
      0033BA 12 30 62         [24] 1157 	lcall	_putchar
      0033BD D0 06            [24] 1158 	pop	ar6
      0033BF D0 07            [24] 1159 	pop	ar7
                                   1160 ;	8051_i2c_eeprom.c:234: i++;
      0033C1 0E               [12] 1161 	inc	r6
      0033C2 BE 00 9D         [24] 1162 	cjne	r6,#0x00,00111$
      0033C5 0F               [12] 1163 	inc	r7
      0033C6 80 9A            [24] 1164 	sjmp	00111$
      0033C8                       1165 00113$:
                                   1166 ;	8051_i2c_eeprom.c:238: input[i] = '\0';  // Null-terminate the string
      0033C8 EE               [12] 1167 	mov	a,r6
      0033C9 24 04            [12] 1168 	add	a,#_take_address_input_65537_68
      0033CB F5 82            [12] 1169 	mov	dpl,a
      0033CD EF               [12] 1170 	mov	a,r7
      0033CE 34 04            [12] 1171 	addc	a,#(_take_address_input_65537_68 >> 8)
      0033D0 F5 83            [12] 1172 	mov	dph,a
      0033D2 E4               [12] 1173 	clr	a
      0033D3 F0               [24] 1174 	movx	@dptr,a
                                   1175 ;	8051_i2c_eeprom.c:241: unsigned int address = 0;
      0033D4 90 04 08         [24] 1176 	mov	dptr,#_take_address_address_65538_72
      0033D7 F0               [24] 1177 	movx	@dptr,a
      0033D8 A3               [24] 1178 	inc	dptr
      0033D9 F0               [24] 1179 	movx	@dptr,a
                                   1180 ;	8051_i2c_eeprom.c:242: for(i = 0; input[i] != '\0'; i++) {
      0033DA 7E 00            [12] 1181 	mov	r6,#0x00
      0033DC 7F 00            [12] 1182 	mov	r7,#0x00
      0033DE                       1183 00129$:
      0033DE EE               [12] 1184 	mov	a,r6
      0033DF 24 04            [12] 1185 	add	a,#_take_address_input_65537_68
      0033E1 F5 82            [12] 1186 	mov	dpl,a
      0033E3 EF               [12] 1187 	mov	a,r7
      0033E4 34 04            [12] 1188 	addc	a,#(_take_address_input_65537_68 >> 8)
      0033E6 F5 83            [12] 1189 	mov	dph,a
      0033E8 E0               [24] 1190 	movx	a,@dptr
      0033E9 FD               [12] 1191 	mov	r5,a
      0033EA 70 03            [24] 1192 	jnz	00212$
      0033EC 02 34 97         [24] 1193 	ljmp	00125$
      0033EF                       1194 00212$:
                                   1195 ;	8051_i2c_eeprom.c:243: address = address * 16;
      0033EF 90 04 08         [24] 1196 	mov	dptr,#_take_address_address_65538_72
      0033F2 E0               [24] 1197 	movx	a,@dptr
      0033F3 FB               [12] 1198 	mov	r3,a
      0033F4 A3               [24] 1199 	inc	dptr
      0033F5 E0               [24] 1200 	movx	a,@dptr
      0033F6 C4               [12] 1201 	swap	a
      0033F7 54 F0            [12] 1202 	anl	a,#0xf0
      0033F9 CB               [12] 1203 	xch	a,r3
      0033FA C4               [12] 1204 	swap	a
      0033FB CB               [12] 1205 	xch	a,r3
      0033FC 6B               [12] 1206 	xrl	a,r3
      0033FD CB               [12] 1207 	xch	a,r3
      0033FE 54 F0            [12] 1208 	anl	a,#0xf0
      003400 CB               [12] 1209 	xch	a,r3
      003401 6B               [12] 1210 	xrl	a,r3
      003402 FC               [12] 1211 	mov	r4,a
      003403 90 04 08         [24] 1212 	mov	dptr,#_take_address_address_65538_72
      003406 EB               [12] 1213 	mov	a,r3
      003407 F0               [24] 1214 	movx	@dptr,a
      003408 EC               [12] 1215 	mov	a,r4
      003409 A3               [24] 1216 	inc	dptr
      00340A F0               [24] 1217 	movx	@dptr,a
                                   1218 ;	8051_i2c_eeprom.c:244: if(input[i] >= '0' && input[i] <= '9')
      00340B BD 30 00         [24] 1219 	cjne	r5,#0x30,00213$
      00340E                       1220 00213$:
      00340E 40 23            [24] 1221 	jc	00122$
      003410 ED               [12] 1222 	mov	a,r5
      003411 24 C6            [12] 1223 	add	a,#0xff - 0x39
      003413 40 1E            [24] 1224 	jc	00122$
                                   1225 ;	8051_i2c_eeprom.c:245: address += input[i] - '0';
      003415 7C 00            [12] 1226 	mov	r4,#0x00
      003417 ED               [12] 1227 	mov	a,r5
      003418 24 D0            [12] 1228 	add	a,#0xd0
      00341A FD               [12] 1229 	mov	r5,a
      00341B EC               [12] 1230 	mov	a,r4
      00341C 34 FF            [12] 1231 	addc	a,#0xff
      00341E FC               [12] 1232 	mov	r4,a
      00341F 90 04 08         [24] 1233 	mov	dptr,#_take_address_address_65538_72
      003422 E0               [24] 1234 	movx	a,@dptr
      003423 FA               [12] 1235 	mov	r2,a
      003424 A3               [24] 1236 	inc	dptr
      003425 E0               [24] 1237 	movx	a,@dptr
      003426 FB               [12] 1238 	mov	r3,a
      003427 90 04 08         [24] 1239 	mov	dptr,#_take_address_address_65538_72
      00342A ED               [12] 1240 	mov	a,r5
      00342B 2A               [12] 1241 	add	a,r2
      00342C F0               [24] 1242 	movx	@dptr,a
      00342D EC               [12] 1243 	mov	a,r4
      00342E 3B               [12] 1244 	addc	a,r3
      00342F A3               [24] 1245 	inc	dptr
      003430 F0               [24] 1246 	movx	@dptr,a
      003431 80 5C            [24] 1247 	sjmp	00130$
      003433                       1248 00122$:
                                   1249 ;	8051_i2c_eeprom.c:246: else if(input[i] >= 'A' && input[i] <= 'F')
      003433 EE               [12] 1250 	mov	a,r6
      003434 24 04            [12] 1251 	add	a,#_take_address_input_65537_68
      003436 F5 82            [12] 1252 	mov	dpl,a
      003438 EF               [12] 1253 	mov	a,r7
      003439 34 04            [12] 1254 	addc	a,#(_take_address_input_65537_68 >> 8)
      00343B F5 83            [12] 1255 	mov	dph,a
      00343D E0               [24] 1256 	movx	a,@dptr
      00343E FD               [12] 1257 	mov	r5,a
      00343F BD 41 00         [24] 1258 	cjne	r5,#0x41,00216$
      003442                       1259 00216$:
      003442 40 25            [24] 1260 	jc	00118$
      003444 ED               [12] 1261 	mov	a,r5
      003445 24 B9            [12] 1262 	add	a,#0xff - 0x46
      003447 40 20            [24] 1263 	jc	00118$
                                   1264 ;	8051_i2c_eeprom.c:247: address += input[i] - 'A' + 10;
      003449 8D 03            [24] 1265 	mov	ar3,r5
      00344B 7C 00            [12] 1266 	mov	r4,#0x00
      00344D 74 C9            [12] 1267 	mov	a,#0xc9
      00344F 2B               [12] 1268 	add	a,r3
      003450 FB               [12] 1269 	mov	r3,a
      003451 74 FF            [12] 1270 	mov	a,#0xff
      003453 3C               [12] 1271 	addc	a,r4
      003454 FC               [12] 1272 	mov	r4,a
      003455 90 04 08         [24] 1273 	mov	dptr,#_take_address_address_65538_72
      003458 E0               [24] 1274 	movx	a,@dptr
      003459 F9               [12] 1275 	mov	r1,a
      00345A A3               [24] 1276 	inc	dptr
      00345B E0               [24] 1277 	movx	a,@dptr
      00345C FA               [12] 1278 	mov	r2,a
      00345D 90 04 08         [24] 1279 	mov	dptr,#_take_address_address_65538_72
      003460 EB               [12] 1280 	mov	a,r3
      003461 29               [12] 1281 	add	a,r1
      003462 F0               [24] 1282 	movx	@dptr,a
      003463 EC               [12] 1283 	mov	a,r4
      003464 3A               [12] 1284 	addc	a,r2
      003465 A3               [24] 1285 	inc	dptr
      003466 F0               [24] 1286 	movx	@dptr,a
      003467 80 26            [24] 1287 	sjmp	00130$
      003469                       1288 00118$:
                                   1289 ;	8051_i2c_eeprom.c:248: else if(input[i] >= 'a' && input[i] <= 'f')
      003469 BD 61 00         [24] 1290 	cjne	r5,#0x61,00219$
      00346C                       1291 00219$:
      00346C 40 21            [24] 1292 	jc	00130$
      00346E ED               [12] 1293 	mov	a,r5
      00346F 24 99            [12] 1294 	add	a,#0xff - 0x66
      003471 40 1C            [24] 1295 	jc	00130$
                                   1296 ;	8051_i2c_eeprom.c:249: address += input[i] - 'a' + 10;
      003473 7C 00            [12] 1297 	mov	r4,#0x00
      003475 74 A9            [12] 1298 	mov	a,#0xa9
      003477 2D               [12] 1299 	add	a,r5
      003478 FD               [12] 1300 	mov	r5,a
      003479 74 FF            [12] 1301 	mov	a,#0xff
      00347B 3C               [12] 1302 	addc	a,r4
      00347C FC               [12] 1303 	mov	r4,a
      00347D 90 04 08         [24] 1304 	mov	dptr,#_take_address_address_65538_72
      003480 E0               [24] 1305 	movx	a,@dptr
      003481 FA               [12] 1306 	mov	r2,a
      003482 A3               [24] 1307 	inc	dptr
      003483 E0               [24] 1308 	movx	a,@dptr
      003484 FB               [12] 1309 	mov	r3,a
      003485 90 04 08         [24] 1310 	mov	dptr,#_take_address_address_65538_72
      003488 ED               [12] 1311 	mov	a,r5
      003489 2A               [12] 1312 	add	a,r2
      00348A F0               [24] 1313 	movx	@dptr,a
      00348B EC               [12] 1314 	mov	a,r4
      00348C 3B               [12] 1315 	addc	a,r3
      00348D A3               [24] 1316 	inc	dptr
      00348E F0               [24] 1317 	movx	@dptr,a
      00348F                       1318 00130$:
                                   1319 ;	8051_i2c_eeprom.c:242: for(i = 0; input[i] != '\0'; i++) {
      00348F 0E               [12] 1320 	inc	r6
      003490 BE 00 01         [24] 1321 	cjne	r6,#0x00,00222$
      003493 0F               [12] 1322 	inc	r7
      003494                       1323 00222$:
      003494 02 33 DE         [24] 1324 	ljmp	00129$
      003497                       1325 00125$:
                                   1326 ;	8051_i2c_eeprom.c:252: printf("\n\r│ Entered address: 0x%03X\n\r", address);
      003497 90 04 08         [24] 1327 	mov	dptr,#_take_address_address_65538_72
      00349A E0               [24] 1328 	movx	a,@dptr
      00349B FE               [12] 1329 	mov	r6,a
      00349C A3               [24] 1330 	inc	dptr
      00349D E0               [24] 1331 	movx	a,@dptr
      00349E FF               [12] 1332 	mov	r7,a
      00349F C0 07            [24] 1333 	push	ar7
      0034A1 C0 06            [24] 1334 	push	ar6
      0034A3 C0 06            [24] 1335 	push	ar6
      0034A5 C0 07            [24] 1336 	push	ar7
      0034A7 74 95            [12] 1337 	mov	a,#___str_23
      0034A9 C0 E0            [24] 1338 	push	acc
      0034AB 74 51            [12] 1339 	mov	a,#(___str_23 >> 8)
      0034AD C0 E0            [24] 1340 	push	acc
      0034AF 74 80            [12] 1341 	mov	a,#0x80
      0034B1 C0 E0            [24] 1342 	push	acc
      0034B3 12 3F 56         [24] 1343 	lcall	_printf
      0034B6 E5 81            [12] 1344 	mov	a,sp
      0034B8 24 FB            [12] 1345 	add	a,#0xfb
      0034BA F5 81            [12] 1346 	mov	sp,a
      0034BC D0 06            [24] 1347 	pop	ar6
      0034BE D0 07            [24] 1348 	pop	ar7
                                   1349 ;	8051_i2c_eeprom.c:253: if(address > 0x7ff) 
      0034C0 C3               [12] 1350 	clr	c
      0034C1 74 FF            [12] 1351 	mov	a,#0xff
      0034C3 9E               [12] 1352 	subb	a,r6
      0034C4 74 07            [12] 1353 	mov	a,#0x07
      0034C6 9F               [12] 1354 	subb	a,r7
      0034C7 50 5F            [24] 1355 	jnc	00127$
                                   1356 ;	8051_i2c_eeprom.c:255: printf("╔══════════════════════════════════════════╗\n\r");
      0034C9 74 B5            [12] 1357 	mov	a,#___str_24
      0034CB C0 E0            [24] 1358 	push	acc
      0034CD 74 51            [12] 1359 	mov	a,#(___str_24 >> 8)
      0034CF C0 E0            [24] 1360 	push	acc
      0034D1 74 80            [12] 1361 	mov	a,#0x80
      0034D3 C0 E0            [24] 1362 	push	acc
      0034D5 12 3F 56         [24] 1363 	lcall	_printf
      0034D8 15 81            [12] 1364 	dec	sp
      0034DA 15 81            [12] 1365 	dec	sp
      0034DC 15 81            [12] 1366 	dec	sp
                                   1367 ;	8051_i2c_eeprom.c:256: printf("║       ! ADDRESS OUT OF RANGE !         ║\n\r");
      0034DE 74 3C            [12] 1368 	mov	a,#___str_25
      0034E0 C0 E0            [24] 1369 	push	acc
      0034E2 74 52            [12] 1370 	mov	a,#(___str_25 >> 8)
      0034E4 C0 E0            [24] 1371 	push	acc
      0034E6 74 80            [12] 1372 	mov	a,#0x80
      0034E8 C0 E0            [24] 1373 	push	acc
      0034EA 12 3F 56         [24] 1374 	lcall	_printf
      0034ED 15 81            [12] 1375 	dec	sp
      0034EF 15 81            [12] 1376 	dec	sp
      0034F1 15 81            [12] 1377 	dec	sp
                                   1378 ;	8051_i2c_eeprom.c:257: printf("║     Please Enter Valid Address         ║\n\r");
      0034F3 74 6D            [12] 1379 	mov	a,#___str_26
      0034F5 C0 E0            [24] 1380 	push	acc
      0034F7 74 52            [12] 1381 	mov	a,#(___str_26 >> 8)
      0034F9 C0 E0            [24] 1382 	push	acc
      0034FB 74 80            [12] 1383 	mov	a,#0x80
      0034FD C0 E0            [24] 1384 	push	acc
      0034FF 12 3F 56         [24] 1385 	lcall	_printf
      003502 15 81            [12] 1386 	dec	sp
      003504 15 81            [12] 1387 	dec	sp
      003506 15 81            [12] 1388 	dec	sp
                                   1389 ;	8051_i2c_eeprom.c:258: printf("╚══════════════════════════════════════════╝\n\r");
      003508 74 9E            [12] 1390 	mov	a,#___str_27
      00350A C0 E0            [24] 1391 	push	acc
      00350C 74 52            [12] 1392 	mov	a,#(___str_27 >> 8)
      00350E C0 E0            [24] 1393 	push	acc
      003510 74 80            [12] 1394 	mov	a,#0x80
      003512 C0 E0            [24] 1395 	push	acc
      003514 12 3F 56         [24] 1396 	lcall	_printf
      003517 15 81            [12] 1397 	dec	sp
      003519 15 81            [12] 1398 	dec	sp
      00351B 15 81            [12] 1399 	dec	sp
                                   1400 ;	8051_i2c_eeprom.c:259: address_range_flag = 0;
      00351D 90 04 57         [24] 1401 	mov	dptr,#_address_range_flag
      003520 E4               [12] 1402 	clr	a
      003521 F0               [24] 1403 	movx	@dptr,a
      003522 A3               [24] 1404 	inc	dptr
      003523 F0               [24] 1405 	movx	@dptr,a
                                   1406 ;	8051_i2c_eeprom.c:260: return 0;
      003524 90 00 00         [24] 1407 	mov	dptr,#0x0000
      003527 22               [24] 1408 	ret
      003528                       1409 00127$:
                                   1410 ;	8051_i2c_eeprom.c:262: unsigned int block = address/256;       //block address
      003528 8F 04            [24] 1411 	mov	ar4,r7
      00352A 7D 00            [12] 1412 	mov	r5,#0x00
                                   1413 ;	8051_i2c_eeprom.c:263: printf("| Block number %d                            \n\r", block);
      00352C C0 07            [24] 1414 	push	ar7
      00352E C0 06            [24] 1415 	push	ar6
      003530 C0 04            [24] 1416 	push	ar4
      003532 C0 05            [24] 1417 	push	ar5
      003534 74 25            [12] 1418 	mov	a,#___str_28
      003536 C0 E0            [24] 1419 	push	acc
      003538 74 53            [12] 1420 	mov	a,#(___str_28 >> 8)
      00353A C0 E0            [24] 1421 	push	acc
      00353C 74 80            [12] 1422 	mov	a,#0x80
      00353E C0 E0            [24] 1423 	push	acc
      003540 12 3F 56         [24] 1424 	lcall	_printf
      003543 E5 81            [12] 1425 	mov	a,sp
      003545 24 FB            [12] 1426 	add	a,#0xfb
      003547 F5 81            [12] 1427 	mov	sp,a
      003549 D0 06            [24] 1428 	pop	ar6
      00354B D0 07            [24] 1429 	pop	ar7
                                   1430 ;	8051_i2c_eeprom.c:264: address = address%256;     //word address
      00354D 90 04 08         [24] 1431 	mov	dptr,#_take_address_address_65538_72
      003550 EE               [12] 1432 	mov	a,r6
      003551 F0               [24] 1433 	movx	@dptr,a
      003552 E4               [12] 1434 	clr	a
      003553 A3               [24] 1435 	inc	dptr
      003554 F0               [24] 1436 	movx	@dptr,a
                                   1437 ;	8051_i2c_eeprom.c:267: return address;
      003555 90 04 08         [24] 1438 	mov	dptr,#_take_address_address_65538_72
      003558 E0               [24] 1439 	movx	a,@dptr
      003559 FE               [12] 1440 	mov	r6,a
      00355A A3               [24] 1441 	inc	dptr
      00355B E0               [24] 1442 	movx	a,@dptr
                                   1443 ;	8051_i2c_eeprom.c:268: }
      00355C 8E 82            [24] 1444 	mov	dpl,r6
      00355E F5 83            [12] 1445 	mov	dph,a
      003560 22               [24] 1446 	ret
                                   1447 ;------------------------------------------------------------
                                   1448 ;Allocation info for local variables in function 'take_data'
                                   1449 ;------------------------------------------------------------
                                   1450 ;input                     Allocated with name '_take_data_input_65537_78'
                                   1451 ;i                         Allocated with name '_take_data_i_65537_78'
                                   1452 ;c                         Allocated with name '_take_data_c_65537_78'
                                   1453 ;data                      Allocated with name '_take_data_data_65538_82'
                                   1454 ;------------------------------------------------------------
                                   1455 ;	8051_i2c_eeprom.c:276: unsigned char take_data()
                                   1456 ;	-----------------------------------------
                                   1457 ;	 function take_data
                                   1458 ;	-----------------------------------------
      003561                       1459 _take_data:
                                   1460 ;	8051_i2c_eeprom.c:278: printf("│ Enter data (hex, up to 2 characters): \n\r|");
      003561 74 55            [12] 1461 	mov	a,#___str_29
      003563 C0 E0            [24] 1462 	push	acc
      003565 74 53            [12] 1463 	mov	a,#(___str_29 >> 8)
      003567 C0 E0            [24] 1464 	push	acc
      003569 74 80            [12] 1465 	mov	a,#0x80
      00356B C0 E0            [24] 1466 	push	acc
      00356D 12 3F 56         [24] 1467 	lcall	_printf
      003570 15 81            [12] 1468 	dec	sp
      003572 15 81            [12] 1469 	dec	sp
      003574 15 81            [12] 1470 	dec	sp
                                   1471 ;	8051_i2c_eeprom.c:279: char input[4] = {0};  // Array for 3 hex chars + null terminator
      003576 90 04 0A         [24] 1472 	mov	dptr,#_take_data_input_65537_78
      003579 E4               [12] 1473 	clr	a
      00357A F0               [24] 1474 	movx	@dptr,a
      00357B 90 04 0B         [24] 1475 	mov	dptr,#(_take_data_input_65537_78 + 0x0001)
      00357E F0               [24] 1476 	movx	@dptr,a
      00357F 90 04 0C         [24] 1477 	mov	dptr,#(_take_data_input_65537_78 + 0x0002)
      003582 F0               [24] 1478 	movx	@dptr,a
      003583 90 04 0D         [24] 1479 	mov	dptr,#(_take_data_input_65537_78 + 0x0003)
      003586 F0               [24] 1480 	movx	@dptr,a
                                   1481 ;	8051_i2c_eeprom.c:283: printf("$ ");
      003587 74 83            [12] 1482 	mov	a,#___str_30
      003589 C0 E0            [24] 1483 	push	acc
      00358B 74 53            [12] 1484 	mov	a,#(___str_30 >> 8)
      00358D C0 E0            [24] 1485 	push	acc
      00358F 74 80            [12] 1486 	mov	a,#0x80
      003591 C0 E0            [24] 1487 	push	acc
      003593 12 3F 56         [24] 1488 	lcall	_printf
      003596 15 81            [12] 1489 	dec	sp
      003598 15 81            [12] 1490 	dec	sp
      00359A 15 81            [12] 1491 	dec	sp
                                   1492 ;	8051_i2c_eeprom.c:285: while (i < 3) {
      00359C 7E 00            [12] 1493 	mov	r6,#0x00
      00359E 7F 00            [12] 1494 	mov	r7,#0x00
      0035A0                       1495 00111$:
      0035A0 C3               [12] 1496 	clr	c
      0035A1 EE               [12] 1497 	mov	a,r6
      0035A2 94 03            [12] 1498 	subb	a,#0x03
      0035A4 EF               [12] 1499 	mov	a,r7
      0035A5 64 80            [12] 1500 	xrl	a,#0x80
      0035A7 94 80            [12] 1501 	subb	a,#0x80
      0035A9 50 5B            [24] 1502 	jnc	00113$
                                   1503 ;	8051_i2c_eeprom.c:287: c = getchar();
      0035AB C0 07            [24] 1504 	push	ar7
      0035AD C0 06            [24] 1505 	push	ar6
      0035AF 12 30 81         [24] 1506 	lcall	_getchar
      0035B2 AC 82            [24] 1507 	mov	r4,dpl
      0035B4 AD 83            [24] 1508 	mov	r5,dph
      0035B6 D0 06            [24] 1509 	pop	ar6
      0035B8 D0 07            [24] 1510 	pop	ar7
                                   1511 ;	8051_i2c_eeprom.c:290: if (c == '\r' || c == '\n') {
      0035BA BC 0D 02         [24] 1512 	cjne	r4,#0x0d,00200$
      0035BD 80 47            [24] 1513 	sjmp	00113$
      0035BF                       1514 00200$:
      0035BF BC 0A 02         [24] 1515 	cjne	r4,#0x0a,00201$
      0035C2 80 42            [24] 1516 	sjmp	00113$
      0035C4                       1517 00201$:
                                   1518 ;	8051_i2c_eeprom.c:295: if ((c >= '0' && c <= '9') ||
      0035C4 BC 30 00         [24] 1519 	cjne	r4,#0x30,00202$
      0035C7                       1520 00202$:
      0035C7 40 05            [24] 1521 	jc	00108$
      0035C9 EC               [12] 1522 	mov	a,r4
      0035CA 24 C6            [12] 1523 	add	a,#0xff - 0x39
      0035CC 50 14            [24] 1524 	jnc	00104$
      0035CE                       1525 00108$:
                                   1526 ;	8051_i2c_eeprom.c:296: (c >= 'a' && c <= 'f') ||
      0035CE BC 61 00         [24] 1527 	cjne	r4,#0x61,00205$
      0035D1                       1528 00205$:
      0035D1 40 05            [24] 1529 	jc	00110$
      0035D3 EC               [12] 1530 	mov	a,r4
      0035D4 24 99            [12] 1531 	add	a,#0xff - 0x66
      0035D6 50 0A            [24] 1532 	jnc	00104$
      0035D8                       1533 00110$:
                                   1534 ;	8051_i2c_eeprom.c:297: (c >= 'A' && c <= 'F')) {
      0035D8 BC 41 00         [24] 1535 	cjne	r4,#0x41,00208$
      0035DB                       1536 00208$:
      0035DB 40 C3            [24] 1537 	jc	00111$
      0035DD EC               [12] 1538 	mov	a,r4
      0035DE 24 B9            [12] 1539 	add	a,#0xff - 0x46
      0035E0 40 BE            [24] 1540 	jc	00111$
      0035E2                       1541 00104$:
                                   1542 ;	8051_i2c_eeprom.c:299: input[i] = c;
      0035E2 EE               [12] 1543 	mov	a,r6
      0035E3 24 0A            [12] 1544 	add	a,#_take_data_input_65537_78
      0035E5 F5 82            [12] 1545 	mov	dpl,a
      0035E7 EF               [12] 1546 	mov	a,r7
      0035E8 34 04            [12] 1547 	addc	a,#(_take_data_input_65537_78 >> 8)
      0035EA F5 83            [12] 1548 	mov	dph,a
      0035EC EC               [12] 1549 	mov	a,r4
      0035ED F0               [24] 1550 	movx	@dptr,a
                                   1551 ;	8051_i2c_eeprom.c:300: putchar(c);  // Echo character back
      0035EE 7D 00            [12] 1552 	mov	r5,#0x00
      0035F0 8C 82            [24] 1553 	mov	dpl,r4
      0035F2 8D 83            [24] 1554 	mov	dph,r5
      0035F4 C0 07            [24] 1555 	push	ar7
      0035F6 C0 06            [24] 1556 	push	ar6
      0035F8 12 30 62         [24] 1557 	lcall	_putchar
      0035FB D0 06            [24] 1558 	pop	ar6
      0035FD D0 07            [24] 1559 	pop	ar7
                                   1560 ;	8051_i2c_eeprom.c:301: i++;
      0035FF 0E               [12] 1561 	inc	r6
      003600 BE 00 9D         [24] 1562 	cjne	r6,#0x00,00111$
      003603 0F               [12] 1563 	inc	r7
      003604 80 9A            [24] 1564 	sjmp	00111$
      003606                       1565 00113$:
                                   1566 ;	8051_i2c_eeprom.c:305: input[i] = '\0';  // Null-terminate the string
      003606 EE               [12] 1567 	mov	a,r6
      003607 24 0A            [12] 1568 	add	a,#_take_data_input_65537_78
      003609 F5 82            [12] 1569 	mov	dpl,a
      00360B EF               [12] 1570 	mov	a,r7
      00360C 34 04            [12] 1571 	addc	a,#(_take_data_input_65537_78 >> 8)
      00360E F5 83            [12] 1572 	mov	dph,a
      003610 E4               [12] 1573 	clr	a
      003611 F0               [24] 1574 	movx	@dptr,a
                                   1575 ;	8051_i2c_eeprom.c:308: unsigned char data = 0;
      003612 90 04 0E         [24] 1576 	mov	dptr,#_take_data_data_65538_82
      003615 F0               [24] 1577 	movx	@dptr,a
                                   1578 ;	8051_i2c_eeprom.c:309: for (i = 0; input[i] != '\0'; i++) {
      003616 7E 00            [12] 1579 	mov	r6,#0x00
      003618 7F 00            [12] 1580 	mov	r7,#0x00
      00361A                       1581 00129$:
      00361A EE               [12] 1582 	mov	a,r6
      00361B 24 0A            [12] 1583 	add	a,#_take_data_input_65537_78
      00361D F5 82            [12] 1584 	mov	dpl,a
      00361F EF               [12] 1585 	mov	a,r7
      003620 34 04            [12] 1586 	addc	a,#(_take_data_input_65537_78 >> 8)
      003622 F5 83            [12] 1587 	mov	dph,a
      003624 E0               [24] 1588 	movx	a,@dptr
      003625 FD               [12] 1589 	mov	r5,a
      003626 70 03            [24] 1590 	jnz	00212$
      003628 02 36 8D         [24] 1591 	ljmp	00125$
      00362B                       1592 00212$:
                                   1593 ;	8051_i2c_eeprom.c:310: data = data * 16;
      00362B 90 04 0E         [24] 1594 	mov	dptr,#_take_data_data_65538_82
      00362E E0               [24] 1595 	movx	a,@dptr
      00362F C4               [12] 1596 	swap	a
      003630 54 F0            [12] 1597 	anl	a,#0xf0
      003632 FC               [12] 1598 	mov	r4,a
      003633 F0               [24] 1599 	movx	@dptr,a
                                   1600 ;	8051_i2c_eeprom.c:311: if (input[i] >= '0' && input[i] <= '9')
      003634 BD 30 00         [24] 1601 	cjne	r5,#0x30,00213$
      003637                       1602 00213$:
      003637 40 12            [24] 1603 	jc	00122$
      003639 ED               [12] 1604 	mov	a,r5
      00363A 24 C6            [12] 1605 	add	a,#0xff - 0x39
      00363C 40 0D            [24] 1606 	jc	00122$
                                   1607 ;	8051_i2c_eeprom.c:312: data += input[i] - '0';
      00363E ED               [12] 1608 	mov	a,r5
      00363F 24 D0            [12] 1609 	add	a,#0xd0
      003641 FD               [12] 1610 	mov	r5,a
      003642 90 04 0E         [24] 1611 	mov	dptr,#_take_data_data_65538_82
      003645 E0               [24] 1612 	movx	a,@dptr
      003646 FC               [12] 1613 	mov	r4,a
      003647 2D               [12] 1614 	add	a,r5
      003648 F0               [24] 1615 	movx	@dptr,a
      003649 80 3A            [24] 1616 	sjmp	00130$
      00364B                       1617 00122$:
                                   1618 ;	8051_i2c_eeprom.c:313: else if (input[i] >= 'A' && input[i] <= 'F')
      00364B EE               [12] 1619 	mov	a,r6
      00364C 24 0A            [12] 1620 	add	a,#_take_data_input_65537_78
      00364E F5 82            [12] 1621 	mov	dpl,a
      003650 EF               [12] 1622 	mov	a,r7
      003651 34 04            [12] 1623 	addc	a,#(_take_data_input_65537_78 >> 8)
      003653 F5 83            [12] 1624 	mov	dph,a
      003655 E0               [24] 1625 	movx	a,@dptr
      003656 FD               [12] 1626 	mov	r5,a
      003657 BD 41 00         [24] 1627 	cjne	r5,#0x41,00216$
      00365A                       1628 00216$:
      00365A 40 14            [24] 1629 	jc	00118$
      00365C ED               [12] 1630 	mov	a,r5
      00365D 24 B9            [12] 1631 	add	a,#0xff - 0x46
      00365F 40 0F            [24] 1632 	jc	00118$
                                   1633 ;	8051_i2c_eeprom.c:314: data += input[i] - 'A' + 10;
      003661 8D 04            [24] 1634 	mov	ar4,r5
      003663 74 C9            [12] 1635 	mov	a,#0xc9
      003665 2C               [12] 1636 	add	a,r4
      003666 FC               [12] 1637 	mov	r4,a
      003667 90 04 0E         [24] 1638 	mov	dptr,#_take_data_data_65538_82
      00366A E0               [24] 1639 	movx	a,@dptr
      00366B FB               [12] 1640 	mov	r3,a
      00366C 2C               [12] 1641 	add	a,r4
      00366D F0               [24] 1642 	movx	@dptr,a
      00366E 80 15            [24] 1643 	sjmp	00130$
      003670                       1644 00118$:
                                   1645 ;	8051_i2c_eeprom.c:315: else if (input[i] >= 'a' && input[i] <= 'f')
      003670 BD 61 00         [24] 1646 	cjne	r5,#0x61,00219$
      003673                       1647 00219$:
      003673 40 10            [24] 1648 	jc	00130$
      003675 ED               [12] 1649 	mov	a,r5
      003676 24 99            [12] 1650 	add	a,#0xff - 0x66
      003678 40 0B            [24] 1651 	jc	00130$
                                   1652 ;	8051_i2c_eeprom.c:316: data += input[i] - 'a' + 10;
      00367A 74 A9            [12] 1653 	mov	a,#0xa9
      00367C 2D               [12] 1654 	add	a,r5
      00367D FD               [12] 1655 	mov	r5,a
      00367E 90 04 0E         [24] 1656 	mov	dptr,#_take_data_data_65538_82
      003681 E0               [24] 1657 	movx	a,@dptr
      003682 FC               [12] 1658 	mov	r4,a
      003683 2D               [12] 1659 	add	a,r5
      003684 F0               [24] 1660 	movx	@dptr,a
      003685                       1661 00130$:
                                   1662 ;	8051_i2c_eeprom.c:309: for (i = 0; input[i] != '\0'; i++) {
      003685 0E               [12] 1663 	inc	r6
      003686 BE 00 01         [24] 1664 	cjne	r6,#0x00,00222$
      003689 0F               [12] 1665 	inc	r7
      00368A                       1666 00222$:
      00368A 02 36 1A         [24] 1667 	ljmp	00129$
      00368D                       1668 00125$:
                                   1669 ;	8051_i2c_eeprom.c:319: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      00368D 90 04 0E         [24] 1670 	mov	dptr,#_take_data_data_65538_82
      003690 E0               [24] 1671 	movx	a,@dptr
      003691 FF               [12] 1672 	mov	r7,a
      003692 FD               [12] 1673 	mov	r5,a
      003693 7E 00            [12] 1674 	mov	r6,#0x00
      003695 C0 07            [24] 1675 	push	ar7
      003697 C0 05            [24] 1676 	push	ar5
      003699 C0 06            [24] 1677 	push	ar6
      00369B 74 86            [12] 1678 	mov	a,#___str_31
      00369D C0 E0            [24] 1679 	push	acc
      00369F 74 53            [12] 1680 	mov	a,#(___str_31 >> 8)
      0036A1 C0 E0            [24] 1681 	push	acc
      0036A3 74 80            [12] 1682 	mov	a,#0x80
      0036A5 C0 E0            [24] 1683 	push	acc
      0036A7 12 3F 56         [24] 1684 	lcall	_printf
      0036AA E5 81            [12] 1685 	mov	a,sp
      0036AC 24 FB            [12] 1686 	add	a,#0xfb
      0036AE F5 81            [12] 1687 	mov	sp,a
      0036B0 D0 07            [24] 1688 	pop	ar7
                                   1689 ;	8051_i2c_eeprom.c:320: if(data > 0xfe)
      0036B2 EF               [12] 1690 	mov	a,r7
      0036B3 24 01            [12] 1691 	add	a,#0xff - 0xfe
      0036B5 50 20            [24] 1692 	jnc	00127$
                                   1693 ;	8051_i2c_eeprom.c:322: printf("Data out of Range\n\r");
      0036B7 74 A3            [12] 1694 	mov	a,#___str_32
      0036B9 C0 E0            [24] 1695 	push	acc
      0036BB 74 53            [12] 1696 	mov	a,#(___str_32 >> 8)
      0036BD C0 E0            [24] 1697 	push	acc
      0036BF 74 80            [12] 1698 	mov	a,#0x80
      0036C1 C0 E0            [24] 1699 	push	acc
      0036C3 12 3F 56         [24] 1700 	lcall	_printf
      0036C6 15 81            [12] 1701 	dec	sp
      0036C8 15 81            [12] 1702 	dec	sp
      0036CA 15 81            [12] 1703 	dec	sp
                                   1704 ;	8051_i2c_eeprom.c:323: data_range_flag = 0;
      0036CC 90 04 59         [24] 1705 	mov	dptr,#_data_range_flag
      0036CF E4               [12] 1706 	clr	a
      0036D0 F0               [24] 1707 	movx	@dptr,a
      0036D1 A3               [24] 1708 	inc	dptr
      0036D2 F0               [24] 1709 	movx	@dptr,a
                                   1710 ;	8051_i2c_eeprom.c:324: return 0;
      0036D3 75 82 00         [24] 1711 	mov	dpl,#0x00
      0036D6 22               [24] 1712 	ret
      0036D7                       1713 00127$:
                                   1714 ;	8051_i2c_eeprom.c:326: return data;
      0036D7 8F 82            [24] 1715 	mov	dpl,r7
                                   1716 ;	8051_i2c_eeprom.c:328: }
      0036D9 22               [24] 1717 	ret
                                   1718 ;------------------------------------------------------------
                                   1719 ;Allocation info for local variables in function 'eeprom_write'
                                   1720 ;------------------------------------------------------------
                                   1721 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                   1722 ;address                   Allocated with name '_eeprom_write_address_65536_86'
                                   1723 ;i                         Allocated with name '_eeprom_write_i_131072_91'
                                   1724 ;------------------------------------------------------------
                                   1725 ;	8051_i2c_eeprom.c:344: int eeprom_write(unsigned int address, unsigned char data) 
                                   1726 ;	-----------------------------------------
                                   1727 ;	 function eeprom_write
                                   1728 ;	-----------------------------------------
      0036DA                       1729 _eeprom_write:
      0036DA AF 83            [24] 1730 	mov	r7,dph
      0036DC E5 82            [12] 1731 	mov	a,dpl
      0036DE 90 04 10         [24] 1732 	mov	dptr,#_eeprom_write_address_65536_86
      0036E1 F0               [24] 1733 	movx	@dptr,a
      0036E2 EF               [12] 1734 	mov	a,r7
      0036E3 A3               [24] 1735 	inc	dptr
      0036E4 F0               [24] 1736 	movx	@dptr,a
                                   1737 ;	8051_i2c_eeprom.c:347: i2c_start();
      0036E5 12 3A 1D         [24] 1738 	lcall	_i2c_start
                                   1739 ;	8051_i2c_eeprom.c:350: if(!i2c_write(EEPROM_ID | block | WRITE)) {
      0036E8 90 04 5B         [24] 1740 	mov	dptr,#_block
      0036EB E0               [24] 1741 	movx	a,@dptr
      0036EC FE               [12] 1742 	mov	r6,a
      0036ED A3               [24] 1743 	inc	dptr
      0036EE E0               [24] 1744 	movx	a,@dptr
      0036EF 43 06 A0         [24] 1745 	orl	ar6,#0xa0
      0036F2 8E 82            [24] 1746 	mov	dpl,r6
      0036F4 12 39 30         [24] 1747 	lcall	_i2c_write
      0036F7 E5 82            [12] 1748 	mov	a,dpl
      0036F9 85 83 F0         [24] 1749 	mov	b,dph
      0036FC 45 F0            [12] 1750 	orl	a,b
      0036FE 70 1C            [24] 1751 	jnz	00102$
                                   1752 ;	8051_i2c_eeprom.c:351: printf("Error: No ACK for device address (write)\n\r");
      003700 74 B7            [12] 1753 	mov	a,#___str_33
      003702 C0 E0            [24] 1754 	push	acc
      003704 74 53            [12] 1755 	mov	a,#(___str_33 >> 8)
      003706 C0 E0            [24] 1756 	push	acc
      003708 74 80            [12] 1757 	mov	a,#0x80
      00370A C0 E0            [24] 1758 	push	acc
      00370C 12 3F 56         [24] 1759 	lcall	_printf
      00370F 15 81            [12] 1760 	dec	sp
      003711 15 81            [12] 1761 	dec	sp
      003713 15 81            [12] 1762 	dec	sp
                                   1763 ;	8051_i2c_eeprom.c:352: i2c_stop();
      003715 12 3E 00         [24] 1764 	lcall	_i2c_stop
                                   1765 ;	8051_i2c_eeprom.c:353: return 0;
      003718 90 00 00         [24] 1766 	mov	dptr,#0x0000
      00371B 22               [24] 1767 	ret
      00371C                       1768 00102$:
                                   1769 ;	8051_i2c_eeprom.c:357: if(!i2c_write((unsigned char)address)) {
      00371C 90 04 10         [24] 1770 	mov	dptr,#_eeprom_write_address_65536_86
      00371F E0               [24] 1771 	movx	a,@dptr
      003720 FE               [12] 1772 	mov	r6,a
      003721 A3               [24] 1773 	inc	dptr
      003722 E0               [24] 1774 	movx	a,@dptr
      003723 FF               [12] 1775 	mov	r7,a
      003724 8E 05            [24] 1776 	mov	ar5,r6
      003726 8D 82            [24] 1777 	mov	dpl,r5
      003728 C0 07            [24] 1778 	push	ar7
      00372A C0 06            [24] 1779 	push	ar6
      00372C 12 39 30         [24] 1780 	lcall	_i2c_write
      00372F E5 82            [12] 1781 	mov	a,dpl
      003731 85 83 F0         [24] 1782 	mov	b,dph
      003734 D0 06            [24] 1783 	pop	ar6
      003736 D0 07            [24] 1784 	pop	ar7
      003738 45 F0            [12] 1785 	orl	a,b
      00373A 70 1C            [24] 1786 	jnz	00104$
                                   1787 ;	8051_i2c_eeprom.c:358: printf("Error: No ACK for memory address\n\r");
      00373C 74 E2            [12] 1788 	mov	a,#___str_34
      00373E C0 E0            [24] 1789 	push	acc
      003740 74 53            [12] 1790 	mov	a,#(___str_34 >> 8)
      003742 C0 E0            [24] 1791 	push	acc
      003744 74 80            [12] 1792 	mov	a,#0x80
      003746 C0 E0            [24] 1793 	push	acc
      003748 12 3F 56         [24] 1794 	lcall	_printf
      00374B 15 81            [12] 1795 	dec	sp
      00374D 15 81            [12] 1796 	dec	sp
      00374F 15 81            [12] 1797 	dec	sp
                                   1798 ;	8051_i2c_eeprom.c:359: i2c_stop();
      003751 12 3E 00         [24] 1799 	lcall	_i2c_stop
                                   1800 ;	8051_i2c_eeprom.c:360: return 0;
      003754 90 00 00         [24] 1801 	mov	dptr,#0x0000
      003757 22               [24] 1802 	ret
      003758                       1803 00104$:
                                   1804 ;	8051_i2c_eeprom.c:364: if(!i2c_write(data)) {
      003758 90 04 0F         [24] 1805 	mov	dptr,#_eeprom_write_PARM_2
      00375B E0               [24] 1806 	movx	a,@dptr
      00375C FD               [12] 1807 	mov	r5,a
      00375D F5 82            [12] 1808 	mov	dpl,a
      00375F C0 07            [24] 1809 	push	ar7
      003761 C0 06            [24] 1810 	push	ar6
      003763 C0 05            [24] 1811 	push	ar5
      003765 12 39 30         [24] 1812 	lcall	_i2c_write
      003768 E5 82            [12] 1813 	mov	a,dpl
      00376A 85 83 F0         [24] 1814 	mov	b,dph
      00376D D0 05            [24] 1815 	pop	ar5
      00376F D0 06            [24] 1816 	pop	ar6
      003771 D0 07            [24] 1817 	pop	ar7
      003773 45 F0            [12] 1818 	orl	a,b
      003775 70 1C            [24] 1819 	jnz	00106$
                                   1820 ;	8051_i2c_eeprom.c:365: printf("Error: No ACK for data\n\r");
      003777 74 05            [12] 1821 	mov	a,#___str_35
      003779 C0 E0            [24] 1822 	push	acc
      00377B 74 54            [12] 1823 	mov	a,#(___str_35 >> 8)
      00377D C0 E0            [24] 1824 	push	acc
      00377F 74 80            [12] 1825 	mov	a,#0x80
      003781 C0 E0            [24] 1826 	push	acc
      003783 12 3F 56         [24] 1827 	lcall	_printf
      003786 15 81            [12] 1828 	dec	sp
      003788 15 81            [12] 1829 	dec	sp
      00378A 15 81            [12] 1830 	dec	sp
                                   1831 ;	8051_i2c_eeprom.c:366: i2c_stop();
      00378C 12 3E 00         [24] 1832 	lcall	_i2c_stop
                                   1833 ;	8051_i2c_eeprom.c:367: return 0;
      00378F 90 00 00         [24] 1834 	mov	dptr,#0x0000
      003792 22               [24] 1835 	ret
      003793                       1836 00106$:
                                   1837 ;	8051_i2c_eeprom.c:370: i2c_stop();
      003793 C0 07            [24] 1838 	push	ar7
      003795 C0 06            [24] 1839 	push	ar6
      003797 C0 05            [24] 1840 	push	ar5
      003799 12 3E 00         [24] 1841 	lcall	_i2c_stop
      00379C D0 05            [24] 1842 	pop	ar5
      00379E D0 06            [24] 1843 	pop	ar6
      0037A0 D0 07            [24] 1844 	pop	ar7
                                   1845 ;	8051_i2c_eeprom.c:372: for(int i = 0; i<10; i++)
      0037A2 7B 00            [12] 1846 	mov	r3,#0x00
      0037A4 7C 00            [12] 1847 	mov	r4,#0x00
      0037A6                       1848 00109$:
      0037A6 C3               [12] 1849 	clr	c
      0037A7 EB               [12] 1850 	mov	a,r3
      0037A8 94 0A            [12] 1851 	subb	a,#0x0a
      0037AA EC               [12] 1852 	mov	a,r4
      0037AB 64 80            [12] 1853 	xrl	a,#0x80
      0037AD 94 80            [12] 1854 	subb	a,#0x80
      0037AF 50 1E            [24] 1855 	jnc	00107$
                                   1856 ;	8051_i2c_eeprom.c:374: i2c_delay();
      0037B1 C0 07            [24] 1857 	push	ar7
      0037B3 C0 06            [24] 1858 	push	ar6
      0037B5 C0 05            [24] 1859 	push	ar5
      0037B7 C0 04            [24] 1860 	push	ar4
      0037B9 C0 03            [24] 1861 	push	ar3
      0037BB 12 3E 39         [24] 1862 	lcall	_i2c_delay
      0037BE D0 03            [24] 1863 	pop	ar3
      0037C0 D0 04            [24] 1864 	pop	ar4
      0037C2 D0 05            [24] 1865 	pop	ar5
      0037C4 D0 06            [24] 1866 	pop	ar6
      0037C6 D0 07            [24] 1867 	pop	ar7
                                   1868 ;	8051_i2c_eeprom.c:372: for(int i = 0; i<10; i++)
      0037C8 0B               [12] 1869 	inc	r3
      0037C9 BB 00 DA         [24] 1870 	cjne	r3,#0x00,00109$
      0037CC 0C               [12] 1871 	inc	r4
      0037CD 80 D7            [24] 1872 	sjmp	00109$
      0037CF                       1873 00107$:
                                   1874 ;	8051_i2c_eeprom.c:377: printf("| Writing at Address 0x%03X Data 0x%02X          |\n\r", address, data);
      0037CF 7C 00            [12] 1875 	mov	r4,#0x00
      0037D1 C0 05            [24] 1876 	push	ar5
      0037D3 C0 04            [24] 1877 	push	ar4
      0037D5 C0 06            [24] 1878 	push	ar6
      0037D7 C0 07            [24] 1879 	push	ar7
      0037D9 74 1E            [12] 1880 	mov	a,#___str_36
      0037DB C0 E0            [24] 1881 	push	acc
      0037DD 74 54            [12] 1882 	mov	a,#(___str_36 >> 8)
      0037DF C0 E0            [24] 1883 	push	acc
      0037E1 74 80            [12] 1884 	mov	a,#0x80
      0037E3 C0 E0            [24] 1885 	push	acc
      0037E5 12 3F 56         [24] 1886 	lcall	_printf
      0037E8 E5 81            [12] 1887 	mov	a,sp
      0037EA 24 F9            [12] 1888 	add	a,#0xf9
      0037EC F5 81            [12] 1889 	mov	sp,a
                                   1890 ;	8051_i2c_eeprom.c:378: printf("│ Write successful!                             │\n\r");
      0037EE 74 53            [12] 1891 	mov	a,#___str_37
      0037F0 C0 E0            [24] 1892 	push	acc
      0037F2 74 54            [12] 1893 	mov	a,#(___str_37 >> 8)
      0037F4 C0 E0            [24] 1894 	push	acc
      0037F6 74 80            [12] 1895 	mov	a,#0x80
      0037F8 C0 E0            [24] 1896 	push	acc
      0037FA 12 3F 56         [24] 1897 	lcall	_printf
      0037FD 15 81            [12] 1898 	dec	sp
      0037FF 15 81            [12] 1899 	dec	sp
      003801 15 81            [12] 1900 	dec	sp
                                   1901 ;	8051_i2c_eeprom.c:379: printf("└───────────────────────────────────────────────┘\n\r");
      003803 74 8B            [12] 1902 	mov	a,#___str_38
      003805 C0 E0            [24] 1903 	push	acc
      003807 74 54            [12] 1904 	mov	a,#(___str_38 >> 8)
      003809 C0 E0            [24] 1905 	push	acc
      00380B 74 80            [12] 1906 	mov	a,#0x80
      00380D C0 E0            [24] 1907 	push	acc
      00380F 12 3F 56         [24] 1908 	lcall	_printf
      003812 15 81            [12] 1909 	dec	sp
      003814 15 81            [12] 1910 	dec	sp
      003816 15 81            [12] 1911 	dec	sp
                                   1912 ;	8051_i2c_eeprom.c:380: return 1;  // Success
      003818 90 00 01         [24] 1913 	mov	dptr,#0x0001
                                   1914 ;	8051_i2c_eeprom.c:390: }
      00381B 22               [24] 1915 	ret
                                   1916 ;------------------------------------------------------------
                                   1917 ;Allocation info for local variables in function 'eeprom_read'
                                   1918 ;------------------------------------------------------------
                                   1919 ;address                   Allocated with name '_eeprom_read_address_65536_93'
                                   1920 ;result                    Allocated with name '_eeprom_read_result_65536_94'
                                   1921 ;------------------------------------------------------------
                                   1922 ;	8051_i2c_eeprom.c:406: int eeprom_read(unsigned int address)
                                   1923 ;	-----------------------------------------
                                   1924 ;	 function eeprom_read
                                   1925 ;	-----------------------------------------
      00381C                       1926 _eeprom_read:
      00381C AF 83            [24] 1927 	mov	r7,dph
      00381E E5 82            [12] 1928 	mov	a,dpl
      003820 90 04 12         [24] 1929 	mov	dptr,#_eeprom_read_address_65536_93
      003823 F0               [24] 1930 	movx	@dptr,a
      003824 EF               [12] 1931 	mov	a,r7
      003825 A3               [24] 1932 	inc	dptr
      003826 F0               [24] 1933 	movx	@dptr,a
                                   1934 ;	8051_i2c_eeprom.c:412: i2c_start();
      003827 12 3A 1D         [24] 1935 	lcall	_i2c_start
                                   1936 ;	8051_i2c_eeprom.c:415: if(!i2c_write(EEPROM_ID | WRITE)) {
      00382A 75 82 A0         [24] 1937 	mov	dpl,#0xa0
      00382D 12 39 30         [24] 1938 	lcall	_i2c_write
      003830 E5 82            [12] 1939 	mov	a,dpl
      003832 85 83 F0         [24] 1940 	mov	b,dph
      003835 45 F0            [12] 1941 	orl	a,b
      003837 70 1C            [24] 1942 	jnz	00102$
                                   1943 ;	8051_i2c_eeprom.c:416: printf("Error: No ACK for device address (write mode)\n\r");
      003839 74 21            [12] 1944 	mov	a,#___str_39
      00383B C0 E0            [24] 1945 	push	acc
      00383D 74 55            [12] 1946 	mov	a,#(___str_39 >> 8)
      00383F C0 E0            [24] 1947 	push	acc
      003841 74 80            [12] 1948 	mov	a,#0x80
      003843 C0 E0            [24] 1949 	push	acc
      003845 12 3F 56         [24] 1950 	lcall	_printf
      003848 15 81            [12] 1951 	dec	sp
      00384A 15 81            [12] 1952 	dec	sp
      00384C 15 81            [12] 1953 	dec	sp
                                   1954 ;	8051_i2c_eeprom.c:417: i2c_stop();
      00384E 12 3E 00         [24] 1955 	lcall	_i2c_stop
                                   1956 ;	8051_i2c_eeprom.c:418: return -1;
      003851 90 FF FF         [24] 1957 	mov	dptr,#0xffff
      003854 22               [24] 1958 	ret
      003855                       1959 00102$:
                                   1960 ;	8051_i2c_eeprom.c:422: if(!i2c_write((unsigned char)address)) {
      003855 90 04 12         [24] 1961 	mov	dptr,#_eeprom_read_address_65536_93
      003858 E0               [24] 1962 	movx	a,@dptr
      003859 FE               [12] 1963 	mov	r6,a
      00385A A3               [24] 1964 	inc	dptr
      00385B E0               [24] 1965 	movx	a,@dptr
      00385C FF               [12] 1966 	mov	r7,a
      00385D 8E 05            [24] 1967 	mov	ar5,r6
      00385F 8D 82            [24] 1968 	mov	dpl,r5
      003861 C0 07            [24] 1969 	push	ar7
      003863 C0 06            [24] 1970 	push	ar6
      003865 12 39 30         [24] 1971 	lcall	_i2c_write
      003868 E5 82            [12] 1972 	mov	a,dpl
      00386A 85 83 F0         [24] 1973 	mov	b,dph
      00386D D0 06            [24] 1974 	pop	ar6
      00386F D0 07            [24] 1975 	pop	ar7
      003871 45 F0            [12] 1976 	orl	a,b
      003873 70 1C            [24] 1977 	jnz	00104$
                                   1978 ;	8051_i2c_eeprom.c:423: printf("Error: No ACK for memory address\n\r");
      003875 74 E2            [12] 1979 	mov	a,#___str_34
      003877 C0 E0            [24] 1980 	push	acc
      003879 74 53            [12] 1981 	mov	a,#(___str_34 >> 8)
      00387B C0 E0            [24] 1982 	push	acc
      00387D 74 80            [12] 1983 	mov	a,#0x80
      00387F C0 E0            [24] 1984 	push	acc
      003881 12 3F 56         [24] 1985 	lcall	_printf
      003884 15 81            [12] 1986 	dec	sp
      003886 15 81            [12] 1987 	dec	sp
      003888 15 81            [12] 1988 	dec	sp
                                   1989 ;	8051_i2c_eeprom.c:424: i2c_stop();
      00388A 12 3E 00         [24] 1990 	lcall	_i2c_stop
                                   1991 ;	8051_i2c_eeprom.c:425: return -1;
      00388D 90 FF FF         [24] 1992 	mov	dptr,#0xffff
      003890 22               [24] 1993 	ret
      003891                       1994 00104$:
                                   1995 ;	8051_i2c_eeprom.c:429: i2c_start();
      003891 C0 07            [24] 1996 	push	ar7
      003893 C0 06            [24] 1997 	push	ar6
      003895 12 3A 1D         [24] 1998 	lcall	_i2c_start
                                   1999 ;	8051_i2c_eeprom.c:432: if(!i2c_write(EEPROM_ID | READ)) {
      003898 75 82 A1         [24] 2000 	mov	dpl,#0xa1
      00389B 12 39 30         [24] 2001 	lcall	_i2c_write
      00389E E5 82            [12] 2002 	mov	a,dpl
      0038A0 85 83 F0         [24] 2003 	mov	b,dph
      0038A3 D0 06            [24] 2004 	pop	ar6
      0038A5 D0 07            [24] 2005 	pop	ar7
      0038A7 45 F0            [12] 2006 	orl	a,b
      0038A9 70 1C            [24] 2007 	jnz	00106$
                                   2008 ;	8051_i2c_eeprom.c:433: printf("Error: No ACK for device address (read mode)\n\r");
      0038AB 74 51            [12] 2009 	mov	a,#___str_40
      0038AD C0 E0            [24] 2010 	push	acc
      0038AF 74 55            [12] 2011 	mov	a,#(___str_40 >> 8)
      0038B1 C0 E0            [24] 2012 	push	acc
      0038B3 74 80            [12] 2013 	mov	a,#0x80
      0038B5 C0 E0            [24] 2014 	push	acc
      0038B7 12 3F 56         [24] 2015 	lcall	_printf
      0038BA 15 81            [12] 2016 	dec	sp
      0038BC 15 81            [12] 2017 	dec	sp
      0038BE 15 81            [12] 2018 	dec	sp
                                   2019 ;	8051_i2c_eeprom.c:434: i2c_stop();
      0038C0 12 3E 00         [24] 2020 	lcall	_i2c_stop
                                   2021 ;	8051_i2c_eeprom.c:435: return -1;
      0038C3 90 FF FF         [24] 2022 	mov	dptr,#0xffff
      0038C6 22               [24] 2023 	ret
      0038C7                       2024 00106$:
                                   2025 ;	8051_i2c_eeprom.c:439: result = i2c_read(0);  // 0 means send NACK
      0038C7 90 00 00         [24] 2026 	mov	dptr,#0x0000
      0038CA C0 07            [24] 2027 	push	ar7
      0038CC C0 06            [24] 2028 	push	ar6
      0038CE 12 39 98         [24] 2029 	lcall	_i2c_read
      0038D1 AC 82            [24] 2030 	mov	r4,dpl
      0038D3 D0 06            [24] 2031 	pop	ar6
      0038D5 D0 07            [24] 2032 	pop	ar7
                                   2033 ;	8051_i2c_eeprom.c:441: printf("| 0x%03X : 0x%02X \n\r", address, result);
      0038D7 7D 00            [12] 2034 	mov	r5,#0x00
      0038D9 C0 05            [24] 2035 	push	ar5
      0038DB C0 04            [24] 2036 	push	ar4
      0038DD C0 04            [24] 2037 	push	ar4
      0038DF C0 05            [24] 2038 	push	ar5
      0038E1 C0 06            [24] 2039 	push	ar6
      0038E3 C0 07            [24] 2040 	push	ar7
      0038E5 74 80            [12] 2041 	mov	a,#___str_41
      0038E7 C0 E0            [24] 2042 	push	acc
      0038E9 74 55            [12] 2043 	mov	a,#(___str_41 >> 8)
      0038EB C0 E0            [24] 2044 	push	acc
      0038ED 74 80            [12] 2045 	mov	a,#0x80
      0038EF C0 E0            [24] 2046 	push	acc
      0038F1 12 3F 56         [24] 2047 	lcall	_printf
      0038F4 E5 81            [12] 2048 	mov	a,sp
      0038F6 24 F9            [12] 2049 	add	a,#0xf9
      0038F8 F5 81            [12] 2050 	mov	sp,a
                                   2051 ;	8051_i2c_eeprom.c:442: printf("│ Read successful!                 │\n\r");
      0038FA 74 95            [12] 2052 	mov	a,#___str_42
      0038FC C0 E0            [24] 2053 	push	acc
      0038FE 74 55            [12] 2054 	mov	a,#(___str_42 >> 8)
      003900 C0 E0            [24] 2055 	push	acc
      003902 74 80            [12] 2056 	mov	a,#0x80
      003904 C0 E0            [24] 2057 	push	acc
      003906 12 3F 56         [24] 2058 	lcall	_printf
      003909 15 81            [12] 2059 	dec	sp
      00390B 15 81            [12] 2060 	dec	sp
      00390D 15 81            [12] 2061 	dec	sp
                                   2062 ;	8051_i2c_eeprom.c:443: printf("└───────────────────────────────────────────────┘\n\r");
      00390F 74 8B            [12] 2063 	mov	a,#___str_38
      003911 C0 E0            [24] 2064 	push	acc
      003913 74 54            [12] 2065 	mov	a,#(___str_38 >> 8)
      003915 C0 E0            [24] 2066 	push	acc
      003917 74 80            [12] 2067 	mov	a,#0x80
      003919 C0 E0            [24] 2068 	push	acc
      00391B 12 3F 56         [24] 2069 	lcall	_printf
      00391E 15 81            [12] 2070 	dec	sp
      003920 15 81            [12] 2071 	dec	sp
      003922 15 81            [12] 2072 	dec	sp
                                   2073 ;	8051_i2c_eeprom.c:444: i2c_stop();
      003924 12 3E 00         [24] 2074 	lcall	_i2c_stop
      003927 D0 04            [24] 2075 	pop	ar4
      003929 D0 05            [24] 2076 	pop	ar5
                                   2077 ;	8051_i2c_eeprom.c:445: return result;
      00392B 8C 82            [24] 2078 	mov	dpl,r4
      00392D 8D 83            [24] 2079 	mov	dph,r5
                                   2080 ;	8051_i2c_eeprom.c:446: }
      00392F 22               [24] 2081 	ret
                                   2082 ;------------------------------------------------------------
                                   2083 ;Allocation info for local variables in function 'i2c_write'
                                   2084 ;------------------------------------------------------------
                                   2085 ;data                      Allocated with name '_i2c_write_data_65536_98'
                                   2086 ;i                         Allocated with name '_i2c_write_i_65536_99'
                                   2087 ;------------------------------------------------------------
                                   2088 ;	8051_i2c_eeprom.c:457: int i2c_write(unsigned char data)
                                   2089 ;	-----------------------------------------
                                   2090 ;	 function i2c_write
                                   2091 ;	-----------------------------------------
      003930                       2092 _i2c_write:
      003930 E5 82            [12] 2093 	mov	a,dpl
      003932 90 04 14         [24] 2094 	mov	dptr,#_i2c_write_data_65536_98
      003935 F0               [24] 2095 	movx	@dptr,a
                                   2096 ;	8051_i2c_eeprom.c:461: for(i=0;i<=7;i++)
      003936 7E 00            [12] 2097 	mov	r6,#0x00
      003938 7F 00            [12] 2098 	mov	r7,#0x00
      00393A                       2099 00104$:
                                   2100 ;	8051_i2c_eeprom.c:463: SDA = (data & 0x80) ? 1 : 0;    //msb first
      00393A 90 04 14         [24] 2101 	mov	dptr,#_i2c_write_data_65536_98
      00393D E0               [24] 2102 	movx	a,@dptr
      00393E FD               [12] 2103 	mov	r5,a
      00393F 23               [12] 2104 	rl	a
      003940 54 01            [12] 2105 	anl	a,#0x01
      003942 24 FF            [12] 2106 	add	a,#0xff
      003944 92 94            [24] 2107 	mov	_P1_4,c
                                   2108 ;	8051_i2c_eeprom.c:464: i2c_delay();        // Setup time for data
      003946 C0 07            [24] 2109 	push	ar7
      003948 C0 06            [24] 2110 	push	ar6
      00394A C0 05            [24] 2111 	push	ar5
      00394C 12 3E 39         [24] 2112 	lcall	_i2c_delay
                                   2113 ;	8051_i2c_eeprom.c:465: SCL=1;
                                   2114 ;	assignBit
      00394F D2 93            [12] 2115 	setb	_P1_3
                                   2116 ;	8051_i2c_eeprom.c:466: i2c_delay();        // Hold time for clock
      003951 12 3E 39         [24] 2117 	lcall	_i2c_delay
      003954 D0 05            [24] 2118 	pop	ar5
      003956 D0 06            [24] 2119 	pop	ar6
      003958 D0 07            [24] 2120 	pop	ar7
                                   2121 ;	8051_i2c_eeprom.c:467: SCL=0;
                                   2122 ;	assignBit
      00395A C2 93            [12] 2123 	clr	_P1_3
                                   2124 ;	8051_i2c_eeprom.c:468: data = data << 1;
      00395C ED               [12] 2125 	mov	a,r5
      00395D 2D               [12] 2126 	add	a,r5
      00395E 90 04 14         [24] 2127 	mov	dptr,#_i2c_write_data_65536_98
      003961 F0               [24] 2128 	movx	@dptr,a
                                   2129 ;	8051_i2c_eeprom.c:461: for(i=0;i<=7;i++)
      003962 0E               [12] 2130 	inc	r6
      003963 BE 00 01         [24] 2131 	cjne	r6,#0x00,00121$
      003966 0F               [12] 2132 	inc	r7
      003967                       2133 00121$:
      003967 C3               [12] 2134 	clr	c
      003968 74 07            [12] 2135 	mov	a,#0x07
      00396A 9E               [12] 2136 	subb	a,r6
      00396B E4               [12] 2137 	clr	a
      00396C 9F               [12] 2138 	subb	a,r7
      00396D 50 CB            [24] 2139 	jnc	00104$
                                   2140 ;	8051_i2c_eeprom.c:472: SDA = 1;            // Release SDA for slave
                                   2141 ;	assignBit
      00396F D2 94            [12] 2142 	setb	_P1_4
                                   2143 ;	8051_i2c_eeprom.c:473: SCL = 1;            // 9th clock pulse for ACK
                                   2144 ;	assignBit
      003971 D2 93            [12] 2145 	setb	_P1_3
                                   2146 ;	8051_i2c_eeprom.c:474: i2c_delay();
      003973 12 3E 39         [24] 2147 	lcall	_i2c_delay
                                   2148 ;	8051_i2c_eeprom.c:475: if(SDA == 1)        // If SDA is still high, no ACK received
      003976 30 94 19         [24] 2149 	jnb	_P1_4,00103$
                                   2150 ;	8051_i2c_eeprom.c:478: printf("ACK DID NOT ARRIVE\n\r");
      003979 74 C0            [12] 2151 	mov	a,#___str_43
      00397B C0 E0            [24] 2152 	push	acc
      00397D 74 55            [12] 2153 	mov	a,#(___str_43 >> 8)
      00397F C0 E0            [24] 2154 	push	acc
      003981 74 80            [12] 2155 	mov	a,#0x80
      003983 C0 E0            [24] 2156 	push	acc
      003985 12 3F 56         [24] 2157 	lcall	_printf
      003988 15 81            [12] 2158 	dec	sp
      00398A 15 81            [12] 2159 	dec	sp
      00398C 15 81            [12] 2160 	dec	sp
                                   2161 ;	8051_i2c_eeprom.c:479: return 0;       // Error
      00398E 90 00 00         [24] 2162 	mov	dptr,#0x0000
      003991 22               [24] 2163 	ret
      003992                       2164 00103$:
                                   2165 ;	8051_i2c_eeprom.c:481: SCL = 0;
                                   2166 ;	assignBit
      003992 C2 93            [12] 2167 	clr	_P1_3
                                   2168 ;	8051_i2c_eeprom.c:483: return 1;           // Success
      003994 90 00 01         [24] 2169 	mov	dptr,#0x0001
                                   2170 ;	8051_i2c_eeprom.c:485: }
      003997 22               [24] 2171 	ret
                                   2172 ;------------------------------------------------------------
                                   2173 ;Allocation info for local variables in function 'i2c_read'
                                   2174 ;------------------------------------------------------------
                                   2175 ;ACK                       Allocated with name '_i2c_read_ACK_65536_103'
                                   2176 ;buff                      Allocated with name '_i2c_read_buff_65536_104'
                                   2177 ;i                         Allocated with name '_i2c_read_i_131072_105'
                                   2178 ;------------------------------------------------------------
                                   2179 ;	8051_i2c_eeprom.c:495: int i2c_read(int ACK)
                                   2180 ;	-----------------------------------------
                                   2181 ;	 function i2c_read
                                   2182 ;	-----------------------------------------
      003998                       2183 _i2c_read:
      003998 AF 83            [24] 2184 	mov	r7,dph
      00399A E5 82            [12] 2185 	mov	a,dpl
      00399C 90 04 15         [24] 2186 	mov	dptr,#_i2c_read_ACK_65536_103
      00399F F0               [24] 2187 	movx	@dptr,a
      0039A0 EF               [12] 2188 	mov	a,r7
      0039A1 A3               [24] 2189 	inc	dptr
      0039A2 F0               [24] 2190 	movx	@dptr,a
                                   2191 ;	8051_i2c_eeprom.c:497: unsigned char buff=0;
      0039A3 90 04 17         [24] 2192 	mov	dptr,#_i2c_read_buff_65536_104
      0039A6 E4               [12] 2193 	clr	a
      0039A7 F0               [24] 2194 	movx	@dptr,a
                                   2195 ;	8051_i2c_eeprom.c:498: SCL = 0;
                                   2196 ;	assignBit
      0039A8 C2 93            [12] 2197 	clr	_P1_3
                                   2198 ;	8051_i2c_eeprom.c:499: for(int i=0;i<8;i++)
      0039AA 7E 00            [12] 2199 	mov	r6,#0x00
      0039AC 7F 00            [12] 2200 	mov	r7,#0x00
      0039AE                       2201 00103$:
      0039AE C3               [12] 2202 	clr	c
      0039AF EE               [12] 2203 	mov	a,r6
      0039B0 94 08            [12] 2204 	subb	a,#0x08
      0039B2 EF               [12] 2205 	mov	a,r7
      0039B3 64 80            [12] 2206 	xrl	a,#0x80
      0039B5 94 80            [12] 2207 	subb	a,#0x80
      0039B7 50 40            [24] 2208 	jnc	00101$
                                   2209 ;	8051_i2c_eeprom.c:501: SCL = 1;
                                   2210 ;	assignBit
      0039B9 D2 93            [12] 2211 	setb	_P1_3
                                   2212 ;	8051_i2c_eeprom.c:502: i2c_delay();
      0039BB C0 07            [24] 2213 	push	ar7
      0039BD C0 06            [24] 2214 	push	ar6
      0039BF 12 3E 39         [24] 2215 	lcall	_i2c_delay
      0039C2 D0 06            [24] 2216 	pop	ar6
      0039C4 D0 07            [24] 2217 	pop	ar7
                                   2218 ;	8051_i2c_eeprom.c:503: buff |= (SDA << (7 - i));
      0039C6 A2 94            [12] 2219 	mov	c,_P1_4
      0039C8 E4               [12] 2220 	clr	a
      0039C9 33               [12] 2221 	rlc	a
      0039CA FD               [12] 2222 	mov	r5,a
      0039CB 8E 04            [24] 2223 	mov	ar4,r6
      0039CD 74 07            [12] 2224 	mov	a,#0x07
      0039CF C3               [12] 2225 	clr	c
      0039D0 9C               [12] 2226 	subb	a,r4
      0039D1 FC               [12] 2227 	mov	r4,a
      0039D2 8C F0            [24] 2228 	mov	b,r4
      0039D4 05 F0            [12] 2229 	inc	b
      0039D6 ED               [12] 2230 	mov	a,r5
      0039D7 80 02            [24] 2231 	sjmp	00119$
      0039D9                       2232 00117$:
      0039D9 25 E0            [12] 2233 	add	a,acc
      0039DB                       2234 00119$:
      0039DB D5 F0 FB         [24] 2235 	djnz	b,00117$
      0039DE FC               [12] 2236 	mov	r4,a
      0039DF 90 04 17         [24] 2237 	mov	dptr,#_i2c_read_buff_65536_104
      0039E2 E0               [24] 2238 	movx	a,@dptr
      0039E3 4C               [12] 2239 	orl	a,r4
      0039E4 F0               [24] 2240 	movx	@dptr,a
                                   2241 ;	8051_i2c_eeprom.c:504: i2c_delay();
      0039E5 C0 07            [24] 2242 	push	ar7
      0039E7 C0 06            [24] 2243 	push	ar6
      0039E9 12 3E 39         [24] 2244 	lcall	_i2c_delay
      0039EC D0 06            [24] 2245 	pop	ar6
      0039EE D0 07            [24] 2246 	pop	ar7
                                   2247 ;	8051_i2c_eeprom.c:505: SCL=0;
                                   2248 ;	assignBit
      0039F0 C2 93            [12] 2249 	clr	_P1_3
                                   2250 ;	8051_i2c_eeprom.c:499: for(int i=0;i<8;i++)
      0039F2 0E               [12] 2251 	inc	r6
      0039F3 BE 00 B8         [24] 2252 	cjne	r6,#0x00,00103$
      0039F6 0F               [12] 2253 	inc	r7
      0039F7 80 B5            [24] 2254 	sjmp	00103$
      0039F9                       2255 00101$:
                                   2256 ;	8051_i2c_eeprom.c:509: SDA = !ACK;         // ACK = 0, NACK = 1
      0039F9 90 04 15         [24] 2257 	mov	dptr,#_i2c_read_ACK_65536_103
      0039FC E0               [24] 2258 	movx	a,@dptr
      0039FD FE               [12] 2259 	mov	r6,a
      0039FE A3               [24] 2260 	inc	dptr
      0039FF E0               [24] 2261 	movx	a,@dptr
      003A00 4E               [12] 2262 	orl	a,r6
      003A01 B4 01 00         [24] 2263 	cjne	a,#0x01,00121$
      003A04                       2264 00121$:
      003A04 E4               [12] 2265 	clr	a
      003A05 33               [12] 2266 	rlc	a
      003A06 24 FF            [12] 2267 	add	a,#0xff
      003A08 92 94            [24] 2268 	mov	_P1_4,c
                                   2269 ;	8051_i2c_eeprom.c:510: SCL = 1;
                                   2270 ;	assignBit
      003A0A D2 93            [12] 2271 	setb	_P1_3
                                   2272 ;	8051_i2c_eeprom.c:511: i2c_delay();
      003A0C 12 3E 39         [24] 2273 	lcall	_i2c_delay
                                   2274 ;	8051_i2c_eeprom.c:512: SCL = 0;
                                   2275 ;	assignBit
      003A0F C2 93            [12] 2276 	clr	_P1_3
                                   2277 ;	8051_i2c_eeprom.c:514: return buff;
      003A11 90 04 17         [24] 2278 	mov	dptr,#_i2c_read_buff_65536_104
      003A14 E0               [24] 2279 	movx	a,@dptr
      003A15 FF               [12] 2280 	mov	r7,a
      003A16 7E 00            [12] 2281 	mov	r6,#0x00
      003A18 8F 82            [24] 2282 	mov	dpl,r7
      003A1A 8E 83            [24] 2283 	mov	dph,r6
                                   2284 ;	8051_i2c_eeprom.c:515: }
      003A1C 22               [24] 2285 	ret
                                   2286 ;------------------------------------------------------------
                                   2287 ;Allocation info for local variables in function 'i2c_start'
                                   2288 ;------------------------------------------------------------
                                   2289 ;	8051_i2c_eeprom.c:522: void i2c_start(void)
                                   2290 ;	-----------------------------------------
                                   2291 ;	 function i2c_start
                                   2292 ;	-----------------------------------------
      003A1D                       2293 _i2c_start:
                                   2294 ;	8051_i2c_eeprom.c:524: i2c_delay();
      003A1D 12 3E 39         [24] 2295 	lcall	_i2c_delay
                                   2296 ;	8051_i2c_eeprom.c:525: SDA = 1;
                                   2297 ;	assignBit
      003A20 D2 94            [12] 2298 	setb	_P1_4
                                   2299 ;	8051_i2c_eeprom.c:526: i2c_delay();
      003A22 12 3E 39         [24] 2300 	lcall	_i2c_delay
                                   2301 ;	8051_i2c_eeprom.c:527: SCL = 1;
                                   2302 ;	assignBit
      003A25 D2 93            [12] 2303 	setb	_P1_3
                                   2304 ;	8051_i2c_eeprom.c:528: i2c_delay();
      003A27 12 3E 39         [24] 2305 	lcall	_i2c_delay
                                   2306 ;	8051_i2c_eeprom.c:529: SDA = 0;
                                   2307 ;	assignBit
      003A2A C2 94            [12] 2308 	clr	_P1_4
                                   2309 ;	8051_i2c_eeprom.c:530: i2c_delay();
      003A2C 12 3E 39         [24] 2310 	lcall	_i2c_delay
                                   2311 ;	8051_i2c_eeprom.c:531: SCL = 0;
                                   2312 ;	assignBit
      003A2F C2 93            [12] 2313 	clr	_P1_3
                                   2314 ;	8051_i2c_eeprom.c:532: }
      003A31 22               [24] 2315 	ret
                                   2316 ;------------------------------------------------------------
                                   2317 ;Allocation info for local variables in function 'EEPROM_hexdump'
                                   2318 ;------------------------------------------------------------
                                   2319 ;end_address               Allocated with name '_EEPROM_hexdump_PARM_2'
                                   2320 ;start_address             Allocated with name '_EEPROM_hexdump_start_address_65536_109'
                                   2321 ;num_bytes                 Allocated with name '_EEPROM_hexdump_num_bytes_65537_111'
                                   2322 ;current_address           Allocated with name '_EEPROM_hexdump_current_address_65537_111'
                                   2323 ;i                         Allocated with name '_EEPROM_hexdump_i_196609_113'
                                   2324 ;data                      Allocated with name '_EEPROM_hexdump_data_327682_119'
                                   2325 ;i                         Allocated with name '_EEPROM_hexdump_i_196609_121'
                                   2326 ;data                      Allocated with name '_EEPROM_hexdump_data_327682_124'
                                   2327 ;------------------------------------------------------------
                                   2328 ;	8051_i2c_eeprom.c:541: int EEPROM_hexdump(uint16_t start_address, uint16_t end_address) {
                                   2329 ;	-----------------------------------------
                                   2330 ;	 function EEPROM_hexdump
                                   2331 ;	-----------------------------------------
      003A32                       2332 _EEPROM_hexdump:
      003A32 AF 83            [24] 2333 	mov	r7,dph
      003A34 E5 82            [12] 2334 	mov	a,dpl
      003A36 90 04 1A         [24] 2335 	mov	dptr,#_EEPROM_hexdump_start_address_65536_109
      003A39 F0               [24] 2336 	movx	@dptr,a
      003A3A EF               [12] 2337 	mov	a,r7
      003A3B A3               [24] 2338 	inc	dptr
      003A3C F0               [24] 2339 	movx	@dptr,a
                                   2340 ;	8051_i2c_eeprom.c:543: printf("\r\n----------------------------------------------------------------\r\n");
      003A3D 74 D5            [12] 2341 	mov	a,#___str_44
      003A3F C0 E0            [24] 2342 	push	acc
      003A41 74 55            [12] 2343 	mov	a,#(___str_44 >> 8)
      003A43 C0 E0            [24] 2344 	push	acc
      003A45 74 80            [12] 2345 	mov	a,#0x80
      003A47 C0 E0            [24] 2346 	push	acc
      003A49 12 3F 56         [24] 2347 	lcall	_printf
      003A4C 15 81            [12] 2348 	dec	sp
      003A4E 15 81            [12] 2349 	dec	sp
      003A50 15 81            [12] 2350 	dec	sp
                                   2351 ;	8051_i2c_eeprom.c:544: printf("                    EEPROM Hex Dump                               \r\n");
      003A52 74 1A            [12] 2352 	mov	a,#___str_45
      003A54 C0 E0            [24] 2353 	push	acc
      003A56 74 56            [12] 2354 	mov	a,#(___str_45 >> 8)
      003A58 C0 E0            [24] 2355 	push	acc
      003A5A 74 80            [12] 2356 	mov	a,#0x80
      003A5C C0 E0            [24] 2357 	push	acc
      003A5E 12 3F 56         [24] 2358 	lcall	_printf
      003A61 15 81            [12] 2359 	dec	sp
      003A63 15 81            [12] 2360 	dec	sp
      003A65 15 81            [12] 2361 	dec	sp
                                   2362 ;	8051_i2c_eeprom.c:545: printf("----------------------------------------------------------------\r\n");
      003A67 74 5F            [12] 2363 	mov	a,#___str_46
      003A69 C0 E0            [24] 2364 	push	acc
      003A6B 74 56            [12] 2365 	mov	a,#(___str_46 >> 8)
      003A6D C0 E0            [24] 2366 	push	acc
      003A6F 74 80            [12] 2367 	mov	a,#0x80
      003A71 C0 E0            [24] 2368 	push	acc
      003A73 12 3F 56         [24] 2369 	lcall	_printf
      003A76 15 81            [12] 2370 	dec	sp
      003A78 15 81            [12] 2371 	dec	sp
      003A7A 15 81            [12] 2372 	dec	sp
                                   2373 ;	8051_i2c_eeprom.c:546: printf("     0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F\r\n");
      003A7C 74 A2            [12] 2374 	mov	a,#___str_47
      003A7E C0 E0            [24] 2375 	push	acc
      003A80 74 56            [12] 2376 	mov	a,#(___str_47 >> 8)
      003A82 C0 E0            [24] 2377 	push	acc
      003A84 74 80            [12] 2378 	mov	a,#0x80
      003A86 C0 E0            [24] 2379 	push	acc
      003A88 12 3F 56         [24] 2380 	lcall	_printf
      003A8B 15 81            [12] 2381 	dec	sp
      003A8D 15 81            [12] 2382 	dec	sp
      003A8F 15 81            [12] 2383 	dec	sp
                                   2384 ;	8051_i2c_eeprom.c:550: uint16_t current_address = start_address;
      003A91 90 04 1A         [24] 2385 	mov	dptr,#_EEPROM_hexdump_start_address_65536_109
      003A94 E0               [24] 2386 	movx	a,@dptr
      003A95 FE               [12] 2387 	mov	r6,a
      003A96 A3               [24] 2388 	inc	dptr
      003A97 E0               [24] 2389 	movx	a,@dptr
      003A98 FF               [12] 2390 	mov	r7,a
      003A99 90 04 1C         [24] 2391 	mov	dptr,#_EEPROM_hexdump_current_address_65537_111
      003A9C EE               [12] 2392 	mov	a,r6
      003A9D F0               [24] 2393 	movx	@dptr,a
      003A9E EF               [12] 2394 	mov	a,r7
      003A9F A3               [24] 2395 	inc	dptr
      003AA0 F0               [24] 2396 	movx	@dptr,a
                                   2397 ;	8051_i2c_eeprom.c:553: while (current_address <= end_address) {
      003AA1 90 04 18         [24] 2398 	mov	dptr,#_EEPROM_hexdump_PARM_2
      003AA4 E0               [24] 2399 	movx	a,@dptr
      003AA5 FE               [12] 2400 	mov	r6,a
      003AA6 A3               [24] 2401 	inc	dptr
      003AA7 E0               [24] 2402 	movx	a,@dptr
      003AA8 FF               [12] 2403 	mov	r7,a
      003AA9                       2404 00119$:
      003AA9 90 04 1C         [24] 2405 	mov	dptr,#_EEPROM_hexdump_current_address_65537_111
      003AAC E0               [24] 2406 	movx	a,@dptr
      003AAD FC               [12] 2407 	mov	r4,a
      003AAE A3               [24] 2408 	inc	dptr
      003AAF E0               [24] 2409 	movx	a,@dptr
      003AB0 FD               [12] 2410 	mov	r5,a
      003AB1 C3               [12] 2411 	clr	c
      003AB2 EE               [12] 2412 	mov	a,r6
      003AB3 9C               [12] 2413 	subb	a,r4
      003AB4 EF               [12] 2414 	mov	a,r7
      003AB5 9D               [12] 2415 	subb	a,r5
      003AB6 50 03            [24] 2416 	jnc	00183$
      003AB8 02 3D 48         [24] 2417 	ljmp	00121$
      003ABB                       2418 00183$:
                                   2419 ;	8051_i2c_eeprom.c:555: printf("%03X: ", current_address & 0xFFF0);
      003ABB 53 04 F0         [24] 2420 	anl	ar4,#0xf0
      003ABE C0 07            [24] 2421 	push	ar7
      003AC0 C0 06            [24] 2422 	push	ar6
      003AC2 C0 04            [24] 2423 	push	ar4
      003AC4 C0 05            [24] 2424 	push	ar5
      003AC6 74 D8            [12] 2425 	mov	a,#___str_48
      003AC8 C0 E0            [24] 2426 	push	acc
      003ACA 74 56            [12] 2427 	mov	a,#(___str_48 >> 8)
      003ACC C0 E0            [24] 2428 	push	acc
      003ACE 74 80            [12] 2429 	mov	a,#0x80
      003AD0 C0 E0            [24] 2430 	push	acc
      003AD2 12 3F 56         [24] 2431 	lcall	_printf
      003AD5 E5 81            [12] 2432 	mov	a,sp
      003AD7 24 FB            [12] 2433 	add	a,#0xfb
      003AD9 F5 81            [12] 2434 	mov	sp,a
      003ADB D0 06            [24] 2435 	pop	ar6
      003ADD D0 07            [24] 2436 	pop	ar7
                                   2437 ;	8051_i2c_eeprom.c:558: for (uint8_t i = 0; i < 16; i++) {
      003ADF 7D 00            [12] 2438 	mov	r5,#0x00
      003AE1                       2439 00123$:
      003AE1 BD 10 00         [24] 2440 	cjne	r5,#0x10,00184$
      003AE4                       2441 00184$:
      003AE4 40 03            [24] 2442 	jc	00185$
      003AE6 02 3C 1D         [24] 2443 	ljmp	00110$
      003AE9                       2444 00185$:
                                   2445 ;	8051_i2c_eeprom.c:559: if (current_address + i <= end_address) {
      003AE9 8D 03            [24] 2446 	mov	ar3,r5
      003AEB 7C 00            [12] 2447 	mov	r4,#0x00
      003AED 90 04 1C         [24] 2448 	mov	dptr,#_EEPROM_hexdump_current_address_65537_111
      003AF0 E0               [24] 2449 	movx	a,@dptr
      003AF1 F9               [12] 2450 	mov	r1,a
      003AF2 A3               [24] 2451 	inc	dptr
      003AF3 E0               [24] 2452 	movx	a,@dptr
      003AF4 FA               [12] 2453 	mov	r2,a
      003AF5 C0 05            [24] 2454 	push	ar5
      003AF7 89 00            [24] 2455 	mov	ar0,r1
      003AF9 8A 05            [24] 2456 	mov	ar5,r2
      003AFB EB               [12] 2457 	mov	a,r3
      003AFC 28               [12] 2458 	add	a,r0
      003AFD F8               [12] 2459 	mov	r0,a
      003AFE EC               [12] 2460 	mov	a,r4
      003AFF 3D               [12] 2461 	addc	a,r5
      003B00 FD               [12] 2462 	mov	r5,a
      003B01 C3               [12] 2463 	clr	c
      003B02 EE               [12] 2464 	mov	a,r6
      003B03 98               [12] 2465 	subb	a,r0
      003B04 EF               [12] 2466 	mov	a,r7
      003B05 9D               [12] 2467 	subb	a,r5
      003B06 D0 05            [24] 2468 	pop	ar5
      003B08 50 03            [24] 2469 	jnc	00186$
      003B0A 02 3B F8         [24] 2470 	ljmp	00108$
      003B0D                       2471 00186$:
                                   2472 ;	8051_i2c_eeprom.c:561: i2c_start();
      003B0D C0 07            [24] 2473 	push	ar7
      003B0F C0 06            [24] 2474 	push	ar6
      003B11 C0 05            [24] 2475 	push	ar5
      003B13 C0 02            [24] 2476 	push	ar2
      003B15 C0 01            [24] 2477 	push	ar1
      003B17 12 3A 1D         [24] 2478 	lcall	_i2c_start
                                   2479 ;	8051_i2c_eeprom.c:564: if (!i2c_write(EEPROM_ID | WRITE)) {
      003B1A 75 82 A0         [24] 2480 	mov	dpl,#0xa0
      003B1D 12 39 30         [24] 2481 	lcall	_i2c_write
      003B20 E5 82            [12] 2482 	mov	a,dpl
      003B22 85 83 F0         [24] 2483 	mov	b,dph
      003B25 D0 01            [24] 2484 	pop	ar1
      003B27 D0 02            [24] 2485 	pop	ar2
      003B29 D0 05            [24] 2486 	pop	ar5
      003B2B D0 06            [24] 2487 	pop	ar6
      003B2D D0 07            [24] 2488 	pop	ar7
      003B2F 45 F0            [12] 2489 	orl	a,b
      003B31 70 1C            [24] 2490 	jnz	00102$
                                   2491 ;	8051_i2c_eeprom.c:565: printf("Error: Device not responding\r\n");
      003B33 74 DF            [12] 2492 	mov	a,#___str_49
      003B35 C0 E0            [24] 2493 	push	acc
      003B37 74 56            [12] 2494 	mov	a,#(___str_49 >> 8)
      003B39 C0 E0            [24] 2495 	push	acc
      003B3B 74 80            [12] 2496 	mov	a,#0x80
      003B3D C0 E0            [24] 2497 	push	acc
      003B3F 12 3F 56         [24] 2498 	lcall	_printf
      003B42 15 81            [12] 2499 	dec	sp
      003B44 15 81            [12] 2500 	dec	sp
      003B46 15 81            [12] 2501 	dec	sp
                                   2502 ;	8051_i2c_eeprom.c:566: i2c_stop();
      003B48 12 3E 00         [24] 2503 	lcall	_i2c_stop
                                   2504 ;	8051_i2c_eeprom.c:567: return 0;
      003B4B 90 00 00         [24] 2505 	mov	dptr,#0x0000
      003B4E 22               [24] 2506 	ret
      003B4F                       2507 00102$:
                                   2508 ;	8051_i2c_eeprom.c:571: if (!i2c_write((unsigned char)(current_address + i))) {
      003B4F ED               [12] 2509 	mov	a,r5
      003B50 29               [12] 2510 	add	a,r1
      003B51 F5 82            [12] 2511 	mov	dpl,a
      003B53 C0 07            [24] 2512 	push	ar7
      003B55 C0 06            [24] 2513 	push	ar6
      003B57 C0 05            [24] 2514 	push	ar5
      003B59 12 39 30         [24] 2515 	lcall	_i2c_write
      003B5C E5 82            [12] 2516 	mov	a,dpl
      003B5E 85 83 F0         [24] 2517 	mov	b,dph
      003B61 D0 05            [24] 2518 	pop	ar5
      003B63 D0 06            [24] 2519 	pop	ar6
      003B65 D0 07            [24] 2520 	pop	ar7
      003B67 45 F0            [12] 2521 	orl	a,b
      003B69 70 1C            [24] 2522 	jnz	00104$
                                   2523 ;	8051_i2c_eeprom.c:572: printf("Error: Address write failed\r\n");
      003B6B 74 FE            [12] 2524 	mov	a,#___str_50
      003B6D C0 E0            [24] 2525 	push	acc
      003B6F 74 56            [12] 2526 	mov	a,#(___str_50 >> 8)
      003B71 C0 E0            [24] 2527 	push	acc
      003B73 74 80            [12] 2528 	mov	a,#0x80
      003B75 C0 E0            [24] 2529 	push	acc
      003B77 12 3F 56         [24] 2530 	lcall	_printf
      003B7A 15 81            [12] 2531 	dec	sp
      003B7C 15 81            [12] 2532 	dec	sp
      003B7E 15 81            [12] 2533 	dec	sp
                                   2534 ;	8051_i2c_eeprom.c:573: i2c_stop();
      003B80 12 3E 00         [24] 2535 	lcall	_i2c_stop
                                   2536 ;	8051_i2c_eeprom.c:574: return 0;
      003B83 90 00 00         [24] 2537 	mov	dptr,#0x0000
      003B86 22               [24] 2538 	ret
      003B87                       2539 00104$:
                                   2540 ;	8051_i2c_eeprom.c:578: i2c_start();
      003B87 C0 07            [24] 2541 	push	ar7
      003B89 C0 06            [24] 2542 	push	ar6
      003B8B C0 05            [24] 2543 	push	ar5
      003B8D 12 3A 1D         [24] 2544 	lcall	_i2c_start
                                   2545 ;	8051_i2c_eeprom.c:581: if (!i2c_write(EEPROM_ID | READ)) {
      003B90 75 82 A1         [24] 2546 	mov	dpl,#0xa1
      003B93 12 39 30         [24] 2547 	lcall	_i2c_write
      003B96 E5 82            [12] 2548 	mov	a,dpl
      003B98 85 83 F0         [24] 2549 	mov	b,dph
      003B9B D0 05            [24] 2550 	pop	ar5
      003B9D D0 06            [24] 2551 	pop	ar6
      003B9F D0 07            [24] 2552 	pop	ar7
      003BA1 45 F0            [12] 2553 	orl	a,b
      003BA3 70 1C            [24] 2554 	jnz	00106$
                                   2555 ;	8051_i2c_eeprom.c:582: printf("Error: Device not responding in read mode\r\n");
      003BA5 74 1C            [12] 2556 	mov	a,#___str_51
      003BA7 C0 E0            [24] 2557 	push	acc
      003BA9 74 57            [12] 2558 	mov	a,#(___str_51 >> 8)
      003BAB C0 E0            [24] 2559 	push	acc
      003BAD 74 80            [12] 2560 	mov	a,#0x80
      003BAF C0 E0            [24] 2561 	push	acc
      003BB1 12 3F 56         [24] 2562 	lcall	_printf
      003BB4 15 81            [12] 2563 	dec	sp
      003BB6 15 81            [12] 2564 	dec	sp
      003BB8 15 81            [12] 2565 	dec	sp
                                   2566 ;	8051_i2c_eeprom.c:583: i2c_stop();
      003BBA 12 3E 00         [24] 2567 	lcall	_i2c_stop
                                   2568 ;	8051_i2c_eeprom.c:584: return 0;
      003BBD 90 00 00         [24] 2569 	mov	dptr,#0x0000
      003BC0 22               [24] 2570 	ret
      003BC1                       2571 00106$:
                                   2572 ;	8051_i2c_eeprom.c:588: unsigned char data = i2c_read(0);
      003BC1 90 00 00         [24] 2573 	mov	dptr,#0x0000
      003BC4 C0 07            [24] 2574 	push	ar7
      003BC6 C0 06            [24] 2575 	push	ar6
      003BC8 C0 05            [24] 2576 	push	ar5
      003BCA 12 39 98         [24] 2577 	lcall	_i2c_read
      003BCD AB 82            [24] 2578 	mov	r3,dpl
                                   2579 ;	8051_i2c_eeprom.c:589: printf("%02X ", data);
      003BCF 7C 00            [12] 2580 	mov	r4,#0x00
      003BD1 C0 03            [24] 2581 	push	ar3
      003BD3 C0 04            [24] 2582 	push	ar4
      003BD5 74 48            [12] 2583 	mov	a,#___str_52
      003BD7 C0 E0            [24] 2584 	push	acc
      003BD9 74 57            [12] 2585 	mov	a,#(___str_52 >> 8)
      003BDB C0 E0            [24] 2586 	push	acc
      003BDD 74 80            [12] 2587 	mov	a,#0x80
      003BDF C0 E0            [24] 2588 	push	acc
      003BE1 12 3F 56         [24] 2589 	lcall	_printf
      003BE4 E5 81            [12] 2590 	mov	a,sp
      003BE6 24 FB            [12] 2591 	add	a,#0xfb
      003BE8 F5 81            [12] 2592 	mov	sp,a
                                   2593 ;	8051_i2c_eeprom.c:591: i2c_stop();
      003BEA 12 3E 00         [24] 2594 	lcall	_i2c_stop
                                   2595 ;	8051_i2c_eeprom.c:592: i2c_delay(); // Small delay between reads
      003BED 12 3E 39         [24] 2596 	lcall	_i2c_delay
      003BF0 D0 05            [24] 2597 	pop	ar5
      003BF2 D0 06            [24] 2598 	pop	ar6
      003BF4 D0 07            [24] 2599 	pop	ar7
      003BF6 80 21            [24] 2600 	sjmp	00124$
      003BF8                       2601 00108$:
                                   2602 ;	8051_i2c_eeprom.c:594: printf("   "); // Print spaces for addresses beyond end_address
      003BF8 C0 07            [24] 2603 	push	ar7
      003BFA C0 06            [24] 2604 	push	ar6
      003BFC C0 05            [24] 2605 	push	ar5
      003BFE 74 4E            [12] 2606 	mov	a,#___str_53
      003C00 C0 E0            [24] 2607 	push	acc
      003C02 74 57            [12] 2608 	mov	a,#(___str_53 >> 8)
      003C04 C0 E0            [24] 2609 	push	acc
      003C06 74 80            [12] 2610 	mov	a,#0x80
      003C08 C0 E0            [24] 2611 	push	acc
      003C0A 12 3F 56         [24] 2612 	lcall	_printf
      003C0D 15 81            [12] 2613 	dec	sp
      003C0F 15 81            [12] 2614 	dec	sp
      003C11 15 81            [12] 2615 	dec	sp
      003C13 D0 05            [24] 2616 	pop	ar5
      003C15 D0 06            [24] 2617 	pop	ar6
      003C17 D0 07            [24] 2618 	pop	ar7
      003C19                       2619 00124$:
                                   2620 ;	8051_i2c_eeprom.c:558: for (uint8_t i = 0; i < 16; i++) {
      003C19 0D               [12] 2621 	inc	r5
      003C1A 02 3A E1         [24] 2622 	ljmp	00123$
      003C1D                       2623 00110$:
                                   2624 ;	8051_i2c_eeprom.c:599: printf(" | ");
      003C1D C0 07            [24] 2625 	push	ar7
      003C1F C0 06            [24] 2626 	push	ar6
      003C21 74 52            [12] 2627 	mov	a,#___str_54
      003C23 C0 E0            [24] 2628 	push	acc
      003C25 74 57            [12] 2629 	mov	a,#(___str_54 >> 8)
      003C27 C0 E0            [24] 2630 	push	acc
      003C29 74 80            [12] 2631 	mov	a,#0x80
      003C2B C0 E0            [24] 2632 	push	acc
      003C2D 12 3F 56         [24] 2633 	lcall	_printf
      003C30 15 81            [12] 2634 	dec	sp
      003C32 15 81            [12] 2635 	dec	sp
      003C34 15 81            [12] 2636 	dec	sp
      003C36 D0 06            [24] 2637 	pop	ar6
      003C38 D0 07            [24] 2638 	pop	ar7
                                   2639 ;	8051_i2c_eeprom.c:600: for (uint8_t i = 0; i < 16; i++) {
      003C3A 90 04 1C         [24] 2640 	mov	dptr,#_EEPROM_hexdump_current_address_65537_111
      003C3D E0               [24] 2641 	movx	a,@dptr
      003C3E FC               [12] 2642 	mov	r4,a
      003C3F A3               [24] 2643 	inc	dptr
      003C40 E0               [24] 2644 	movx	a,@dptr
      003C41 FD               [12] 2645 	mov	r5,a
      003C42 7B 00            [12] 2646 	mov	r3,#0x00
      003C44                       2647 00126$:
      003C44 BB 10 00         [24] 2648 	cjne	r3,#0x10,00190$
      003C47                       2649 00190$:
      003C47 40 03            [24] 2650 	jc	00191$
      003C49 02 3D 11         [24] 2651 	ljmp	00118$
      003C4C                       2652 00191$:
                                   2653 ;	8051_i2c_eeprom.c:601: if (current_address + i <= end_address) {
      003C4C 8B 01            [24] 2654 	mov	ar1,r3
      003C4E 7A 00            [12] 2655 	mov	r2,#0x00
      003C50 C0 03            [24] 2656 	push	ar3
      003C52 8C 00            [24] 2657 	mov	ar0,r4
      003C54 8D 03            [24] 2658 	mov	ar3,r5
      003C56 E9               [12] 2659 	mov	a,r1
      003C57 28               [12] 2660 	add	a,r0
      003C58 F8               [12] 2661 	mov	r0,a
      003C59 EA               [12] 2662 	mov	a,r2
      003C5A 3B               [12] 2663 	addc	a,r3
      003C5B FB               [12] 2664 	mov	r3,a
      003C5C C3               [12] 2665 	clr	c
      003C5D EE               [12] 2666 	mov	a,r6
      003C5E 98               [12] 2667 	subb	a,r0
      003C5F EF               [12] 2668 	mov	a,r7
      003C60 9B               [12] 2669 	subb	a,r3
      003C61 D0 03            [24] 2670 	pop	ar3
      003C63 50 03            [24] 2671 	jnc	00192$
      003C65 02 3C F3         [24] 2672 	ljmp	00116$
      003C68                       2673 00192$:
                                   2674 ;	8051_i2c_eeprom.c:603: i2c_start();
      003C68 C0 07            [24] 2675 	push	ar7
      003C6A C0 06            [24] 2676 	push	ar6
      003C6C C0 05            [24] 2677 	push	ar5
      003C6E C0 04            [24] 2678 	push	ar4
      003C70 C0 03            [24] 2679 	push	ar3
      003C72 12 3A 1D         [24] 2680 	lcall	_i2c_start
                                   2681 ;	8051_i2c_eeprom.c:604: i2c_write(EEPROM_ID | WRITE);
      003C75 75 82 A0         [24] 2682 	mov	dpl,#0xa0
      003C78 12 39 30         [24] 2683 	lcall	_i2c_write
      003C7B D0 03            [24] 2684 	pop	ar3
      003C7D D0 04            [24] 2685 	pop	ar4
                                   2686 ;	8051_i2c_eeprom.c:605: i2c_write((unsigned char)(current_address + i));
      003C7F 8C 02            [24] 2687 	mov	ar2,r4
      003C81 EB               [12] 2688 	mov	a,r3
      003C82 2A               [12] 2689 	add	a,r2
      003C83 F5 82            [12] 2690 	mov	dpl,a
      003C85 C0 04            [24] 2691 	push	ar4
      003C87 C0 03            [24] 2692 	push	ar3
      003C89 12 39 30         [24] 2693 	lcall	_i2c_write
                                   2694 ;	8051_i2c_eeprom.c:606: i2c_start();
      003C8C 12 3A 1D         [24] 2695 	lcall	_i2c_start
                                   2696 ;	8051_i2c_eeprom.c:607: i2c_write(EEPROM_ID | READ);
      003C8F 75 82 A1         [24] 2697 	mov	dpl,#0xa1
      003C92 12 39 30         [24] 2698 	lcall	_i2c_write
                                   2699 ;	8051_i2c_eeprom.c:608: unsigned char data = i2c_read(0);
      003C95 90 00 00         [24] 2700 	mov	dptr,#0x0000
      003C98 12 39 98         [24] 2701 	lcall	_i2c_read
      003C9B A9 82            [24] 2702 	mov	r1,dpl
                                   2703 ;	8051_i2c_eeprom.c:609: i2c_stop();
      003C9D C0 01            [24] 2704 	push	ar1
      003C9F 12 3E 00         [24] 2705 	lcall	_i2c_stop
      003CA2 D0 01            [24] 2706 	pop	ar1
      003CA4 D0 03            [24] 2707 	pop	ar3
      003CA6 D0 04            [24] 2708 	pop	ar4
      003CA8 D0 05            [24] 2709 	pop	ar5
      003CAA D0 06            [24] 2710 	pop	ar6
      003CAC D0 07            [24] 2711 	pop	ar7
                                   2712 ;	8051_i2c_eeprom.c:612: if (data >= 32 && data <= 126) {
      003CAE B9 20 00         [24] 2713 	cjne	r1,#0x20,00193$
      003CB1                       2714 00193$:
      003CB1 40 24            [24] 2715 	jc	00112$
      003CB3 E9               [12] 2716 	mov	a,r1
      003CB4 24 81            [12] 2717 	add	a,#0xff - 0x7e
      003CB6 40 1F            [24] 2718 	jc	00112$
                                   2719 ;	8051_i2c_eeprom.c:613: putchar(data);
      003CB8 7A 00            [12] 2720 	mov	r2,#0x00
      003CBA 89 82            [24] 2721 	mov	dpl,r1
      003CBC 8A 83            [24] 2722 	mov	dph,r2
      003CBE C0 07            [24] 2723 	push	ar7
      003CC0 C0 06            [24] 2724 	push	ar6
      003CC2 C0 05            [24] 2725 	push	ar5
      003CC4 C0 04            [24] 2726 	push	ar4
      003CC6 C0 03            [24] 2727 	push	ar3
      003CC8 12 30 62         [24] 2728 	lcall	_putchar
      003CCB D0 03            [24] 2729 	pop	ar3
      003CCD D0 04            [24] 2730 	pop	ar4
      003CCF D0 05            [24] 2731 	pop	ar5
      003CD1 D0 06            [24] 2732 	pop	ar6
      003CD3 D0 07            [24] 2733 	pop	ar7
      003CD5 80 36            [24] 2734 	sjmp	00127$
      003CD7                       2735 00112$:
                                   2736 ;	8051_i2c_eeprom.c:615: putchar('.');
      003CD7 90 00 2E         [24] 2737 	mov	dptr,#0x002e
      003CDA C0 07            [24] 2738 	push	ar7
      003CDC C0 06            [24] 2739 	push	ar6
      003CDE C0 05            [24] 2740 	push	ar5
      003CE0 C0 04            [24] 2741 	push	ar4
      003CE2 C0 03            [24] 2742 	push	ar3
      003CE4 12 30 62         [24] 2743 	lcall	_putchar
      003CE7 D0 03            [24] 2744 	pop	ar3
      003CE9 D0 04            [24] 2745 	pop	ar4
      003CEB D0 05            [24] 2746 	pop	ar5
      003CED D0 06            [24] 2747 	pop	ar6
      003CEF D0 07            [24] 2748 	pop	ar7
      003CF1 80 1A            [24] 2749 	sjmp	00127$
      003CF3                       2750 00116$:
                                   2751 ;	8051_i2c_eeprom.c:618: putchar(' ');
      003CF3 90 00 20         [24] 2752 	mov	dptr,#0x0020
      003CF6 C0 07            [24] 2753 	push	ar7
      003CF8 C0 06            [24] 2754 	push	ar6
      003CFA C0 05            [24] 2755 	push	ar5
      003CFC C0 04            [24] 2756 	push	ar4
      003CFE C0 03            [24] 2757 	push	ar3
      003D00 12 30 62         [24] 2758 	lcall	_putchar
      003D03 D0 03            [24] 2759 	pop	ar3
      003D05 D0 04            [24] 2760 	pop	ar4
      003D07 D0 05            [24] 2761 	pop	ar5
      003D09 D0 06            [24] 2762 	pop	ar6
      003D0B D0 07            [24] 2763 	pop	ar7
      003D0D                       2764 00127$:
                                   2765 ;	8051_i2c_eeprom.c:600: for (uint8_t i = 0; i < 16; i++) {
      003D0D 0B               [12] 2766 	inc	r3
      003D0E 02 3C 44         [24] 2767 	ljmp	00126$
      003D11                       2768 00118$:
                                   2769 ;	8051_i2c_eeprom.c:622: printf("\r\n");
      003D11 C0 07            [24] 2770 	push	ar7
      003D13 C0 06            [24] 2771 	push	ar6
      003D15 74 56            [12] 2772 	mov	a,#___str_55
      003D17 C0 E0            [24] 2773 	push	acc
      003D19 74 57            [12] 2774 	mov	a,#(___str_55 >> 8)
      003D1B C0 E0            [24] 2775 	push	acc
      003D1D 74 80            [12] 2776 	mov	a,#0x80
      003D1F C0 E0            [24] 2777 	push	acc
      003D21 12 3F 56         [24] 2778 	lcall	_printf
      003D24 15 81            [12] 2779 	dec	sp
      003D26 15 81            [12] 2780 	dec	sp
      003D28 15 81            [12] 2781 	dec	sp
      003D2A D0 06            [24] 2782 	pop	ar6
      003D2C D0 07            [24] 2783 	pop	ar7
                                   2784 ;	8051_i2c_eeprom.c:623: current_address += 16;
      003D2E 90 04 1C         [24] 2785 	mov	dptr,#_EEPROM_hexdump_current_address_65537_111
      003D31 E0               [24] 2786 	movx	a,@dptr
      003D32 FC               [12] 2787 	mov	r4,a
      003D33 A3               [24] 2788 	inc	dptr
      003D34 E0               [24] 2789 	movx	a,@dptr
      003D35 FD               [12] 2790 	mov	r5,a
      003D36 74 10            [12] 2791 	mov	a,#0x10
      003D38 2C               [12] 2792 	add	a,r4
      003D39 FC               [12] 2793 	mov	r4,a
      003D3A E4               [12] 2794 	clr	a
      003D3B 3D               [12] 2795 	addc	a,r5
      003D3C FD               [12] 2796 	mov	r5,a
      003D3D 90 04 1C         [24] 2797 	mov	dptr,#_EEPROM_hexdump_current_address_65537_111
      003D40 EC               [12] 2798 	mov	a,r4
      003D41 F0               [24] 2799 	movx	@dptr,a
      003D42 ED               [12] 2800 	mov	a,r5
      003D43 A3               [24] 2801 	inc	dptr
      003D44 F0               [24] 2802 	movx	@dptr,a
      003D45 02 3A A9         [24] 2803 	ljmp	00119$
      003D48                       2804 00121$:
                                   2805 ;	8051_i2c_eeprom.c:626: printf("----------------------------------------------------------------\r\n");
      003D48 74 5F            [12] 2806 	mov	a,#___str_46
      003D4A C0 E0            [24] 2807 	push	acc
      003D4C 74 56            [12] 2808 	mov	a,#(___str_46 >> 8)
      003D4E C0 E0            [24] 2809 	push	acc
      003D50 74 80            [12] 2810 	mov	a,#0x80
      003D52 C0 E0            [24] 2811 	push	acc
      003D54 12 3F 56         [24] 2812 	lcall	_printf
      003D57 15 81            [12] 2813 	dec	sp
      003D59 15 81            [12] 2814 	dec	sp
      003D5B 15 81            [12] 2815 	dec	sp
                                   2816 ;	8051_i2c_eeprom.c:627: return 1;
      003D5D 90 00 01         [24] 2817 	mov	dptr,#0x0001
                                   2818 ;	8051_i2c_eeprom.c:628: }
      003D60 22               [24] 2819 	ret
                                   2820 ;------------------------------------------------------------
                                   2821 ;Allocation info for local variables in function 'handler_EEPROM_hexdump'
                                   2822 ;------------------------------------------------------------
                                   2823 ;start_addr                Allocated with name '_handler_EEPROM_hexdump_start_addr_65537_130'
                                   2824 ;end_addr                  Allocated with name '_handler_EEPROM_hexdump_end_addr_65538_132'
                                   2825 ;------------------------------------------------------------
                                   2826 ;	8051_i2c_eeprom.c:631: void handler_EEPROM_hexdump(void) {
                                   2827 ;	-----------------------------------------
                                   2828 ;	 function handler_EEPROM_hexdump
                                   2829 ;	-----------------------------------------
      003D61                       2830 _handler_EEPROM_hexdump:
                                   2831 ;	8051_i2c_eeprom.c:632: printf("\nEnter Start Address for HEX Dump (000-7FF):\r\n");
      003D61 74 59            [12] 2832 	mov	a,#___str_56
      003D63 C0 E0            [24] 2833 	push	acc
      003D65 74 57            [12] 2834 	mov	a,#(___str_56 >> 8)
      003D67 C0 E0            [24] 2835 	push	acc
      003D69 74 80            [12] 2836 	mov	a,#0x80
      003D6B C0 E0            [24] 2837 	push	acc
      003D6D 12 3F 56         [24] 2838 	lcall	_printf
      003D70 15 81            [12] 2839 	dec	sp
      003D72 15 81            [12] 2840 	dec	sp
      003D74 15 81            [12] 2841 	dec	sp
                                   2842 ;	8051_i2c_eeprom.c:633: uint16_t start_addr = take_address();
      003D76 12 33 23         [24] 2843 	lcall	_take_address
      003D79 AE 82            [24] 2844 	mov	r6,dpl
      003D7B AF 83            [24] 2845 	mov	r7,dph
                                   2846 ;	8051_i2c_eeprom.c:635: if (start_addr > ADDR_MAX) {
      003D7D 8E 04            [24] 2847 	mov	ar4,r6
      003D7F 8F 05            [24] 2848 	mov	ar5,r7
      003D81 C3               [12] 2849 	clr	c
      003D82 74 FF            [12] 2850 	mov	a,#0xff
      003D84 9C               [12] 2851 	subb	a,r4
      003D85 74 07            [12] 2852 	mov	a,#0x07
      003D87 9D               [12] 2853 	subb	a,r5
      003D88 50 16            [24] 2854 	jnc	00102$
                                   2855 ;	8051_i2c_eeprom.c:636: printf("Invalid Start Address! Must be between 0x000 and 0x7FF\r\n");
      003D8A 74 88            [12] 2856 	mov	a,#___str_57
      003D8C C0 E0            [24] 2857 	push	acc
      003D8E 74 57            [12] 2858 	mov	a,#(___str_57 >> 8)
      003D90 C0 E0            [24] 2859 	push	acc
      003D92 74 80            [12] 2860 	mov	a,#0x80
      003D94 C0 E0            [24] 2861 	push	acc
      003D96 12 3F 56         [24] 2862 	lcall	_printf
      003D99 15 81            [12] 2863 	dec	sp
      003D9B 15 81            [12] 2864 	dec	sp
      003D9D 15 81            [12] 2865 	dec	sp
                                   2866 ;	8051_i2c_eeprom.c:637: return;
      003D9F 22               [24] 2867 	ret
      003DA0                       2868 00102$:
                                   2869 ;	8051_i2c_eeprom.c:640: printf("\nEnter End Address for HEX Dump (000-7FF):\r\n");
      003DA0 C0 07            [24] 2870 	push	ar7
      003DA2 C0 06            [24] 2871 	push	ar6
      003DA4 74 C1            [12] 2872 	mov	a,#___str_58
      003DA6 C0 E0            [24] 2873 	push	acc
      003DA8 74 57            [12] 2874 	mov	a,#(___str_58 >> 8)
      003DAA C0 E0            [24] 2875 	push	acc
      003DAC 74 80            [12] 2876 	mov	a,#0x80
      003DAE C0 E0            [24] 2877 	push	acc
      003DB0 12 3F 56         [24] 2878 	lcall	_printf
      003DB3 15 81            [12] 2879 	dec	sp
      003DB5 15 81            [12] 2880 	dec	sp
      003DB7 15 81            [12] 2881 	dec	sp
                                   2882 ;	8051_i2c_eeprom.c:641: uint16_t end_addr = take_address();
      003DB9 12 33 23         [24] 2883 	lcall	_take_address
      003DBC AC 82            [24] 2884 	mov	r4,dpl
      003DBE AD 83            [24] 2885 	mov	r5,dph
      003DC0 D0 06            [24] 2886 	pop	ar6
      003DC2 D0 07            [24] 2887 	pop	ar7
                                   2888 ;	8051_i2c_eeprom.c:643: if (end_addr > ADDR_MAX || end_addr < start_addr) {
      003DC4 8C 02            [24] 2889 	mov	ar2,r4
      003DC6 8D 03            [24] 2890 	mov	ar3,r5
      003DC8 C3               [12] 2891 	clr	c
      003DC9 74 FF            [12] 2892 	mov	a,#0xff
      003DCB 9A               [12] 2893 	subb	a,r2
      003DCC 74 07            [12] 2894 	mov	a,#0x07
      003DCE 9B               [12] 2895 	subb	a,r3
      003DCF 40 06            [24] 2896 	jc	00103$
      003DD1 EC               [12] 2897 	mov	a,r4
      003DD2 9E               [12] 2898 	subb	a,r6
      003DD3 ED               [12] 2899 	mov	a,r5
      003DD4 9F               [12] 2900 	subb	a,r7
      003DD5 50 1A            [24] 2901 	jnc	00104$
      003DD7                       2902 00103$:
                                   2903 ;	8051_i2c_eeprom.c:644: printf("Invalid End Address! Must be between 0x%03X and 0x7FF\r\n", start_addr);
      003DD7 C0 06            [24] 2904 	push	ar6
      003DD9 C0 07            [24] 2905 	push	ar7
      003DDB 74 EE            [12] 2906 	mov	a,#___str_59
      003DDD C0 E0            [24] 2907 	push	acc
      003DDF 74 57            [12] 2908 	mov	a,#(___str_59 >> 8)
      003DE1 C0 E0            [24] 2909 	push	acc
      003DE3 74 80            [12] 2910 	mov	a,#0x80
      003DE5 C0 E0            [24] 2911 	push	acc
      003DE7 12 3F 56         [24] 2912 	lcall	_printf
      003DEA E5 81            [12] 2913 	mov	a,sp
      003DEC 24 FB            [12] 2914 	add	a,#0xfb
      003DEE F5 81            [12] 2915 	mov	sp,a
                                   2916 ;	8051_i2c_eeprom.c:645: return;
      003DF0 22               [24] 2917 	ret
      003DF1                       2918 00104$:
                                   2919 ;	8051_i2c_eeprom.c:648: EEPROM_hexdump(start_addr, end_addr);
      003DF1 90 04 18         [24] 2920 	mov	dptr,#_EEPROM_hexdump_PARM_2
      003DF4 EC               [12] 2921 	mov	a,r4
      003DF5 F0               [24] 2922 	movx	@dptr,a
      003DF6 ED               [12] 2923 	mov	a,r5
      003DF7 A3               [24] 2924 	inc	dptr
      003DF8 F0               [24] 2925 	movx	@dptr,a
      003DF9 8E 82            [24] 2926 	mov	dpl,r6
      003DFB 8F 83            [24] 2927 	mov	dph,r7
                                   2928 ;	8051_i2c_eeprom.c:649: }
      003DFD 02 3A 32         [24] 2929 	ljmp	_EEPROM_hexdump
                                   2930 ;------------------------------------------------------------
                                   2931 ;Allocation info for local variables in function 'i2c_stop'
                                   2932 ;------------------------------------------------------------
                                   2933 ;	8051_i2c_eeprom.c:781: void i2c_stop(void)
                                   2934 ;	-----------------------------------------
                                   2935 ;	 function i2c_stop
                                   2936 ;	-----------------------------------------
      003E00                       2937 _i2c_stop:
                                   2938 ;	8051_i2c_eeprom.c:783: SDA = 0;
                                   2939 ;	assignBit
      003E00 C2 94            [12] 2940 	clr	_P1_4
                                   2941 ;	8051_i2c_eeprom.c:784: i2c_delay();
      003E02 12 3E 39         [24] 2942 	lcall	_i2c_delay
                                   2943 ;	8051_i2c_eeprom.c:785: SCL = 1;
                                   2944 ;	assignBit
      003E05 D2 93            [12] 2945 	setb	_P1_3
                                   2946 ;	8051_i2c_eeprom.c:786: i2c_delay();
      003E07 12 3E 39         [24] 2947 	lcall	_i2c_delay
                                   2948 ;	8051_i2c_eeprom.c:787: SDA = 1; 
                                   2949 ;	assignBit
      003E0A D2 94            [12] 2950 	setb	_P1_4
                                   2951 ;	8051_i2c_eeprom.c:788: }
      003E0C 22               [24] 2952 	ret
                                   2953 ;------------------------------------------------------------
                                   2954 ;Allocation info for local variables in function 'eeprom_reset'
                                   2955 ;------------------------------------------------------------
                                   2956 ;i                         Allocated with name '_eeprom_reset_i_131072_137'
                                   2957 ;------------------------------------------------------------
                                   2958 ;	8051_i2c_eeprom.c:798: void eeprom_reset()
                                   2959 ;	-----------------------------------------
                                   2960 ;	 function eeprom_reset
                                   2961 ;	-----------------------------------------
      003E0D                       2962 _eeprom_reset:
                                   2963 ;	8051_i2c_eeprom.c:800: i2c_start();
      003E0D 12 3A 1D         [24] 2964 	lcall	_i2c_start
                                   2965 ;	8051_i2c_eeprom.c:801: SDA = 0;
                                   2966 ;	assignBit
      003E10 C2 94            [12] 2967 	clr	_P1_4
                                   2968 ;	8051_i2c_eeprom.c:802: SDA = 1;
                                   2969 ;	assignBit
      003E12 D2 94            [12] 2970 	setb	_P1_4
                                   2971 ;	8051_i2c_eeprom.c:803: for(int i = 0; i<10; i++)
      003E14 7E 00            [12] 2972 	mov	r6,#0x00
      003E16 7F 00            [12] 2973 	mov	r7,#0x00
      003E18                       2974 00103$:
      003E18 C3               [12] 2975 	clr	c
      003E19 EE               [12] 2976 	mov	a,r6
      003E1A 94 0A            [12] 2977 	subb	a,#0x0a
      003E1C EF               [12] 2978 	mov	a,r7
      003E1D 64 80            [12] 2979 	xrl	a,#0x80
      003E1F 94 80            [12] 2980 	subb	a,#0x80
      003E21 50 0B            [24] 2981 	jnc	00101$
                                   2982 ;	8051_i2c_eeprom.c:805: SCL = 0;
                                   2983 ;	assignBit
      003E23 C2 93            [12] 2984 	clr	_P1_3
                                   2985 ;	8051_i2c_eeprom.c:806: SCL = 1;
                                   2986 ;	assignBit
      003E25 D2 93            [12] 2987 	setb	_P1_3
                                   2988 ;	8051_i2c_eeprom.c:803: for(int i = 0; i<10; i++)
      003E27 0E               [12] 2989 	inc	r6
      003E28 BE 00 ED         [24] 2990 	cjne	r6,#0x00,00103$
      003E2B 0F               [12] 2991 	inc	r7
      003E2C 80 EA            [24] 2992 	sjmp	00103$
      003E2E                       2993 00101$:
                                   2994 ;	8051_i2c_eeprom.c:808: i2c_start();
      003E2E 12 3A 1D         [24] 2995 	lcall	_i2c_start
                                   2996 ;	8051_i2c_eeprom.c:809: SDA = 0;
                                   2997 ;	assignBit
      003E31 C2 94            [12] 2998 	clr	_P1_4
                                   2999 ;	8051_i2c_eeprom.c:810: i2c_stop();
      003E33 12 3E 00         [24] 3000 	lcall	_i2c_stop
                                   3001 ;	8051_i2c_eeprom.c:811: SDA = 1;
                                   3002 ;	assignBit
      003E36 D2 94            [12] 3003 	setb	_P1_4
                                   3004 ;	8051_i2c_eeprom.c:812: }
      003E38 22               [24] 3005 	ret
                                   3006 ;------------------------------------------------------------
                                   3007 ;Allocation info for local variables in function 'i2c_delay'
                                   3008 ;------------------------------------------------------------
                                   3009 ;i                         Allocated with name '_i2c_delay_i_131072_140'
                                   3010 ;------------------------------------------------------------
                                   3011 ;	8051_i2c_eeprom.c:821: void i2c_delay() 
                                   3012 ;	-----------------------------------------
                                   3013 ;	 function i2c_delay
                                   3014 ;	-----------------------------------------
      003E39                       3015 _i2c_delay:
                                   3016 ;	8051_i2c_eeprom.c:829: for(int i = 0; i<500; i++);
      003E39 7E 00            [12] 3017 	mov	r6,#0x00
      003E3B 7F 00            [12] 3018 	mov	r7,#0x00
      003E3D                       3019 00103$:
      003E3D C3               [12] 3020 	clr	c
      003E3E EE               [12] 3021 	mov	a,r6
      003E3F 94 F4            [12] 3022 	subb	a,#0xf4
      003E41 EF               [12] 3023 	mov	a,r7
      003E42 64 80            [12] 3024 	xrl	a,#0x80
      003E44 94 81            [12] 3025 	subb	a,#0x81
      003E46 50 07            [24] 3026 	jnc	00105$
      003E48 0E               [12] 3027 	inc	r6
      003E49 BE 00 F1         [24] 3028 	cjne	r6,#0x00,00103$
      003E4C 0F               [12] 3029 	inc	r7
      003E4D 80 EE            [24] 3030 	sjmp	00103$
      003E4F                       3031 00105$:
                                   3032 ;	8051_i2c_eeprom.c:830: }
      003E4F 22               [24] 3033 	ret
                                   3034 ;------------------------------------------------------------
                                   3035 ;Allocation info for local variables in function 'test_function'
                                   3036 ;------------------------------------------------------------
                                   3037 ;test_data                 Allocated with name '_test_function_test_data_65537_142'
                                   3038 ;address                   Allocated with name '_test_function_address_65537_142'
                                   3039 ;i                         Allocated with name '_test_function_i_131073_143'
                                   3040 ;read_data                 Allocated with name '_test_function_read_data_65538_145'
                                   3041 ;------------------------------------------------------------
                                   3042 ;	8051_i2c_eeprom.c:832: void test_function()
                                   3043 ;	-----------------------------------------
                                   3044 ;	 function test_function
                                   3045 ;	-----------------------------------------
      003E50                       3046 _test_function:
                                   3047 ;	8051_i2c_eeprom.c:834: i2c_start();
      003E50 12 3A 1D         [24] 3048 	lcall	_i2c_start
                                   3049 ;	8051_i2c_eeprom.c:835: i2c_delay();
      003E53 12 3E 39         [24] 3050 	lcall	_i2c_delay
                                   3051 ;	8051_i2c_eeprom.c:841: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      003E56 74 02            [12] 3052 	mov	a,#0x02
      003E58 C0 E0            [24] 3053 	push	acc
      003E5A E4               [12] 3054 	clr	a
      003E5B C0 E0            [24] 3055 	push	acc
      003E5D 74 26            [12] 3056 	mov	a,#0x26
      003E5F C0 E0            [24] 3057 	push	acc
      003E61 E4               [12] 3058 	clr	a
      003E62 C0 E0            [24] 3059 	push	acc
      003E64 74 26            [12] 3060 	mov	a,#___str_60
      003E66 C0 E0            [24] 3061 	push	acc
      003E68 74 58            [12] 3062 	mov	a,#(___str_60 >> 8)
      003E6A C0 E0            [24] 3063 	push	acc
      003E6C 74 80            [12] 3064 	mov	a,#0x80
      003E6E C0 E0            [24] 3065 	push	acc
      003E70 12 3F 56         [24] 3066 	lcall	_printf
      003E73 E5 81            [12] 3067 	mov	a,sp
      003E75 24 F9            [12] 3068 	add	a,#0xf9
      003E77 F5 81            [12] 3069 	mov	sp,a
                                   3070 ;	8051_i2c_eeprom.c:842: eeprom_write(address, test_data);
      003E79 90 04 0F         [24] 3071 	mov	dptr,#_eeprom_write_PARM_2
      003E7C 74 26            [12] 3072 	mov	a,#0x26
      003E7E F0               [24] 3073 	movx	@dptr,a
      003E7F 90 00 02         [24] 3074 	mov	dptr,#0x0002
      003E82 12 36 DA         [24] 3075 	lcall	_eeprom_write
                                   3076 ;	8051_i2c_eeprom.c:843: i2c_stop();
      003E85 12 3E 00         [24] 3077 	lcall	_i2c_stop
                                   3078 ;	8051_i2c_eeprom.c:845: for(int i = 0; i<100; i++)
      003E88 7E 00            [12] 3079 	mov	r6,#0x00
      003E8A 7F 00            [12] 3080 	mov	r7,#0x00
      003E8C                       3081 00106$:
      003E8C C3               [12] 3082 	clr	c
      003E8D EE               [12] 3083 	mov	a,r6
      003E8E 94 64            [12] 3084 	subb	a,#0x64
      003E90 EF               [12] 3085 	mov	a,r7
      003E91 64 80            [12] 3086 	xrl	a,#0x80
      003E93 94 80            [12] 3087 	subb	a,#0x80
      003E95 50 12            [24] 3088 	jnc	00101$
                                   3089 ;	8051_i2c_eeprom.c:847: i2c_delay();
      003E97 C0 07            [24] 3090 	push	ar7
      003E99 C0 06            [24] 3091 	push	ar6
      003E9B 12 3E 39         [24] 3092 	lcall	_i2c_delay
      003E9E D0 06            [24] 3093 	pop	ar6
      003EA0 D0 07            [24] 3094 	pop	ar7
                                   3095 ;	8051_i2c_eeprom.c:845: for(int i = 0; i<100; i++)
      003EA2 0E               [12] 3096 	inc	r6
      003EA3 BE 00 E6         [24] 3097 	cjne	r6,#0x00,00106$
      003EA6 0F               [12] 3098 	inc	r7
      003EA7 80 E3            [24] 3099 	sjmp	00106$
      003EA9                       3100 00101$:
                                   3101 ;	8051_i2c_eeprom.c:851: unsigned char read_data = eeprom_read(address);
      003EA9 90 00 02         [24] 3102 	mov	dptr,#0x0002
      003EAC 12 38 1C         [24] 3103 	lcall	_eeprom_read
      003EAF AE 82            [24] 3104 	mov	r6,dpl
                                   3105 ;	8051_i2c_eeprom.c:852: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      003EB1 8E 05            [24] 3106 	mov	ar5,r6
      003EB3 7F 00            [12] 3107 	mov	r7,#0x00
      003EB5 C0 06            [24] 3108 	push	ar6
      003EB7 C0 05            [24] 3109 	push	ar5
      003EB9 C0 07            [24] 3110 	push	ar7
      003EBB 74 02            [12] 3111 	mov	a,#0x02
      003EBD C0 E0            [24] 3112 	push	acc
      003EBF E4               [12] 3113 	clr	a
      003EC0 C0 E0            [24] 3114 	push	acc
      003EC2 74 4E            [12] 3115 	mov	a,#___str_61
      003EC4 C0 E0            [24] 3116 	push	acc
      003EC6 74 58            [12] 3117 	mov	a,#(___str_61 >> 8)
      003EC8 C0 E0            [24] 3118 	push	acc
      003ECA 74 80            [12] 3119 	mov	a,#0x80
      003ECC C0 E0            [24] 3120 	push	acc
      003ECE 12 3F 56         [24] 3121 	lcall	_printf
      003ED1 E5 81            [12] 3122 	mov	a,sp
      003ED3 24 F9            [12] 3123 	add	a,#0xf9
      003ED5 F5 81            [12] 3124 	mov	sp,a
      003ED7 D0 06            [24] 3125 	pop	ar6
                                   3126 ;	8051_i2c_eeprom.c:855: if(read_data == test_data) {
      003ED9 BE 26 16         [24] 3127 	cjne	r6,#0x26,00103$
                                   3128 ;	8051_i2c_eeprom.c:856: printf("MATCH - Write/Read successful!\n\r");
      003EDC 74 76            [12] 3129 	mov	a,#___str_62
      003EDE C0 E0            [24] 3130 	push	acc
      003EE0 74 58            [12] 3131 	mov	a,#(___str_62 >> 8)
      003EE2 C0 E0            [24] 3132 	push	acc
      003EE4 74 80            [12] 3133 	mov	a,#0x80
      003EE6 C0 E0            [24] 3134 	push	acc
      003EE8 12 3F 56         [24] 3135 	lcall	_printf
      003EEB 15 81            [12] 3136 	dec	sp
      003EED 15 81            [12] 3137 	dec	sp
      003EEF 15 81            [12] 3138 	dec	sp
      003EF1 22               [24] 3139 	ret
      003EF2                       3140 00103$:
                                   3141 ;	8051_i2c_eeprom.c:858: printf("ERROR - Data mismatch!\n\r");
      003EF2 74 97            [12] 3142 	mov	a,#___str_63
      003EF4 C0 E0            [24] 3143 	push	acc
      003EF6 74 58            [12] 3144 	mov	a,#(___str_63 >> 8)
      003EF8 C0 E0            [24] 3145 	push	acc
      003EFA 74 80            [12] 3146 	mov	a,#0x80
      003EFC C0 E0            [24] 3147 	push	acc
      003EFE 12 3F 56         [24] 3148 	lcall	_printf
      003F01 15 81            [12] 3149 	dec	sp
      003F03 15 81            [12] 3150 	dec	sp
      003F05 15 81            [12] 3151 	dec	sp
                                   3152 ;	8051_i2c_eeprom.c:862: }
      003F07 22               [24] 3153 	ret
                                   3154 	.area CSEG    (CODE)
                                   3155 	.area CONST   (CODE)
                                   3156 	.area CONST   (CODE)
      0049B8                       3157 ___str_0:
      0049B8 0A                    3158 	.db 0x0a
      0049B9 E2                    3159 	.db 0xe2
      0049BA 95                    3160 	.db 0x95
      0049BB 94                    3161 	.db 0x94
      0049BC E2                    3162 	.db 0xe2
      0049BD 95                    3163 	.db 0x95
      0049BE 90                    3164 	.db 0x90
      0049BF E2                    3165 	.db 0xe2
      0049C0 95                    3166 	.db 0x95
      0049C1 90                    3167 	.db 0x90
      0049C2 E2                    3168 	.db 0xe2
      0049C3 95                    3169 	.db 0x95
      0049C4 90                    3170 	.db 0x90
      0049C5 E2                    3171 	.db 0xe2
      0049C6 95                    3172 	.db 0x95
      0049C7 90                    3173 	.db 0x90
      0049C8 E2                    3174 	.db 0xe2
      0049C9 95                    3175 	.db 0x95
      0049CA 90                    3176 	.db 0x90
      0049CB E2                    3177 	.db 0xe2
      0049CC 95                    3178 	.db 0x95
      0049CD 90                    3179 	.db 0x90
      0049CE E2                    3180 	.db 0xe2
      0049CF 95                    3181 	.db 0x95
      0049D0 90                    3182 	.db 0x90
      0049D1 E2                    3183 	.db 0xe2
      0049D2 95                    3184 	.db 0x95
      0049D3 90                    3185 	.db 0x90
      0049D4 E2                    3186 	.db 0xe2
      0049D5 95                    3187 	.db 0x95
      0049D6 90                    3188 	.db 0x90
      0049D7 E2                    3189 	.db 0xe2
      0049D8 95                    3190 	.db 0x95
      0049D9 90                    3191 	.db 0x90
      0049DA E2                    3192 	.db 0xe2
      0049DB 95                    3193 	.db 0x95
      0049DC 90                    3194 	.db 0x90
      0049DD E2                    3195 	.db 0xe2
      0049DE 95                    3196 	.db 0x95
      0049DF 90                    3197 	.db 0x90
      0049E0 E2                    3198 	.db 0xe2
      0049E1 95                    3199 	.db 0x95
      0049E2 90                    3200 	.db 0x90
      0049E3 E2                    3201 	.db 0xe2
      0049E4 95                    3202 	.db 0x95
      0049E5 90                    3203 	.db 0x90
      0049E6 E2                    3204 	.db 0xe2
      0049E7 95                    3205 	.db 0x95
      0049E8 90                    3206 	.db 0x90
      0049E9 E2                    3207 	.db 0xe2
      0049EA 95                    3208 	.db 0x95
      0049EB 90                    3209 	.db 0x90
      0049EC E2                    3210 	.db 0xe2
      0049ED 95                    3211 	.db 0x95
      0049EE 90                    3212 	.db 0x90
      0049EF E2                    3213 	.db 0xe2
      0049F0 95                    3214 	.db 0x95
      0049F1 90                    3215 	.db 0x90
      0049F2 E2                    3216 	.db 0xe2
      0049F3 95                    3217 	.db 0x95
      0049F4 90                    3218 	.db 0x90
      0049F5 E2                    3219 	.db 0xe2
      0049F6 95                    3220 	.db 0x95
      0049F7 90                    3221 	.db 0x90
      0049F8 E2                    3222 	.db 0xe2
      0049F9 95                    3223 	.db 0x95
      0049FA 90                    3224 	.db 0x90
      0049FB E2                    3225 	.db 0xe2
      0049FC 95                    3226 	.db 0x95
      0049FD 90                    3227 	.db 0x90
      0049FE E2                    3228 	.db 0xe2
      0049FF 95                    3229 	.db 0x95
      004A00 90                    3230 	.db 0x90
      004A01 E2                    3231 	.db 0xe2
      004A02 95                    3232 	.db 0x95
      004A03 90                    3233 	.db 0x90
      004A04 E2                    3234 	.db 0xe2
      004A05 95                    3235 	.db 0x95
      004A06 90                    3236 	.db 0x90
      004A07 E2                    3237 	.db 0xe2
      004A08 95                    3238 	.db 0x95
      004A09 90                    3239 	.db 0x90
      004A0A E2                    3240 	.db 0xe2
      004A0B 95                    3241 	.db 0x95
      004A0C 90                    3242 	.db 0x90
      004A0D E2                    3243 	.db 0xe2
      004A0E 95                    3244 	.db 0x95
      004A0F 90                    3245 	.db 0x90
      004A10 E2                    3246 	.db 0xe2
      004A11 95                    3247 	.db 0x95
      004A12 90                    3248 	.db 0x90
      004A13 E2                    3249 	.db 0xe2
      004A14 95                    3250 	.db 0x95
      004A15 90                    3251 	.db 0x90
      004A16 E2                    3252 	.db 0xe2
      004A17 95                    3253 	.db 0x95
      004A18 90                    3254 	.db 0x90
      004A19 E2                    3255 	.db 0xe2
      004A1A 95                    3256 	.db 0x95
      004A1B 90                    3257 	.db 0x90
      004A1C E2                    3258 	.db 0xe2
      004A1D 95                    3259 	.db 0x95
      004A1E 90                    3260 	.db 0x90
      004A1F E2                    3261 	.db 0xe2
      004A20 95                    3262 	.db 0x95
      004A21 90                    3263 	.db 0x90
      004A22 E2                    3264 	.db 0xe2
      004A23 95                    3265 	.db 0x95
      004A24 90                    3266 	.db 0x90
      004A25 E2                    3267 	.db 0xe2
      004A26 95                    3268 	.db 0x95
      004A27 90                    3269 	.db 0x90
      004A28 E2                    3270 	.db 0xe2
      004A29 95                    3271 	.db 0x95
      004A2A 90                    3272 	.db 0x90
      004A2B E2                    3273 	.db 0xe2
      004A2C 95                    3274 	.db 0x95
      004A2D 90                    3275 	.db 0x90
      004A2E E2                    3276 	.db 0xe2
      004A2F 95                    3277 	.db 0x95
      004A30 90                    3278 	.db 0x90
      004A31 E2                    3279 	.db 0xe2
      004A32 95                    3280 	.db 0x95
      004A33 90                    3281 	.db 0x90
      004A34 E2                    3282 	.db 0xe2
      004A35 95                    3283 	.db 0x95
      004A36 90                    3284 	.db 0x90
      004A37 E2                    3285 	.db 0xe2
      004A38 95                    3286 	.db 0x95
      004A39 90                    3287 	.db 0x90
      004A3A E2                    3288 	.db 0xe2
      004A3B 95                    3289 	.db 0x95
      004A3C 90                    3290 	.db 0x90
      004A3D E2                    3291 	.db 0xe2
      004A3E 95                    3292 	.db 0x95
      004A3F 90                    3293 	.db 0x90
      004A40 E2                    3294 	.db 0xe2
      004A41 95                    3295 	.db 0x95
      004A42 90                    3296 	.db 0x90
      004A43 E2                    3297 	.db 0xe2
      004A44 95                    3298 	.db 0x95
      004A45 90                    3299 	.db 0x90
      004A46 E2                    3300 	.db 0xe2
      004A47 95                    3301 	.db 0x95
      004A48 90                    3302 	.db 0x90
      004A49 E2                    3303 	.db 0xe2
      004A4A 95                    3304 	.db 0x95
      004A4B 90                    3305 	.db 0x90
      004A4C E2                    3306 	.db 0xe2
      004A4D 95                    3307 	.db 0x95
      004A4E 90                    3308 	.db 0x90
      004A4F E2                    3309 	.db 0xe2
      004A50 95                    3310 	.db 0x95
      004A51 90                    3311 	.db 0x90
      004A52 E2                    3312 	.db 0xe2
      004A53 95                    3313 	.db 0x95
      004A54 90                    3314 	.db 0x90
      004A55 E2                    3315 	.db 0xe2
      004A56 95                    3316 	.db 0x95
      004A57 90                    3317 	.db 0x90
      004A58 E2                    3318 	.db 0xe2
      004A59 95                    3319 	.db 0x95
      004A5A 90                    3320 	.db 0x90
      004A5B E2                    3321 	.db 0xe2
      004A5C 95                    3322 	.db 0x95
      004A5D 90                    3323 	.db 0x90
      004A5E E2                    3324 	.db 0xe2
      004A5F 95                    3325 	.db 0x95
      004A60 90                    3326 	.db 0x90
      004A61 E2                    3327 	.db 0xe2
      004A62 95                    3328 	.db 0x95
      004A63 90                    3329 	.db 0x90
      004A64 E2                    3330 	.db 0xe2
      004A65 95                    3331 	.db 0x95
      004A66 97                    3332 	.db 0x97
      004A67 0A                    3333 	.db 0x0a
      004A68 0D                    3334 	.db 0x0d
      004A69 00                    3335 	.db 0x00
                                   3336 	.area CSEG    (CODE)
                                   3337 	.area CONST   (CODE)
      004A6A                       3338 ___str_1:
      004A6A E2                    3339 	.db 0xe2
      004A6B 95                    3340 	.db 0x95
      004A6C 91                    3341 	.db 0x91
      004A6D 20 20 20 20 20 20 20  3342 	.ascii "           I2C Memory Management System v1.0            "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
      004AA5 E2                    3343 	.db 0xe2
      004AA6 95                    3344 	.db 0x95
      004AA7 91                    3345 	.db 0x91
      004AA8 0A                    3346 	.db 0x0a
      004AA9 0D                    3347 	.db 0x0d
      004AAA 00                    3348 	.db 0x00
                                   3349 	.area CSEG    (CODE)
                                   3350 	.area CONST   (CODE)
      004AAB                       3351 ___str_2:
      004AAB E2                    3352 	.db 0xe2
      004AAC 95                    3353 	.db 0x95
      004AAD 9A                    3354 	.db 0x9a
      004AAE E2                    3355 	.db 0xe2
      004AAF 95                    3356 	.db 0x95
      004AB0 90                    3357 	.db 0x90
      004AB1 E2                    3358 	.db 0xe2
      004AB2 95                    3359 	.db 0x95
      004AB3 90                    3360 	.db 0x90
      004AB4 E2                    3361 	.db 0xe2
      004AB5 95                    3362 	.db 0x95
      004AB6 90                    3363 	.db 0x90
      004AB7 E2                    3364 	.db 0xe2
      004AB8 95                    3365 	.db 0x95
      004AB9 90                    3366 	.db 0x90
      004ABA E2                    3367 	.db 0xe2
      004ABB 95                    3368 	.db 0x95
      004ABC 90                    3369 	.db 0x90
      004ABD E2                    3370 	.db 0xe2
      004ABE 95                    3371 	.db 0x95
      004ABF 90                    3372 	.db 0x90
      004AC0 E2                    3373 	.db 0xe2
      004AC1 95                    3374 	.db 0x95
      004AC2 90                    3375 	.db 0x90
      004AC3 E2                    3376 	.db 0xe2
      004AC4 95                    3377 	.db 0x95
      004AC5 90                    3378 	.db 0x90
      004AC6 E2                    3379 	.db 0xe2
      004AC7 95                    3380 	.db 0x95
      004AC8 90                    3381 	.db 0x90
      004AC9 E2                    3382 	.db 0xe2
      004ACA 95                    3383 	.db 0x95
      004ACB 90                    3384 	.db 0x90
      004ACC E2                    3385 	.db 0xe2
      004ACD 95                    3386 	.db 0x95
      004ACE 90                    3387 	.db 0x90
      004ACF E2                    3388 	.db 0xe2
      004AD0 95                    3389 	.db 0x95
      004AD1 90                    3390 	.db 0x90
      004AD2 E2                    3391 	.db 0xe2
      004AD3 95                    3392 	.db 0x95
      004AD4 90                    3393 	.db 0x90
      004AD5 E2                    3394 	.db 0xe2
      004AD6 95                    3395 	.db 0x95
      004AD7 90                    3396 	.db 0x90
      004AD8 E2                    3397 	.db 0xe2
      004AD9 95                    3398 	.db 0x95
      004ADA 90                    3399 	.db 0x90
      004ADB E2                    3400 	.db 0xe2
      004ADC 95                    3401 	.db 0x95
      004ADD 90                    3402 	.db 0x90
      004ADE E2                    3403 	.db 0xe2
      004ADF 95                    3404 	.db 0x95
      004AE0 90                    3405 	.db 0x90
      004AE1 E2                    3406 	.db 0xe2
      004AE2 95                    3407 	.db 0x95
      004AE3 90                    3408 	.db 0x90
      004AE4 E2                    3409 	.db 0xe2
      004AE5 95                    3410 	.db 0x95
      004AE6 90                    3411 	.db 0x90
      004AE7 E2                    3412 	.db 0xe2
      004AE8 95                    3413 	.db 0x95
      004AE9 90                    3414 	.db 0x90
      004AEA E2                    3415 	.db 0xe2
      004AEB 95                    3416 	.db 0x95
      004AEC 90                    3417 	.db 0x90
      004AED E2                    3418 	.db 0xe2
      004AEE 95                    3419 	.db 0x95
      004AEF 90                    3420 	.db 0x90
      004AF0 E2                    3421 	.db 0xe2
      004AF1 95                    3422 	.db 0x95
      004AF2 90                    3423 	.db 0x90
      004AF3 E2                    3424 	.db 0xe2
      004AF4 95                    3425 	.db 0x95
      004AF5 90                    3426 	.db 0x90
      004AF6 E2                    3427 	.db 0xe2
      004AF7 95                    3428 	.db 0x95
      004AF8 90                    3429 	.db 0x90
      004AF9 E2                    3430 	.db 0xe2
      004AFA 95                    3431 	.db 0x95
      004AFB 90                    3432 	.db 0x90
      004AFC E2                    3433 	.db 0xe2
      004AFD 95                    3434 	.db 0x95
      004AFE 90                    3435 	.db 0x90
      004AFF E2                    3436 	.db 0xe2
      004B00 95                    3437 	.db 0x95
      004B01 90                    3438 	.db 0x90
      004B02 E2                    3439 	.db 0xe2
      004B03 95                    3440 	.db 0x95
      004B04 90                    3441 	.db 0x90
      004B05 E2                    3442 	.db 0xe2
      004B06 95                    3443 	.db 0x95
      004B07 90                    3444 	.db 0x90
      004B08 E2                    3445 	.db 0xe2
      004B09 95                    3446 	.db 0x95
      004B0A 90                    3447 	.db 0x90
      004B0B E2                    3448 	.db 0xe2
      004B0C 95                    3449 	.db 0x95
      004B0D 90                    3450 	.db 0x90
      004B0E E2                    3451 	.db 0xe2
      004B0F 95                    3452 	.db 0x95
      004B10 90                    3453 	.db 0x90
      004B11 E2                    3454 	.db 0xe2
      004B12 95                    3455 	.db 0x95
      004B13 90                    3456 	.db 0x90
      004B14 E2                    3457 	.db 0xe2
      004B15 95                    3458 	.db 0x95
      004B16 90                    3459 	.db 0x90
      004B17 E2                    3460 	.db 0xe2
      004B18 95                    3461 	.db 0x95
      004B19 90                    3462 	.db 0x90
      004B1A E2                    3463 	.db 0xe2
      004B1B 95                    3464 	.db 0x95
      004B1C 90                    3465 	.db 0x90
      004B1D E2                    3466 	.db 0xe2
      004B1E 95                    3467 	.db 0x95
      004B1F 90                    3468 	.db 0x90
      004B20 E2                    3469 	.db 0xe2
      004B21 95                    3470 	.db 0x95
      004B22 90                    3471 	.db 0x90
      004B23 E2                    3472 	.db 0xe2
      004B24 95                    3473 	.db 0x95
      004B25 90                    3474 	.db 0x90
      004B26 E2                    3475 	.db 0xe2
      004B27 95                    3476 	.db 0x95
      004B28 90                    3477 	.db 0x90
      004B29 E2                    3478 	.db 0xe2
      004B2A 95                    3479 	.db 0x95
      004B2B 90                    3480 	.db 0x90
      004B2C E2                    3481 	.db 0xe2
      004B2D 95                    3482 	.db 0x95
      004B2E 90                    3483 	.db 0x90
      004B2F E2                    3484 	.db 0xe2
      004B30 95                    3485 	.db 0x95
      004B31 90                    3486 	.db 0x90
      004B32 E2                    3487 	.db 0xe2
      004B33 95                    3488 	.db 0x95
      004B34 90                    3489 	.db 0x90
      004B35 E2                    3490 	.db 0xe2
      004B36 95                    3491 	.db 0x95
      004B37 90                    3492 	.db 0x90
      004B38 E2                    3493 	.db 0xe2
      004B39 95                    3494 	.db 0x95
      004B3A 90                    3495 	.db 0x90
      004B3B E2                    3496 	.db 0xe2
      004B3C 95                    3497 	.db 0x95
      004B3D 90                    3498 	.db 0x90
      004B3E E2                    3499 	.db 0xe2
      004B3F 95                    3500 	.db 0x95
      004B40 90                    3501 	.db 0x90
      004B41 E2                    3502 	.db 0xe2
      004B42 95                    3503 	.db 0x95
      004B43 90                    3504 	.db 0x90
      004B44 E2                    3505 	.db 0xe2
      004B45 95                    3506 	.db 0x95
      004B46 90                    3507 	.db 0x90
      004B47 E2                    3508 	.db 0xe2
      004B48 95                    3509 	.db 0x95
      004B49 90                    3510 	.db 0x90
      004B4A E2                    3511 	.db 0xe2
      004B4B 95                    3512 	.db 0x95
      004B4C 90                    3513 	.db 0x90
      004B4D E2                    3514 	.db 0xe2
      004B4E 95                    3515 	.db 0x95
      004B4F 90                    3516 	.db 0x90
      004B50 E2                    3517 	.db 0xe2
      004B51 95                    3518 	.db 0x95
      004B52 90                    3519 	.db 0x90
      004B53 E2                    3520 	.db 0xe2
      004B54 95                    3521 	.db 0x95
      004B55 90                    3522 	.db 0x90
      004B56 E2                    3523 	.db 0xe2
      004B57 95                    3524 	.db 0x95
      004B58 9D                    3525 	.db 0x9d
      004B59 0A                    3526 	.db 0x0a
      004B5A 0D                    3527 	.db 0x0d
      004B5B 00                    3528 	.db 0x00
                                   3529 	.area CSEG    (CODE)
                                   3530 	.area CONST   (CODE)
      004B5C                       3531 ___str_3:
      004B5C 0A                    3532 	.db 0x0a
      004B5D 0D                    3533 	.db 0x0d
      004B5E E2                    3534 	.db 0xe2
      004B5F 94                    3535 	.db 0x94
      004B60 8C                    3536 	.db 0x8c
      004B61 E2                    3537 	.db 0xe2
      004B62 94                    3538 	.db 0x94
      004B63 80                    3539 	.db 0x80
      004B64 E2                    3540 	.db 0xe2
      004B65 94                    3541 	.db 0x94
      004B66 80                    3542 	.db 0x80
      004B67 E2                    3543 	.db 0xe2
      004B68 94                    3544 	.db 0x94
      004B69 80                    3545 	.db 0x80
      004B6A E2                    3546 	.db 0xe2
      004B6B 94                    3547 	.db 0x94
      004B6C 80                    3548 	.db 0x80
      004B6D E2                    3549 	.db 0xe2
      004B6E 94                    3550 	.db 0x94
      004B6F 80                    3551 	.db 0x80
      004B70 E2                    3552 	.db 0xe2
      004B71 94                    3553 	.db 0x94
      004B72 80                    3554 	.db 0x80
      004B73 E2                    3555 	.db 0xe2
      004B74 94                    3556 	.db 0x94
      004B75 80                    3557 	.db 0x80
      004B76 E2                    3558 	.db 0xe2
      004B77 94                    3559 	.db 0x94
      004B78 80                    3560 	.db 0x80
      004B79 E2                    3561 	.db 0xe2
      004B7A 94                    3562 	.db 0x94
      004B7B 80                    3563 	.db 0x80
      004B7C E2                    3564 	.db 0xe2
      004B7D 94                    3565 	.db 0x94
      004B7E 80                    3566 	.db 0x80
      004B7F E2                    3567 	.db 0xe2
      004B80 94                    3568 	.db 0x94
      004B81 80                    3569 	.db 0x80
      004B82 E2                    3570 	.db 0xe2
      004B83 94                    3571 	.db 0x94
      004B84 80                    3572 	.db 0x80
      004B85 E2                    3573 	.db 0xe2
      004B86 94                    3574 	.db 0x94
      004B87 AC                    3575 	.db 0xac
      004B88 E2                    3576 	.db 0xe2
      004B89 94                    3577 	.db 0x94
      004B8A 80                    3578 	.db 0x80
      004B8B E2                    3579 	.db 0xe2
      004B8C 94                    3580 	.db 0x94
      004B8D 80                    3581 	.db 0x80
      004B8E E2                    3582 	.db 0xe2
      004B8F 94                    3583 	.db 0x94
      004B90 80                    3584 	.db 0x80
      004B91 E2                    3585 	.db 0xe2
      004B92 94                    3586 	.db 0x94
      004B93 80                    3587 	.db 0x80
      004B94 E2                    3588 	.db 0xe2
      004B95 94                    3589 	.db 0x94
      004B96 80                    3590 	.db 0x80
      004B97 E2                    3591 	.db 0xe2
      004B98 94                    3592 	.db 0x94
      004B99 80                    3593 	.db 0x80
      004B9A E2                    3594 	.db 0xe2
      004B9B 94                    3595 	.db 0x94
      004B9C 80                    3596 	.db 0x80
      004B9D E2                    3597 	.db 0xe2
      004B9E 94                    3598 	.db 0x94
      004B9F 80                    3599 	.db 0x80
      004BA0 E2                    3600 	.db 0xe2
      004BA1 94                    3601 	.db 0x94
      004BA2 80                    3602 	.db 0x80
      004BA3 E2                    3603 	.db 0xe2
      004BA4 94                    3604 	.db 0x94
      004BA5 80                    3605 	.db 0x80
      004BA6 E2                    3606 	.db 0xe2
      004BA7 94                    3607 	.db 0x94
      004BA8 80                    3608 	.db 0x80
      004BA9 E2                    3609 	.db 0xe2
      004BAA 94                    3610 	.db 0x94
      004BAB 80                    3611 	.db 0x80
      004BAC E2                    3612 	.db 0xe2
      004BAD 94                    3613 	.db 0x94
      004BAE 80                    3614 	.db 0x80
      004BAF E2                    3615 	.db 0xe2
      004BB0 94                    3616 	.db 0x94
      004BB1 80                    3617 	.db 0x80
      004BB2 E2                    3618 	.db 0xe2
      004BB3 94                    3619 	.db 0x94
      004BB4 80                    3620 	.db 0x80
      004BB5 E2                    3621 	.db 0xe2
      004BB6 94                    3622 	.db 0x94
      004BB7 80                    3623 	.db 0x80
      004BB8 E2                    3624 	.db 0xe2
      004BB9 94                    3625 	.db 0x94
      004BBA 80                    3626 	.db 0x80
      004BBB E2                    3627 	.db 0xe2
      004BBC 94                    3628 	.db 0x94
      004BBD 80                    3629 	.db 0x80
      004BBE E2                    3630 	.db 0xe2
      004BBF 94                    3631 	.db 0x94
      004BC0 80                    3632 	.db 0x80
      004BC1 E2                    3633 	.db 0xe2
      004BC2 94                    3634 	.db 0x94
      004BC3 80                    3635 	.db 0x80
      004BC4 E2                    3636 	.db 0xe2
      004BC5 94                    3637 	.db 0x94
      004BC6 80                    3638 	.db 0x80
      004BC7 E2                    3639 	.db 0xe2
      004BC8 94                    3640 	.db 0x94
      004BC9 80                    3641 	.db 0x80
      004BCA E2                    3642 	.db 0xe2
      004BCB 94                    3643 	.db 0x94
      004BCC 80                    3644 	.db 0x80
      004BCD E2                    3645 	.db 0xe2
      004BCE 94                    3646 	.db 0x94
      004BCF 80                    3647 	.db 0x80
      004BD0 E2                    3648 	.db 0xe2
      004BD1 94                    3649 	.db 0x94
      004BD2 80                    3650 	.db 0x80
      004BD3 E2                    3651 	.db 0xe2
      004BD4 94                    3652 	.db 0x94
      004BD5 80                    3653 	.db 0x80
      004BD6 E2                    3654 	.db 0xe2
      004BD7 94                    3655 	.db 0x94
      004BD8 80                    3656 	.db 0x80
      004BD9 E2                    3657 	.db 0xe2
      004BDA 94                    3658 	.db 0x94
      004BDB 80                    3659 	.db 0x80
      004BDC E2                    3660 	.db 0xe2
      004BDD 94                    3661 	.db 0x94
      004BDE 80                    3662 	.db 0x80
      004BDF E2                    3663 	.db 0xe2
      004BE0 94                    3664 	.db 0x94
      004BE1 80                    3665 	.db 0x80
      004BE2 E2                    3666 	.db 0xe2
      004BE3 94                    3667 	.db 0x94
      004BE4 80                    3668 	.db 0x80
      004BE5 E2                    3669 	.db 0xe2
      004BE6 94                    3670 	.db 0x94
      004BE7 80                    3671 	.db 0x80
      004BE8 E2                    3672 	.db 0xe2
      004BE9 94                    3673 	.db 0x94
      004BEA 80                    3674 	.db 0x80
      004BEB E2                    3675 	.db 0xe2
      004BEC 94                    3676 	.db 0x94
      004BED 80                    3677 	.db 0x80
      004BEE E2                    3678 	.db 0xe2
      004BEF 94                    3679 	.db 0x94
      004BF0 80                    3680 	.db 0x80
      004BF1 E2                    3681 	.db 0xe2
      004BF2 94                    3682 	.db 0x94
      004BF3 80                    3683 	.db 0x80
      004BF4 E2                    3684 	.db 0xe2
      004BF5 94                    3685 	.db 0x94
      004BF6 80                    3686 	.db 0x80
      004BF7 E2                    3687 	.db 0xe2
      004BF8 94                    3688 	.db 0x94
      004BF9 80                    3689 	.db 0x80
      004BFA E2                    3690 	.db 0xe2
      004BFB 94                    3691 	.db 0x94
      004BFC 80                    3692 	.db 0x80
      004BFD E2                    3693 	.db 0xe2
      004BFE 94                    3694 	.db 0x94
      004BFF 80                    3695 	.db 0x80
      004C00 E2                    3696 	.db 0xe2
      004C01 94                    3697 	.db 0x94
      004C02 80                    3698 	.db 0x80
      004C03 E2                    3699 	.db 0xe2
      004C04 94                    3700 	.db 0x94
      004C05 80                    3701 	.db 0x80
      004C06 E2                    3702 	.db 0xe2
      004C07 94                    3703 	.db 0x94
      004C08 80                    3704 	.db 0x80
      004C09 E2                    3705 	.db 0xe2
      004C0A 94                    3706 	.db 0x94
      004C0B 80                    3707 	.db 0x80
      004C0C E2                    3708 	.db 0xe2
      004C0D 94                    3709 	.db 0x94
      004C0E 90                    3710 	.db 0x90
      004C0F 0A                    3711 	.db 0x0a
      004C10 0D                    3712 	.db 0x0d
      004C11 00                    3713 	.db 0x00
                                   3714 	.area CSEG    (CODE)
                                   3715 	.area CONST   (CODE)
      004C12                       3716 ___str_4:
      004C12 E2                    3717 	.db 0xe2
      004C13 94                    3718 	.db 0x94
      004C14 82                    3719 	.db 0x82
      004C15 20 20 43 6F 6D 6D 61  3720 	.ascii "  Command   "
             6E 64 20 20 20
      004C21 E2                    3721 	.db 0xe2
      004C22 94                    3722 	.db 0x94
      004C23 82                    3723 	.db 0x82
      004C24 20 20 20 20 20 20 20  3724 	.ascii "               Description                  "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004C50 E2                    3725 	.db 0xe2
      004C51 94                    3726 	.db 0x94
      004C52 82                    3727 	.db 0x82
      004C53 0A                    3728 	.db 0x0a
      004C54 0D                    3729 	.db 0x0d
      004C55 00                    3730 	.db 0x00
                                   3731 	.area CSEG    (CODE)
                                   3732 	.area CONST   (CODE)
      004C56                       3733 ___str_5:
      004C56 E2                    3734 	.db 0xe2
      004C57 94                    3735 	.db 0x94
      004C58 9C                    3736 	.db 0x9c
      004C59 E2                    3737 	.db 0xe2
      004C5A 94                    3738 	.db 0x94
      004C5B 80                    3739 	.db 0x80
      004C5C E2                    3740 	.db 0xe2
      004C5D 94                    3741 	.db 0x94
      004C5E 80                    3742 	.db 0x80
      004C5F E2                    3743 	.db 0xe2
      004C60 94                    3744 	.db 0x94
      004C61 80                    3745 	.db 0x80
      004C62 E2                    3746 	.db 0xe2
      004C63 94                    3747 	.db 0x94
      004C64 80                    3748 	.db 0x80
      004C65 E2                    3749 	.db 0xe2
      004C66 94                    3750 	.db 0x94
      004C67 80                    3751 	.db 0x80
      004C68 E2                    3752 	.db 0xe2
      004C69 94                    3753 	.db 0x94
      004C6A 80                    3754 	.db 0x80
      004C6B E2                    3755 	.db 0xe2
      004C6C 94                    3756 	.db 0x94
      004C6D 80                    3757 	.db 0x80
      004C6E E2                    3758 	.db 0xe2
      004C6F 94                    3759 	.db 0x94
      004C70 80                    3760 	.db 0x80
      004C71 E2                    3761 	.db 0xe2
      004C72 94                    3762 	.db 0x94
      004C73 80                    3763 	.db 0x80
      004C74 E2                    3764 	.db 0xe2
      004C75 94                    3765 	.db 0x94
      004C76 80                    3766 	.db 0x80
      004C77 E2                    3767 	.db 0xe2
      004C78 94                    3768 	.db 0x94
      004C79 80                    3769 	.db 0x80
      004C7A E2                    3770 	.db 0xe2
      004C7B 94                    3771 	.db 0x94
      004C7C 80                    3772 	.db 0x80
      004C7D E2                    3773 	.db 0xe2
      004C7E 94                    3774 	.db 0x94
      004C7F BC                    3775 	.db 0xbc
      004C80 E2                    3776 	.db 0xe2
      004C81 94                    3777 	.db 0x94
      004C82 80                    3778 	.db 0x80
      004C83 E2                    3779 	.db 0xe2
      004C84 94                    3780 	.db 0x94
      004C85 80                    3781 	.db 0x80
      004C86 E2                    3782 	.db 0xe2
      004C87 94                    3783 	.db 0x94
      004C88 80                    3784 	.db 0x80
      004C89 E2                    3785 	.db 0xe2
      004C8A 94                    3786 	.db 0x94
      004C8B 80                    3787 	.db 0x80
      004C8C E2                    3788 	.db 0xe2
      004C8D 94                    3789 	.db 0x94
      004C8E 80                    3790 	.db 0x80
      004C8F E2                    3791 	.db 0xe2
      004C90 94                    3792 	.db 0x94
      004C91 80                    3793 	.db 0x80
      004C92 E2                    3794 	.db 0xe2
      004C93 94                    3795 	.db 0x94
      004C94 80                    3796 	.db 0x80
      004C95 E2                    3797 	.db 0xe2
      004C96 94                    3798 	.db 0x94
      004C97 80                    3799 	.db 0x80
      004C98 E2                    3800 	.db 0xe2
      004C99 94                    3801 	.db 0x94
      004C9A 80                    3802 	.db 0x80
      004C9B E2                    3803 	.db 0xe2
      004C9C 94                    3804 	.db 0x94
      004C9D 80                    3805 	.db 0x80
      004C9E E2                    3806 	.db 0xe2
      004C9F 94                    3807 	.db 0x94
      004CA0 80                    3808 	.db 0x80
      004CA1 E2                    3809 	.db 0xe2
      004CA2 94                    3810 	.db 0x94
      004CA3 80                    3811 	.db 0x80
      004CA4 E2                    3812 	.db 0xe2
      004CA5 94                    3813 	.db 0x94
      004CA6 80                    3814 	.db 0x80
      004CA7 E2                    3815 	.db 0xe2
      004CA8 94                    3816 	.db 0x94
      004CA9 80                    3817 	.db 0x80
      004CAA E2                    3818 	.db 0xe2
      004CAB 94                    3819 	.db 0x94
      004CAC 80                    3820 	.db 0x80
      004CAD E2                    3821 	.db 0xe2
      004CAE 94                    3822 	.db 0x94
      004CAF 80                    3823 	.db 0x80
      004CB0 E2                    3824 	.db 0xe2
      004CB1 94                    3825 	.db 0x94
      004CB2 80                    3826 	.db 0x80
      004CB3 E2                    3827 	.db 0xe2
      004CB4 94                    3828 	.db 0x94
      004CB5 80                    3829 	.db 0x80
      004CB6 E2                    3830 	.db 0xe2
      004CB7 94                    3831 	.db 0x94
      004CB8 80                    3832 	.db 0x80
      004CB9 E2                    3833 	.db 0xe2
      004CBA 94                    3834 	.db 0x94
      004CBB 80                    3835 	.db 0x80
      004CBC E2                    3836 	.db 0xe2
      004CBD 94                    3837 	.db 0x94
      004CBE 80                    3838 	.db 0x80
      004CBF E2                    3839 	.db 0xe2
      004CC0 94                    3840 	.db 0x94
      004CC1 80                    3841 	.db 0x80
      004CC2 E2                    3842 	.db 0xe2
      004CC3 94                    3843 	.db 0x94
      004CC4 80                    3844 	.db 0x80
      004CC5 E2                    3845 	.db 0xe2
      004CC6 94                    3846 	.db 0x94
      004CC7 80                    3847 	.db 0x80
      004CC8 E2                    3848 	.db 0xe2
      004CC9 94                    3849 	.db 0x94
      004CCA 80                    3850 	.db 0x80
      004CCB E2                    3851 	.db 0xe2
      004CCC 94                    3852 	.db 0x94
      004CCD 80                    3853 	.db 0x80
      004CCE E2                    3854 	.db 0xe2
      004CCF 94                    3855 	.db 0x94
      004CD0 80                    3856 	.db 0x80
      004CD1 E2                    3857 	.db 0xe2
      004CD2 94                    3858 	.db 0x94
      004CD3 80                    3859 	.db 0x80
      004CD4 E2                    3860 	.db 0xe2
      004CD5 94                    3861 	.db 0x94
      004CD6 80                    3862 	.db 0x80
      004CD7 E2                    3863 	.db 0xe2
      004CD8 94                    3864 	.db 0x94
      004CD9 80                    3865 	.db 0x80
      004CDA E2                    3866 	.db 0xe2
      004CDB 94                    3867 	.db 0x94
      004CDC 80                    3868 	.db 0x80
      004CDD E2                    3869 	.db 0xe2
      004CDE 94                    3870 	.db 0x94
      004CDF 80                    3871 	.db 0x80
      004CE0 E2                    3872 	.db 0xe2
      004CE1 94                    3873 	.db 0x94
      004CE2 80                    3874 	.db 0x80
      004CE3 E2                    3875 	.db 0xe2
      004CE4 94                    3876 	.db 0x94
      004CE5 80                    3877 	.db 0x80
      004CE6 E2                    3878 	.db 0xe2
      004CE7 94                    3879 	.db 0x94
      004CE8 80                    3880 	.db 0x80
      004CE9 E2                    3881 	.db 0xe2
      004CEA 94                    3882 	.db 0x94
      004CEB 80                    3883 	.db 0x80
      004CEC E2                    3884 	.db 0xe2
      004CED 94                    3885 	.db 0x94
      004CEE 80                    3886 	.db 0x80
      004CEF E2                    3887 	.db 0xe2
      004CF0 94                    3888 	.db 0x94
      004CF1 80                    3889 	.db 0x80
      004CF2 E2                    3890 	.db 0xe2
      004CF3 94                    3891 	.db 0x94
      004CF4 80                    3892 	.db 0x80
      004CF5 E2                    3893 	.db 0xe2
      004CF6 94                    3894 	.db 0x94
      004CF7 80                    3895 	.db 0x80
      004CF8 E2                    3896 	.db 0xe2
      004CF9 94                    3897 	.db 0x94
      004CFA 80                    3898 	.db 0x80
      004CFB E2                    3899 	.db 0xe2
      004CFC 94                    3900 	.db 0x94
      004CFD 80                    3901 	.db 0x80
      004CFE E2                    3902 	.db 0xe2
      004CFF 94                    3903 	.db 0x94
      004D00 80                    3904 	.db 0x80
      004D01 E2                    3905 	.db 0xe2
      004D02 94                    3906 	.db 0x94
      004D03 80                    3907 	.db 0x80
      004D04 E2                    3908 	.db 0xe2
      004D05 94                    3909 	.db 0x94
      004D06 A4                    3910 	.db 0xa4
      004D07 0A                    3911 	.db 0x0a
      004D08 0D                    3912 	.db 0x0d
      004D09 00                    3913 	.db 0x00
                                   3914 	.area CSEG    (CODE)
                                   3915 	.area CONST   (CODE)
      004D0A                       3916 ___str_6:
      004D0A E2                    3917 	.db 0xe2
      004D0B 94                    3918 	.db 0x94
      004D0C 82                    3919 	.db 0x82
      004D0D 20 20 20 20 20 52 20  3920 	.ascii "     R      "
             20 20 20 20 20
      004D19 E2                    3921 	.db 0xe2
      004D1A 94                    3922 	.db 0x94
      004D1B 82                    3923 	.db 0x82
      004D1C 20 52 65 61 64 20 66  3924 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004D48 E2                    3925 	.db 0xe2
      004D49 94                    3926 	.db 0x94
      004D4A 82                    3927 	.db 0x82
      004D4B 0A                    3928 	.db 0x0a
      004D4C 0D                    3929 	.db 0x0d
      004D4D 00                    3930 	.db 0x00
                                   3931 	.area CSEG    (CODE)
                                   3932 	.area CONST   (CODE)
      004D4E                       3933 ___str_7:
      004D4E E2                    3934 	.db 0xe2
      004D4F 94                    3935 	.db 0x94
      004D50 82                    3936 	.db 0x82
      004D51 20 20 20 20 20 57 20  3937 	.ascii "     W      "
             20 20 20 20 20
      004D5D E2                    3938 	.db 0xe2
      004D5E 94                    3939 	.db 0x94
      004D5F 82                    3940 	.db 0x82
      004D60 20 57 72 69 74 65 20  3941 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004D8C E2                    3942 	.db 0xe2
      004D8D 94                    3943 	.db 0x94
      004D8E 82                    3944 	.db 0x82
      004D8F 0A                    3945 	.db 0x0a
      004D90 0D                    3946 	.db 0x0d
      004D91 00                    3947 	.db 0x00
                                   3948 	.area CSEG    (CODE)
                                   3949 	.area CONST   (CODE)
      004D92                       3950 ___str_8:
      004D92 E2                    3951 	.db 0xe2
      004D93 94                    3952 	.db 0x94
      004D94 82                    3953 	.db 0x82
      004D95 20 20 20 20 20 48 20  3954 	.ascii "     H      "
             20 20 20 20 20
      004DA1 E2                    3955 	.db 0xe2
      004DA2 94                    3956 	.db 0x94
      004DA3 82                    3957 	.db 0x82
      004DA4 20 44 69 73 70 6C 61  3958 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004DD0 E2                    3959 	.db 0xe2
      004DD1 94                    3960 	.db 0x94
      004DD2 82                    3961 	.db 0x82
      004DD3 0A                    3962 	.db 0x0a
      004DD4 0D                    3963 	.db 0x0d
      004DD5 00                    3964 	.db 0x00
                                   3965 	.area CSEG    (CODE)
                                   3966 	.area CONST   (CODE)
      004DD6                       3967 ___str_9:
      004DD6 E2                    3968 	.db 0xe2
      004DD7 94                    3969 	.db 0x94
      004DD8 82                    3970 	.db 0x82
      004DD9 20 20 20 20 20 58 20  3971 	.ascii "     X      "
             20 20 20 20 20
      004DE5 E2                    3972 	.db 0xe2
      004DE6 94                    3973 	.db 0x94
      004DE7 82                    3974 	.db 0x82
      004DE8 20 52 65 73 65 74 20  3975 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004E14 E2                    3976 	.db 0xe2
      004E15 94                    3977 	.db 0x94
      004E16 82                    3978 	.db 0x82
      004E17 0A                    3979 	.db 0x0a
      004E18 0D                    3980 	.db 0x0d
      004E19 00                    3981 	.db 0x00
                                   3982 	.area CSEG    (CODE)
                                   3983 	.area CONST   (CODE)
      004E1A                       3984 ___str_10:
      004E1A E2                    3985 	.db 0xe2
      004E1B 94                    3986 	.db 0x94
      004E1C 82                    3987 	.db 0x82
      004E1D 20 20 20 20 20 3F 20  3988 	.ascii "     ?      "
             20 20 20 20 20
      004E29 E2                    3989 	.db 0xe2
      004E2A 94                    3990 	.db 0x94
      004E2B 82                    3991 	.db 0x82
      004E2C 20 44 69 73 70 6C 61  3992 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004E58 E2                    3993 	.db 0xe2
      004E59 94                    3994 	.db 0x94
      004E5A 82                    3995 	.db 0x82
      004E5B 0A                    3996 	.db 0x0a
      004E5C 0D                    3997 	.db 0x0d
      004E5D 00                    3998 	.db 0x00
                                   3999 	.area CSEG    (CODE)
                                   4000 	.area CONST   (CODE)
      004E5E                       4001 ___str_11:
      004E5E E2                    4002 	.db 0xe2
      004E5F 94                    4003 	.db 0x94
      004E60 82                    4004 	.db 0x82
      004E61 20 20 20 20 20 51 20  4005 	.ascii "     Q      "
             20 20 20 20 20
      004E6D E2                    4006 	.db 0xe2
      004E6E 94                    4007 	.db 0x94
      004E6F 82                    4008 	.db 0x82
      004E70 20 51 75 69 74 20 70  4009 	.ascii " Quit program                               "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004E9C E2                    4010 	.db 0xe2
      004E9D 94                    4011 	.db 0x94
      004E9E 82                    4012 	.db 0x82
      004E9F 0A                    4013 	.db 0x0a
      004EA0 0D                    4014 	.db 0x0d
      004EA1 00                    4015 	.db 0x00
                                   4016 	.area CSEG    (CODE)
                                   4017 	.area CONST   (CODE)
      004EA2                       4018 ___str_12:
      004EA2 E2                    4019 	.db 0xe2
      004EA3 94                    4020 	.db 0x94
      004EA4 94                    4021 	.db 0x94
      004EA5 E2                    4022 	.db 0xe2
      004EA6 94                    4023 	.db 0x94
      004EA7 80                    4024 	.db 0x80
      004EA8 E2                    4025 	.db 0xe2
      004EA9 94                    4026 	.db 0x94
      004EAA 80                    4027 	.db 0x80
      004EAB E2                    4028 	.db 0xe2
      004EAC 94                    4029 	.db 0x94
      004EAD 80                    4030 	.db 0x80
      004EAE E2                    4031 	.db 0xe2
      004EAF 94                    4032 	.db 0x94
      004EB0 80                    4033 	.db 0x80
      004EB1 E2                    4034 	.db 0xe2
      004EB2 94                    4035 	.db 0x94
      004EB3 80                    4036 	.db 0x80
      004EB4 E2                    4037 	.db 0xe2
      004EB5 94                    4038 	.db 0x94
      004EB6 80                    4039 	.db 0x80
      004EB7 E2                    4040 	.db 0xe2
      004EB8 94                    4041 	.db 0x94
      004EB9 80                    4042 	.db 0x80
      004EBA E2                    4043 	.db 0xe2
      004EBB 94                    4044 	.db 0x94
      004EBC 80                    4045 	.db 0x80
      004EBD E2                    4046 	.db 0xe2
      004EBE 94                    4047 	.db 0x94
      004EBF 80                    4048 	.db 0x80
      004EC0 E2                    4049 	.db 0xe2
      004EC1 94                    4050 	.db 0x94
      004EC2 80                    4051 	.db 0x80
      004EC3 E2                    4052 	.db 0xe2
      004EC4 94                    4053 	.db 0x94
      004EC5 80                    4054 	.db 0x80
      004EC6 E2                    4055 	.db 0xe2
      004EC7 94                    4056 	.db 0x94
      004EC8 80                    4057 	.db 0x80
      004EC9 E2                    4058 	.db 0xe2
      004ECA 94                    4059 	.db 0x94
      004ECB B4                    4060 	.db 0xb4
      004ECC E2                    4061 	.db 0xe2
      004ECD 94                    4062 	.db 0x94
      004ECE 80                    4063 	.db 0x80
      004ECF E2                    4064 	.db 0xe2
      004ED0 94                    4065 	.db 0x94
      004ED1 80                    4066 	.db 0x80
      004ED2 E2                    4067 	.db 0xe2
      004ED3 94                    4068 	.db 0x94
      004ED4 80                    4069 	.db 0x80
      004ED5 E2                    4070 	.db 0xe2
      004ED6 94                    4071 	.db 0x94
      004ED7 80                    4072 	.db 0x80
      004ED8 E2                    4073 	.db 0xe2
      004ED9 94                    4074 	.db 0x94
      004EDA 80                    4075 	.db 0x80
      004EDB E2                    4076 	.db 0xe2
      004EDC 94                    4077 	.db 0x94
      004EDD 80                    4078 	.db 0x80
      004EDE E2                    4079 	.db 0xe2
      004EDF 94                    4080 	.db 0x94
      004EE0 80                    4081 	.db 0x80
      004EE1 E2                    4082 	.db 0xe2
      004EE2 94                    4083 	.db 0x94
      004EE3 80                    4084 	.db 0x80
      004EE4 E2                    4085 	.db 0xe2
      004EE5 94                    4086 	.db 0x94
      004EE6 80                    4087 	.db 0x80
      004EE7 E2                    4088 	.db 0xe2
      004EE8 94                    4089 	.db 0x94
      004EE9 80                    4090 	.db 0x80
      004EEA E2                    4091 	.db 0xe2
      004EEB 94                    4092 	.db 0x94
      004EEC 80                    4093 	.db 0x80
      004EED E2                    4094 	.db 0xe2
      004EEE 94                    4095 	.db 0x94
      004EEF 80                    4096 	.db 0x80
      004EF0 E2                    4097 	.db 0xe2
      004EF1 94                    4098 	.db 0x94
      004EF2 80                    4099 	.db 0x80
      004EF3 E2                    4100 	.db 0xe2
      004EF4 94                    4101 	.db 0x94
      004EF5 80                    4102 	.db 0x80
      004EF6 E2                    4103 	.db 0xe2
      004EF7 94                    4104 	.db 0x94
      004EF8 80                    4105 	.db 0x80
      004EF9 E2                    4106 	.db 0xe2
      004EFA 94                    4107 	.db 0x94
      004EFB 80                    4108 	.db 0x80
      004EFC E2                    4109 	.db 0xe2
      004EFD 94                    4110 	.db 0x94
      004EFE 80                    4111 	.db 0x80
      004EFF E2                    4112 	.db 0xe2
      004F00 94                    4113 	.db 0x94
      004F01 80                    4114 	.db 0x80
      004F02 E2                    4115 	.db 0xe2
      004F03 94                    4116 	.db 0x94
      004F04 80                    4117 	.db 0x80
      004F05 E2                    4118 	.db 0xe2
      004F06 94                    4119 	.db 0x94
      004F07 80                    4120 	.db 0x80
      004F08 E2                    4121 	.db 0xe2
      004F09 94                    4122 	.db 0x94
      004F0A 80                    4123 	.db 0x80
      004F0B E2                    4124 	.db 0xe2
      004F0C 94                    4125 	.db 0x94
      004F0D 80                    4126 	.db 0x80
      004F0E E2                    4127 	.db 0xe2
      004F0F 94                    4128 	.db 0x94
      004F10 80                    4129 	.db 0x80
      004F11 E2                    4130 	.db 0xe2
      004F12 94                    4131 	.db 0x94
      004F13 80                    4132 	.db 0x80
      004F14 E2                    4133 	.db 0xe2
      004F15 94                    4134 	.db 0x94
      004F16 80                    4135 	.db 0x80
      004F17 E2                    4136 	.db 0xe2
      004F18 94                    4137 	.db 0x94
      004F19 80                    4138 	.db 0x80
      004F1A E2                    4139 	.db 0xe2
      004F1B 94                    4140 	.db 0x94
      004F1C 80                    4141 	.db 0x80
      004F1D E2                    4142 	.db 0xe2
      004F1E 94                    4143 	.db 0x94
      004F1F 80                    4144 	.db 0x80
      004F20 E2                    4145 	.db 0xe2
      004F21 94                    4146 	.db 0x94
      004F22 80                    4147 	.db 0x80
      004F23 E2                    4148 	.db 0xe2
      004F24 94                    4149 	.db 0x94
      004F25 80                    4150 	.db 0x80
      004F26 E2                    4151 	.db 0xe2
      004F27 94                    4152 	.db 0x94
      004F28 80                    4153 	.db 0x80
      004F29 E2                    4154 	.db 0xe2
      004F2A 94                    4155 	.db 0x94
      004F2B 80                    4156 	.db 0x80
      004F2C E2                    4157 	.db 0xe2
      004F2D 94                    4158 	.db 0x94
      004F2E 80                    4159 	.db 0x80
      004F2F E2                    4160 	.db 0xe2
      004F30 94                    4161 	.db 0x94
      004F31 80                    4162 	.db 0x80
      004F32 E2                    4163 	.db 0xe2
      004F33 94                    4164 	.db 0x94
      004F34 80                    4165 	.db 0x80
      004F35 E2                    4166 	.db 0xe2
      004F36 94                    4167 	.db 0x94
      004F37 80                    4168 	.db 0x80
      004F38 E2                    4169 	.db 0xe2
      004F39 94                    4170 	.db 0x94
      004F3A 80                    4171 	.db 0x80
      004F3B E2                    4172 	.db 0xe2
      004F3C 94                    4173 	.db 0x94
      004F3D 80                    4174 	.db 0x80
      004F3E E2                    4175 	.db 0xe2
      004F3F 94                    4176 	.db 0x94
      004F40 80                    4177 	.db 0x80
      004F41 E2                    4178 	.db 0xe2
      004F42 94                    4179 	.db 0x94
      004F43 80                    4180 	.db 0x80
      004F44 E2                    4181 	.db 0xe2
      004F45 94                    4182 	.db 0x94
      004F46 80                    4183 	.db 0x80
      004F47 E2                    4184 	.db 0xe2
      004F48 94                    4185 	.db 0x94
      004F49 80                    4186 	.db 0x80
      004F4A E2                    4187 	.db 0xe2
      004F4B 94                    4188 	.db 0x94
      004F4C 80                    4189 	.db 0x80
      004F4D E2                    4190 	.db 0xe2
      004F4E 94                    4191 	.db 0x94
      004F4F 80                    4192 	.db 0x80
      004F50 E2                    4193 	.db 0xe2
      004F51 94                    4194 	.db 0x94
      004F52 98                    4195 	.db 0x98
      004F53 0A                    4196 	.db 0x0a
      004F54 0D                    4197 	.db 0x0d
      004F55 00                    4198 	.db 0x00
                                   4199 	.area CSEG    (CODE)
                                   4200 	.area CONST   (CODE)
      004F56                       4201 ___str_13:
      004F56 7C 20 24 20 25 63     4202 	.ascii "| $ %c"
      004F5C 0A                    4203 	.db 0x0a
      004F5D 0D                    4204 	.db 0x0d
      004F5E 00                    4205 	.db 0x00
                                   4206 	.area CSEG    (CODE)
                                   4207 	.area CONST   (CODE)
      004F5F                       4208 ___str_14:
      004F5F 0A                    4209 	.db 0x0a
      004F60 0D                    4210 	.db 0x0d
      004F61 00                    4211 	.db 0x00
                                   4212 	.area CSEG    (CODE)
                                   4213 	.area CONST   (CODE)
      004F62                       4214 ___str_15:
      004F62 0A                    4215 	.db 0x0a
      004F63 E2                    4216 	.db 0xe2
      004F64 94                    4217 	.db 0x94
      004F65 8C                    4218 	.db 0x8c
      004F66 E2                    4219 	.db 0xe2
      004F67 94                    4220 	.db 0x94
      004F68 80                    4221 	.db 0x80
      004F69 E2                    4222 	.db 0xe2
      004F6A 94                    4223 	.db 0x94
      004F6B 80                    4224 	.db 0x80
      004F6C E2                    4225 	.db 0xe2
      004F6D 94                    4226 	.db 0x94
      004F6E 80                    4227 	.db 0x80
      004F6F E2                    4228 	.db 0xe2
      004F70 94                    4229 	.db 0x94
      004F71 80                    4230 	.db 0x80
      004F72 E2                    4231 	.db 0xe2
      004F73 94                    4232 	.db 0x94
      004F74 80                    4233 	.db 0x80
      004F75 E2                    4234 	.db 0xe2
      004F76 94                    4235 	.db 0x94
      004F77 80                    4236 	.db 0x80
      004F78 E2                    4237 	.db 0xe2
      004F79 94                    4238 	.db 0x94
      004F7A 80                    4239 	.db 0x80
      004F7B E2                    4240 	.db 0xe2
      004F7C 94                    4241 	.db 0x94
      004F7D 80                    4242 	.db 0x80
      004F7E E2                    4243 	.db 0xe2
      004F7F 94                    4244 	.db 0x94
      004F80 80                    4245 	.db 0x80
      004F81 E2                    4246 	.db 0xe2
      004F82 94                    4247 	.db 0x94
      004F83 80                    4248 	.db 0x80
      004F84 E2                    4249 	.db 0xe2
      004F85 94                    4250 	.db 0x94
      004F86 80                    4251 	.db 0x80
      004F87 E2                    4252 	.db 0xe2
      004F88 94                    4253 	.db 0x94
      004F89 80                    4254 	.db 0x80
      004F8A E2                    4255 	.db 0xe2
      004F8B 94                    4256 	.db 0x94
      004F8C 80                    4257 	.db 0x80
      004F8D E2                    4258 	.db 0xe2
      004F8E 94                    4259 	.db 0x94
      004F8F 80                    4260 	.db 0x80
      004F90 E2                    4261 	.db 0xe2
      004F91 94                    4262 	.db 0x94
      004F92 80                    4263 	.db 0x80
      004F93 20 57 52 49 54 45 20  4264 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      004FA4 E2                    4265 	.db 0xe2
      004FA5 94                    4266 	.db 0x94
      004FA6 80                    4267 	.db 0x80
      004FA7 E2                    4268 	.db 0xe2
      004FA8 94                    4269 	.db 0x94
      004FA9 80                    4270 	.db 0x80
      004FAA E2                    4271 	.db 0xe2
      004FAB 94                    4272 	.db 0x94
      004FAC 80                    4273 	.db 0x80
      004FAD E2                    4274 	.db 0xe2
      004FAE 94                    4275 	.db 0x94
      004FAF 80                    4276 	.db 0x80
      004FB0 E2                    4277 	.db 0xe2
      004FB1 94                    4278 	.db 0x94
      004FB2 80                    4279 	.db 0x80
      004FB3 E2                    4280 	.db 0xe2
      004FB4 94                    4281 	.db 0x94
      004FB5 80                    4282 	.db 0x80
      004FB6 E2                    4283 	.db 0xe2
      004FB7 94                    4284 	.db 0x94
      004FB8 80                    4285 	.db 0x80
      004FB9 E2                    4286 	.db 0xe2
      004FBA 94                    4287 	.db 0x94
      004FBB 80                    4288 	.db 0x80
      004FBC E2                    4289 	.db 0xe2
      004FBD 94                    4290 	.db 0x94
      004FBE 80                    4291 	.db 0x80
      004FBF E2                    4292 	.db 0xe2
      004FC0 94                    4293 	.db 0x94
      004FC1 80                    4294 	.db 0x80
      004FC2 E2                    4295 	.db 0xe2
      004FC3 94                    4296 	.db 0x94
      004FC4 80                    4297 	.db 0x80
      004FC5 E2                    4298 	.db 0xe2
      004FC6 94                    4299 	.db 0x94
      004FC7 80                    4300 	.db 0x80
      004FC8 E2                    4301 	.db 0xe2
      004FC9 94                    4302 	.db 0x94
      004FCA 80                    4303 	.db 0x80
      004FCB E2                    4304 	.db 0xe2
      004FCC 94                    4305 	.db 0x94
      004FCD 80                    4306 	.db 0x80
      004FCE E2                    4307 	.db 0xe2
      004FCF 94                    4308 	.db 0x94
      004FD0 90                    4309 	.db 0x90
      004FD1 0A                    4310 	.db 0x0a
      004FD2 0D                    4311 	.db 0x0d
      004FD3 00                    4312 	.db 0x00
                                   4313 	.area CSEG    (CODE)
                                   4314 	.area CONST   (CODE)
      004FD4                       4315 ___str_16:
      004FD4 0A                    4316 	.db 0x0a
      004FD5 E2                    4317 	.db 0xe2
      004FD6 94                    4318 	.db 0x94
      004FD7 8C                    4319 	.db 0x8c
      004FD8 E2                    4320 	.db 0xe2
      004FD9 94                    4321 	.db 0x94
      004FDA 80                    4322 	.db 0x80
      004FDB E2                    4323 	.db 0xe2
      004FDC 94                    4324 	.db 0x94
      004FDD 80                    4325 	.db 0x80
      004FDE E2                    4326 	.db 0xe2
      004FDF 94                    4327 	.db 0x94
      004FE0 80                    4328 	.db 0x80
      004FE1 E2                    4329 	.db 0xe2
      004FE2 94                    4330 	.db 0x94
      004FE3 80                    4331 	.db 0x80
      004FE4 E2                    4332 	.db 0xe2
      004FE5 94                    4333 	.db 0x94
      004FE6 80                    4334 	.db 0x80
      004FE7 E2                    4335 	.db 0xe2
      004FE8 94                    4336 	.db 0x94
      004FE9 80                    4337 	.db 0x80
      004FEA E2                    4338 	.db 0xe2
      004FEB 94                    4339 	.db 0x94
      004FEC 80                    4340 	.db 0x80
      004FED E2                    4341 	.db 0xe2
      004FEE 94                    4342 	.db 0x94
      004FEF 80                    4343 	.db 0x80
      004FF0 E2                    4344 	.db 0xe2
      004FF1 94                    4345 	.db 0x94
      004FF2 80                    4346 	.db 0x80
      004FF3 E2                    4347 	.db 0xe2
      004FF4 94                    4348 	.db 0x94
      004FF5 80                    4349 	.db 0x80
      004FF6 E2                    4350 	.db 0xe2
      004FF7 94                    4351 	.db 0x94
      004FF8 80                    4352 	.db 0x80
      004FF9 E2                    4353 	.db 0xe2
      004FFA 94                    4354 	.db 0x94
      004FFB 80                    4355 	.db 0x80
      004FFC E2                    4356 	.db 0xe2
      004FFD 94                    4357 	.db 0x94
      004FFE 80                    4358 	.db 0x80
      004FFF E2                    4359 	.db 0xe2
      005000 94                    4360 	.db 0x94
      005001 80                    4361 	.db 0x80
      005002 E2                    4362 	.db 0xe2
      005003 94                    4363 	.db 0x94
      005004 80                    4364 	.db 0x80
      005005 20 52 45 41 44 20 4F  4365 	.ascii " READ OPERATION "
             50 45 52 41 54 49 4F
             4E 20
      005015 E2                    4366 	.db 0xe2
      005016 94                    4367 	.db 0x94
      005017 80                    4368 	.db 0x80
      005018 E2                    4369 	.db 0xe2
      005019 94                    4370 	.db 0x94
      00501A 80                    4371 	.db 0x80
      00501B E2                    4372 	.db 0xe2
      00501C 94                    4373 	.db 0x94
      00501D 80                    4374 	.db 0x80
      00501E E2                    4375 	.db 0xe2
      00501F 94                    4376 	.db 0x94
      005020 80                    4377 	.db 0x80
      005021 E2                    4378 	.db 0xe2
      005022 94                    4379 	.db 0x94
      005023 80                    4380 	.db 0x80
      005024 E2                    4381 	.db 0xe2
      005025 94                    4382 	.db 0x94
      005026 80                    4383 	.db 0x80
      005027 E2                    4384 	.db 0xe2
      005028 94                    4385 	.db 0x94
      005029 80                    4386 	.db 0x80
      00502A E2                    4387 	.db 0xe2
      00502B 94                    4388 	.db 0x94
      00502C 80                    4389 	.db 0x80
      00502D E2                    4390 	.db 0xe2
      00502E 94                    4391 	.db 0x94
      00502F 80                    4392 	.db 0x80
      005030 E2                    4393 	.db 0xe2
      005031 94                    4394 	.db 0x94
      005032 80                    4395 	.db 0x80
      005033 E2                    4396 	.db 0xe2
      005034 94                    4397 	.db 0x94
      005035 80                    4398 	.db 0x80
      005036 E2                    4399 	.db 0xe2
      005037 94                    4400 	.db 0x94
      005038 80                    4401 	.db 0x80
      005039 E2                    4402 	.db 0xe2
      00503A 94                    4403 	.db 0x94
      00503B 80                    4404 	.db 0x80
      00503C E2                    4405 	.db 0xe2
      00503D 94                    4406 	.db 0x94
      00503E 80                    4407 	.db 0x80
      00503F E2                    4408 	.db 0xe2
      005040 94                    4409 	.db 0x94
      005041 80                    4410 	.db 0x80
      005042 E2                    4411 	.db 0xe2
      005043 94                    4412 	.db 0x94
      005044 90                    4413 	.db 0x90
      005045 0A                    4414 	.db 0x0a
      005046 0D                    4415 	.db 0x0d
      005047 00                    4416 	.db 0x00
                                   4417 	.area CSEG    (CODE)
                                   4418 	.area CONST   (CODE)
      005048                       4419 ___str_17:
      005048 7C 20 52 65 61 64 69  4420 	.ascii "| Reading from Address 0x%03X           |"
             6E 67 20 66 72 6F 6D
             20 41 64 64 72 65 73
             73 20 30 78 25 30 33
             58 20 20 20 20 20 20
             20 20 20 20 20 7C
      005071 0A                    4421 	.db 0x0a
      005072 0D                    4422 	.db 0x0d
      005073 00                    4423 	.db 0x00
                                   4424 	.area CSEG    (CODE)
                                   4425 	.area CONST   (CODE)
      005074                       4426 ___str_18:
      005074 0A                    4427 	.db 0x0a
      005075 E2                    4428 	.db 0xe2
      005076 94                    4429 	.db 0x94
      005077 8C                    4430 	.db 0x8c
      005078 E2                    4431 	.db 0xe2
      005079 94                    4432 	.db 0x94
      00507A 80                    4433 	.db 0x80
      00507B E2                    4434 	.db 0xe2
      00507C 94                    4435 	.db 0x94
      00507D 80                    4436 	.db 0x80
      00507E E2                    4437 	.db 0xe2
      00507F 94                    4438 	.db 0x94
      005080 80                    4439 	.db 0x80
      005081 E2                    4440 	.db 0xe2
      005082 94                    4441 	.db 0x94
      005083 80                    4442 	.db 0x80
      005084 E2                    4443 	.db 0xe2
      005085 94                    4444 	.db 0x94
      005086 80                    4445 	.db 0x80
      005087 E2                    4446 	.db 0xe2
      005088 94                    4447 	.db 0x94
      005089 80                    4448 	.db 0x80
      00508A E2                    4449 	.db 0xe2
      00508B 94                    4450 	.db 0x94
      00508C 80                    4451 	.db 0x80
      00508D E2                    4452 	.db 0xe2
      00508E 94                    4453 	.db 0x94
      00508F 80                    4454 	.db 0x80
      005090 E2                    4455 	.db 0xe2
      005091 94                    4456 	.db 0x94
      005092 80                    4457 	.db 0x80
      005093 E2                    4458 	.db 0xe2
      005094 94                    4459 	.db 0x94
      005095 80                    4460 	.db 0x80
      005096 E2                    4461 	.db 0xe2
      005097 94                    4462 	.db 0x94
      005098 80                    4463 	.db 0x80
      005099 E2                    4464 	.db 0xe2
      00509A 94                    4465 	.db 0x94
      00509B 80                    4466 	.db 0x80
      00509C E2                    4467 	.db 0xe2
      00509D 94                    4468 	.db 0x94
      00509E 80                    4469 	.db 0x80
      00509F E2                    4470 	.db 0xe2
      0050A0 94                    4471 	.db 0x94
      0050A1 80                    4472 	.db 0x80
      0050A2 E2                    4473 	.db 0xe2
      0050A3 94                    4474 	.db 0x94
      0050A4 80                    4475 	.db 0x80
      0050A5 20 52 45 53 45 54 20  4476 	.ascii " RESET OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      0050B6 E2                    4477 	.db 0xe2
      0050B7 94                    4478 	.db 0x94
      0050B8 80                    4479 	.db 0x80
      0050B9 E2                    4480 	.db 0xe2
      0050BA 94                    4481 	.db 0x94
      0050BB 80                    4482 	.db 0x80
      0050BC E2                    4483 	.db 0xe2
      0050BD 94                    4484 	.db 0x94
      0050BE 80                    4485 	.db 0x80
      0050BF E2                    4486 	.db 0xe2
      0050C0 94                    4487 	.db 0x94
      0050C1 80                    4488 	.db 0x80
      0050C2 E2                    4489 	.db 0xe2
      0050C3 94                    4490 	.db 0x94
      0050C4 80                    4491 	.db 0x80
      0050C5 E2                    4492 	.db 0xe2
      0050C6 94                    4493 	.db 0x94
      0050C7 80                    4494 	.db 0x80
      0050C8 E2                    4495 	.db 0xe2
      0050C9 94                    4496 	.db 0x94
      0050CA 80                    4497 	.db 0x80
      0050CB E2                    4498 	.db 0xe2
      0050CC 94                    4499 	.db 0x94
      0050CD 80                    4500 	.db 0x80
      0050CE E2                    4501 	.db 0xe2
      0050CF 94                    4502 	.db 0x94
      0050D0 80                    4503 	.db 0x80
      0050D1 E2                    4504 	.db 0xe2
      0050D2 94                    4505 	.db 0x94
      0050D3 80                    4506 	.db 0x80
      0050D4 E2                    4507 	.db 0xe2
      0050D5 94                    4508 	.db 0x94
      0050D6 80                    4509 	.db 0x80
      0050D7 E2                    4510 	.db 0xe2
      0050D8 94                    4511 	.db 0x94
      0050D9 90                    4512 	.db 0x90
      0050DA 0A                    4513 	.db 0x0a
      0050DB 0D                    4514 	.db 0x0d
      0050DC 00                    4515 	.db 0x00
                                   4516 	.area CSEG    (CODE)
                                   4517 	.area CONST   (CODE)
      0050DD                       4518 ___str_19:
      0050DD 0A                    4519 	.db 0x0a
      0050DE E2                    4520 	.db 0xe2
      0050DF 94                    4521 	.db 0x94
      0050E0 8C                    4522 	.db 0x8c
      0050E1 E2                    4523 	.db 0xe2
      0050E2 94                    4524 	.db 0x94
      0050E3 80                    4525 	.db 0x80
      0050E4 E2                    4526 	.db 0xe2
      0050E5 94                    4527 	.db 0x94
      0050E6 80                    4528 	.db 0x80
      0050E7 E2                    4529 	.db 0xe2
      0050E8 94                    4530 	.db 0x94
      0050E9 80                    4531 	.db 0x80
      0050EA E2                    4532 	.db 0xe2
      0050EB 94                    4533 	.db 0x94
      0050EC 80                    4534 	.db 0x80
      0050ED E2                    4535 	.db 0xe2
      0050EE 94                    4536 	.db 0x94
      0050EF 80                    4537 	.db 0x80
      0050F0 E2                    4538 	.db 0xe2
      0050F1 94                    4539 	.db 0x94
      0050F2 80                    4540 	.db 0x80
      0050F3 E2                    4541 	.db 0xe2
      0050F4 94                    4542 	.db 0x94
      0050F5 80                    4543 	.db 0x80
      0050F6 E2                    4544 	.db 0xe2
      0050F7 94                    4545 	.db 0x94
      0050F8 80                    4546 	.db 0x80
      0050F9 E2                    4547 	.db 0xe2
      0050FA 94                    4548 	.db 0x94
      0050FB 80                    4549 	.db 0x80
      0050FC E2                    4550 	.db 0xe2
      0050FD 94                    4551 	.db 0x94
      0050FE 80                    4552 	.db 0x80
      0050FF E2                    4553 	.db 0xe2
      005100 94                    4554 	.db 0x94
      005101 80                    4555 	.db 0x80
      005102 E2                    4556 	.db 0xe2
      005103 94                    4557 	.db 0x94
      005104 80                    4558 	.db 0x80
      005105 E2                    4559 	.db 0xe2
      005106 94                    4560 	.db 0x94
      005107 80                    4561 	.db 0x80
      005108 20 48 45 58 20 44 55  4562 	.ascii " HEX DUMP OPERATION "
             4D 50 20 4F 50 45 52
             41 54 49 4F 4E 20
      00511C E2                    4563 	.db 0xe2
      00511D 94                    4564 	.db 0x94
      00511E 80                    4565 	.db 0x80
      00511F E2                    4566 	.db 0xe2
      005120 94                    4567 	.db 0x94
      005121 80                    4568 	.db 0x80
      005122 E2                    4569 	.db 0xe2
      005123 94                    4570 	.db 0x94
      005124 80                    4571 	.db 0x80
      005125 E2                    4572 	.db 0xe2
      005126 94                    4573 	.db 0x94
      005127 80                    4574 	.db 0x80
      005128 E2                    4575 	.db 0xe2
      005129 94                    4576 	.db 0x94
      00512A 80                    4577 	.db 0x80
      00512B E2                    4578 	.db 0xe2
      00512C 94                    4579 	.db 0x94
      00512D 80                    4580 	.db 0x80
      00512E E2                    4581 	.db 0xe2
      00512F 94                    4582 	.db 0x94
      005130 80                    4583 	.db 0x80
      005131 E2                    4584 	.db 0xe2
      005132 94                    4585 	.db 0x94
      005133 80                    4586 	.db 0x80
      005134 E2                    4587 	.db 0xe2
      005135 94                    4588 	.db 0x94
      005136 80                    4589 	.db 0x80
      005137 E2                    4590 	.db 0xe2
      005138 94                    4591 	.db 0x94
      005139 80                    4592 	.db 0x80
      00513A E2                    4593 	.db 0xe2
      00513B 94                    4594 	.db 0x94
      00513C 80                    4595 	.db 0x80
      00513D E2                    4596 	.db 0xe2
      00513E 94                    4597 	.db 0x94
      00513F 80                    4598 	.db 0x80
      005140 E2                    4599 	.db 0xe2
      005141 94                    4600 	.db 0x94
      005142 80                    4601 	.db 0x80
      005143 E2                    4602 	.db 0xe2
      005144 94                    4603 	.db 0x94
      005145 80                    4604 	.db 0x80
      005146 E2                    4605 	.db 0xe2
      005147 94                    4606 	.db 0x94
      005148 80                    4607 	.db 0x80
      005149 E2                    4608 	.db 0xe2
      00514A 94                    4609 	.db 0x94
      00514B 90                    4610 	.db 0x90
      00514C 0A                    4611 	.db 0x0a
      00514D 0D                    4612 	.db 0x0d
      00514E 00                    4613 	.db 0x00
                                   4614 	.area CSEG    (CODE)
                                   4615 	.area CONST   (CODE)
      00514F                       4616 ___str_20:
      00514F 49 4E 56 41 4C 49 44  4617 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      00515C 0A                    4618 	.db 0x0a
      00515D 0D                    4619 	.db 0x0d
      00515E 00                    4620 	.db 0x00
                                   4621 	.area CSEG    (CODE)
                                   4622 	.area CONST   (CODE)
      00515F                       4623 ___str_21:
      00515F E2                    4624 	.db 0xe2
      005160 94                    4625 	.db 0x94
      005161 82                    4626 	.db 0x82
      005162 20 45 6E 74 65 72 20  4627 	.ascii " Enter address (hex, up to 3 characters): "
             61 64 64 72 65 73 73
             20 28 68 65 78 2C 20
             75 70 20 74 6F 20 33
             20 63 68 61 72 61 63
             74 65 72 73 29 3A 20
      00518C 0A                    4628 	.db 0x0a
      00518D 0D                    4629 	.db 0x0d
      00518E 7C                    4630 	.ascii "|"
      00518F 00                    4631 	.db 0x00
                                   4632 	.area CSEG    (CODE)
                                   4633 	.area CONST   (CODE)
      005190                       4634 ___str_22:
      005190 7C 20 24 20           4635 	.ascii "| $ "
      005194 00                    4636 	.db 0x00
                                   4637 	.area CSEG    (CODE)
                                   4638 	.area CONST   (CODE)
      005195                       4639 ___str_23:
      005195 0A                    4640 	.db 0x0a
      005196 0D                    4641 	.db 0x0d
      005197 E2                    4642 	.db 0xe2
      005198 94                    4643 	.db 0x94
      005199 82                    4644 	.db 0x82
      00519A 20 45 6E 74 65 72 65  4645 	.ascii " Entered address: 0x%03X"
             64 20 61 64 64 72 65
             73 73 3A 20 30 78 25
             30 33 58
      0051B2 0A                    4646 	.db 0x0a
      0051B3 0D                    4647 	.db 0x0d
      0051B4 00                    4648 	.db 0x00
                                   4649 	.area CSEG    (CODE)
                                   4650 	.area CONST   (CODE)
      0051B5                       4651 ___str_24:
      0051B5 E2                    4652 	.db 0xe2
      0051B6 95                    4653 	.db 0x95
      0051B7 94                    4654 	.db 0x94
      0051B8 E2                    4655 	.db 0xe2
      0051B9 95                    4656 	.db 0x95
      0051BA 90                    4657 	.db 0x90
      0051BB E2                    4658 	.db 0xe2
      0051BC 95                    4659 	.db 0x95
      0051BD 90                    4660 	.db 0x90
      0051BE E2                    4661 	.db 0xe2
      0051BF 95                    4662 	.db 0x95
      0051C0 90                    4663 	.db 0x90
      0051C1 E2                    4664 	.db 0xe2
      0051C2 95                    4665 	.db 0x95
      0051C3 90                    4666 	.db 0x90
      0051C4 E2                    4667 	.db 0xe2
      0051C5 95                    4668 	.db 0x95
      0051C6 90                    4669 	.db 0x90
      0051C7 E2                    4670 	.db 0xe2
      0051C8 95                    4671 	.db 0x95
      0051C9 90                    4672 	.db 0x90
      0051CA E2                    4673 	.db 0xe2
      0051CB 95                    4674 	.db 0x95
      0051CC 90                    4675 	.db 0x90
      0051CD E2                    4676 	.db 0xe2
      0051CE 95                    4677 	.db 0x95
      0051CF 90                    4678 	.db 0x90
      0051D0 E2                    4679 	.db 0xe2
      0051D1 95                    4680 	.db 0x95
      0051D2 90                    4681 	.db 0x90
      0051D3 E2                    4682 	.db 0xe2
      0051D4 95                    4683 	.db 0x95
      0051D5 90                    4684 	.db 0x90
      0051D6 E2                    4685 	.db 0xe2
      0051D7 95                    4686 	.db 0x95
      0051D8 90                    4687 	.db 0x90
      0051D9 E2                    4688 	.db 0xe2
      0051DA 95                    4689 	.db 0x95
      0051DB 90                    4690 	.db 0x90
      0051DC E2                    4691 	.db 0xe2
      0051DD 95                    4692 	.db 0x95
      0051DE 90                    4693 	.db 0x90
      0051DF E2                    4694 	.db 0xe2
      0051E0 95                    4695 	.db 0x95
      0051E1 90                    4696 	.db 0x90
      0051E2 E2                    4697 	.db 0xe2
      0051E3 95                    4698 	.db 0x95
      0051E4 90                    4699 	.db 0x90
      0051E5 E2                    4700 	.db 0xe2
      0051E6 95                    4701 	.db 0x95
      0051E7 90                    4702 	.db 0x90
      0051E8 E2                    4703 	.db 0xe2
      0051E9 95                    4704 	.db 0x95
      0051EA 90                    4705 	.db 0x90
      0051EB E2                    4706 	.db 0xe2
      0051EC 95                    4707 	.db 0x95
      0051ED 90                    4708 	.db 0x90
      0051EE E2                    4709 	.db 0xe2
      0051EF 95                    4710 	.db 0x95
      0051F0 90                    4711 	.db 0x90
      0051F1 E2                    4712 	.db 0xe2
      0051F2 95                    4713 	.db 0x95
      0051F3 90                    4714 	.db 0x90
      0051F4 E2                    4715 	.db 0xe2
      0051F5 95                    4716 	.db 0x95
      0051F6 90                    4717 	.db 0x90
      0051F7 E2                    4718 	.db 0xe2
      0051F8 95                    4719 	.db 0x95
      0051F9 90                    4720 	.db 0x90
      0051FA E2                    4721 	.db 0xe2
      0051FB 95                    4722 	.db 0x95
      0051FC 90                    4723 	.db 0x90
      0051FD E2                    4724 	.db 0xe2
      0051FE 95                    4725 	.db 0x95
      0051FF 90                    4726 	.db 0x90
      005200 E2                    4727 	.db 0xe2
      005201 95                    4728 	.db 0x95
      005202 90                    4729 	.db 0x90
      005203 E2                    4730 	.db 0xe2
      005204 95                    4731 	.db 0x95
      005205 90                    4732 	.db 0x90
      005206 E2                    4733 	.db 0xe2
      005207 95                    4734 	.db 0x95
      005208 90                    4735 	.db 0x90
      005209 E2                    4736 	.db 0xe2
      00520A 95                    4737 	.db 0x95
      00520B 90                    4738 	.db 0x90
      00520C E2                    4739 	.db 0xe2
      00520D 95                    4740 	.db 0x95
      00520E 90                    4741 	.db 0x90
      00520F E2                    4742 	.db 0xe2
      005210 95                    4743 	.db 0x95
      005211 90                    4744 	.db 0x90
      005212 E2                    4745 	.db 0xe2
      005213 95                    4746 	.db 0x95
      005214 90                    4747 	.db 0x90
      005215 E2                    4748 	.db 0xe2
      005216 95                    4749 	.db 0x95
      005217 90                    4750 	.db 0x90
      005218 E2                    4751 	.db 0xe2
      005219 95                    4752 	.db 0x95
      00521A 90                    4753 	.db 0x90
      00521B E2                    4754 	.db 0xe2
      00521C 95                    4755 	.db 0x95
      00521D 90                    4756 	.db 0x90
      00521E E2                    4757 	.db 0xe2
      00521F 95                    4758 	.db 0x95
      005220 90                    4759 	.db 0x90
      005221 E2                    4760 	.db 0xe2
      005222 95                    4761 	.db 0x95
      005223 90                    4762 	.db 0x90
      005224 E2                    4763 	.db 0xe2
      005225 95                    4764 	.db 0x95
      005226 90                    4765 	.db 0x90
      005227 E2                    4766 	.db 0xe2
      005228 95                    4767 	.db 0x95
      005229 90                    4768 	.db 0x90
      00522A E2                    4769 	.db 0xe2
      00522B 95                    4770 	.db 0x95
      00522C 90                    4771 	.db 0x90
      00522D E2                    4772 	.db 0xe2
      00522E 95                    4773 	.db 0x95
      00522F 90                    4774 	.db 0x90
      005230 E2                    4775 	.db 0xe2
      005231 95                    4776 	.db 0x95
      005232 90                    4777 	.db 0x90
      005233 E2                    4778 	.db 0xe2
      005234 95                    4779 	.db 0x95
      005235 90                    4780 	.db 0x90
      005236 E2                    4781 	.db 0xe2
      005237 95                    4782 	.db 0x95
      005238 97                    4783 	.db 0x97
      005239 0A                    4784 	.db 0x0a
      00523A 0D                    4785 	.db 0x0d
      00523B 00                    4786 	.db 0x00
                                   4787 	.area CSEG    (CODE)
                                   4788 	.area CONST   (CODE)
      00523C                       4789 ___str_25:
      00523C E2                    4790 	.db 0xe2
      00523D 95                    4791 	.db 0x95
      00523E 91                    4792 	.db 0x91
      00523F 20 20 20 20 20 20 20  4793 	.ascii "       ! ADDRESS OUT OF RANGE !         "
             21 20 41 44 44 52 45
             53 53 20 4F 55 54 20
             4F 46 20 52 41 4E 47
             45 20 21 20 20 20 20
             20 20 20 20 20
      005267 E2                    4794 	.db 0xe2
      005268 95                    4795 	.db 0x95
      005269 91                    4796 	.db 0x91
      00526A 0A                    4797 	.db 0x0a
      00526B 0D                    4798 	.db 0x0d
      00526C 00                    4799 	.db 0x00
                                   4800 	.area CSEG    (CODE)
                                   4801 	.area CONST   (CODE)
      00526D                       4802 ___str_26:
      00526D E2                    4803 	.db 0xe2
      00526E 95                    4804 	.db 0x95
      00526F 91                    4805 	.db 0x91
      005270 20 20 20 20 20 50 6C  4806 	.ascii "     Please Enter Valid Address         "
             65 61 73 65 20 45 6E
             74 65 72 20 56 61 6C
             69 64 20 41 64 64 72
             65 73 73 20 20 20 20
             20 20 20 20 20
      005298 E2                    4807 	.db 0xe2
      005299 95                    4808 	.db 0x95
      00529A 91                    4809 	.db 0x91
      00529B 0A                    4810 	.db 0x0a
      00529C 0D                    4811 	.db 0x0d
      00529D 00                    4812 	.db 0x00
                                   4813 	.area CSEG    (CODE)
                                   4814 	.area CONST   (CODE)
      00529E                       4815 ___str_27:
      00529E E2                    4816 	.db 0xe2
      00529F 95                    4817 	.db 0x95
      0052A0 9A                    4818 	.db 0x9a
      0052A1 E2                    4819 	.db 0xe2
      0052A2 95                    4820 	.db 0x95
      0052A3 90                    4821 	.db 0x90
      0052A4 E2                    4822 	.db 0xe2
      0052A5 95                    4823 	.db 0x95
      0052A6 90                    4824 	.db 0x90
      0052A7 E2                    4825 	.db 0xe2
      0052A8 95                    4826 	.db 0x95
      0052A9 90                    4827 	.db 0x90
      0052AA E2                    4828 	.db 0xe2
      0052AB 95                    4829 	.db 0x95
      0052AC 90                    4830 	.db 0x90
      0052AD E2                    4831 	.db 0xe2
      0052AE 95                    4832 	.db 0x95
      0052AF 90                    4833 	.db 0x90
      0052B0 E2                    4834 	.db 0xe2
      0052B1 95                    4835 	.db 0x95
      0052B2 90                    4836 	.db 0x90
      0052B3 E2                    4837 	.db 0xe2
      0052B4 95                    4838 	.db 0x95
      0052B5 90                    4839 	.db 0x90
      0052B6 E2                    4840 	.db 0xe2
      0052B7 95                    4841 	.db 0x95
      0052B8 90                    4842 	.db 0x90
      0052B9 E2                    4843 	.db 0xe2
      0052BA 95                    4844 	.db 0x95
      0052BB 90                    4845 	.db 0x90
      0052BC E2                    4846 	.db 0xe2
      0052BD 95                    4847 	.db 0x95
      0052BE 90                    4848 	.db 0x90
      0052BF E2                    4849 	.db 0xe2
      0052C0 95                    4850 	.db 0x95
      0052C1 90                    4851 	.db 0x90
      0052C2 E2                    4852 	.db 0xe2
      0052C3 95                    4853 	.db 0x95
      0052C4 90                    4854 	.db 0x90
      0052C5 E2                    4855 	.db 0xe2
      0052C6 95                    4856 	.db 0x95
      0052C7 90                    4857 	.db 0x90
      0052C8 E2                    4858 	.db 0xe2
      0052C9 95                    4859 	.db 0x95
      0052CA 90                    4860 	.db 0x90
      0052CB E2                    4861 	.db 0xe2
      0052CC 95                    4862 	.db 0x95
      0052CD 90                    4863 	.db 0x90
      0052CE E2                    4864 	.db 0xe2
      0052CF 95                    4865 	.db 0x95
      0052D0 90                    4866 	.db 0x90
      0052D1 E2                    4867 	.db 0xe2
      0052D2 95                    4868 	.db 0x95
      0052D3 90                    4869 	.db 0x90
      0052D4 E2                    4870 	.db 0xe2
      0052D5 95                    4871 	.db 0x95
      0052D6 90                    4872 	.db 0x90
      0052D7 E2                    4873 	.db 0xe2
      0052D8 95                    4874 	.db 0x95
      0052D9 90                    4875 	.db 0x90
      0052DA E2                    4876 	.db 0xe2
      0052DB 95                    4877 	.db 0x95
      0052DC 90                    4878 	.db 0x90
      0052DD E2                    4879 	.db 0xe2
      0052DE 95                    4880 	.db 0x95
      0052DF 90                    4881 	.db 0x90
      0052E0 E2                    4882 	.db 0xe2
      0052E1 95                    4883 	.db 0x95
      0052E2 90                    4884 	.db 0x90
      0052E3 E2                    4885 	.db 0xe2
      0052E4 95                    4886 	.db 0x95
      0052E5 90                    4887 	.db 0x90
      0052E6 E2                    4888 	.db 0xe2
      0052E7 95                    4889 	.db 0x95
      0052E8 90                    4890 	.db 0x90
      0052E9 E2                    4891 	.db 0xe2
      0052EA 95                    4892 	.db 0x95
      0052EB 90                    4893 	.db 0x90
      0052EC E2                    4894 	.db 0xe2
      0052ED 95                    4895 	.db 0x95
      0052EE 90                    4896 	.db 0x90
      0052EF E2                    4897 	.db 0xe2
      0052F0 95                    4898 	.db 0x95
      0052F1 90                    4899 	.db 0x90
      0052F2 E2                    4900 	.db 0xe2
      0052F3 95                    4901 	.db 0x95
      0052F4 90                    4902 	.db 0x90
      0052F5 E2                    4903 	.db 0xe2
      0052F6 95                    4904 	.db 0x95
      0052F7 90                    4905 	.db 0x90
      0052F8 E2                    4906 	.db 0xe2
      0052F9 95                    4907 	.db 0x95
      0052FA 90                    4908 	.db 0x90
      0052FB E2                    4909 	.db 0xe2
      0052FC 95                    4910 	.db 0x95
      0052FD 90                    4911 	.db 0x90
      0052FE E2                    4912 	.db 0xe2
      0052FF 95                    4913 	.db 0x95
      005300 90                    4914 	.db 0x90
      005301 E2                    4915 	.db 0xe2
      005302 95                    4916 	.db 0x95
      005303 90                    4917 	.db 0x90
      005304 E2                    4918 	.db 0xe2
      005305 95                    4919 	.db 0x95
      005306 90                    4920 	.db 0x90
      005307 E2                    4921 	.db 0xe2
      005308 95                    4922 	.db 0x95
      005309 90                    4923 	.db 0x90
      00530A E2                    4924 	.db 0xe2
      00530B 95                    4925 	.db 0x95
      00530C 90                    4926 	.db 0x90
      00530D E2                    4927 	.db 0xe2
      00530E 95                    4928 	.db 0x95
      00530F 90                    4929 	.db 0x90
      005310 E2                    4930 	.db 0xe2
      005311 95                    4931 	.db 0x95
      005312 90                    4932 	.db 0x90
      005313 E2                    4933 	.db 0xe2
      005314 95                    4934 	.db 0x95
      005315 90                    4935 	.db 0x90
      005316 E2                    4936 	.db 0xe2
      005317 95                    4937 	.db 0x95
      005318 90                    4938 	.db 0x90
      005319 E2                    4939 	.db 0xe2
      00531A 95                    4940 	.db 0x95
      00531B 90                    4941 	.db 0x90
      00531C E2                    4942 	.db 0xe2
      00531D 95                    4943 	.db 0x95
      00531E 90                    4944 	.db 0x90
      00531F E2                    4945 	.db 0xe2
      005320 95                    4946 	.db 0x95
      005321 9D                    4947 	.db 0x9d
      005322 0A                    4948 	.db 0x0a
      005323 0D                    4949 	.db 0x0d
      005324 00                    4950 	.db 0x00
                                   4951 	.area CSEG    (CODE)
                                   4952 	.area CONST   (CODE)
      005325                       4953 ___str_28:
      005325 7C 20 42 6C 6F 63 6B  4954 	.ascii "| Block number %d                            "
             20 6E 75 6D 62 65 72
             20 25 64 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20
      005352 0A                    4955 	.db 0x0a
      005353 0D                    4956 	.db 0x0d
      005354 00                    4957 	.db 0x00
                                   4958 	.area CSEG    (CODE)
                                   4959 	.area CONST   (CODE)
      005355                       4960 ___str_29:
      005355 E2                    4961 	.db 0xe2
      005356 94                    4962 	.db 0x94
      005357 82                    4963 	.db 0x82
      005358 20 45 6E 74 65 72 20  4964 	.ascii " Enter data (hex, up to 2 characters): "
             64 61 74 61 20 28 68
             65 78 2C 20 75 70 20
             74 6F 20 32 20 63 68
             61 72 61 63 74 65 72
             73 29 3A 20
      00537F 0A                    4965 	.db 0x0a
      005380 0D                    4966 	.db 0x0d
      005381 7C                    4967 	.ascii "|"
      005382 00                    4968 	.db 0x00
                                   4969 	.area CSEG    (CODE)
                                   4970 	.area CONST   (CODE)
      005383                       4971 ___str_30:
      005383 24 20                 4972 	.ascii "$ "
      005385 00                    4973 	.db 0x00
                                   4974 	.area CSEG    (CODE)
                                   4975 	.area CONST   (CODE)
      005386                       4976 ___str_31:
      005386 0A                    4977 	.db 0x0a
      005387 0D                    4978 	.db 0x0d
      005388 E2                    4979 	.db 0xe2
      005389 94                    4980 	.db 0x94
      00538A 82                    4981 	.db 0x82
      00538B 20 45 6E 74 65 72 65  4982 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      0053A0 0A                    4983 	.db 0x0a
      0053A1 0D                    4984 	.db 0x0d
      0053A2 00                    4985 	.db 0x00
                                   4986 	.area CSEG    (CODE)
                                   4987 	.area CONST   (CODE)
      0053A3                       4988 ___str_32:
      0053A3 44 61 74 61 20 6F 75  4989 	.ascii "Data out of Range"
             74 20 6F 66 20 52 61
             6E 67 65
      0053B4 0A                    4990 	.db 0x0a
      0053B5 0D                    4991 	.db 0x0d
      0053B6 00                    4992 	.db 0x00
                                   4993 	.area CSEG    (CODE)
                                   4994 	.area CONST   (CODE)
      0053B7                       4995 ___str_33:
      0053B7 45 72 72 6F 72 3A 20  4996 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      0053DF 0A                    4997 	.db 0x0a
      0053E0 0D                    4998 	.db 0x0d
      0053E1 00                    4999 	.db 0x00
                                   5000 	.area CSEG    (CODE)
                                   5001 	.area CONST   (CODE)
      0053E2                       5002 ___str_34:
      0053E2 45 72 72 6F 72 3A 20  5003 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      005402 0A                    5004 	.db 0x0a
      005403 0D                    5005 	.db 0x0d
      005404 00                    5006 	.db 0x00
                                   5007 	.area CSEG    (CODE)
                                   5008 	.area CONST   (CODE)
      005405                       5009 ___str_35:
      005405 45 72 72 6F 72 3A 20  5010 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      00541B 0A                    5011 	.db 0x0a
      00541C 0D                    5012 	.db 0x0d
      00541D 00                    5013 	.db 0x00
                                   5014 	.area CSEG    (CODE)
                                   5015 	.area CONST   (CODE)
      00541E                       5016 ___str_36:
      00541E 7C 20 57 72 69 74 69  5017 	.ascii "| Writing at Address 0x%03X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 33 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      005450 0A                    5018 	.db 0x0a
      005451 0D                    5019 	.db 0x0d
      005452 00                    5020 	.db 0x00
                                   5021 	.area CSEG    (CODE)
                                   5022 	.area CONST   (CODE)
      005453                       5023 ___str_37:
      005453 E2                    5024 	.db 0xe2
      005454 94                    5025 	.db 0x94
      005455 82                    5026 	.db 0x82
      005456 20 57 72 69 74 65 20  5027 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      005485 E2                    5028 	.db 0xe2
      005486 94                    5029 	.db 0x94
      005487 82                    5030 	.db 0x82
      005488 0A                    5031 	.db 0x0a
      005489 0D                    5032 	.db 0x0d
      00548A 00                    5033 	.db 0x00
                                   5034 	.area CSEG    (CODE)
                                   5035 	.area CONST   (CODE)
      00548B                       5036 ___str_38:
      00548B E2                    5037 	.db 0xe2
      00548C 94                    5038 	.db 0x94
      00548D 94                    5039 	.db 0x94
      00548E E2                    5040 	.db 0xe2
      00548F 94                    5041 	.db 0x94
      005490 80                    5042 	.db 0x80
      005491 E2                    5043 	.db 0xe2
      005492 94                    5044 	.db 0x94
      005493 80                    5045 	.db 0x80
      005494 E2                    5046 	.db 0xe2
      005495 94                    5047 	.db 0x94
      005496 80                    5048 	.db 0x80
      005497 E2                    5049 	.db 0xe2
      005498 94                    5050 	.db 0x94
      005499 80                    5051 	.db 0x80
      00549A E2                    5052 	.db 0xe2
      00549B 94                    5053 	.db 0x94
      00549C 80                    5054 	.db 0x80
      00549D E2                    5055 	.db 0xe2
      00549E 94                    5056 	.db 0x94
      00549F 80                    5057 	.db 0x80
      0054A0 E2                    5058 	.db 0xe2
      0054A1 94                    5059 	.db 0x94
      0054A2 80                    5060 	.db 0x80
      0054A3 E2                    5061 	.db 0xe2
      0054A4 94                    5062 	.db 0x94
      0054A5 80                    5063 	.db 0x80
      0054A6 E2                    5064 	.db 0xe2
      0054A7 94                    5065 	.db 0x94
      0054A8 80                    5066 	.db 0x80
      0054A9 E2                    5067 	.db 0xe2
      0054AA 94                    5068 	.db 0x94
      0054AB 80                    5069 	.db 0x80
      0054AC E2                    5070 	.db 0xe2
      0054AD 94                    5071 	.db 0x94
      0054AE 80                    5072 	.db 0x80
      0054AF E2                    5073 	.db 0xe2
      0054B0 94                    5074 	.db 0x94
      0054B1 80                    5075 	.db 0x80
      0054B2 E2                    5076 	.db 0xe2
      0054B3 94                    5077 	.db 0x94
      0054B4 80                    5078 	.db 0x80
      0054B5 E2                    5079 	.db 0xe2
      0054B6 94                    5080 	.db 0x94
      0054B7 80                    5081 	.db 0x80
      0054B8 E2                    5082 	.db 0xe2
      0054B9 94                    5083 	.db 0x94
      0054BA 80                    5084 	.db 0x80
      0054BB E2                    5085 	.db 0xe2
      0054BC 94                    5086 	.db 0x94
      0054BD 80                    5087 	.db 0x80
      0054BE E2                    5088 	.db 0xe2
      0054BF 94                    5089 	.db 0x94
      0054C0 80                    5090 	.db 0x80
      0054C1 E2                    5091 	.db 0xe2
      0054C2 94                    5092 	.db 0x94
      0054C3 80                    5093 	.db 0x80
      0054C4 E2                    5094 	.db 0xe2
      0054C5 94                    5095 	.db 0x94
      0054C6 80                    5096 	.db 0x80
      0054C7 E2                    5097 	.db 0xe2
      0054C8 94                    5098 	.db 0x94
      0054C9 80                    5099 	.db 0x80
      0054CA E2                    5100 	.db 0xe2
      0054CB 94                    5101 	.db 0x94
      0054CC 80                    5102 	.db 0x80
      0054CD E2                    5103 	.db 0xe2
      0054CE 94                    5104 	.db 0x94
      0054CF 80                    5105 	.db 0x80
      0054D0 E2                    5106 	.db 0xe2
      0054D1 94                    5107 	.db 0x94
      0054D2 80                    5108 	.db 0x80
      0054D3 E2                    5109 	.db 0xe2
      0054D4 94                    5110 	.db 0x94
      0054D5 80                    5111 	.db 0x80
      0054D6 E2                    5112 	.db 0xe2
      0054D7 94                    5113 	.db 0x94
      0054D8 80                    5114 	.db 0x80
      0054D9 E2                    5115 	.db 0xe2
      0054DA 94                    5116 	.db 0x94
      0054DB 80                    5117 	.db 0x80
      0054DC E2                    5118 	.db 0xe2
      0054DD 94                    5119 	.db 0x94
      0054DE 80                    5120 	.db 0x80
      0054DF E2                    5121 	.db 0xe2
      0054E0 94                    5122 	.db 0x94
      0054E1 80                    5123 	.db 0x80
      0054E2 E2                    5124 	.db 0xe2
      0054E3 94                    5125 	.db 0x94
      0054E4 80                    5126 	.db 0x80
      0054E5 E2                    5127 	.db 0xe2
      0054E6 94                    5128 	.db 0x94
      0054E7 80                    5129 	.db 0x80
      0054E8 E2                    5130 	.db 0xe2
      0054E9 94                    5131 	.db 0x94
      0054EA 80                    5132 	.db 0x80
      0054EB E2                    5133 	.db 0xe2
      0054EC 94                    5134 	.db 0x94
      0054ED 80                    5135 	.db 0x80
      0054EE E2                    5136 	.db 0xe2
      0054EF 94                    5137 	.db 0x94
      0054F0 80                    5138 	.db 0x80
      0054F1 E2                    5139 	.db 0xe2
      0054F2 94                    5140 	.db 0x94
      0054F3 80                    5141 	.db 0x80
      0054F4 E2                    5142 	.db 0xe2
      0054F5 94                    5143 	.db 0x94
      0054F6 80                    5144 	.db 0x80
      0054F7 E2                    5145 	.db 0xe2
      0054F8 94                    5146 	.db 0x94
      0054F9 80                    5147 	.db 0x80
      0054FA E2                    5148 	.db 0xe2
      0054FB 94                    5149 	.db 0x94
      0054FC 80                    5150 	.db 0x80
      0054FD E2                    5151 	.db 0xe2
      0054FE 94                    5152 	.db 0x94
      0054FF 80                    5153 	.db 0x80
      005500 E2                    5154 	.db 0xe2
      005501 94                    5155 	.db 0x94
      005502 80                    5156 	.db 0x80
      005503 E2                    5157 	.db 0xe2
      005504 94                    5158 	.db 0x94
      005505 80                    5159 	.db 0x80
      005506 E2                    5160 	.db 0xe2
      005507 94                    5161 	.db 0x94
      005508 80                    5162 	.db 0x80
      005509 E2                    5163 	.db 0xe2
      00550A 94                    5164 	.db 0x94
      00550B 80                    5165 	.db 0x80
      00550C E2                    5166 	.db 0xe2
      00550D 94                    5167 	.db 0x94
      00550E 80                    5168 	.db 0x80
      00550F E2                    5169 	.db 0xe2
      005510 94                    5170 	.db 0x94
      005511 80                    5171 	.db 0x80
      005512 E2                    5172 	.db 0xe2
      005513 94                    5173 	.db 0x94
      005514 80                    5174 	.db 0x80
      005515 E2                    5175 	.db 0xe2
      005516 94                    5176 	.db 0x94
      005517 80                    5177 	.db 0x80
      005518 E2                    5178 	.db 0xe2
      005519 94                    5179 	.db 0x94
      00551A 80                    5180 	.db 0x80
      00551B E2                    5181 	.db 0xe2
      00551C 94                    5182 	.db 0x94
      00551D 98                    5183 	.db 0x98
      00551E 0A                    5184 	.db 0x0a
      00551F 0D                    5185 	.db 0x0d
      005520 00                    5186 	.db 0x00
                                   5187 	.area CSEG    (CODE)
                                   5188 	.area CONST   (CODE)
      005521                       5189 ___str_39:
      005521 45 72 72 6F 72 3A 20  5190 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      00554E 0A                    5191 	.db 0x0a
      00554F 0D                    5192 	.db 0x0d
      005550 00                    5193 	.db 0x00
                                   5194 	.area CSEG    (CODE)
                                   5195 	.area CONST   (CODE)
      005551                       5196 ___str_40:
      005551 45 72 72 6F 72 3A 20  5197 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      00557D 0A                    5198 	.db 0x0a
      00557E 0D                    5199 	.db 0x0d
      00557F 00                    5200 	.db 0x00
                                   5201 	.area CSEG    (CODE)
                                   5202 	.area CONST   (CODE)
      005580                       5203 ___str_41:
      005580 7C 20 30 78 25 30 33  5204 	.ascii "| 0x%03X : 0x%02X "
             58 20 3A 20 30 78 25
             30 32 58 20
      005592 0A                    5205 	.db 0x0a
      005593 0D                    5206 	.db 0x0d
      005594 00                    5207 	.db 0x00
                                   5208 	.area CSEG    (CODE)
                                   5209 	.area CONST   (CODE)
      005595                       5210 ___str_42:
      005595 E2                    5211 	.db 0xe2
      005596 94                    5212 	.db 0x94
      005597 82                    5213 	.db 0x82
      005598 20 52 65 61 64 20 73  5214 	.ascii " Read successful!                 "
             75 63 63 65 73 73 66
             75 6C 21 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20
      0055BA E2                    5215 	.db 0xe2
      0055BB 94                    5216 	.db 0x94
      0055BC 82                    5217 	.db 0x82
      0055BD 0A                    5218 	.db 0x0a
      0055BE 0D                    5219 	.db 0x0d
      0055BF 00                    5220 	.db 0x00
                                   5221 	.area CSEG    (CODE)
                                   5222 	.area CONST   (CODE)
      0055C0                       5223 ___str_43:
      0055C0 41 43 4B 20 44 49 44  5224 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      0055D2 0A                    5225 	.db 0x0a
      0055D3 0D                    5226 	.db 0x0d
      0055D4 00                    5227 	.db 0x00
                                   5228 	.area CSEG    (CODE)
                                   5229 	.area CONST   (CODE)
      0055D5                       5230 ___str_44:
      0055D5 0D                    5231 	.db 0x0d
      0055D6 0A                    5232 	.db 0x0a
      0055D7 2D 2D 2D 2D 2D 2D 2D  5233 	.ascii "------------------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      005613 2D 2D 2D 2D           5234 	.ascii "----"
      005617 0D                    5235 	.db 0x0d
      005618 0A                    5236 	.db 0x0a
      005619 00                    5237 	.db 0x00
                                   5238 	.area CSEG    (CODE)
                                   5239 	.area CONST   (CODE)
      00561A                       5240 ___str_45:
      00561A 20 20 20 20 20 20 20  5241 	.ascii "                    EEPROM Hex Dump                         "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 45
             45 50 52 4F 4D 20 48
             65 78 20 44 75 6D 70
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      005656 20 20 20 20 20 20     5242 	.ascii "      "
      00565C 0D                    5243 	.db 0x0d
      00565D 0A                    5244 	.db 0x0a
      00565E 00                    5245 	.db 0x00
                                   5246 	.area CSEG    (CODE)
                                   5247 	.area CONST   (CODE)
      00565F                       5248 ___str_46:
      00565F 2D 2D 2D 2D 2D 2D 2D  5249 	.ascii "------------------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      00569B 2D 2D 2D 2D           5250 	.ascii "----"
      00569F 0D                    5251 	.db 0x0d
      0056A0 0A                    5252 	.db 0x0a
      0056A1 00                    5253 	.db 0x00
                                   5254 	.area CSEG    (CODE)
                                   5255 	.area CONST   (CODE)
      0056A2                       5256 ___str_47:
      0056A2 20 20 20 20 20 30 20  5257 	.ascii "     0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F"
             20 31 20 20 32 20 20
             33 20 20 34 20 20 35
             20 20 36 20 20 37 20
             20 38 20 20 39 20 20
             41 20 20 42 20 20 43
             20 20 44 20 20 45 20
             20 46
      0056D5 0D                    5258 	.db 0x0d
      0056D6 0A                    5259 	.db 0x0a
      0056D7 00                    5260 	.db 0x00
                                   5261 	.area CSEG    (CODE)
                                   5262 	.area CONST   (CODE)
      0056D8                       5263 ___str_48:
      0056D8 25 30 33 58 3A 20     5264 	.ascii "%03X: "
      0056DE 00                    5265 	.db 0x00
                                   5266 	.area CSEG    (CODE)
                                   5267 	.area CONST   (CODE)
      0056DF                       5268 ___str_49:
      0056DF 45 72 72 6F 72 3A 20  5269 	.ascii "Error: Device not responding"
             44 65 76 69 63 65 20
             6E 6F 74 20 72 65 73
             70 6F 6E 64 69 6E 67
      0056FB 0D                    5270 	.db 0x0d
      0056FC 0A                    5271 	.db 0x0a
      0056FD 00                    5272 	.db 0x00
                                   5273 	.area CSEG    (CODE)
                                   5274 	.area CONST   (CODE)
      0056FE                       5275 ___str_50:
      0056FE 45 72 72 6F 72 3A 20  5276 	.ascii "Error: Address write failed"
             41 64 64 72 65 73 73
             20 77 72 69 74 65 20
             66 61 69 6C 65 64
      005719 0D                    5277 	.db 0x0d
      00571A 0A                    5278 	.db 0x0a
      00571B 00                    5279 	.db 0x00
                                   5280 	.area CSEG    (CODE)
                                   5281 	.area CONST   (CODE)
      00571C                       5282 ___str_51:
      00571C 45 72 72 6F 72 3A 20  5283 	.ascii "Error: Device not responding in read mode"
             44 65 76 69 63 65 20
             6E 6F 74 20 72 65 73
             70 6F 6E 64 69 6E 67
             20 69 6E 20 72 65 61
             64 20 6D 6F 64 65
      005745 0D                    5284 	.db 0x0d
      005746 0A                    5285 	.db 0x0a
      005747 00                    5286 	.db 0x00
                                   5287 	.area CSEG    (CODE)
                                   5288 	.area CONST   (CODE)
      005748                       5289 ___str_52:
      005748 25 30 32 58 20        5290 	.ascii "%02X "
      00574D 00                    5291 	.db 0x00
                                   5292 	.area CSEG    (CODE)
                                   5293 	.area CONST   (CODE)
      00574E                       5294 ___str_53:
      00574E 20 20 20              5295 	.ascii "   "
      005751 00                    5296 	.db 0x00
                                   5297 	.area CSEG    (CODE)
                                   5298 	.area CONST   (CODE)
      005752                       5299 ___str_54:
      005752 20 7C 20              5300 	.ascii " | "
      005755 00                    5301 	.db 0x00
                                   5302 	.area CSEG    (CODE)
                                   5303 	.area CONST   (CODE)
      005756                       5304 ___str_55:
      005756 0D                    5305 	.db 0x0d
      005757 0A                    5306 	.db 0x0a
      005758 00                    5307 	.db 0x00
                                   5308 	.area CSEG    (CODE)
                                   5309 	.area CONST   (CODE)
      005759                       5310 ___str_56:
      005759 0A                    5311 	.db 0x0a
      00575A 45 6E 74 65 72 20 53  5312 	.ascii "Enter Start Address for HEX Dump (000-7FF):"
             74 61 72 74 20 41 64
             64 72 65 73 73 20 66
             6F 72 20 48 45 58 20
             44 75 6D 70 20 28 30
             30 30 2D 37 46 46 29
             3A
      005785 0D                    5313 	.db 0x0d
      005786 0A                    5314 	.db 0x0a
      005787 00                    5315 	.db 0x00
                                   5316 	.area CSEG    (CODE)
                                   5317 	.area CONST   (CODE)
      005788                       5318 ___str_57:
      005788 49 6E 76 61 6C 69 64  5319 	.ascii "Invalid Start Address! Must be between 0x000 and 0x7FF"
             20 53 74 61 72 74 20
             41 64 64 72 65 73 73
             21 20 4D 75 73 74 20
             62 65 20 62 65 74 77
             65 65 6E 20 30 78 30
             30 30 20 61 6E 64 20
             30 78 37 46 46
      0057BE 0D                    5320 	.db 0x0d
      0057BF 0A                    5321 	.db 0x0a
      0057C0 00                    5322 	.db 0x00
                                   5323 	.area CSEG    (CODE)
                                   5324 	.area CONST   (CODE)
      0057C1                       5325 ___str_58:
      0057C1 0A                    5326 	.db 0x0a
      0057C2 45 6E 74 65 72 20 45  5327 	.ascii "Enter End Address for HEX Dump (000-7FF):"
             6E 64 20 41 64 64 72
             65 73 73 20 66 6F 72
             20 48 45 58 20 44 75
             6D 70 20 28 30 30 30
             2D 37 46 46 29 3A
      0057EB 0D                    5328 	.db 0x0d
      0057EC 0A                    5329 	.db 0x0a
      0057ED 00                    5330 	.db 0x00
                                   5331 	.area CSEG    (CODE)
                                   5332 	.area CONST   (CODE)
      0057EE                       5333 ___str_59:
      0057EE 49 6E 76 61 6C 69 64  5334 	.ascii "Invalid End Address! Must be between 0x%03X and 0x7FF"
             20 45 6E 64 20 41 64
             64 72 65 73 73 21 20
             4D 75 73 74 20 62 65
             20 62 65 74 77 65 65
             6E 20 30 78 25 30 33
             58 20 61 6E 64 20 30
             78 37 46 46
      005823 0D                    5335 	.db 0x0d
      005824 0A                    5336 	.db 0x0a
      005825 00                    5337 	.db 0x00
                                   5338 	.area CSEG    (CODE)
                                   5339 	.area CONST   (CODE)
      005826                       5340 ___str_60:
      005826 57 72 69 74 69 6E 67  5341 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      00584B 0A                    5342 	.db 0x0a
      00584C 0D                    5343 	.db 0x0d
      00584D 00                    5344 	.db 0x00
                                   5345 	.area CSEG    (CODE)
                                   5346 	.area CONST   (CODE)
      00584E                       5347 ___str_61:
      00584E 52 65 61 64 20 62 61  5348 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      005873 0A                    5349 	.db 0x0a
      005874 0D                    5350 	.db 0x0d
      005875 00                    5351 	.db 0x00
                                   5352 	.area CSEG    (CODE)
                                   5353 	.area CONST   (CODE)
      005876                       5354 ___str_62:
      005876 4D 41 54 43 48 20 2D  5355 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      005894 0A                    5356 	.db 0x0a
      005895 0D                    5357 	.db 0x0d
      005896 00                    5358 	.db 0x00
                                   5359 	.area CSEG    (CODE)
                                   5360 	.area CONST   (CODE)
      005897                       5361 ___str_63:
      005897 45 52 52 4F 52 20 2D  5362 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      0058AD 0A                    5363 	.db 0x0a
      0058AE 0D                    5364 	.db 0x0d
      0058AF 00                    5365 	.db 0x00
                                   5366 	.area CSEG    (CODE)
                                   5367 	.area XINIT   (CODE)
      0058BB                       5368 __xinit__address_range_flag:
      0058BB 01 00                 5369 	.byte #0x01, #0x00	;  1
      0058BD                       5370 __xinit__data_range_flag:
      0058BD 01 00                 5371 	.byte #0x01, #0x00	;  1
      0058BF                       5372 __xinit__block:
      0058BF 00 00                 5373 	.byte #0x00, #0x00	; 0
                                   5374 	.area CABS    (ABS,CODE)
