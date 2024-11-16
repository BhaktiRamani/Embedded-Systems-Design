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
      00308F 74 93            [12]  638 	mov	a,#___str_0
      003091 C0 E0            [24]  639 	push	acc
      003093 74 49            [12]  640 	mov	a,#(___str_0 >> 8)
      003095 C0 E0            [24]  641 	push	acc
      003097 74 80            [12]  642 	mov	a,#0x80
      003099 C0 E0            [24]  643 	push	acc
      00309B 12 3F 31         [24]  644 	lcall	_printf
      00309E 15 81            [12]  645 	dec	sp
      0030A0 15 81            [12]  646 	dec	sp
      0030A2 15 81            [12]  647 	dec	sp
                                    648 ;	8051_i2c_eeprom.c:87: printf("║           I2C Memory Management System v1.0            ║\n\r");
      0030A4 74 45            [12]  649 	mov	a,#___str_1
      0030A6 C0 E0            [24]  650 	push	acc
      0030A8 74 4A            [12]  651 	mov	a,#(___str_1 >> 8)
      0030AA C0 E0            [24]  652 	push	acc
      0030AC 74 80            [12]  653 	mov	a,#0x80
      0030AE C0 E0            [24]  654 	push	acc
      0030B0 12 3F 31         [24]  655 	lcall	_printf
      0030B3 15 81            [12]  656 	dec	sp
      0030B5 15 81            [12]  657 	dec	sp
      0030B7 15 81            [12]  658 	dec	sp
                                    659 ;	8051_i2c_eeprom.c:88: printf("╚════════════════════════════════════════════════════════╝\n\r");
      0030B9 74 86            [12]  660 	mov	a,#___str_2
      0030BB C0 E0            [24]  661 	push	acc
      0030BD 74 4A            [12]  662 	mov	a,#(___str_2 >> 8)
      0030BF C0 E0            [24]  663 	push	acc
      0030C1 74 80            [12]  664 	mov	a,#0x80
      0030C3 C0 E0            [24]  665 	push	acc
      0030C5 12 3F 31         [24]  666 	lcall	_printf
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
      0030CF 74 37            [12]  681 	mov	a,#___str_3
      0030D1 C0 E0            [24]  682 	push	acc
      0030D3 74 4B            [12]  683 	mov	a,#(___str_3 >> 8)
      0030D5 C0 E0            [24]  684 	push	acc
      0030D7 74 80            [12]  685 	mov	a,#0x80
      0030D9 C0 E0            [24]  686 	push	acc
      0030DB 12 3F 31         [24]  687 	lcall	_printf
      0030DE 15 81            [12]  688 	dec	sp
      0030E0 15 81            [12]  689 	dec	sp
      0030E2 15 81            [12]  690 	dec	sp
                                    691 ;	8051_i2c_eeprom.c:98: printf("│  Command   │               Description                  │\n\r");
      0030E4 74 ED            [12]  692 	mov	a,#___str_4
      0030E6 C0 E0            [24]  693 	push	acc
      0030E8 74 4B            [12]  694 	mov	a,#(___str_4 >> 8)
      0030EA C0 E0            [24]  695 	push	acc
      0030EC 74 80            [12]  696 	mov	a,#0x80
      0030EE C0 E0            [24]  697 	push	acc
      0030F0 12 3F 31         [24]  698 	lcall	_printf
      0030F3 15 81            [12]  699 	dec	sp
      0030F5 15 81            [12]  700 	dec	sp
      0030F7 15 81            [12]  701 	dec	sp
                                    702 ;	8051_i2c_eeprom.c:99: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      0030F9 74 31            [12]  703 	mov	a,#___str_5
      0030FB C0 E0            [24]  704 	push	acc
      0030FD 74 4C            [12]  705 	mov	a,#(___str_5 >> 8)
      0030FF C0 E0            [24]  706 	push	acc
      003101 74 80            [12]  707 	mov	a,#0x80
      003103 C0 E0            [24]  708 	push	acc
      003105 12 3F 31         [24]  709 	lcall	_printf
      003108 15 81            [12]  710 	dec	sp
      00310A 15 81            [12]  711 	dec	sp
      00310C 15 81            [12]  712 	dec	sp
                                    713 ;	8051_i2c_eeprom.c:100: printf("│     R      │ Read from address                          │\n\r");
      00310E 74 E5            [12]  714 	mov	a,#___str_6
      003110 C0 E0            [24]  715 	push	acc
      003112 74 4C            [12]  716 	mov	a,#(___str_6 >> 8)
      003114 C0 E0            [24]  717 	push	acc
      003116 74 80            [12]  718 	mov	a,#0x80
      003118 C0 E0            [24]  719 	push	acc
      00311A 12 3F 31         [24]  720 	lcall	_printf
      00311D 15 81            [12]  721 	dec	sp
      00311F 15 81            [12]  722 	dec	sp
      003121 15 81            [12]  723 	dec	sp
                                    724 ;	8051_i2c_eeprom.c:101: printf("│     W      │ Write data to address                      │\n\r");
      003123 74 29            [12]  725 	mov	a,#___str_7
      003125 C0 E0            [24]  726 	push	acc
      003127 74 4D            [12]  727 	mov	a,#(___str_7 >> 8)
      003129 C0 E0            [24]  728 	push	acc
      00312B 74 80            [12]  729 	mov	a,#0x80
      00312D C0 E0            [24]  730 	push	acc
      00312F 12 3F 31         [24]  731 	lcall	_printf
      003132 15 81            [12]  732 	dec	sp
      003134 15 81            [12]  733 	dec	sp
      003136 15 81            [12]  734 	dec	sp
                                    735 ;	8051_i2c_eeprom.c:102: printf("│     H      │ Display hex dump                           │\n\r");
      003138 74 6D            [12]  736 	mov	a,#___str_8
      00313A C0 E0            [24]  737 	push	acc
      00313C 74 4D            [12]  738 	mov	a,#(___str_8 >> 8)
      00313E C0 E0            [24]  739 	push	acc
      003140 74 80            [12]  740 	mov	a,#0x80
      003142 C0 E0            [24]  741 	push	acc
      003144 12 3F 31         [24]  742 	lcall	_printf
      003147 15 81            [12]  743 	dec	sp
      003149 15 81            [12]  744 	dec	sp
      00314B 15 81            [12]  745 	dec	sp
                                    746 ;	8051_i2c_eeprom.c:103: printf("│     X      │ Reset memory system                        │\n\r");
      00314D 74 B1            [12]  747 	mov	a,#___str_9
      00314F C0 E0            [24]  748 	push	acc
      003151 74 4D            [12]  749 	mov	a,#(___str_9 >> 8)
      003153 C0 E0            [24]  750 	push	acc
      003155 74 80            [12]  751 	mov	a,#0x80
      003157 C0 E0            [24]  752 	push	acc
      003159 12 3F 31         [24]  753 	lcall	_printf
      00315C 15 81            [12]  754 	dec	sp
      00315E 15 81            [12]  755 	dec	sp
      003160 15 81            [12]  756 	dec	sp
                                    757 ;	8051_i2c_eeprom.c:104: printf("│     ?      │ Display this help menu                     │\n\r");
      003162 74 F5            [12]  758 	mov	a,#___str_10
      003164 C0 E0            [24]  759 	push	acc
      003166 74 4D            [12]  760 	mov	a,#(___str_10 >> 8)
      003168 C0 E0            [24]  761 	push	acc
      00316A 74 80            [12]  762 	mov	a,#0x80
      00316C C0 E0            [24]  763 	push	acc
      00316E 12 3F 31         [24]  764 	lcall	_printf
      003171 15 81            [12]  765 	dec	sp
      003173 15 81            [12]  766 	dec	sp
      003175 15 81            [12]  767 	dec	sp
                                    768 ;	8051_i2c_eeprom.c:105: printf("│     Q      │ Quit program                               │\n\r");
      003177 74 39            [12]  769 	mov	a,#___str_11
      003179 C0 E0            [24]  770 	push	acc
      00317B 74 4E            [12]  771 	mov	a,#(___str_11 >> 8)
      00317D C0 E0            [24]  772 	push	acc
      00317F 74 80            [12]  773 	mov	a,#0x80
      003181 C0 E0            [24]  774 	push	acc
      003183 12 3F 31         [24]  775 	lcall	_printf
      003186 15 81            [12]  776 	dec	sp
      003188 15 81            [12]  777 	dec	sp
      00318A 15 81            [12]  778 	dec	sp
                                    779 ;	8051_i2c_eeprom.c:106: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      00318C 74 7D            [12]  780 	mov	a,#___str_12
      00318E C0 E0            [24]  781 	push	acc
      003190 74 4E            [12]  782 	mov	a,#(___str_12 >> 8)
      003192 C0 E0            [24]  783 	push	acc
      003194 74 80            [12]  784 	mov	a,#0x80
      003196 C0 E0            [24]  785 	push	acc
      003198 12 3F 31         [24]  786 	lcall	_printf
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
      0031AE 12 39 F8         [24]  814 	lcall	_i2c_start
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
      0031C0 74 31            [12]  826 	mov	a,#___str_13
      0031C2 C0 E0            [24]  827 	push	acc
      0031C4 74 4F            [12]  828 	mov	a,#(___str_13 >> 8)
      0031C6 C0 E0            [24]  829 	push	acc
      0031C8 74 80            [12]  830 	mov	a,#0x80
      0031CA C0 E0            [24]  831 	push	acc
      0031CC 12 3F 31         [24]  832 	lcall	_printf
      0031CF E5 81            [12]  833 	mov	a,sp
      0031D1 24 FB            [12]  834 	add	a,#0xfb
      0031D3 F5 81            [12]  835 	mov	sp,a
                                    836 ;	8051_i2c_eeprom.c:127: printf("\n\r");
      0031D5 74 3A            [12]  837 	mov	a,#___str_14
      0031D7 C0 E0            [24]  838 	push	acc
      0031D9 74 4F            [12]  839 	mov	a,#(___str_14 >> 8)
      0031DB C0 E0            [24]  840 	push	acc
      0031DD 74 80            [12]  841 	mov	a,#0x80
      0031DF C0 E0            [24]  842 	push	acc
      0031E1 12 3F 31         [24]  843 	lcall	_printf
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
      00320B 74 3D            [12]  868 	mov	a,#___str_15
      00320D C0 E0            [24]  869 	push	acc
      00320F 74 4F            [12]  870 	mov	a,#(___str_15 >> 8)
      003211 C0 E0            [24]  871 	push	acc
      003213 74 80            [12]  872 	mov	a,#0x80
      003215 C0 E0            [24]  873 	push	acc
      003217 12 3F 31         [24]  874 	lcall	_printf
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
      003243 12 35 3C         [24]  903 	lcall	_take_data
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
      00326D 12 36 B5         [24]  931 	lcall	_eeprom_write
                                    932 ;	8051_i2c_eeprom.c:149: break;
      003270 02 31 B1         [24]  933 	ljmp	00115$
                                    934 ;	8051_i2c_eeprom.c:151: case 'R':
      003273                        935 00106$:
                                    936 ;	8051_i2c_eeprom.c:153: printf("\n┌─────────────── READ OPERATION ───────────────┐\n\r");
      003273 74 AF            [12]  937 	mov	a,#___str_16
      003275 C0 E0            [24]  938 	push	acc
      003277 74 4F            [12]  939 	mov	a,#(___str_16 >> 8)
      003279 C0 E0            [24]  940 	push	acc
      00327B 74 80            [12]  941 	mov	a,#0x80
      00327D C0 E0            [24]  942 	push	acc
      00327F 12 3F 31         [24]  943 	lcall	_printf
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
      0032AF 74 23            [12]  974 	mov	a,#___str_17
      0032B1 C0 E0            [24]  975 	push	acc
      0032B3 74 50            [12]  976 	mov	a,#(___str_17 >> 8)
      0032B5 C0 E0            [24]  977 	push	acc
      0032B7 74 80            [12]  978 	mov	a,#0x80
      0032B9 C0 E0            [24]  979 	push	acc
      0032BB 12 3F 31         [24]  980 	lcall	_printf
      0032BE E5 81            [12]  981 	mov	a,sp
      0032C0 24 FB            [12]  982 	add	a,#0xfb
      0032C2 F5 81            [12]  983 	mov	sp,a
      0032C4 D0 06            [24]  984 	pop	ar6
      0032C6 D0 07            [24]  985 	pop	ar7
                                    986 ;	8051_i2c_eeprom.c:162: eeprom_read(addr);
      0032C8 8E 82            [24]  987 	mov	dpl,r6
      0032CA 8F 83            [24]  988 	mov	dph,r7
      0032CC 12 37 F7         [24]  989 	lcall	_eeprom_read
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
      0032D8 74 4F            [12] 1001 	mov	a,#___str_18
      0032DA C0 E0            [24] 1002 	push	acc
      0032DC 74 50            [12] 1003 	mov	a,#(___str_18 >> 8)
      0032DE C0 E0            [24] 1004 	push	acc
      0032E0 74 80            [12] 1005 	mov	a,#0x80
      0032E2 C0 E0            [24] 1006 	push	acc
      0032E4 12 3F 31         [24] 1007 	lcall	_printf
      0032E7 15 81            [12] 1008 	dec	sp
      0032E9 15 81            [12] 1009 	dec	sp
      0032EB 15 81            [12] 1010 	dec	sp
                                   1011 ;	8051_i2c_eeprom.c:172: eeprom_reset();
      0032ED 12 3D E8         [24] 1012 	lcall	_eeprom_reset
                                   1013 ;	8051_i2c_eeprom.c:173: break;
      0032F0 02 31 B1         [24] 1014 	ljmp	00115$
                                   1015 ;	8051_i2c_eeprom.c:175: case 'H':
      0032F3                       1016 00111$:
                                   1017 ;	8051_i2c_eeprom.c:176: printf("\n┌───────────── HEX DUMP OPERATION ───────────────┐\n\r");
      0032F3 74 B8            [12] 1018 	mov	a,#___str_19
      0032F5 C0 E0            [24] 1019 	push	acc
      0032F7 74 50            [12] 1020 	mov	a,#(___str_19 >> 8)
      0032F9 C0 E0            [24] 1021 	push	acc
      0032FB 74 80            [12] 1022 	mov	a,#0x80
      0032FD C0 E0            [24] 1023 	push	acc
      0032FF 12 3F 31         [24] 1024 	lcall	_printf
      003302 15 81            [12] 1025 	dec	sp
      003304 15 81            [12] 1026 	dec	sp
      003306 15 81            [12] 1027 	dec	sp
                                   1028 ;	8051_i2c_eeprom.c:192: handler_EEPROM_hexdump();
      003308 12 3D 3C         [24] 1029 	lcall	_handler_EEPROM_hexdump
                                   1030 ;	8051_i2c_eeprom.c:195: default:
      00330B                       1031 00112$:
                                   1032 ;	8051_i2c_eeprom.c:196: printf("INVALID INPUT\n\r");
      00330B 74 2A            [12] 1033 	mov	a,#___str_20
      00330D C0 E0            [24] 1034 	push	acc
      00330F 74 51            [12] 1035 	mov	a,#(___str_20 >> 8)
      003311 C0 E0            [24] 1036 	push	acc
      003313 74 80            [12] 1037 	mov	a,#0x80
      003315 C0 E0            [24] 1038 	push	acc
      003317 12 3F 31         [24] 1039 	lcall	_printf
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
      003323 74 3A            [12] 1061 	mov	a,#___str_21
      003325 C0 E0            [24] 1062 	push	acc
      003327 74 51            [12] 1063 	mov	a,#(___str_21 >> 8)
      003329 C0 E0            [24] 1064 	push	acc
      00332B 74 80            [12] 1065 	mov	a,#0x80
      00332D C0 E0            [24] 1066 	push	acc
      00332F 12 3F 31         [24] 1067 	lcall	_printf
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
      003349 74 6B            [12] 1082 	mov	a,#___str_22
      00334B C0 E0            [24] 1083 	push	acc
      00334D 74 51            [12] 1084 	mov	a,#(___str_22 >> 8)
      00334F C0 E0            [24] 1085 	push	acc
      003351 74 80            [12] 1086 	mov	a,#0x80
      003353 C0 E0            [24] 1087 	push	acc
      003355 12 3F 31         [24] 1088 	lcall	_printf
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
      0034A7 74 70            [12] 1337 	mov	a,#___str_23
      0034A9 C0 E0            [24] 1338 	push	acc
      0034AB 74 51            [12] 1339 	mov	a,#(___str_23 >> 8)
      0034AD C0 E0            [24] 1340 	push	acc
      0034AF 74 80            [12] 1341 	mov	a,#0x80
      0034B1 C0 E0            [24] 1342 	push	acc
      0034B3 12 3F 31         [24] 1343 	lcall	_printf
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
      0034C9 74 90            [12] 1357 	mov	a,#___str_24
      0034CB C0 E0            [24] 1358 	push	acc
      0034CD 74 51            [12] 1359 	mov	a,#(___str_24 >> 8)
      0034CF C0 E0            [24] 1360 	push	acc
      0034D1 74 80            [12] 1361 	mov	a,#0x80
      0034D3 C0 E0            [24] 1362 	push	acc
      0034D5 12 3F 31         [24] 1363 	lcall	_printf
      0034D8 15 81            [12] 1364 	dec	sp
      0034DA 15 81            [12] 1365 	dec	sp
      0034DC 15 81            [12] 1366 	dec	sp
                                   1367 ;	8051_i2c_eeprom.c:256: printf("║       ! ADDRESS OUT OF RANGE !         ║\n\r");
      0034DE 74 17            [12] 1368 	mov	a,#___str_25
      0034E0 C0 E0            [24] 1369 	push	acc
      0034E2 74 52            [12] 1370 	mov	a,#(___str_25 >> 8)
      0034E4 C0 E0            [24] 1371 	push	acc
      0034E6 74 80            [12] 1372 	mov	a,#0x80
      0034E8 C0 E0            [24] 1373 	push	acc
      0034EA 12 3F 31         [24] 1374 	lcall	_printf
      0034ED 15 81            [12] 1375 	dec	sp
      0034EF 15 81            [12] 1376 	dec	sp
      0034F1 15 81            [12] 1377 	dec	sp
                                   1378 ;	8051_i2c_eeprom.c:257: printf("║     Please Enter Valid Address         ║\n\r");
      0034F3 74 48            [12] 1379 	mov	a,#___str_26
      0034F5 C0 E0            [24] 1380 	push	acc
      0034F7 74 52            [12] 1381 	mov	a,#(___str_26 >> 8)
      0034F9 C0 E0            [24] 1382 	push	acc
      0034FB 74 80            [12] 1383 	mov	a,#0x80
      0034FD C0 E0            [24] 1384 	push	acc
      0034FF 12 3F 31         [24] 1385 	lcall	_printf
      003502 15 81            [12] 1386 	dec	sp
      003504 15 81            [12] 1387 	dec	sp
      003506 15 81            [12] 1388 	dec	sp
                                   1389 ;	8051_i2c_eeprom.c:258: printf("╚══════════════════════════════════════════╝\n\r");
      003508 74 79            [12] 1390 	mov	a,#___str_27
      00350A C0 E0            [24] 1391 	push	acc
      00350C 74 52            [12] 1392 	mov	a,#(___str_27 >> 8)
      00350E C0 E0            [24] 1393 	push	acc
      003510 74 80            [12] 1394 	mov	a,#0x80
      003512 C0 E0            [24] 1395 	push	acc
      003514 12 3F 31         [24] 1396 	lcall	_printf
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
                                   1410 ;	8051_i2c_eeprom.c:264: address = address%256;     //word address
      003528 90 04 08         [24] 1411 	mov	dptr,#_take_address_address_65538_72
      00352B EE               [12] 1412 	mov	a,r6
      00352C F0               [24] 1413 	movx	@dptr,a
      00352D E4               [12] 1414 	clr	a
      00352E A3               [24] 1415 	inc	dptr
      00352F F0               [24] 1416 	movx	@dptr,a
                                   1417 ;	8051_i2c_eeprom.c:267: return address;
      003530 90 04 08         [24] 1418 	mov	dptr,#_take_address_address_65538_72
      003533 E0               [24] 1419 	movx	a,@dptr
      003534 FE               [12] 1420 	mov	r6,a
      003535 A3               [24] 1421 	inc	dptr
      003536 E0               [24] 1422 	movx	a,@dptr
                                   1423 ;	8051_i2c_eeprom.c:268: }
      003537 8E 82            [24] 1424 	mov	dpl,r6
      003539 F5 83            [12] 1425 	mov	dph,a
      00353B 22               [24] 1426 	ret
                                   1427 ;------------------------------------------------------------
                                   1428 ;Allocation info for local variables in function 'take_data'
                                   1429 ;------------------------------------------------------------
                                   1430 ;input                     Allocated with name '_take_data_input_65537_78'
                                   1431 ;i                         Allocated with name '_take_data_i_65537_78'
                                   1432 ;c                         Allocated with name '_take_data_c_65537_78'
                                   1433 ;data                      Allocated with name '_take_data_data_65538_82'
                                   1434 ;------------------------------------------------------------
                                   1435 ;	8051_i2c_eeprom.c:276: unsigned char take_data()
                                   1436 ;	-----------------------------------------
                                   1437 ;	 function take_data
                                   1438 ;	-----------------------------------------
      00353C                       1439 _take_data:
                                   1440 ;	8051_i2c_eeprom.c:278: printf("│ Enter data (hex, up to 2 characters): \n\r|");
      00353C 74 00            [12] 1441 	mov	a,#___str_28
      00353E C0 E0            [24] 1442 	push	acc
      003540 74 53            [12] 1443 	mov	a,#(___str_28 >> 8)
      003542 C0 E0            [24] 1444 	push	acc
      003544 74 80            [12] 1445 	mov	a,#0x80
      003546 C0 E0            [24] 1446 	push	acc
      003548 12 3F 31         [24] 1447 	lcall	_printf
      00354B 15 81            [12] 1448 	dec	sp
      00354D 15 81            [12] 1449 	dec	sp
      00354F 15 81            [12] 1450 	dec	sp
                                   1451 ;	8051_i2c_eeprom.c:279: char input[4] = {0};  // Array for 3 hex chars + null terminator
      003551 90 04 0A         [24] 1452 	mov	dptr,#_take_data_input_65537_78
      003554 E4               [12] 1453 	clr	a
      003555 F0               [24] 1454 	movx	@dptr,a
      003556 90 04 0B         [24] 1455 	mov	dptr,#(_take_data_input_65537_78 + 0x0001)
      003559 F0               [24] 1456 	movx	@dptr,a
      00355A 90 04 0C         [24] 1457 	mov	dptr,#(_take_data_input_65537_78 + 0x0002)
      00355D F0               [24] 1458 	movx	@dptr,a
      00355E 90 04 0D         [24] 1459 	mov	dptr,#(_take_data_input_65537_78 + 0x0003)
      003561 F0               [24] 1460 	movx	@dptr,a
                                   1461 ;	8051_i2c_eeprom.c:283: printf("$ ");
      003562 74 2E            [12] 1462 	mov	a,#___str_29
      003564 C0 E0            [24] 1463 	push	acc
      003566 74 53            [12] 1464 	mov	a,#(___str_29 >> 8)
      003568 C0 E0            [24] 1465 	push	acc
      00356A 74 80            [12] 1466 	mov	a,#0x80
      00356C C0 E0            [24] 1467 	push	acc
      00356E 12 3F 31         [24] 1468 	lcall	_printf
      003571 15 81            [12] 1469 	dec	sp
      003573 15 81            [12] 1470 	dec	sp
      003575 15 81            [12] 1471 	dec	sp
                                   1472 ;	8051_i2c_eeprom.c:285: while (i < 3) {
      003577 7E 00            [12] 1473 	mov	r6,#0x00
      003579 7F 00            [12] 1474 	mov	r7,#0x00
      00357B                       1475 00111$:
      00357B C3               [12] 1476 	clr	c
      00357C EE               [12] 1477 	mov	a,r6
      00357D 94 03            [12] 1478 	subb	a,#0x03
      00357F EF               [12] 1479 	mov	a,r7
      003580 64 80            [12] 1480 	xrl	a,#0x80
      003582 94 80            [12] 1481 	subb	a,#0x80
      003584 50 5B            [24] 1482 	jnc	00113$
                                   1483 ;	8051_i2c_eeprom.c:287: c = getchar();
      003586 C0 07            [24] 1484 	push	ar7
      003588 C0 06            [24] 1485 	push	ar6
      00358A 12 30 81         [24] 1486 	lcall	_getchar
      00358D AC 82            [24] 1487 	mov	r4,dpl
      00358F AD 83            [24] 1488 	mov	r5,dph
      003591 D0 06            [24] 1489 	pop	ar6
      003593 D0 07            [24] 1490 	pop	ar7
                                   1491 ;	8051_i2c_eeprom.c:290: if (c == '\r' || c == '\n') {
      003595 BC 0D 02         [24] 1492 	cjne	r4,#0x0d,00200$
      003598 80 47            [24] 1493 	sjmp	00113$
      00359A                       1494 00200$:
      00359A BC 0A 02         [24] 1495 	cjne	r4,#0x0a,00201$
      00359D 80 42            [24] 1496 	sjmp	00113$
      00359F                       1497 00201$:
                                   1498 ;	8051_i2c_eeprom.c:295: if ((c >= '0' && c <= '9') ||
      00359F BC 30 00         [24] 1499 	cjne	r4,#0x30,00202$
      0035A2                       1500 00202$:
      0035A2 40 05            [24] 1501 	jc	00108$
      0035A4 EC               [12] 1502 	mov	a,r4
      0035A5 24 C6            [12] 1503 	add	a,#0xff - 0x39
      0035A7 50 14            [24] 1504 	jnc	00104$
      0035A9                       1505 00108$:
                                   1506 ;	8051_i2c_eeprom.c:296: (c >= 'a' && c <= 'f') ||
      0035A9 BC 61 00         [24] 1507 	cjne	r4,#0x61,00205$
      0035AC                       1508 00205$:
      0035AC 40 05            [24] 1509 	jc	00110$
      0035AE EC               [12] 1510 	mov	a,r4
      0035AF 24 99            [12] 1511 	add	a,#0xff - 0x66
      0035B1 50 0A            [24] 1512 	jnc	00104$
      0035B3                       1513 00110$:
                                   1514 ;	8051_i2c_eeprom.c:297: (c >= 'A' && c <= 'F')) {
      0035B3 BC 41 00         [24] 1515 	cjne	r4,#0x41,00208$
      0035B6                       1516 00208$:
      0035B6 40 C3            [24] 1517 	jc	00111$
      0035B8 EC               [12] 1518 	mov	a,r4
      0035B9 24 B9            [12] 1519 	add	a,#0xff - 0x46
      0035BB 40 BE            [24] 1520 	jc	00111$
      0035BD                       1521 00104$:
                                   1522 ;	8051_i2c_eeprom.c:299: input[i] = c;
      0035BD EE               [12] 1523 	mov	a,r6
      0035BE 24 0A            [12] 1524 	add	a,#_take_data_input_65537_78
      0035C0 F5 82            [12] 1525 	mov	dpl,a
      0035C2 EF               [12] 1526 	mov	a,r7
      0035C3 34 04            [12] 1527 	addc	a,#(_take_data_input_65537_78 >> 8)
      0035C5 F5 83            [12] 1528 	mov	dph,a
      0035C7 EC               [12] 1529 	mov	a,r4
      0035C8 F0               [24] 1530 	movx	@dptr,a
                                   1531 ;	8051_i2c_eeprom.c:300: putchar(c);  // Echo character back
      0035C9 7D 00            [12] 1532 	mov	r5,#0x00
      0035CB 8C 82            [24] 1533 	mov	dpl,r4
      0035CD 8D 83            [24] 1534 	mov	dph,r5
      0035CF C0 07            [24] 1535 	push	ar7
      0035D1 C0 06            [24] 1536 	push	ar6
      0035D3 12 30 62         [24] 1537 	lcall	_putchar
      0035D6 D0 06            [24] 1538 	pop	ar6
      0035D8 D0 07            [24] 1539 	pop	ar7
                                   1540 ;	8051_i2c_eeprom.c:301: i++;
      0035DA 0E               [12] 1541 	inc	r6
      0035DB BE 00 9D         [24] 1542 	cjne	r6,#0x00,00111$
      0035DE 0F               [12] 1543 	inc	r7
      0035DF 80 9A            [24] 1544 	sjmp	00111$
      0035E1                       1545 00113$:
                                   1546 ;	8051_i2c_eeprom.c:305: input[i] = '\0';  // Null-terminate the string
      0035E1 EE               [12] 1547 	mov	a,r6
      0035E2 24 0A            [12] 1548 	add	a,#_take_data_input_65537_78
      0035E4 F5 82            [12] 1549 	mov	dpl,a
      0035E6 EF               [12] 1550 	mov	a,r7
      0035E7 34 04            [12] 1551 	addc	a,#(_take_data_input_65537_78 >> 8)
      0035E9 F5 83            [12] 1552 	mov	dph,a
      0035EB E4               [12] 1553 	clr	a
      0035EC F0               [24] 1554 	movx	@dptr,a
                                   1555 ;	8051_i2c_eeprom.c:308: unsigned char data = 0;
      0035ED 90 04 0E         [24] 1556 	mov	dptr,#_take_data_data_65538_82
      0035F0 F0               [24] 1557 	movx	@dptr,a
                                   1558 ;	8051_i2c_eeprom.c:309: for (i = 0; input[i] != '\0'; i++) {
      0035F1 7E 00            [12] 1559 	mov	r6,#0x00
      0035F3 7F 00            [12] 1560 	mov	r7,#0x00
      0035F5                       1561 00129$:
      0035F5 EE               [12] 1562 	mov	a,r6
      0035F6 24 0A            [12] 1563 	add	a,#_take_data_input_65537_78
      0035F8 F5 82            [12] 1564 	mov	dpl,a
      0035FA EF               [12] 1565 	mov	a,r7
      0035FB 34 04            [12] 1566 	addc	a,#(_take_data_input_65537_78 >> 8)
      0035FD F5 83            [12] 1567 	mov	dph,a
      0035FF E0               [24] 1568 	movx	a,@dptr
      003600 FD               [12] 1569 	mov	r5,a
      003601 70 03            [24] 1570 	jnz	00212$
      003603 02 36 68         [24] 1571 	ljmp	00125$
      003606                       1572 00212$:
                                   1573 ;	8051_i2c_eeprom.c:310: data = data * 16;
      003606 90 04 0E         [24] 1574 	mov	dptr,#_take_data_data_65538_82
      003609 E0               [24] 1575 	movx	a,@dptr
      00360A C4               [12] 1576 	swap	a
      00360B 54 F0            [12] 1577 	anl	a,#0xf0
      00360D FC               [12] 1578 	mov	r4,a
      00360E F0               [24] 1579 	movx	@dptr,a
                                   1580 ;	8051_i2c_eeprom.c:311: if (input[i] >= '0' && input[i] <= '9')
      00360F BD 30 00         [24] 1581 	cjne	r5,#0x30,00213$
      003612                       1582 00213$:
      003612 40 12            [24] 1583 	jc	00122$
      003614 ED               [12] 1584 	mov	a,r5
      003615 24 C6            [12] 1585 	add	a,#0xff - 0x39
      003617 40 0D            [24] 1586 	jc	00122$
                                   1587 ;	8051_i2c_eeprom.c:312: data += input[i] - '0';
      003619 ED               [12] 1588 	mov	a,r5
      00361A 24 D0            [12] 1589 	add	a,#0xd0
      00361C FD               [12] 1590 	mov	r5,a
      00361D 90 04 0E         [24] 1591 	mov	dptr,#_take_data_data_65538_82
      003620 E0               [24] 1592 	movx	a,@dptr
      003621 FC               [12] 1593 	mov	r4,a
      003622 2D               [12] 1594 	add	a,r5
      003623 F0               [24] 1595 	movx	@dptr,a
      003624 80 3A            [24] 1596 	sjmp	00130$
      003626                       1597 00122$:
                                   1598 ;	8051_i2c_eeprom.c:313: else if (input[i] >= 'A' && input[i] <= 'F')
      003626 EE               [12] 1599 	mov	a,r6
      003627 24 0A            [12] 1600 	add	a,#_take_data_input_65537_78
      003629 F5 82            [12] 1601 	mov	dpl,a
      00362B EF               [12] 1602 	mov	a,r7
      00362C 34 04            [12] 1603 	addc	a,#(_take_data_input_65537_78 >> 8)
      00362E F5 83            [12] 1604 	mov	dph,a
      003630 E0               [24] 1605 	movx	a,@dptr
      003631 FD               [12] 1606 	mov	r5,a
      003632 BD 41 00         [24] 1607 	cjne	r5,#0x41,00216$
      003635                       1608 00216$:
      003635 40 14            [24] 1609 	jc	00118$
      003637 ED               [12] 1610 	mov	a,r5
      003638 24 B9            [12] 1611 	add	a,#0xff - 0x46
      00363A 40 0F            [24] 1612 	jc	00118$
                                   1613 ;	8051_i2c_eeprom.c:314: data += input[i] - 'A' + 10;
      00363C 8D 04            [24] 1614 	mov	ar4,r5
      00363E 74 C9            [12] 1615 	mov	a,#0xc9
      003640 2C               [12] 1616 	add	a,r4
      003641 FC               [12] 1617 	mov	r4,a
      003642 90 04 0E         [24] 1618 	mov	dptr,#_take_data_data_65538_82
      003645 E0               [24] 1619 	movx	a,@dptr
      003646 FB               [12] 1620 	mov	r3,a
      003647 2C               [12] 1621 	add	a,r4
      003648 F0               [24] 1622 	movx	@dptr,a
      003649 80 15            [24] 1623 	sjmp	00130$
      00364B                       1624 00118$:
                                   1625 ;	8051_i2c_eeprom.c:315: else if (input[i] >= 'a' && input[i] <= 'f')
      00364B BD 61 00         [24] 1626 	cjne	r5,#0x61,00219$
      00364E                       1627 00219$:
      00364E 40 10            [24] 1628 	jc	00130$
      003650 ED               [12] 1629 	mov	a,r5
      003651 24 99            [12] 1630 	add	a,#0xff - 0x66
      003653 40 0B            [24] 1631 	jc	00130$
                                   1632 ;	8051_i2c_eeprom.c:316: data += input[i] - 'a' + 10;
      003655 74 A9            [12] 1633 	mov	a,#0xa9
      003657 2D               [12] 1634 	add	a,r5
      003658 FD               [12] 1635 	mov	r5,a
      003659 90 04 0E         [24] 1636 	mov	dptr,#_take_data_data_65538_82
      00365C E0               [24] 1637 	movx	a,@dptr
      00365D FC               [12] 1638 	mov	r4,a
      00365E 2D               [12] 1639 	add	a,r5
      00365F F0               [24] 1640 	movx	@dptr,a
      003660                       1641 00130$:
                                   1642 ;	8051_i2c_eeprom.c:309: for (i = 0; input[i] != '\0'; i++) {
      003660 0E               [12] 1643 	inc	r6
      003661 BE 00 01         [24] 1644 	cjne	r6,#0x00,00222$
      003664 0F               [12] 1645 	inc	r7
      003665                       1646 00222$:
      003665 02 35 F5         [24] 1647 	ljmp	00129$
      003668                       1648 00125$:
                                   1649 ;	8051_i2c_eeprom.c:319: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      003668 90 04 0E         [24] 1650 	mov	dptr,#_take_data_data_65538_82
      00366B E0               [24] 1651 	movx	a,@dptr
      00366C FF               [12] 1652 	mov	r7,a
      00366D FD               [12] 1653 	mov	r5,a
      00366E 7E 00            [12] 1654 	mov	r6,#0x00
      003670 C0 07            [24] 1655 	push	ar7
      003672 C0 05            [24] 1656 	push	ar5
      003674 C0 06            [24] 1657 	push	ar6
      003676 74 31            [12] 1658 	mov	a,#___str_30
      003678 C0 E0            [24] 1659 	push	acc
      00367A 74 53            [12] 1660 	mov	a,#(___str_30 >> 8)
      00367C C0 E0            [24] 1661 	push	acc
      00367E 74 80            [12] 1662 	mov	a,#0x80
      003680 C0 E0            [24] 1663 	push	acc
      003682 12 3F 31         [24] 1664 	lcall	_printf
      003685 E5 81            [12] 1665 	mov	a,sp
      003687 24 FB            [12] 1666 	add	a,#0xfb
      003689 F5 81            [12] 1667 	mov	sp,a
      00368B D0 07            [24] 1668 	pop	ar7
                                   1669 ;	8051_i2c_eeprom.c:320: if(data > 0xfe)
      00368D EF               [12] 1670 	mov	a,r7
      00368E 24 01            [12] 1671 	add	a,#0xff - 0xfe
      003690 50 20            [24] 1672 	jnc	00127$
                                   1673 ;	8051_i2c_eeprom.c:322: printf("Data out of Range\n\r");
      003692 74 4E            [12] 1674 	mov	a,#___str_31
      003694 C0 E0            [24] 1675 	push	acc
      003696 74 53            [12] 1676 	mov	a,#(___str_31 >> 8)
      003698 C0 E0            [24] 1677 	push	acc
      00369A 74 80            [12] 1678 	mov	a,#0x80
      00369C C0 E0            [24] 1679 	push	acc
      00369E 12 3F 31         [24] 1680 	lcall	_printf
      0036A1 15 81            [12] 1681 	dec	sp
      0036A3 15 81            [12] 1682 	dec	sp
      0036A5 15 81            [12] 1683 	dec	sp
                                   1684 ;	8051_i2c_eeprom.c:323: data_range_flag = 0;
      0036A7 90 04 59         [24] 1685 	mov	dptr,#_data_range_flag
      0036AA E4               [12] 1686 	clr	a
      0036AB F0               [24] 1687 	movx	@dptr,a
      0036AC A3               [24] 1688 	inc	dptr
      0036AD F0               [24] 1689 	movx	@dptr,a
                                   1690 ;	8051_i2c_eeprom.c:324: return 0;
      0036AE 75 82 00         [24] 1691 	mov	dpl,#0x00
      0036B1 22               [24] 1692 	ret
      0036B2                       1693 00127$:
                                   1694 ;	8051_i2c_eeprom.c:326: return data;
      0036B2 8F 82            [24] 1695 	mov	dpl,r7
                                   1696 ;	8051_i2c_eeprom.c:328: }
      0036B4 22               [24] 1697 	ret
                                   1698 ;------------------------------------------------------------
                                   1699 ;Allocation info for local variables in function 'eeprom_write'
                                   1700 ;------------------------------------------------------------
                                   1701 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                   1702 ;address                   Allocated with name '_eeprom_write_address_65536_86'
                                   1703 ;i                         Allocated with name '_eeprom_write_i_131072_91'
                                   1704 ;------------------------------------------------------------
                                   1705 ;	8051_i2c_eeprom.c:344: int eeprom_write(unsigned int address, unsigned char data) 
                                   1706 ;	-----------------------------------------
                                   1707 ;	 function eeprom_write
                                   1708 ;	-----------------------------------------
      0036B5                       1709 _eeprom_write:
      0036B5 AF 83            [24] 1710 	mov	r7,dph
      0036B7 E5 82            [12] 1711 	mov	a,dpl
      0036B9 90 04 10         [24] 1712 	mov	dptr,#_eeprom_write_address_65536_86
      0036BC F0               [24] 1713 	movx	@dptr,a
      0036BD EF               [12] 1714 	mov	a,r7
      0036BE A3               [24] 1715 	inc	dptr
      0036BF F0               [24] 1716 	movx	@dptr,a
                                   1717 ;	8051_i2c_eeprom.c:347: i2c_start();
      0036C0 12 39 F8         [24] 1718 	lcall	_i2c_start
                                   1719 ;	8051_i2c_eeprom.c:350: if(!i2c_write(EEPROM_ID | block | WRITE)) {
      0036C3 90 04 5B         [24] 1720 	mov	dptr,#_block
      0036C6 E0               [24] 1721 	movx	a,@dptr
      0036C7 FE               [12] 1722 	mov	r6,a
      0036C8 A3               [24] 1723 	inc	dptr
      0036C9 E0               [24] 1724 	movx	a,@dptr
      0036CA 43 06 A0         [24] 1725 	orl	ar6,#0xa0
      0036CD 8E 82            [24] 1726 	mov	dpl,r6
      0036CF 12 39 0B         [24] 1727 	lcall	_i2c_write
      0036D2 E5 82            [12] 1728 	mov	a,dpl
      0036D4 85 83 F0         [24] 1729 	mov	b,dph
      0036D7 45 F0            [12] 1730 	orl	a,b
      0036D9 70 1C            [24] 1731 	jnz	00102$
                                   1732 ;	8051_i2c_eeprom.c:351: printf("Error: No ACK for device address (write)\n\r");
      0036DB 74 62            [12] 1733 	mov	a,#___str_32
      0036DD C0 E0            [24] 1734 	push	acc
      0036DF 74 53            [12] 1735 	mov	a,#(___str_32 >> 8)
      0036E1 C0 E0            [24] 1736 	push	acc
      0036E3 74 80            [12] 1737 	mov	a,#0x80
      0036E5 C0 E0            [24] 1738 	push	acc
      0036E7 12 3F 31         [24] 1739 	lcall	_printf
      0036EA 15 81            [12] 1740 	dec	sp
      0036EC 15 81            [12] 1741 	dec	sp
      0036EE 15 81            [12] 1742 	dec	sp
                                   1743 ;	8051_i2c_eeprom.c:352: i2c_stop();
      0036F0 12 3D DB         [24] 1744 	lcall	_i2c_stop
                                   1745 ;	8051_i2c_eeprom.c:353: return 0;
      0036F3 90 00 00         [24] 1746 	mov	dptr,#0x0000
      0036F6 22               [24] 1747 	ret
      0036F7                       1748 00102$:
                                   1749 ;	8051_i2c_eeprom.c:357: if(!i2c_write((unsigned char)address)) {
      0036F7 90 04 10         [24] 1750 	mov	dptr,#_eeprom_write_address_65536_86
      0036FA E0               [24] 1751 	movx	a,@dptr
      0036FB FE               [12] 1752 	mov	r6,a
      0036FC A3               [24] 1753 	inc	dptr
      0036FD E0               [24] 1754 	movx	a,@dptr
      0036FE FF               [12] 1755 	mov	r7,a
      0036FF 8E 05            [24] 1756 	mov	ar5,r6
      003701 8D 82            [24] 1757 	mov	dpl,r5
      003703 C0 07            [24] 1758 	push	ar7
      003705 C0 06            [24] 1759 	push	ar6
      003707 12 39 0B         [24] 1760 	lcall	_i2c_write
      00370A E5 82            [12] 1761 	mov	a,dpl
      00370C 85 83 F0         [24] 1762 	mov	b,dph
      00370F D0 06            [24] 1763 	pop	ar6
      003711 D0 07            [24] 1764 	pop	ar7
      003713 45 F0            [12] 1765 	orl	a,b
      003715 70 1C            [24] 1766 	jnz	00104$
                                   1767 ;	8051_i2c_eeprom.c:358: printf("Error: No ACK for memory address\n\r");
      003717 74 8D            [12] 1768 	mov	a,#___str_33
      003719 C0 E0            [24] 1769 	push	acc
      00371B 74 53            [12] 1770 	mov	a,#(___str_33 >> 8)
      00371D C0 E0            [24] 1771 	push	acc
      00371F 74 80            [12] 1772 	mov	a,#0x80
      003721 C0 E0            [24] 1773 	push	acc
      003723 12 3F 31         [24] 1774 	lcall	_printf
      003726 15 81            [12] 1775 	dec	sp
      003728 15 81            [12] 1776 	dec	sp
      00372A 15 81            [12] 1777 	dec	sp
                                   1778 ;	8051_i2c_eeprom.c:359: i2c_stop();
      00372C 12 3D DB         [24] 1779 	lcall	_i2c_stop
                                   1780 ;	8051_i2c_eeprom.c:360: return 0;
      00372F 90 00 00         [24] 1781 	mov	dptr,#0x0000
      003732 22               [24] 1782 	ret
      003733                       1783 00104$:
                                   1784 ;	8051_i2c_eeprom.c:364: if(!i2c_write(data)) {
      003733 90 04 0F         [24] 1785 	mov	dptr,#_eeprom_write_PARM_2
      003736 E0               [24] 1786 	movx	a,@dptr
      003737 FD               [12] 1787 	mov	r5,a
      003738 F5 82            [12] 1788 	mov	dpl,a
      00373A C0 07            [24] 1789 	push	ar7
      00373C C0 06            [24] 1790 	push	ar6
      00373E C0 05            [24] 1791 	push	ar5
      003740 12 39 0B         [24] 1792 	lcall	_i2c_write
      003743 E5 82            [12] 1793 	mov	a,dpl
      003745 85 83 F0         [24] 1794 	mov	b,dph
      003748 D0 05            [24] 1795 	pop	ar5
      00374A D0 06            [24] 1796 	pop	ar6
      00374C D0 07            [24] 1797 	pop	ar7
      00374E 45 F0            [12] 1798 	orl	a,b
      003750 70 1C            [24] 1799 	jnz	00106$
                                   1800 ;	8051_i2c_eeprom.c:365: printf("Error: No ACK for data\n\r");
      003752 74 B0            [12] 1801 	mov	a,#___str_34
      003754 C0 E0            [24] 1802 	push	acc
      003756 74 53            [12] 1803 	mov	a,#(___str_34 >> 8)
      003758 C0 E0            [24] 1804 	push	acc
      00375A 74 80            [12] 1805 	mov	a,#0x80
      00375C C0 E0            [24] 1806 	push	acc
      00375E 12 3F 31         [24] 1807 	lcall	_printf
      003761 15 81            [12] 1808 	dec	sp
      003763 15 81            [12] 1809 	dec	sp
      003765 15 81            [12] 1810 	dec	sp
                                   1811 ;	8051_i2c_eeprom.c:366: i2c_stop();
      003767 12 3D DB         [24] 1812 	lcall	_i2c_stop
                                   1813 ;	8051_i2c_eeprom.c:367: return 0;
      00376A 90 00 00         [24] 1814 	mov	dptr,#0x0000
      00376D 22               [24] 1815 	ret
      00376E                       1816 00106$:
                                   1817 ;	8051_i2c_eeprom.c:370: i2c_stop();
      00376E C0 07            [24] 1818 	push	ar7
      003770 C0 06            [24] 1819 	push	ar6
      003772 C0 05            [24] 1820 	push	ar5
      003774 12 3D DB         [24] 1821 	lcall	_i2c_stop
      003777 D0 05            [24] 1822 	pop	ar5
      003779 D0 06            [24] 1823 	pop	ar6
      00377B D0 07            [24] 1824 	pop	ar7
                                   1825 ;	8051_i2c_eeprom.c:372: for(int i = 0; i<10; i++)
      00377D 7B 00            [12] 1826 	mov	r3,#0x00
      00377F 7C 00            [12] 1827 	mov	r4,#0x00
      003781                       1828 00109$:
      003781 C3               [12] 1829 	clr	c
      003782 EB               [12] 1830 	mov	a,r3
      003783 94 0A            [12] 1831 	subb	a,#0x0a
      003785 EC               [12] 1832 	mov	a,r4
      003786 64 80            [12] 1833 	xrl	a,#0x80
      003788 94 80            [12] 1834 	subb	a,#0x80
      00378A 50 1E            [24] 1835 	jnc	00107$
                                   1836 ;	8051_i2c_eeprom.c:374: i2c_delay();
      00378C C0 07            [24] 1837 	push	ar7
      00378E C0 06            [24] 1838 	push	ar6
      003790 C0 05            [24] 1839 	push	ar5
      003792 C0 04            [24] 1840 	push	ar4
      003794 C0 03            [24] 1841 	push	ar3
      003796 12 3E 14         [24] 1842 	lcall	_i2c_delay
      003799 D0 03            [24] 1843 	pop	ar3
      00379B D0 04            [24] 1844 	pop	ar4
      00379D D0 05            [24] 1845 	pop	ar5
      00379F D0 06            [24] 1846 	pop	ar6
      0037A1 D0 07            [24] 1847 	pop	ar7
                                   1848 ;	8051_i2c_eeprom.c:372: for(int i = 0; i<10; i++)
      0037A3 0B               [12] 1849 	inc	r3
      0037A4 BB 00 DA         [24] 1850 	cjne	r3,#0x00,00109$
      0037A7 0C               [12] 1851 	inc	r4
      0037A8 80 D7            [24] 1852 	sjmp	00109$
      0037AA                       1853 00107$:
                                   1854 ;	8051_i2c_eeprom.c:377: printf("| Writing at Address 0x%03X Data 0x%02X          |\n\r", address, data);
      0037AA 7C 00            [12] 1855 	mov	r4,#0x00
      0037AC C0 05            [24] 1856 	push	ar5
      0037AE C0 04            [24] 1857 	push	ar4
      0037B0 C0 06            [24] 1858 	push	ar6
      0037B2 C0 07            [24] 1859 	push	ar7
      0037B4 74 C9            [12] 1860 	mov	a,#___str_35
      0037B6 C0 E0            [24] 1861 	push	acc
      0037B8 74 53            [12] 1862 	mov	a,#(___str_35 >> 8)
      0037BA C0 E0            [24] 1863 	push	acc
      0037BC 74 80            [12] 1864 	mov	a,#0x80
      0037BE C0 E0            [24] 1865 	push	acc
      0037C0 12 3F 31         [24] 1866 	lcall	_printf
      0037C3 E5 81            [12] 1867 	mov	a,sp
      0037C5 24 F9            [12] 1868 	add	a,#0xf9
      0037C7 F5 81            [12] 1869 	mov	sp,a
                                   1870 ;	8051_i2c_eeprom.c:378: printf("│ Write successful!                             │\n\r");
      0037C9 74 FE            [12] 1871 	mov	a,#___str_36
      0037CB C0 E0            [24] 1872 	push	acc
      0037CD 74 53            [12] 1873 	mov	a,#(___str_36 >> 8)
      0037CF C0 E0            [24] 1874 	push	acc
      0037D1 74 80            [12] 1875 	mov	a,#0x80
      0037D3 C0 E0            [24] 1876 	push	acc
      0037D5 12 3F 31         [24] 1877 	lcall	_printf
      0037D8 15 81            [12] 1878 	dec	sp
      0037DA 15 81            [12] 1879 	dec	sp
      0037DC 15 81            [12] 1880 	dec	sp
                                   1881 ;	8051_i2c_eeprom.c:379: printf("└───────────────────────────────────────────────┘\n\r");
      0037DE 74 36            [12] 1882 	mov	a,#___str_37
      0037E0 C0 E0            [24] 1883 	push	acc
      0037E2 74 54            [12] 1884 	mov	a,#(___str_37 >> 8)
      0037E4 C0 E0            [24] 1885 	push	acc
      0037E6 74 80            [12] 1886 	mov	a,#0x80
      0037E8 C0 E0            [24] 1887 	push	acc
      0037EA 12 3F 31         [24] 1888 	lcall	_printf
      0037ED 15 81            [12] 1889 	dec	sp
      0037EF 15 81            [12] 1890 	dec	sp
      0037F1 15 81            [12] 1891 	dec	sp
                                   1892 ;	8051_i2c_eeprom.c:380: return 1;  // Success
      0037F3 90 00 01         [24] 1893 	mov	dptr,#0x0001
                                   1894 ;	8051_i2c_eeprom.c:390: }
      0037F6 22               [24] 1895 	ret
                                   1896 ;------------------------------------------------------------
                                   1897 ;Allocation info for local variables in function 'eeprom_read'
                                   1898 ;------------------------------------------------------------
                                   1899 ;address                   Allocated with name '_eeprom_read_address_65536_93'
                                   1900 ;result                    Allocated with name '_eeprom_read_result_65536_94'
                                   1901 ;------------------------------------------------------------
                                   1902 ;	8051_i2c_eeprom.c:406: int eeprom_read(unsigned int address)
                                   1903 ;	-----------------------------------------
                                   1904 ;	 function eeprom_read
                                   1905 ;	-----------------------------------------
      0037F7                       1906 _eeprom_read:
      0037F7 AF 83            [24] 1907 	mov	r7,dph
      0037F9 E5 82            [12] 1908 	mov	a,dpl
      0037FB 90 04 12         [24] 1909 	mov	dptr,#_eeprom_read_address_65536_93
      0037FE F0               [24] 1910 	movx	@dptr,a
      0037FF EF               [12] 1911 	mov	a,r7
      003800 A3               [24] 1912 	inc	dptr
      003801 F0               [24] 1913 	movx	@dptr,a
                                   1914 ;	8051_i2c_eeprom.c:412: i2c_start();
      003802 12 39 F8         [24] 1915 	lcall	_i2c_start
                                   1916 ;	8051_i2c_eeprom.c:415: if(!i2c_write(EEPROM_ID | WRITE)) {
      003805 75 82 A0         [24] 1917 	mov	dpl,#0xa0
      003808 12 39 0B         [24] 1918 	lcall	_i2c_write
      00380B E5 82            [12] 1919 	mov	a,dpl
      00380D 85 83 F0         [24] 1920 	mov	b,dph
      003810 45 F0            [12] 1921 	orl	a,b
      003812 70 1C            [24] 1922 	jnz	00102$
                                   1923 ;	8051_i2c_eeprom.c:416: printf("Error: No ACK for device address (write mode)\n\r");
      003814 74 CC            [12] 1924 	mov	a,#___str_38
      003816 C0 E0            [24] 1925 	push	acc
      003818 74 54            [12] 1926 	mov	a,#(___str_38 >> 8)
      00381A C0 E0            [24] 1927 	push	acc
      00381C 74 80            [12] 1928 	mov	a,#0x80
      00381E C0 E0            [24] 1929 	push	acc
      003820 12 3F 31         [24] 1930 	lcall	_printf
      003823 15 81            [12] 1931 	dec	sp
      003825 15 81            [12] 1932 	dec	sp
      003827 15 81            [12] 1933 	dec	sp
                                   1934 ;	8051_i2c_eeprom.c:417: i2c_stop();
      003829 12 3D DB         [24] 1935 	lcall	_i2c_stop
                                   1936 ;	8051_i2c_eeprom.c:418: return -1;
      00382C 90 FF FF         [24] 1937 	mov	dptr,#0xffff
      00382F 22               [24] 1938 	ret
      003830                       1939 00102$:
                                   1940 ;	8051_i2c_eeprom.c:422: if(!i2c_write((unsigned char)address)) {
      003830 90 04 12         [24] 1941 	mov	dptr,#_eeprom_read_address_65536_93
      003833 E0               [24] 1942 	movx	a,@dptr
      003834 FE               [12] 1943 	mov	r6,a
      003835 A3               [24] 1944 	inc	dptr
      003836 E0               [24] 1945 	movx	a,@dptr
      003837 FF               [12] 1946 	mov	r7,a
      003838 8E 05            [24] 1947 	mov	ar5,r6
      00383A 8D 82            [24] 1948 	mov	dpl,r5
      00383C C0 07            [24] 1949 	push	ar7
      00383E C0 06            [24] 1950 	push	ar6
      003840 12 39 0B         [24] 1951 	lcall	_i2c_write
      003843 E5 82            [12] 1952 	mov	a,dpl
      003845 85 83 F0         [24] 1953 	mov	b,dph
      003848 D0 06            [24] 1954 	pop	ar6
      00384A D0 07            [24] 1955 	pop	ar7
      00384C 45 F0            [12] 1956 	orl	a,b
      00384E 70 1C            [24] 1957 	jnz	00104$
                                   1958 ;	8051_i2c_eeprom.c:423: printf("Error: No ACK for memory address\n\r");
      003850 74 8D            [12] 1959 	mov	a,#___str_33
      003852 C0 E0            [24] 1960 	push	acc
      003854 74 53            [12] 1961 	mov	a,#(___str_33 >> 8)
      003856 C0 E0            [24] 1962 	push	acc
      003858 74 80            [12] 1963 	mov	a,#0x80
      00385A C0 E0            [24] 1964 	push	acc
      00385C 12 3F 31         [24] 1965 	lcall	_printf
      00385F 15 81            [12] 1966 	dec	sp
      003861 15 81            [12] 1967 	dec	sp
      003863 15 81            [12] 1968 	dec	sp
                                   1969 ;	8051_i2c_eeprom.c:424: i2c_stop();
      003865 12 3D DB         [24] 1970 	lcall	_i2c_stop
                                   1971 ;	8051_i2c_eeprom.c:425: return -1;
      003868 90 FF FF         [24] 1972 	mov	dptr,#0xffff
      00386B 22               [24] 1973 	ret
      00386C                       1974 00104$:
                                   1975 ;	8051_i2c_eeprom.c:429: i2c_start();
      00386C C0 07            [24] 1976 	push	ar7
      00386E C0 06            [24] 1977 	push	ar6
      003870 12 39 F8         [24] 1978 	lcall	_i2c_start
                                   1979 ;	8051_i2c_eeprom.c:432: if(!i2c_write(EEPROM_ID | READ)) {
      003873 75 82 A1         [24] 1980 	mov	dpl,#0xa1
      003876 12 39 0B         [24] 1981 	lcall	_i2c_write
      003879 E5 82            [12] 1982 	mov	a,dpl
      00387B 85 83 F0         [24] 1983 	mov	b,dph
      00387E D0 06            [24] 1984 	pop	ar6
      003880 D0 07            [24] 1985 	pop	ar7
      003882 45 F0            [12] 1986 	orl	a,b
      003884 70 1C            [24] 1987 	jnz	00106$
                                   1988 ;	8051_i2c_eeprom.c:433: printf("Error: No ACK for device address (read mode)\n\r");
      003886 74 FC            [12] 1989 	mov	a,#___str_39
      003888 C0 E0            [24] 1990 	push	acc
      00388A 74 54            [12] 1991 	mov	a,#(___str_39 >> 8)
      00388C C0 E0            [24] 1992 	push	acc
      00388E 74 80            [12] 1993 	mov	a,#0x80
      003890 C0 E0            [24] 1994 	push	acc
      003892 12 3F 31         [24] 1995 	lcall	_printf
      003895 15 81            [12] 1996 	dec	sp
      003897 15 81            [12] 1997 	dec	sp
      003899 15 81            [12] 1998 	dec	sp
                                   1999 ;	8051_i2c_eeprom.c:434: i2c_stop();
      00389B 12 3D DB         [24] 2000 	lcall	_i2c_stop
                                   2001 ;	8051_i2c_eeprom.c:435: return -1;
      00389E 90 FF FF         [24] 2002 	mov	dptr,#0xffff
      0038A1 22               [24] 2003 	ret
      0038A2                       2004 00106$:
                                   2005 ;	8051_i2c_eeprom.c:439: result = i2c_read(0);  // 0 means send NACK
      0038A2 90 00 00         [24] 2006 	mov	dptr,#0x0000
      0038A5 C0 07            [24] 2007 	push	ar7
      0038A7 C0 06            [24] 2008 	push	ar6
      0038A9 12 39 73         [24] 2009 	lcall	_i2c_read
      0038AC AC 82            [24] 2010 	mov	r4,dpl
      0038AE D0 06            [24] 2011 	pop	ar6
      0038B0 D0 07            [24] 2012 	pop	ar7
                                   2013 ;	8051_i2c_eeprom.c:441: printf("| 0x%03X : 0x%02X \n\r", address, result);
      0038B2 7D 00            [12] 2014 	mov	r5,#0x00
      0038B4 C0 05            [24] 2015 	push	ar5
      0038B6 C0 04            [24] 2016 	push	ar4
      0038B8 C0 04            [24] 2017 	push	ar4
      0038BA C0 05            [24] 2018 	push	ar5
      0038BC C0 06            [24] 2019 	push	ar6
      0038BE C0 07            [24] 2020 	push	ar7
      0038C0 74 2B            [12] 2021 	mov	a,#___str_40
      0038C2 C0 E0            [24] 2022 	push	acc
      0038C4 74 55            [12] 2023 	mov	a,#(___str_40 >> 8)
      0038C6 C0 E0            [24] 2024 	push	acc
      0038C8 74 80            [12] 2025 	mov	a,#0x80
      0038CA C0 E0            [24] 2026 	push	acc
      0038CC 12 3F 31         [24] 2027 	lcall	_printf
      0038CF E5 81            [12] 2028 	mov	a,sp
      0038D1 24 F9            [12] 2029 	add	a,#0xf9
      0038D3 F5 81            [12] 2030 	mov	sp,a
                                   2031 ;	8051_i2c_eeprom.c:442: printf("│ Read successful!                 │\n\r");
      0038D5 74 40            [12] 2032 	mov	a,#___str_41
      0038D7 C0 E0            [24] 2033 	push	acc
      0038D9 74 55            [12] 2034 	mov	a,#(___str_41 >> 8)
      0038DB C0 E0            [24] 2035 	push	acc
      0038DD 74 80            [12] 2036 	mov	a,#0x80
      0038DF C0 E0            [24] 2037 	push	acc
      0038E1 12 3F 31         [24] 2038 	lcall	_printf
      0038E4 15 81            [12] 2039 	dec	sp
      0038E6 15 81            [12] 2040 	dec	sp
      0038E8 15 81            [12] 2041 	dec	sp
                                   2042 ;	8051_i2c_eeprom.c:443: printf("└───────────────────────────────────────────────┘\n\r");
      0038EA 74 36            [12] 2043 	mov	a,#___str_37
      0038EC C0 E0            [24] 2044 	push	acc
      0038EE 74 54            [12] 2045 	mov	a,#(___str_37 >> 8)
      0038F0 C0 E0            [24] 2046 	push	acc
      0038F2 74 80            [12] 2047 	mov	a,#0x80
      0038F4 C0 E0            [24] 2048 	push	acc
      0038F6 12 3F 31         [24] 2049 	lcall	_printf
      0038F9 15 81            [12] 2050 	dec	sp
      0038FB 15 81            [12] 2051 	dec	sp
      0038FD 15 81            [12] 2052 	dec	sp
                                   2053 ;	8051_i2c_eeprom.c:444: i2c_stop();
      0038FF 12 3D DB         [24] 2054 	lcall	_i2c_stop
      003902 D0 04            [24] 2055 	pop	ar4
      003904 D0 05            [24] 2056 	pop	ar5
                                   2057 ;	8051_i2c_eeprom.c:445: return result;
      003906 8C 82            [24] 2058 	mov	dpl,r4
      003908 8D 83            [24] 2059 	mov	dph,r5
                                   2060 ;	8051_i2c_eeprom.c:446: }
      00390A 22               [24] 2061 	ret
                                   2062 ;------------------------------------------------------------
                                   2063 ;Allocation info for local variables in function 'i2c_write'
                                   2064 ;------------------------------------------------------------
                                   2065 ;data                      Allocated with name '_i2c_write_data_65536_98'
                                   2066 ;i                         Allocated with name '_i2c_write_i_65536_99'
                                   2067 ;------------------------------------------------------------
                                   2068 ;	8051_i2c_eeprom.c:457: int i2c_write(unsigned char data)
                                   2069 ;	-----------------------------------------
                                   2070 ;	 function i2c_write
                                   2071 ;	-----------------------------------------
      00390B                       2072 _i2c_write:
      00390B E5 82            [12] 2073 	mov	a,dpl
      00390D 90 04 14         [24] 2074 	mov	dptr,#_i2c_write_data_65536_98
      003910 F0               [24] 2075 	movx	@dptr,a
                                   2076 ;	8051_i2c_eeprom.c:461: for(i=0;i<=7;i++)
      003911 7E 00            [12] 2077 	mov	r6,#0x00
      003913 7F 00            [12] 2078 	mov	r7,#0x00
      003915                       2079 00104$:
                                   2080 ;	8051_i2c_eeprom.c:463: SDA = (data & 0x80) ? 1 : 0;    //msb first
      003915 90 04 14         [24] 2081 	mov	dptr,#_i2c_write_data_65536_98
      003918 E0               [24] 2082 	movx	a,@dptr
      003919 FD               [12] 2083 	mov	r5,a
      00391A 23               [12] 2084 	rl	a
      00391B 54 01            [12] 2085 	anl	a,#0x01
      00391D 24 FF            [12] 2086 	add	a,#0xff
      00391F 92 94            [24] 2087 	mov	_P1_4,c
                                   2088 ;	8051_i2c_eeprom.c:464: i2c_delay();        // Setup time for data
      003921 C0 07            [24] 2089 	push	ar7
      003923 C0 06            [24] 2090 	push	ar6
      003925 C0 05            [24] 2091 	push	ar5
      003927 12 3E 14         [24] 2092 	lcall	_i2c_delay
                                   2093 ;	8051_i2c_eeprom.c:465: SCL=1;
                                   2094 ;	assignBit
      00392A D2 93            [12] 2095 	setb	_P1_3
                                   2096 ;	8051_i2c_eeprom.c:466: i2c_delay();        // Hold time for clock
      00392C 12 3E 14         [24] 2097 	lcall	_i2c_delay
      00392F D0 05            [24] 2098 	pop	ar5
      003931 D0 06            [24] 2099 	pop	ar6
      003933 D0 07            [24] 2100 	pop	ar7
                                   2101 ;	8051_i2c_eeprom.c:467: SCL=0;
                                   2102 ;	assignBit
      003935 C2 93            [12] 2103 	clr	_P1_3
                                   2104 ;	8051_i2c_eeprom.c:468: data = data << 1;
      003937 ED               [12] 2105 	mov	a,r5
      003938 2D               [12] 2106 	add	a,r5
      003939 90 04 14         [24] 2107 	mov	dptr,#_i2c_write_data_65536_98
      00393C F0               [24] 2108 	movx	@dptr,a
                                   2109 ;	8051_i2c_eeprom.c:461: for(i=0;i<=7;i++)
      00393D 0E               [12] 2110 	inc	r6
      00393E BE 00 01         [24] 2111 	cjne	r6,#0x00,00121$
      003941 0F               [12] 2112 	inc	r7
      003942                       2113 00121$:
      003942 C3               [12] 2114 	clr	c
      003943 74 07            [12] 2115 	mov	a,#0x07
      003945 9E               [12] 2116 	subb	a,r6
      003946 E4               [12] 2117 	clr	a
      003947 9F               [12] 2118 	subb	a,r7
      003948 50 CB            [24] 2119 	jnc	00104$
                                   2120 ;	8051_i2c_eeprom.c:472: SDA = 1;            // Release SDA for slave
                                   2121 ;	assignBit
      00394A D2 94            [12] 2122 	setb	_P1_4
                                   2123 ;	8051_i2c_eeprom.c:473: SCL = 1;            // 9th clock pulse for ACK
                                   2124 ;	assignBit
      00394C D2 93            [12] 2125 	setb	_P1_3
                                   2126 ;	8051_i2c_eeprom.c:474: i2c_delay();
      00394E 12 3E 14         [24] 2127 	lcall	_i2c_delay
                                   2128 ;	8051_i2c_eeprom.c:475: if(SDA == 1)        // If SDA is still high, no ACK received
      003951 30 94 19         [24] 2129 	jnb	_P1_4,00103$
                                   2130 ;	8051_i2c_eeprom.c:478: printf("ACK DID NOT ARRIVE\n\r");
      003954 74 6B            [12] 2131 	mov	a,#___str_42
      003956 C0 E0            [24] 2132 	push	acc
      003958 74 55            [12] 2133 	mov	a,#(___str_42 >> 8)
      00395A C0 E0            [24] 2134 	push	acc
      00395C 74 80            [12] 2135 	mov	a,#0x80
      00395E C0 E0            [24] 2136 	push	acc
      003960 12 3F 31         [24] 2137 	lcall	_printf
      003963 15 81            [12] 2138 	dec	sp
      003965 15 81            [12] 2139 	dec	sp
      003967 15 81            [12] 2140 	dec	sp
                                   2141 ;	8051_i2c_eeprom.c:479: return 0;       // Error
      003969 90 00 00         [24] 2142 	mov	dptr,#0x0000
      00396C 22               [24] 2143 	ret
      00396D                       2144 00103$:
                                   2145 ;	8051_i2c_eeprom.c:481: SCL = 0;
                                   2146 ;	assignBit
      00396D C2 93            [12] 2147 	clr	_P1_3
                                   2148 ;	8051_i2c_eeprom.c:483: return 1;           // Success
      00396F 90 00 01         [24] 2149 	mov	dptr,#0x0001
                                   2150 ;	8051_i2c_eeprom.c:485: }
      003972 22               [24] 2151 	ret
                                   2152 ;------------------------------------------------------------
                                   2153 ;Allocation info for local variables in function 'i2c_read'
                                   2154 ;------------------------------------------------------------
                                   2155 ;ACK                       Allocated with name '_i2c_read_ACK_65536_103'
                                   2156 ;buff                      Allocated with name '_i2c_read_buff_65536_104'
                                   2157 ;i                         Allocated with name '_i2c_read_i_131072_105'
                                   2158 ;------------------------------------------------------------
                                   2159 ;	8051_i2c_eeprom.c:495: int i2c_read(int ACK)
                                   2160 ;	-----------------------------------------
                                   2161 ;	 function i2c_read
                                   2162 ;	-----------------------------------------
      003973                       2163 _i2c_read:
      003973 AF 83            [24] 2164 	mov	r7,dph
      003975 E5 82            [12] 2165 	mov	a,dpl
      003977 90 04 15         [24] 2166 	mov	dptr,#_i2c_read_ACK_65536_103
      00397A F0               [24] 2167 	movx	@dptr,a
      00397B EF               [12] 2168 	mov	a,r7
      00397C A3               [24] 2169 	inc	dptr
      00397D F0               [24] 2170 	movx	@dptr,a
                                   2171 ;	8051_i2c_eeprom.c:497: unsigned char buff=0;
      00397E 90 04 17         [24] 2172 	mov	dptr,#_i2c_read_buff_65536_104
      003981 E4               [12] 2173 	clr	a
      003982 F0               [24] 2174 	movx	@dptr,a
                                   2175 ;	8051_i2c_eeprom.c:498: SCL = 0;
                                   2176 ;	assignBit
      003983 C2 93            [12] 2177 	clr	_P1_3
                                   2178 ;	8051_i2c_eeprom.c:499: for(int i=0;i<8;i++)
      003985 7E 00            [12] 2179 	mov	r6,#0x00
      003987 7F 00            [12] 2180 	mov	r7,#0x00
      003989                       2181 00103$:
      003989 C3               [12] 2182 	clr	c
      00398A EE               [12] 2183 	mov	a,r6
      00398B 94 08            [12] 2184 	subb	a,#0x08
      00398D EF               [12] 2185 	mov	a,r7
      00398E 64 80            [12] 2186 	xrl	a,#0x80
      003990 94 80            [12] 2187 	subb	a,#0x80
      003992 50 40            [24] 2188 	jnc	00101$
                                   2189 ;	8051_i2c_eeprom.c:501: SCL = 1;
                                   2190 ;	assignBit
      003994 D2 93            [12] 2191 	setb	_P1_3
                                   2192 ;	8051_i2c_eeprom.c:502: i2c_delay();
      003996 C0 07            [24] 2193 	push	ar7
      003998 C0 06            [24] 2194 	push	ar6
      00399A 12 3E 14         [24] 2195 	lcall	_i2c_delay
      00399D D0 06            [24] 2196 	pop	ar6
      00399F D0 07            [24] 2197 	pop	ar7
                                   2198 ;	8051_i2c_eeprom.c:503: buff |= (SDA << (7 - i));
      0039A1 A2 94            [12] 2199 	mov	c,_P1_4
      0039A3 E4               [12] 2200 	clr	a
      0039A4 33               [12] 2201 	rlc	a
      0039A5 FD               [12] 2202 	mov	r5,a
      0039A6 8E 04            [24] 2203 	mov	ar4,r6
      0039A8 74 07            [12] 2204 	mov	a,#0x07
      0039AA C3               [12] 2205 	clr	c
      0039AB 9C               [12] 2206 	subb	a,r4
      0039AC FC               [12] 2207 	mov	r4,a
      0039AD 8C F0            [24] 2208 	mov	b,r4
      0039AF 05 F0            [12] 2209 	inc	b
      0039B1 ED               [12] 2210 	mov	a,r5
      0039B2 80 02            [24] 2211 	sjmp	00119$
      0039B4                       2212 00117$:
      0039B4 25 E0            [12] 2213 	add	a,acc
      0039B6                       2214 00119$:
      0039B6 D5 F0 FB         [24] 2215 	djnz	b,00117$
      0039B9 FC               [12] 2216 	mov	r4,a
      0039BA 90 04 17         [24] 2217 	mov	dptr,#_i2c_read_buff_65536_104
      0039BD E0               [24] 2218 	movx	a,@dptr
      0039BE 4C               [12] 2219 	orl	a,r4
      0039BF F0               [24] 2220 	movx	@dptr,a
                                   2221 ;	8051_i2c_eeprom.c:504: i2c_delay();
      0039C0 C0 07            [24] 2222 	push	ar7
      0039C2 C0 06            [24] 2223 	push	ar6
      0039C4 12 3E 14         [24] 2224 	lcall	_i2c_delay
      0039C7 D0 06            [24] 2225 	pop	ar6
      0039C9 D0 07            [24] 2226 	pop	ar7
                                   2227 ;	8051_i2c_eeprom.c:505: SCL=0;
                                   2228 ;	assignBit
      0039CB C2 93            [12] 2229 	clr	_P1_3
                                   2230 ;	8051_i2c_eeprom.c:499: for(int i=0;i<8;i++)
      0039CD 0E               [12] 2231 	inc	r6
      0039CE BE 00 B8         [24] 2232 	cjne	r6,#0x00,00103$
      0039D1 0F               [12] 2233 	inc	r7
      0039D2 80 B5            [24] 2234 	sjmp	00103$
      0039D4                       2235 00101$:
                                   2236 ;	8051_i2c_eeprom.c:509: SDA = !ACK;         // ACK = 0, NACK = 1
      0039D4 90 04 15         [24] 2237 	mov	dptr,#_i2c_read_ACK_65536_103
      0039D7 E0               [24] 2238 	movx	a,@dptr
      0039D8 FE               [12] 2239 	mov	r6,a
      0039D9 A3               [24] 2240 	inc	dptr
      0039DA E0               [24] 2241 	movx	a,@dptr
      0039DB 4E               [12] 2242 	orl	a,r6
      0039DC B4 01 00         [24] 2243 	cjne	a,#0x01,00121$
      0039DF                       2244 00121$:
      0039DF E4               [12] 2245 	clr	a
      0039E0 33               [12] 2246 	rlc	a
      0039E1 24 FF            [12] 2247 	add	a,#0xff
      0039E3 92 94            [24] 2248 	mov	_P1_4,c
                                   2249 ;	8051_i2c_eeprom.c:510: SCL = 1;
                                   2250 ;	assignBit
      0039E5 D2 93            [12] 2251 	setb	_P1_3
                                   2252 ;	8051_i2c_eeprom.c:511: i2c_delay();
      0039E7 12 3E 14         [24] 2253 	lcall	_i2c_delay
                                   2254 ;	8051_i2c_eeprom.c:512: SCL = 0;
                                   2255 ;	assignBit
      0039EA C2 93            [12] 2256 	clr	_P1_3
                                   2257 ;	8051_i2c_eeprom.c:514: return buff;
      0039EC 90 04 17         [24] 2258 	mov	dptr,#_i2c_read_buff_65536_104
      0039EF E0               [24] 2259 	movx	a,@dptr
      0039F0 FF               [12] 2260 	mov	r7,a
      0039F1 7E 00            [12] 2261 	mov	r6,#0x00
      0039F3 8F 82            [24] 2262 	mov	dpl,r7
      0039F5 8E 83            [24] 2263 	mov	dph,r6
                                   2264 ;	8051_i2c_eeprom.c:515: }
      0039F7 22               [24] 2265 	ret
                                   2266 ;------------------------------------------------------------
                                   2267 ;Allocation info for local variables in function 'i2c_start'
                                   2268 ;------------------------------------------------------------
                                   2269 ;	8051_i2c_eeprom.c:522: void i2c_start(void)
                                   2270 ;	-----------------------------------------
                                   2271 ;	 function i2c_start
                                   2272 ;	-----------------------------------------
      0039F8                       2273 _i2c_start:
                                   2274 ;	8051_i2c_eeprom.c:524: i2c_delay();
      0039F8 12 3E 14         [24] 2275 	lcall	_i2c_delay
                                   2276 ;	8051_i2c_eeprom.c:525: SDA = 1;
                                   2277 ;	assignBit
      0039FB D2 94            [12] 2278 	setb	_P1_4
                                   2279 ;	8051_i2c_eeprom.c:526: i2c_delay();
      0039FD 12 3E 14         [24] 2280 	lcall	_i2c_delay
                                   2281 ;	8051_i2c_eeprom.c:527: SCL = 1;
                                   2282 ;	assignBit
      003A00 D2 93            [12] 2283 	setb	_P1_3
                                   2284 ;	8051_i2c_eeprom.c:528: i2c_delay();
      003A02 12 3E 14         [24] 2285 	lcall	_i2c_delay
                                   2286 ;	8051_i2c_eeprom.c:529: SDA = 0;
                                   2287 ;	assignBit
      003A05 C2 94            [12] 2288 	clr	_P1_4
                                   2289 ;	8051_i2c_eeprom.c:530: i2c_delay();
      003A07 12 3E 14         [24] 2290 	lcall	_i2c_delay
                                   2291 ;	8051_i2c_eeprom.c:531: SCL = 0;
                                   2292 ;	assignBit
      003A0A C2 93            [12] 2293 	clr	_P1_3
                                   2294 ;	8051_i2c_eeprom.c:532: }
      003A0C 22               [24] 2295 	ret
                                   2296 ;------------------------------------------------------------
                                   2297 ;Allocation info for local variables in function 'EEPROM_hexdump'
                                   2298 ;------------------------------------------------------------
                                   2299 ;end_address               Allocated with name '_EEPROM_hexdump_PARM_2'
                                   2300 ;start_address             Allocated with name '_EEPROM_hexdump_start_address_65536_109'
                                   2301 ;num_bytes                 Allocated with name '_EEPROM_hexdump_num_bytes_65537_111'
                                   2302 ;current_address           Allocated with name '_EEPROM_hexdump_current_address_65537_111'
                                   2303 ;i                         Allocated with name '_EEPROM_hexdump_i_196609_113'
                                   2304 ;data                      Allocated with name '_EEPROM_hexdump_data_327682_119'
                                   2305 ;i                         Allocated with name '_EEPROM_hexdump_i_196609_121'
                                   2306 ;data                      Allocated with name '_EEPROM_hexdump_data_327682_124'
                                   2307 ;------------------------------------------------------------
                                   2308 ;	8051_i2c_eeprom.c:541: int EEPROM_hexdump(uint16_t start_address, uint16_t end_address) {
                                   2309 ;	-----------------------------------------
                                   2310 ;	 function EEPROM_hexdump
                                   2311 ;	-----------------------------------------
      003A0D                       2312 _EEPROM_hexdump:
      003A0D AF 83            [24] 2313 	mov	r7,dph
      003A0F E5 82            [12] 2314 	mov	a,dpl
      003A11 90 04 1A         [24] 2315 	mov	dptr,#_EEPROM_hexdump_start_address_65536_109
      003A14 F0               [24] 2316 	movx	@dptr,a
      003A15 EF               [12] 2317 	mov	a,r7
      003A16 A3               [24] 2318 	inc	dptr
      003A17 F0               [24] 2319 	movx	@dptr,a
                                   2320 ;	8051_i2c_eeprom.c:543: printf("\r\n----------------------------------------------------------------\r\n");
      003A18 74 80            [12] 2321 	mov	a,#___str_43
      003A1A C0 E0            [24] 2322 	push	acc
      003A1C 74 55            [12] 2323 	mov	a,#(___str_43 >> 8)
      003A1E C0 E0            [24] 2324 	push	acc
      003A20 74 80            [12] 2325 	mov	a,#0x80
      003A22 C0 E0            [24] 2326 	push	acc
      003A24 12 3F 31         [24] 2327 	lcall	_printf
      003A27 15 81            [12] 2328 	dec	sp
      003A29 15 81            [12] 2329 	dec	sp
      003A2B 15 81            [12] 2330 	dec	sp
                                   2331 ;	8051_i2c_eeprom.c:544: printf("                    EEPROM Hex Dump                               \r\n");
      003A2D 74 C5            [12] 2332 	mov	a,#___str_44
      003A2F C0 E0            [24] 2333 	push	acc
      003A31 74 55            [12] 2334 	mov	a,#(___str_44 >> 8)
      003A33 C0 E0            [24] 2335 	push	acc
      003A35 74 80            [12] 2336 	mov	a,#0x80
      003A37 C0 E0            [24] 2337 	push	acc
      003A39 12 3F 31         [24] 2338 	lcall	_printf
      003A3C 15 81            [12] 2339 	dec	sp
      003A3E 15 81            [12] 2340 	dec	sp
      003A40 15 81            [12] 2341 	dec	sp
                                   2342 ;	8051_i2c_eeprom.c:545: printf("----------------------------------------------------------------\r\n");
      003A42 74 0A            [12] 2343 	mov	a,#___str_45
      003A44 C0 E0            [24] 2344 	push	acc
      003A46 74 56            [12] 2345 	mov	a,#(___str_45 >> 8)
      003A48 C0 E0            [24] 2346 	push	acc
      003A4A 74 80            [12] 2347 	mov	a,#0x80
      003A4C C0 E0            [24] 2348 	push	acc
      003A4E 12 3F 31         [24] 2349 	lcall	_printf
      003A51 15 81            [12] 2350 	dec	sp
      003A53 15 81            [12] 2351 	dec	sp
      003A55 15 81            [12] 2352 	dec	sp
                                   2353 ;	8051_i2c_eeprom.c:546: printf("     0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F\r\n");
      003A57 74 4D            [12] 2354 	mov	a,#___str_46
      003A59 C0 E0            [24] 2355 	push	acc
      003A5B 74 56            [12] 2356 	mov	a,#(___str_46 >> 8)
      003A5D C0 E0            [24] 2357 	push	acc
      003A5F 74 80            [12] 2358 	mov	a,#0x80
      003A61 C0 E0            [24] 2359 	push	acc
      003A63 12 3F 31         [24] 2360 	lcall	_printf
      003A66 15 81            [12] 2361 	dec	sp
      003A68 15 81            [12] 2362 	dec	sp
      003A6A 15 81            [12] 2363 	dec	sp
                                   2364 ;	8051_i2c_eeprom.c:550: uint16_t current_address = start_address;
      003A6C 90 04 1A         [24] 2365 	mov	dptr,#_EEPROM_hexdump_start_address_65536_109
      003A6F E0               [24] 2366 	movx	a,@dptr
      003A70 FE               [12] 2367 	mov	r6,a
      003A71 A3               [24] 2368 	inc	dptr
      003A72 E0               [24] 2369 	movx	a,@dptr
      003A73 FF               [12] 2370 	mov	r7,a
      003A74 90 04 1C         [24] 2371 	mov	dptr,#_EEPROM_hexdump_current_address_65537_111
      003A77 EE               [12] 2372 	mov	a,r6
      003A78 F0               [24] 2373 	movx	@dptr,a
      003A79 EF               [12] 2374 	mov	a,r7
      003A7A A3               [24] 2375 	inc	dptr
      003A7B F0               [24] 2376 	movx	@dptr,a
                                   2377 ;	8051_i2c_eeprom.c:553: while (current_address <= end_address) {
      003A7C 90 04 18         [24] 2378 	mov	dptr,#_EEPROM_hexdump_PARM_2
      003A7F E0               [24] 2379 	movx	a,@dptr
      003A80 FE               [12] 2380 	mov	r6,a
      003A81 A3               [24] 2381 	inc	dptr
      003A82 E0               [24] 2382 	movx	a,@dptr
      003A83 FF               [12] 2383 	mov	r7,a
      003A84                       2384 00119$:
      003A84 90 04 1C         [24] 2385 	mov	dptr,#_EEPROM_hexdump_current_address_65537_111
      003A87 E0               [24] 2386 	movx	a,@dptr
      003A88 FC               [12] 2387 	mov	r4,a
      003A89 A3               [24] 2388 	inc	dptr
      003A8A E0               [24] 2389 	movx	a,@dptr
      003A8B FD               [12] 2390 	mov	r5,a
      003A8C C3               [12] 2391 	clr	c
      003A8D EE               [12] 2392 	mov	a,r6
      003A8E 9C               [12] 2393 	subb	a,r4
      003A8F EF               [12] 2394 	mov	a,r7
      003A90 9D               [12] 2395 	subb	a,r5
      003A91 50 03            [24] 2396 	jnc	00183$
      003A93 02 3D 23         [24] 2397 	ljmp	00121$
      003A96                       2398 00183$:
                                   2399 ;	8051_i2c_eeprom.c:555: printf("%03X: ", current_address & 0xFFF0);
      003A96 53 04 F0         [24] 2400 	anl	ar4,#0xf0
      003A99 C0 07            [24] 2401 	push	ar7
      003A9B C0 06            [24] 2402 	push	ar6
      003A9D C0 04            [24] 2403 	push	ar4
      003A9F C0 05            [24] 2404 	push	ar5
      003AA1 74 83            [12] 2405 	mov	a,#___str_47
      003AA3 C0 E0            [24] 2406 	push	acc
      003AA5 74 56            [12] 2407 	mov	a,#(___str_47 >> 8)
      003AA7 C0 E0            [24] 2408 	push	acc
      003AA9 74 80            [12] 2409 	mov	a,#0x80
      003AAB C0 E0            [24] 2410 	push	acc
      003AAD 12 3F 31         [24] 2411 	lcall	_printf
      003AB0 E5 81            [12] 2412 	mov	a,sp
      003AB2 24 FB            [12] 2413 	add	a,#0xfb
      003AB4 F5 81            [12] 2414 	mov	sp,a
      003AB6 D0 06            [24] 2415 	pop	ar6
      003AB8 D0 07            [24] 2416 	pop	ar7
                                   2417 ;	8051_i2c_eeprom.c:558: for (uint8_t i = 0; i < 16; i++) {
      003ABA 7D 00            [12] 2418 	mov	r5,#0x00
      003ABC                       2419 00123$:
      003ABC BD 10 00         [24] 2420 	cjne	r5,#0x10,00184$
      003ABF                       2421 00184$:
      003ABF 40 03            [24] 2422 	jc	00185$
      003AC1 02 3B F8         [24] 2423 	ljmp	00110$
      003AC4                       2424 00185$:
                                   2425 ;	8051_i2c_eeprom.c:559: if (current_address + i <= end_address) {
      003AC4 8D 03            [24] 2426 	mov	ar3,r5
      003AC6 7C 00            [12] 2427 	mov	r4,#0x00
      003AC8 90 04 1C         [24] 2428 	mov	dptr,#_EEPROM_hexdump_current_address_65537_111
      003ACB E0               [24] 2429 	movx	a,@dptr
      003ACC F9               [12] 2430 	mov	r1,a
      003ACD A3               [24] 2431 	inc	dptr
      003ACE E0               [24] 2432 	movx	a,@dptr
      003ACF FA               [12] 2433 	mov	r2,a
      003AD0 C0 05            [24] 2434 	push	ar5
      003AD2 89 00            [24] 2435 	mov	ar0,r1
      003AD4 8A 05            [24] 2436 	mov	ar5,r2
      003AD6 EB               [12] 2437 	mov	a,r3
      003AD7 28               [12] 2438 	add	a,r0
      003AD8 F8               [12] 2439 	mov	r0,a
      003AD9 EC               [12] 2440 	mov	a,r4
      003ADA 3D               [12] 2441 	addc	a,r5
      003ADB FD               [12] 2442 	mov	r5,a
      003ADC C3               [12] 2443 	clr	c
      003ADD EE               [12] 2444 	mov	a,r6
      003ADE 98               [12] 2445 	subb	a,r0
      003ADF EF               [12] 2446 	mov	a,r7
      003AE0 9D               [12] 2447 	subb	a,r5
      003AE1 D0 05            [24] 2448 	pop	ar5
      003AE3 50 03            [24] 2449 	jnc	00186$
      003AE5 02 3B D3         [24] 2450 	ljmp	00108$
      003AE8                       2451 00186$:
                                   2452 ;	8051_i2c_eeprom.c:561: i2c_start();
      003AE8 C0 07            [24] 2453 	push	ar7
      003AEA C0 06            [24] 2454 	push	ar6
      003AEC C0 05            [24] 2455 	push	ar5
      003AEE C0 02            [24] 2456 	push	ar2
      003AF0 C0 01            [24] 2457 	push	ar1
      003AF2 12 39 F8         [24] 2458 	lcall	_i2c_start
                                   2459 ;	8051_i2c_eeprom.c:564: if (!i2c_write(EEPROM_ID | WRITE)) {
      003AF5 75 82 A0         [24] 2460 	mov	dpl,#0xa0
      003AF8 12 39 0B         [24] 2461 	lcall	_i2c_write
      003AFB E5 82            [12] 2462 	mov	a,dpl
      003AFD 85 83 F0         [24] 2463 	mov	b,dph
      003B00 D0 01            [24] 2464 	pop	ar1
      003B02 D0 02            [24] 2465 	pop	ar2
      003B04 D0 05            [24] 2466 	pop	ar5
      003B06 D0 06            [24] 2467 	pop	ar6
      003B08 D0 07            [24] 2468 	pop	ar7
      003B0A 45 F0            [12] 2469 	orl	a,b
      003B0C 70 1C            [24] 2470 	jnz	00102$
                                   2471 ;	8051_i2c_eeprom.c:565: printf("Error: Device not responding\r\n");
      003B0E 74 8A            [12] 2472 	mov	a,#___str_48
      003B10 C0 E0            [24] 2473 	push	acc
      003B12 74 56            [12] 2474 	mov	a,#(___str_48 >> 8)
      003B14 C0 E0            [24] 2475 	push	acc
      003B16 74 80            [12] 2476 	mov	a,#0x80
      003B18 C0 E0            [24] 2477 	push	acc
      003B1A 12 3F 31         [24] 2478 	lcall	_printf
      003B1D 15 81            [12] 2479 	dec	sp
      003B1F 15 81            [12] 2480 	dec	sp
      003B21 15 81            [12] 2481 	dec	sp
                                   2482 ;	8051_i2c_eeprom.c:566: i2c_stop();
      003B23 12 3D DB         [24] 2483 	lcall	_i2c_stop
                                   2484 ;	8051_i2c_eeprom.c:567: return 0;
      003B26 90 00 00         [24] 2485 	mov	dptr,#0x0000
      003B29 22               [24] 2486 	ret
      003B2A                       2487 00102$:
                                   2488 ;	8051_i2c_eeprom.c:571: if (!i2c_write((unsigned char)(current_address + i))) {
      003B2A ED               [12] 2489 	mov	a,r5
      003B2B 29               [12] 2490 	add	a,r1
      003B2C F5 82            [12] 2491 	mov	dpl,a
      003B2E C0 07            [24] 2492 	push	ar7
      003B30 C0 06            [24] 2493 	push	ar6
      003B32 C0 05            [24] 2494 	push	ar5
      003B34 12 39 0B         [24] 2495 	lcall	_i2c_write
      003B37 E5 82            [12] 2496 	mov	a,dpl
      003B39 85 83 F0         [24] 2497 	mov	b,dph
      003B3C D0 05            [24] 2498 	pop	ar5
      003B3E D0 06            [24] 2499 	pop	ar6
      003B40 D0 07            [24] 2500 	pop	ar7
      003B42 45 F0            [12] 2501 	orl	a,b
      003B44 70 1C            [24] 2502 	jnz	00104$
                                   2503 ;	8051_i2c_eeprom.c:572: printf("Error: Address write failed\r\n");
      003B46 74 A9            [12] 2504 	mov	a,#___str_49
      003B48 C0 E0            [24] 2505 	push	acc
      003B4A 74 56            [12] 2506 	mov	a,#(___str_49 >> 8)
      003B4C C0 E0            [24] 2507 	push	acc
      003B4E 74 80            [12] 2508 	mov	a,#0x80
      003B50 C0 E0            [24] 2509 	push	acc
      003B52 12 3F 31         [24] 2510 	lcall	_printf
      003B55 15 81            [12] 2511 	dec	sp
      003B57 15 81            [12] 2512 	dec	sp
      003B59 15 81            [12] 2513 	dec	sp
                                   2514 ;	8051_i2c_eeprom.c:573: i2c_stop();
      003B5B 12 3D DB         [24] 2515 	lcall	_i2c_stop
                                   2516 ;	8051_i2c_eeprom.c:574: return 0;
      003B5E 90 00 00         [24] 2517 	mov	dptr,#0x0000
      003B61 22               [24] 2518 	ret
      003B62                       2519 00104$:
                                   2520 ;	8051_i2c_eeprom.c:578: i2c_start();
      003B62 C0 07            [24] 2521 	push	ar7
      003B64 C0 06            [24] 2522 	push	ar6
      003B66 C0 05            [24] 2523 	push	ar5
      003B68 12 39 F8         [24] 2524 	lcall	_i2c_start
                                   2525 ;	8051_i2c_eeprom.c:581: if (!i2c_write(EEPROM_ID | READ)) {
      003B6B 75 82 A1         [24] 2526 	mov	dpl,#0xa1
      003B6E 12 39 0B         [24] 2527 	lcall	_i2c_write
      003B71 E5 82            [12] 2528 	mov	a,dpl
      003B73 85 83 F0         [24] 2529 	mov	b,dph
      003B76 D0 05            [24] 2530 	pop	ar5
      003B78 D0 06            [24] 2531 	pop	ar6
      003B7A D0 07            [24] 2532 	pop	ar7
      003B7C 45 F0            [12] 2533 	orl	a,b
      003B7E 70 1C            [24] 2534 	jnz	00106$
                                   2535 ;	8051_i2c_eeprom.c:582: printf("Error: Device not responding in read mode\r\n");
      003B80 74 C7            [12] 2536 	mov	a,#___str_50
      003B82 C0 E0            [24] 2537 	push	acc
      003B84 74 56            [12] 2538 	mov	a,#(___str_50 >> 8)
      003B86 C0 E0            [24] 2539 	push	acc
      003B88 74 80            [12] 2540 	mov	a,#0x80
      003B8A C0 E0            [24] 2541 	push	acc
      003B8C 12 3F 31         [24] 2542 	lcall	_printf
      003B8F 15 81            [12] 2543 	dec	sp
      003B91 15 81            [12] 2544 	dec	sp
      003B93 15 81            [12] 2545 	dec	sp
                                   2546 ;	8051_i2c_eeprom.c:583: i2c_stop();
      003B95 12 3D DB         [24] 2547 	lcall	_i2c_stop
                                   2548 ;	8051_i2c_eeprom.c:584: return 0;
      003B98 90 00 00         [24] 2549 	mov	dptr,#0x0000
      003B9B 22               [24] 2550 	ret
      003B9C                       2551 00106$:
                                   2552 ;	8051_i2c_eeprom.c:588: unsigned char data = i2c_read(0);
      003B9C 90 00 00         [24] 2553 	mov	dptr,#0x0000
      003B9F C0 07            [24] 2554 	push	ar7
      003BA1 C0 06            [24] 2555 	push	ar6
      003BA3 C0 05            [24] 2556 	push	ar5
      003BA5 12 39 73         [24] 2557 	lcall	_i2c_read
      003BA8 AB 82            [24] 2558 	mov	r3,dpl
                                   2559 ;	8051_i2c_eeprom.c:589: printf("%02X ", data);
      003BAA 7C 00            [12] 2560 	mov	r4,#0x00
      003BAC C0 03            [24] 2561 	push	ar3
      003BAE C0 04            [24] 2562 	push	ar4
      003BB0 74 F3            [12] 2563 	mov	a,#___str_51
      003BB2 C0 E0            [24] 2564 	push	acc
      003BB4 74 56            [12] 2565 	mov	a,#(___str_51 >> 8)
      003BB6 C0 E0            [24] 2566 	push	acc
      003BB8 74 80            [12] 2567 	mov	a,#0x80
      003BBA C0 E0            [24] 2568 	push	acc
      003BBC 12 3F 31         [24] 2569 	lcall	_printf
      003BBF E5 81            [12] 2570 	mov	a,sp
      003BC1 24 FB            [12] 2571 	add	a,#0xfb
      003BC3 F5 81            [12] 2572 	mov	sp,a
                                   2573 ;	8051_i2c_eeprom.c:591: i2c_stop();
      003BC5 12 3D DB         [24] 2574 	lcall	_i2c_stop
                                   2575 ;	8051_i2c_eeprom.c:592: i2c_delay(); // Small delay between reads
      003BC8 12 3E 14         [24] 2576 	lcall	_i2c_delay
      003BCB D0 05            [24] 2577 	pop	ar5
      003BCD D0 06            [24] 2578 	pop	ar6
      003BCF D0 07            [24] 2579 	pop	ar7
      003BD1 80 21            [24] 2580 	sjmp	00124$
      003BD3                       2581 00108$:
                                   2582 ;	8051_i2c_eeprom.c:594: printf("   "); // Print spaces for addresses beyond end_address
      003BD3 C0 07            [24] 2583 	push	ar7
      003BD5 C0 06            [24] 2584 	push	ar6
      003BD7 C0 05            [24] 2585 	push	ar5
      003BD9 74 F9            [12] 2586 	mov	a,#___str_52
      003BDB C0 E0            [24] 2587 	push	acc
      003BDD 74 56            [12] 2588 	mov	a,#(___str_52 >> 8)
      003BDF C0 E0            [24] 2589 	push	acc
      003BE1 74 80            [12] 2590 	mov	a,#0x80
      003BE3 C0 E0            [24] 2591 	push	acc
      003BE5 12 3F 31         [24] 2592 	lcall	_printf
      003BE8 15 81            [12] 2593 	dec	sp
      003BEA 15 81            [12] 2594 	dec	sp
      003BEC 15 81            [12] 2595 	dec	sp
      003BEE D0 05            [24] 2596 	pop	ar5
      003BF0 D0 06            [24] 2597 	pop	ar6
      003BF2 D0 07            [24] 2598 	pop	ar7
      003BF4                       2599 00124$:
                                   2600 ;	8051_i2c_eeprom.c:558: for (uint8_t i = 0; i < 16; i++) {
      003BF4 0D               [12] 2601 	inc	r5
      003BF5 02 3A BC         [24] 2602 	ljmp	00123$
      003BF8                       2603 00110$:
                                   2604 ;	8051_i2c_eeprom.c:599: printf(" | ");
      003BF8 C0 07            [24] 2605 	push	ar7
      003BFA C0 06            [24] 2606 	push	ar6
      003BFC 74 FD            [12] 2607 	mov	a,#___str_53
      003BFE C0 E0            [24] 2608 	push	acc
      003C00 74 56            [12] 2609 	mov	a,#(___str_53 >> 8)
      003C02 C0 E0            [24] 2610 	push	acc
      003C04 74 80            [12] 2611 	mov	a,#0x80
      003C06 C0 E0            [24] 2612 	push	acc
      003C08 12 3F 31         [24] 2613 	lcall	_printf
      003C0B 15 81            [12] 2614 	dec	sp
      003C0D 15 81            [12] 2615 	dec	sp
      003C0F 15 81            [12] 2616 	dec	sp
      003C11 D0 06            [24] 2617 	pop	ar6
      003C13 D0 07            [24] 2618 	pop	ar7
                                   2619 ;	8051_i2c_eeprom.c:600: for (uint8_t i = 0; i < 16; i++) {
      003C15 90 04 1C         [24] 2620 	mov	dptr,#_EEPROM_hexdump_current_address_65537_111
      003C18 E0               [24] 2621 	movx	a,@dptr
      003C19 FC               [12] 2622 	mov	r4,a
      003C1A A3               [24] 2623 	inc	dptr
      003C1B E0               [24] 2624 	movx	a,@dptr
      003C1C FD               [12] 2625 	mov	r5,a
      003C1D 7B 00            [12] 2626 	mov	r3,#0x00
      003C1F                       2627 00126$:
      003C1F BB 10 00         [24] 2628 	cjne	r3,#0x10,00190$
      003C22                       2629 00190$:
      003C22 40 03            [24] 2630 	jc	00191$
      003C24 02 3C EC         [24] 2631 	ljmp	00118$
      003C27                       2632 00191$:
                                   2633 ;	8051_i2c_eeprom.c:601: if (current_address + i <= end_address) {
      003C27 8B 01            [24] 2634 	mov	ar1,r3
      003C29 7A 00            [12] 2635 	mov	r2,#0x00
      003C2B C0 03            [24] 2636 	push	ar3
      003C2D 8C 00            [24] 2637 	mov	ar0,r4
      003C2F 8D 03            [24] 2638 	mov	ar3,r5
      003C31 E9               [12] 2639 	mov	a,r1
      003C32 28               [12] 2640 	add	a,r0
      003C33 F8               [12] 2641 	mov	r0,a
      003C34 EA               [12] 2642 	mov	a,r2
      003C35 3B               [12] 2643 	addc	a,r3
      003C36 FB               [12] 2644 	mov	r3,a
      003C37 C3               [12] 2645 	clr	c
      003C38 EE               [12] 2646 	mov	a,r6
      003C39 98               [12] 2647 	subb	a,r0
      003C3A EF               [12] 2648 	mov	a,r7
      003C3B 9B               [12] 2649 	subb	a,r3
      003C3C D0 03            [24] 2650 	pop	ar3
      003C3E 50 03            [24] 2651 	jnc	00192$
      003C40 02 3C CE         [24] 2652 	ljmp	00116$
      003C43                       2653 00192$:
                                   2654 ;	8051_i2c_eeprom.c:603: i2c_start();
      003C43 C0 07            [24] 2655 	push	ar7
      003C45 C0 06            [24] 2656 	push	ar6
      003C47 C0 05            [24] 2657 	push	ar5
      003C49 C0 04            [24] 2658 	push	ar4
      003C4B C0 03            [24] 2659 	push	ar3
      003C4D 12 39 F8         [24] 2660 	lcall	_i2c_start
                                   2661 ;	8051_i2c_eeprom.c:604: i2c_write(EEPROM_ID | WRITE);
      003C50 75 82 A0         [24] 2662 	mov	dpl,#0xa0
      003C53 12 39 0B         [24] 2663 	lcall	_i2c_write
      003C56 D0 03            [24] 2664 	pop	ar3
      003C58 D0 04            [24] 2665 	pop	ar4
                                   2666 ;	8051_i2c_eeprom.c:605: i2c_write((unsigned char)(current_address + i));
      003C5A 8C 02            [24] 2667 	mov	ar2,r4
      003C5C EB               [12] 2668 	mov	a,r3
      003C5D 2A               [12] 2669 	add	a,r2
      003C5E F5 82            [12] 2670 	mov	dpl,a
      003C60 C0 04            [24] 2671 	push	ar4
      003C62 C0 03            [24] 2672 	push	ar3
      003C64 12 39 0B         [24] 2673 	lcall	_i2c_write
                                   2674 ;	8051_i2c_eeprom.c:606: i2c_start();
      003C67 12 39 F8         [24] 2675 	lcall	_i2c_start
                                   2676 ;	8051_i2c_eeprom.c:607: i2c_write(EEPROM_ID | READ);
      003C6A 75 82 A1         [24] 2677 	mov	dpl,#0xa1
      003C6D 12 39 0B         [24] 2678 	lcall	_i2c_write
                                   2679 ;	8051_i2c_eeprom.c:608: unsigned char data = i2c_read(0);
      003C70 90 00 00         [24] 2680 	mov	dptr,#0x0000
      003C73 12 39 73         [24] 2681 	lcall	_i2c_read
      003C76 A9 82            [24] 2682 	mov	r1,dpl
                                   2683 ;	8051_i2c_eeprom.c:609: i2c_stop();
      003C78 C0 01            [24] 2684 	push	ar1
      003C7A 12 3D DB         [24] 2685 	lcall	_i2c_stop
      003C7D D0 01            [24] 2686 	pop	ar1
      003C7F D0 03            [24] 2687 	pop	ar3
      003C81 D0 04            [24] 2688 	pop	ar4
      003C83 D0 05            [24] 2689 	pop	ar5
      003C85 D0 06            [24] 2690 	pop	ar6
      003C87 D0 07            [24] 2691 	pop	ar7
                                   2692 ;	8051_i2c_eeprom.c:612: if (data >= 32 && data <= 126) {
      003C89 B9 20 00         [24] 2693 	cjne	r1,#0x20,00193$
      003C8C                       2694 00193$:
      003C8C 40 24            [24] 2695 	jc	00112$
      003C8E E9               [12] 2696 	mov	a,r1
      003C8F 24 81            [12] 2697 	add	a,#0xff - 0x7e
      003C91 40 1F            [24] 2698 	jc	00112$
                                   2699 ;	8051_i2c_eeprom.c:613: putchar(data);
      003C93 7A 00            [12] 2700 	mov	r2,#0x00
      003C95 89 82            [24] 2701 	mov	dpl,r1
      003C97 8A 83            [24] 2702 	mov	dph,r2
      003C99 C0 07            [24] 2703 	push	ar7
      003C9B C0 06            [24] 2704 	push	ar6
      003C9D C0 05            [24] 2705 	push	ar5
      003C9F C0 04            [24] 2706 	push	ar4
      003CA1 C0 03            [24] 2707 	push	ar3
      003CA3 12 30 62         [24] 2708 	lcall	_putchar
      003CA6 D0 03            [24] 2709 	pop	ar3
      003CA8 D0 04            [24] 2710 	pop	ar4
      003CAA D0 05            [24] 2711 	pop	ar5
      003CAC D0 06            [24] 2712 	pop	ar6
      003CAE D0 07            [24] 2713 	pop	ar7
      003CB0 80 36            [24] 2714 	sjmp	00127$
      003CB2                       2715 00112$:
                                   2716 ;	8051_i2c_eeprom.c:615: putchar('.');
      003CB2 90 00 2E         [24] 2717 	mov	dptr,#0x002e
      003CB5 C0 07            [24] 2718 	push	ar7
      003CB7 C0 06            [24] 2719 	push	ar6
      003CB9 C0 05            [24] 2720 	push	ar5
      003CBB C0 04            [24] 2721 	push	ar4
      003CBD C0 03            [24] 2722 	push	ar3
      003CBF 12 30 62         [24] 2723 	lcall	_putchar
      003CC2 D0 03            [24] 2724 	pop	ar3
      003CC4 D0 04            [24] 2725 	pop	ar4
      003CC6 D0 05            [24] 2726 	pop	ar5
      003CC8 D0 06            [24] 2727 	pop	ar6
      003CCA D0 07            [24] 2728 	pop	ar7
      003CCC 80 1A            [24] 2729 	sjmp	00127$
      003CCE                       2730 00116$:
                                   2731 ;	8051_i2c_eeprom.c:618: putchar(' ');
      003CCE 90 00 20         [24] 2732 	mov	dptr,#0x0020
      003CD1 C0 07            [24] 2733 	push	ar7
      003CD3 C0 06            [24] 2734 	push	ar6
      003CD5 C0 05            [24] 2735 	push	ar5
      003CD7 C0 04            [24] 2736 	push	ar4
      003CD9 C0 03            [24] 2737 	push	ar3
      003CDB 12 30 62         [24] 2738 	lcall	_putchar
      003CDE D0 03            [24] 2739 	pop	ar3
      003CE0 D0 04            [24] 2740 	pop	ar4
      003CE2 D0 05            [24] 2741 	pop	ar5
      003CE4 D0 06            [24] 2742 	pop	ar6
      003CE6 D0 07            [24] 2743 	pop	ar7
      003CE8                       2744 00127$:
                                   2745 ;	8051_i2c_eeprom.c:600: for (uint8_t i = 0; i < 16; i++) {
      003CE8 0B               [12] 2746 	inc	r3
      003CE9 02 3C 1F         [24] 2747 	ljmp	00126$
      003CEC                       2748 00118$:
                                   2749 ;	8051_i2c_eeprom.c:622: printf("\r\n");
      003CEC C0 07            [24] 2750 	push	ar7
      003CEE C0 06            [24] 2751 	push	ar6
      003CF0 74 01            [12] 2752 	mov	a,#___str_54
      003CF2 C0 E0            [24] 2753 	push	acc
      003CF4 74 57            [12] 2754 	mov	a,#(___str_54 >> 8)
      003CF6 C0 E0            [24] 2755 	push	acc
      003CF8 74 80            [12] 2756 	mov	a,#0x80
      003CFA C0 E0            [24] 2757 	push	acc
      003CFC 12 3F 31         [24] 2758 	lcall	_printf
      003CFF 15 81            [12] 2759 	dec	sp
      003D01 15 81            [12] 2760 	dec	sp
      003D03 15 81            [12] 2761 	dec	sp
      003D05 D0 06            [24] 2762 	pop	ar6
      003D07 D0 07            [24] 2763 	pop	ar7
                                   2764 ;	8051_i2c_eeprom.c:623: current_address += 16;
      003D09 90 04 1C         [24] 2765 	mov	dptr,#_EEPROM_hexdump_current_address_65537_111
      003D0C E0               [24] 2766 	movx	a,@dptr
      003D0D FC               [12] 2767 	mov	r4,a
      003D0E A3               [24] 2768 	inc	dptr
      003D0F E0               [24] 2769 	movx	a,@dptr
      003D10 FD               [12] 2770 	mov	r5,a
      003D11 74 10            [12] 2771 	mov	a,#0x10
      003D13 2C               [12] 2772 	add	a,r4
      003D14 FC               [12] 2773 	mov	r4,a
      003D15 E4               [12] 2774 	clr	a
      003D16 3D               [12] 2775 	addc	a,r5
      003D17 FD               [12] 2776 	mov	r5,a
      003D18 90 04 1C         [24] 2777 	mov	dptr,#_EEPROM_hexdump_current_address_65537_111
      003D1B EC               [12] 2778 	mov	a,r4
      003D1C F0               [24] 2779 	movx	@dptr,a
      003D1D ED               [12] 2780 	mov	a,r5
      003D1E A3               [24] 2781 	inc	dptr
      003D1F F0               [24] 2782 	movx	@dptr,a
      003D20 02 3A 84         [24] 2783 	ljmp	00119$
      003D23                       2784 00121$:
                                   2785 ;	8051_i2c_eeprom.c:626: printf("----------------------------------------------------------------\r\n");
      003D23 74 0A            [12] 2786 	mov	a,#___str_45
      003D25 C0 E0            [24] 2787 	push	acc
      003D27 74 56            [12] 2788 	mov	a,#(___str_45 >> 8)
      003D29 C0 E0            [24] 2789 	push	acc
      003D2B 74 80            [12] 2790 	mov	a,#0x80
      003D2D C0 E0            [24] 2791 	push	acc
      003D2F 12 3F 31         [24] 2792 	lcall	_printf
      003D32 15 81            [12] 2793 	dec	sp
      003D34 15 81            [12] 2794 	dec	sp
      003D36 15 81            [12] 2795 	dec	sp
                                   2796 ;	8051_i2c_eeprom.c:627: return 1;
      003D38 90 00 01         [24] 2797 	mov	dptr,#0x0001
                                   2798 ;	8051_i2c_eeprom.c:628: }
      003D3B 22               [24] 2799 	ret
                                   2800 ;------------------------------------------------------------
                                   2801 ;Allocation info for local variables in function 'handler_EEPROM_hexdump'
                                   2802 ;------------------------------------------------------------
                                   2803 ;start_addr                Allocated with name '_handler_EEPROM_hexdump_start_addr_65537_130'
                                   2804 ;end_addr                  Allocated with name '_handler_EEPROM_hexdump_end_addr_65538_132'
                                   2805 ;------------------------------------------------------------
                                   2806 ;	8051_i2c_eeprom.c:631: void handler_EEPROM_hexdump(void) {
                                   2807 ;	-----------------------------------------
                                   2808 ;	 function handler_EEPROM_hexdump
                                   2809 ;	-----------------------------------------
      003D3C                       2810 _handler_EEPROM_hexdump:
                                   2811 ;	8051_i2c_eeprom.c:632: printf("\nEnter Start Address for HEX Dump (000-7FF):\r\n");
      003D3C 74 04            [12] 2812 	mov	a,#___str_55
      003D3E C0 E0            [24] 2813 	push	acc
      003D40 74 57            [12] 2814 	mov	a,#(___str_55 >> 8)
      003D42 C0 E0            [24] 2815 	push	acc
      003D44 74 80            [12] 2816 	mov	a,#0x80
      003D46 C0 E0            [24] 2817 	push	acc
      003D48 12 3F 31         [24] 2818 	lcall	_printf
      003D4B 15 81            [12] 2819 	dec	sp
      003D4D 15 81            [12] 2820 	dec	sp
      003D4F 15 81            [12] 2821 	dec	sp
                                   2822 ;	8051_i2c_eeprom.c:633: uint16_t start_addr = take_address();
      003D51 12 33 23         [24] 2823 	lcall	_take_address
      003D54 AE 82            [24] 2824 	mov	r6,dpl
      003D56 AF 83            [24] 2825 	mov	r7,dph
                                   2826 ;	8051_i2c_eeprom.c:635: if (start_addr > ADDR_MAX) {
      003D58 8E 04            [24] 2827 	mov	ar4,r6
      003D5A 8F 05            [24] 2828 	mov	ar5,r7
      003D5C C3               [12] 2829 	clr	c
      003D5D 74 FF            [12] 2830 	mov	a,#0xff
      003D5F 9C               [12] 2831 	subb	a,r4
      003D60 74 07            [12] 2832 	mov	a,#0x07
      003D62 9D               [12] 2833 	subb	a,r5
      003D63 50 16            [24] 2834 	jnc	00102$
                                   2835 ;	8051_i2c_eeprom.c:636: printf("Invalid Start Address! Must be between 0x000 and 0x7FF\r\n");
      003D65 74 33            [12] 2836 	mov	a,#___str_56
      003D67 C0 E0            [24] 2837 	push	acc
      003D69 74 57            [12] 2838 	mov	a,#(___str_56 >> 8)
      003D6B C0 E0            [24] 2839 	push	acc
      003D6D 74 80            [12] 2840 	mov	a,#0x80
      003D6F C0 E0            [24] 2841 	push	acc
      003D71 12 3F 31         [24] 2842 	lcall	_printf
      003D74 15 81            [12] 2843 	dec	sp
      003D76 15 81            [12] 2844 	dec	sp
      003D78 15 81            [12] 2845 	dec	sp
                                   2846 ;	8051_i2c_eeprom.c:637: return;
      003D7A 22               [24] 2847 	ret
      003D7B                       2848 00102$:
                                   2849 ;	8051_i2c_eeprom.c:640: printf("\nEnter End Address for HEX Dump (000-7FF):\r\n");
      003D7B C0 07            [24] 2850 	push	ar7
      003D7D C0 06            [24] 2851 	push	ar6
      003D7F 74 6C            [12] 2852 	mov	a,#___str_57
      003D81 C0 E0            [24] 2853 	push	acc
      003D83 74 57            [12] 2854 	mov	a,#(___str_57 >> 8)
      003D85 C0 E0            [24] 2855 	push	acc
      003D87 74 80            [12] 2856 	mov	a,#0x80
      003D89 C0 E0            [24] 2857 	push	acc
      003D8B 12 3F 31         [24] 2858 	lcall	_printf
      003D8E 15 81            [12] 2859 	dec	sp
      003D90 15 81            [12] 2860 	dec	sp
      003D92 15 81            [12] 2861 	dec	sp
                                   2862 ;	8051_i2c_eeprom.c:641: uint16_t end_addr = take_address();
      003D94 12 33 23         [24] 2863 	lcall	_take_address
      003D97 AC 82            [24] 2864 	mov	r4,dpl
      003D99 AD 83            [24] 2865 	mov	r5,dph
      003D9B D0 06            [24] 2866 	pop	ar6
      003D9D D0 07            [24] 2867 	pop	ar7
                                   2868 ;	8051_i2c_eeprom.c:643: if (end_addr > ADDR_MAX || end_addr < start_addr) {
      003D9F 8C 02            [24] 2869 	mov	ar2,r4
      003DA1 8D 03            [24] 2870 	mov	ar3,r5
      003DA3 C3               [12] 2871 	clr	c
      003DA4 74 FF            [12] 2872 	mov	a,#0xff
      003DA6 9A               [12] 2873 	subb	a,r2
      003DA7 74 07            [12] 2874 	mov	a,#0x07
      003DA9 9B               [12] 2875 	subb	a,r3
      003DAA 40 06            [24] 2876 	jc	00103$
      003DAC EC               [12] 2877 	mov	a,r4
      003DAD 9E               [12] 2878 	subb	a,r6
      003DAE ED               [12] 2879 	mov	a,r5
      003DAF 9F               [12] 2880 	subb	a,r7
      003DB0 50 1A            [24] 2881 	jnc	00104$
      003DB2                       2882 00103$:
                                   2883 ;	8051_i2c_eeprom.c:644: printf("Invalid End Address! Must be between 0x%03X and 0x7FF\r\n", start_addr);
      003DB2 C0 06            [24] 2884 	push	ar6
      003DB4 C0 07            [24] 2885 	push	ar7
      003DB6 74 99            [12] 2886 	mov	a,#___str_58
      003DB8 C0 E0            [24] 2887 	push	acc
      003DBA 74 57            [12] 2888 	mov	a,#(___str_58 >> 8)
      003DBC C0 E0            [24] 2889 	push	acc
      003DBE 74 80            [12] 2890 	mov	a,#0x80
      003DC0 C0 E0            [24] 2891 	push	acc
      003DC2 12 3F 31         [24] 2892 	lcall	_printf
      003DC5 E5 81            [12] 2893 	mov	a,sp
      003DC7 24 FB            [12] 2894 	add	a,#0xfb
      003DC9 F5 81            [12] 2895 	mov	sp,a
                                   2896 ;	8051_i2c_eeprom.c:645: return;
      003DCB 22               [24] 2897 	ret
      003DCC                       2898 00104$:
                                   2899 ;	8051_i2c_eeprom.c:648: EEPROM_hexdump(start_addr, end_addr);
      003DCC 90 04 18         [24] 2900 	mov	dptr,#_EEPROM_hexdump_PARM_2
      003DCF EC               [12] 2901 	mov	a,r4
      003DD0 F0               [24] 2902 	movx	@dptr,a
      003DD1 ED               [12] 2903 	mov	a,r5
      003DD2 A3               [24] 2904 	inc	dptr
      003DD3 F0               [24] 2905 	movx	@dptr,a
      003DD4 8E 82            [24] 2906 	mov	dpl,r6
      003DD6 8F 83            [24] 2907 	mov	dph,r7
                                   2908 ;	8051_i2c_eeprom.c:649: }
      003DD8 02 3A 0D         [24] 2909 	ljmp	_EEPROM_hexdump
                                   2910 ;------------------------------------------------------------
                                   2911 ;Allocation info for local variables in function 'i2c_stop'
                                   2912 ;------------------------------------------------------------
                                   2913 ;	8051_i2c_eeprom.c:781: void i2c_stop(void)
                                   2914 ;	-----------------------------------------
                                   2915 ;	 function i2c_stop
                                   2916 ;	-----------------------------------------
      003DDB                       2917 _i2c_stop:
                                   2918 ;	8051_i2c_eeprom.c:783: SDA = 0;
                                   2919 ;	assignBit
      003DDB C2 94            [12] 2920 	clr	_P1_4
                                   2921 ;	8051_i2c_eeprom.c:784: i2c_delay();
      003DDD 12 3E 14         [24] 2922 	lcall	_i2c_delay
                                   2923 ;	8051_i2c_eeprom.c:785: SCL = 1;
                                   2924 ;	assignBit
      003DE0 D2 93            [12] 2925 	setb	_P1_3
                                   2926 ;	8051_i2c_eeprom.c:786: i2c_delay();
      003DE2 12 3E 14         [24] 2927 	lcall	_i2c_delay
                                   2928 ;	8051_i2c_eeprom.c:787: SDA = 1; 
                                   2929 ;	assignBit
      003DE5 D2 94            [12] 2930 	setb	_P1_4
                                   2931 ;	8051_i2c_eeprom.c:788: }
      003DE7 22               [24] 2932 	ret
                                   2933 ;------------------------------------------------------------
                                   2934 ;Allocation info for local variables in function 'eeprom_reset'
                                   2935 ;------------------------------------------------------------
                                   2936 ;i                         Allocated with name '_eeprom_reset_i_131072_137'
                                   2937 ;------------------------------------------------------------
                                   2938 ;	8051_i2c_eeprom.c:798: void eeprom_reset()
                                   2939 ;	-----------------------------------------
                                   2940 ;	 function eeprom_reset
                                   2941 ;	-----------------------------------------
      003DE8                       2942 _eeprom_reset:
                                   2943 ;	8051_i2c_eeprom.c:800: i2c_start();
      003DE8 12 39 F8         [24] 2944 	lcall	_i2c_start
                                   2945 ;	8051_i2c_eeprom.c:801: SDA = 0;
                                   2946 ;	assignBit
      003DEB C2 94            [12] 2947 	clr	_P1_4
                                   2948 ;	8051_i2c_eeprom.c:802: SDA = 1;
                                   2949 ;	assignBit
      003DED D2 94            [12] 2950 	setb	_P1_4
                                   2951 ;	8051_i2c_eeprom.c:803: for(int i = 0; i<10; i++)
      003DEF 7E 00            [12] 2952 	mov	r6,#0x00
      003DF1 7F 00            [12] 2953 	mov	r7,#0x00
      003DF3                       2954 00103$:
      003DF3 C3               [12] 2955 	clr	c
      003DF4 EE               [12] 2956 	mov	a,r6
      003DF5 94 0A            [12] 2957 	subb	a,#0x0a
      003DF7 EF               [12] 2958 	mov	a,r7
      003DF8 64 80            [12] 2959 	xrl	a,#0x80
      003DFA 94 80            [12] 2960 	subb	a,#0x80
      003DFC 50 0B            [24] 2961 	jnc	00101$
                                   2962 ;	8051_i2c_eeprom.c:805: SCL = 0;
                                   2963 ;	assignBit
      003DFE C2 93            [12] 2964 	clr	_P1_3
                                   2965 ;	8051_i2c_eeprom.c:806: SCL = 1;
                                   2966 ;	assignBit
      003E00 D2 93            [12] 2967 	setb	_P1_3
                                   2968 ;	8051_i2c_eeprom.c:803: for(int i = 0; i<10; i++)
      003E02 0E               [12] 2969 	inc	r6
      003E03 BE 00 ED         [24] 2970 	cjne	r6,#0x00,00103$
      003E06 0F               [12] 2971 	inc	r7
      003E07 80 EA            [24] 2972 	sjmp	00103$
      003E09                       2973 00101$:
                                   2974 ;	8051_i2c_eeprom.c:808: i2c_start();
      003E09 12 39 F8         [24] 2975 	lcall	_i2c_start
                                   2976 ;	8051_i2c_eeprom.c:809: SDA = 0;
                                   2977 ;	assignBit
      003E0C C2 94            [12] 2978 	clr	_P1_4
                                   2979 ;	8051_i2c_eeprom.c:810: i2c_stop();
      003E0E 12 3D DB         [24] 2980 	lcall	_i2c_stop
                                   2981 ;	8051_i2c_eeprom.c:811: SDA = 1;
                                   2982 ;	assignBit
      003E11 D2 94            [12] 2983 	setb	_P1_4
                                   2984 ;	8051_i2c_eeprom.c:812: }
      003E13 22               [24] 2985 	ret
                                   2986 ;------------------------------------------------------------
                                   2987 ;Allocation info for local variables in function 'i2c_delay'
                                   2988 ;------------------------------------------------------------
                                   2989 ;i                         Allocated with name '_i2c_delay_i_131072_140'
                                   2990 ;------------------------------------------------------------
                                   2991 ;	8051_i2c_eeprom.c:821: void i2c_delay() 
                                   2992 ;	-----------------------------------------
                                   2993 ;	 function i2c_delay
                                   2994 ;	-----------------------------------------
      003E14                       2995 _i2c_delay:
                                   2996 ;	8051_i2c_eeprom.c:829: for(int i = 0; i<500; i++);
      003E14 7E 00            [12] 2997 	mov	r6,#0x00
      003E16 7F 00            [12] 2998 	mov	r7,#0x00
      003E18                       2999 00103$:
      003E18 C3               [12] 3000 	clr	c
      003E19 EE               [12] 3001 	mov	a,r6
      003E1A 94 F4            [12] 3002 	subb	a,#0xf4
      003E1C EF               [12] 3003 	mov	a,r7
      003E1D 64 80            [12] 3004 	xrl	a,#0x80
      003E1F 94 81            [12] 3005 	subb	a,#0x81
      003E21 50 07            [24] 3006 	jnc	00105$
      003E23 0E               [12] 3007 	inc	r6
      003E24 BE 00 F1         [24] 3008 	cjne	r6,#0x00,00103$
      003E27 0F               [12] 3009 	inc	r7
      003E28 80 EE            [24] 3010 	sjmp	00103$
      003E2A                       3011 00105$:
                                   3012 ;	8051_i2c_eeprom.c:830: }
      003E2A 22               [24] 3013 	ret
                                   3014 ;------------------------------------------------------------
                                   3015 ;Allocation info for local variables in function 'test_function'
                                   3016 ;------------------------------------------------------------
                                   3017 ;test_data                 Allocated with name '_test_function_test_data_65537_142'
                                   3018 ;address                   Allocated with name '_test_function_address_65537_142'
                                   3019 ;i                         Allocated with name '_test_function_i_131073_143'
                                   3020 ;read_data                 Allocated with name '_test_function_read_data_65538_145'
                                   3021 ;------------------------------------------------------------
                                   3022 ;	8051_i2c_eeprom.c:832: void test_function()
                                   3023 ;	-----------------------------------------
                                   3024 ;	 function test_function
                                   3025 ;	-----------------------------------------
      003E2B                       3026 _test_function:
                                   3027 ;	8051_i2c_eeprom.c:834: i2c_start();
      003E2B 12 39 F8         [24] 3028 	lcall	_i2c_start
                                   3029 ;	8051_i2c_eeprom.c:835: i2c_delay();
      003E2E 12 3E 14         [24] 3030 	lcall	_i2c_delay
                                   3031 ;	8051_i2c_eeprom.c:841: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      003E31 74 02            [12] 3032 	mov	a,#0x02
      003E33 C0 E0            [24] 3033 	push	acc
      003E35 E4               [12] 3034 	clr	a
      003E36 C0 E0            [24] 3035 	push	acc
      003E38 74 26            [12] 3036 	mov	a,#0x26
      003E3A C0 E0            [24] 3037 	push	acc
      003E3C E4               [12] 3038 	clr	a
      003E3D C0 E0            [24] 3039 	push	acc
      003E3F 74 D1            [12] 3040 	mov	a,#___str_59
      003E41 C0 E0            [24] 3041 	push	acc
      003E43 74 57            [12] 3042 	mov	a,#(___str_59 >> 8)
      003E45 C0 E0            [24] 3043 	push	acc
      003E47 74 80            [12] 3044 	mov	a,#0x80
      003E49 C0 E0            [24] 3045 	push	acc
      003E4B 12 3F 31         [24] 3046 	lcall	_printf
      003E4E E5 81            [12] 3047 	mov	a,sp
      003E50 24 F9            [12] 3048 	add	a,#0xf9
      003E52 F5 81            [12] 3049 	mov	sp,a
                                   3050 ;	8051_i2c_eeprom.c:842: eeprom_write(address, test_data);
      003E54 90 04 0F         [24] 3051 	mov	dptr,#_eeprom_write_PARM_2
      003E57 74 26            [12] 3052 	mov	a,#0x26
      003E59 F0               [24] 3053 	movx	@dptr,a
      003E5A 90 00 02         [24] 3054 	mov	dptr,#0x0002
      003E5D 12 36 B5         [24] 3055 	lcall	_eeprom_write
                                   3056 ;	8051_i2c_eeprom.c:843: i2c_stop();
      003E60 12 3D DB         [24] 3057 	lcall	_i2c_stop
                                   3058 ;	8051_i2c_eeprom.c:845: for(int i = 0; i<100; i++)
      003E63 7E 00            [12] 3059 	mov	r6,#0x00
      003E65 7F 00            [12] 3060 	mov	r7,#0x00
      003E67                       3061 00106$:
      003E67 C3               [12] 3062 	clr	c
      003E68 EE               [12] 3063 	mov	a,r6
      003E69 94 64            [12] 3064 	subb	a,#0x64
      003E6B EF               [12] 3065 	mov	a,r7
      003E6C 64 80            [12] 3066 	xrl	a,#0x80
      003E6E 94 80            [12] 3067 	subb	a,#0x80
      003E70 50 12            [24] 3068 	jnc	00101$
                                   3069 ;	8051_i2c_eeprom.c:847: i2c_delay();
      003E72 C0 07            [24] 3070 	push	ar7
      003E74 C0 06            [24] 3071 	push	ar6
      003E76 12 3E 14         [24] 3072 	lcall	_i2c_delay
      003E79 D0 06            [24] 3073 	pop	ar6
      003E7B D0 07            [24] 3074 	pop	ar7
                                   3075 ;	8051_i2c_eeprom.c:845: for(int i = 0; i<100; i++)
      003E7D 0E               [12] 3076 	inc	r6
      003E7E BE 00 E6         [24] 3077 	cjne	r6,#0x00,00106$
      003E81 0F               [12] 3078 	inc	r7
      003E82 80 E3            [24] 3079 	sjmp	00106$
      003E84                       3080 00101$:
                                   3081 ;	8051_i2c_eeprom.c:851: unsigned char read_data = eeprom_read(address);
      003E84 90 00 02         [24] 3082 	mov	dptr,#0x0002
      003E87 12 37 F7         [24] 3083 	lcall	_eeprom_read
      003E8A AE 82            [24] 3084 	mov	r6,dpl
                                   3085 ;	8051_i2c_eeprom.c:852: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      003E8C 8E 05            [24] 3086 	mov	ar5,r6
      003E8E 7F 00            [12] 3087 	mov	r7,#0x00
      003E90 C0 06            [24] 3088 	push	ar6
      003E92 C0 05            [24] 3089 	push	ar5
      003E94 C0 07            [24] 3090 	push	ar7
      003E96 74 02            [12] 3091 	mov	a,#0x02
      003E98 C0 E0            [24] 3092 	push	acc
      003E9A E4               [12] 3093 	clr	a
      003E9B C0 E0            [24] 3094 	push	acc
      003E9D 74 F9            [12] 3095 	mov	a,#___str_60
      003E9F C0 E0            [24] 3096 	push	acc
      003EA1 74 57            [12] 3097 	mov	a,#(___str_60 >> 8)
      003EA3 C0 E0            [24] 3098 	push	acc
      003EA5 74 80            [12] 3099 	mov	a,#0x80
      003EA7 C0 E0            [24] 3100 	push	acc
      003EA9 12 3F 31         [24] 3101 	lcall	_printf
      003EAC E5 81            [12] 3102 	mov	a,sp
      003EAE 24 F9            [12] 3103 	add	a,#0xf9
      003EB0 F5 81            [12] 3104 	mov	sp,a
      003EB2 D0 06            [24] 3105 	pop	ar6
                                   3106 ;	8051_i2c_eeprom.c:855: if(read_data == test_data) {
      003EB4 BE 26 16         [24] 3107 	cjne	r6,#0x26,00103$
                                   3108 ;	8051_i2c_eeprom.c:856: printf("MATCH - Write/Read successful!\n\r");
      003EB7 74 21            [12] 3109 	mov	a,#___str_61
      003EB9 C0 E0            [24] 3110 	push	acc
      003EBB 74 58            [12] 3111 	mov	a,#(___str_61 >> 8)
      003EBD C0 E0            [24] 3112 	push	acc
      003EBF 74 80            [12] 3113 	mov	a,#0x80
      003EC1 C0 E0            [24] 3114 	push	acc
      003EC3 12 3F 31         [24] 3115 	lcall	_printf
      003EC6 15 81            [12] 3116 	dec	sp
      003EC8 15 81            [12] 3117 	dec	sp
      003ECA 15 81            [12] 3118 	dec	sp
      003ECC 22               [24] 3119 	ret
      003ECD                       3120 00103$:
                                   3121 ;	8051_i2c_eeprom.c:858: printf("ERROR - Data mismatch!\n\r");
      003ECD 74 42            [12] 3122 	mov	a,#___str_62
      003ECF C0 E0            [24] 3123 	push	acc
      003ED1 74 58            [12] 3124 	mov	a,#(___str_62 >> 8)
      003ED3 C0 E0            [24] 3125 	push	acc
      003ED5 74 80            [12] 3126 	mov	a,#0x80
      003ED7 C0 E0            [24] 3127 	push	acc
      003ED9 12 3F 31         [24] 3128 	lcall	_printf
      003EDC 15 81            [12] 3129 	dec	sp
      003EDE 15 81            [12] 3130 	dec	sp
      003EE0 15 81            [12] 3131 	dec	sp
                                   3132 ;	8051_i2c_eeprom.c:862: }
      003EE2 22               [24] 3133 	ret
                                   3134 	.area CSEG    (CODE)
                                   3135 	.area CONST   (CODE)
                                   3136 	.area CONST   (CODE)
      004993                       3137 ___str_0:
      004993 0A                    3138 	.db 0x0a
      004994 E2                    3139 	.db 0xe2
      004995 95                    3140 	.db 0x95
      004996 94                    3141 	.db 0x94
      004997 E2                    3142 	.db 0xe2
      004998 95                    3143 	.db 0x95
      004999 90                    3144 	.db 0x90
      00499A E2                    3145 	.db 0xe2
      00499B 95                    3146 	.db 0x95
      00499C 90                    3147 	.db 0x90
      00499D E2                    3148 	.db 0xe2
      00499E 95                    3149 	.db 0x95
      00499F 90                    3150 	.db 0x90
      0049A0 E2                    3151 	.db 0xe2
      0049A1 95                    3152 	.db 0x95
      0049A2 90                    3153 	.db 0x90
      0049A3 E2                    3154 	.db 0xe2
      0049A4 95                    3155 	.db 0x95
      0049A5 90                    3156 	.db 0x90
      0049A6 E2                    3157 	.db 0xe2
      0049A7 95                    3158 	.db 0x95
      0049A8 90                    3159 	.db 0x90
      0049A9 E2                    3160 	.db 0xe2
      0049AA 95                    3161 	.db 0x95
      0049AB 90                    3162 	.db 0x90
      0049AC E2                    3163 	.db 0xe2
      0049AD 95                    3164 	.db 0x95
      0049AE 90                    3165 	.db 0x90
      0049AF E2                    3166 	.db 0xe2
      0049B0 95                    3167 	.db 0x95
      0049B1 90                    3168 	.db 0x90
      0049B2 E2                    3169 	.db 0xe2
      0049B3 95                    3170 	.db 0x95
      0049B4 90                    3171 	.db 0x90
      0049B5 E2                    3172 	.db 0xe2
      0049B6 95                    3173 	.db 0x95
      0049B7 90                    3174 	.db 0x90
      0049B8 E2                    3175 	.db 0xe2
      0049B9 95                    3176 	.db 0x95
      0049BA 90                    3177 	.db 0x90
      0049BB E2                    3178 	.db 0xe2
      0049BC 95                    3179 	.db 0x95
      0049BD 90                    3180 	.db 0x90
      0049BE E2                    3181 	.db 0xe2
      0049BF 95                    3182 	.db 0x95
      0049C0 90                    3183 	.db 0x90
      0049C1 E2                    3184 	.db 0xe2
      0049C2 95                    3185 	.db 0x95
      0049C3 90                    3186 	.db 0x90
      0049C4 E2                    3187 	.db 0xe2
      0049C5 95                    3188 	.db 0x95
      0049C6 90                    3189 	.db 0x90
      0049C7 E2                    3190 	.db 0xe2
      0049C8 95                    3191 	.db 0x95
      0049C9 90                    3192 	.db 0x90
      0049CA E2                    3193 	.db 0xe2
      0049CB 95                    3194 	.db 0x95
      0049CC 90                    3195 	.db 0x90
      0049CD E2                    3196 	.db 0xe2
      0049CE 95                    3197 	.db 0x95
      0049CF 90                    3198 	.db 0x90
      0049D0 E2                    3199 	.db 0xe2
      0049D1 95                    3200 	.db 0x95
      0049D2 90                    3201 	.db 0x90
      0049D3 E2                    3202 	.db 0xe2
      0049D4 95                    3203 	.db 0x95
      0049D5 90                    3204 	.db 0x90
      0049D6 E2                    3205 	.db 0xe2
      0049D7 95                    3206 	.db 0x95
      0049D8 90                    3207 	.db 0x90
      0049D9 E2                    3208 	.db 0xe2
      0049DA 95                    3209 	.db 0x95
      0049DB 90                    3210 	.db 0x90
      0049DC E2                    3211 	.db 0xe2
      0049DD 95                    3212 	.db 0x95
      0049DE 90                    3213 	.db 0x90
      0049DF E2                    3214 	.db 0xe2
      0049E0 95                    3215 	.db 0x95
      0049E1 90                    3216 	.db 0x90
      0049E2 E2                    3217 	.db 0xe2
      0049E3 95                    3218 	.db 0x95
      0049E4 90                    3219 	.db 0x90
      0049E5 E2                    3220 	.db 0xe2
      0049E6 95                    3221 	.db 0x95
      0049E7 90                    3222 	.db 0x90
      0049E8 E2                    3223 	.db 0xe2
      0049E9 95                    3224 	.db 0x95
      0049EA 90                    3225 	.db 0x90
      0049EB E2                    3226 	.db 0xe2
      0049EC 95                    3227 	.db 0x95
      0049ED 90                    3228 	.db 0x90
      0049EE E2                    3229 	.db 0xe2
      0049EF 95                    3230 	.db 0x95
      0049F0 90                    3231 	.db 0x90
      0049F1 E2                    3232 	.db 0xe2
      0049F2 95                    3233 	.db 0x95
      0049F3 90                    3234 	.db 0x90
      0049F4 E2                    3235 	.db 0xe2
      0049F5 95                    3236 	.db 0x95
      0049F6 90                    3237 	.db 0x90
      0049F7 E2                    3238 	.db 0xe2
      0049F8 95                    3239 	.db 0x95
      0049F9 90                    3240 	.db 0x90
      0049FA E2                    3241 	.db 0xe2
      0049FB 95                    3242 	.db 0x95
      0049FC 90                    3243 	.db 0x90
      0049FD E2                    3244 	.db 0xe2
      0049FE 95                    3245 	.db 0x95
      0049FF 90                    3246 	.db 0x90
      004A00 E2                    3247 	.db 0xe2
      004A01 95                    3248 	.db 0x95
      004A02 90                    3249 	.db 0x90
      004A03 E2                    3250 	.db 0xe2
      004A04 95                    3251 	.db 0x95
      004A05 90                    3252 	.db 0x90
      004A06 E2                    3253 	.db 0xe2
      004A07 95                    3254 	.db 0x95
      004A08 90                    3255 	.db 0x90
      004A09 E2                    3256 	.db 0xe2
      004A0A 95                    3257 	.db 0x95
      004A0B 90                    3258 	.db 0x90
      004A0C E2                    3259 	.db 0xe2
      004A0D 95                    3260 	.db 0x95
      004A0E 90                    3261 	.db 0x90
      004A0F E2                    3262 	.db 0xe2
      004A10 95                    3263 	.db 0x95
      004A11 90                    3264 	.db 0x90
      004A12 E2                    3265 	.db 0xe2
      004A13 95                    3266 	.db 0x95
      004A14 90                    3267 	.db 0x90
      004A15 E2                    3268 	.db 0xe2
      004A16 95                    3269 	.db 0x95
      004A17 90                    3270 	.db 0x90
      004A18 E2                    3271 	.db 0xe2
      004A19 95                    3272 	.db 0x95
      004A1A 90                    3273 	.db 0x90
      004A1B E2                    3274 	.db 0xe2
      004A1C 95                    3275 	.db 0x95
      004A1D 90                    3276 	.db 0x90
      004A1E E2                    3277 	.db 0xe2
      004A1F 95                    3278 	.db 0x95
      004A20 90                    3279 	.db 0x90
      004A21 E2                    3280 	.db 0xe2
      004A22 95                    3281 	.db 0x95
      004A23 90                    3282 	.db 0x90
      004A24 E2                    3283 	.db 0xe2
      004A25 95                    3284 	.db 0x95
      004A26 90                    3285 	.db 0x90
      004A27 E2                    3286 	.db 0xe2
      004A28 95                    3287 	.db 0x95
      004A29 90                    3288 	.db 0x90
      004A2A E2                    3289 	.db 0xe2
      004A2B 95                    3290 	.db 0x95
      004A2C 90                    3291 	.db 0x90
      004A2D E2                    3292 	.db 0xe2
      004A2E 95                    3293 	.db 0x95
      004A2F 90                    3294 	.db 0x90
      004A30 E2                    3295 	.db 0xe2
      004A31 95                    3296 	.db 0x95
      004A32 90                    3297 	.db 0x90
      004A33 E2                    3298 	.db 0xe2
      004A34 95                    3299 	.db 0x95
      004A35 90                    3300 	.db 0x90
      004A36 E2                    3301 	.db 0xe2
      004A37 95                    3302 	.db 0x95
      004A38 90                    3303 	.db 0x90
      004A39 E2                    3304 	.db 0xe2
      004A3A 95                    3305 	.db 0x95
      004A3B 90                    3306 	.db 0x90
      004A3C E2                    3307 	.db 0xe2
      004A3D 95                    3308 	.db 0x95
      004A3E 90                    3309 	.db 0x90
      004A3F E2                    3310 	.db 0xe2
      004A40 95                    3311 	.db 0x95
      004A41 97                    3312 	.db 0x97
      004A42 0A                    3313 	.db 0x0a
      004A43 0D                    3314 	.db 0x0d
      004A44 00                    3315 	.db 0x00
                                   3316 	.area CSEG    (CODE)
                                   3317 	.area CONST   (CODE)
      004A45                       3318 ___str_1:
      004A45 E2                    3319 	.db 0xe2
      004A46 95                    3320 	.db 0x95
      004A47 91                    3321 	.db 0x91
      004A48 20 20 20 20 20 20 20  3322 	.ascii "           I2C Memory Management System v1.0            "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
      004A80 E2                    3323 	.db 0xe2
      004A81 95                    3324 	.db 0x95
      004A82 91                    3325 	.db 0x91
      004A83 0A                    3326 	.db 0x0a
      004A84 0D                    3327 	.db 0x0d
      004A85 00                    3328 	.db 0x00
                                   3329 	.area CSEG    (CODE)
                                   3330 	.area CONST   (CODE)
      004A86                       3331 ___str_2:
      004A86 E2                    3332 	.db 0xe2
      004A87 95                    3333 	.db 0x95
      004A88 9A                    3334 	.db 0x9a
      004A89 E2                    3335 	.db 0xe2
      004A8A 95                    3336 	.db 0x95
      004A8B 90                    3337 	.db 0x90
      004A8C E2                    3338 	.db 0xe2
      004A8D 95                    3339 	.db 0x95
      004A8E 90                    3340 	.db 0x90
      004A8F E2                    3341 	.db 0xe2
      004A90 95                    3342 	.db 0x95
      004A91 90                    3343 	.db 0x90
      004A92 E2                    3344 	.db 0xe2
      004A93 95                    3345 	.db 0x95
      004A94 90                    3346 	.db 0x90
      004A95 E2                    3347 	.db 0xe2
      004A96 95                    3348 	.db 0x95
      004A97 90                    3349 	.db 0x90
      004A98 E2                    3350 	.db 0xe2
      004A99 95                    3351 	.db 0x95
      004A9A 90                    3352 	.db 0x90
      004A9B E2                    3353 	.db 0xe2
      004A9C 95                    3354 	.db 0x95
      004A9D 90                    3355 	.db 0x90
      004A9E E2                    3356 	.db 0xe2
      004A9F 95                    3357 	.db 0x95
      004AA0 90                    3358 	.db 0x90
      004AA1 E2                    3359 	.db 0xe2
      004AA2 95                    3360 	.db 0x95
      004AA3 90                    3361 	.db 0x90
      004AA4 E2                    3362 	.db 0xe2
      004AA5 95                    3363 	.db 0x95
      004AA6 90                    3364 	.db 0x90
      004AA7 E2                    3365 	.db 0xe2
      004AA8 95                    3366 	.db 0x95
      004AA9 90                    3367 	.db 0x90
      004AAA E2                    3368 	.db 0xe2
      004AAB 95                    3369 	.db 0x95
      004AAC 90                    3370 	.db 0x90
      004AAD E2                    3371 	.db 0xe2
      004AAE 95                    3372 	.db 0x95
      004AAF 90                    3373 	.db 0x90
      004AB0 E2                    3374 	.db 0xe2
      004AB1 95                    3375 	.db 0x95
      004AB2 90                    3376 	.db 0x90
      004AB3 E2                    3377 	.db 0xe2
      004AB4 95                    3378 	.db 0x95
      004AB5 90                    3379 	.db 0x90
      004AB6 E2                    3380 	.db 0xe2
      004AB7 95                    3381 	.db 0x95
      004AB8 90                    3382 	.db 0x90
      004AB9 E2                    3383 	.db 0xe2
      004ABA 95                    3384 	.db 0x95
      004ABB 90                    3385 	.db 0x90
      004ABC E2                    3386 	.db 0xe2
      004ABD 95                    3387 	.db 0x95
      004ABE 90                    3388 	.db 0x90
      004ABF E2                    3389 	.db 0xe2
      004AC0 95                    3390 	.db 0x95
      004AC1 90                    3391 	.db 0x90
      004AC2 E2                    3392 	.db 0xe2
      004AC3 95                    3393 	.db 0x95
      004AC4 90                    3394 	.db 0x90
      004AC5 E2                    3395 	.db 0xe2
      004AC6 95                    3396 	.db 0x95
      004AC7 90                    3397 	.db 0x90
      004AC8 E2                    3398 	.db 0xe2
      004AC9 95                    3399 	.db 0x95
      004ACA 90                    3400 	.db 0x90
      004ACB E2                    3401 	.db 0xe2
      004ACC 95                    3402 	.db 0x95
      004ACD 90                    3403 	.db 0x90
      004ACE E2                    3404 	.db 0xe2
      004ACF 95                    3405 	.db 0x95
      004AD0 90                    3406 	.db 0x90
      004AD1 E2                    3407 	.db 0xe2
      004AD2 95                    3408 	.db 0x95
      004AD3 90                    3409 	.db 0x90
      004AD4 E2                    3410 	.db 0xe2
      004AD5 95                    3411 	.db 0x95
      004AD6 90                    3412 	.db 0x90
      004AD7 E2                    3413 	.db 0xe2
      004AD8 95                    3414 	.db 0x95
      004AD9 90                    3415 	.db 0x90
      004ADA E2                    3416 	.db 0xe2
      004ADB 95                    3417 	.db 0x95
      004ADC 90                    3418 	.db 0x90
      004ADD E2                    3419 	.db 0xe2
      004ADE 95                    3420 	.db 0x95
      004ADF 90                    3421 	.db 0x90
      004AE0 E2                    3422 	.db 0xe2
      004AE1 95                    3423 	.db 0x95
      004AE2 90                    3424 	.db 0x90
      004AE3 E2                    3425 	.db 0xe2
      004AE4 95                    3426 	.db 0x95
      004AE5 90                    3427 	.db 0x90
      004AE6 E2                    3428 	.db 0xe2
      004AE7 95                    3429 	.db 0x95
      004AE8 90                    3430 	.db 0x90
      004AE9 E2                    3431 	.db 0xe2
      004AEA 95                    3432 	.db 0x95
      004AEB 90                    3433 	.db 0x90
      004AEC E2                    3434 	.db 0xe2
      004AED 95                    3435 	.db 0x95
      004AEE 90                    3436 	.db 0x90
      004AEF E2                    3437 	.db 0xe2
      004AF0 95                    3438 	.db 0x95
      004AF1 90                    3439 	.db 0x90
      004AF2 E2                    3440 	.db 0xe2
      004AF3 95                    3441 	.db 0x95
      004AF4 90                    3442 	.db 0x90
      004AF5 E2                    3443 	.db 0xe2
      004AF6 95                    3444 	.db 0x95
      004AF7 90                    3445 	.db 0x90
      004AF8 E2                    3446 	.db 0xe2
      004AF9 95                    3447 	.db 0x95
      004AFA 90                    3448 	.db 0x90
      004AFB E2                    3449 	.db 0xe2
      004AFC 95                    3450 	.db 0x95
      004AFD 90                    3451 	.db 0x90
      004AFE E2                    3452 	.db 0xe2
      004AFF 95                    3453 	.db 0x95
      004B00 90                    3454 	.db 0x90
      004B01 E2                    3455 	.db 0xe2
      004B02 95                    3456 	.db 0x95
      004B03 90                    3457 	.db 0x90
      004B04 E2                    3458 	.db 0xe2
      004B05 95                    3459 	.db 0x95
      004B06 90                    3460 	.db 0x90
      004B07 E2                    3461 	.db 0xe2
      004B08 95                    3462 	.db 0x95
      004B09 90                    3463 	.db 0x90
      004B0A E2                    3464 	.db 0xe2
      004B0B 95                    3465 	.db 0x95
      004B0C 90                    3466 	.db 0x90
      004B0D E2                    3467 	.db 0xe2
      004B0E 95                    3468 	.db 0x95
      004B0F 90                    3469 	.db 0x90
      004B10 E2                    3470 	.db 0xe2
      004B11 95                    3471 	.db 0x95
      004B12 90                    3472 	.db 0x90
      004B13 E2                    3473 	.db 0xe2
      004B14 95                    3474 	.db 0x95
      004B15 90                    3475 	.db 0x90
      004B16 E2                    3476 	.db 0xe2
      004B17 95                    3477 	.db 0x95
      004B18 90                    3478 	.db 0x90
      004B19 E2                    3479 	.db 0xe2
      004B1A 95                    3480 	.db 0x95
      004B1B 90                    3481 	.db 0x90
      004B1C E2                    3482 	.db 0xe2
      004B1D 95                    3483 	.db 0x95
      004B1E 90                    3484 	.db 0x90
      004B1F E2                    3485 	.db 0xe2
      004B20 95                    3486 	.db 0x95
      004B21 90                    3487 	.db 0x90
      004B22 E2                    3488 	.db 0xe2
      004B23 95                    3489 	.db 0x95
      004B24 90                    3490 	.db 0x90
      004B25 E2                    3491 	.db 0xe2
      004B26 95                    3492 	.db 0x95
      004B27 90                    3493 	.db 0x90
      004B28 E2                    3494 	.db 0xe2
      004B29 95                    3495 	.db 0x95
      004B2A 90                    3496 	.db 0x90
      004B2B E2                    3497 	.db 0xe2
      004B2C 95                    3498 	.db 0x95
      004B2D 90                    3499 	.db 0x90
      004B2E E2                    3500 	.db 0xe2
      004B2F 95                    3501 	.db 0x95
      004B30 90                    3502 	.db 0x90
      004B31 E2                    3503 	.db 0xe2
      004B32 95                    3504 	.db 0x95
      004B33 9D                    3505 	.db 0x9d
      004B34 0A                    3506 	.db 0x0a
      004B35 0D                    3507 	.db 0x0d
      004B36 00                    3508 	.db 0x00
                                   3509 	.area CSEG    (CODE)
                                   3510 	.area CONST   (CODE)
      004B37                       3511 ___str_3:
      004B37 0A                    3512 	.db 0x0a
      004B38 0D                    3513 	.db 0x0d
      004B39 E2                    3514 	.db 0xe2
      004B3A 94                    3515 	.db 0x94
      004B3B 8C                    3516 	.db 0x8c
      004B3C E2                    3517 	.db 0xe2
      004B3D 94                    3518 	.db 0x94
      004B3E 80                    3519 	.db 0x80
      004B3F E2                    3520 	.db 0xe2
      004B40 94                    3521 	.db 0x94
      004B41 80                    3522 	.db 0x80
      004B42 E2                    3523 	.db 0xe2
      004B43 94                    3524 	.db 0x94
      004B44 80                    3525 	.db 0x80
      004B45 E2                    3526 	.db 0xe2
      004B46 94                    3527 	.db 0x94
      004B47 80                    3528 	.db 0x80
      004B48 E2                    3529 	.db 0xe2
      004B49 94                    3530 	.db 0x94
      004B4A 80                    3531 	.db 0x80
      004B4B E2                    3532 	.db 0xe2
      004B4C 94                    3533 	.db 0x94
      004B4D 80                    3534 	.db 0x80
      004B4E E2                    3535 	.db 0xe2
      004B4F 94                    3536 	.db 0x94
      004B50 80                    3537 	.db 0x80
      004B51 E2                    3538 	.db 0xe2
      004B52 94                    3539 	.db 0x94
      004B53 80                    3540 	.db 0x80
      004B54 E2                    3541 	.db 0xe2
      004B55 94                    3542 	.db 0x94
      004B56 80                    3543 	.db 0x80
      004B57 E2                    3544 	.db 0xe2
      004B58 94                    3545 	.db 0x94
      004B59 80                    3546 	.db 0x80
      004B5A E2                    3547 	.db 0xe2
      004B5B 94                    3548 	.db 0x94
      004B5C 80                    3549 	.db 0x80
      004B5D E2                    3550 	.db 0xe2
      004B5E 94                    3551 	.db 0x94
      004B5F 80                    3552 	.db 0x80
      004B60 E2                    3553 	.db 0xe2
      004B61 94                    3554 	.db 0x94
      004B62 AC                    3555 	.db 0xac
      004B63 E2                    3556 	.db 0xe2
      004B64 94                    3557 	.db 0x94
      004B65 80                    3558 	.db 0x80
      004B66 E2                    3559 	.db 0xe2
      004B67 94                    3560 	.db 0x94
      004B68 80                    3561 	.db 0x80
      004B69 E2                    3562 	.db 0xe2
      004B6A 94                    3563 	.db 0x94
      004B6B 80                    3564 	.db 0x80
      004B6C E2                    3565 	.db 0xe2
      004B6D 94                    3566 	.db 0x94
      004B6E 80                    3567 	.db 0x80
      004B6F E2                    3568 	.db 0xe2
      004B70 94                    3569 	.db 0x94
      004B71 80                    3570 	.db 0x80
      004B72 E2                    3571 	.db 0xe2
      004B73 94                    3572 	.db 0x94
      004B74 80                    3573 	.db 0x80
      004B75 E2                    3574 	.db 0xe2
      004B76 94                    3575 	.db 0x94
      004B77 80                    3576 	.db 0x80
      004B78 E2                    3577 	.db 0xe2
      004B79 94                    3578 	.db 0x94
      004B7A 80                    3579 	.db 0x80
      004B7B E2                    3580 	.db 0xe2
      004B7C 94                    3581 	.db 0x94
      004B7D 80                    3582 	.db 0x80
      004B7E E2                    3583 	.db 0xe2
      004B7F 94                    3584 	.db 0x94
      004B80 80                    3585 	.db 0x80
      004B81 E2                    3586 	.db 0xe2
      004B82 94                    3587 	.db 0x94
      004B83 80                    3588 	.db 0x80
      004B84 E2                    3589 	.db 0xe2
      004B85 94                    3590 	.db 0x94
      004B86 80                    3591 	.db 0x80
      004B87 E2                    3592 	.db 0xe2
      004B88 94                    3593 	.db 0x94
      004B89 80                    3594 	.db 0x80
      004B8A E2                    3595 	.db 0xe2
      004B8B 94                    3596 	.db 0x94
      004B8C 80                    3597 	.db 0x80
      004B8D E2                    3598 	.db 0xe2
      004B8E 94                    3599 	.db 0x94
      004B8F 80                    3600 	.db 0x80
      004B90 E2                    3601 	.db 0xe2
      004B91 94                    3602 	.db 0x94
      004B92 80                    3603 	.db 0x80
      004B93 E2                    3604 	.db 0xe2
      004B94 94                    3605 	.db 0x94
      004B95 80                    3606 	.db 0x80
      004B96 E2                    3607 	.db 0xe2
      004B97 94                    3608 	.db 0x94
      004B98 80                    3609 	.db 0x80
      004B99 E2                    3610 	.db 0xe2
      004B9A 94                    3611 	.db 0x94
      004B9B 80                    3612 	.db 0x80
      004B9C E2                    3613 	.db 0xe2
      004B9D 94                    3614 	.db 0x94
      004B9E 80                    3615 	.db 0x80
      004B9F E2                    3616 	.db 0xe2
      004BA0 94                    3617 	.db 0x94
      004BA1 80                    3618 	.db 0x80
      004BA2 E2                    3619 	.db 0xe2
      004BA3 94                    3620 	.db 0x94
      004BA4 80                    3621 	.db 0x80
      004BA5 E2                    3622 	.db 0xe2
      004BA6 94                    3623 	.db 0x94
      004BA7 80                    3624 	.db 0x80
      004BA8 E2                    3625 	.db 0xe2
      004BA9 94                    3626 	.db 0x94
      004BAA 80                    3627 	.db 0x80
      004BAB E2                    3628 	.db 0xe2
      004BAC 94                    3629 	.db 0x94
      004BAD 80                    3630 	.db 0x80
      004BAE E2                    3631 	.db 0xe2
      004BAF 94                    3632 	.db 0x94
      004BB0 80                    3633 	.db 0x80
      004BB1 E2                    3634 	.db 0xe2
      004BB2 94                    3635 	.db 0x94
      004BB3 80                    3636 	.db 0x80
      004BB4 E2                    3637 	.db 0xe2
      004BB5 94                    3638 	.db 0x94
      004BB6 80                    3639 	.db 0x80
      004BB7 E2                    3640 	.db 0xe2
      004BB8 94                    3641 	.db 0x94
      004BB9 80                    3642 	.db 0x80
      004BBA E2                    3643 	.db 0xe2
      004BBB 94                    3644 	.db 0x94
      004BBC 80                    3645 	.db 0x80
      004BBD E2                    3646 	.db 0xe2
      004BBE 94                    3647 	.db 0x94
      004BBF 80                    3648 	.db 0x80
      004BC0 E2                    3649 	.db 0xe2
      004BC1 94                    3650 	.db 0x94
      004BC2 80                    3651 	.db 0x80
      004BC3 E2                    3652 	.db 0xe2
      004BC4 94                    3653 	.db 0x94
      004BC5 80                    3654 	.db 0x80
      004BC6 E2                    3655 	.db 0xe2
      004BC7 94                    3656 	.db 0x94
      004BC8 80                    3657 	.db 0x80
      004BC9 E2                    3658 	.db 0xe2
      004BCA 94                    3659 	.db 0x94
      004BCB 80                    3660 	.db 0x80
      004BCC E2                    3661 	.db 0xe2
      004BCD 94                    3662 	.db 0x94
      004BCE 80                    3663 	.db 0x80
      004BCF E2                    3664 	.db 0xe2
      004BD0 94                    3665 	.db 0x94
      004BD1 80                    3666 	.db 0x80
      004BD2 E2                    3667 	.db 0xe2
      004BD3 94                    3668 	.db 0x94
      004BD4 80                    3669 	.db 0x80
      004BD5 E2                    3670 	.db 0xe2
      004BD6 94                    3671 	.db 0x94
      004BD7 80                    3672 	.db 0x80
      004BD8 E2                    3673 	.db 0xe2
      004BD9 94                    3674 	.db 0x94
      004BDA 80                    3675 	.db 0x80
      004BDB E2                    3676 	.db 0xe2
      004BDC 94                    3677 	.db 0x94
      004BDD 80                    3678 	.db 0x80
      004BDE E2                    3679 	.db 0xe2
      004BDF 94                    3680 	.db 0x94
      004BE0 80                    3681 	.db 0x80
      004BE1 E2                    3682 	.db 0xe2
      004BE2 94                    3683 	.db 0x94
      004BE3 80                    3684 	.db 0x80
      004BE4 E2                    3685 	.db 0xe2
      004BE5 94                    3686 	.db 0x94
      004BE6 80                    3687 	.db 0x80
      004BE7 E2                    3688 	.db 0xe2
      004BE8 94                    3689 	.db 0x94
      004BE9 90                    3690 	.db 0x90
      004BEA 0A                    3691 	.db 0x0a
      004BEB 0D                    3692 	.db 0x0d
      004BEC 00                    3693 	.db 0x00
                                   3694 	.area CSEG    (CODE)
                                   3695 	.area CONST   (CODE)
      004BED                       3696 ___str_4:
      004BED E2                    3697 	.db 0xe2
      004BEE 94                    3698 	.db 0x94
      004BEF 82                    3699 	.db 0x82
      004BF0 20 20 43 6F 6D 6D 61  3700 	.ascii "  Command   "
             6E 64 20 20 20
      004BFC E2                    3701 	.db 0xe2
      004BFD 94                    3702 	.db 0x94
      004BFE 82                    3703 	.db 0x82
      004BFF 20 20 20 20 20 20 20  3704 	.ascii "               Description                  "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004C2B E2                    3705 	.db 0xe2
      004C2C 94                    3706 	.db 0x94
      004C2D 82                    3707 	.db 0x82
      004C2E 0A                    3708 	.db 0x0a
      004C2F 0D                    3709 	.db 0x0d
      004C30 00                    3710 	.db 0x00
                                   3711 	.area CSEG    (CODE)
                                   3712 	.area CONST   (CODE)
      004C31                       3713 ___str_5:
      004C31 E2                    3714 	.db 0xe2
      004C32 94                    3715 	.db 0x94
      004C33 9C                    3716 	.db 0x9c
      004C34 E2                    3717 	.db 0xe2
      004C35 94                    3718 	.db 0x94
      004C36 80                    3719 	.db 0x80
      004C37 E2                    3720 	.db 0xe2
      004C38 94                    3721 	.db 0x94
      004C39 80                    3722 	.db 0x80
      004C3A E2                    3723 	.db 0xe2
      004C3B 94                    3724 	.db 0x94
      004C3C 80                    3725 	.db 0x80
      004C3D E2                    3726 	.db 0xe2
      004C3E 94                    3727 	.db 0x94
      004C3F 80                    3728 	.db 0x80
      004C40 E2                    3729 	.db 0xe2
      004C41 94                    3730 	.db 0x94
      004C42 80                    3731 	.db 0x80
      004C43 E2                    3732 	.db 0xe2
      004C44 94                    3733 	.db 0x94
      004C45 80                    3734 	.db 0x80
      004C46 E2                    3735 	.db 0xe2
      004C47 94                    3736 	.db 0x94
      004C48 80                    3737 	.db 0x80
      004C49 E2                    3738 	.db 0xe2
      004C4A 94                    3739 	.db 0x94
      004C4B 80                    3740 	.db 0x80
      004C4C E2                    3741 	.db 0xe2
      004C4D 94                    3742 	.db 0x94
      004C4E 80                    3743 	.db 0x80
      004C4F E2                    3744 	.db 0xe2
      004C50 94                    3745 	.db 0x94
      004C51 80                    3746 	.db 0x80
      004C52 E2                    3747 	.db 0xe2
      004C53 94                    3748 	.db 0x94
      004C54 80                    3749 	.db 0x80
      004C55 E2                    3750 	.db 0xe2
      004C56 94                    3751 	.db 0x94
      004C57 80                    3752 	.db 0x80
      004C58 E2                    3753 	.db 0xe2
      004C59 94                    3754 	.db 0x94
      004C5A BC                    3755 	.db 0xbc
      004C5B E2                    3756 	.db 0xe2
      004C5C 94                    3757 	.db 0x94
      004C5D 80                    3758 	.db 0x80
      004C5E E2                    3759 	.db 0xe2
      004C5F 94                    3760 	.db 0x94
      004C60 80                    3761 	.db 0x80
      004C61 E2                    3762 	.db 0xe2
      004C62 94                    3763 	.db 0x94
      004C63 80                    3764 	.db 0x80
      004C64 E2                    3765 	.db 0xe2
      004C65 94                    3766 	.db 0x94
      004C66 80                    3767 	.db 0x80
      004C67 E2                    3768 	.db 0xe2
      004C68 94                    3769 	.db 0x94
      004C69 80                    3770 	.db 0x80
      004C6A E2                    3771 	.db 0xe2
      004C6B 94                    3772 	.db 0x94
      004C6C 80                    3773 	.db 0x80
      004C6D E2                    3774 	.db 0xe2
      004C6E 94                    3775 	.db 0x94
      004C6F 80                    3776 	.db 0x80
      004C70 E2                    3777 	.db 0xe2
      004C71 94                    3778 	.db 0x94
      004C72 80                    3779 	.db 0x80
      004C73 E2                    3780 	.db 0xe2
      004C74 94                    3781 	.db 0x94
      004C75 80                    3782 	.db 0x80
      004C76 E2                    3783 	.db 0xe2
      004C77 94                    3784 	.db 0x94
      004C78 80                    3785 	.db 0x80
      004C79 E2                    3786 	.db 0xe2
      004C7A 94                    3787 	.db 0x94
      004C7B 80                    3788 	.db 0x80
      004C7C E2                    3789 	.db 0xe2
      004C7D 94                    3790 	.db 0x94
      004C7E 80                    3791 	.db 0x80
      004C7F E2                    3792 	.db 0xe2
      004C80 94                    3793 	.db 0x94
      004C81 80                    3794 	.db 0x80
      004C82 E2                    3795 	.db 0xe2
      004C83 94                    3796 	.db 0x94
      004C84 80                    3797 	.db 0x80
      004C85 E2                    3798 	.db 0xe2
      004C86 94                    3799 	.db 0x94
      004C87 80                    3800 	.db 0x80
      004C88 E2                    3801 	.db 0xe2
      004C89 94                    3802 	.db 0x94
      004C8A 80                    3803 	.db 0x80
      004C8B E2                    3804 	.db 0xe2
      004C8C 94                    3805 	.db 0x94
      004C8D 80                    3806 	.db 0x80
      004C8E E2                    3807 	.db 0xe2
      004C8F 94                    3808 	.db 0x94
      004C90 80                    3809 	.db 0x80
      004C91 E2                    3810 	.db 0xe2
      004C92 94                    3811 	.db 0x94
      004C93 80                    3812 	.db 0x80
      004C94 E2                    3813 	.db 0xe2
      004C95 94                    3814 	.db 0x94
      004C96 80                    3815 	.db 0x80
      004C97 E2                    3816 	.db 0xe2
      004C98 94                    3817 	.db 0x94
      004C99 80                    3818 	.db 0x80
      004C9A E2                    3819 	.db 0xe2
      004C9B 94                    3820 	.db 0x94
      004C9C 80                    3821 	.db 0x80
      004C9D E2                    3822 	.db 0xe2
      004C9E 94                    3823 	.db 0x94
      004C9F 80                    3824 	.db 0x80
      004CA0 E2                    3825 	.db 0xe2
      004CA1 94                    3826 	.db 0x94
      004CA2 80                    3827 	.db 0x80
      004CA3 E2                    3828 	.db 0xe2
      004CA4 94                    3829 	.db 0x94
      004CA5 80                    3830 	.db 0x80
      004CA6 E2                    3831 	.db 0xe2
      004CA7 94                    3832 	.db 0x94
      004CA8 80                    3833 	.db 0x80
      004CA9 E2                    3834 	.db 0xe2
      004CAA 94                    3835 	.db 0x94
      004CAB 80                    3836 	.db 0x80
      004CAC E2                    3837 	.db 0xe2
      004CAD 94                    3838 	.db 0x94
      004CAE 80                    3839 	.db 0x80
      004CAF E2                    3840 	.db 0xe2
      004CB0 94                    3841 	.db 0x94
      004CB1 80                    3842 	.db 0x80
      004CB2 E2                    3843 	.db 0xe2
      004CB3 94                    3844 	.db 0x94
      004CB4 80                    3845 	.db 0x80
      004CB5 E2                    3846 	.db 0xe2
      004CB6 94                    3847 	.db 0x94
      004CB7 80                    3848 	.db 0x80
      004CB8 E2                    3849 	.db 0xe2
      004CB9 94                    3850 	.db 0x94
      004CBA 80                    3851 	.db 0x80
      004CBB E2                    3852 	.db 0xe2
      004CBC 94                    3853 	.db 0x94
      004CBD 80                    3854 	.db 0x80
      004CBE E2                    3855 	.db 0xe2
      004CBF 94                    3856 	.db 0x94
      004CC0 80                    3857 	.db 0x80
      004CC1 E2                    3858 	.db 0xe2
      004CC2 94                    3859 	.db 0x94
      004CC3 80                    3860 	.db 0x80
      004CC4 E2                    3861 	.db 0xe2
      004CC5 94                    3862 	.db 0x94
      004CC6 80                    3863 	.db 0x80
      004CC7 E2                    3864 	.db 0xe2
      004CC8 94                    3865 	.db 0x94
      004CC9 80                    3866 	.db 0x80
      004CCA E2                    3867 	.db 0xe2
      004CCB 94                    3868 	.db 0x94
      004CCC 80                    3869 	.db 0x80
      004CCD E2                    3870 	.db 0xe2
      004CCE 94                    3871 	.db 0x94
      004CCF 80                    3872 	.db 0x80
      004CD0 E2                    3873 	.db 0xe2
      004CD1 94                    3874 	.db 0x94
      004CD2 80                    3875 	.db 0x80
      004CD3 E2                    3876 	.db 0xe2
      004CD4 94                    3877 	.db 0x94
      004CD5 80                    3878 	.db 0x80
      004CD6 E2                    3879 	.db 0xe2
      004CD7 94                    3880 	.db 0x94
      004CD8 80                    3881 	.db 0x80
      004CD9 E2                    3882 	.db 0xe2
      004CDA 94                    3883 	.db 0x94
      004CDB 80                    3884 	.db 0x80
      004CDC E2                    3885 	.db 0xe2
      004CDD 94                    3886 	.db 0x94
      004CDE 80                    3887 	.db 0x80
      004CDF E2                    3888 	.db 0xe2
      004CE0 94                    3889 	.db 0x94
      004CE1 A4                    3890 	.db 0xa4
      004CE2 0A                    3891 	.db 0x0a
      004CE3 0D                    3892 	.db 0x0d
      004CE4 00                    3893 	.db 0x00
                                   3894 	.area CSEG    (CODE)
                                   3895 	.area CONST   (CODE)
      004CE5                       3896 ___str_6:
      004CE5 E2                    3897 	.db 0xe2
      004CE6 94                    3898 	.db 0x94
      004CE7 82                    3899 	.db 0x82
      004CE8 20 20 20 20 20 52 20  3900 	.ascii "     R      "
             20 20 20 20 20
      004CF4 E2                    3901 	.db 0xe2
      004CF5 94                    3902 	.db 0x94
      004CF6 82                    3903 	.db 0x82
      004CF7 20 52 65 61 64 20 66  3904 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004D23 E2                    3905 	.db 0xe2
      004D24 94                    3906 	.db 0x94
      004D25 82                    3907 	.db 0x82
      004D26 0A                    3908 	.db 0x0a
      004D27 0D                    3909 	.db 0x0d
      004D28 00                    3910 	.db 0x00
                                   3911 	.area CSEG    (CODE)
                                   3912 	.area CONST   (CODE)
      004D29                       3913 ___str_7:
      004D29 E2                    3914 	.db 0xe2
      004D2A 94                    3915 	.db 0x94
      004D2B 82                    3916 	.db 0x82
      004D2C 20 20 20 20 20 57 20  3917 	.ascii "     W      "
             20 20 20 20 20
      004D38 E2                    3918 	.db 0xe2
      004D39 94                    3919 	.db 0x94
      004D3A 82                    3920 	.db 0x82
      004D3B 20 57 72 69 74 65 20  3921 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004D67 E2                    3922 	.db 0xe2
      004D68 94                    3923 	.db 0x94
      004D69 82                    3924 	.db 0x82
      004D6A 0A                    3925 	.db 0x0a
      004D6B 0D                    3926 	.db 0x0d
      004D6C 00                    3927 	.db 0x00
                                   3928 	.area CSEG    (CODE)
                                   3929 	.area CONST   (CODE)
      004D6D                       3930 ___str_8:
      004D6D E2                    3931 	.db 0xe2
      004D6E 94                    3932 	.db 0x94
      004D6F 82                    3933 	.db 0x82
      004D70 20 20 20 20 20 48 20  3934 	.ascii "     H      "
             20 20 20 20 20
      004D7C E2                    3935 	.db 0xe2
      004D7D 94                    3936 	.db 0x94
      004D7E 82                    3937 	.db 0x82
      004D7F 20 44 69 73 70 6C 61  3938 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004DAB E2                    3939 	.db 0xe2
      004DAC 94                    3940 	.db 0x94
      004DAD 82                    3941 	.db 0x82
      004DAE 0A                    3942 	.db 0x0a
      004DAF 0D                    3943 	.db 0x0d
      004DB0 00                    3944 	.db 0x00
                                   3945 	.area CSEG    (CODE)
                                   3946 	.area CONST   (CODE)
      004DB1                       3947 ___str_9:
      004DB1 E2                    3948 	.db 0xe2
      004DB2 94                    3949 	.db 0x94
      004DB3 82                    3950 	.db 0x82
      004DB4 20 20 20 20 20 58 20  3951 	.ascii "     X      "
             20 20 20 20 20
      004DC0 E2                    3952 	.db 0xe2
      004DC1 94                    3953 	.db 0x94
      004DC2 82                    3954 	.db 0x82
      004DC3 20 52 65 73 65 74 20  3955 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004DEF E2                    3956 	.db 0xe2
      004DF0 94                    3957 	.db 0x94
      004DF1 82                    3958 	.db 0x82
      004DF2 0A                    3959 	.db 0x0a
      004DF3 0D                    3960 	.db 0x0d
      004DF4 00                    3961 	.db 0x00
                                   3962 	.area CSEG    (CODE)
                                   3963 	.area CONST   (CODE)
      004DF5                       3964 ___str_10:
      004DF5 E2                    3965 	.db 0xe2
      004DF6 94                    3966 	.db 0x94
      004DF7 82                    3967 	.db 0x82
      004DF8 20 20 20 20 20 3F 20  3968 	.ascii "     ?      "
             20 20 20 20 20
      004E04 E2                    3969 	.db 0xe2
      004E05 94                    3970 	.db 0x94
      004E06 82                    3971 	.db 0x82
      004E07 20 44 69 73 70 6C 61  3972 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004E33 E2                    3973 	.db 0xe2
      004E34 94                    3974 	.db 0x94
      004E35 82                    3975 	.db 0x82
      004E36 0A                    3976 	.db 0x0a
      004E37 0D                    3977 	.db 0x0d
      004E38 00                    3978 	.db 0x00
                                   3979 	.area CSEG    (CODE)
                                   3980 	.area CONST   (CODE)
      004E39                       3981 ___str_11:
      004E39 E2                    3982 	.db 0xe2
      004E3A 94                    3983 	.db 0x94
      004E3B 82                    3984 	.db 0x82
      004E3C 20 20 20 20 20 51 20  3985 	.ascii "     Q      "
             20 20 20 20 20
      004E48 E2                    3986 	.db 0xe2
      004E49 94                    3987 	.db 0x94
      004E4A 82                    3988 	.db 0x82
      004E4B 20 51 75 69 74 20 70  3989 	.ascii " Quit program                               "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004E77 E2                    3990 	.db 0xe2
      004E78 94                    3991 	.db 0x94
      004E79 82                    3992 	.db 0x82
      004E7A 0A                    3993 	.db 0x0a
      004E7B 0D                    3994 	.db 0x0d
      004E7C 00                    3995 	.db 0x00
                                   3996 	.area CSEG    (CODE)
                                   3997 	.area CONST   (CODE)
      004E7D                       3998 ___str_12:
      004E7D E2                    3999 	.db 0xe2
      004E7E 94                    4000 	.db 0x94
      004E7F 94                    4001 	.db 0x94
      004E80 E2                    4002 	.db 0xe2
      004E81 94                    4003 	.db 0x94
      004E82 80                    4004 	.db 0x80
      004E83 E2                    4005 	.db 0xe2
      004E84 94                    4006 	.db 0x94
      004E85 80                    4007 	.db 0x80
      004E86 E2                    4008 	.db 0xe2
      004E87 94                    4009 	.db 0x94
      004E88 80                    4010 	.db 0x80
      004E89 E2                    4011 	.db 0xe2
      004E8A 94                    4012 	.db 0x94
      004E8B 80                    4013 	.db 0x80
      004E8C E2                    4014 	.db 0xe2
      004E8D 94                    4015 	.db 0x94
      004E8E 80                    4016 	.db 0x80
      004E8F E2                    4017 	.db 0xe2
      004E90 94                    4018 	.db 0x94
      004E91 80                    4019 	.db 0x80
      004E92 E2                    4020 	.db 0xe2
      004E93 94                    4021 	.db 0x94
      004E94 80                    4022 	.db 0x80
      004E95 E2                    4023 	.db 0xe2
      004E96 94                    4024 	.db 0x94
      004E97 80                    4025 	.db 0x80
      004E98 E2                    4026 	.db 0xe2
      004E99 94                    4027 	.db 0x94
      004E9A 80                    4028 	.db 0x80
      004E9B E2                    4029 	.db 0xe2
      004E9C 94                    4030 	.db 0x94
      004E9D 80                    4031 	.db 0x80
      004E9E E2                    4032 	.db 0xe2
      004E9F 94                    4033 	.db 0x94
      004EA0 80                    4034 	.db 0x80
      004EA1 E2                    4035 	.db 0xe2
      004EA2 94                    4036 	.db 0x94
      004EA3 80                    4037 	.db 0x80
      004EA4 E2                    4038 	.db 0xe2
      004EA5 94                    4039 	.db 0x94
      004EA6 B4                    4040 	.db 0xb4
      004EA7 E2                    4041 	.db 0xe2
      004EA8 94                    4042 	.db 0x94
      004EA9 80                    4043 	.db 0x80
      004EAA E2                    4044 	.db 0xe2
      004EAB 94                    4045 	.db 0x94
      004EAC 80                    4046 	.db 0x80
      004EAD E2                    4047 	.db 0xe2
      004EAE 94                    4048 	.db 0x94
      004EAF 80                    4049 	.db 0x80
      004EB0 E2                    4050 	.db 0xe2
      004EB1 94                    4051 	.db 0x94
      004EB2 80                    4052 	.db 0x80
      004EB3 E2                    4053 	.db 0xe2
      004EB4 94                    4054 	.db 0x94
      004EB5 80                    4055 	.db 0x80
      004EB6 E2                    4056 	.db 0xe2
      004EB7 94                    4057 	.db 0x94
      004EB8 80                    4058 	.db 0x80
      004EB9 E2                    4059 	.db 0xe2
      004EBA 94                    4060 	.db 0x94
      004EBB 80                    4061 	.db 0x80
      004EBC E2                    4062 	.db 0xe2
      004EBD 94                    4063 	.db 0x94
      004EBE 80                    4064 	.db 0x80
      004EBF E2                    4065 	.db 0xe2
      004EC0 94                    4066 	.db 0x94
      004EC1 80                    4067 	.db 0x80
      004EC2 E2                    4068 	.db 0xe2
      004EC3 94                    4069 	.db 0x94
      004EC4 80                    4070 	.db 0x80
      004EC5 E2                    4071 	.db 0xe2
      004EC6 94                    4072 	.db 0x94
      004EC7 80                    4073 	.db 0x80
      004EC8 E2                    4074 	.db 0xe2
      004EC9 94                    4075 	.db 0x94
      004ECA 80                    4076 	.db 0x80
      004ECB E2                    4077 	.db 0xe2
      004ECC 94                    4078 	.db 0x94
      004ECD 80                    4079 	.db 0x80
      004ECE E2                    4080 	.db 0xe2
      004ECF 94                    4081 	.db 0x94
      004ED0 80                    4082 	.db 0x80
      004ED1 E2                    4083 	.db 0xe2
      004ED2 94                    4084 	.db 0x94
      004ED3 80                    4085 	.db 0x80
      004ED4 E2                    4086 	.db 0xe2
      004ED5 94                    4087 	.db 0x94
      004ED6 80                    4088 	.db 0x80
      004ED7 E2                    4089 	.db 0xe2
      004ED8 94                    4090 	.db 0x94
      004ED9 80                    4091 	.db 0x80
      004EDA E2                    4092 	.db 0xe2
      004EDB 94                    4093 	.db 0x94
      004EDC 80                    4094 	.db 0x80
      004EDD E2                    4095 	.db 0xe2
      004EDE 94                    4096 	.db 0x94
      004EDF 80                    4097 	.db 0x80
      004EE0 E2                    4098 	.db 0xe2
      004EE1 94                    4099 	.db 0x94
      004EE2 80                    4100 	.db 0x80
      004EE3 E2                    4101 	.db 0xe2
      004EE4 94                    4102 	.db 0x94
      004EE5 80                    4103 	.db 0x80
      004EE6 E2                    4104 	.db 0xe2
      004EE7 94                    4105 	.db 0x94
      004EE8 80                    4106 	.db 0x80
      004EE9 E2                    4107 	.db 0xe2
      004EEA 94                    4108 	.db 0x94
      004EEB 80                    4109 	.db 0x80
      004EEC E2                    4110 	.db 0xe2
      004EED 94                    4111 	.db 0x94
      004EEE 80                    4112 	.db 0x80
      004EEF E2                    4113 	.db 0xe2
      004EF0 94                    4114 	.db 0x94
      004EF1 80                    4115 	.db 0x80
      004EF2 E2                    4116 	.db 0xe2
      004EF3 94                    4117 	.db 0x94
      004EF4 80                    4118 	.db 0x80
      004EF5 E2                    4119 	.db 0xe2
      004EF6 94                    4120 	.db 0x94
      004EF7 80                    4121 	.db 0x80
      004EF8 E2                    4122 	.db 0xe2
      004EF9 94                    4123 	.db 0x94
      004EFA 80                    4124 	.db 0x80
      004EFB E2                    4125 	.db 0xe2
      004EFC 94                    4126 	.db 0x94
      004EFD 80                    4127 	.db 0x80
      004EFE E2                    4128 	.db 0xe2
      004EFF 94                    4129 	.db 0x94
      004F00 80                    4130 	.db 0x80
      004F01 E2                    4131 	.db 0xe2
      004F02 94                    4132 	.db 0x94
      004F03 80                    4133 	.db 0x80
      004F04 E2                    4134 	.db 0xe2
      004F05 94                    4135 	.db 0x94
      004F06 80                    4136 	.db 0x80
      004F07 E2                    4137 	.db 0xe2
      004F08 94                    4138 	.db 0x94
      004F09 80                    4139 	.db 0x80
      004F0A E2                    4140 	.db 0xe2
      004F0B 94                    4141 	.db 0x94
      004F0C 80                    4142 	.db 0x80
      004F0D E2                    4143 	.db 0xe2
      004F0E 94                    4144 	.db 0x94
      004F0F 80                    4145 	.db 0x80
      004F10 E2                    4146 	.db 0xe2
      004F11 94                    4147 	.db 0x94
      004F12 80                    4148 	.db 0x80
      004F13 E2                    4149 	.db 0xe2
      004F14 94                    4150 	.db 0x94
      004F15 80                    4151 	.db 0x80
      004F16 E2                    4152 	.db 0xe2
      004F17 94                    4153 	.db 0x94
      004F18 80                    4154 	.db 0x80
      004F19 E2                    4155 	.db 0xe2
      004F1A 94                    4156 	.db 0x94
      004F1B 80                    4157 	.db 0x80
      004F1C E2                    4158 	.db 0xe2
      004F1D 94                    4159 	.db 0x94
      004F1E 80                    4160 	.db 0x80
      004F1F E2                    4161 	.db 0xe2
      004F20 94                    4162 	.db 0x94
      004F21 80                    4163 	.db 0x80
      004F22 E2                    4164 	.db 0xe2
      004F23 94                    4165 	.db 0x94
      004F24 80                    4166 	.db 0x80
      004F25 E2                    4167 	.db 0xe2
      004F26 94                    4168 	.db 0x94
      004F27 80                    4169 	.db 0x80
      004F28 E2                    4170 	.db 0xe2
      004F29 94                    4171 	.db 0x94
      004F2A 80                    4172 	.db 0x80
      004F2B E2                    4173 	.db 0xe2
      004F2C 94                    4174 	.db 0x94
      004F2D 98                    4175 	.db 0x98
      004F2E 0A                    4176 	.db 0x0a
      004F2F 0D                    4177 	.db 0x0d
      004F30 00                    4178 	.db 0x00
                                   4179 	.area CSEG    (CODE)
                                   4180 	.area CONST   (CODE)
      004F31                       4181 ___str_13:
      004F31 7C 20 24 20 25 63     4182 	.ascii "| $ %c"
      004F37 0A                    4183 	.db 0x0a
      004F38 0D                    4184 	.db 0x0d
      004F39 00                    4185 	.db 0x00
                                   4186 	.area CSEG    (CODE)
                                   4187 	.area CONST   (CODE)
      004F3A                       4188 ___str_14:
      004F3A 0A                    4189 	.db 0x0a
      004F3B 0D                    4190 	.db 0x0d
      004F3C 00                    4191 	.db 0x00
                                   4192 	.area CSEG    (CODE)
                                   4193 	.area CONST   (CODE)
      004F3D                       4194 ___str_15:
      004F3D 0A                    4195 	.db 0x0a
      004F3E E2                    4196 	.db 0xe2
      004F3F 94                    4197 	.db 0x94
      004F40 8C                    4198 	.db 0x8c
      004F41 E2                    4199 	.db 0xe2
      004F42 94                    4200 	.db 0x94
      004F43 80                    4201 	.db 0x80
      004F44 E2                    4202 	.db 0xe2
      004F45 94                    4203 	.db 0x94
      004F46 80                    4204 	.db 0x80
      004F47 E2                    4205 	.db 0xe2
      004F48 94                    4206 	.db 0x94
      004F49 80                    4207 	.db 0x80
      004F4A E2                    4208 	.db 0xe2
      004F4B 94                    4209 	.db 0x94
      004F4C 80                    4210 	.db 0x80
      004F4D E2                    4211 	.db 0xe2
      004F4E 94                    4212 	.db 0x94
      004F4F 80                    4213 	.db 0x80
      004F50 E2                    4214 	.db 0xe2
      004F51 94                    4215 	.db 0x94
      004F52 80                    4216 	.db 0x80
      004F53 E2                    4217 	.db 0xe2
      004F54 94                    4218 	.db 0x94
      004F55 80                    4219 	.db 0x80
      004F56 E2                    4220 	.db 0xe2
      004F57 94                    4221 	.db 0x94
      004F58 80                    4222 	.db 0x80
      004F59 E2                    4223 	.db 0xe2
      004F5A 94                    4224 	.db 0x94
      004F5B 80                    4225 	.db 0x80
      004F5C E2                    4226 	.db 0xe2
      004F5D 94                    4227 	.db 0x94
      004F5E 80                    4228 	.db 0x80
      004F5F E2                    4229 	.db 0xe2
      004F60 94                    4230 	.db 0x94
      004F61 80                    4231 	.db 0x80
      004F62 E2                    4232 	.db 0xe2
      004F63 94                    4233 	.db 0x94
      004F64 80                    4234 	.db 0x80
      004F65 E2                    4235 	.db 0xe2
      004F66 94                    4236 	.db 0x94
      004F67 80                    4237 	.db 0x80
      004F68 E2                    4238 	.db 0xe2
      004F69 94                    4239 	.db 0x94
      004F6A 80                    4240 	.db 0x80
      004F6B E2                    4241 	.db 0xe2
      004F6C 94                    4242 	.db 0x94
      004F6D 80                    4243 	.db 0x80
      004F6E 20 57 52 49 54 45 20  4244 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      004F7F E2                    4245 	.db 0xe2
      004F80 94                    4246 	.db 0x94
      004F81 80                    4247 	.db 0x80
      004F82 E2                    4248 	.db 0xe2
      004F83 94                    4249 	.db 0x94
      004F84 80                    4250 	.db 0x80
      004F85 E2                    4251 	.db 0xe2
      004F86 94                    4252 	.db 0x94
      004F87 80                    4253 	.db 0x80
      004F88 E2                    4254 	.db 0xe2
      004F89 94                    4255 	.db 0x94
      004F8A 80                    4256 	.db 0x80
      004F8B E2                    4257 	.db 0xe2
      004F8C 94                    4258 	.db 0x94
      004F8D 80                    4259 	.db 0x80
      004F8E E2                    4260 	.db 0xe2
      004F8F 94                    4261 	.db 0x94
      004F90 80                    4262 	.db 0x80
      004F91 E2                    4263 	.db 0xe2
      004F92 94                    4264 	.db 0x94
      004F93 80                    4265 	.db 0x80
      004F94 E2                    4266 	.db 0xe2
      004F95 94                    4267 	.db 0x94
      004F96 80                    4268 	.db 0x80
      004F97 E2                    4269 	.db 0xe2
      004F98 94                    4270 	.db 0x94
      004F99 80                    4271 	.db 0x80
      004F9A E2                    4272 	.db 0xe2
      004F9B 94                    4273 	.db 0x94
      004F9C 80                    4274 	.db 0x80
      004F9D E2                    4275 	.db 0xe2
      004F9E 94                    4276 	.db 0x94
      004F9F 80                    4277 	.db 0x80
      004FA0 E2                    4278 	.db 0xe2
      004FA1 94                    4279 	.db 0x94
      004FA2 80                    4280 	.db 0x80
      004FA3 E2                    4281 	.db 0xe2
      004FA4 94                    4282 	.db 0x94
      004FA5 80                    4283 	.db 0x80
      004FA6 E2                    4284 	.db 0xe2
      004FA7 94                    4285 	.db 0x94
      004FA8 80                    4286 	.db 0x80
      004FA9 E2                    4287 	.db 0xe2
      004FAA 94                    4288 	.db 0x94
      004FAB 90                    4289 	.db 0x90
      004FAC 0A                    4290 	.db 0x0a
      004FAD 0D                    4291 	.db 0x0d
      004FAE 00                    4292 	.db 0x00
                                   4293 	.area CSEG    (CODE)
                                   4294 	.area CONST   (CODE)
      004FAF                       4295 ___str_16:
      004FAF 0A                    4296 	.db 0x0a
      004FB0 E2                    4297 	.db 0xe2
      004FB1 94                    4298 	.db 0x94
      004FB2 8C                    4299 	.db 0x8c
      004FB3 E2                    4300 	.db 0xe2
      004FB4 94                    4301 	.db 0x94
      004FB5 80                    4302 	.db 0x80
      004FB6 E2                    4303 	.db 0xe2
      004FB7 94                    4304 	.db 0x94
      004FB8 80                    4305 	.db 0x80
      004FB9 E2                    4306 	.db 0xe2
      004FBA 94                    4307 	.db 0x94
      004FBB 80                    4308 	.db 0x80
      004FBC E2                    4309 	.db 0xe2
      004FBD 94                    4310 	.db 0x94
      004FBE 80                    4311 	.db 0x80
      004FBF E2                    4312 	.db 0xe2
      004FC0 94                    4313 	.db 0x94
      004FC1 80                    4314 	.db 0x80
      004FC2 E2                    4315 	.db 0xe2
      004FC3 94                    4316 	.db 0x94
      004FC4 80                    4317 	.db 0x80
      004FC5 E2                    4318 	.db 0xe2
      004FC6 94                    4319 	.db 0x94
      004FC7 80                    4320 	.db 0x80
      004FC8 E2                    4321 	.db 0xe2
      004FC9 94                    4322 	.db 0x94
      004FCA 80                    4323 	.db 0x80
      004FCB E2                    4324 	.db 0xe2
      004FCC 94                    4325 	.db 0x94
      004FCD 80                    4326 	.db 0x80
      004FCE E2                    4327 	.db 0xe2
      004FCF 94                    4328 	.db 0x94
      004FD0 80                    4329 	.db 0x80
      004FD1 E2                    4330 	.db 0xe2
      004FD2 94                    4331 	.db 0x94
      004FD3 80                    4332 	.db 0x80
      004FD4 E2                    4333 	.db 0xe2
      004FD5 94                    4334 	.db 0x94
      004FD6 80                    4335 	.db 0x80
      004FD7 E2                    4336 	.db 0xe2
      004FD8 94                    4337 	.db 0x94
      004FD9 80                    4338 	.db 0x80
      004FDA E2                    4339 	.db 0xe2
      004FDB 94                    4340 	.db 0x94
      004FDC 80                    4341 	.db 0x80
      004FDD E2                    4342 	.db 0xe2
      004FDE 94                    4343 	.db 0x94
      004FDF 80                    4344 	.db 0x80
      004FE0 20 52 45 41 44 20 4F  4345 	.ascii " READ OPERATION "
             50 45 52 41 54 49 4F
             4E 20
      004FF0 E2                    4346 	.db 0xe2
      004FF1 94                    4347 	.db 0x94
      004FF2 80                    4348 	.db 0x80
      004FF3 E2                    4349 	.db 0xe2
      004FF4 94                    4350 	.db 0x94
      004FF5 80                    4351 	.db 0x80
      004FF6 E2                    4352 	.db 0xe2
      004FF7 94                    4353 	.db 0x94
      004FF8 80                    4354 	.db 0x80
      004FF9 E2                    4355 	.db 0xe2
      004FFA 94                    4356 	.db 0x94
      004FFB 80                    4357 	.db 0x80
      004FFC E2                    4358 	.db 0xe2
      004FFD 94                    4359 	.db 0x94
      004FFE 80                    4360 	.db 0x80
      004FFF E2                    4361 	.db 0xe2
      005000 94                    4362 	.db 0x94
      005001 80                    4363 	.db 0x80
      005002 E2                    4364 	.db 0xe2
      005003 94                    4365 	.db 0x94
      005004 80                    4366 	.db 0x80
      005005 E2                    4367 	.db 0xe2
      005006 94                    4368 	.db 0x94
      005007 80                    4369 	.db 0x80
      005008 E2                    4370 	.db 0xe2
      005009 94                    4371 	.db 0x94
      00500A 80                    4372 	.db 0x80
      00500B E2                    4373 	.db 0xe2
      00500C 94                    4374 	.db 0x94
      00500D 80                    4375 	.db 0x80
      00500E E2                    4376 	.db 0xe2
      00500F 94                    4377 	.db 0x94
      005010 80                    4378 	.db 0x80
      005011 E2                    4379 	.db 0xe2
      005012 94                    4380 	.db 0x94
      005013 80                    4381 	.db 0x80
      005014 E2                    4382 	.db 0xe2
      005015 94                    4383 	.db 0x94
      005016 80                    4384 	.db 0x80
      005017 E2                    4385 	.db 0xe2
      005018 94                    4386 	.db 0x94
      005019 80                    4387 	.db 0x80
      00501A E2                    4388 	.db 0xe2
      00501B 94                    4389 	.db 0x94
      00501C 80                    4390 	.db 0x80
      00501D E2                    4391 	.db 0xe2
      00501E 94                    4392 	.db 0x94
      00501F 90                    4393 	.db 0x90
      005020 0A                    4394 	.db 0x0a
      005021 0D                    4395 	.db 0x0d
      005022 00                    4396 	.db 0x00
                                   4397 	.area CSEG    (CODE)
                                   4398 	.area CONST   (CODE)
      005023                       4399 ___str_17:
      005023 7C 20 52 65 61 64 69  4400 	.ascii "| Reading from Address 0x%03X           |"
             6E 67 20 66 72 6F 6D
             20 41 64 64 72 65 73
             73 20 30 78 25 30 33
             58 20 20 20 20 20 20
             20 20 20 20 20 7C
      00504C 0A                    4401 	.db 0x0a
      00504D 0D                    4402 	.db 0x0d
      00504E 00                    4403 	.db 0x00
                                   4404 	.area CSEG    (CODE)
                                   4405 	.area CONST   (CODE)
      00504F                       4406 ___str_18:
      00504F 0A                    4407 	.db 0x0a
      005050 E2                    4408 	.db 0xe2
      005051 94                    4409 	.db 0x94
      005052 8C                    4410 	.db 0x8c
      005053 E2                    4411 	.db 0xe2
      005054 94                    4412 	.db 0x94
      005055 80                    4413 	.db 0x80
      005056 E2                    4414 	.db 0xe2
      005057 94                    4415 	.db 0x94
      005058 80                    4416 	.db 0x80
      005059 E2                    4417 	.db 0xe2
      00505A 94                    4418 	.db 0x94
      00505B 80                    4419 	.db 0x80
      00505C E2                    4420 	.db 0xe2
      00505D 94                    4421 	.db 0x94
      00505E 80                    4422 	.db 0x80
      00505F E2                    4423 	.db 0xe2
      005060 94                    4424 	.db 0x94
      005061 80                    4425 	.db 0x80
      005062 E2                    4426 	.db 0xe2
      005063 94                    4427 	.db 0x94
      005064 80                    4428 	.db 0x80
      005065 E2                    4429 	.db 0xe2
      005066 94                    4430 	.db 0x94
      005067 80                    4431 	.db 0x80
      005068 E2                    4432 	.db 0xe2
      005069 94                    4433 	.db 0x94
      00506A 80                    4434 	.db 0x80
      00506B E2                    4435 	.db 0xe2
      00506C 94                    4436 	.db 0x94
      00506D 80                    4437 	.db 0x80
      00506E E2                    4438 	.db 0xe2
      00506F 94                    4439 	.db 0x94
      005070 80                    4440 	.db 0x80
      005071 E2                    4441 	.db 0xe2
      005072 94                    4442 	.db 0x94
      005073 80                    4443 	.db 0x80
      005074 E2                    4444 	.db 0xe2
      005075 94                    4445 	.db 0x94
      005076 80                    4446 	.db 0x80
      005077 E2                    4447 	.db 0xe2
      005078 94                    4448 	.db 0x94
      005079 80                    4449 	.db 0x80
      00507A E2                    4450 	.db 0xe2
      00507B 94                    4451 	.db 0x94
      00507C 80                    4452 	.db 0x80
      00507D E2                    4453 	.db 0xe2
      00507E 94                    4454 	.db 0x94
      00507F 80                    4455 	.db 0x80
      005080 20 52 45 53 45 54 20  4456 	.ascii " RESET OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      005091 E2                    4457 	.db 0xe2
      005092 94                    4458 	.db 0x94
      005093 80                    4459 	.db 0x80
      005094 E2                    4460 	.db 0xe2
      005095 94                    4461 	.db 0x94
      005096 80                    4462 	.db 0x80
      005097 E2                    4463 	.db 0xe2
      005098 94                    4464 	.db 0x94
      005099 80                    4465 	.db 0x80
      00509A E2                    4466 	.db 0xe2
      00509B 94                    4467 	.db 0x94
      00509C 80                    4468 	.db 0x80
      00509D E2                    4469 	.db 0xe2
      00509E 94                    4470 	.db 0x94
      00509F 80                    4471 	.db 0x80
      0050A0 E2                    4472 	.db 0xe2
      0050A1 94                    4473 	.db 0x94
      0050A2 80                    4474 	.db 0x80
      0050A3 E2                    4475 	.db 0xe2
      0050A4 94                    4476 	.db 0x94
      0050A5 80                    4477 	.db 0x80
      0050A6 E2                    4478 	.db 0xe2
      0050A7 94                    4479 	.db 0x94
      0050A8 80                    4480 	.db 0x80
      0050A9 E2                    4481 	.db 0xe2
      0050AA 94                    4482 	.db 0x94
      0050AB 80                    4483 	.db 0x80
      0050AC E2                    4484 	.db 0xe2
      0050AD 94                    4485 	.db 0x94
      0050AE 80                    4486 	.db 0x80
      0050AF E2                    4487 	.db 0xe2
      0050B0 94                    4488 	.db 0x94
      0050B1 80                    4489 	.db 0x80
      0050B2 E2                    4490 	.db 0xe2
      0050B3 94                    4491 	.db 0x94
      0050B4 90                    4492 	.db 0x90
      0050B5 0A                    4493 	.db 0x0a
      0050B6 0D                    4494 	.db 0x0d
      0050B7 00                    4495 	.db 0x00
                                   4496 	.area CSEG    (CODE)
                                   4497 	.area CONST   (CODE)
      0050B8                       4498 ___str_19:
      0050B8 0A                    4499 	.db 0x0a
      0050B9 E2                    4500 	.db 0xe2
      0050BA 94                    4501 	.db 0x94
      0050BB 8C                    4502 	.db 0x8c
      0050BC E2                    4503 	.db 0xe2
      0050BD 94                    4504 	.db 0x94
      0050BE 80                    4505 	.db 0x80
      0050BF E2                    4506 	.db 0xe2
      0050C0 94                    4507 	.db 0x94
      0050C1 80                    4508 	.db 0x80
      0050C2 E2                    4509 	.db 0xe2
      0050C3 94                    4510 	.db 0x94
      0050C4 80                    4511 	.db 0x80
      0050C5 E2                    4512 	.db 0xe2
      0050C6 94                    4513 	.db 0x94
      0050C7 80                    4514 	.db 0x80
      0050C8 E2                    4515 	.db 0xe2
      0050C9 94                    4516 	.db 0x94
      0050CA 80                    4517 	.db 0x80
      0050CB E2                    4518 	.db 0xe2
      0050CC 94                    4519 	.db 0x94
      0050CD 80                    4520 	.db 0x80
      0050CE E2                    4521 	.db 0xe2
      0050CF 94                    4522 	.db 0x94
      0050D0 80                    4523 	.db 0x80
      0050D1 E2                    4524 	.db 0xe2
      0050D2 94                    4525 	.db 0x94
      0050D3 80                    4526 	.db 0x80
      0050D4 E2                    4527 	.db 0xe2
      0050D5 94                    4528 	.db 0x94
      0050D6 80                    4529 	.db 0x80
      0050D7 E2                    4530 	.db 0xe2
      0050D8 94                    4531 	.db 0x94
      0050D9 80                    4532 	.db 0x80
      0050DA E2                    4533 	.db 0xe2
      0050DB 94                    4534 	.db 0x94
      0050DC 80                    4535 	.db 0x80
      0050DD E2                    4536 	.db 0xe2
      0050DE 94                    4537 	.db 0x94
      0050DF 80                    4538 	.db 0x80
      0050E0 E2                    4539 	.db 0xe2
      0050E1 94                    4540 	.db 0x94
      0050E2 80                    4541 	.db 0x80
      0050E3 20 48 45 58 20 44 55  4542 	.ascii " HEX DUMP OPERATION "
             4D 50 20 4F 50 45 52
             41 54 49 4F 4E 20
      0050F7 E2                    4543 	.db 0xe2
      0050F8 94                    4544 	.db 0x94
      0050F9 80                    4545 	.db 0x80
      0050FA E2                    4546 	.db 0xe2
      0050FB 94                    4547 	.db 0x94
      0050FC 80                    4548 	.db 0x80
      0050FD E2                    4549 	.db 0xe2
      0050FE 94                    4550 	.db 0x94
      0050FF 80                    4551 	.db 0x80
      005100 E2                    4552 	.db 0xe2
      005101 94                    4553 	.db 0x94
      005102 80                    4554 	.db 0x80
      005103 E2                    4555 	.db 0xe2
      005104 94                    4556 	.db 0x94
      005105 80                    4557 	.db 0x80
      005106 E2                    4558 	.db 0xe2
      005107 94                    4559 	.db 0x94
      005108 80                    4560 	.db 0x80
      005109 E2                    4561 	.db 0xe2
      00510A 94                    4562 	.db 0x94
      00510B 80                    4563 	.db 0x80
      00510C E2                    4564 	.db 0xe2
      00510D 94                    4565 	.db 0x94
      00510E 80                    4566 	.db 0x80
      00510F E2                    4567 	.db 0xe2
      005110 94                    4568 	.db 0x94
      005111 80                    4569 	.db 0x80
      005112 E2                    4570 	.db 0xe2
      005113 94                    4571 	.db 0x94
      005114 80                    4572 	.db 0x80
      005115 E2                    4573 	.db 0xe2
      005116 94                    4574 	.db 0x94
      005117 80                    4575 	.db 0x80
      005118 E2                    4576 	.db 0xe2
      005119 94                    4577 	.db 0x94
      00511A 80                    4578 	.db 0x80
      00511B E2                    4579 	.db 0xe2
      00511C 94                    4580 	.db 0x94
      00511D 80                    4581 	.db 0x80
      00511E E2                    4582 	.db 0xe2
      00511F 94                    4583 	.db 0x94
      005120 80                    4584 	.db 0x80
      005121 E2                    4585 	.db 0xe2
      005122 94                    4586 	.db 0x94
      005123 80                    4587 	.db 0x80
      005124 E2                    4588 	.db 0xe2
      005125 94                    4589 	.db 0x94
      005126 90                    4590 	.db 0x90
      005127 0A                    4591 	.db 0x0a
      005128 0D                    4592 	.db 0x0d
      005129 00                    4593 	.db 0x00
                                   4594 	.area CSEG    (CODE)
                                   4595 	.area CONST   (CODE)
      00512A                       4596 ___str_20:
      00512A 49 4E 56 41 4C 49 44  4597 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      005137 0A                    4598 	.db 0x0a
      005138 0D                    4599 	.db 0x0d
      005139 00                    4600 	.db 0x00
                                   4601 	.area CSEG    (CODE)
                                   4602 	.area CONST   (CODE)
      00513A                       4603 ___str_21:
      00513A E2                    4604 	.db 0xe2
      00513B 94                    4605 	.db 0x94
      00513C 82                    4606 	.db 0x82
      00513D 20 45 6E 74 65 72 20  4607 	.ascii " Enter address (hex, up to 3 characters): "
             61 64 64 72 65 73 73
             20 28 68 65 78 2C 20
             75 70 20 74 6F 20 33
             20 63 68 61 72 61 63
             74 65 72 73 29 3A 20
      005167 0A                    4608 	.db 0x0a
      005168 0D                    4609 	.db 0x0d
      005169 7C                    4610 	.ascii "|"
      00516A 00                    4611 	.db 0x00
                                   4612 	.area CSEG    (CODE)
                                   4613 	.area CONST   (CODE)
      00516B                       4614 ___str_22:
      00516B 7C 20 24 20           4615 	.ascii "| $ "
      00516F 00                    4616 	.db 0x00
                                   4617 	.area CSEG    (CODE)
                                   4618 	.area CONST   (CODE)
      005170                       4619 ___str_23:
      005170 0A                    4620 	.db 0x0a
      005171 0D                    4621 	.db 0x0d
      005172 E2                    4622 	.db 0xe2
      005173 94                    4623 	.db 0x94
      005174 82                    4624 	.db 0x82
      005175 20 45 6E 74 65 72 65  4625 	.ascii " Entered address: 0x%03X"
             64 20 61 64 64 72 65
             73 73 3A 20 30 78 25
             30 33 58
      00518D 0A                    4626 	.db 0x0a
      00518E 0D                    4627 	.db 0x0d
      00518F 00                    4628 	.db 0x00
                                   4629 	.area CSEG    (CODE)
                                   4630 	.area CONST   (CODE)
      005190                       4631 ___str_24:
      005190 E2                    4632 	.db 0xe2
      005191 95                    4633 	.db 0x95
      005192 94                    4634 	.db 0x94
      005193 E2                    4635 	.db 0xe2
      005194 95                    4636 	.db 0x95
      005195 90                    4637 	.db 0x90
      005196 E2                    4638 	.db 0xe2
      005197 95                    4639 	.db 0x95
      005198 90                    4640 	.db 0x90
      005199 E2                    4641 	.db 0xe2
      00519A 95                    4642 	.db 0x95
      00519B 90                    4643 	.db 0x90
      00519C E2                    4644 	.db 0xe2
      00519D 95                    4645 	.db 0x95
      00519E 90                    4646 	.db 0x90
      00519F E2                    4647 	.db 0xe2
      0051A0 95                    4648 	.db 0x95
      0051A1 90                    4649 	.db 0x90
      0051A2 E2                    4650 	.db 0xe2
      0051A3 95                    4651 	.db 0x95
      0051A4 90                    4652 	.db 0x90
      0051A5 E2                    4653 	.db 0xe2
      0051A6 95                    4654 	.db 0x95
      0051A7 90                    4655 	.db 0x90
      0051A8 E2                    4656 	.db 0xe2
      0051A9 95                    4657 	.db 0x95
      0051AA 90                    4658 	.db 0x90
      0051AB E2                    4659 	.db 0xe2
      0051AC 95                    4660 	.db 0x95
      0051AD 90                    4661 	.db 0x90
      0051AE E2                    4662 	.db 0xe2
      0051AF 95                    4663 	.db 0x95
      0051B0 90                    4664 	.db 0x90
      0051B1 E2                    4665 	.db 0xe2
      0051B2 95                    4666 	.db 0x95
      0051B3 90                    4667 	.db 0x90
      0051B4 E2                    4668 	.db 0xe2
      0051B5 95                    4669 	.db 0x95
      0051B6 90                    4670 	.db 0x90
      0051B7 E2                    4671 	.db 0xe2
      0051B8 95                    4672 	.db 0x95
      0051B9 90                    4673 	.db 0x90
      0051BA E2                    4674 	.db 0xe2
      0051BB 95                    4675 	.db 0x95
      0051BC 90                    4676 	.db 0x90
      0051BD E2                    4677 	.db 0xe2
      0051BE 95                    4678 	.db 0x95
      0051BF 90                    4679 	.db 0x90
      0051C0 E2                    4680 	.db 0xe2
      0051C1 95                    4681 	.db 0x95
      0051C2 90                    4682 	.db 0x90
      0051C3 E2                    4683 	.db 0xe2
      0051C4 95                    4684 	.db 0x95
      0051C5 90                    4685 	.db 0x90
      0051C6 E2                    4686 	.db 0xe2
      0051C7 95                    4687 	.db 0x95
      0051C8 90                    4688 	.db 0x90
      0051C9 E2                    4689 	.db 0xe2
      0051CA 95                    4690 	.db 0x95
      0051CB 90                    4691 	.db 0x90
      0051CC E2                    4692 	.db 0xe2
      0051CD 95                    4693 	.db 0x95
      0051CE 90                    4694 	.db 0x90
      0051CF E2                    4695 	.db 0xe2
      0051D0 95                    4696 	.db 0x95
      0051D1 90                    4697 	.db 0x90
      0051D2 E2                    4698 	.db 0xe2
      0051D3 95                    4699 	.db 0x95
      0051D4 90                    4700 	.db 0x90
      0051D5 E2                    4701 	.db 0xe2
      0051D6 95                    4702 	.db 0x95
      0051D7 90                    4703 	.db 0x90
      0051D8 E2                    4704 	.db 0xe2
      0051D9 95                    4705 	.db 0x95
      0051DA 90                    4706 	.db 0x90
      0051DB E2                    4707 	.db 0xe2
      0051DC 95                    4708 	.db 0x95
      0051DD 90                    4709 	.db 0x90
      0051DE E2                    4710 	.db 0xe2
      0051DF 95                    4711 	.db 0x95
      0051E0 90                    4712 	.db 0x90
      0051E1 E2                    4713 	.db 0xe2
      0051E2 95                    4714 	.db 0x95
      0051E3 90                    4715 	.db 0x90
      0051E4 E2                    4716 	.db 0xe2
      0051E5 95                    4717 	.db 0x95
      0051E6 90                    4718 	.db 0x90
      0051E7 E2                    4719 	.db 0xe2
      0051E8 95                    4720 	.db 0x95
      0051E9 90                    4721 	.db 0x90
      0051EA E2                    4722 	.db 0xe2
      0051EB 95                    4723 	.db 0x95
      0051EC 90                    4724 	.db 0x90
      0051ED E2                    4725 	.db 0xe2
      0051EE 95                    4726 	.db 0x95
      0051EF 90                    4727 	.db 0x90
      0051F0 E2                    4728 	.db 0xe2
      0051F1 95                    4729 	.db 0x95
      0051F2 90                    4730 	.db 0x90
      0051F3 E2                    4731 	.db 0xe2
      0051F4 95                    4732 	.db 0x95
      0051F5 90                    4733 	.db 0x90
      0051F6 E2                    4734 	.db 0xe2
      0051F7 95                    4735 	.db 0x95
      0051F8 90                    4736 	.db 0x90
      0051F9 E2                    4737 	.db 0xe2
      0051FA 95                    4738 	.db 0x95
      0051FB 90                    4739 	.db 0x90
      0051FC E2                    4740 	.db 0xe2
      0051FD 95                    4741 	.db 0x95
      0051FE 90                    4742 	.db 0x90
      0051FF E2                    4743 	.db 0xe2
      005200 95                    4744 	.db 0x95
      005201 90                    4745 	.db 0x90
      005202 E2                    4746 	.db 0xe2
      005203 95                    4747 	.db 0x95
      005204 90                    4748 	.db 0x90
      005205 E2                    4749 	.db 0xe2
      005206 95                    4750 	.db 0x95
      005207 90                    4751 	.db 0x90
      005208 E2                    4752 	.db 0xe2
      005209 95                    4753 	.db 0x95
      00520A 90                    4754 	.db 0x90
      00520B E2                    4755 	.db 0xe2
      00520C 95                    4756 	.db 0x95
      00520D 90                    4757 	.db 0x90
      00520E E2                    4758 	.db 0xe2
      00520F 95                    4759 	.db 0x95
      005210 90                    4760 	.db 0x90
      005211 E2                    4761 	.db 0xe2
      005212 95                    4762 	.db 0x95
      005213 97                    4763 	.db 0x97
      005214 0A                    4764 	.db 0x0a
      005215 0D                    4765 	.db 0x0d
      005216 00                    4766 	.db 0x00
                                   4767 	.area CSEG    (CODE)
                                   4768 	.area CONST   (CODE)
      005217                       4769 ___str_25:
      005217 E2                    4770 	.db 0xe2
      005218 95                    4771 	.db 0x95
      005219 91                    4772 	.db 0x91
      00521A 20 20 20 20 20 20 20  4773 	.ascii "       ! ADDRESS OUT OF RANGE !         "
             21 20 41 44 44 52 45
             53 53 20 4F 55 54 20
             4F 46 20 52 41 4E 47
             45 20 21 20 20 20 20
             20 20 20 20 20
      005242 E2                    4774 	.db 0xe2
      005243 95                    4775 	.db 0x95
      005244 91                    4776 	.db 0x91
      005245 0A                    4777 	.db 0x0a
      005246 0D                    4778 	.db 0x0d
      005247 00                    4779 	.db 0x00
                                   4780 	.area CSEG    (CODE)
                                   4781 	.area CONST   (CODE)
      005248                       4782 ___str_26:
      005248 E2                    4783 	.db 0xe2
      005249 95                    4784 	.db 0x95
      00524A 91                    4785 	.db 0x91
      00524B 20 20 20 20 20 50 6C  4786 	.ascii "     Please Enter Valid Address         "
             65 61 73 65 20 45 6E
             74 65 72 20 56 61 6C
             69 64 20 41 64 64 72
             65 73 73 20 20 20 20
             20 20 20 20 20
      005273 E2                    4787 	.db 0xe2
      005274 95                    4788 	.db 0x95
      005275 91                    4789 	.db 0x91
      005276 0A                    4790 	.db 0x0a
      005277 0D                    4791 	.db 0x0d
      005278 00                    4792 	.db 0x00
                                   4793 	.area CSEG    (CODE)
                                   4794 	.area CONST   (CODE)
      005279                       4795 ___str_27:
      005279 E2                    4796 	.db 0xe2
      00527A 95                    4797 	.db 0x95
      00527B 9A                    4798 	.db 0x9a
      00527C E2                    4799 	.db 0xe2
      00527D 95                    4800 	.db 0x95
      00527E 90                    4801 	.db 0x90
      00527F E2                    4802 	.db 0xe2
      005280 95                    4803 	.db 0x95
      005281 90                    4804 	.db 0x90
      005282 E2                    4805 	.db 0xe2
      005283 95                    4806 	.db 0x95
      005284 90                    4807 	.db 0x90
      005285 E2                    4808 	.db 0xe2
      005286 95                    4809 	.db 0x95
      005287 90                    4810 	.db 0x90
      005288 E2                    4811 	.db 0xe2
      005289 95                    4812 	.db 0x95
      00528A 90                    4813 	.db 0x90
      00528B E2                    4814 	.db 0xe2
      00528C 95                    4815 	.db 0x95
      00528D 90                    4816 	.db 0x90
      00528E E2                    4817 	.db 0xe2
      00528F 95                    4818 	.db 0x95
      005290 90                    4819 	.db 0x90
      005291 E2                    4820 	.db 0xe2
      005292 95                    4821 	.db 0x95
      005293 90                    4822 	.db 0x90
      005294 E2                    4823 	.db 0xe2
      005295 95                    4824 	.db 0x95
      005296 90                    4825 	.db 0x90
      005297 E2                    4826 	.db 0xe2
      005298 95                    4827 	.db 0x95
      005299 90                    4828 	.db 0x90
      00529A E2                    4829 	.db 0xe2
      00529B 95                    4830 	.db 0x95
      00529C 90                    4831 	.db 0x90
      00529D E2                    4832 	.db 0xe2
      00529E 95                    4833 	.db 0x95
      00529F 90                    4834 	.db 0x90
      0052A0 E2                    4835 	.db 0xe2
      0052A1 95                    4836 	.db 0x95
      0052A2 90                    4837 	.db 0x90
      0052A3 E2                    4838 	.db 0xe2
      0052A4 95                    4839 	.db 0x95
      0052A5 90                    4840 	.db 0x90
      0052A6 E2                    4841 	.db 0xe2
      0052A7 95                    4842 	.db 0x95
      0052A8 90                    4843 	.db 0x90
      0052A9 E2                    4844 	.db 0xe2
      0052AA 95                    4845 	.db 0x95
      0052AB 90                    4846 	.db 0x90
      0052AC E2                    4847 	.db 0xe2
      0052AD 95                    4848 	.db 0x95
      0052AE 90                    4849 	.db 0x90
      0052AF E2                    4850 	.db 0xe2
      0052B0 95                    4851 	.db 0x95
      0052B1 90                    4852 	.db 0x90
      0052B2 E2                    4853 	.db 0xe2
      0052B3 95                    4854 	.db 0x95
      0052B4 90                    4855 	.db 0x90
      0052B5 E2                    4856 	.db 0xe2
      0052B6 95                    4857 	.db 0x95
      0052B7 90                    4858 	.db 0x90
      0052B8 E2                    4859 	.db 0xe2
      0052B9 95                    4860 	.db 0x95
      0052BA 90                    4861 	.db 0x90
      0052BB E2                    4862 	.db 0xe2
      0052BC 95                    4863 	.db 0x95
      0052BD 90                    4864 	.db 0x90
      0052BE E2                    4865 	.db 0xe2
      0052BF 95                    4866 	.db 0x95
      0052C0 90                    4867 	.db 0x90
      0052C1 E2                    4868 	.db 0xe2
      0052C2 95                    4869 	.db 0x95
      0052C3 90                    4870 	.db 0x90
      0052C4 E2                    4871 	.db 0xe2
      0052C5 95                    4872 	.db 0x95
      0052C6 90                    4873 	.db 0x90
      0052C7 E2                    4874 	.db 0xe2
      0052C8 95                    4875 	.db 0x95
      0052C9 90                    4876 	.db 0x90
      0052CA E2                    4877 	.db 0xe2
      0052CB 95                    4878 	.db 0x95
      0052CC 90                    4879 	.db 0x90
      0052CD E2                    4880 	.db 0xe2
      0052CE 95                    4881 	.db 0x95
      0052CF 90                    4882 	.db 0x90
      0052D0 E2                    4883 	.db 0xe2
      0052D1 95                    4884 	.db 0x95
      0052D2 90                    4885 	.db 0x90
      0052D3 E2                    4886 	.db 0xe2
      0052D4 95                    4887 	.db 0x95
      0052D5 90                    4888 	.db 0x90
      0052D6 E2                    4889 	.db 0xe2
      0052D7 95                    4890 	.db 0x95
      0052D8 90                    4891 	.db 0x90
      0052D9 E2                    4892 	.db 0xe2
      0052DA 95                    4893 	.db 0x95
      0052DB 90                    4894 	.db 0x90
      0052DC E2                    4895 	.db 0xe2
      0052DD 95                    4896 	.db 0x95
      0052DE 90                    4897 	.db 0x90
      0052DF E2                    4898 	.db 0xe2
      0052E0 95                    4899 	.db 0x95
      0052E1 90                    4900 	.db 0x90
      0052E2 E2                    4901 	.db 0xe2
      0052E3 95                    4902 	.db 0x95
      0052E4 90                    4903 	.db 0x90
      0052E5 E2                    4904 	.db 0xe2
      0052E6 95                    4905 	.db 0x95
      0052E7 90                    4906 	.db 0x90
      0052E8 E2                    4907 	.db 0xe2
      0052E9 95                    4908 	.db 0x95
      0052EA 90                    4909 	.db 0x90
      0052EB E2                    4910 	.db 0xe2
      0052EC 95                    4911 	.db 0x95
      0052ED 90                    4912 	.db 0x90
      0052EE E2                    4913 	.db 0xe2
      0052EF 95                    4914 	.db 0x95
      0052F0 90                    4915 	.db 0x90
      0052F1 E2                    4916 	.db 0xe2
      0052F2 95                    4917 	.db 0x95
      0052F3 90                    4918 	.db 0x90
      0052F4 E2                    4919 	.db 0xe2
      0052F5 95                    4920 	.db 0x95
      0052F6 90                    4921 	.db 0x90
      0052F7 E2                    4922 	.db 0xe2
      0052F8 95                    4923 	.db 0x95
      0052F9 90                    4924 	.db 0x90
      0052FA E2                    4925 	.db 0xe2
      0052FB 95                    4926 	.db 0x95
      0052FC 9D                    4927 	.db 0x9d
      0052FD 0A                    4928 	.db 0x0a
      0052FE 0D                    4929 	.db 0x0d
      0052FF 00                    4930 	.db 0x00
                                   4931 	.area CSEG    (CODE)
                                   4932 	.area CONST   (CODE)
      005300                       4933 ___str_28:
      005300 E2                    4934 	.db 0xe2
      005301 94                    4935 	.db 0x94
      005302 82                    4936 	.db 0x82
      005303 20 45 6E 74 65 72 20  4937 	.ascii " Enter data (hex, up to 2 characters): "
             64 61 74 61 20 28 68
             65 78 2C 20 75 70 20
             74 6F 20 32 20 63 68
             61 72 61 63 74 65 72
             73 29 3A 20
      00532A 0A                    4938 	.db 0x0a
      00532B 0D                    4939 	.db 0x0d
      00532C 7C                    4940 	.ascii "|"
      00532D 00                    4941 	.db 0x00
                                   4942 	.area CSEG    (CODE)
                                   4943 	.area CONST   (CODE)
      00532E                       4944 ___str_29:
      00532E 24 20                 4945 	.ascii "$ "
      005330 00                    4946 	.db 0x00
                                   4947 	.area CSEG    (CODE)
                                   4948 	.area CONST   (CODE)
      005331                       4949 ___str_30:
      005331 0A                    4950 	.db 0x0a
      005332 0D                    4951 	.db 0x0d
      005333 E2                    4952 	.db 0xe2
      005334 94                    4953 	.db 0x94
      005335 82                    4954 	.db 0x82
      005336 20 45 6E 74 65 72 65  4955 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      00534B 0A                    4956 	.db 0x0a
      00534C 0D                    4957 	.db 0x0d
      00534D 00                    4958 	.db 0x00
                                   4959 	.area CSEG    (CODE)
                                   4960 	.area CONST   (CODE)
      00534E                       4961 ___str_31:
      00534E 44 61 74 61 20 6F 75  4962 	.ascii "Data out of Range"
             74 20 6F 66 20 52 61
             6E 67 65
      00535F 0A                    4963 	.db 0x0a
      005360 0D                    4964 	.db 0x0d
      005361 00                    4965 	.db 0x00
                                   4966 	.area CSEG    (CODE)
                                   4967 	.area CONST   (CODE)
      005362                       4968 ___str_32:
      005362 45 72 72 6F 72 3A 20  4969 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      00538A 0A                    4970 	.db 0x0a
      00538B 0D                    4971 	.db 0x0d
      00538C 00                    4972 	.db 0x00
                                   4973 	.area CSEG    (CODE)
                                   4974 	.area CONST   (CODE)
      00538D                       4975 ___str_33:
      00538D 45 72 72 6F 72 3A 20  4976 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      0053AD 0A                    4977 	.db 0x0a
      0053AE 0D                    4978 	.db 0x0d
      0053AF 00                    4979 	.db 0x00
                                   4980 	.area CSEG    (CODE)
                                   4981 	.area CONST   (CODE)
      0053B0                       4982 ___str_34:
      0053B0 45 72 72 6F 72 3A 20  4983 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      0053C6 0A                    4984 	.db 0x0a
      0053C7 0D                    4985 	.db 0x0d
      0053C8 00                    4986 	.db 0x00
                                   4987 	.area CSEG    (CODE)
                                   4988 	.area CONST   (CODE)
      0053C9                       4989 ___str_35:
      0053C9 7C 20 57 72 69 74 69  4990 	.ascii "| Writing at Address 0x%03X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 33 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      0053FB 0A                    4991 	.db 0x0a
      0053FC 0D                    4992 	.db 0x0d
      0053FD 00                    4993 	.db 0x00
                                   4994 	.area CSEG    (CODE)
                                   4995 	.area CONST   (CODE)
      0053FE                       4996 ___str_36:
      0053FE E2                    4997 	.db 0xe2
      0053FF 94                    4998 	.db 0x94
      005400 82                    4999 	.db 0x82
      005401 20 57 72 69 74 65 20  5000 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      005430 E2                    5001 	.db 0xe2
      005431 94                    5002 	.db 0x94
      005432 82                    5003 	.db 0x82
      005433 0A                    5004 	.db 0x0a
      005434 0D                    5005 	.db 0x0d
      005435 00                    5006 	.db 0x00
                                   5007 	.area CSEG    (CODE)
                                   5008 	.area CONST   (CODE)
      005436                       5009 ___str_37:
      005436 E2                    5010 	.db 0xe2
      005437 94                    5011 	.db 0x94
      005438 94                    5012 	.db 0x94
      005439 E2                    5013 	.db 0xe2
      00543A 94                    5014 	.db 0x94
      00543B 80                    5015 	.db 0x80
      00543C E2                    5016 	.db 0xe2
      00543D 94                    5017 	.db 0x94
      00543E 80                    5018 	.db 0x80
      00543F E2                    5019 	.db 0xe2
      005440 94                    5020 	.db 0x94
      005441 80                    5021 	.db 0x80
      005442 E2                    5022 	.db 0xe2
      005443 94                    5023 	.db 0x94
      005444 80                    5024 	.db 0x80
      005445 E2                    5025 	.db 0xe2
      005446 94                    5026 	.db 0x94
      005447 80                    5027 	.db 0x80
      005448 E2                    5028 	.db 0xe2
      005449 94                    5029 	.db 0x94
      00544A 80                    5030 	.db 0x80
      00544B E2                    5031 	.db 0xe2
      00544C 94                    5032 	.db 0x94
      00544D 80                    5033 	.db 0x80
      00544E E2                    5034 	.db 0xe2
      00544F 94                    5035 	.db 0x94
      005450 80                    5036 	.db 0x80
      005451 E2                    5037 	.db 0xe2
      005452 94                    5038 	.db 0x94
      005453 80                    5039 	.db 0x80
      005454 E2                    5040 	.db 0xe2
      005455 94                    5041 	.db 0x94
      005456 80                    5042 	.db 0x80
      005457 E2                    5043 	.db 0xe2
      005458 94                    5044 	.db 0x94
      005459 80                    5045 	.db 0x80
      00545A E2                    5046 	.db 0xe2
      00545B 94                    5047 	.db 0x94
      00545C 80                    5048 	.db 0x80
      00545D E2                    5049 	.db 0xe2
      00545E 94                    5050 	.db 0x94
      00545F 80                    5051 	.db 0x80
      005460 E2                    5052 	.db 0xe2
      005461 94                    5053 	.db 0x94
      005462 80                    5054 	.db 0x80
      005463 E2                    5055 	.db 0xe2
      005464 94                    5056 	.db 0x94
      005465 80                    5057 	.db 0x80
      005466 E2                    5058 	.db 0xe2
      005467 94                    5059 	.db 0x94
      005468 80                    5060 	.db 0x80
      005469 E2                    5061 	.db 0xe2
      00546A 94                    5062 	.db 0x94
      00546B 80                    5063 	.db 0x80
      00546C E2                    5064 	.db 0xe2
      00546D 94                    5065 	.db 0x94
      00546E 80                    5066 	.db 0x80
      00546F E2                    5067 	.db 0xe2
      005470 94                    5068 	.db 0x94
      005471 80                    5069 	.db 0x80
      005472 E2                    5070 	.db 0xe2
      005473 94                    5071 	.db 0x94
      005474 80                    5072 	.db 0x80
      005475 E2                    5073 	.db 0xe2
      005476 94                    5074 	.db 0x94
      005477 80                    5075 	.db 0x80
      005478 E2                    5076 	.db 0xe2
      005479 94                    5077 	.db 0x94
      00547A 80                    5078 	.db 0x80
      00547B E2                    5079 	.db 0xe2
      00547C 94                    5080 	.db 0x94
      00547D 80                    5081 	.db 0x80
      00547E E2                    5082 	.db 0xe2
      00547F 94                    5083 	.db 0x94
      005480 80                    5084 	.db 0x80
      005481 E2                    5085 	.db 0xe2
      005482 94                    5086 	.db 0x94
      005483 80                    5087 	.db 0x80
      005484 E2                    5088 	.db 0xe2
      005485 94                    5089 	.db 0x94
      005486 80                    5090 	.db 0x80
      005487 E2                    5091 	.db 0xe2
      005488 94                    5092 	.db 0x94
      005489 80                    5093 	.db 0x80
      00548A E2                    5094 	.db 0xe2
      00548B 94                    5095 	.db 0x94
      00548C 80                    5096 	.db 0x80
      00548D E2                    5097 	.db 0xe2
      00548E 94                    5098 	.db 0x94
      00548F 80                    5099 	.db 0x80
      005490 E2                    5100 	.db 0xe2
      005491 94                    5101 	.db 0x94
      005492 80                    5102 	.db 0x80
      005493 E2                    5103 	.db 0xe2
      005494 94                    5104 	.db 0x94
      005495 80                    5105 	.db 0x80
      005496 E2                    5106 	.db 0xe2
      005497 94                    5107 	.db 0x94
      005498 80                    5108 	.db 0x80
      005499 E2                    5109 	.db 0xe2
      00549A 94                    5110 	.db 0x94
      00549B 80                    5111 	.db 0x80
      00549C E2                    5112 	.db 0xe2
      00549D 94                    5113 	.db 0x94
      00549E 80                    5114 	.db 0x80
      00549F E2                    5115 	.db 0xe2
      0054A0 94                    5116 	.db 0x94
      0054A1 80                    5117 	.db 0x80
      0054A2 E2                    5118 	.db 0xe2
      0054A3 94                    5119 	.db 0x94
      0054A4 80                    5120 	.db 0x80
      0054A5 E2                    5121 	.db 0xe2
      0054A6 94                    5122 	.db 0x94
      0054A7 80                    5123 	.db 0x80
      0054A8 E2                    5124 	.db 0xe2
      0054A9 94                    5125 	.db 0x94
      0054AA 80                    5126 	.db 0x80
      0054AB E2                    5127 	.db 0xe2
      0054AC 94                    5128 	.db 0x94
      0054AD 80                    5129 	.db 0x80
      0054AE E2                    5130 	.db 0xe2
      0054AF 94                    5131 	.db 0x94
      0054B0 80                    5132 	.db 0x80
      0054B1 E2                    5133 	.db 0xe2
      0054B2 94                    5134 	.db 0x94
      0054B3 80                    5135 	.db 0x80
      0054B4 E2                    5136 	.db 0xe2
      0054B5 94                    5137 	.db 0x94
      0054B6 80                    5138 	.db 0x80
      0054B7 E2                    5139 	.db 0xe2
      0054B8 94                    5140 	.db 0x94
      0054B9 80                    5141 	.db 0x80
      0054BA E2                    5142 	.db 0xe2
      0054BB 94                    5143 	.db 0x94
      0054BC 80                    5144 	.db 0x80
      0054BD E2                    5145 	.db 0xe2
      0054BE 94                    5146 	.db 0x94
      0054BF 80                    5147 	.db 0x80
      0054C0 E2                    5148 	.db 0xe2
      0054C1 94                    5149 	.db 0x94
      0054C2 80                    5150 	.db 0x80
      0054C3 E2                    5151 	.db 0xe2
      0054C4 94                    5152 	.db 0x94
      0054C5 80                    5153 	.db 0x80
      0054C6 E2                    5154 	.db 0xe2
      0054C7 94                    5155 	.db 0x94
      0054C8 98                    5156 	.db 0x98
      0054C9 0A                    5157 	.db 0x0a
      0054CA 0D                    5158 	.db 0x0d
      0054CB 00                    5159 	.db 0x00
                                   5160 	.area CSEG    (CODE)
                                   5161 	.area CONST   (CODE)
      0054CC                       5162 ___str_38:
      0054CC 45 72 72 6F 72 3A 20  5163 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      0054F9 0A                    5164 	.db 0x0a
      0054FA 0D                    5165 	.db 0x0d
      0054FB 00                    5166 	.db 0x00
                                   5167 	.area CSEG    (CODE)
                                   5168 	.area CONST   (CODE)
      0054FC                       5169 ___str_39:
      0054FC 45 72 72 6F 72 3A 20  5170 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      005528 0A                    5171 	.db 0x0a
      005529 0D                    5172 	.db 0x0d
      00552A 00                    5173 	.db 0x00
                                   5174 	.area CSEG    (CODE)
                                   5175 	.area CONST   (CODE)
      00552B                       5176 ___str_40:
      00552B 7C 20 30 78 25 30 33  5177 	.ascii "| 0x%03X : 0x%02X "
             58 20 3A 20 30 78 25
             30 32 58 20
      00553D 0A                    5178 	.db 0x0a
      00553E 0D                    5179 	.db 0x0d
      00553F 00                    5180 	.db 0x00
                                   5181 	.area CSEG    (CODE)
                                   5182 	.area CONST   (CODE)
      005540                       5183 ___str_41:
      005540 E2                    5184 	.db 0xe2
      005541 94                    5185 	.db 0x94
      005542 82                    5186 	.db 0x82
      005543 20 52 65 61 64 20 73  5187 	.ascii " Read successful!                 "
             75 63 63 65 73 73 66
             75 6C 21 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20
      005565 E2                    5188 	.db 0xe2
      005566 94                    5189 	.db 0x94
      005567 82                    5190 	.db 0x82
      005568 0A                    5191 	.db 0x0a
      005569 0D                    5192 	.db 0x0d
      00556A 00                    5193 	.db 0x00
                                   5194 	.area CSEG    (CODE)
                                   5195 	.area CONST   (CODE)
      00556B                       5196 ___str_42:
      00556B 41 43 4B 20 44 49 44  5197 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      00557D 0A                    5198 	.db 0x0a
      00557E 0D                    5199 	.db 0x0d
      00557F 00                    5200 	.db 0x00
                                   5201 	.area CSEG    (CODE)
                                   5202 	.area CONST   (CODE)
      005580                       5203 ___str_43:
      005580 0D                    5204 	.db 0x0d
      005581 0A                    5205 	.db 0x0a
      005582 2D 2D 2D 2D 2D 2D 2D  5206 	.ascii "------------------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      0055BE 2D 2D 2D 2D           5207 	.ascii "----"
      0055C2 0D                    5208 	.db 0x0d
      0055C3 0A                    5209 	.db 0x0a
      0055C4 00                    5210 	.db 0x00
                                   5211 	.area CSEG    (CODE)
                                   5212 	.area CONST   (CODE)
      0055C5                       5213 ___str_44:
      0055C5 20 20 20 20 20 20 20  5214 	.ascii "                    EEPROM Hex Dump                         "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 45
             45 50 52 4F 4D 20 48
             65 78 20 44 75 6D 70
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      005601 20 20 20 20 20 20     5215 	.ascii "      "
      005607 0D                    5216 	.db 0x0d
      005608 0A                    5217 	.db 0x0a
      005609 00                    5218 	.db 0x00
                                   5219 	.area CSEG    (CODE)
                                   5220 	.area CONST   (CODE)
      00560A                       5221 ___str_45:
      00560A 2D 2D 2D 2D 2D 2D 2D  5222 	.ascii "------------------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      005646 2D 2D 2D 2D           5223 	.ascii "----"
      00564A 0D                    5224 	.db 0x0d
      00564B 0A                    5225 	.db 0x0a
      00564C 00                    5226 	.db 0x00
                                   5227 	.area CSEG    (CODE)
                                   5228 	.area CONST   (CODE)
      00564D                       5229 ___str_46:
      00564D 20 20 20 20 20 30 20  5230 	.ascii "     0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F"
             20 31 20 20 32 20 20
             33 20 20 34 20 20 35
             20 20 36 20 20 37 20
             20 38 20 20 39 20 20
             41 20 20 42 20 20 43
             20 20 44 20 20 45 20
             20 46
      005680 0D                    5231 	.db 0x0d
      005681 0A                    5232 	.db 0x0a
      005682 00                    5233 	.db 0x00
                                   5234 	.area CSEG    (CODE)
                                   5235 	.area CONST   (CODE)
      005683                       5236 ___str_47:
      005683 25 30 33 58 3A 20     5237 	.ascii "%03X: "
      005689 00                    5238 	.db 0x00
                                   5239 	.area CSEG    (CODE)
                                   5240 	.area CONST   (CODE)
      00568A                       5241 ___str_48:
      00568A 45 72 72 6F 72 3A 20  5242 	.ascii "Error: Device not responding"
             44 65 76 69 63 65 20
             6E 6F 74 20 72 65 73
             70 6F 6E 64 69 6E 67
      0056A6 0D                    5243 	.db 0x0d
      0056A7 0A                    5244 	.db 0x0a
      0056A8 00                    5245 	.db 0x00
                                   5246 	.area CSEG    (CODE)
                                   5247 	.area CONST   (CODE)
      0056A9                       5248 ___str_49:
      0056A9 45 72 72 6F 72 3A 20  5249 	.ascii "Error: Address write failed"
             41 64 64 72 65 73 73
             20 77 72 69 74 65 20
             66 61 69 6C 65 64
      0056C4 0D                    5250 	.db 0x0d
      0056C5 0A                    5251 	.db 0x0a
      0056C6 00                    5252 	.db 0x00
                                   5253 	.area CSEG    (CODE)
                                   5254 	.area CONST   (CODE)
      0056C7                       5255 ___str_50:
      0056C7 45 72 72 6F 72 3A 20  5256 	.ascii "Error: Device not responding in read mode"
             44 65 76 69 63 65 20
             6E 6F 74 20 72 65 73
             70 6F 6E 64 69 6E 67
             20 69 6E 20 72 65 61
             64 20 6D 6F 64 65
      0056F0 0D                    5257 	.db 0x0d
      0056F1 0A                    5258 	.db 0x0a
      0056F2 00                    5259 	.db 0x00
                                   5260 	.area CSEG    (CODE)
                                   5261 	.area CONST   (CODE)
      0056F3                       5262 ___str_51:
      0056F3 25 30 32 58 20        5263 	.ascii "%02X "
      0056F8 00                    5264 	.db 0x00
                                   5265 	.area CSEG    (CODE)
                                   5266 	.area CONST   (CODE)
      0056F9                       5267 ___str_52:
      0056F9 20 20 20              5268 	.ascii "   "
      0056FC 00                    5269 	.db 0x00
                                   5270 	.area CSEG    (CODE)
                                   5271 	.area CONST   (CODE)
      0056FD                       5272 ___str_53:
      0056FD 20 7C 20              5273 	.ascii " | "
      005700 00                    5274 	.db 0x00
                                   5275 	.area CSEG    (CODE)
                                   5276 	.area CONST   (CODE)
      005701                       5277 ___str_54:
      005701 0D                    5278 	.db 0x0d
      005702 0A                    5279 	.db 0x0a
      005703 00                    5280 	.db 0x00
                                   5281 	.area CSEG    (CODE)
                                   5282 	.area CONST   (CODE)
      005704                       5283 ___str_55:
      005704 0A                    5284 	.db 0x0a
      005705 45 6E 74 65 72 20 53  5285 	.ascii "Enter Start Address for HEX Dump (000-7FF):"
             74 61 72 74 20 41 64
             64 72 65 73 73 20 66
             6F 72 20 48 45 58 20
             44 75 6D 70 20 28 30
             30 30 2D 37 46 46 29
             3A
      005730 0D                    5286 	.db 0x0d
      005731 0A                    5287 	.db 0x0a
      005732 00                    5288 	.db 0x00
                                   5289 	.area CSEG    (CODE)
                                   5290 	.area CONST   (CODE)
      005733                       5291 ___str_56:
      005733 49 6E 76 61 6C 69 64  5292 	.ascii "Invalid Start Address! Must be between 0x000 and 0x7FF"
             20 53 74 61 72 74 20
             41 64 64 72 65 73 73
             21 20 4D 75 73 74 20
             62 65 20 62 65 74 77
             65 65 6E 20 30 78 30
             30 30 20 61 6E 64 20
             30 78 37 46 46
      005769 0D                    5293 	.db 0x0d
      00576A 0A                    5294 	.db 0x0a
      00576B 00                    5295 	.db 0x00
                                   5296 	.area CSEG    (CODE)
                                   5297 	.area CONST   (CODE)
      00576C                       5298 ___str_57:
      00576C 0A                    5299 	.db 0x0a
      00576D 45 6E 74 65 72 20 45  5300 	.ascii "Enter End Address for HEX Dump (000-7FF):"
             6E 64 20 41 64 64 72
             65 73 73 20 66 6F 72
             20 48 45 58 20 44 75
             6D 70 20 28 30 30 30
             2D 37 46 46 29 3A
      005796 0D                    5301 	.db 0x0d
      005797 0A                    5302 	.db 0x0a
      005798 00                    5303 	.db 0x00
                                   5304 	.area CSEG    (CODE)
                                   5305 	.area CONST   (CODE)
      005799                       5306 ___str_58:
      005799 49 6E 76 61 6C 69 64  5307 	.ascii "Invalid End Address! Must be between 0x%03X and 0x7FF"
             20 45 6E 64 20 41 64
             64 72 65 73 73 21 20
             4D 75 73 74 20 62 65
             20 62 65 74 77 65 65
             6E 20 30 78 25 30 33
             58 20 61 6E 64 20 30
             78 37 46 46
      0057CE 0D                    5308 	.db 0x0d
      0057CF 0A                    5309 	.db 0x0a
      0057D0 00                    5310 	.db 0x00
                                   5311 	.area CSEG    (CODE)
                                   5312 	.area CONST   (CODE)
      0057D1                       5313 ___str_59:
      0057D1 57 72 69 74 69 6E 67  5314 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      0057F6 0A                    5315 	.db 0x0a
      0057F7 0D                    5316 	.db 0x0d
      0057F8 00                    5317 	.db 0x00
                                   5318 	.area CSEG    (CODE)
                                   5319 	.area CONST   (CODE)
      0057F9                       5320 ___str_60:
      0057F9 52 65 61 64 20 62 61  5321 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      00581E 0A                    5322 	.db 0x0a
      00581F 0D                    5323 	.db 0x0d
      005820 00                    5324 	.db 0x00
                                   5325 	.area CSEG    (CODE)
                                   5326 	.area CONST   (CODE)
      005821                       5327 ___str_61:
      005821 4D 41 54 43 48 20 2D  5328 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      00583F 0A                    5329 	.db 0x0a
      005840 0D                    5330 	.db 0x0d
      005841 00                    5331 	.db 0x00
                                   5332 	.area CSEG    (CODE)
                                   5333 	.area CONST   (CODE)
      005842                       5334 ___str_62:
      005842 45 52 52 4F 52 20 2D  5335 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      005858 0A                    5336 	.db 0x0a
      005859 0D                    5337 	.db 0x0d
      00585A 00                    5338 	.db 0x00
                                   5339 	.area CSEG    (CODE)
                                   5340 	.area XINIT   (CODE)
      005866                       5341 __xinit__address_range_flag:
      005866 01 00                 5342 	.byte #0x01, #0x00	;  1
      005868                       5343 __xinit__data_range_flag:
      005868 01 00                 5344 	.byte #0x01, #0x00	;  1
      00586A                       5345 __xinit__block:
      00586A 00 00                 5346 	.byte #0x00, #0x00	; 0
                                   5347 	.area CABS    (ABS,CODE)
